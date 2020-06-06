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
	<24.127703, 34.974728, 34.765045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431841, 35.055077, 35.012115>,  <24.614325, 35.103287, 35.160358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431841, 35.055077, 35.012115>,  <24.127703, 34.974728, 34.765045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431841, 35.055077, 35.012115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287111, -0.749079, 0.597033,
		0.582616, -0.631293, -0.511886,
		0.760346, 0.200872, 0.617676,
		24.659945, 35.115337, 35.197418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700115, 34.457058, 34.732258>,  <24.127703, 34.974728, 34.765045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700115, 34.457058, 34.732258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590860, 34.641361, 35.070038>,  <24.525307, 34.751942, 35.272705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.590860, 34.641361, 35.070038>,  <24.700115, 34.457058, 34.732258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590860, 34.641361, 35.070038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140200, -0.887525, 0.438911,
		0.951704, 0.001490, 0.307014,
		-0.273137, 0.460757, 0.844452,
		24.508919, 34.779587, 35.323372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293894, 34.052315, 35.220798>,  <24.700115, 34.457058, 34.732258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293894, 34.052315, 35.220798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205263, 34.047768, 35.610828>,  <25.152084, 34.045040, 35.844849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205263, 34.047768, 35.610828>,  <25.293894, 34.052315, 35.220798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205263, 34.047768, 35.610828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120185, 0.992627, -0.015736,
		-0.967708, -0.120676, -0.221310,
		-0.221577, -0.011370, 0.975077,
		25.138790, 34.044357, 35.903351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568844, 34.226704, 34.505199>,  <25.293894, 34.052315, 35.220798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568844, 34.226704, 34.505199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828787, 34.296852, 34.209381>,  <25.984753, 34.338943, 34.031891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828787, 34.296852, 34.209381>,  <25.568844, 34.226704, 34.505199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828787, 34.296852, 34.209381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737720, -0.088621, -0.669265,
		-0.182911, 0.980505, 0.071785,
		0.649856, 0.175373, -0.739548,
		26.023745, 34.349464, 33.987518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224424, 34.687538, 34.114189>,  <25.568844, 34.226704, 34.505199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224424, 34.687538, 34.114189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520399, 34.525669, 33.899254>,  <25.697983, 34.428547, 33.770290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520399, 34.525669, 33.899254>,  <25.224424, 34.687538, 34.114189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520399, 34.525669, 33.899254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589620, -0.005658, -0.807661,
		0.323797, 0.914445, -0.242789,
		0.739935, -0.404671, -0.537343,
		25.742380, 34.404266, 33.738052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177845, 35.007099, 33.418964>,  <25.224424, 34.687538, 34.114189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177845, 35.007099, 33.418964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389429, 34.674816, 33.349533>,  <25.516380, 34.475449, 33.307873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.389429, 34.674816, 33.349533>,  <25.177845, 35.007099, 33.418964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.389429, 34.674816, 33.349533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393429, -0.058808, -0.917472,
		0.751940, 0.553600, -0.357931,
		0.528962, -0.830704, -0.173582,
		25.548117, 34.425606, 33.297459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467552, 35.053139, 32.739342>,  <25.177845, 35.007099, 33.418964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467552, 35.053139, 32.739342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493807, 34.662006, 32.818886>,  <25.509560, 34.427326, 32.866611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493807, 34.662006, 32.818886>,  <25.467552, 35.053139, 32.739342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493807, 34.662006, 32.818886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157861, -0.206960, -0.965530,
		0.985277, 0.031980, -0.167945,
		0.065635, -0.977827, 0.198865,
		25.513498, 34.368660, 32.878544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918205, 34.726719, 32.280514>,  <25.467552, 35.053139, 32.739342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918205, 34.726719, 32.280514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714088, 34.403091, 32.397137>,  <25.591618, 34.208916, 32.467110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714088, 34.403091, 32.397137>,  <25.918205, 34.726719, 32.280514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714088, 34.403091, 32.397137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050491, -0.366625, -0.928998,
		0.858517, -0.459340, 0.227937,
		-0.510293, -0.809069, 0.291561,
		25.561001, 34.160370, 32.484604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357931, 34.107731, 32.050117>,  <25.918205, 34.726719, 32.280514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357931, 34.107731, 32.050117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984320, 33.989815, 32.130802>,  <25.760153, 33.919064, 32.179211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984320, 33.989815, 32.130802>,  <26.357931, 34.107731, 32.050117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984320, 33.989815, 32.130802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024664, -0.510127, -0.859746,
		0.356342, -0.808003, 0.469203,
		-0.934030, -0.294791, 0.201708,
		25.704111, 33.901379, 32.191315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357738, 33.433376, 31.761391>,  <26.357931, 34.107731, 32.050117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357738, 33.433376, 31.761391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963795, 33.498741, 31.784552>,  <25.727428, 33.537960, 31.798449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963795, 33.498741, 31.784552>,  <26.357738, 33.433376, 31.761391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963795, 33.498741, 31.784552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132953, -0.497554, -0.857184,
		-0.111264, -0.851902, 0.511745,
		-0.984857, 0.163412, 0.057903,
		25.668337, 33.547764, 31.801922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984034, 32.814381, 31.536896>,  <26.357738, 33.433376, 31.761391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984034, 32.814381, 31.536896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744265, 33.129463, 31.480032>,  <25.600403, 33.318512, 31.445913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744265, 33.129463, 31.480032>,  <25.984034, 32.814381, 31.536896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744265, 33.129463, 31.480032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069150, -0.227902, -0.971226,
		-0.797442, -0.572342, 0.191079,
		-0.599420, 0.787710, -0.142161,
		25.564438, 33.365776, 31.437384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447546, 32.582367, 31.123873>,  <25.984034, 32.814381, 31.536896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447546, 32.582367, 31.123873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464506, 32.978363, 31.070032>,  <25.474682, 33.215961, 31.037727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464506, 32.978363, 31.070032>,  <25.447546, 32.582367, 31.123873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464506, 32.978363, 31.070032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102028, -0.138311, -0.985120,
		-0.993878, 0.028036, -0.106871,
		0.042400, 0.989992, -0.134603,
		25.477226, 33.275360, 31.029652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245720, 32.668480, 30.519442>,  <25.447546, 32.582367, 31.123873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245720, 32.668480, 30.519442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415936, 33.022175, 30.596430>,  <25.518064, 33.234390, 30.642624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415936, 33.022175, 30.596430>,  <25.245720, 32.668480, 30.519442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415936, 33.022175, 30.596430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271649, 0.078064, -0.959225,
		-0.863206, 0.460472, -0.206982,
		0.425539, 0.884235, 0.192472,
		25.543596, 33.287445, 30.654171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964481, 33.074497, 30.060572>,  <25.245720, 32.668480, 30.519442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964481, 33.074497, 30.060572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310663, 33.236622, 30.178358>,  <25.518373, 33.333897, 30.249029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310663, 33.236622, 30.178358>,  <24.964481, 33.074497, 30.060572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310663, 33.236622, 30.178358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292994, 0.067286, -0.953744,
		-0.406375, 0.911700, -0.060520,
		0.865456, 0.405309, 0.294466,
		25.570299, 33.358215, 30.266697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064623, 33.709724, 29.630350>,  <24.964481, 33.074497, 30.060572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064623, 33.709724, 29.630350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424015, 33.621555, 29.782215>,  <25.639650, 33.568653, 29.873335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424015, 33.621555, 29.782215>,  <25.064623, 33.709724, 29.630350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424015, 33.621555, 29.782215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416979, 0.157947, -0.895087,
		0.137332, 0.962531, 0.233825,
		0.898481, -0.220424, 0.379664,
		25.693560, 33.555428, 29.896114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519121, 34.302006, 29.399328>,  <25.064623, 33.709724, 29.630350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519121, 34.302006, 29.399328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780823, 34.008980, 29.474487>,  <25.937843, 33.833164, 29.519583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780823, 34.008980, 29.474487>,  <25.519121, 34.302006, 29.399328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780823, 34.008980, 29.474487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451702, 0.179247, -0.873977,
		0.606563, 0.656675, 0.448173,
		0.654252, -0.732563, 0.187896,
		25.977098, 33.789211, 29.530857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238562, 34.564854, 29.391174>,  <25.519121, 34.302006, 29.399328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238562, 34.564854, 29.391174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252512, 34.171448, 29.320198>,  <26.260881, 33.935406, 29.277613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252512, 34.171448, 29.320198>,  <26.238562, 34.564854, 29.391174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252512, 34.171448, 29.320198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551153, 0.167034, -0.817515,
		0.833675, -0.069287, 0.547891,
		0.034874, -0.983513, -0.177440,
		26.262974, 33.876392, 29.266966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951847, 34.468319, 29.120834>,  <26.238562, 34.564854, 29.391174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951847, 34.468319, 29.120834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786419, 34.115086, 29.032187>,  <26.687160, 33.903145, 28.978998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786419, 34.115086, 29.032187>,  <26.951847, 34.468319, 29.120834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786419, 34.115086, 29.032187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709206, -0.159819, -0.686647,
		0.570950, -0.441152, 0.692388,
		-0.413573, -0.883087, -0.221619,
		26.662348, 33.850159, 28.965700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494255, 34.006538, 29.100412>,  <26.951847, 34.468319, 29.120834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494255, 34.006538, 29.100412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204195, 33.859734, 28.867359>,  <27.030159, 33.771652, 28.727528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204195, 33.859734, 28.867359>,  <27.494255, 34.006538, 29.100412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204195, 33.859734, 28.867359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636231, -0.033474, -0.770773,
		0.263376, -0.929615, 0.257776,
		-0.725151, -0.367008, -0.582633,
		26.986650, 33.749630, 28.692570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864077, 33.500580, 28.561159>,  <27.494255, 34.006538, 29.100412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864077, 33.500580, 28.561159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502491, 33.596722, 28.419693>,  <27.285540, 33.654408, 28.334814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502491, 33.596722, 28.419693>,  <27.864077, 33.500580, 28.561159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502491, 33.596722, 28.419693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357647, -0.028370, -0.933426,
		-0.234383, -0.970272, -0.060316,
		-0.903965, 0.240351, -0.353664,
		27.231302, 33.668827, 28.313593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775982, 33.072281, 27.914946>,  <27.864077, 33.500580, 28.561159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775982, 33.072281, 27.914946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500521, 33.362255, 27.908949>,  <27.335243, 33.536240, 27.905352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500521, 33.362255, 27.908949>,  <27.775982, 33.072281, 27.914946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500521, 33.362255, 27.908949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293196, 0.259492, -0.920163,
		-0.663170, -0.638068, -0.391248,
		-0.688653, 0.724937, -0.014991,
		27.293924, 33.579735, 27.904451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457008, 32.936352, 27.391874>,  <27.775982, 33.072281, 27.914946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457008, 32.936352, 27.391874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366699, 33.319813, 27.461163>,  <27.312513, 33.549889, 27.502735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366699, 33.319813, 27.461163>,  <27.457008, 32.936352, 27.391874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366699, 33.319813, 27.461163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250263, 0.228920, -0.940725,
		-0.941485, -0.169040, -0.291601,
		-0.225773, 0.958656, 0.173221,
		27.298967, 33.607410, 27.513128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082617, 33.072975, 26.854290>,  <27.457008, 32.936352, 27.391874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082617, 33.072975, 26.854290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191418, 33.430813, 26.996115>,  <27.256699, 33.645515, 27.081209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191418, 33.430813, 26.996115>,  <27.082617, 33.072975, 26.854290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191418, 33.430813, 26.996115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229305, 0.297584, -0.926748,
		-0.934577, 0.333380, -0.124192,
		0.272002, 0.894596, 0.354561,
		27.273018, 33.699192, 27.102484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843636, 33.605709, 26.365524>,  <27.082617, 33.072975, 26.854290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843636, 33.605709, 26.365524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139214, 33.783947, 26.567673>,  <27.316561, 33.890892, 26.688963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139214, 33.783947, 26.567673>,  <26.843636, 33.605709, 26.365524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139214, 33.783947, 26.567673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274684, 0.485671, -0.829863,
		-0.615231, 0.752041, 0.236486,
		0.738945, 0.445598, 0.505373,
		27.360897, 33.917625, 26.719284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798710, 34.283897, 26.271835>,  <26.843636, 33.605709, 26.365524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798710, 34.283897, 26.271835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180595, 34.205276, 26.361181>,  <27.409727, 34.158104, 26.414789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180595, 34.205276, 26.361181>,  <26.798710, 34.283897, 26.271835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180595, 34.205276, 26.361181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289066, 0.434934, -0.852803,
		0.070472, 0.878749, 0.472054,
		0.954712, -0.196554, 0.223365,
		27.467009, 34.146309, 26.428190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156736, 34.934166, 26.131922>,  <26.798710, 34.283897, 26.271835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156736, 34.934166, 26.131922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433275, 34.647495, 26.168606>,  <27.599199, 34.475491, 26.190617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433275, 34.647495, 26.168606>,  <27.156736, 34.934166, 26.131922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433275, 34.647495, 26.168606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509187, 0.393223, -0.765575,
		0.512610, 0.575974, 0.636777,
		0.691346, -0.716680, 0.091708,
		27.640678, 34.432491, 26.196117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769308, 35.210121, 26.144943>,  <27.156736, 34.934166, 26.131922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769308, 35.210121, 26.144943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853733, 34.838474, 26.023495>,  <27.904388, 34.615486, 25.950626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853733, 34.838474, 26.023495>,  <27.769308, 35.210121, 26.144943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853733, 34.838474, 26.023495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494880, 0.369439, -0.786517,
		0.842939, 0.015748, 0.537778,
		0.211062, -0.929122, -0.303621,
		27.917051, 34.559738, 25.932407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441732, 34.929279, 26.209677>,  <27.769308, 35.210121, 26.144943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441732, 34.929279, 26.209677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210901, 34.886295, 25.885841>,  <28.072403, 34.860504, 25.691540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210901, 34.886295, 25.885841>,  <28.441732, 34.929279, 26.209677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210901, 34.886295, 25.885841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615410, 0.594465, -0.517573,
		0.536887, -0.796909, -0.276925,
		-0.577081, -0.107456, -0.809587,
		28.037777, 34.854057, 25.642965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892237, 34.763870, 25.693048>,  <28.441732, 34.929279, 26.209677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892237, 34.763870, 25.693048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565691, 34.939831, 25.543364>,  <28.369762, 35.045406, 25.453552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565691, 34.939831, 25.543364>,  <28.892237, 34.763870, 25.693048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565691, 34.939831, 25.543364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577189, 0.643877, -0.502270,
		0.019999, -0.626028, -0.779544,
		-0.816366, 0.439899, -0.374213,
		28.320782, 35.071800, 25.431099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972694, 34.898056, 24.882969>,  <28.892237, 34.763870, 25.693048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972694, 34.898056, 24.882969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709379, 35.149563, 25.048523>,  <28.551390, 35.300468, 25.147856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709379, 35.149563, 25.048523>,  <28.972694, 34.898056, 24.882969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709379, 35.149563, 25.048523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382488, 0.752946, -0.535514,
		-0.648350, -0.194217, -0.736154,
		-0.658290, 0.628771, 0.413887,
		28.511892, 35.338196, 25.172689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662325, 35.321785, 24.275581>,  <28.972694, 34.898056, 24.882969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662325, 35.321785, 24.275581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656912, 35.510750, 24.628092>,  <28.653664, 35.624126, 24.839598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656912, 35.510750, 24.628092>,  <28.662325, 35.321785, 24.275581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656912, 35.510750, 24.628092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363274, 0.823456, -0.435835,
		-0.931584, 0.314246, -0.182758,
		-0.013534, 0.472408, 0.881276,
		28.652851, 35.652473, 24.892475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184856, 35.959557, 24.292150>,  <28.662325, 35.321785, 24.275581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184856, 35.959557, 24.292150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497877, 35.996891, 24.538370>,  <28.685690, 36.019291, 24.686102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497877, 35.996891, 24.538370>,  <28.184856, 35.959557, 24.292150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497877, 35.996891, 24.538370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305555, 0.803855, -0.510345,
		-0.542447, 0.587456, 0.600539,
		0.782552, 0.093338, 0.615549,
		28.732643, 36.024891, 24.723036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388609, 36.663418, 24.243088>,  <28.184856, 35.959557, 24.292150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388609, 36.663418, 24.243088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706072, 36.516834, 24.437332>,  <28.896549, 36.428883, 24.553879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706072, 36.516834, 24.437332>,  <28.388609, 36.663418, 24.243088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706072, 36.516834, 24.437332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588469, 0.664909, -0.460001,
		-0.154316, 0.650849, 0.743359,
		0.793657, -0.366458, 0.485610,
		28.944168, 36.406898, 24.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862387, 37.286850, 24.583553>,  <28.388609, 36.663418, 24.243088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862387, 37.286850, 24.583553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063402, 36.947578, 24.516554>,  <29.184011, 36.744015, 24.476355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.063402, 36.947578, 24.516554>,  <28.862387, 37.286850, 24.583553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063402, 36.947578, 24.516554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751190, 0.524275, -0.401059,
		0.427983, 0.075726, 0.900609,
		0.502537, -0.848175, -0.167496,
		29.214163, 36.693127, 24.466305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823498, 37.239307, 25.361927>,  <28.862387, 37.286850, 24.583553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823498, 37.239307, 25.361927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214018, 37.161755, 25.323458>,  <29.448330, 37.115223, 25.300375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214018, 37.161755, 25.323458>,  <28.823498, 37.239307, 25.361927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214018, 37.161755, 25.323458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214669, 0.924050, 0.316306,
		0.027543, -0.329455, 0.943769,
		0.976299, -0.193886, -0.096175,
		29.506907, 37.103588, 25.294605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318249, 37.411781, 26.002848>,  <28.823498, 37.239307, 25.361927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318249, 37.411781, 26.002848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470901, 37.493347, 25.642231>,  <29.562494, 37.542286, 25.425861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470901, 37.493347, 25.642231>,  <29.318249, 37.411781, 26.002848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470901, 37.493347, 25.642231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087918, 0.962932, 0.255014,
		0.920123, -0.176583, 0.349559,
		0.381633, 0.203912, -0.901541,
		29.585392, 37.554520, 25.371769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536470, 37.466053, 26.073730>,  <29.318249, 37.411781, 26.002848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536470, 37.466053, 26.073730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145813, 37.472294, 26.159451>,  <27.911419, 37.476036, 26.210882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145813, 37.472294, 26.159451>,  <28.536470, 37.466053, 26.073730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145813, 37.472294, 26.159451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186416, -0.434459, 0.881190,
		0.106852, 0.900557, 0.421403,
		-0.976643, 0.015600, 0.214301,
		27.852819, 37.476974, 26.223742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533588, 37.667645, 26.783510>,  <28.536470, 37.466053, 26.073730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533588, 37.667645, 26.783510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161928, 37.526993, 26.737841>,  <27.938932, 37.442600, 26.710440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161928, 37.526993, 26.737841>,  <28.533588, 37.667645, 26.783510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161928, 37.526993, 26.737841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025407, -0.368829, 0.929150,
		-0.368829, 0.860419, 0.351632,
		-0.929150, -0.351632, -0.114174,
		27.883183, 37.421505, 26.703588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265060, 37.923870, 27.376566>,  <28.533588, 37.667645, 26.783510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265060, 37.923870, 27.376566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046957, 37.626587, 27.221474>,  <27.916096, 37.448215, 27.128418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046957, 37.626587, 27.221474>,  <28.265060, 37.923870, 27.376566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046957, 37.626587, 27.221474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203052, -0.331663, 0.921287,
		-0.813305, 0.581067, 0.029931,
		-0.545257, -0.743210, -0.387730,
		27.883381, 37.403625, 27.105154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608629, 37.844002, 27.778509>,  <28.265060, 37.923870, 27.376566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608629, 37.844002, 27.778509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675791, 37.490204, 27.604395>,  <27.716087, 37.277924, 27.499926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675791, 37.490204, 27.604395>,  <27.608629, 37.844002, 27.778509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675791, 37.490204, 27.604395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194092, -0.462573, 0.865075,
		-0.966507, -0.060763, -0.249341,
		0.167903, -0.884496, -0.435287,
		27.726162, 37.224854, 27.473808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357752, 37.392746, 28.199829>,  <27.608629, 37.844002, 27.778509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357752, 37.392746, 28.199829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542736, 37.120804, 27.972170>,  <27.653727, 36.957638, 27.835575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542736, 37.120804, 27.972170>,  <27.357752, 37.392746, 28.199829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542736, 37.120804, 27.972170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029129, -0.653221, 0.756607,
		-0.886160, -0.333324, -0.321893,
		0.462463, -0.679852, -0.569149,
		27.681475, 36.916847, 27.801426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026337, 36.789841, 28.286402>,  <27.357752, 37.392746, 28.199829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026337, 36.789841, 28.286402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403990, 36.696278, 28.193537>,  <27.630583, 36.640141, 28.137817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403990, 36.696278, 28.193537>,  <27.026337, 36.789841, 28.286402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403990, 36.696278, 28.193537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057820, -0.575968, 0.815425,
		-0.324450, -0.783294, -0.530267,
		0.944134, -0.233905, -0.232163,
		27.687229, 36.626106, 28.123888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127487, 36.134102, 28.478470>,  <27.026337, 36.789841, 28.286402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127487, 36.134102, 28.478470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513250, 36.233025, 28.441032>,  <27.744709, 36.292377, 28.418570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513250, 36.233025, 28.441032>,  <27.127487, 36.134102, 28.478470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513250, 36.233025, 28.441032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224537, -0.578987, 0.783810,
		0.139651, -0.776927, -0.613908,
		0.964407, 0.247304, -0.093593,
		27.802572, 36.307217, 28.412954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505213, 35.572334, 28.608345>,  <27.127487, 36.134102, 28.478470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505213, 35.572334, 28.608345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788931, 35.851658, 28.646845>,  <27.959162, 36.019253, 28.669945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788931, 35.851658, 28.646845>,  <27.505213, 35.572334, 28.608345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788931, 35.851658, 28.646845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273060, -0.398063, 0.875776,
		0.649878, -0.594900, -0.473024,
		0.709293, 0.698312, 0.096249,
		28.001719, 36.061150, 28.675720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977674, 35.131695, 28.792984>,  <27.505213, 35.572334, 28.608345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977674, 35.131695, 28.792984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119102, 35.494663, 28.883825>,  <28.203959, 35.712444, 28.938330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119102, 35.494663, 28.883825>,  <27.977674, 35.131695, 28.792984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119102, 35.494663, 28.883825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398463, -0.365764, 0.841097,
		0.846295, -0.206893, -0.490897,
		0.353570, 0.907420, 0.227105,
		28.225174, 35.766888, 28.951958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753496, 35.102066, 28.939867>,  <27.977674, 35.131695, 28.792984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753496, 35.102066, 28.939867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566902, 35.399605, 29.131315>,  <28.454947, 35.578129, 29.246185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566902, 35.399605, 29.131315>,  <28.753496, 35.102066, 28.939867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566902, 35.399605, 29.131315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230335, -0.420281, 0.877673,
		0.854013, 0.519664, 0.024719,
		-0.466483, 0.743851, 0.478622,
		28.426958, 35.622761, 29.274902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139822, 35.195660, 29.567736>,  <28.753496, 35.102066, 28.939867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139822, 35.195660, 29.567736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784248, 35.373913, 29.610081>,  <28.570904, 35.480865, 29.635489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784248, 35.373913, 29.610081>,  <29.139822, 35.195660, 29.567736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784248, 35.373913, 29.610081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034721, -0.296023, 0.954550,
		0.456717, 0.844856, 0.278618,
		-0.888934, 0.445633, 0.105864,
		28.517569, 35.507603, 29.641840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170874, 35.363598, 30.233425>,  <29.139822, 35.195660, 29.567736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170874, 35.363598, 30.233425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774357, 35.390579, 30.188189>,  <28.536448, 35.406769, 30.161047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774357, 35.390579, 30.188189>,  <29.170874, 35.363598, 30.233425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774357, 35.390579, 30.188189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131295, -0.440714, 0.887994,
		0.010058, 0.895109, 0.445733,
		-0.991292, 0.067454, -0.113091,
		28.476969, 35.410816, 30.154261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911890, 35.683578, 30.802393>,  <29.170874, 35.363598, 30.233425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911890, 35.683578, 30.802393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621761, 35.455402, 30.648247>,  <28.447685, 35.318497, 30.555759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621761, 35.455402, 30.648247>,  <28.911890, 35.683578, 30.802393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621761, 35.455402, 30.648247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191946, -0.370005, 0.908984,
		-0.661111, 0.733273, 0.158878,
		-0.725319, -0.570444, -0.385364,
		28.404165, 35.284267, 30.532639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279247, 35.719894, 31.304144>,  <28.911890, 35.683578, 30.802393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279247, 35.719894, 31.304144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174950, 35.411736, 31.071421>,  <28.112371, 35.226841, 30.931787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174950, 35.411736, 31.071421>,  <28.279247, 35.719894, 31.304144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174950, 35.411736, 31.071421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353131, -0.484780, 0.800179,
		-0.898505, 0.414096, -0.145648,
		-0.260744, -0.770398, -0.581807,
		28.096727, 35.180614, 30.896879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756702, 35.451126, 31.688269>,  <28.279247, 35.719894, 31.304144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756702, 35.451126, 31.688269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839836, 35.155945, 31.431450>,  <27.889717, 34.978836, 31.277359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839836, 35.155945, 31.431450>,  <27.756702, 35.451126, 31.688269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839836, 35.155945, 31.431450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253007, -0.674600, 0.693472,
		-0.944877, 0.018314, -0.326914,
		0.207836, -0.737956, -0.642048,
		27.902187, 34.934559, 31.238836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127495, 34.924747, 31.653507>,  <27.756702, 35.451126, 31.688269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127495, 34.924747, 31.653507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425190, 34.699986, 31.509079>,  <27.603807, 34.565128, 31.422422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425190, 34.699986, 31.509079>,  <27.127495, 34.924747, 31.653507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425190, 34.699986, 31.509079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344149, -0.785920, 0.513703,
		-0.572424, -0.258056, -0.778292,
		0.744240, -0.561904, -0.361070,
		27.648462, 34.531414, 31.400759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887121, 34.172432, 31.455145>,  <27.127495, 34.924747, 31.653507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887121, 34.172432, 31.455145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286123, 34.156693, 31.478580>,  <27.525524, 34.147247, 31.492641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286123, 34.156693, 31.478580>,  <26.887121, 34.172432, 31.455145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286123, 34.156693, 31.478580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065081, -0.834027, 0.547872,
		0.027307, -0.550319, -0.834508,
		0.997506, -0.039350, 0.058590,
		27.585375, 34.144886, 31.496157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063635, 33.569107, 31.291145>,  <26.887121, 34.172432, 31.455145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063635, 33.569107, 31.291145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340322, 33.714577, 31.540710>,  <27.506334, 33.801861, 31.690449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340322, 33.714577, 31.540710>,  <27.063635, 33.569107, 31.291145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340322, 33.714577, 31.540710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018990, -0.854483, 0.519131,
		0.721918, -0.370941, -0.584155,
		0.691718, 0.363677, 0.623911,
		27.547838, 33.823681, 31.727884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494286, 33.024117, 31.334316>,  <27.063635, 33.569107, 31.291145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494286, 33.024117, 31.334316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583103, 33.260696, 31.644382>,  <27.636395, 33.402645, 31.830421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583103, 33.260696, 31.644382>,  <27.494286, 33.024117, 31.334316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583103, 33.260696, 31.644382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082947, -0.780670, 0.619415,
		0.971502, -0.201836, -0.124285,
		0.222046, 0.591453, 0.775164,
		27.649717, 33.438133, 31.876932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942621, 32.605633, 31.815187>,  <27.494286, 33.024117, 31.334316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942621, 32.605633, 31.815187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800314, 32.897232, 32.049107>,  <27.714930, 33.072193, 32.189457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800314, 32.897232, 32.049107>,  <27.942621, 32.605633, 31.815187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800314, 32.897232, 32.049107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246835, -0.676814, 0.693538,
		0.901389, 0.102388, 0.420731,
		-0.355767, 0.728998, 0.584800,
		27.693584, 33.115932, 32.224548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349859, 32.542755, 32.469727>,  <27.942621, 32.605633, 31.815187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349859, 32.542755, 32.469727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025713, 32.753029, 32.573238>,  <27.831224, 32.879192, 32.635345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025713, 32.753029, 32.573238>,  <28.349859, 32.542755, 32.469727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025713, 32.753029, 32.573238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196910, -0.660304, 0.724725,
		0.551847, 0.536336, 0.638599,
		-0.810365, 0.525683, 0.258777,
		27.782604, 32.910732, 32.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285765, 32.499226, 33.208145>,  <28.349859, 32.542755, 32.469727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285765, 32.499226, 33.208145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923021, 32.586678, 33.064030>,  <27.705376, 32.639149, 32.977558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923021, 32.586678, 33.064030>,  <28.285765, 32.499226, 33.208145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923021, 32.586678, 33.064030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419647, -0.547231, 0.724178,
		-0.038834, 0.807922, 0.588009,
		-0.906856, 0.218634, -0.360293,
		27.650965, 32.652267, 32.955940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369101, 32.885521, 33.971737>,  <28.285765, 32.499226, 33.208145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369101, 32.885521, 33.971737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757898, 32.792110, 33.982273>,  <28.991177, 32.736065, 33.988594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757898, 32.792110, 33.982273>,  <28.369101, 32.885521, 33.971737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757898, 32.792110, 33.982273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024455, 0.211985, 0.976967,
		-0.233731, -0.948961, 0.211759,
		0.971993, -0.233526, 0.026341,
		29.049496, 32.722054, 33.990177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747749, 33.431999, 34.399052>,  <28.369101, 32.885521, 33.971737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747749, 33.431999, 34.399052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642803, 33.748482, 34.620018>,  <28.579836, 33.938370, 34.752598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642803, 33.748482, 34.620018>,  <28.747749, 33.431999, 34.399052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642803, 33.748482, 34.620018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665687, -0.266038, 0.697198,
		0.698588, 0.550656, -0.456894,
		-0.262366, 0.791203, 0.552415,
		28.564093, 33.985844, 34.785744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449842, 33.741764, 34.643467>,  <28.747749, 33.431999, 34.399052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449842, 33.741764, 34.643467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145201, 33.884220, 34.860031>,  <28.962416, 33.969696, 34.989967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145201, 33.884220, 34.860031>,  <29.449842, 33.741764, 34.643467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145201, 33.884220, 34.860031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556661, -0.068213, 0.827935,
		0.331794, 0.931938, -0.146300,
		-0.761604, 0.356144, 0.541406,
		28.916719, 33.991062, 35.022453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703676, 34.330132, 35.158607>,  <29.449842, 33.741764, 34.643467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703676, 34.330132, 35.158607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350256, 34.182560, 35.274006>,  <29.138205, 34.094017, 35.343246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350256, 34.182560, 35.274006>,  <29.703676, 34.330132, 35.158607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350256, 34.182560, 35.274006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408969, -0.307615, 0.859138,
		-0.228215, 0.877077, 0.422674,
		-0.883551, -0.368929, 0.288495,
		29.085190, 34.071880, 35.360554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490812, 34.638683, 35.791447>,  <29.703676, 34.330132, 35.158607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490812, 34.638683, 35.791447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396599, 34.252666, 35.745472>,  <29.340071, 34.021057, 35.717888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396599, 34.252666, 35.745472>,  <29.490812, 34.638683, 35.791447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396599, 34.252666, 35.745472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556869, -0.230936, 0.797851,
		-0.796505, 0.123918, 0.591797,
		-0.235535, -0.965046, -0.114936,
		29.325939, 33.963154, 35.710991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161333, 34.490364, 36.433056>,  <29.490812, 34.638683, 35.791447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161333, 34.490364, 36.433056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353636, 34.194672, 36.244415>,  <29.469017, 34.017258, 36.131229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353636, 34.194672, 36.244415>,  <29.161333, 34.490364, 36.433056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353636, 34.194672, 36.244415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527180, -0.186101, 0.829125,
		-0.700681, -0.647227, 0.300239,
		0.480757, -0.739232, -0.471602,
		29.497864, 33.972900, 36.102936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311699, 34.070091, 36.960079>,  <29.161333, 34.490364, 36.433056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311699, 34.070091, 36.960079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551359, 33.982227, 36.652115>,  <29.695156, 33.929508, 36.467335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551359, 33.982227, 36.652115>,  <29.311699, 34.070091, 36.960079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551359, 33.982227, 36.652115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749644, -0.183786, 0.635811,
		-0.281163, -0.958108, 0.054554,
		0.599150, -0.219663, -0.769914,
		29.731104, 33.916328, 36.421139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583113, 33.464954, 37.079838>,  <29.311699, 34.070091, 36.960079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583113, 33.464954, 37.079838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839310, 33.649940, 36.834595>,  <29.993027, 33.760933, 36.687450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839310, 33.649940, 36.834595>,  <29.583113, 33.464954, 37.079838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839310, 33.649940, 36.834595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761208, -0.276620, 0.586553,
		0.101660, -0.842384, -0.529202,
		0.640491, 0.462462, -0.613108,
		30.031456, 33.788677, 36.650661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169157, 33.093483, 37.111790>,  <29.583113, 33.464954, 37.079838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169157, 33.093483, 37.111790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298889, 33.453346, 36.994884>,  <30.376728, 33.669266, 36.924740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298889, 33.453346, 36.994884>,  <30.169157, 33.093483, 37.111790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298889, 33.453346, 36.994884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681917, -0.008233, 0.731383,
		0.655591, -0.436510, -0.616165,
		0.324329, 0.899662, -0.292266,
		30.396187, 33.723244, 36.907204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844057, 33.058567, 37.194397>,  <30.169157, 33.093483, 37.111790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844057, 33.058567, 37.194397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796652, 33.453754, 37.154663>,  <30.768208, 33.690868, 37.130825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796652, 33.453754, 37.154663>,  <30.844057, 33.058567, 37.194397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796652, 33.453754, 37.154663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655230, 0.152977, 0.739778,
		0.746075, 0.022591, -0.665479,
		-0.118515, 0.987972, -0.099330,
		30.761097, 33.750145, 37.124863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487432, 33.319462, 37.141068>,  <30.844057, 33.058567, 37.194397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487432, 33.319462, 37.141068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293461, 33.656639, 37.234268>,  <31.177078, 33.858948, 37.290188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293461, 33.656639, 37.234268>,  <31.487432, 33.319462, 37.141068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293461, 33.656639, 37.234268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725237, 0.238711, 0.645793,
		0.488749, 0.482142, -0.727093,
		-0.484928, 0.842945, 0.232998,
		31.147982, 33.909523, 37.304169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971296, 33.906818, 37.024311>,  <31.487432, 33.319462, 37.141068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971296, 33.906818, 37.024311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682459, 34.001926, 37.284172>,  <31.509157, 34.058990, 37.440086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682459, 34.001926, 37.284172>,  <31.971296, 33.906818, 37.024311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682459, 34.001926, 37.284172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689732, 0.319933, 0.649548,
		-0.053400, 0.917119, -0.395021,
		-0.722093, 0.237773, 0.649651,
		31.465832, 34.073257, 37.479069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278419, 34.412781, 37.309940>,  <31.971296, 33.906818, 37.024311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278419, 34.412781, 37.309940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986898, 34.310383, 37.563969>,  <31.811985, 34.248943, 37.716385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986898, 34.310383, 37.563969>,  <32.278419, 34.412781, 37.309940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986898, 34.310383, 37.563969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623971, 0.133631, 0.769937,
		-0.281963, 0.957398, 0.062341,
		-0.728805, -0.255993, 0.635068,
		31.768257, 34.233585, 37.754490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283978, 34.944408, 37.781483>,  <32.278419, 34.412781, 37.309940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283978, 34.944408, 37.781483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107933, 34.632713, 37.959957>,  <32.002304, 34.445694, 38.067043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107933, 34.632713, 37.959957>,  <32.283978, 34.944408, 37.781483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107933, 34.632713, 37.959957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666517, 0.049474, 0.743847,
		-0.601711, 0.624768, 0.497604,
		-0.440113, -0.779242, 0.446187,
		31.975899, 34.398941, 38.093815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447887, 35.148167, 38.492218>,  <32.283978, 34.944408, 37.781483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447887, 35.148167, 38.492218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311337, 34.773674, 38.525536>,  <32.229408, 34.548981, 38.545528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311337, 34.773674, 38.525536>,  <32.447887, 35.148167, 38.492218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311337, 34.773674, 38.525536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576061, -0.138370, 0.805610,
		-0.742710, 0.322998, 0.586562,
		-0.341373, -0.936230, 0.083298,
		32.208923, 34.492805, 38.550526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073433, 35.048542, 39.140701>,  <32.447887, 35.148167, 38.492218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073433, 35.048542, 39.140701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227577, 34.700314, 39.018322>,  <32.320065, 34.491375, 38.944893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227577, 34.700314, 39.018322>,  <32.073433, 35.048542, 39.140701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227577, 34.700314, 39.018322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485379, -0.090748, 0.869582,
		-0.784797, -0.483602, 0.387586,
		0.385359, -0.870571, -0.305949,
		32.343185, 34.439144, 38.926537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094639, 34.710686, 39.727905>,  <32.073433, 35.048542, 39.140701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094639, 34.710686, 39.727905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332806, 34.494408, 39.490204>,  <32.475704, 34.364643, 39.347584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332806, 34.494408, 39.490204>,  <32.094639, 34.710686, 39.727905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332806, 34.494408, 39.490204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528503, -0.293501, 0.796581,
		-0.605119, -0.788359, 0.111003,
		0.595412, -0.540691, -0.594253,
		32.511429, 34.332199, 39.311928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166054, 34.135689, 40.154404>,  <32.094639, 34.710686, 39.727905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166054, 34.135689, 40.154404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463146, 34.100502, 39.888889>,  <32.641403, 34.079388, 39.729580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463146, 34.100502, 39.888889>,  <32.166054, 34.135689, 40.154404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463146, 34.100502, 39.888889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522903, -0.543003, 0.657054,
		-0.418241, -0.835110, -0.357304,
		0.742729, -0.087971, -0.663787,
		32.685966, 34.074112, 39.689754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263977, 33.453793, 40.156570>,  <32.166054, 34.135689, 40.154404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263977, 33.453793, 40.156570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601135, 33.621967, 40.022247>,  <32.803429, 33.722870, 39.941654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601135, 33.621967, 40.022247>,  <32.263977, 33.453793, 40.156570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601135, 33.621967, 40.022247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537371, -0.625723, 0.565423,
		0.027602, -0.657044, -0.753347,
		0.842894, 0.420434, -0.335805,
		32.854004, 33.748096, 39.921505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751087, 32.868492, 39.992378>,  <32.263977, 33.453793, 40.156570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751087, 32.868492, 39.992378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958958, 33.207256, 40.037403>,  <33.083679, 33.410515, 40.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958958, 33.207256, 40.037403>,  <32.751087, 32.868492, 39.992378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958958, 33.207256, 40.037403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700843, -0.497930, 0.510769,
		0.488625, -0.186549, -0.852318,
		0.519678, 0.846915, 0.112560,
		33.114861, 33.461330, 40.071171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449936, 32.688019, 39.861889>,  <32.751087, 32.868492, 39.992378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449936, 32.688019, 39.861889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428802, 33.036537, 40.057053>,  <33.416122, 33.245647, 40.174149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428802, 33.036537, 40.057053>,  <33.449936, 32.688019, 39.861889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428802, 33.036537, 40.057053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771366, -0.274682, 0.574059,
		0.634194, 0.406687, -0.657574,
		-0.052838, 0.871295, 0.487907,
		33.412952, 33.297924, 40.203426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180996, 33.025043, 39.921749>,  <33.449936, 32.688019, 39.861889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180996, 33.025043, 39.921749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968731, 33.206337, 40.208241>,  <33.841373, 33.315113, 40.380135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968731, 33.206337, 40.208241>,  <34.180996, 33.025043, 39.921749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968731, 33.206337, 40.208241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734208, -0.176400, 0.655608,
		0.423487, 0.873762, -0.239161,
		-0.530658, 0.453235, 0.716226,
		33.809532, 33.342308, 40.423107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625511, 33.316391, 40.254498>,  <34.180996, 33.025043, 39.921749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625511, 33.316391, 40.254498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322384, 33.320091, 40.515461>,  <34.140507, 33.322311, 40.672039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322384, 33.320091, 40.515461>,  <34.625511, 33.316391, 40.254498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322384, 33.320091, 40.515461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635488, -0.216172, 0.741232,
		0.147891, 0.976311, 0.157937,
		-0.757814, 0.009255, 0.652404,
		34.095039, 33.322868, 40.711182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863461, 33.610260, 40.862236>,  <34.625511, 33.316391, 40.254498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863461, 33.610260, 40.862236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540646, 33.396675, 40.963093>,  <34.346958, 33.268524, 41.023609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540646, 33.396675, 40.963093>,  <34.863461, 33.610260, 40.862236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540646, 33.396675, 40.963093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437046, -0.252973, 0.863131,
		-0.397092, 0.806778, 0.437524,
		-0.807037, -0.533960, 0.252146,
		34.298534, 33.236488, 41.038738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804016, 33.715321, 41.555817>,  <34.863461, 33.610260, 40.862236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804016, 33.715321, 41.555817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602787, 33.374561, 41.497581>,  <34.482052, 33.170105, 41.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602787, 33.374561, 41.497581>,  <34.804016, 33.715321, 41.555817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602787, 33.374561, 41.497581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462624, -0.407734, 0.787231,
		-0.730000, 0.328679, 0.599225,
		-0.503070, -0.851894, -0.145591,
		34.451866, 33.118992, 41.453903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446838, 33.619125, 42.156815>,  <34.804016, 33.715321, 41.555817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446838, 33.619125, 42.156815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502453, 33.260746, 41.988075>,  <34.535820, 33.045719, 41.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502453, 33.260746, 41.988075>,  <34.446838, 33.619125, 42.156815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502453, 33.260746, 41.988075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292150, -0.369913, 0.881937,
		-0.946212, -0.245862, 0.210319,
		0.139035, -0.895944, -0.421845,
		34.544163, 32.991962, 41.861523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231869, 33.088470, 42.664169>,  <34.446838, 33.619125, 42.156815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231869, 33.088470, 42.664169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435658, 32.866096, 42.401451>,  <34.557930, 32.732674, 42.243820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435658, 32.866096, 42.401451>,  <34.231869, 33.088470, 42.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435658, 32.866096, 42.401451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336685, -0.573640, 0.746713,
		-0.791883, -0.601564, -0.105082,
		0.509474, -0.555930, -0.656793,
		34.588501, 32.699318, 42.204414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201843, 32.454891, 43.058121>,  <34.231869, 33.088470, 42.664169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201843, 32.454891, 43.058121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483051, 32.399124, 42.779175>,  <34.651775, 32.365665, 42.611805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483051, 32.399124, 42.779175>,  <34.201843, 32.454891, 43.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483051, 32.399124, 42.779175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558015, -0.499778, 0.662451,
		-0.440884, -0.854860, -0.273562,
		0.703023, -0.139412, -0.697369,
		34.693958, 32.357300, 42.569965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226357, 31.729515, 42.815250>,  <34.201843, 32.454891, 43.058121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226357, 31.729515, 42.815250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602146, 31.845770, 42.742668>,  <34.827618, 31.915522, 42.699120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602146, 31.845770, 42.742668>,  <34.226357, 31.729515, 42.815250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602146, 31.845770, 42.742668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310710, -0.499442, 0.808713,
		0.144413, -0.816143, -0.559514,
		0.939470, 0.290635, -0.181458,
		34.883987, 31.932961, 42.688232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700146, 31.048826, 42.966259>,  <34.226357, 31.729515, 42.815250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700146, 31.048826, 42.966259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929558, 31.375744, 42.988499>,  <35.067207, 31.571894, 43.001842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929558, 31.375744, 42.988499>,  <34.700146, 31.048826, 42.966259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929558, 31.375744, 42.988499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443165, -0.366641, 0.818034,
		0.688960, -0.444528, -0.572476,
		0.573532, 0.817294, 0.055602,
		35.101616, 31.620932, 43.005180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362259, 30.746687, 43.177551>,  <34.700146, 31.048826, 42.966259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362259, 30.746687, 43.177551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388630, 31.136829, 43.261776>,  <35.404453, 31.370914, 43.312313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388630, 31.136829, 43.261776>,  <35.362259, 30.746687, 43.177551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388630, 31.136829, 43.261776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515297, -0.213987, 0.829866,
		0.854472, 0.053792, -0.516705,
		0.065928, 0.975354, 0.210564,
		35.408409, 31.429436, 43.324944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038410, 30.851435, 43.329750>,  <35.362259, 30.746687, 43.177551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038410, 30.851435, 43.329750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838696, 31.161968, 43.483643>,  <35.718868, 31.348289, 43.575977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838696, 31.161968, 43.483643>,  <36.038410, 30.851435, 43.329750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838696, 31.161968, 43.483643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304882, -0.258220, 0.916717,
		0.811024, 0.575002, -0.107764,
		-0.499287, 0.776335, 0.384730,
		35.688908, 31.394869, 43.599060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607239, 31.206747, 43.765659>,  <36.038410, 30.851435, 43.329750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607239, 31.206747, 43.765659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243820, 31.307568, 43.898933>,  <36.025768, 31.368061, 43.978897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243820, 31.307568, 43.898933>,  <36.607239, 31.206747, 43.765659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243820, 31.307568, 43.898933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291188, -0.189840, 0.937641,
		0.299586, 0.948910, 0.099084,
		-0.908547, 0.252052, 0.333185,
		35.971256, 31.383183, 43.998890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783337, 31.469931, 44.464771>,  <36.607239, 31.206747, 43.765659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783337, 31.469931, 44.464771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394749, 31.376518, 44.448246>,  <36.161594, 31.320471, 44.438332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394749, 31.376518, 44.448246>,  <36.783337, 31.469931, 44.464771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394749, 31.376518, 44.448246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057067, -0.399289, 0.915047,
		-0.230188, 0.886585, 0.401225,
		-0.971472, -0.233529, -0.041317,
		36.103306, 31.306459, 44.435852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471344, 31.810173, 45.043560>,  <36.783337, 31.469931, 44.464771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471344, 31.810173, 45.043560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210945, 31.525938, 44.936775>,  <36.054707, 31.355396, 44.872704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210945, 31.525938, 44.936775>,  <36.471344, 31.810173, 45.043560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210945, 31.525938, 44.936775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036784, -0.380814, 0.923920,
		-0.758191, 0.591646, 0.274046,
		-0.650994, -0.710589, -0.266966,
		36.015648, 31.312761, 44.856686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936359, 31.776836, 45.629494>,  <36.471344, 31.810173, 45.043560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936359, 31.776836, 45.629494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891243, 31.437159, 45.423134>,  <35.864174, 31.233353, 45.299320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891243, 31.437159, 45.423134>,  <35.936359, 31.776836, 45.629494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891243, 31.437159, 45.423134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055002, -0.513078, 0.856578,
		-0.992095, 0.124992, 0.011164,
		-0.112794, -0.849193, -0.515897,
		35.857407, 31.182402, 45.268364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391239, 31.537409, 45.894543>,  <35.936359, 31.776836, 45.629494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391239, 31.537409, 45.894543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614532, 31.247633, 45.732769>,  <35.748508, 31.073767, 45.635704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614532, 31.247633, 45.732769>,  <35.391239, 31.537409, 45.894543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614532, 31.247633, 45.732769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193477, -0.360354, 0.912530,
		-0.806813, -0.587650, -0.060997,
		0.558229, -0.724440, -0.404435,
		35.782001, 31.030300, 45.611439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247559, 31.002214, 46.217979>,  <35.391239, 31.537409, 45.894543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247559, 31.002214, 46.217979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579395, 30.876198, 46.033577>,  <35.778496, 30.800589, 45.922935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579395, 30.876198, 46.033577>,  <35.247559, 31.002214, 46.217979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579395, 30.876198, 46.033577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280889, -0.478091, 0.832184,
		-0.482603, -0.819854, -0.308114,
		0.829576, -0.315069, -0.461016,
		35.828274, 30.781687, 45.895275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289669, 30.337753, 46.551029>,  <35.247559, 31.002214, 46.217979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289669, 30.337753, 46.551029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644775, 30.418308, 46.385468>,  <35.857838, 30.466642, 46.286129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644775, 30.418308, 46.385468>,  <35.289669, 30.337753, 46.551029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644775, 30.418308, 46.385468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460025, -0.419265, 0.782684,
		-0.015912, -0.885246, -0.464852,
		0.887763, 0.201390, -0.413907,
		35.911106, 30.478725, 46.261295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681583, 29.754854, 46.771412>,  <35.289669, 30.337753, 46.551029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681583, 29.754854, 46.771412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966095, 30.010744, 46.654903>,  <36.136803, 30.164278, 46.584999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966095, 30.010744, 46.654903>,  <35.681583, 29.754854, 46.771412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966095, 30.010744, 46.654903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652037, -0.445711, 0.613343,
		0.262551, -0.626173, -0.734149,
		0.711277, 0.639726, -0.291266,
		36.179478, 30.202662, 46.567524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157356, 29.343044, 46.541039>,  <35.681583, 29.754854, 46.771412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157356, 29.343044, 46.541039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286560, 29.697077, 46.675079>,  <36.364082, 29.909496, 46.755505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286560, 29.697077, 46.675079>,  <36.157356, 29.343044, 46.541039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286560, 29.697077, 46.675079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629243, -0.465333, 0.622510,
		0.706908, 0.009786, -0.707238,
		0.323009, 0.885082, 0.335105,
		36.383461, 29.962601, 46.775612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825573, 29.436518, 46.360382>,  <36.157356, 29.343044, 46.541039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825573, 29.436518, 46.360382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759399, 29.658783, 46.686295>,  <36.719696, 29.792141, 46.881844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759399, 29.658783, 46.686295>,  <36.825573, 29.436518, 46.360382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759399, 29.658783, 46.686295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612748, -0.589446, 0.526396,
		0.772770, 0.586339, -0.242968,
		-0.165430, 0.555661, 0.814784,
		36.709770, 29.825481, 46.930729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465153, 29.337172, 46.678886>,  <36.825573, 29.436518, 46.360382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465153, 29.337172, 46.678886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225166, 29.488836, 46.960674>,  <37.081173, 29.579836, 47.129745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225166, 29.488836, 46.960674>,  <37.465153, 29.337172, 46.678886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225166, 29.488836, 46.960674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422877, -0.597194, 0.681568,
		0.679130, 0.706821, 0.197957,
		-0.599965, 0.379162, 0.704470,
		37.045177, 29.602585, 47.172016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823189, 29.209238, 47.232162>,  <37.465153, 29.337172, 46.678886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823189, 29.209238, 47.232162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460056, 29.280380, 47.384064>,  <37.242176, 29.323067, 47.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460056, 29.280380, 47.384064>,  <37.823189, 29.209238, 47.232162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460056, 29.280380, 47.384064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176798, -0.658838, 0.731215,
		0.380248, 0.730958, 0.566668,
		-0.907829, 0.177858, 0.379754,
		37.187706, 29.333738, 47.497990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938984, 29.272535, 48.012062>,  <37.823189, 29.209238, 47.232162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938984, 29.272535, 48.012062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552132, 29.202126, 47.938660>,  <37.320019, 29.159880, 47.894619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552132, 29.202126, 47.938660>,  <37.938984, 29.272535, 48.012062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552132, 29.202126, 47.938660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005745, -0.736604, 0.676299,
		-0.254216, 0.653015, 0.713404,
		-0.967130, -0.176025, -0.183506,
		37.261993, 29.149319, 47.883610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707832, 29.087946, 48.615231>,  <37.938984, 29.272535, 48.012062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707832, 29.087946, 48.615231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409542, 28.940687, 48.393108>,  <37.230568, 28.852331, 48.259834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409542, 28.940687, 48.393108>,  <37.707832, 29.087946, 48.615231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409542, 28.940687, 48.393108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016944, -0.843681, 0.536578,
		-0.666041, 0.390729, 0.635390,
		-0.745723, -0.368149, -0.555306,
		37.185825, 28.830242, 48.226517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181072, 28.902294, 49.083149>,  <37.707832, 29.087946, 48.615231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181072, 28.902294, 49.083149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148560, 28.673668, 48.756542>,  <37.129051, 28.536491, 48.560577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148560, 28.673668, 48.756542>,  <37.181072, 28.902294, 49.083149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148560, 28.673668, 48.756542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005203, -0.819463, 0.573109,
		-0.996677, 0.042336, 0.069584,
		-0.081284, -0.571567, -0.816520,
		37.124176, 28.502197, 48.511585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683994, 28.436134, 49.217155>,  <37.181072, 28.902294, 49.083149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683994, 28.436134, 49.217155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913792, 28.265446, 48.937763>,  <37.051670, 28.163033, 48.770130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913792, 28.265446, 48.937763>,  <36.683994, 28.436134, 49.217155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913792, 28.265446, 48.937763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053425, -0.871079, 0.488228,
		-0.816766, -0.243166, -0.523224,
		0.574490, -0.426721, -0.698477,
		37.086140, 28.137430, 48.728222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254932, 28.103813, 49.751583>,  <36.683994, 28.436134, 49.217155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254932, 28.103813, 49.751583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495014, 27.827255, 49.590721>,  <36.639061, 27.661320, 49.494202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495014, 27.827255, 49.590721>,  <36.254932, 28.103813, 49.751583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495014, 27.827255, 49.590721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139985, -0.404233, 0.903880,
		-0.787504, -0.598806, -0.145836,
		0.600201, -0.691395, -0.402159,
		36.675076, 27.619837, 49.470074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129673, 27.344645, 49.994812>,  <36.254932, 28.103813, 49.751583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129673, 27.344645, 49.994812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512348, 27.395908, 49.890259>,  <36.741955, 27.426666, 49.827526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512348, 27.395908, 49.890259>,  <36.129673, 27.344645, 49.994812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512348, 27.395908, 49.890259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291055, -0.403477, 0.867464,
		0.005714, -0.905970, -0.423304,
		0.956689, 0.128162, -0.261381,
		36.799355, 27.434357, 49.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353012, 26.698780, 50.068794>,  <36.129673, 27.344645, 49.994812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353012, 26.698780, 50.068794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661263, 26.951454, 50.102501>,  <36.846214, 27.103060, 50.122726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661263, 26.951454, 50.102501>,  <36.353012, 26.698780, 50.068794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661263, 26.951454, 50.102501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233949, -0.403413, 0.884605,
		0.592787, -0.661990, -0.458664,
		0.770631, 0.631686, 0.084266,
		36.892452, 27.140961, 50.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092606, 26.353409, 50.070766>,  <36.353012, 26.698780, 50.068794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092606, 26.353409, 50.070766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063328, 26.695902, 50.275318>,  <37.045761, 26.901398, 50.398048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063328, 26.695902, 50.275318>,  <37.092606, 26.353409, 50.070766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063328, 26.695902, 50.275318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303176, -0.469384, 0.829314,
		0.950120, 0.215736, -0.225235,
		-0.073191, 0.856234, 0.511377,
		37.041370, 26.952772, 50.428730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962090, 26.861927, 49.630013>,  <37.092606, 26.353409, 50.070766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962090, 26.861927, 49.630013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204773, 27.104362, 49.424271>,  <37.350384, 27.249825, 49.300827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204773, 27.104362, 49.424271>,  <36.962090, 26.861927, 49.630013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204773, 27.104362, 49.424271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781034, 0.334080, -0.527614,
		-0.147947, 0.721834, 0.676067,
		0.606711, 0.606091, -0.514351,
		37.386787, 27.286190, 49.269966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603966, 26.717861, 49.423637>,  <36.962090, 26.861927, 49.630013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603966, 26.717861, 49.423637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801479, 27.022781, 49.256268>,  <37.919987, 27.205734, 49.155846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801479, 27.022781, 49.256268>,  <37.603966, 26.717861, 49.423637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801479, 27.022781, 49.256268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869084, -0.416250, 0.267263,
		0.029566, -0.495615, -0.868039,
		0.493781, 0.762300, -0.418424,
		37.949615, 27.251471, 49.130741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303429, 26.054039, 49.051426>,  <37.603966, 26.717861, 49.423637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303429, 26.054039, 49.051426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289352, 25.660561, 49.121971>,  <37.280907, 25.424473, 49.164299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289352, 25.660561, 49.121971>,  <37.303429, 26.054039, 49.051426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289352, 25.660561, 49.121971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941032, -0.026801, -0.337255,
		0.336483, -0.177835, -0.924746,
		-0.035191, -0.983695, 0.176366,
		37.278793, 25.365452, 49.174881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978798, 25.804785, 48.623085>,  <37.303429, 26.054039, 49.051426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978798, 25.804785, 48.623085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928467, 25.494070, 48.869911>,  <36.898266, 25.307642, 49.018005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928467, 25.494070, 48.869911>,  <36.978798, 25.804785, 48.623085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928467, 25.494070, 48.869911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943462, -0.098576, -0.316484,
		0.306668, -0.622001, -0.720464,
		-0.125833, -0.776786, 0.617065,
		36.890717, 25.261034, 49.055031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106125, 25.159300, 48.427101>,  <36.978798, 25.804785, 48.623085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106125, 25.159300, 48.427101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767204, 25.369577, 48.457352>,  <36.563850, 25.495745, 48.475502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767204, 25.369577, 48.457352>,  <37.106125, 25.159300, 48.427101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767204, 25.369577, 48.457352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052993, 0.058002, -0.996909,
		-0.528457, -0.848693, -0.021287,
		-0.847305, 0.525695, 0.075626,
		36.513012, 25.527287, 48.480038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650089, 24.935715, 47.825191>,  <37.106125, 25.159300, 48.427101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650089, 24.935715, 47.825191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573849, 25.315224, 47.925991>,  <36.528103, 25.542929, 47.986473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573849, 25.315224, 47.925991>,  <36.650089, 24.935715, 47.825191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573849, 25.315224, 47.925991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179237, 0.218759, -0.959176,
		-0.965166, -0.227987, 0.128359,
		-0.190600, 0.948771, 0.252002,
		36.516670, 25.599855, 48.001591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017971, 25.179871, 47.482365>,  <36.650089, 24.935715, 47.825191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017971, 25.179871, 47.482365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281479, 25.474344, 47.544407>,  <36.439583, 25.651028, 47.581631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281479, 25.474344, 47.544407>,  <36.017971, 25.179871, 47.482365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281479, 25.474344, 47.544407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178686, 0.353360, -0.918264,
		-0.730817, 0.577210, 0.364329,
		0.658770, 0.736183, 0.155102,
		36.479111, 25.695200, 47.590939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709599, 25.766361, 47.161285>,  <36.017971, 25.179871, 47.482365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709599, 25.766361, 47.161285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094372, 25.869543, 47.197392>,  <36.325233, 25.931452, 47.219055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094372, 25.869543, 47.197392>,  <35.709599, 25.766361, 47.161285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094372, 25.869543, 47.197392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027346, 0.419488, -0.907349,
		-0.271920, 0.870339, 0.410573,
		0.961931, 0.257954, 0.090266,
		36.382950, 25.946930, 47.224472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709030, 26.384066, 46.889496>,  <35.709599, 25.766361, 47.161285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709030, 26.384066, 46.889496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095570, 26.281170, 46.890259>,  <36.327492, 26.219433, 46.890717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095570, 26.281170, 46.890259>,  <35.709030, 26.384066, 46.889496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095570, 26.281170, 46.890259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079826, 0.292817, -0.952831,
		0.244548, 0.920916, 0.303497,
		0.966346, -0.257240, 0.001905,
		36.385475, 26.203999, 46.890831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986366, 26.955595, 46.622139>,  <35.709030, 26.384066, 46.889496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986366, 26.955595, 46.622139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246941, 26.661343, 46.547863>,  <36.403286, 26.484791, 46.503300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246941, 26.661343, 46.547863>,  <35.986366, 26.955595, 46.622139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246941, 26.661343, 46.547863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057763, 0.292122, -0.954635,
		0.756502, 0.611157, 0.232791,
		0.651435, -0.735631, -0.185688,
		36.442371, 26.440653, 46.492157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549561, 27.242447, 46.277142>,  <35.986366, 26.955595, 46.622139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549561, 27.242447, 46.277142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607662, 26.852489, 46.209633>,  <36.642521, 26.618515, 46.169128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607662, 26.852489, 46.209633>,  <36.549561, 27.242447, 46.277142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607662, 26.852489, 46.209633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225798, 0.198744, -0.953685,
		0.963285, 0.100416, 0.248997,
		0.145252, -0.974894, -0.168773,
		36.651237, 26.560020, 46.159000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242661, 27.234304, 46.011406>,  <36.549561, 27.242447, 46.277142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242661, 27.234304, 46.011406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030659, 26.919697, 45.884605>,  <36.903458, 26.730932, 45.808525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030659, 26.919697, 45.884605>,  <37.242661, 27.234304, 46.011406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030659, 26.919697, 45.884605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151835, 0.279764, -0.947986,
		0.834294, -0.550564, -0.028854,
		-0.530000, -0.786518, -0.317000,
		36.871658, 26.683741, 45.789505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683624, 26.846914, 45.453953>,  <37.242661, 27.234304, 46.011406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683624, 26.846914, 45.453953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307091, 26.729246, 45.387798>,  <37.081169, 26.658646, 45.348106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307091, 26.729246, 45.387798>,  <37.683624, 26.846914, 45.453953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307091, 26.729246, 45.387798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105421, 0.209218, -0.972170,
		0.320587, -0.932572, -0.165932,
		-0.941335, -0.294172, -0.165386,
		37.024689, 26.640995, 45.338184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726242, 26.497652, 44.776897>,  <37.683624, 26.846914, 45.453953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726242, 26.497652, 44.776897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338268, 26.566875, 44.845341>,  <37.105484, 26.608410, 44.886406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338268, 26.566875, 44.845341>,  <37.726242, 26.497652, 44.776897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338268, 26.566875, 44.845341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154657, 0.104530, -0.982423,
		-0.187900, -0.979349, -0.074623,
		-0.969935, 0.173056, 0.171104,
		37.047287, 26.618792, 44.896671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318687, 26.090488, 44.337193>,  <37.726242, 26.497652, 44.776897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318687, 26.090488, 44.337193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074596, 26.387955, 44.446430>,  <36.928143, 26.566435, 44.511971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074596, 26.387955, 44.446430>,  <37.318687, 26.090488, 44.337193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074596, 26.387955, 44.446430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138241, 0.239468, -0.961012,
		-0.780069, -0.624192, -0.043326,
		-0.610232, 0.743666, 0.273090,
		36.891525, 26.611055, 44.528358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895664, 26.110689, 43.769764>,  <37.318687, 26.090488, 44.337193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895664, 26.110689, 43.769764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802303, 26.469006, 43.921070>,  <36.746284, 26.683994, 44.011852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802303, 26.469006, 43.921070>,  <36.895664, 26.110689, 43.769764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802303, 26.469006, 43.921070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092743, 0.366724, -0.925696,
		-0.967946, -0.251144, -0.002518,
		-0.233406, 0.895790, 0.378261,
		36.732281, 26.737743, 44.034550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448009, 26.399298, 43.241920>,  <36.895664, 26.110689, 43.769764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448009, 26.399298, 43.241920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508614, 26.728666, 43.460651>,  <36.544975, 26.926289, 43.591888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508614, 26.728666, 43.460651>,  <36.448009, 26.399298, 43.241920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508614, 26.728666, 43.460651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230070, 0.567396, -0.790651,
		-0.961307, -0.006015, 0.275413,
		0.151513, 0.823423, 0.546826,
		36.554066, 26.975693, 43.624699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855301, 26.867348, 43.159626>,  <36.448009, 26.399298, 43.241920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855301, 26.867348, 43.159626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173836, 27.091803, 43.249928>,  <36.364956, 27.226477, 43.304108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173836, 27.091803, 43.249928>,  <35.855301, 26.867348, 43.159626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173836, 27.091803, 43.249928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244228, 0.639777, -0.728724,
		-0.553350, 0.525175, 0.646525,
		0.796339, 0.561139, 0.225759,
		36.412739, 27.260145, 43.317654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625610, 27.487007, 43.092770>,  <35.855301, 26.867348, 43.159626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625610, 27.487007, 43.092770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018772, 27.559755, 43.104225>,  <36.254669, 27.603405, 43.111099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018772, 27.559755, 43.104225>,  <35.625610, 27.487007, 43.092770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018772, 27.559755, 43.104225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111174, 0.710274, -0.695090,
		-0.146755, 0.680025, 0.718352,
		0.982905, 0.181870, 0.028635,
		36.313644, 27.614317, 43.112816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759056, 28.136694, 43.319305>,  <35.625610, 27.487007, 43.092770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759056, 28.136694, 43.319305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087440, 28.047829, 43.108906>,  <36.284470, 27.994509, 42.982666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087440, 28.047829, 43.108906>,  <35.759056, 28.136694, 43.319305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087440, 28.047829, 43.108906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213065, 0.735474, -0.643181,
		0.529748, 0.640095, 0.556457,
		0.820957, -0.222162, -0.525998,
		36.333729, 27.981180, 42.951107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078419, 28.743408, 43.218037>,  <35.759056, 28.136694, 43.319305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078419, 28.743408, 43.218037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206253, 28.479998, 42.945507>,  <36.282955, 28.321951, 42.781990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206253, 28.479998, 42.945507>,  <36.078419, 28.743408, 43.218037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206253, 28.479998, 42.945507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091145, 0.694339, -0.713853,
		0.943163, 0.290239, 0.161881,
		0.319588, -0.658525, -0.681328,
		36.302128, 28.282440, 42.741108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742836, 29.045164, 42.912018>,  <36.078419, 28.743408, 43.218037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742836, 29.045164, 42.912018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578075, 28.792200, 42.649601>,  <36.479218, 28.640421, 42.492149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578075, 28.792200, 42.649601>,  <36.742836, 29.045164, 42.912018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578075, 28.792200, 42.649601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112164, 0.679293, -0.725245,
		0.904299, -0.372314, -0.208869,
		-0.411902, -0.632411, -0.656044,
		36.454506, 28.602476, 42.452789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691055, 29.456047, 42.427853>,  <36.742836, 29.045164, 42.912018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691055, 29.456047, 42.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553741, 29.121843, 42.256237>,  <36.471352, 28.921320, 42.153267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553741, 29.121843, 42.256237>,  <36.691055, 29.456047, 42.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553741, 29.121843, 42.256237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072208, 0.478924, -0.874882,
		0.936451, -0.269356, -0.224739,
		-0.343288, -0.835511, -0.429038,
		36.450756, 28.871189, 42.127525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105366, 29.313364, 41.811172>,  <36.691055, 29.456047, 42.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105366, 29.313364, 41.811172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744556, 29.145443, 41.770935>,  <36.528072, 29.044691, 41.746792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744556, 29.145443, 41.770935>,  <37.105366, 29.313364, 41.811172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744556, 29.145443, 41.770935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158710, 0.539202, -0.827086,
		0.401451, -0.730087, -0.553001,
		-0.902024, -0.419802, -0.100591,
		36.473949, 29.019503, 41.740757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949986, 28.947767, 41.118832>,  <37.105366, 29.313364, 41.811172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949986, 28.947767, 41.118832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595955, 29.052122, 41.273014>,  <36.383537, 29.114735, 41.365524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595955, 29.052122, 41.273014>,  <36.949986, 28.947767, 41.118832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595955, 29.052122, 41.273014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269845, 0.387152, -0.881645,
		-0.379242, -0.884336, -0.272259,
		-0.885076, 0.260889, 0.385457,
		36.330433, 29.130388, 41.388653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498196, 28.629099, 40.665775>,  <36.949986, 28.947767, 41.118832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498196, 28.629099, 40.665775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297646, 28.909439, 40.868725>,  <36.177315, 29.077642, 40.990494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297646, 28.909439, 40.868725>,  <36.498196, 28.629099, 40.665775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297646, 28.909439, 40.868725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395823, 0.335653, -0.854787,
		-0.769380, -0.629402, 0.109123,
		-0.501377, 0.700849, 0.507376,
		36.147232, 29.119694, 41.020939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802330, 28.689583, 40.289089>,  <36.498196, 28.629099, 40.665775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802330, 28.689583, 40.289089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838932, 29.030972, 40.494305>,  <35.860893, 29.235806, 40.617435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838932, 29.030972, 40.494305>,  <35.802330, 28.689583, 40.289089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838932, 29.030972, 40.494305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618176, 0.452597, -0.642662,
		-0.780695, -0.258338, 0.569014,
		0.091510, 0.853474, 0.513038,
		35.866386, 29.287014, 40.648216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187588, 28.860144, 40.286949>,  <35.802330, 28.689583, 40.289089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187588, 28.860144, 40.286949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363434, 29.202679, 40.395332>,  <35.468941, 29.408199, 40.460361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363434, 29.202679, 40.395332>,  <35.187588, 28.860144, 40.286949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363434, 29.202679, 40.395332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609008, 0.505931, -0.610855,
		-0.660187, 0.103525, 0.743933,
		0.439617, 0.856339, 0.270961,
		35.495319, 29.459581, 40.476620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603867, 29.329565, 40.271938>,  <35.187588, 28.860144, 40.286949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603867, 29.329565, 40.271938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942146, 29.541792, 40.249016>,  <35.145115, 29.669128, 40.235264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942146, 29.541792, 40.249016>,  <34.603867, 29.329565, 40.271938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942146, 29.541792, 40.249016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364970, 0.496695, -0.787459,
		-0.389338, 0.686871, 0.613698,
		0.845703, 0.530569, -0.057305,
		35.195858, 29.700962, 40.231823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340652, 30.027096, 40.268768>,  <34.603867, 29.329565, 40.271938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340652, 30.027096, 40.268768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712761, 30.022032, 40.122108>,  <34.936028, 30.018993, 40.034111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712761, 30.022032, 40.122108>,  <34.340652, 30.027096, 40.268768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712761, 30.022032, 40.122108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296887, 0.561144, -0.772642,
		0.215526, 0.827621, 0.518258,
		0.930272, -0.012660, -0.366651,
		34.991844, 30.018234, 40.012112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538036, 30.819435, 40.175789>,  <34.340652, 30.027096, 40.268768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538036, 30.819435, 40.175789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760376, 30.592850, 39.932430>,  <34.893780, 30.456898, 39.786415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760376, 30.592850, 39.932430>,  <34.538036, 30.819435, 40.175789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760376, 30.592850, 39.932430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294323, 0.550357, -0.781333,
		0.777432, 0.613371, 0.139193,
		0.555853, -0.566466, -0.608395,
		34.927132, 30.422911, 39.749912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756573, 31.351290, 39.802608>,  <34.538036, 30.819435, 40.175789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756573, 31.351290, 39.802608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834301, 31.014019, 39.602093>,  <34.880939, 30.811657, 39.481781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834301, 31.014019, 39.602093>,  <34.756573, 31.351290, 39.802608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834301, 31.014019, 39.602093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149513, 0.479605, -0.864653,
		0.969476, 0.242971, -0.032868,
		0.194322, -0.843175, -0.501294,
		34.892597, 30.761066, 39.451706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213627, 31.552084, 39.288147>,  <34.756573, 31.351290, 39.802608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213627, 31.552084, 39.288147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052677, 31.206411, 39.167290>,  <34.956108, 30.999008, 39.094776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052677, 31.206411, 39.167290>,  <35.213627, 31.552084, 39.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052677, 31.206411, 39.167290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160361, 0.391470, -0.906110,
		0.901322, -0.316141, -0.296097,
		-0.402371, -0.864179, -0.302144,
		34.931965, 30.947157, 39.076645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359901, 31.491489, 38.539909>,  <35.213627, 31.552084, 39.288147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359901, 31.491489, 38.539909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048813, 31.245737, 38.593113>,  <34.862160, 31.098286, 38.625034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048813, 31.245737, 38.593113>,  <35.359901, 31.491489, 38.539909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048813, 31.245737, 38.593113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427549, 0.361865, -0.828405,
		0.460824, -0.701134, -0.544107,
		-0.777717, -0.614382, 0.133013,
		34.815498, 31.061422, 38.633018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252457, 31.168518, 37.835884>,  <35.359901, 31.491489, 38.539909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252457, 31.168518, 37.835884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903282, 31.106121, 38.020771>,  <34.693775, 31.068684, 38.131702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903282, 31.106121, 38.020771>,  <35.252457, 31.168518, 37.835884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903282, 31.106121, 38.020771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482070, 0.130684, -0.866331,
		0.074736, -0.979075, -0.189278,
		-0.872939, -0.155992, 0.462216,
		34.641399, 31.059324, 38.159435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858768, 30.790781, 37.333961>,  <35.252457, 31.168518, 37.835884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858768, 30.790781, 37.333961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587296, 30.934410, 37.590229>,  <34.424412, 31.020588, 37.743992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587296, 30.934410, 37.590229>,  <34.858768, 30.790781, 37.333961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587296, 30.934410, 37.590229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580101, 0.272904, -0.767468,
		-0.450418, -0.892519, 0.023084,
		-0.678680, 0.359072, 0.640672,
		34.383690, 31.042131, 37.782429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166809, 30.615934, 37.071022>,  <34.858768, 30.790781, 37.333961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166809, 30.615934, 37.071022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101791, 30.918133, 37.324890>,  <34.062782, 31.099453, 37.477211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101791, 30.918133, 37.324890>,  <34.166809, 30.615934, 37.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101791, 30.918133, 37.324890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590698, 0.440717, -0.675903,
		-0.790352, -0.484761, 0.374635,
		-0.162544, 0.755497, 0.634668,
		34.053028, 31.144781, 37.515289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463875, 30.770903, 37.074650>,  <34.166809, 30.615934, 37.071022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463875, 30.770903, 37.074650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613060, 31.111246, 37.222672>,  <33.702572, 31.315453, 37.311485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613060, 31.111246, 37.222672>,  <33.463875, 30.770903, 37.074650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613060, 31.111246, 37.222672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591762, 0.525318, -0.611440,
		-0.714644, 0.009061, 0.699430,
		0.372964, 0.850858, 0.370053,
		33.724949, 31.366503, 37.333687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927879, 31.184526, 37.191822>,  <33.463875, 30.770903, 37.074650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927879, 31.184526, 37.191822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229919, 31.446274, 37.175705>,  <33.411144, 31.603321, 37.166035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229919, 31.446274, 37.175705>,  <32.927879, 31.184526, 37.191822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229919, 31.446274, 37.175705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578928, 0.636685, -0.509387,
		-0.307672, 0.407966, 0.859594,
		0.755103, 0.654367, -0.040293,
		33.456451, 31.642584, 37.163616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695629, 31.814545, 37.219307>,  <32.927879, 31.184526, 37.191822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695629, 31.814545, 37.219307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059280, 31.880377, 37.066257>,  <33.277470, 31.919876, 36.974426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059280, 31.880377, 37.066257>,  <32.695629, 31.814545, 37.219307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059280, 31.880377, 37.066257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385353, 0.681017, -0.622671,
		0.158096, 0.713532, 0.682552,
		0.909125, 0.164582, -0.382628,
		33.332020, 31.929750, 36.951469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759304, 32.515663, 37.255470>,  <32.695629, 31.814545, 37.219307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759304, 32.515663, 37.255470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004707, 32.372322, 36.973991>,  <33.151951, 32.286316, 36.805103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004707, 32.372322, 36.973991>,  <32.759304, 32.515663, 37.255470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004707, 32.372322, 36.973991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339001, 0.685305, -0.644543,
		0.713223, 0.633986, 0.298956,
		0.613507, -0.358357, -0.703697,
		33.188759, 32.264816, 36.762882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034626, 33.128456, 36.879841>,  <32.759304, 32.515663, 37.255470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034626, 33.128456, 36.879841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070251, 32.826790, 36.619595>,  <33.091625, 32.645790, 36.463448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070251, 32.826790, 36.619595>,  <33.034626, 33.128456, 36.879841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070251, 32.826790, 36.619595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387832, 0.575403, -0.720067,
		0.917417, 0.316462, -0.241242,
		0.089063, -0.754164, -0.650619,
		33.096970, 32.600540, 36.424408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355816, 33.381508, 36.369606>,  <33.034626, 33.128456, 36.879841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355816, 33.381508, 36.369606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173218, 33.063744, 36.209347>,  <33.063660, 32.873085, 36.113190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173218, 33.063744, 36.209347>,  <33.355816, 33.381508, 36.369606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173218, 33.063744, 36.209347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249608, 0.546570, -0.799348,
		0.853995, -0.264894, -0.447799,
		-0.456496, -0.794413, -0.400648,
		33.036270, 32.825420, 36.089153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538513, 33.332581, 35.644825>,  <33.355816, 33.381508, 36.369606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538513, 33.332581, 35.644825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196445, 33.126781, 35.670036>,  <32.991203, 33.003300, 35.685162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196445, 33.126781, 35.670036>,  <33.538513, 33.332581, 35.644825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196445, 33.126781, 35.670036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312043, 0.413899, -0.855171,
		0.413899, -0.750984, -0.514501,
		0.855171, 0.514501, -0.063027,
		32.939896, 32.972431, 35.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720116, 32.914825, 35.066383>,  <33.538513, 33.332581, 35.644825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720116, 32.914825, 35.066383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951363, 32.822174, 34.753429>,  <34.090111, 32.766582, 34.565655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951363, 32.822174, 34.753429>,  <33.720116, 32.914825, 35.066383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951363, 32.822174, 34.753429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714271, -0.319884, 0.622488,
		-0.394462, -0.918706, -0.019481,
		0.578115, -0.231633, -0.782387,
		34.124798, 32.752686, 34.518715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949890, 32.250927, 35.170883>,  <33.720116, 32.914825, 35.066383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949890, 32.250927, 35.170883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185905, 32.491394, 34.955311>,  <34.327515, 32.635674, 34.825966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185905, 32.491394, 34.955311>,  <33.949890, 32.250927, 35.170883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185905, 32.491394, 34.955311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757874, -0.182261, 0.626425,
		0.278362, -0.778058, -0.563152,
		0.590036, 0.601171, -0.538935,
		34.362915, 32.671745, 34.793629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562252, 31.866186, 35.075005>,  <33.949890, 32.250927, 35.170883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562252, 31.866186, 35.075005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656693, 32.252281, 35.030159>,  <34.713356, 32.483940, 35.003250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656693, 32.252281, 35.030159>,  <34.562252, 31.866186, 35.075005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656693, 32.252281, 35.030159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616235, -0.059519, 0.785311,
		0.751340, -0.254500, -0.608867,
		0.236101, 0.965240, -0.112112,
		34.727524, 32.541855, 34.996525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196869, 31.919086, 35.210323>,  <34.562252, 31.866186, 35.075005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196869, 31.919086, 35.210323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088474, 32.299969, 35.266708>,  <35.023438, 32.528500, 35.300541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088474, 32.299969, 35.266708>,  <35.196869, 31.919086, 35.210323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088474, 32.299969, 35.266708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669976, 0.081426, 0.737904,
		0.691158, 0.294403, -0.660021,
		-0.270983, 0.952206, 0.140965,
		35.007179, 32.585632, 35.308998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804047, 32.337654, 35.092823>,  <35.196869, 31.919086, 35.210323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804047, 32.337654, 35.092823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572174, 32.559368, 35.331734>,  <35.433052, 32.692394, 35.475082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572174, 32.559368, 35.331734>,  <35.804047, 32.337654, 35.092823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572174, 32.559368, 35.331734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710573, -0.014906, 0.703466,
		0.398823, 0.832195, -0.385218,
		-0.579678, 0.554283, 0.597280,
		35.398270, 32.725655, 35.510918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238121, 32.873886, 35.311405>,  <35.804047, 32.337654, 35.092823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238121, 32.873886, 35.311405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951859, 32.866650, 35.590691>,  <35.780102, 32.862309, 35.758263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951859, 32.866650, 35.590691>,  <36.238121, 32.873886, 35.311405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951859, 32.866650, 35.590691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693561, 0.099657, 0.713472,
		-0.082490, 0.994857, -0.058772,
		-0.715660, -0.018092, 0.698215,
		35.737160, 32.861221, 35.800156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498425, 33.363857, 35.847549>,  <36.238121, 32.873886, 35.311405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498425, 33.363857, 35.847549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219372, 33.129131, 36.011967>,  <36.051941, 32.988297, 36.110619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219372, 33.129131, 36.011967>,  <36.498425, 33.363857, 35.847549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219372, 33.129131, 36.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535866, -0.046554, 0.843018,
		-0.475561, 0.808380, 0.346933,
		-0.697631, -0.586817, 0.411044,
		36.010082, 32.953087, 36.135281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511246, 33.557594, 36.583344>,  <36.498425, 33.363857, 35.847549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511246, 33.557594, 36.583344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337116, 33.200085, 36.540146>,  <36.232639, 32.985580, 36.514225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337116, 33.200085, 36.540146>,  <36.511246, 33.557594, 36.583344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337116, 33.200085, 36.540146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512750, -0.344747, 0.786280,
		-0.739990, 0.286907, 0.608358,
		-0.435319, -0.893775, -0.107998,
		36.206520, 32.931953, 36.507748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435482, 33.308434, 37.337418>,  <36.511246, 33.557594, 36.583344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435482, 33.308434, 37.337418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423168, 32.984879, 37.102554>,  <36.415779, 32.790745, 36.961636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423168, 32.984879, 37.102554>,  <36.435482, 33.308434, 37.337418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423168, 32.984879, 37.102554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434051, -0.539978, 0.721126,
		-0.900362, -0.232657, 0.367721,
		-0.030786, -0.808884, -0.587161,
		36.413933, 32.742214, 36.926407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223724, 32.785912, 37.778484>,  <36.435482, 33.308434, 37.337418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223724, 32.785912, 37.778484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388287, 32.583652, 37.475151>,  <36.487022, 32.462299, 37.293152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388287, 32.583652, 37.475151>,  <36.223724, 32.785912, 37.778484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388287, 32.583652, 37.475151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595474, -0.480785, 0.643628,
		-0.690043, -0.716358, 0.103303,
		0.411401, -0.505646, -0.758335,
		36.511707, 32.431957, 37.247650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227478, 32.072838, 38.126804>,  <36.223724, 32.785912, 37.778484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227478, 32.072838, 38.126804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478630, 32.070229, 37.815491>,  <36.629322, 32.068661, 37.628704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478630, 32.070229, 37.815491>,  <36.227478, 32.072838, 38.126804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478630, 32.070229, 37.815491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603972, -0.626621, 0.492508,
		-0.490901, -0.779297, -0.389502,
		0.627880, -0.006524, -0.778282,
		36.666992, 32.068272, 37.582005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374416, 31.334654, 38.039558>,  <36.227478, 32.072838, 38.126804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374416, 31.334654, 38.039558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672989, 31.555059, 37.890305>,  <36.852131, 31.687304, 37.800755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672989, 31.555059, 37.890305>,  <36.374416, 31.334654, 38.039558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672989, 31.555059, 37.890305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660054, -0.541663, 0.520509,
		0.084698, -0.634809, -0.768013,
		0.746428, 0.551016, -0.373130,
		36.896915, 31.720364, 37.778366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854660, 30.828041, 37.626194>,  <36.374416, 31.334654, 38.039558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854660, 30.828041, 37.626194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084343, 31.142153, 37.718819>,  <37.222153, 31.330620, 37.774391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084343, 31.142153, 37.718819>,  <36.854660, 30.828041, 37.626194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084343, 31.142153, 37.718819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593604, -0.594120, 0.542822,
		0.563840, -0.174241, -0.807295,
		0.574212, 0.785278, 0.231559,
		37.256607, 31.377737, 37.788288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403187, 30.545935, 37.729485>,  <36.854660, 30.828041, 37.626194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403187, 30.545935, 37.729485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478493, 30.897200, 37.905388>,  <37.523678, 31.107960, 38.010929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478493, 30.897200, 37.905388>,  <37.403187, 30.545935, 37.729485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478493, 30.897200, 37.905388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596668, -0.457925, 0.659008,
		0.780092, 0.138318, -0.610184,
		0.188266, 0.878164, 0.439754,
		37.534973, 31.160648, 38.037315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112350, 30.675365, 37.706829>,  <37.403187, 30.545935, 37.729485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112350, 30.675365, 37.706829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991875, 30.907766, 38.009277>,  <37.919590, 31.047207, 38.190746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991875, 30.907766, 38.009277>,  <38.112350, 30.675365, 37.706829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991875, 30.907766, 38.009277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627587, -0.476217, 0.615915,
		0.717926, 0.660041, -0.221197,
		-0.301191, 0.581002, 0.756122,
		37.901516, 31.082067, 38.236115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745453, 30.770403, 38.071995>,  <38.112350, 30.675365, 37.706829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745453, 30.770403, 38.071995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455475, 30.862286, 38.331745>,  <38.281487, 30.917416, 38.487595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455475, 30.862286, 38.331745>,  <38.745453, 30.770403, 38.071995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455475, 30.862286, 38.331745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510819, -0.453145, 0.730564,
		0.462076, 0.861333, 0.211167,
		-0.724948, 0.229708, 0.649373,
		38.237991, 30.931198, 38.526558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102489, 31.159349, 38.698872>,  <38.745453, 30.770403, 38.071995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102489, 31.159349, 38.698872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753777, 30.991375, 38.799789>,  <38.544548, 30.890591, 38.860340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753777, 30.991375, 38.799789>,  <39.102489, 31.159349, 38.698872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753777, 30.991375, 38.799789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406443, -0.332472, 0.851039,
		-0.273501, 0.844462, 0.460522,
		-0.871781, -0.419936, 0.252294,
		38.492241, 30.865395, 38.875477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126747, 31.022306, 39.489681>,  <39.102489, 31.159349, 38.698872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126747, 31.022306, 39.489681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832745, 30.778494, 39.370865>,  <38.656342, 30.632206, 39.299576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832745, 30.778494, 39.370865>,  <39.126747, 31.022306, 39.489681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832745, 30.778494, 39.370865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252137, -0.652355, 0.714745,
		-0.629437, 0.450448, 0.633171,
		-0.735007, -0.609533, -0.297042,
		38.612244, 30.595634, 39.281754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865906, 30.837572, 40.100746>,  <39.126747, 31.022306, 39.489681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865906, 30.837572, 40.100746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726288, 30.563793, 39.844715>,  <38.642517, 30.399527, 39.691097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726288, 30.563793, 39.844715>,  <38.865906, 30.837572, 40.100746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726288, 30.563793, 39.844715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215985, -0.723407, 0.655769,
		-0.911878, 0.090643, 0.400329,
		-0.349041, -0.684446, -0.640081,
		38.621574, 30.358459, 39.652691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365620, 30.497356, 40.457943>,  <38.865906, 30.837572, 40.100746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365620, 30.497356, 40.457943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451542, 30.227196, 40.175755>,  <38.503098, 30.065100, 40.006443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451542, 30.227196, 40.175755>,  <38.365620, 30.497356, 40.457943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451542, 30.227196, 40.175755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082021, -0.732256, 0.676073,
		-0.973206, -0.087363, -0.212692,
		0.214809, -0.675403, -0.705470,
		38.515984, 30.024574, 39.964115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954403, 29.924957, 40.613224>,  <38.365620, 30.497356, 40.457943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954403, 29.924957, 40.613224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253471, 29.771530, 40.396385>,  <38.432911, 29.679474, 40.266281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253471, 29.771530, 40.396385>,  <37.954403, 29.924957, 40.613224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253471, 29.771530, 40.396385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043031, -0.786622, 0.615933,
		-0.662676, -0.483840, -0.571628,
		0.747669, -0.383567, -0.542096,
		38.477772, 29.656460, 40.233757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765350, 29.184849, 40.478882>,  <37.954403, 29.924957, 40.613224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765350, 29.184849, 40.478882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161755, 29.236650, 40.465485>,  <38.399597, 29.267731, 40.457447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161755, 29.236650, 40.465485>,  <37.765350, 29.184849, 40.478882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161755, 29.236650, 40.465485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109860, -0.645157, 0.756111,
		0.076312, -0.752995, -0.653586,
		0.991013, 0.129503, -0.033491,
		38.459057, 29.275501, 40.455437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050159, 28.488995, 40.516701>,  <37.765350, 29.184849, 40.478882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050159, 28.488995, 40.516701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340847, 28.734373, 40.640354>,  <38.515259, 28.881601, 40.714546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340847, 28.734373, 40.640354>,  <38.050159, 28.488995, 40.516701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340847, 28.734373, 40.640354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257438, -0.660428, 0.705380,
		0.636872, -0.433031, -0.637870,
		0.726719, 0.613449, 0.309129,
		38.558861, 28.918407, 40.733093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634117, 28.032576, 40.509331>,  <38.050159, 28.488995, 40.516701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634117, 28.032576, 40.509331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682869, 28.352095, 40.744980>,  <38.712120, 28.543806, 40.886372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682869, 28.352095, 40.744980>,  <38.634117, 28.032576, 40.509331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682869, 28.352095, 40.744980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230825, -0.600087, 0.765908,
		0.965332, 0.042638, -0.257520,
		0.121878, 0.798797, 0.589125,
		38.719433, 28.591734, 40.921719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194790, 27.772501, 40.984364>,  <38.634117, 28.032576, 40.509331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194790, 27.772501, 40.984364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057156, 28.104683, 41.159611>,  <38.974575, 28.303993, 41.264759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057156, 28.104683, 41.159611>,  <39.194790, 27.772501, 40.984364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057156, 28.104683, 41.159611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154640, -0.410115, 0.898828,
		0.926116, 0.377024, 0.012693,
		-0.344086, 0.830457, 0.438118,
		38.953930, 28.353821, 41.291046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620693, 27.897654, 41.526402>,  <39.194790, 27.772501, 40.984364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620693, 27.897654, 41.526402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283638, 28.077065, 41.645592>,  <39.081406, 28.184711, 41.717106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283638, 28.077065, 41.645592>,  <39.620693, 27.897654, 41.526402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283638, 28.077065, 41.645592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277766, -0.112013, 0.954096,
		0.461316, 0.886722, -0.030199,
		-0.842635, 0.448528, 0.297975,
		39.030846, 28.211622, 41.734985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787632, 28.344154, 42.140549>,  <39.620693, 27.897654, 41.526402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787632, 28.344154, 42.140549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388836, 28.315947, 42.153381>,  <39.149559, 28.299023, 42.161079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388836, 28.315947, 42.153381>,  <39.787632, 28.344154, 42.140549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388836, 28.315947, 42.153381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041013, -0.129128, 0.990779,
		-0.065726, 0.989117, 0.131632,
		-0.996994, -0.070519, 0.032080,
		39.089737, 28.294790, 42.163006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646076, 28.710545, 42.725044>,  <39.787632, 28.344154, 42.140549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646076, 28.710545, 42.725044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305050, 28.508434, 42.671631>,  <39.100433, 28.387167, 42.639584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305050, 28.508434, 42.671631>,  <39.646076, 28.710545, 42.725044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305050, 28.508434, 42.671631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086683, -0.115256, 0.989546,
		-0.515387, 0.855225, 0.054464,
		-0.852563, -0.505278, -0.133535,
		39.049282, 28.356852, 42.631569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120232, 29.071609, 43.207169>,  <39.646076, 28.710545, 42.725044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120232, 29.071609, 43.207169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980309, 28.708717, 43.113731>,  <38.896355, 28.490982, 43.057667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980309, 28.708717, 43.113731>,  <39.120232, 29.071609, 43.207169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980309, 28.708717, 43.113731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195592, -0.173129, 0.965282,
		-0.916177, 0.383352, -0.116886,
		-0.349806, -0.907231, -0.233597,
		38.875366, 28.436548, 43.043652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512085, 28.939959, 43.638741>,  <39.120232, 29.071609, 43.207169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512085, 28.939959, 43.638741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657120, 28.583639, 43.529186>,  <38.744141, 28.369848, 43.463451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657120, 28.583639, 43.529186>,  <38.512085, 28.939959, 43.638741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657120, 28.583639, 43.529186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086768, -0.260343, 0.961610,
		-0.927904, -0.372427, -0.017103,
		0.362582, -0.890797, -0.273888,
		38.765896, 28.316401, 43.447021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088257, 28.321947, 43.961727>,  <38.512085, 28.939959, 43.638741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088257, 28.321947, 43.961727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450500, 28.167871, 43.890724>,  <38.667847, 28.075426, 43.848122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450500, 28.167871, 43.890724>,  <38.088257, 28.321947, 43.961727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450500, 28.167871, 43.890724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075297, -0.265867, 0.961065,
		-0.417385, -0.883711, -0.211767,
		0.905605, -0.385188, -0.177510,
		38.722183, 28.052315, 43.837471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007088, 27.643557, 44.184158>,  <38.088257, 28.321947, 43.961727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007088, 27.643557, 44.184158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401535, 27.705057, 44.159100>,  <38.638203, 27.741959, 44.144066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401535, 27.705057, 44.159100>,  <38.007088, 27.643557, 44.184158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401535, 27.705057, 44.159100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108371, -0.310241, 0.944461,
		0.125778, -0.938142, -0.322597,
		0.986121, 0.153753, -0.062646,
		38.697372, 27.751183, 44.140305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275249, 27.133314, 44.636559>,  <38.007088, 27.643557, 44.184158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275249, 27.133314, 44.636559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575882, 27.395084, 44.603443>,  <38.756260, 27.552147, 44.583576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575882, 27.395084, 44.603443>,  <38.275249, 27.133314, 44.636559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575882, 27.395084, 44.603443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253931, -0.171205, 0.951950,
		0.608808, -0.736488, -0.294853,
		0.751580, 0.654427, -0.082786,
		38.801357, 27.591412, 44.578606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924370, 26.681944, 44.797924>,  <38.275249, 27.133314, 44.636559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924370, 26.681944, 44.797924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953636, 27.077406, 44.850395>,  <38.971195, 27.314684, 44.881878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953636, 27.077406, 44.850395>,  <38.924370, 26.681944, 44.797924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953636, 27.077406, 44.850395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309121, -0.147535, 0.939509,
		0.948204, -0.028191, -0.316408,
		0.073167, 0.988655, 0.131179,
		38.975586, 27.374002, 44.889748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507450, 26.674196, 45.202934>,  <38.924370, 26.681944, 44.797924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507450, 26.674196, 45.202934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334221, 27.032085, 45.246613>,  <39.230286, 27.246819, 45.272820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334221, 27.032085, 45.246613>,  <39.507450, 26.674196, 45.202934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334221, 27.032085, 45.246613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256323, 0.006106, 0.966572,
		0.864146, 0.446583, -0.231982,
		-0.433071, 0.894721, 0.109193,
		39.204300, 27.300503, 45.279369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825275, 27.006735, 45.684361>,  <39.507450, 26.674196, 45.202934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825275, 27.006735, 45.684361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503613, 27.244099, 45.698170>,  <39.310616, 27.386517, 45.706455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503613, 27.244099, 45.698170>,  <39.825275, 27.006735, 45.684361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503613, 27.244099, 45.698170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249074, 0.283666, 0.926011,
		0.539713, 0.753257, -0.375916,
		-0.804159, 0.593411, 0.034519,
		39.262363, 27.422123, 45.708527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151112, 27.538477, 45.928513>,  <39.825275, 27.006735, 45.684361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151112, 27.538477, 45.928513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756714, 27.578152, 45.982140>,  <39.520073, 27.601957, 46.014317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756714, 27.578152, 45.982140>,  <40.151112, 27.538477, 45.928513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756714, 27.578152, 45.982140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151105, 0.191237, 0.969843,
		0.070557, 0.976520, -0.203546,
		-0.985996, 0.099186, 0.134064,
		39.460915, 27.607908, 46.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037121, 28.163342, 46.290161>,  <40.151112, 27.538477, 45.928513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037121, 28.163342, 46.290161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710674, 27.943871, 46.362724>,  <39.514805, 27.812189, 46.406261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710674, 27.943871, 46.362724>,  <40.037121, 28.163342, 46.290161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710674, 27.943871, 46.362724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105566, 0.167089, 0.980274,
		-0.568164, 0.819168, -0.078442,
		-0.816116, -0.548675, 0.181410,
		39.465839, 27.779268, 46.417149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569984, 28.527729, 46.735741>,  <40.037121, 28.163342, 46.290161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569984, 28.527729, 46.735741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474335, 28.142071, 46.781765>,  <39.416946, 27.910675, 46.809380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474335, 28.142071, 46.781765>,  <39.569984, 28.527729, 46.735741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474335, 28.142071, 46.781765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109581, 0.144540, 0.983413,
		-0.964786, 0.222547, -0.140215,
		-0.239122, -0.964148, 0.115063,
		39.402599, 27.852827, 46.816284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408352, 29.016081, 47.222542>,  <39.569984, 28.527729, 46.735741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408352, 29.016081, 47.222542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511406, 29.367737, 47.382912>,  <39.573238, 29.578730, 47.479134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511406, 29.367737, 47.382912>,  <39.408352, 29.016081, 47.222542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511406, 29.367737, 47.382912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317077, 0.468879, -0.824388,
		-0.912736, 0.085264, 0.399552,
		0.257632, 0.879138, 0.400927,
		39.588696, 29.631477, 47.503189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840740, 29.510460, 47.125561>,  <39.408352, 29.016081, 47.222542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840740, 29.510460, 47.125561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186813, 29.699163, 47.193573>,  <39.394455, 29.812386, 47.234379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186813, 29.699163, 47.193573>,  <38.840740, 29.510460, 47.125561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186813, 29.699163, 47.193573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228679, 0.672927, -0.703474,
		-0.446286, 0.569749, 0.690083,
		0.865179, 0.471757, 0.170028,
		39.446365, 29.840691, 47.244583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633377, 30.238560, 47.064148>,  <38.840740, 29.510460, 47.125561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633377, 30.238560, 47.064148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031826, 30.231501, 47.029652>,  <39.270893, 30.227264, 47.008953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031826, 30.231501, 47.029652>,  <38.633377, 30.238560, 47.064148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031826, 30.231501, 47.029652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062752, 0.544714, -0.836271,
		0.061738, 0.838436, 0.541492,
		0.996118, -0.017650, -0.086242,
		39.330662, 30.226206, 47.003780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883411, 30.957357, 47.067310>,  <38.633377, 30.238560, 47.064148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883411, 30.957357, 47.067310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184521, 30.757053, 46.896400>,  <39.365189, 30.636871, 46.793854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184521, 30.757053, 46.896400>,  <38.883411, 30.957357, 47.067310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184521, 30.757053, 46.896400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062062, 0.592207, -0.803392,
		0.655344, 0.631292, 0.414722,
		0.752777, -0.500760, -0.427279,
		39.410355, 30.606825, 46.768215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265488, 31.484390, 46.780354>,  <38.883411, 30.957357, 47.067310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265488, 31.484390, 46.780354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389988, 31.163565, 46.576466>,  <39.464687, 30.971069, 46.454132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389988, 31.163565, 46.576466>,  <39.265488, 31.484390, 46.780354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389988, 31.163565, 46.576466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119367, 0.499122, -0.858271,
		0.942802, 0.327981, 0.059612,
		0.311250, -0.802064, -0.509723,
		39.483364, 30.922945, 46.423550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884579, 31.630997, 46.436436>,  <39.265488, 31.484390, 46.780354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884579, 31.630997, 46.436436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690914, 31.330769, 46.256557>,  <39.574715, 31.150631, 46.148628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690914, 31.330769, 46.256557>,  <39.884579, 31.630997, 46.436436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690914, 31.330769, 46.256557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033837, 0.529631, -0.847553,
		0.874325, -0.395134, -0.281823,
		-0.484160, -0.750573, -0.449700,
		39.545666, 31.105597, 46.121647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012421, 31.749046, 45.744572>,  <39.884579, 31.630997, 46.436436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012421, 31.749046, 45.744572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752029, 31.450159, 45.691074>,  <39.595795, 31.270826, 45.658974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752029, 31.450159, 45.691074>,  <40.012421, 31.749046, 45.744572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752029, 31.450159, 45.691074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064654, 0.230132, -0.971009,
		0.756336, -0.623461, -0.198122,
		-0.650981, -0.747219, -0.133748,
		39.556736, 31.225994, 45.650951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248901, 31.501366, 45.071095>,  <40.012421, 31.749046, 45.744572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248901, 31.501366, 45.071095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873344, 31.376265, 45.128590>,  <39.648010, 31.301203, 45.163086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873344, 31.376265, 45.128590>,  <40.248901, 31.501366, 45.071095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873344, 31.376265, 45.128590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237502, 0.286391, -0.928209,
		0.249133, -0.905630, -0.343171,
		-0.938896, -0.312752, 0.143740,
		39.591675, 31.282438, 45.171711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060928, 31.124947, 44.498093>,  <40.248901, 31.501366, 45.071095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060928, 31.124947, 44.498093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710144, 31.225174, 44.662117>,  <39.499672, 31.285311, 44.760532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710144, 31.225174, 44.662117>,  <40.060928, 31.124947, 44.498093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710144, 31.225174, 44.662117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377991, 0.167241, -0.910578,
		-0.296743, -0.953543, -0.051951,
		-0.876964, 0.250571, 0.410059,
		39.447056, 31.300344, 44.785133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412849, 30.798706, 44.095654>,  <40.060928, 31.124947, 44.498093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412849, 30.798706, 44.095654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239639, 31.095352, 44.300591>,  <39.135712, 31.273340, 44.423553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239639, 31.095352, 44.300591>,  <39.412849, 30.798706, 44.095654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239639, 31.095352, 44.300591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424141, 0.333896, -0.841794,
		-0.795355, -0.581827, 0.169962,
		-0.433029, 0.741614, 0.512343,
		39.109730, 31.317837, 44.454292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709953, 30.778828, 43.972054>,  <39.412849, 30.798706, 44.095654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709953, 30.778828, 43.972054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772816, 31.156841, 44.086742>,  <38.810535, 31.383650, 44.155556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772816, 31.156841, 44.086742>,  <38.709953, 30.778828, 43.972054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772816, 31.156841, 44.086742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329596, 0.323875, -0.886832,
		-0.930950, 0.044870, 0.362379,
		0.157158, 0.945035, 0.286723,
		38.819962, 31.440351, 44.172760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105316, 31.198875, 43.888973>,  <38.709953, 30.778828, 43.972054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105316, 31.198875, 43.888973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411793, 31.455898, 43.892319>,  <38.595680, 31.610111, 43.894325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411793, 31.455898, 43.892319>,  <38.105316, 31.198875, 43.888973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411793, 31.455898, 43.892319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335235, 0.410775, -0.847869,
		-0.548240, 0.646826, 0.530141,
		0.766192, 0.642557, 0.008365,
		38.641651, 31.648666, 43.894829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804714, 31.866211, 43.679981>,  <38.105316, 31.198875, 43.888973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804714, 31.866211, 43.679981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196285, 31.919342, 43.617943>,  <38.431229, 31.951221, 43.580719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196285, 31.919342, 43.617943>,  <37.804714, 31.866211, 43.679981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196285, 31.919342, 43.617943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202180, 0.523853, -0.827467,
		-0.028662, 0.841389, 0.539670,
		0.978929, 0.132827, -0.155097,
		38.489964, 31.959190, 43.571415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878880, 32.545300, 43.460426>,  <37.804714, 31.866211, 43.679981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878880, 32.545300, 43.460426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210232, 32.352245, 43.346691>,  <38.409042, 32.236412, 43.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210232, 32.352245, 43.346691>,  <37.878880, 32.545300, 43.460426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210232, 32.352245, 43.346691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005846, 0.500125, -0.865934,
		0.560138, 0.718983, 0.411471,
		0.828379, -0.482636, -0.284342,
		38.458744, 32.207455, 43.261387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433796, 32.999149, 43.110966>,  <37.878880, 32.545300, 43.460426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433796, 32.999149, 43.110966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549770, 32.642761, 42.971195>,  <38.619354, 32.428928, 42.887333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549770, 32.642761, 42.971195>,  <38.433796, 32.999149, 43.110966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549770, 32.642761, 42.971195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094218, 0.389911, -0.916020,
		0.952395, 0.232669, 0.196997,
		0.289941, -0.890974, -0.349428,
		38.636753, 32.375469, 42.866367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854366, 33.173176, 42.631584>,  <38.433796, 32.999149, 43.110966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854366, 33.173176, 42.631584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754562, 32.801651, 42.521996>,  <38.694679, 32.578735, 42.456242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754562, 32.801651, 42.521996>,  <38.854366, 33.173176, 42.631584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754562, 32.801651, 42.521996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026081, 0.289258, -0.956896,
		0.968020, -0.231613, -0.096398,
		-0.249514, -0.928808, -0.273967,
		38.679707, 32.523010, 42.439804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309605, 33.018787, 42.023411>,  <38.854366, 33.173176, 42.631584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309605, 33.018787, 42.023411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031277, 32.732788, 41.996250>,  <38.864281, 32.561188, 41.979954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031277, 32.732788, 41.996250>,  <39.309605, 33.018787, 42.023411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031277, 32.732788, 41.996250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002846, 0.097290, -0.995252,
		0.718212, -0.692321, -0.069732,
		-0.695819, -0.715001, -0.067905,
		38.822533, 32.518288, 41.975880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544102, 32.515697, 41.521919>,  <39.309605, 33.018787, 42.023411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544102, 32.515697, 41.521919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151321, 32.447723, 41.555157>,  <38.915653, 32.406940, 41.575100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151321, 32.447723, 41.555157>,  <39.544102, 32.515697, 41.521919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151321, 32.447723, 41.555157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081718, -0.015070, -0.996542,
		0.170598, -0.985340, 0.000911,
		-0.981946, -0.169934, 0.083092,
		38.856739, 32.396744, 41.580086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439953, 32.146549, 40.988998>,  <39.544102, 32.515697, 41.521919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439953, 32.146549, 40.988998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072777, 32.284973, 41.066582>,  <38.852470, 32.368027, 41.113132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072777, 32.284973, 41.066582>,  <39.439953, 32.146549, 40.988998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072777, 32.284973, 41.066582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121447, 0.220314, -0.967839,
		-0.377661, -0.911979, -0.160209,
		-0.917945, 0.346059, 0.193962,
		38.797394, 32.388790, 41.124771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924400, 31.931320, 40.412354>,  <39.439953, 32.146549, 40.988998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924400, 31.931320, 40.412354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741222, 32.237289, 40.593540>,  <38.631313, 32.420872, 40.702251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741222, 32.237289, 40.593540>,  <38.924400, 31.931320, 40.412354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741222, 32.237289, 40.593540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245147, 0.381115, -0.891434,
		-0.854510, -0.519272, 0.012989,
		-0.457947, 0.764924, 0.452964,
		38.603840, 32.466766, 40.729431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289173, 31.869059, 40.118725>,  <38.924400, 31.931320, 40.412354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289173, 31.869059, 40.118725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349522, 32.240093, 40.255444>,  <38.385731, 32.462715, 40.337475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349522, 32.240093, 40.255444>,  <38.289173, 31.869059, 40.118725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349522, 32.240093, 40.255444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381427, 0.373600, -0.845539,
		-0.912004, -0.002801, 0.410172,
		0.150872, 0.927586, 0.341793,
		38.394783, 32.518368, 40.357983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764469, 32.222462, 39.872440>,  <38.289173, 31.869059, 40.118725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764469, 32.222462, 39.872440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994213, 32.533115, 39.975937>,  <38.132057, 32.719509, 40.038036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994213, 32.533115, 39.975937>,  <37.764469, 32.222462, 39.872440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994213, 32.533115, 39.975937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331412, 0.509625, -0.794008,
		-0.748519, 0.370293, 0.550093,
		0.574357, 0.776637, 0.258744,
		38.166519, 32.766106, 40.053558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410007, 32.818520, 39.697453>,  <37.764469, 32.222462, 39.872440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410007, 32.818520, 39.697453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787842, 32.949772, 39.701393>,  <38.014542, 33.028522, 39.703758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787842, 32.949772, 39.701393>,  <37.410007, 32.818520, 39.697453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787842, 32.949772, 39.701393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177478, 0.535680, -0.825560,
		-0.276164, 0.778062, 0.564229,
		0.944582, 0.328127, 0.009847,
		38.071217, 33.048210, 39.704346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434795, 33.531811, 39.586391>,  <37.410007, 32.818520, 39.697453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434795, 33.531811, 39.586391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805355, 33.424011, 39.481201>,  <38.027691, 33.359333, 39.418087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805355, 33.424011, 39.481201>,  <37.434795, 33.531811, 39.586391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805355, 33.424011, 39.481201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050653, 0.602847, -0.796247,
		0.373121, 0.750963, 0.544826,
		0.926399, -0.269500, -0.262973,
		38.083275, 33.343163, 39.402309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590229, 34.115288, 39.227211>,  <37.434795, 33.531811, 39.586391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590229, 34.115288, 39.227211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903080, 33.878231, 39.150215>,  <38.090790, 33.735996, 39.104019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903080, 33.878231, 39.150215>,  <37.590229, 34.115288, 39.227211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903080, 33.878231, 39.150215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192332, 0.523434, -0.830075,
		0.592694, 0.612202, 0.523376,
		0.782127, -0.592643, -0.192490,
		38.137718, 33.700439, 39.092468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181526, 34.638863, 39.063786>,  <37.590229, 34.115288, 39.227211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181526, 34.638863, 39.063786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225857, 34.277340, 38.898453>,  <38.252457, 34.060425, 38.799252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225857, 34.277340, 38.898453>,  <38.181526, 34.638863, 39.063786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225857, 34.277340, 38.898453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120919, 0.425071, -0.897047,
		0.986456, 0.049438, 0.156398,
		0.110828, -0.903809, -0.413336,
		38.259106, 34.006199, 38.774452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767117, 34.718853, 38.590279>,  <38.181526, 34.638863, 39.063786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767117, 34.718853, 38.590279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583561, 34.385403, 38.467327>,  <38.473427, 34.185333, 38.393555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583561, 34.385403, 38.467327>,  <38.767117, 34.718853, 38.590279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583561, 34.385403, 38.467327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124889, 0.282003, -0.951250,
		0.879670, -0.474911, -0.025299,
		-0.458893, -0.833627, -0.307381,
		38.445892, 34.135315, 38.375114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254730, 34.398354, 38.226345>,  <38.767117, 34.718853, 38.590279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254730, 34.398354, 38.226345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902485, 34.266926, 38.089779>,  <38.691139, 34.188068, 38.007839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902485, 34.266926, 38.089779>,  <39.254730, 34.398354, 38.226345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902485, 34.266926, 38.089779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280318, 0.219682, -0.934431,
		0.382027, -0.918577, -0.101351,
		-0.880612, -0.328568, -0.341418,
		38.638302, 34.168354, 37.987354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462044, 34.090881, 37.602448>,  <39.254730, 34.398354, 38.226345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462044, 34.090881, 37.602448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066158, 34.144016, 37.581203>,  <38.828629, 34.175900, 37.568459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066158, 34.144016, 37.581203>,  <39.462044, 34.090881, 37.602448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066158, 34.144016, 37.581203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061300, 0.058329, -0.996414,
		-0.129267, -0.989420, -0.065872,
		-0.989713, 0.132841, -0.053112,
		38.769245, 34.183868, 37.565269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214016, 33.690613, 37.035561>,  <39.462044, 34.090881, 37.602448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214016, 33.690613, 37.035561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909222, 33.946476, 37.076012>,  <38.726345, 34.099995, 37.100285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909222, 33.946476, 37.076012>,  <39.214016, 33.690613, 37.035561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909222, 33.946476, 37.076012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067780, 0.076533, -0.994761,
		-0.644042, -0.764844, -0.014962,
		-0.761981, 0.639654, 0.101132,
		38.680626, 34.138371, 37.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688171, 33.470596, 36.625126>,  <39.214016, 33.690613, 37.035561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688171, 33.470596, 36.625126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606438, 33.858829, 36.676075>,  <38.557396, 34.091770, 36.706642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606438, 33.858829, 36.676075>,  <38.688171, 33.470596, 36.625126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606438, 33.858829, 36.676075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121995, 0.103851, -0.987083,
		-0.971269, -0.217237, 0.097185,
		-0.204338, 0.970579, 0.127370,
		38.545135, 34.150002, 36.714287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130077, 33.618862, 36.123341>,  <38.688171, 33.470596, 36.625126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130077, 33.618862, 36.123341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313309, 33.964207, 36.207985>,  <38.423248, 34.171413, 36.258770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313309, 33.964207, 36.207985>,  <38.130077, 33.618862, 36.123341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313309, 33.964207, 36.207985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030354, 0.253109, -0.966961,
		-0.888395, 0.436518, 0.142150,
		0.458076, 0.863358, 0.211611,
		38.450733, 34.223213, 36.271469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835423, 33.997253, 35.621555>,  <38.130077, 33.618862, 36.123341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835423, 33.997253, 35.621555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144749, 34.208252, 35.762253>,  <38.330345, 34.334850, 35.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144749, 34.208252, 35.762253>,  <37.835423, 33.997253, 35.621555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144749, 34.208252, 35.762253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186195, 0.341379, -0.921299,
		-0.606061, 0.777951, 0.165778,
		0.773318, 0.527496, 0.351747,
		38.376743, 34.366501, 35.867779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778275, 34.731899, 35.331806>,  <37.835423, 33.997253, 35.621555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778275, 34.731899, 35.331806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161327, 34.705139, 35.443848>,  <38.391159, 34.689083, 35.511074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161327, 34.705139, 35.443848>,  <37.778275, 34.731899, 35.331806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161327, 34.705139, 35.443848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279463, 0.450698, -0.847804,
		-0.069525, 0.890166, 0.450301,
		0.957636, -0.066899, 0.280103,
		38.448620, 34.685070, 35.527878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095467, 35.423233, 35.318058>,  <37.778275, 34.731899, 35.331806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095467, 35.423233, 35.318058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379940, 35.145508, 35.273972>,  <38.550625, 34.978874, 35.247520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379940, 35.145508, 35.273972>,  <38.095467, 35.423233, 35.318058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379940, 35.145508, 35.273972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397507, 0.526473, -0.751541,
		0.579828, 0.490674, 0.650414,
		0.711187, -0.694309, -0.110218,
		38.593296, 34.937214, 35.240906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682800, 35.738445, 35.399445>,  <38.095467, 35.423233, 35.318058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682800, 35.738445, 35.399445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789497, 35.415188, 35.189396>,  <38.853516, 35.221233, 35.063366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789497, 35.415188, 35.189396>,  <38.682800, 35.738445, 35.399445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789497, 35.415188, 35.189396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517201, 0.579792, -0.629559,
		0.813234, -0.103660, 0.572630,
		0.266747, -0.808143, -0.525119,
		38.869522, 35.172745, 35.031860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184006, 36.032326, 34.967392>,  <38.682800, 35.738445, 35.399445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184006, 36.032326, 34.967392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178551, 35.662209, 34.815784>,  <39.175278, 35.440140, 34.724819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178551, 35.662209, 34.815784>,  <39.184006, 36.032326, 34.967392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178551, 35.662209, 34.815784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690993, 0.265257, -0.672434,
		0.722733, -0.271072, 0.635750,
		-0.013641, -0.925288, -0.379019,
		39.174458, 35.384621, 34.702080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857971, 35.724846, 34.980625>,  <39.184006, 36.032326, 34.967392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857971, 35.724846, 34.980625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642315, 35.560966, 34.686283>,  <39.512920, 35.462639, 34.509678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642315, 35.560966, 34.686283>,  <39.857971, 35.724846, 34.980625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642315, 35.560966, 34.686283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682423, 0.299541, -0.666763,
		0.493589, -0.861640, 0.118092,
		-0.539136, -0.409696, -0.735854,
		39.480576, 35.438057, 34.465527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294617, 35.173340, 34.596806>,  <39.857971, 35.724846, 34.980625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294617, 35.173340, 34.596806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011986, 35.351406, 34.376778>,  <39.842407, 35.458244, 34.244762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011986, 35.351406, 34.376778>,  <40.294617, 35.173340, 34.596806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011986, 35.351406, 34.376778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683319, 0.227196, -0.693871,
		-0.183912, -0.866147, -0.464720,
		-0.706577, 0.445163, -0.550071,
		39.800014, 35.484955, 34.211758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395885, 34.963375, 33.842842>,  <40.294617, 35.173340, 34.596806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395885, 34.963375, 33.842842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193352, 35.307549, 33.819901>,  <40.071831, 35.514053, 33.806137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193352, 35.307549, 33.819901>,  <40.395885, 34.963375, 33.842842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193352, 35.307549, 33.819901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599527, 0.303436, -0.740604,
		-0.619836, -0.409373, -0.669490,
		-0.506330, 0.860431, -0.057350,
		40.041454, 35.565678, 33.802696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126011, 35.080124, 33.140644>,  <40.395885, 34.963375, 33.842842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126011, 35.080124, 33.140644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226341, 35.402981, 33.354412>,  <40.286541, 35.596695, 33.482674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226341, 35.402981, 33.354412>,  <40.126011, 35.080124, 33.140644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226341, 35.402981, 33.354412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598420, 0.304655, -0.740999,
		-0.760906, 0.505671, -0.406595,
		0.250831, 0.807145, 0.534417,
		40.301590, 35.645123, 33.514736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059429, 35.725544, 32.664169>,  <40.126011, 35.080124, 33.140644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059429, 35.725544, 32.664169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324295, 35.795856, 32.955547>,  <40.483215, 35.838043, 33.130375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324295, 35.795856, 32.955547>,  <40.059429, 35.725544, 32.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324295, 35.795856, 32.955547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664840, 0.310681, -0.679313,
		-0.345726, 0.934119, 0.088856,
		0.662165, 0.175781, 0.728450,
		40.522945, 35.848591, 33.174084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507607, 36.228741, 32.403694>,  <40.059429, 35.725544, 32.664169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507607, 36.228741, 32.403694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705757, 36.073551, 32.714584>,  <40.824650, 35.980438, 32.901119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705757, 36.073551, 32.714584>,  <40.507607, 36.228741, 32.403694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705757, 36.073551, 32.714584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868543, 0.205546, -0.450982,
		0.015212, 0.898460, 0.438792,
		0.495381, -0.387970, 0.777224,
		40.854370, 35.957161, 32.947750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994991, 36.810352, 32.745716>,  <40.507607, 36.228741, 32.403694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994991, 36.810352, 32.745716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110538, 36.428822, 32.778610>,  <41.179867, 36.199902, 32.798347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110538, 36.428822, 32.778610>,  <40.994991, 36.810352, 32.745716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110538, 36.428822, 32.778610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855142, 0.218448, -0.470119,
		0.430449, 0.206130, 0.878763,
		0.288869, -0.953830, 0.082240,
		41.197201, 36.142673, 32.803284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609642, 36.901295, 32.506187>,  <40.994991, 36.810352, 32.745716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609642, 36.901295, 32.506187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553093, 36.505939, 32.528465>,  <41.519165, 36.268726, 32.541832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553093, 36.505939, 32.528465>,  <41.609642, 36.901295, 32.506187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553093, 36.505939, 32.528465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914216, -0.151931, -0.375668,
		0.379768, -0.002187, 0.925079,
		-0.141370, -0.988389, 0.055699,
		41.510681, 36.209423, 32.545174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194973, 36.510796, 32.939011>,  <41.609642, 36.901295, 32.506187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194973, 36.510796, 32.939011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042660, 36.274982, 32.654068>,  <41.951271, 36.133495, 32.483101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042660, 36.274982, 32.654068>,  <42.194973, 36.510796, 32.939011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042660, 36.274982, 32.654068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907651, -0.091200, -0.409699,
		0.176565, -0.802576, 0.569821,
		-0.380782, -0.589537, -0.712356,
		41.928425, 36.098122, 32.440361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495083, 35.786343, 32.850861>,  <42.194973, 36.510796, 32.939011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495083, 35.786343, 32.850861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378204, 36.052814, 32.576393>,  <42.308075, 36.212696, 32.411713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378204, 36.052814, 32.576393>,  <42.495083, 35.786343, 32.850861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378204, 36.052814, 32.576393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940222, 0.068871, -0.333525,
		-0.174931, -0.742604, -0.646482,
		-0.292201, 0.666180, -0.686165,
		42.290543, 36.252670, 32.370544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804260, 35.917389, 33.555214>,  <42.495083, 35.786343, 32.850861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804260, 35.917389, 33.555214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139057, 35.824116, 33.753235>,  <43.339935, 35.768154, 33.872047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139057, 35.824116, 33.753235>,  <42.804260, 35.917389, 33.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139057, 35.824116, 33.753235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095553, -0.953047, -0.287350,
		0.538814, 0.193205, -0.819971,
		0.836988, -0.233179, 0.495054,
		43.390152, 35.754162, 33.901752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327873, 35.622215, 33.196762>,  <42.804260, 35.917389, 33.555214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327873, 35.622215, 33.196762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432442, 35.490288, 33.559612>,  <43.495182, 35.411129, 33.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.432442, 35.490288, 33.559612>,  <43.327873, 35.622215, 33.196762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432442, 35.490288, 33.559612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116500, -0.922155, -0.368859,
		0.958170, 0.202107, -0.202643,
		0.261417, -0.329822, 0.907127,
		43.510868, 35.391342, 33.831749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736588, 35.042458, 33.045692>,  <43.327873, 35.622215, 33.196762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736588, 35.042458, 33.045692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687668, 35.010178, 33.441376>,  <43.658318, 34.990810, 33.678783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.687668, 35.010178, 33.441376>,  <43.736588, 35.042458, 33.045692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687668, 35.010178, 33.441376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115423, -0.991082, -0.066587,
		0.985759, 0.106033, 0.130524,
		-0.122300, -0.080705, 0.989207,
		43.650978, 34.985966, 33.738136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360188, 34.610497, 33.265594>,  <43.736588, 35.042458, 33.045692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360188, 34.610497, 33.265594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040401, 34.566944, 33.501900>,  <43.848530, 34.540813, 33.643681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.040401, 34.566944, 33.501900>,  <44.360188, 34.610497, 33.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040401, 34.566944, 33.501900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013404, -0.986426, -0.163661,
		0.600558, -0.122923, 0.790076,
		-0.799468, -0.108879, 0.590758,
		43.800560, 34.534279, 33.679127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379211, 33.964054, 33.618767>,  <44.360188, 34.610497, 33.265594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379211, 33.964054, 33.618767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995293, 34.045639, 33.695904>,  <43.764942, 34.094589, 33.742184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995293, 34.045639, 33.695904>,  <44.379211, 33.964054, 33.618767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995293, 34.045639, 33.695904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214964, -0.975893, -0.037728,
		0.180494, -0.077664, 0.980505,
		-0.959798, 0.203963, 0.192838,
		43.707352, 34.106827, 33.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258663, 33.566998, 34.270687>,  <44.379211, 33.964054, 33.618767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258663, 33.566998, 34.270687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901077, 33.634720, 34.104717>,  <43.686527, 33.675354, 34.005135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901077, 33.634720, 34.104717>,  <44.258663, 33.566998, 34.270687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901077, 33.634720, 34.104717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244053, -0.960474, 0.133898,
		-0.375857, 0.220964, 0.899948,
		-0.893963, 0.169309, -0.414927,
		43.632889, 33.685513, 33.980240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749844, 33.136848, 34.771637>,  <44.258663, 33.566998, 34.270687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749844, 33.136848, 34.771637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532028, 33.206623, 34.443478>,  <43.401340, 33.248486, 34.246582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532028, 33.206623, 34.443478>,  <43.749844, 33.136848, 34.771637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532028, 33.206623, 34.443478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409973, -0.908677, 0.078917,
		-0.731710, 0.379314, 0.566323,
		-0.544539, 0.174433, -0.820396,
		43.368668, 33.258953, 34.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985588, 33.202072, 34.972675>,  <43.749844, 33.136848, 34.771637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985588, 33.202072, 34.972675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056091, 33.066631, 34.602966>,  <43.098392, 32.985367, 34.381142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056091, 33.066631, 34.602966>,  <42.985588, 33.202072, 34.972675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056091, 33.066631, 34.602966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286315, -0.916011, 0.280976,
		-0.941783, 0.215107, -0.258407,
		0.176263, -0.338605, -0.924272,
		43.108971, 32.965050, 34.325684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428112, 32.711052, 34.819916>,  <42.985588, 33.202072, 34.972675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428112, 32.711052, 34.819916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689083, 32.640549, 34.525089>,  <42.845665, 32.598248, 34.348194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689083, 32.640549, 34.525089>,  <42.428112, 32.711052, 34.819916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689083, 32.640549, 34.525089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294595, -0.955074, -0.032377,
		-0.698249, 0.238260, -0.675041,
		0.652428, -0.176256, -0.737069,
		42.884811, 32.587673, 34.303970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001129, 32.407341, 34.352390>,  <42.428112, 32.711052, 34.819916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001129, 32.407341, 34.352390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381184, 32.304066, 34.282436>,  <42.609215, 32.242100, 34.240463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381184, 32.304066, 34.282436>,  <42.001129, 32.407341, 34.352390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381184, 32.304066, 34.282436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205223, -0.939948, 0.272730,
		-0.234802, -0.223238, -0.946061,
		0.950132, -0.258191, -0.174888,
		42.666222, 32.226608, 34.229969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980789, 31.809671, 33.947327>,  <42.001129, 32.407341, 34.352390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980789, 31.809671, 33.947327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356911, 31.800074, 34.083118>,  <42.582584, 31.794315, 34.164593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356911, 31.800074, 34.083118>,  <41.980789, 31.809671, 33.947327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356911, 31.800074, 34.083118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153423, -0.920285, 0.359913,
		0.303783, -0.390513, -0.869032,
		0.940307, -0.023994, 0.339480,
		42.639004, 31.792875, 34.184963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296700, 31.175812, 33.598373>,  <41.980789, 31.809671, 33.947327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296700, 31.175812, 33.598373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540482, 31.223309, 33.911926>,  <42.686752, 31.251806, 34.100056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540482, 31.223309, 33.911926>,  <42.296700, 31.175812, 33.598373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540482, 31.223309, 33.911926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063702, -0.978190, 0.197702,
		0.790257, -0.170425, -0.588599,
		0.609455, 0.118740, 0.783878,
		42.723320, 31.258930, 34.147091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908447, 30.659485, 33.560413>,  <42.296700, 31.175812, 33.598373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908447, 30.659485, 33.560413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879383, 30.762224, 33.945900>,  <42.861946, 30.823868, 34.177193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879383, 30.762224, 33.945900>,  <42.908447, 30.659485, 33.560413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879383, 30.762224, 33.945900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046052, -0.964376, 0.260496,
		0.996293, 0.063309, 0.058244,
		-0.072660, 0.256849, 0.963716,
		42.857586, 30.839279, 34.235016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162800, 30.089687, 33.867760>,  <42.908447, 30.659485, 33.560413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162800, 30.089687, 33.867760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982838, 30.267555, 34.177559>,  <42.874859, 30.374277, 34.363438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982838, 30.267555, 34.177559>,  <43.162800, 30.089687, 33.867760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982838, 30.267555, 34.177559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141753, -0.891791, 0.429668,
		0.881755, 0.083522, 0.464255,
		-0.449905, 0.444672, 0.774501,
		42.847866, 30.400957, 34.409908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579308, 29.826832, 34.414124>,  <43.162800, 30.089687, 33.867760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579308, 29.826832, 34.414124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226631, 29.944616, 34.561584>,  <43.015022, 30.015287, 34.650063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.226631, 29.944616, 34.561584>,  <43.579308, 29.826832, 34.414124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226631, 29.944616, 34.561584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133962, -0.905425, 0.402816,
		0.452401, 0.305775, 0.837755,
		-0.881696, 0.294462, 0.368653,
		42.962124, 30.032955, 34.672180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588726, 29.528296, 35.021790>,  <43.579308, 29.826832, 34.414124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588726, 29.528296, 35.021790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195389, 29.598513, 35.002949>,  <42.959385, 29.640642, 34.991646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195389, 29.598513, 35.002949>,  <43.588726, 29.528296, 35.021790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195389, 29.598513, 35.002949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179069, -0.891366, 0.416414,
		0.031115, 0.417912, 0.907954,
		-0.983344, 0.175543, -0.047101,
		42.900387, 29.651176, 34.988819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204472, 29.429354, 35.816582>,  <43.588726, 29.528296, 35.021790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204472, 29.429354, 35.816582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962009, 29.364540, 35.505116>,  <42.816532, 29.325653, 35.318237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962009, 29.364540, 35.505116>,  <43.204472, 29.429354, 35.816582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962009, 29.364540, 35.505116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193102, -0.919752, 0.341712,
		-0.771549, 0.357493, 0.526223,
		-0.606155, -0.162033, -0.778667,
		42.780163, 29.315929, 35.271515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641418, 28.980293, 36.045856>,  <43.204472, 29.429354, 35.816582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641418, 28.980293, 36.045856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642555, 28.935724, 35.648350>,  <42.643238, 28.908983, 35.409843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642555, 28.935724, 35.648350>,  <42.641418, 28.980293, 36.045856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642555, 28.935724, 35.648350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276791, -0.955034, 0.106285,
		-0.960926, 0.274764, -0.033559,
		0.002846, -0.111421, -0.993769,
		42.643410, 28.902298, 35.350220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023201, 28.534931, 35.949638>,  <42.641418, 28.980293, 36.045856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023201, 28.534931, 35.949638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259975, 28.507683, 35.628395>,  <42.402039, 28.491335, 35.435650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259975, 28.507683, 35.628395>,  <42.023201, 28.534931, 35.949638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259975, 28.507683, 35.628395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102598, -0.994684, 0.008749,
		-0.799432, 0.077219, -0.595774,
		0.591931, -0.068120, -0.803104,
		42.437553, 28.487247, 35.387463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610031, 28.269070, 35.359753>,  <42.023201, 28.534931, 35.949638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610031, 28.269070, 35.359753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995525, 28.177946, 35.304169>,  <42.226822, 28.123272, 35.270817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995525, 28.177946, 35.304169>,  <41.610031, 28.269070, 35.359753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995525, 28.177946, 35.304169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223777, -0.973638, 0.044197,
		-0.145364, -0.011499, -0.989312,
		0.963739, -0.227810, -0.138959,
		42.284649, 28.109604, 35.262482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573734, 27.694796, 34.935207>,  <41.610031, 28.269070, 35.359753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573734, 27.694796, 34.935207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924866, 27.682081, 35.126373>,  <42.135544, 27.674452, 35.241074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924866, 27.682081, 35.126373>,  <41.573734, 27.694796, 34.935207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924866, 27.682081, 35.126373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200259, -0.930755, 0.305927,
		0.435096, -0.364259, -0.823412,
		0.877831, -0.031788, 0.477913,
		42.188213, 27.672544, 35.269749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798786, 27.015215, 35.046181>,  <41.573734, 27.694796, 34.935207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798786, 27.015215, 35.046181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054043, 27.173517, 35.310349>,  <42.207195, 27.268497, 35.468849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.054043, 27.173517, 35.310349>,  <41.798786, 27.015215, 35.046181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054043, 27.173517, 35.310349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053537, -0.832893, 0.550838,
		0.768056, -0.386869, -0.510316,
		0.638141, 0.395754, 0.660421,
		42.245483, 27.292244, 35.508476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468609, 26.810537, 34.798008>,  <41.798786, 27.015215, 35.046181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468609, 26.810537, 34.798008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703510, 26.678665, 34.502323>,  <42.844452, 26.599543, 34.324913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703510, 26.678665, 34.502323>,  <42.468609, 26.810537, 34.798008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703510, 26.678665, 34.502323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809362, 0.230321, 0.540264,
		-0.007858, -0.915567, 0.402088,
		0.587257, -0.329680, -0.739215,
		42.879688, 26.579762, 34.280560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059608, 26.354946, 35.156837>,  <42.468609, 26.810537, 34.798008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059608, 26.354946, 35.156837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172932, 26.543953, 34.823021>,  <43.240925, 26.657356, 34.622730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172932, 26.543953, 34.823021>,  <43.059608, 26.354946, 35.156837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172932, 26.543953, 34.823021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945938, 0.005604, 0.324298,
		0.157913, -0.881305, -0.445382,
		0.283309, 0.472515, -0.834545,
		43.257923, 26.685707, 34.572659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340809, 25.923101, 34.756126>,  <43.059608, 26.354946, 35.156837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340809, 25.923101, 34.756126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498562, 26.287453, 34.707523>,  <43.593212, 26.506063, 34.678360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498562, 26.287453, 34.707523>,  <43.340809, 25.923101, 34.756126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498562, 26.287453, 34.707523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844200, -0.306880, 0.439489,
		0.363032, -0.275905, -0.889991,
		0.394378, 0.910879, -0.121512,
		43.616875, 26.560717, 34.671070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980434, 25.847338, 34.683666>,  <43.340809, 25.923101, 34.756126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980434, 25.847338, 34.683666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001312, 26.237438, 34.769604>,  <44.013840, 26.471498, 34.821167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001312, 26.237438, 34.769604>,  <43.980434, 25.847338, 34.683666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001312, 26.237438, 34.769604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833419, -0.161064, 0.528651,
		0.550172, 0.151458, -0.821201,
		0.052198, 0.975253, 0.214841,
		44.016972, 26.530014, 34.834057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622936, 26.068268, 34.539455>,  <43.980434, 25.847338, 34.683666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622936, 26.068268, 34.539455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480362, 26.305342, 34.828365>,  <44.394817, 26.447586, 35.001709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480362, 26.305342, 34.828365>,  <44.622936, 26.068268, 34.539455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480362, 26.305342, 34.828365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847948, -0.119421, 0.516453,
		0.392348, 0.796532, -0.460000,
		-0.356438, 0.592685, 0.722272,
		44.373432, 26.483147, 35.045048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100010, 26.602777, 34.664246>,  <44.622936, 26.068268, 34.539455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100010, 26.602777, 34.664246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897804, 26.530092, 35.001633>,  <44.776482, 26.486481, 35.204063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897804, 26.530092, 35.001633>,  <45.100010, 26.602777, 34.664246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897804, 26.530092, 35.001633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860472, -0.034155, 0.508351,
		-0.063564, 0.982759, 0.173623,
		-0.505517, -0.181711, 0.843465,
		44.746151, 26.475578, 35.254673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240952, 27.011402, 35.274734>,  <45.100010, 26.602777, 34.664246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240952, 27.011402, 35.274734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118027, 26.654850, 35.408005>,  <45.044273, 26.440920, 35.487965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118027, 26.654850, 35.408005>,  <45.240952, 27.011402, 35.274734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118027, 26.654850, 35.408005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916308, -0.182705, 0.356369,
		-0.256787, 0.414804, 0.872925,
		-0.307311, -0.891379, 0.333172,
		45.025833, 26.387436, 35.507957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410366, 27.042452, 35.967453>,  <45.240952, 27.011402, 35.274734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410366, 27.042452, 35.967453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395435, 26.663321, 35.840820>,  <45.386478, 26.435841, 35.764839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395435, 26.663321, 35.840820>,  <45.410366, 27.042452, 35.967453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395435, 26.663321, 35.840820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780118, -0.225625, 0.583531,
		-0.624518, -0.225194, 0.747840,
		-0.037324, -0.947829, -0.316585,
		45.384239, 26.378971, 35.745846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140816, 27.223858, 36.073658>,  <45.410366, 27.042452, 35.967453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140816, 27.223858, 36.073658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954788, 27.515285, 36.274815>,  <45.843170, 27.690142, 36.395508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.954788, 27.515285, 36.274815>,  <46.140816, 27.223858, 36.073658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954788, 27.515285, 36.274815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429964, 0.682455, -0.591088,
		-0.773846, -0.058675, -0.630650,
		-0.465073, 0.728568, 0.502887,
		45.815266, 27.733856, 36.425682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243229, 27.786940, 35.693180>,  <46.140816, 27.223858, 36.073658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243229, 27.786940, 35.693180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058865, 27.953604, 36.006599>,  <45.948246, 28.053602, 36.194653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.058865, 27.953604, 36.006599>,  <46.243229, 27.786940, 35.693180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058865, 27.953604, 36.006599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140834, 0.906082, -0.398975,
		-0.876199, -0.073543, -0.476306,
		-0.460914, 0.416662, 0.783551,
		45.920589, 28.078602, 36.241665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.618332, 28.252514, 35.484127>,  <46.243229, 27.786940, 35.693180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.618332, 28.252514, 35.484127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763527, 28.375809, 35.835861>,  <45.850643, 28.449785, 36.046902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763527, 28.375809, 35.835861>,  <45.618332, 28.252514, 35.484127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763527, 28.375809, 35.835861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058064, 0.934385, -0.351501,
		-0.929982, 0.178649, 0.321276,
		0.362991, 0.308235, 0.879334,
		45.872425, 28.468279, 36.099663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363464, 28.912678, 35.519043>,  <45.618332, 28.252514, 35.484127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363464, 28.912678, 35.519043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660591, 28.889023, 35.785793>,  <45.838867, 28.874830, 35.945843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660591, 28.889023, 35.785793>,  <45.363464, 28.912678, 35.519043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660591, 28.889023, 35.785793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338941, 0.892225, -0.298418,
		-0.577353, 0.447702, 0.682808,
		0.742821, -0.059139, 0.666873,
		45.883438, 28.871281, 35.985855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320942, 29.540701, 35.864231>,  <45.363464, 28.912678, 35.519043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320942, 29.540701, 35.864231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.685787, 29.394047, 35.937572>,  <45.904694, 29.306053, 35.981579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.685787, 29.394047, 35.937572>,  <45.320942, 29.540701, 35.864231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685787, 29.394047, 35.937572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407269, 0.861363, -0.303620,
		-0.046618, 0.351612, 0.934984,
		0.912117, -0.366636, 0.183356,
		45.959423, 29.284056, 35.992580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601322, 29.966665, 36.378414>,  <45.320942, 29.540701, 35.864231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601322, 29.966665, 36.378414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884426, 29.790684, 36.157322>,  <46.054291, 29.685095, 36.024666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884426, 29.790684, 36.157322>,  <45.601322, 29.966665, 36.378414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884426, 29.790684, 36.157322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356113, 0.897915, -0.258711,
		0.610126, -0.013729, 0.792185,
		0.707764, -0.439954, -0.552731,
		46.096756, 29.658697, 35.991501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149326, 30.394764, 36.509293>,  <45.601322, 29.966665, 36.378414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149326, 30.394764, 36.509293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308620, 30.174726, 36.215679>,  <46.404198, 30.042704, 36.039513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308620, 30.174726, 36.215679>,  <46.149326, 30.394764, 36.509293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308620, 30.174726, 36.215679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468393, 0.809984, -0.352893,
		0.788681, -0.203282, 0.580223,
		0.398235, -0.550093, -0.734035,
		46.428089, 30.009699, 35.995468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.902328, 30.517317, 36.523102>,  <46.149326, 30.394764, 36.509293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.902328, 30.517317, 36.523102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755760, 30.410295, 36.166641>,  <46.667820, 30.346083, 35.952766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755760, 30.410295, 36.166641>,  <46.902328, 30.517317, 36.523102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755760, 30.410295, 36.166641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269338, 0.886259, -0.376830,
		0.890617, -0.378097, -0.252673,
		-0.366412, -0.267557, -0.891154,
		46.645836, 30.330029, 35.899296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.397938, 30.860844, 35.997070>,  <46.902328, 30.517317, 36.523102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.397938, 30.860844, 35.997070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085579, 30.770706, 35.764034>,  <46.898163, 30.716623, 35.624210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085579, 30.770706, 35.764034>,  <47.397938, 30.860844, 35.997070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085579, 30.770706, 35.764034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029748, 0.918190, -0.395022,
		0.623945, -0.325804, -0.710312,
		-0.780901, -0.225342, -0.582593,
		46.851307, 30.703104, 35.589256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.547745, 31.067932, 35.326366>,  <47.397938, 30.860844, 35.997070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.547745, 31.067932, 35.326366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150742, 31.081902, 35.373188>,  <46.912540, 31.090284, 35.401279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.150742, 31.081902, 35.373188>,  <47.547745, 31.067932, 35.326366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.150742, 31.081902, 35.373188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029600, 0.860930, -0.507862,
		-0.118512, -0.507523, -0.853449,
		-0.992511, 0.034925, 0.117053,
		46.852989, 31.092379, 35.408302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.360600, 31.563545, 34.832100>,  <47.547745, 31.067932, 35.326366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.360600, 31.563545, 34.832100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010315, 31.498215, 35.013847>,  <46.800144, 31.459017, 35.122894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.010315, 31.498215, 35.013847>,  <47.360600, 31.563545, 34.832100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.010315, 31.498215, 35.013847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361197, 0.846089, -0.392009,
		-0.320407, -0.507403, -0.799926,
		-0.875715, -0.163328, 0.454365,
		46.747601, 31.449217, 35.150158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788048, 31.561752, 34.326191>,  <47.360600, 31.563545, 34.832100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788048, 31.561752, 34.326191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.610310, 31.637705, 34.676392>,  <46.503666, 31.683277, 34.886513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.610310, 31.637705, 34.676392>,  <46.788048, 31.561752, 34.326191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610310, 31.637705, 34.676392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286993, 0.895602, -0.339899,
		-0.848644, -0.402295, -0.343457,
		-0.444341, 0.189883, 0.875503,
		46.477009, 31.694670, 34.939041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.166206, 31.859301, 34.174454>,  <46.788048, 31.561752, 34.326191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.166206, 31.859301, 34.174454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249165, 31.971214, 34.549412>,  <46.298939, 32.038361, 34.774387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.249165, 31.971214, 34.549412>,  <46.166206, 31.859301, 34.174454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249165, 31.971214, 34.549412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241587, 0.943198, -0.228064,
		-0.947956, -0.179162, 0.263211,
		0.207400, 0.279783, 0.937394,
		46.311386, 32.055149, 34.830631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599934, 32.259682, 34.321190>,  <46.166206, 31.859301, 34.174454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599934, 32.259682, 34.321190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888168, 32.371407, 34.575039>,  <46.061108, 32.438442, 34.727348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888168, 32.371407, 34.575039>,  <45.599934, 32.259682, 34.321190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888168, 32.371407, 34.575039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228812, 0.959790, -0.162626,
		-0.654525, -0.028023, 0.755520,
		0.720584, 0.279315, 0.634619,
		46.104343, 32.455200, 34.765423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293842, 32.672047, 34.824463>,  <45.599934, 32.259682, 34.321190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293842, 32.672047, 34.824463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682362, 32.766899, 34.817020>,  <45.915474, 32.823811, 34.812557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682362, 32.766899, 34.817020>,  <45.293842, 32.672047, 34.824463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682362, 32.766899, 34.817020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237757, 0.965610, -0.105212,
		-0.006986, 0.106615, 0.994276,
		0.971299, 0.237131, -0.018603,
		45.973751, 32.838039, 34.811440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220703, 33.334084, 35.188404>,  <45.293842, 32.672047, 34.824463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220703, 33.334084, 35.188404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591450, 33.319504, 35.038952>,  <45.813896, 33.310757, 34.949280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591450, 33.319504, 35.038952>,  <45.220703, 33.334084, 35.188404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591450, 33.319504, 35.038952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000158, 0.995238, -0.097477,
		0.375401, 0.090407, 0.922443,
		0.926862, -0.036447, -0.373628,
		45.869507, 33.308571, 34.926865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531651, 33.901962, 35.464851>,  <45.220703, 33.334084, 35.188404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531651, 33.901962, 35.464851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749268, 33.816902, 35.140186>,  <45.879837, 33.765865, 34.945389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749268, 33.816902, 35.140186>,  <45.531651, 33.901962, 35.464851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749268, 33.816902, 35.140186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015943, 0.964556, -0.263397,
		0.838907, 0.156240, 0.521368,
		0.544042, -0.212653, -0.811663,
		45.912479, 33.753105, 34.896687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971001, 34.440468, 35.367432>,  <45.531651, 33.901962, 35.464851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971001, 34.440468, 35.367432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962456, 34.284016, 34.999397>,  <45.957329, 34.190144, 34.778576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962456, 34.284016, 34.999397>,  <45.971001, 34.440468, 35.367432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962456, 34.284016, 34.999397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019902, 0.920281, -0.390751,
		0.999574, 0.009963, -0.027445,
		-0.021364, -0.391131, -0.920087,
		45.956047, 34.166676, 34.723370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437302, 34.761795, 35.014427>,  <45.971001, 34.440468, 35.367432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437302, 34.761795, 35.014427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213085, 34.598389, 34.726288>,  <46.078556, 34.500343, 34.553406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.213085, 34.598389, 34.726288>,  <46.437302, 34.761795, 35.014427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213085, 34.598389, 34.726288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085105, 0.836833, -0.540803,
		0.823739, -0.364450, -0.434316,
		-0.560546, -0.408518, -0.720348,
		46.044922, 34.475834, 34.510181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772293, 34.833454, 34.321320>,  <46.437302, 34.761795, 35.014427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772293, 34.833454, 34.321320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393307, 34.768650, 34.211010>,  <46.165913, 34.729767, 34.144825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.393307, 34.768650, 34.211010>,  <46.772293, 34.833454, 34.321320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.393307, 34.768650, 34.211010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107838, 0.649923, -0.752310,
		0.301117, -0.742531, -0.598312,
		-0.947470, -0.162012, -0.275776,
		46.109066, 34.720047, 34.128277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703079, 34.647018, 33.538273>,  <46.772293, 34.833454, 34.321320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703079, 34.647018, 33.538273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346848, 34.782139, 33.660095>,  <46.133110, 34.863213, 33.733189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346848, 34.782139, 33.660095>,  <46.703079, 34.647018, 33.538273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346848, 34.782139, 33.660095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060754, 0.751968, -0.656394,
		-0.450752, -0.566068, -0.690210,
		-0.890579, 0.337803, 0.304560,
		46.079674, 34.883480, 33.751465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493332, 34.519249, 33.471962>,  <46.703079, 34.647018, 33.538273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493332, 34.519249, 33.471962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754120, 34.299210, 33.680698>,  <47.910595, 34.167187, 33.805943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754120, 34.299210, 33.680698>,  <47.493332, 34.519249, 33.471962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.754120, 34.299210, 33.680698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332091, 0.411546, 0.848732,
		-0.681651, -0.726649, 0.085633,
		0.651972, -0.550101, 0.521844,
		47.949711, 34.134178, 33.837250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134918, 34.015697, 34.025681>,  <47.493332, 34.519249, 33.471962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134918, 34.015697, 34.025681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.502071, 34.148201, 34.113087>,  <47.722363, 34.227703, 34.165531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.502071, 34.148201, 34.113087>,  <47.134918, 34.015697, 34.025681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.502071, 34.148201, 34.113087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364814, 0.487641, 0.793169,
		0.156186, -0.807758, 0.568447,
		0.917887, 0.331259, 0.218518,
		47.777439, 34.247578, 34.178642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256203, 34.027161, 34.765327>,  <47.134918, 34.015697, 34.025681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256203, 34.027161, 34.765327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469826, 34.315434, 34.588509>,  <47.598000, 34.488396, 34.482418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469826, 34.315434, 34.588509>,  <47.256203, 34.027161, 34.765327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.469826, 34.315434, 34.588509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369125, 0.669147, 0.644971,
		0.760615, -0.181276, 0.623381,
		0.534052, 0.720681, -0.442050,
		47.630043, 34.531639, 34.455894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719822, 34.344227, 35.239822>,  <47.256203, 34.027161, 34.765327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719822, 34.344227, 35.239822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603210, 34.599297, 34.954617>,  <47.533241, 34.752338, 34.783493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603210, 34.599297, 34.954617>,  <47.719822, 34.344227, 35.239822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603210, 34.599297, 34.954617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349123, 0.623038, 0.699954,
		0.890574, 0.452987, 0.040990,
		-0.291532, 0.637672, -0.713010,
		47.515751, 34.790600, 34.740715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.989822, 35.069382, 35.309166>,  <47.719822, 34.344227, 35.239822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.989822, 35.069382, 35.309166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625538, 35.053513, 35.144711>,  <47.406967, 35.043991, 35.046036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625538, 35.053513, 35.144711>,  <47.989822, 35.069382, 35.309166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625538, 35.053513, 35.144711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299633, 0.748576, 0.591485,
		0.284304, 0.661862, -0.693621,
		-0.910709, -0.039670, -0.411139,
		47.352325, 35.041611, 35.021370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.962597, 35.435345, 42.808304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713840, 35.189442, 43.002346>,  <36.564587, 35.041901, 43.118771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713840, 35.189442, 43.002346>,  <36.962597, 35.435345, 42.808304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713840, 35.189442, 43.002346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649284, 0.058443, -0.758297,
		0.437819, -0.786547, -0.435498,
		-0.621888, -0.614758, 0.485105,
		36.527275, 35.005013, 43.147877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766861, 34.884964, 42.292393>,  <36.962597, 35.435345, 42.808304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766861, 34.884964, 42.292393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490814, 34.904560, 42.581207>,  <36.325188, 34.916317, 42.754498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490814, 34.904560, 42.581207>,  <36.766861, 34.884964, 42.292393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490814, 34.904560, 42.581207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723431, -0.019633, -0.690118,
		-0.019633, -0.998606, 0.048990,
		0.690118, -0.048990, -0.722037,
		36.283779, 34.919258, 42.797817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280624, 34.450546, 42.066807>,  <36.766861, 34.884964, 42.292393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280624, 34.450546, 42.066807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082779, 34.671871, 42.334896>,  <35.964069, 34.804668, 42.495750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082779, 34.671871, 42.334896>,  <36.280624, 34.450546, 42.066807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082779, 34.671871, 42.334896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724036, 0.164239, -0.669923,
		-0.480755, -0.816620, 0.319384,
		-0.494617, 0.553315, 0.670222,
		35.934395, 34.837864, 42.535961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668568, 34.281227, 41.960629>,  <36.280624, 34.450546, 42.066807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668568, 34.281227, 41.960629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.670261, 34.643433, 42.130352>,  <35.671276, 34.860756, 42.232185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.670261, 34.643433, 42.130352>,  <35.668568, 34.281227, 41.960629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670261, 34.643433, 42.130352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541292, 0.358847, -0.760415,
		-0.840824, -0.226455, 0.491664,
		0.004232, 0.905509, 0.424305,
		35.671532, 34.915085, 42.257645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042450, 34.439026, 41.879562>,  <35.668568, 34.281227, 41.960629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042450, 34.439026, 41.879562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194962, 34.802044, 41.949970>,  <35.286469, 35.019855, 41.992214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194962, 34.802044, 41.949970>,  <35.042450, 34.439026, 41.879562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194962, 34.802044, 41.949970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611781, 0.390448, -0.687949,
		-0.693073, 0.154617, 0.704091,
		0.381279, 0.907548, 0.176017,
		35.309345, 35.074310, 42.002777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408035, 34.917862, 41.769375>,  <35.042450, 34.439026, 41.879562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408035, 34.917862, 41.769375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.730976, 35.153622, 41.758133>,  <34.924740, 35.295078, 41.751389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.730976, 35.153622, 41.758133>,  <34.408035, 34.917862, 41.769375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730976, 35.153622, 41.758133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412770, 0.530092, -0.740691,
		-0.421667, 0.609598, 0.671258,
		0.807352, 0.589400, -0.028101,
		34.973183, 35.330441, 41.749702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145271, 35.610268, 41.622131>,  <34.408035, 34.917862, 41.769375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145271, 35.610268, 41.622131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517456, 35.541256, 41.492836>,  <34.740765, 35.499847, 41.415260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517456, 35.541256, 41.492836>,  <34.145271, 35.610268, 41.622131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517456, 35.541256, 41.492836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212520, 0.464511, -0.859689,
		0.298468, 0.868598, 0.395542,
		0.930458, -0.172529, -0.323236,
		34.796593, 35.489498, 41.395866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075642, 36.175167, 41.162037>,  <34.145271, 35.610268, 41.622131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075642, 36.175167, 41.162037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397415, 35.953758, 41.075790>,  <34.590481, 35.820911, 41.024040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397415, 35.953758, 41.075790>,  <34.075642, 36.175167, 41.162037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397415, 35.953758, 41.075790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006291, 0.355012, -0.934840,
		0.594005, 0.753376, 0.282103,
		0.804437, -0.553526, -0.215618,
		34.638744, 35.787701, 41.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516327, 36.567543, 40.702148>,  <34.075642, 36.175167, 41.162037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516327, 36.567543, 40.702148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630566, 36.195164, 40.611130>,  <34.699108, 35.971737, 40.556519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630566, 36.195164, 40.611130>,  <34.516327, 36.567543, 40.702148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630566, 36.195164, 40.611130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071490, 0.257468, -0.963639,
		0.955680, 0.258944, 0.140085,
		0.285596, -0.930945, -0.227545,
		34.716244, 35.915882, 40.542866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948864, 36.662674, 40.194588>,  <34.516327, 36.567543, 40.702148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948864, 36.662674, 40.194588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.858734, 36.274376, 40.161392>,  <34.804657, 36.041397, 40.141476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.858734, 36.274376, 40.161392>,  <34.948864, 36.662674, 40.194588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858734, 36.274376, 40.161392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136019, 0.053001, -0.989288,
		0.964743, -0.234197, 0.120097,
		-0.225323, -0.970743, -0.082988,
		34.791138, 35.983154, 40.136497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405426, 36.414093, 39.786457>,  <34.948864, 36.662674, 40.194588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405426, 36.414093, 39.786457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079155, 36.187794, 39.738121>,  <34.883392, 36.052013, 39.709122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079155, 36.187794, 39.738121>,  <35.405426, 36.414093, 39.786457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079155, 36.187794, 39.738121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142987, 0.005238, -0.989711,
		0.560565, -0.824558, 0.076623,
		-0.815672, -0.565753, -0.120838,
		34.834454, 36.018066, 39.701870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637066, 35.911491, 39.343224>,  <35.405426, 36.414093, 39.786457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637066, 35.911491, 39.343224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237381, 35.905060, 39.328716>,  <34.997570, 35.901203, 39.320011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.237381, 35.905060, 39.328716>,  <35.637066, 35.911491, 39.343224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237381, 35.905060, 39.328716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035999, 0.016666, -0.999213,
		0.016666, -0.999732, -0.016075,
		0.999213, 0.016075, 0.036267,
		34.937618, 35.900238, 39.317837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492413, 35.465401, 38.883762>,  <35.637066, 35.911491, 39.343224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492413, 35.465401, 38.883762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142529, 35.658653, 38.899101>,  <34.932598, 35.774605, 38.908302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142529, 35.658653, 38.899101>,  <35.492413, 35.465401, 38.883762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142529, 35.658653, 38.899101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054174, -0.018849, -0.998354,
		-0.481614, -0.875345, 0.042661,
		-0.874708, 0.483132, 0.038343,
		34.880116, 35.803593, 38.910603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151272, 35.149242, 38.352077>,  <35.492413, 35.465401, 38.883762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151272, 35.149242, 38.352077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991707, 35.513206, 38.397572>,  <34.895966, 35.731583, 38.424870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991707, 35.513206, 38.397572>,  <35.151272, 35.149242, 38.352077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991707, 35.513206, 38.397572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064336, 0.151502, -0.986361,
		-0.914728, -0.386157, -0.118976,
		-0.398915, 0.909906, 0.113740,
		34.872032, 35.786179, 38.431694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690910, 35.273537, 37.804825>,  <35.151272, 35.149242, 38.352077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690910, 35.273537, 37.804825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751751, 35.650936, 37.922588>,  <34.788254, 35.877377, 37.993244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751751, 35.650936, 37.922588>,  <34.690910, 35.273537, 37.804825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751751, 35.650936, 37.922588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013396, 0.299811, -0.953905,
		-0.988274, 0.141147, 0.058241,
		0.152102, 0.943499, 0.294404,
		34.797382, 35.933987, 38.010910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283649, 35.766228, 37.416718>,  <34.690910, 35.273537, 37.804825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283649, 35.766228, 37.416718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548328, 36.028660, 37.561886>,  <34.707134, 36.186119, 37.648987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548328, 36.028660, 37.561886>,  <34.283649, 35.766228, 37.416718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548328, 36.028660, 37.561886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171519, 0.338755, -0.925109,
		-0.729890, 0.674390, 0.111623,
		0.661697, 0.656082, 0.362924,
		34.746838, 36.225483, 37.670765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070320, 36.379551, 37.165764>,  <34.283649, 35.766228, 37.416718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070320, 36.379551, 37.165764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461594, 36.417645, 37.239616>,  <34.696358, 36.440502, 37.283928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.461594, 36.417645, 37.239616>,  <34.070320, 36.379551, 37.165764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461594, 36.417645, 37.239616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145233, 0.322015, -0.935528,
		-0.148550, 0.941932, 0.301158,
		0.978182, 0.095235, 0.184635,
		34.755047, 36.446217, 37.295006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290291, 37.104870, 36.937069>,  <34.070320, 36.379551, 37.165764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290291, 37.104870, 36.937069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.615566, 36.872177, 36.944229>,  <34.810730, 36.732563, 36.948524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.615566, 36.872177, 36.944229>,  <34.290291, 37.104870, 36.937069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615566, 36.872177, 36.944229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221085, 0.280300, -0.934106,
		0.538378, 0.763560, 0.356547,
		0.813186, -0.581729, 0.017905,
		34.859524, 36.697659, 36.949600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833927, 37.638905, 36.807079>,  <34.290291, 37.104870, 36.937069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833927, 37.638905, 36.807079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981312, 37.277683, 36.718773>,  <35.069744, 37.060951, 36.665787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981312, 37.277683, 36.718773>,  <34.833927, 37.638905, 36.807079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981312, 37.277683, 36.718773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053624, 0.257727, -0.964729,
		0.928095, 0.343628, 0.143388,
		0.368463, -0.903049, -0.220768,
		35.091850, 37.006767, 36.652542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453693, 37.710548, 36.388882>,  <34.833927, 37.638905, 36.807079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453693, 37.710548, 36.388882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300270, 37.351624, 36.301498>,  <35.208218, 37.136269, 36.249069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300270, 37.351624, 36.301498>,  <35.453693, 37.710548, 36.388882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300270, 37.351624, 36.301498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223065, 0.139534, -0.964765,
		0.896174, -0.418770, 0.146640,
		-0.383554, -0.897308, -0.218460,
		35.185204, 37.082432, 36.235962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965500, 37.531082, 35.897720>,  <35.453693, 37.710548, 36.388882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965500, 37.531082, 35.897720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669575, 37.269604, 35.834023>,  <35.492020, 37.112717, 35.795803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669575, 37.269604, 35.834023>,  <35.965500, 37.531082, 35.897720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669575, 37.269604, 35.834023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118276, 0.106643, -0.987238,
		0.662333, -0.749208, -0.001579,
		-0.739815, -0.653693, -0.159246,
		35.447632, 37.073494, 35.786247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301746, 36.858780, 35.537125>,  <35.965500, 37.531082, 35.897720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301746, 36.858780, 35.537125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.906849, 36.904793, 35.493080>,  <35.669910, 36.932400, 35.466652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.906849, 36.904793, 35.493080>,  <36.301746, 36.858780, 35.537125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906849, 36.904793, 35.493080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126596, 0.147524, -0.980923,
		-0.096599, -0.982346, -0.160205,
		-0.987240, 0.115038, -0.110111,
		35.610676, 36.939304, 35.460049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272652, 36.656250, 34.768623>,  <36.301746, 36.858780, 35.537125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272652, 36.656250, 34.768623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668812, 36.607712, 34.795124>,  <36.906506, 36.578590, 34.811024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668812, 36.607712, 34.795124>,  <36.272652, 36.656250, 34.768623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668812, 36.607712, 34.795124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054859, 0.094910, 0.993973,
		-0.126901, -0.988062, 0.087342,
		0.990397, -0.121345, 0.066248,
		36.965931, 36.571308, 34.814999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472504, 36.199032, 35.315712>,  <36.272652, 36.656250, 34.768623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472504, 36.199032, 35.315712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815334, 36.395679, 35.254101>,  <37.021034, 36.513668, 35.217133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.815334, 36.395679, 35.254101>,  <36.472504, 36.199032, 35.315712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815334, 36.395679, 35.254101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207689, -0.056104, 0.976585,
		0.471469, -0.868999, -0.150190,
		0.857078, 0.491622, -0.154030,
		37.072456, 36.543167, 35.207893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011227, 35.901360, 35.705166>,  <36.472504, 36.199032, 35.315712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011227, 35.901360, 35.705166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175896, 36.262474, 35.655365>,  <37.274696, 36.479141, 35.625484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175896, 36.262474, 35.655365>,  <37.011227, 35.901360, 35.705166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175896, 36.262474, 35.655365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328074, -0.019351, 0.944453,
		0.850231, -0.429652, -0.304148,
		0.411672, 0.902787, -0.124505,
		37.299397, 36.533310, 35.618015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670681, 35.825134, 36.033836>,  <37.011227, 35.901360, 35.705166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670681, 35.825134, 36.033836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550510, 36.206123, 36.013664>,  <37.478409, 36.434715, 36.001560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550510, 36.206123, 36.013664>,  <37.670681, 35.825134, 36.033836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550510, 36.206123, 36.013664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342391, 0.157047, 0.926339,
		0.890231, 0.261029, -0.373299,
		-0.300427, 0.952470, -0.050434,
		37.460381, 36.491863, 35.998535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251354, 36.171120, 36.211132>,  <37.670681, 35.825134, 36.033836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251354, 36.171120, 36.211132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947182, 36.422207, 36.277733>,  <37.764679, 36.572857, 36.317692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947182, 36.422207, 36.277733>,  <38.251354, 36.171120, 36.211132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947182, 36.422207, 36.277733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369312, 0.207091, 0.905937,
		0.534189, 0.750391, -0.389301,
		-0.760428, 0.627715, 0.166503,
		37.719055, 36.610523, 36.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567577, 36.801147, 36.503437>,  <38.251354, 36.171120, 36.211132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567577, 36.801147, 36.503437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183128, 36.831223, 36.609715>,  <37.952457, 36.849266, 36.673481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.183128, 36.831223, 36.609715>,  <38.567577, 36.801147, 36.503437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183128, 36.831223, 36.609715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275874, 0.302478, 0.912360,
		-0.011771, 0.950187, -0.311459,
		-0.961122, 0.075184, 0.265692,
		37.894791, 36.853779, 36.689423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520252, 37.426411, 36.967667>,  <38.567577, 36.801147, 36.503437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520252, 37.426411, 36.967667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168171, 37.260788, 37.060440>,  <37.956921, 37.161415, 37.116104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168171, 37.260788, 37.060440>,  <38.520252, 37.426411, 36.967667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168171, 37.260788, 37.060440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052462, 0.400810, 0.914658,
		-0.471681, 0.817256, -0.331073,
		-0.880207, -0.414058, 0.231929,
		37.904110, 37.136570, 37.130020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155594, 37.935127, 37.459370>,  <38.520252, 37.426411, 36.967667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155594, 37.935127, 37.459370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979462, 37.577309, 37.490078>,  <37.873783, 37.362617, 37.508503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979462, 37.577309, 37.490078>,  <38.155594, 37.935127, 37.459370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979462, 37.577309, 37.490078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010285, 0.080476, 0.996703,
		-0.897779, 0.439665, -0.026235,
		-0.440327, -0.894549, 0.076772,
		37.847363, 37.308945, 37.513111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620312, 38.007416, 37.848618>,  <38.155594, 37.935127, 37.459370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620312, 38.007416, 37.848618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726284, 37.623669, 37.887444>,  <37.789867, 37.393421, 37.910740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.726284, 37.623669, 37.887444>,  <37.620312, 38.007416, 37.848618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726284, 37.623669, 37.887444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024947, 0.093813, 0.995277,
		-0.963946, -0.266097, 0.000920,
		0.264927, -0.959370, 0.097069,
		37.805763, 37.335857, 37.916565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362934, 37.774471, 38.488052>,  <37.620312, 38.007416, 37.848618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362934, 37.774471, 38.488052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584473, 37.446201, 38.431839>,  <37.717396, 37.249241, 38.398113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.584473, 37.446201, 38.431839>,  <37.362934, 37.774471, 38.488052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584473, 37.446201, 38.431839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015868, -0.158346, 0.987256,
		-0.832469, -0.549017, -0.074676,
		0.553845, -0.820675, -0.140530,
		37.750626, 37.200001, 38.389679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092216, 37.275639, 38.953804>,  <37.362934, 37.774471, 38.488052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092216, 37.275639, 38.953804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459587, 37.143444, 38.866840>,  <37.680012, 37.064129, 38.814663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459587, 37.143444, 38.866840>,  <37.092216, 37.275639, 38.953804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459587, 37.143444, 38.866840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178071, -0.145378, 0.973219,
		-0.353242, -0.932547, -0.074669,
		0.918428, -0.330486, -0.217413,
		37.735115, 37.044300, 38.801617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224220, 36.587196, 39.296368>,  <37.092216, 37.275639, 38.953804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224220, 36.587196, 39.296368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579987, 36.757336, 39.229408>,  <37.793446, 36.859417, 39.189232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579987, 36.757336, 39.229408>,  <37.224220, 36.587196, 39.296368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579987, 36.757336, 39.229408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241499, -0.126315, 0.962145,
		0.388098, -0.896173, -0.215067,
		0.889414, 0.425345, -0.167403,
		37.846809, 36.884937, 39.179188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783295, 36.194000, 39.634190>,  <37.224220, 36.587196, 39.296368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783295, 36.194000, 39.634190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887917, 36.578182, 39.595989>,  <37.950691, 36.808689, 39.573071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.887917, 36.578182, 39.595989>,  <37.783295, 36.194000, 39.634190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887917, 36.578182, 39.595989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465283, -0.038780, 0.884312,
		0.845636, -0.275731, -0.457025,
		0.261556, 0.960452, -0.095499,
		37.966385, 36.866318, 39.567341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507675, 36.287621, 39.702549>,  <37.783295, 36.194000, 39.634190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507675, 36.287621, 39.702549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298180, 36.611866, 39.807320>,  <38.172482, 36.806412, 39.870182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298180, 36.611866, 39.807320>,  <38.507675, 36.287621, 39.702549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298180, 36.611866, 39.807320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400150, -0.037336, 0.915689,
		0.752047, 0.584393, -0.304812,
		-0.523741, 0.810611, 0.261924,
		38.141056, 36.855049, 39.885899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960445, 36.660664, 40.032993>,  <38.507675, 36.287621, 39.702549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960445, 36.660664, 40.032993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604885, 36.793076, 40.159653>,  <38.391548, 36.872524, 40.235649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.604885, 36.793076, 40.159653>,  <38.960445, 36.660664, 40.032993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604885, 36.793076, 40.159653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277790, -0.160106, 0.947206,
		0.364253, 0.929938, 0.050361,
		-0.888905, 0.331032, 0.316646,
		38.338215, 36.892384, 40.254646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116753, 37.153675, 40.461632>,  <38.960445, 36.660664, 40.032993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116753, 37.153675, 40.461632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741470, 37.064037, 40.567120>,  <38.516300, 37.010254, 40.630413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741470, 37.064037, 40.567120>,  <39.116753, 37.153675, 40.461632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741470, 37.064037, 40.567120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264248, 0.028190, 0.964043,
		-0.223468, 0.974160, 0.032768,
		-0.938208, -0.224091, 0.263720,
		38.460007, 36.996811, 40.646236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041897, 37.435352, 41.125530>,  <39.116753, 37.153675, 40.461632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041897, 37.435352, 41.125530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777779, 37.134960, 41.123043>,  <38.619308, 36.954723, 41.121552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777779, 37.134960, 41.123043>,  <39.041897, 37.435352, 41.125530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777779, 37.134960, 41.123043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266051, -0.241646, 0.933179,
		-0.702300, 0.614522, 0.359357,
		-0.660296, -0.750980, -0.006214,
		38.579689, 36.909668, 41.121178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698071, 37.390770, 41.758553>,  <39.041897, 37.435352, 41.125530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698071, 37.390770, 41.758553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615734, 37.018387, 41.637920>,  <38.566330, 36.794956, 41.565540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.615734, 37.018387, 41.637920>,  <38.698071, 37.390770, 41.758553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615734, 37.018387, 41.637920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264665, -0.349654, 0.898718,
		-0.942115, 0.105180, 0.318366,
		-0.205845, -0.930956, -0.301577,
		38.553982, 36.739101, 41.547447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.191578, 37.094963, 42.288475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309261, 36.771034, 42.085445>,  <38.379871, 36.576679, 41.963627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309261, 36.771034, 42.085445>,  <38.191578, 37.094963, 42.288475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309261, 36.771034, 42.085445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009317, -0.528627, 0.848803,
		-0.955695, -0.254457, -0.147983,
		0.294212, -0.809819, -0.507577,
		38.397526, 36.528088, 41.933174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759861, 36.551132, 42.549099>,  <38.191578, 37.094963, 42.288475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759861, 36.551132, 42.549099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092308, 36.369286, 42.420994>,  <38.291779, 36.260178, 42.344131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092308, 36.369286, 42.420994>,  <37.759861, 36.551132, 42.549099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092308, 36.369286, 42.420994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015361, -0.594457, 0.803980,
		-0.555878, -0.663286, -0.501050,
		0.831122, -0.454612, -0.320257,
		38.341644, 36.232903, 42.324917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682690, 35.919903, 42.686722>,  <37.759861, 36.551132, 42.549099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682690, 35.919903, 42.686722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081718, 35.939133, 42.666565>,  <38.321136, 35.950668, 42.654469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081718, 35.939133, 42.666565>,  <37.682690, 35.919903, 42.686722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081718, 35.939133, 42.666565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069592, -0.716651, 0.693952,
		-0.002754, -0.695773, -0.718256,
		0.997572, 0.048073, -0.050394,
		38.380989, 35.953556, 42.651447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923458, 35.220387, 42.657291>,  <37.682690, 35.919903, 42.686722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923458, 35.220387, 42.657291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230042, 35.442295, 42.786766>,  <38.413990, 35.575439, 42.864452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.230042, 35.442295, 42.786766>,  <37.923458, 35.220387, 42.657291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230042, 35.442295, 42.786766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304992, -0.757869, 0.576727,
		0.565262, -0.343316, -0.750075,
		0.766459, 0.554769, 0.323686,
		38.459980, 35.608727, 42.883873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397831, 34.654724, 42.637753>,  <37.923458, 35.220387, 42.657291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397831, 34.654724, 42.637753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557121, 34.960312, 42.840839>,  <38.652695, 35.143665, 42.962692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557121, 34.960312, 42.840839>,  <38.397831, 34.654724, 42.637753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557121, 34.960312, 42.840839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275389, -0.627535, 0.728259,
		0.874974, -0.150190, -0.460286,
		0.398223, 0.763965, 0.507717,
		38.676590, 35.189503, 42.993153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931347, 34.379524, 42.903248>,  <38.397831, 34.654724, 42.637753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931347, 34.379524, 42.903248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881477, 34.703461, 43.132549>,  <38.851555, 34.897823, 43.270130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881477, 34.703461, 43.132549>,  <38.931347, 34.379524, 42.903248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881477, 34.703461, 43.132549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489824, -0.452214, 0.745369,
		0.862861, 0.373720, -0.340300,
		-0.124671, 0.809837, 0.573255,
		38.844078, 34.946411, 43.304527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485199, 34.390247, 43.340565>,  <38.931347, 34.379524, 42.903248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485199, 34.390247, 43.340565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220715, 34.620953, 43.532459>,  <39.062023, 34.759377, 43.647594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.220715, 34.620953, 43.532459>,  <39.485199, 34.390247, 43.340565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220715, 34.620953, 43.532459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382875, -0.290484, 0.876941,
		0.645141, 0.763522, -0.028756,
		-0.661211, 0.576761, 0.479736,
		39.022350, 34.793980, 43.676380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843231, 34.774883, 43.926941>,  <39.485199, 34.390247, 43.340565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843231, 34.774883, 43.926941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456089, 34.798748, 44.024670>,  <39.223804, 34.813065, 44.083309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456089, 34.798748, 44.024670>,  <39.843231, 34.774883, 43.926941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456089, 34.798748, 44.024670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219402, -0.274619, 0.936188,
		0.122947, 0.959701, 0.252702,
		-0.967857, 0.059658, 0.244324,
		39.165733, 34.816647, 44.097965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750580, 35.255707, 44.411690>,  <39.843231, 34.774883, 43.926941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750580, 35.255707, 44.411690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442120, 35.002815, 44.441639>,  <39.257042, 34.851078, 44.459610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.442120, 35.002815, 44.441639>,  <39.750580, 35.255707, 44.411690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442120, 35.002815, 44.441639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186651, -0.112078, 0.976012,
		-0.608673, 0.766631, 0.204437,
		-0.771154, -0.632231, 0.074874,
		39.210773, 34.813145, 44.464100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358845, 35.486305, 44.949268>,  <39.750580, 35.255707, 44.411690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358845, 35.486305, 44.949268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228966, 35.108154, 44.937698>,  <39.151039, 34.881264, 44.930756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228966, 35.108154, 44.937698>,  <39.358845, 35.486305, 44.949268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228966, 35.108154, 44.937698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265114, -0.120327, 0.956680,
		-0.907901, 0.302967, 0.289702,
		-0.324701, -0.945374, -0.028925,
		39.131554, 34.824543, 44.929020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936138, 35.391827, 45.617916>,  <39.358845, 35.486305, 44.949268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936138, 35.391827, 45.617916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046795, 35.021931, 45.513355>,  <39.113190, 34.799995, 45.450619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046795, 35.021931, 45.513355>,  <38.936138, 35.391827, 45.617916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046795, 35.021931, 45.513355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229568, -0.200547, 0.952407,
		-0.933150, -0.323483, 0.156811,
		0.276640, -0.924738, -0.261402,
		39.129787, 34.744511, 45.434937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661476, 34.995693, 46.135300>,  <38.936138, 35.391827, 45.617916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661476, 34.995693, 46.135300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926384, 34.746929, 45.968147>,  <39.085327, 34.597672, 45.867855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926384, 34.746929, 45.968147>,  <38.661476, 34.995693, 46.135300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926384, 34.746929, 45.968147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155301, -0.431673, 0.888561,
		-0.732996, -0.653363, -0.189299,
		0.662268, -0.621913, -0.417882,
		39.125065, 34.560356, 45.842781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569263, 34.400227, 46.417881>,  <38.661476, 34.995693, 46.135300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569263, 34.400227, 46.417881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930813, 34.299942, 46.279224>,  <39.147743, 34.239769, 46.196030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930813, 34.299942, 46.279224>,  <38.569263, 34.400227, 46.417881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930813, 34.299942, 46.279224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216436, -0.430935, 0.876042,
		-0.369015, -0.866855, -0.335247,
		0.903871, -0.250713, -0.346640,
		39.201973, 34.224728, 46.175232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672203, 33.670437, 46.505104>,  <38.569263, 34.400227, 46.417881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672203, 33.670437, 46.505104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025978, 33.857086, 46.503071>,  <39.238243, 33.969078, 46.501850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025978, 33.857086, 46.503071>,  <38.672203, 33.670437, 46.505104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025978, 33.857086, 46.503071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184133, -0.338956, 0.922607,
		0.428790, -0.816926, -0.385708,
		0.884440, 0.466626, -0.005082,
		39.291309, 33.997074, 46.501545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104565, 33.132969, 46.629822>,  <38.672203, 33.670437, 46.505104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104565, 33.132969, 46.629822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271595, 33.479546, 46.739296>,  <39.371815, 33.687492, 46.804981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271595, 33.479546, 46.739296>,  <39.104565, 33.132969, 46.629822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271595, 33.479546, 46.739296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284344, -0.410678, 0.866309,
		0.863006, -0.283928, -0.417857,
		0.417574, 0.866446, 0.273684,
		39.396866, 33.739479, 46.821400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671482, 32.963448, 46.979824>,  <39.104565, 33.132969, 46.629822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671482, 32.963448, 46.979824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646812, 33.345215, 47.096642>,  <39.632011, 33.574276, 47.166733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646812, 33.345215, 47.096642>,  <39.671482, 32.963448, 46.979824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646812, 33.345215, 47.096642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204886, -0.274268, 0.939574,
		0.976841, 0.117780, -0.178632,
		-0.061670, 0.954414, 0.292047,
		39.628311, 33.631538, 47.184258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300808, 33.158592, 47.418770>,  <39.671482, 32.963448, 46.979824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300808, 33.158592, 47.418770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.056393, 33.460373, 47.514633>,  <39.909744, 33.641441, 47.572151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.056393, 33.460373, 47.514633>,  <40.300808, 33.158592, 47.418770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056393, 33.460373, 47.514633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173541, -0.167717, 0.970440,
		0.772347, 0.634563, -0.028448,
		-0.611035, 0.754454, 0.239659,
		39.873081, 33.686710, 47.586533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656242, 33.686714, 47.983234>,  <40.300808, 33.158592, 47.418770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656242, 33.686714, 47.983234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257015, 33.707554, 47.996811>,  <40.017479, 33.720058, 48.004955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257015, 33.707554, 47.996811>,  <40.656242, 33.686714, 47.983234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257015, 33.707554, 47.996811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017523, -0.288038, 0.957459,
		0.059662, 0.956201, 0.286568,
		-0.998065, 0.052102, 0.033941,
		39.957596, 33.723183, 48.006992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506893, 33.944954, 48.746204>,  <40.656242, 33.686714, 47.983234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506893, 33.944954, 48.746204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148422, 33.837494, 48.604958>,  <39.933338, 33.773018, 48.520210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.148422, 33.837494, 48.604958>,  <40.506893, 33.944954, 48.746204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148422, 33.837494, 48.604958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283069, -0.266661, 0.921284,
		-0.341663, 0.925592, 0.162931,
		-0.896180, -0.268648, -0.353115,
		39.879570, 33.756901, 48.499023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063717, 34.356846, 49.054897>,  <40.506893, 33.944954, 48.746204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063717, 34.356846, 49.054897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885002, 34.013763, 48.953136>,  <39.777775, 33.807915, 48.892078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885002, 34.013763, 48.953136>,  <40.063717, 34.356846, 49.054897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885002, 34.013763, 48.953136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179254, -0.192772, 0.964731,
		-0.876500, 0.476630, -0.067620,
		-0.446784, -0.857708, -0.254403,
		39.750965, 33.756451, 48.876816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647083, 34.261353, 49.640839>,  <40.063717, 34.356846, 49.054897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647083, 34.261353, 49.640839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598694, 33.924076, 49.431313>,  <39.569660, 33.721710, 49.305595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.598694, 33.924076, 49.431313>,  <39.647083, 34.261353, 49.640839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598694, 33.924076, 49.431313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016497, -0.529331, 0.848255,
		-0.992518, 0.093979, 0.077947,
		-0.120978, -0.843195, -0.523820,
		39.562401, 33.671116, 49.274166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955505, 33.971458, 49.681938>,  <39.647083, 34.261353, 49.640839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955505, 33.971458, 49.681938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221169, 33.685753, 49.593647>,  <39.380566, 33.514328, 49.540672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221169, 33.685753, 49.593647>,  <38.955505, 33.971458, 49.681938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221169, 33.685753, 49.593647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235676, -0.480231, 0.844887,
		-0.709476, -0.509115, -0.487284,
		0.664154, -0.714268, -0.220726,
		39.420414, 33.471474, 49.527428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587227, 33.335876, 49.692513>,  <38.955505, 33.971458, 49.681938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587227, 33.335876, 49.692513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.982639, 33.337269, 49.752895>,  <39.219887, 33.338104, 49.789127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.982639, 33.337269, 49.752895>,  <38.587227, 33.335876, 49.692513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982639, 33.337269, 49.752895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132921, -0.454297, 0.880878,
		0.071647, -0.890844, -0.448625,
		0.988533, 0.003481, 0.150961,
		39.279198, 33.338314, 49.798183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694893, 32.836445, 50.108677>,  <38.587227, 33.335876, 49.692513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694893, 32.836445, 50.108677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997063, 33.094326, 50.155499>,  <39.178364, 33.249054, 50.183594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997063, 33.094326, 50.155499>,  <38.694893, 32.836445, 50.108677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997063, 33.094326, 50.155499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032880, -0.141124, 0.989446,
		0.654414, -0.751297, -0.085410,
		0.755421, 0.644699, 0.117056,
		39.223690, 33.287735, 50.190617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389229, 32.188320, 50.278606>,  <38.694893, 32.836445, 50.108677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389229, 32.188320, 50.278606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009014, 32.097790, 50.363693>,  <37.780884, 32.043472, 50.414745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009014, 32.097790, 50.363693>,  <38.389229, 32.188320, 50.278606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009014, 32.097790, 50.363693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204095, -0.061110, -0.977042,
		0.234134, -0.972131, 0.011894,
		-0.950540, -0.226331, 0.212715,
		37.723850, 32.029892, 50.427509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348854, 31.730602, 49.842724>,  <38.389229, 32.188320, 50.278606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348854, 31.730602, 49.842724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970455, 31.819670, 49.936962>,  <37.743416, 31.873110, 49.993504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.970455, 31.819670, 49.936962>,  <38.348854, 31.730602, 49.842724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970455, 31.819670, 49.936962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226151, 0.067368, -0.971760,
		-0.232251, -0.972564, -0.013373,
		-0.946000, 0.222667, 0.235593,
		37.686657, 31.886469, 50.007641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905056, 31.229160, 49.506546>,  <38.348854, 31.730602, 49.842724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905056, 31.229160, 49.506546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694981, 31.561823, 49.578690>,  <37.568935, 31.761421, 49.621975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.694981, 31.561823, 49.578690>,  <37.905056, 31.229160, 49.506546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694981, 31.561823, 49.578690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242143, 0.057135, -0.968557,
		-0.815811, -0.552344, 0.171373,
		-0.525185, 0.831656, 0.180357,
		37.537426, 31.811319, 49.632797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219387, 31.124592, 49.179642>,  <37.905056, 31.229160, 49.506546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219387, 31.124592, 49.179642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223400, 31.523146, 49.213390>,  <37.225807, 31.762278, 49.233639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223400, 31.523146, 49.213390>,  <37.219387, 31.124592, 49.179642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223400, 31.523146, 49.213390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261136, 0.084061, -0.961635,
		-0.965250, -0.012383, 0.261035,
		0.010035, 0.996384, 0.084373,
		37.226410, 31.822062, 49.238701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618538, 31.286694, 48.817959>,  <37.219387, 31.124592, 49.179642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618538, 31.286694, 48.817959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825287, 31.627867, 48.847221>,  <36.949337, 31.832571, 48.864777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825287, 31.627867, 48.847221>,  <36.618538, 31.286694, 48.817959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825287, 31.627867, 48.847221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121185, 0.157495, -0.980056,
		-0.847442, 0.497699, 0.184767,
		0.516872, 0.852931, 0.073154,
		36.980347, 31.883745, 48.869167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273129, 31.751177, 48.356701>,  <36.618538, 31.286694, 48.817959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273129, 31.751177, 48.356701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631767, 31.917385, 48.417973>,  <36.846951, 32.017109, 48.454735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631767, 31.917385, 48.417973>,  <36.273129, 31.751177, 48.356701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631767, 31.917385, 48.417973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044018, 0.427795, -0.902803,
		-0.440662, 0.802705, 0.401849,
		0.896593, 0.415520, 0.153179,
		36.900745, 32.042042, 48.463924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292500, 32.464909, 48.140411>,  <36.273129, 31.751177, 48.356701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292500, 32.464909, 48.140411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688187, 32.407318, 48.151138>,  <36.925598, 32.372765, 48.157574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.688187, 32.407318, 48.151138>,  <36.292500, 32.464909, 48.140411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688187, 32.407318, 48.151138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081821, 0.391443, -0.916558,
		0.121462, 0.908870, 0.399003,
		0.989218, -0.143974, 0.026819,
		36.984951, 32.364124, 48.159184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654793, 33.112591, 48.029751>,  <36.292500, 32.464909, 48.140411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654793, 33.112591, 48.029751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917694, 32.830338, 47.923847>,  <37.075436, 32.660988, 47.860306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917694, 32.830338, 47.923847>,  <36.654793, 33.112591, 48.029751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917694, 32.830338, 47.923847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064530, 0.402694, -0.913057,
		0.750898, 0.583029, 0.310208,
		0.657258, -0.705631, -0.264759,
		37.114872, 32.618649, 47.844418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127903, 33.438717, 47.694214>,  <36.654793, 33.112591, 48.029751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127903, 33.438717, 47.694214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179024, 33.062691, 47.567760>,  <37.209694, 32.837074, 47.491886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179024, 33.062691, 47.567760>,  <37.127903, 33.438717, 47.694214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179024, 33.062691, 47.567760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222232, 0.337787, -0.914611,
		0.966582, 0.046630, 0.252081,
		0.127798, -0.940067, -0.316136,
		37.217361, 32.780670, 47.472919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629379, 33.490292, 47.234909>,  <37.127903, 33.438717, 47.694214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629379, 33.490292, 47.234909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463993, 33.141453, 47.130222>,  <37.364761, 32.932152, 47.067410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463993, 33.141453, 47.130222>,  <37.629379, 33.490292, 47.234909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463993, 33.141453, 47.130222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147670, 0.347862, -0.925843,
		0.898465, -0.344158, -0.272611,
		-0.413467, -0.872094, -0.261720,
		37.339954, 32.879826, 47.051708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052177, 33.218838, 46.673836>,  <37.629379, 33.490292, 47.234909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052177, 33.218838, 46.673836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.699841, 33.029793, 46.662792>,  <37.488438, 32.916367, 46.656166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.699841, 33.029793, 46.662792>,  <38.052177, 33.218838, 46.673836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699841, 33.029793, 46.662792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032611, -0.002394, -0.999465,
		0.472292, -0.881268, 0.017521,
		-0.880838, -0.472611, -0.027609,
		37.435589, 32.888008, 46.654510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086674, 32.728584, 46.099575>,  <38.052177, 33.218838, 46.673836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086674, 32.728584, 46.099575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696091, 32.785427, 46.164490>,  <37.461742, 32.819534, 46.203438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696091, 32.785427, 46.164490>,  <38.086674, 32.728584, 46.099575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696091, 32.785427, 46.164490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134237, 0.188626, -0.972831,
		-0.168861, -0.971712, -0.165109,
		-0.976456, 0.142109, 0.162291,
		37.403152, 32.828060, 46.213177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695431, 32.411446, 45.468685>,  <38.086674, 32.728584, 46.099575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695431, 32.411446, 45.468685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432041, 32.640163, 45.664421>,  <37.274006, 32.777393, 45.781864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432041, 32.640163, 45.664421>,  <37.695431, 32.411446, 45.468685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432041, 32.640163, 45.664421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386519, 0.300964, -0.871793,
		-0.645765, -0.763195, 0.022833,
		-0.658477, 0.571799, 0.489341,
		37.234497, 32.811703, 45.811222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140873, 32.610203, 44.953918>,  <37.695431, 32.411446, 45.468685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140873, 32.610203, 44.953918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045551, 32.864521, 45.247578>,  <36.988358, 33.017113, 45.423775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045551, 32.864521, 45.247578>,  <37.140873, 32.610203, 44.953918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045551, 32.864521, 45.247578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513845, 0.558915, -0.650828,
		-0.824121, -0.532334, 0.193509,
		-0.238303, 0.635794, 0.734151,
		36.974060, 33.055260, 45.467823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382557, 32.744583, 44.935436>,  <37.140873, 32.610203, 44.953918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382557, 32.744583, 44.935436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553013, 33.068245, 45.097260>,  <36.655285, 33.262444, 45.194355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553013, 33.068245, 45.097260>,  <36.382557, 32.744583, 44.935436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553013, 33.068245, 45.097260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281752, 0.543663, -0.790599,
		-0.859665, 0.222917, 0.459657,
		0.426137, 0.809159, 0.404561,
		36.680855, 33.310993, 45.218628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890553, 33.285080, 45.009132>,  <36.382557, 32.744583, 44.935436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890553, 33.285080, 45.009132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241295, 33.473949, 45.045277>,  <36.451740, 33.587273, 45.066963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241295, 33.473949, 45.045277>,  <35.890553, 33.285080, 45.009132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241295, 33.473949, 45.045277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286129, 0.663627, -0.691179,
		-0.386324, 0.580213, 0.717012,
		0.876860, 0.472178, 0.090359,
		36.504353, 33.615604, 45.072384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759277, 34.059261, 45.142647>,  <35.890553, 33.285080, 45.009132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759277, 34.059261, 45.142647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122826, 34.003136, 44.985538>,  <36.340954, 33.969460, 44.891273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122826, 34.003136, 44.985538>,  <35.759277, 34.059261, 45.142647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122826, 34.003136, 44.985538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206715, 0.666373, -0.716391,
		0.362256, 0.732296, 0.576639,
		0.908867, -0.140317, -0.392775,
		36.395485, 33.961040, 44.867706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053600, 34.743889, 45.088036>,  <35.759277, 34.059261, 45.142647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053600, 34.743889, 45.088036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264103, 34.507473, 44.843502>,  <36.390404, 34.365623, 44.696781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264103, 34.507473, 44.843502>,  <36.053600, 34.743889, 45.088036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264103, 34.507473, 44.843502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311913, 0.534651, -0.785404,
		0.791053, 0.604007, 0.097011,
		0.526257, -0.591037, -0.611335,
		36.421982, 34.330162, 44.660103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403015, 35.144363, 44.716496>,  <36.053600, 34.743889, 45.088036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403015, 35.144363, 44.716496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408936, 34.815918, 44.488270>,  <36.412487, 34.618851, 44.351334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.408936, 34.815918, 44.488270>,  <36.403015, 35.144363, 44.716496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408936, 34.815918, 44.488270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100075, 0.566546, -0.817930,
		0.994870, 0.069208, -0.073786,
		0.014804, -0.821118, -0.570566,
		36.413376, 34.569584, 44.317101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840630, 35.456478, 44.235523>,  <36.403015, 35.144363, 44.716496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840630, 35.456478, 44.235523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647472, 35.149429, 44.066963>,  <36.531578, 34.965202, 43.965828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647472, 35.149429, 44.066963>,  <36.840630, 35.456478, 44.235523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647472, 35.149429, 44.066963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174446, 0.387248, -0.905321,
		0.858128, -0.510684, -0.053091,
		-0.482893, -0.767620, -0.421396,
		36.502605, 34.919144, 43.940544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.440910, 27.640316, 35.505249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047024, 27.649948, 35.436253>,  <42.810692, 27.655727, 35.394855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.047024, 27.649948, 35.436253>,  <43.440910, 27.640316, 35.505249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047024, 27.649948, 35.436253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103966, 0.875864, -0.471226,
		0.139734, -0.481957, -0.864981,
		-0.984716, 0.024082, -0.172495,
		42.751610, 27.657173, 35.384502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490803, 27.995087, 34.890095>,  <43.440910, 27.640316, 35.505249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490803, 27.995087, 34.890095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105633, 28.014587, 34.996220>,  <42.874531, 28.026287, 35.059895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.105633, 28.014587, 34.996220>,  <43.490803, 27.995087, 34.890095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105633, 28.014587, 34.996220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023483, 0.964653, -0.262477,
		-0.268733, -0.258977, -0.927747,
		-0.962929, 0.048750, 0.265315,
		42.816753, 28.029213, 35.075813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256397, 28.411322, 34.368649>,  <43.490803, 27.995087, 34.890095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256397, 28.411322, 34.368649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006710, 28.420322, 34.681019>,  <42.856895, 28.425722, 34.868443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006710, 28.420322, 34.681019>,  <43.256397, 28.411322, 34.368649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006710, 28.420322, 34.681019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167428, 0.972508, -0.161852,
		-0.763097, -0.231780, -0.603292,
		-0.624220, 0.022501, 0.780924,
		42.819443, 28.427073, 34.915295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545128, 28.741737, 34.091690>,  <43.256397, 28.411322, 34.368649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545128, 28.741737, 34.091690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585831, 28.791895, 34.486439>,  <42.610252, 28.821989, 34.723289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585831, 28.791895, 34.486439>,  <42.545128, 28.741737, 34.091690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585831, 28.791895, 34.486439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070686, 0.990428, -0.118557,
		-0.992295, -0.057694, 0.109645,
		0.101756, 0.125393, 0.986875,
		42.616356, 28.829514, 34.782501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902531, 29.192947, 34.274364>,  <42.545128, 28.741737, 34.091690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902531, 29.192947, 34.274364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.165020, 29.214664, 34.575409>,  <42.322514, 29.227695, 34.756035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.165020, 29.214664, 34.575409>,  <41.902531, 29.192947, 34.274364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165020, 29.214664, 34.575409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113676, 0.993138, 0.027473,
		-0.745956, -0.103582, 0.657891,
		0.656222, 0.054293, 0.752612,
		42.361885, 29.230953, 34.801193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636951, 29.789665, 34.701839>,  <41.902531, 29.192947, 34.274364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636951, 29.789665, 34.701839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015083, 29.728127, 34.816864>,  <42.241962, 29.691204, 34.885880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015083, 29.728127, 34.816864>,  <41.636951, 29.789665, 34.701839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015083, 29.728127, 34.816864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067790, 0.955176, 0.288172,
		-0.319004, -0.252923, 0.913382,
		0.945326, -0.153847, 0.287559,
		42.298679, 29.681973, 34.903133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796318, 30.470144, 35.138393>,  <41.636951, 29.789665, 34.701839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796318, 30.470144, 35.138393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.148098, 30.333506, 35.005806>,  <42.359165, 30.251522, 34.926254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.148098, 30.333506, 35.005806>,  <41.796318, 30.470144, 35.138393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148098, 30.333506, 35.005806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323722, 0.939783, -0.109600,
		0.348949, -0.010916, 0.937078,
		0.879454, -0.341598, -0.331470,
		42.411934, 30.231026, 34.906364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358463, 30.713966, 35.564880>,  <41.796318, 30.470144, 35.138393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358463, 30.713966, 35.564880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489014, 30.653923, 35.191582>,  <42.567345, 30.617897, 34.967602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.489014, 30.653923, 35.191582>,  <42.358463, 30.713966, 35.564880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489014, 30.653923, 35.191582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333043, 0.942259, -0.035085,
		0.884624, -0.299359, 0.357526,
		0.326379, -0.150108, -0.933244,
		42.586926, 30.608891, 34.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751560, 31.216726, 35.465553>,  <42.358463, 30.713966, 35.564880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751560, 31.216726, 35.465553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776615, 31.114285, 35.079708>,  <42.791649, 31.052818, 34.848202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.776615, 31.114285, 35.079708>,  <42.751560, 31.216726, 35.465553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776615, 31.114285, 35.079708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504357, 0.842143, -0.190839,
		0.861220, -0.474558, 0.181919,
		0.062638, -0.256106, -0.964617,
		42.795406, 31.037453, 34.790321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377132, 31.489573, 35.197365>,  <42.751560, 31.216726, 35.465553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377132, 31.489573, 35.197365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168056, 31.423386, 34.862843>,  <43.042610, 31.383675, 34.662128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168056, 31.423386, 34.862843>,  <43.377132, 31.489573, 35.197365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168056, 31.423386, 34.862843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332028, 0.864015, -0.378465,
		0.785207, -0.475499, -0.396674,
		-0.522691, -0.165466, -0.836310,
		43.011250, 31.373745, 34.611950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879532, 31.582561, 34.619953>,  <43.377132, 31.489573, 35.197365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879532, 31.582561, 34.619953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511219, 31.642805, 34.476025>,  <43.290230, 31.678951, 34.389668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.511219, 31.642805, 34.476025>,  <43.879532, 31.582561, 34.619953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511219, 31.642805, 34.476025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271986, 0.909116, -0.315488,
		0.279608, -0.388364, -0.878062,
		-0.920784, 0.150608, -0.359825,
		43.234985, 31.687988, 34.368076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957184, 31.984388, 34.085068>,  <43.879532, 31.582561, 34.619953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957184, 31.984388, 34.085068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562950, 32.045628, 34.113865>,  <43.326408, 32.082371, 34.131142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562950, 32.045628, 34.113865>,  <43.957184, 31.984388, 34.085068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562950, 32.045628, 34.113865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115379, 0.919482, -0.375819,
		-0.123735, -0.362095, -0.923892,
		-0.985585, 0.153100, 0.071994,
		43.267273, 32.091557, 34.135464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740685, 32.241699, 33.405289>,  <43.957184, 31.984388, 34.085068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740685, 32.241699, 33.405289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450802, 32.349491, 33.658958>,  <43.276871, 32.414165, 33.811161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.450802, 32.349491, 33.658958>,  <43.740685, 32.241699, 33.405289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450802, 32.349491, 33.658958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212224, 0.962906, -0.166653,
		-0.655560, 0.013812, -0.755017,
		-0.724708, 0.269484, 0.634174,
		43.233391, 32.430336, 33.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345623, 32.795685, 33.060162>,  <43.740685, 32.241699, 33.405289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345623, 32.795685, 33.060162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275692, 32.836277, 33.451904>,  <43.233734, 32.860634, 33.686951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.275692, 32.836277, 33.451904>,  <43.345623, 32.795685, 33.060162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275692, 32.836277, 33.451904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040590, 0.994571, -0.095815,
		-0.983763, 0.023001, -0.177995,
		-0.174825, 0.101484, 0.979356,
		43.223244, 32.866722, 33.745712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793610, 33.314789, 33.062271>,  <43.345623, 32.795685, 33.060162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793610, 33.314789, 33.062271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977776, 33.309608, 33.417316>,  <43.088276, 33.306499, 33.630344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977776, 33.309608, 33.417316>,  <42.793610, 33.314789, 33.062271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977776, 33.309608, 33.417316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072401, 0.997110, -0.023004,
		-0.884746, 0.074855, 0.460023,
		0.460415, -0.012954, 0.887609,
		43.115902, 33.305721, 33.683598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396965, 33.761932, 33.502151>,  <42.793610, 33.314789, 33.062271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396965, 33.761932, 33.502151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769066, 33.735203, 33.646469>,  <42.992325, 33.719166, 33.733059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769066, 33.735203, 33.646469>,  <42.396965, 33.761932, 33.502151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769066, 33.735203, 33.646469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079412, 0.996638, -0.020149,
		-0.358235, 0.047395, 0.932428,
		0.930248, -0.066828, 0.360795,
		43.048141, 33.715153, 33.754707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446552, 34.290459, 33.909111>,  <42.396965, 33.761932, 33.502151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446552, 34.290459, 33.909111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836296, 34.215084, 33.859943>,  <43.070145, 34.169857, 33.830441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836296, 34.215084, 33.859943>,  <42.446552, 34.290459, 33.909111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836296, 34.215084, 33.859943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212488, 0.950313, 0.227496,
		0.073944, -0.247783, 0.965990,
		0.974362, -0.188439, -0.122921,
		43.128605, 34.158554, 33.823067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857452, 34.363438, 34.580322>,  <42.446552, 34.290459, 33.909111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857452, 34.363438, 34.580322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134983, 34.457203, 34.307953>,  <43.301502, 34.513462, 34.144531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134983, 34.457203, 34.307953>,  <42.857452, 34.363438, 34.580322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134983, 34.457203, 34.307953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094950, 0.907506, 0.409167,
		0.713851, -0.348546, 0.607397,
		0.693830, 0.234412, -0.680919,
		43.343132, 34.527527, 34.103676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343365, 34.790562, 34.941864>,  <42.857452, 34.363438, 34.580322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343365, 34.790562, 34.941864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.435593, 34.865360, 34.559898>,  <43.490929, 34.910240, 34.330719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.435593, 34.865360, 34.559898>,  <43.343365, 34.790562, 34.941864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435593, 34.865360, 34.559898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085854, 0.973623, 0.211394,
		0.969261, -0.130725, 0.208434,
		0.230570, 0.187001, -0.954918,
		43.504765, 34.921459, 34.273422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926899, 35.130268, 35.056816>,  <43.343365, 34.790562, 34.941864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926899, 35.130268, 35.056816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794926, 35.188419, 34.683720>,  <43.715740, 35.223309, 34.459862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794926, 35.188419, 34.683720>,  <43.926899, 35.130268, 35.056816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794926, 35.188419, 34.683720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085012, 0.988632, 0.124020,
		0.940168, -0.038376, -0.338542,
		-0.329934, 0.145380, -0.932742,
		43.695946, 35.232033, 34.403896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467773, 35.485966, 34.742157>,  <43.926899, 35.130268, 35.056816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467773, 35.485966, 34.742157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136536, 35.560612, 34.530712>,  <43.937794, 35.605400, 34.403847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136536, 35.560612, 34.530712>,  <44.467773, 35.485966, 34.742157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136536, 35.560612, 34.530712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122469, 0.980410, 0.154262,
		0.547042, 0.063005, -0.834730,
		-0.828098, 0.186617, -0.528610,
		43.888107, 35.616596, 34.372128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633396, 35.851273, 34.151340>,  <44.467773, 35.485966, 34.742157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633396, 35.851273, 34.151340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276508, 35.943718, 34.306534>,  <44.062374, 35.999187, 34.399651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.276508, 35.943718, 34.306534>,  <44.633396, 35.851273, 34.151340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276508, 35.943718, 34.306534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262487, 0.964497, 0.029082,
		-0.367487, 0.127787, -0.921208,
		-0.892219, 0.231118, 0.387982,
		44.008842, 36.013054, 34.422928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905945, 35.178169, 34.176189>,  <44.633396, 35.851273, 34.151340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905945, 35.178169, 34.176189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263565, 35.094444, 34.017773>,  <45.478138, 35.044209, 33.922722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.263565, 35.094444, 34.017773>,  <44.905945, 35.178169, 34.176189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263565, 35.094444, 34.017773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057304, -0.930293, 0.362313,
		-0.444276, -0.301233, -0.843728,
		0.894055, -0.209315, -0.396046,
		45.531780, 35.031651, 33.898960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800949, 34.496193, 33.926414>,  <44.905945, 35.178169, 34.176189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800949, 34.496193, 33.926414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193512, 34.559269, 33.970165>,  <45.429050, 34.597115, 33.996414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193512, 34.559269, 33.970165>,  <44.800949, 34.496193, 33.926414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193512, 34.559269, 33.970165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089607, -0.880516, 0.465469,
		0.169710, -0.447016, -0.878280,
		0.981412, 0.157695, 0.109377,
		45.487934, 34.606579, 34.002979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274487, 33.996758, 33.563225>,  <44.800949, 34.496193, 33.926414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274487, 33.996758, 33.563225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501457, 34.157276, 33.850834>,  <45.637638, 34.253586, 34.023399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501457, 34.157276, 33.850834>,  <45.274487, 33.996758, 33.563225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501457, 34.157276, 33.850834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147933, -0.908681, 0.390404,
		0.810029, -0.115157, -0.574970,
		0.567422, 0.401296, 0.719023,
		45.671684, 34.277664, 34.066540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824894, 33.650829, 33.545959>,  <45.274487, 33.996758, 33.563225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824894, 33.650829, 33.545959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856575, 33.791668, 33.919003>,  <45.875584, 33.876171, 34.142830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856575, 33.791668, 33.919003>,  <45.824894, 33.650829, 33.545959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856575, 33.791668, 33.919003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234442, -0.915884, 0.325872,
		0.968898, 0.192832, -0.155087,
		0.079203, 0.352096, 0.932607,
		45.880337, 33.897297, 34.198784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541786, 33.464008, 33.842369>,  <45.824894, 33.650829, 33.545959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541786, 33.464008, 33.842369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369511, 33.582787, 34.183270>,  <46.266144, 33.654053, 34.387810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.369511, 33.582787, 34.183270>,  <46.541786, 33.464008, 33.842369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369511, 33.582787, 34.183270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213861, -0.883843, 0.416034,
		0.876795, 0.361444, 0.317156,
		-0.430689, 0.296949, 0.852249,
		46.240303, 33.671871, 34.438946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021297, 33.338184, 34.405315>,  <46.541786, 33.464008, 33.842369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021297, 33.338184, 34.405315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.662640, 33.328136, 34.582130>,  <46.447445, 33.322109, 34.688221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.662640, 33.328136, 34.582130>,  <47.021297, 33.338184, 34.405315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662640, 33.328136, 34.582130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275717, -0.812854, 0.513078,
		0.346424, 0.581926, 0.735767,
		-0.896644, -0.025121, 0.442039,
		46.393646, 33.320599, 34.714741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.157269, 33.253048, 35.093117>,  <47.021297, 33.338184, 34.405315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.157269, 33.253048, 35.093117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802143, 33.111084, 34.975933>,  <46.589066, 33.025906, 34.905624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802143, 33.111084, 34.975933>,  <47.157269, 33.253048, 35.093117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802143, 33.111084, 34.975933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190888, -0.863247, 0.467297,
		-0.418741, 0.358952, 0.834152,
		-0.887816, -0.354906, -0.292957,
		46.535797, 33.004612, 34.888046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046894, 32.726448, 35.581268>,  <47.157269, 33.253048, 35.093117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046894, 32.726448, 35.581268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.735847, 32.655167, 35.340088>,  <46.549217, 32.612396, 35.195381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.735847, 32.655167, 35.340088>,  <47.046894, 32.726448, 35.581268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735847, 32.655167, 35.340088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021737, -0.950798, 0.309049,
		-0.628359, 0.253429, 0.735486,
		-0.777620, -0.178206, -0.602951,
		46.502560, 32.601704, 35.159203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562214, 32.430908, 36.038795>,  <47.046894, 32.726448, 35.581268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562214, 32.430908, 36.038795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.492451, 32.317371, 35.661644>,  <46.450592, 32.249249, 35.435352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.492451, 32.317371, 35.661644>,  <46.562214, 32.430908, 36.038795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492451, 32.317371, 35.661644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160022, -0.952992, 0.257292,
		-0.971585, -0.106008, 0.211626,
		-0.174403, -0.283846, -0.942876,
		46.440128, 32.232216, 35.378780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.205532, 31.851995, 36.221886>,  <46.562214, 32.430908, 36.038795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.205532, 31.851995, 36.221886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260647, 31.819006, 35.827076>,  <46.293716, 31.799213, 35.590191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.260647, 31.819006, 35.827076>,  <46.205532, 31.851995, 36.221886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260647, 31.819006, 35.827076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103248, -0.989902, 0.097125,
		-0.985066, -0.115291, -0.127880,
		0.137786, -0.082471, -0.987022,
		46.301983, 31.794264, 35.530968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652401, 31.408895, 35.847733>,  <46.205532, 31.851995, 36.221886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652401, 31.408895, 35.847733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977058, 31.413681, 35.614120>,  <46.171852, 31.416552, 35.473953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977058, 31.413681, 35.614120>,  <45.652401, 31.408895, 35.847733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977058, 31.413681, 35.614120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089443, -0.990546, 0.104010,
		-0.577264, -0.136657, -0.805041,
		0.811644, 0.011964, -0.584030,
		46.220551, 31.417271, 35.438911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596157, 30.911308, 35.322483>,  <45.652401, 31.408895, 35.847733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596157, 30.911308, 35.322483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.992294, 30.964054, 35.305344>,  <46.229977, 30.995701, 35.295059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.992294, 30.964054, 35.305344>,  <45.596157, 30.911308, 35.322483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992294, 30.964054, 35.305344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134828, -0.987965, 0.075804,
		-0.032334, -0.080849, -0.996202,
		0.990341, 0.131865, -0.042846,
		46.289398, 31.003614, 35.292488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815727, 30.505430, 34.852261>,  <45.596157, 30.911308, 35.322483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815727, 30.505430, 34.852261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.128193, 30.553154, 35.097389>,  <46.315670, 30.581789, 35.244465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.128193, 30.553154, 35.097389>,  <45.815727, 30.505430, 34.852261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128193, 30.553154, 35.097389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065965, -0.991849, 0.109017,
		0.620834, -0.044735, -0.782665,
		0.781162, 0.119310, 0.612822,
		46.362541, 30.588947, 35.281235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.339664, 30.015419, 34.598904>,  <45.815727, 30.505430, 34.852261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.339664, 30.015419, 34.598904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.397804, 30.105803, 34.984196>,  <46.432686, 30.160032, 35.215370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.397804, 30.105803, 34.984196>,  <46.339664, 30.015419, 34.598904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397804, 30.105803, 34.984196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026156, -0.974109, 0.224563,
		0.989035, -0.007445, -0.147495,
		0.145348, 0.225958, 0.963233,
		46.441410, 30.173590, 35.273167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667065, 29.353472, 34.899616>,  <46.339664, 30.015419, 34.598904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667065, 29.353472, 34.899616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603882, 29.562683, 35.234638>,  <46.565971, 29.688210, 35.435650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603882, 29.562683, 35.234638>,  <46.667065, 29.353472, 34.899616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603882, 29.562683, 35.234638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046553, -0.851201, 0.522772,
		0.986349, 0.043583, 0.158799,
		-0.157954, 0.523028, 0.837551,
		46.556496, 29.719591, 35.485905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.137268, 29.151283, 35.356983>,  <46.667065, 29.353472, 34.899616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.137268, 29.151283, 35.356983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829521, 29.311441, 35.556087>,  <46.644875, 29.407536, 35.675549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.829521, 29.311441, 35.556087>,  <47.137268, 29.151283, 35.356983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829521, 29.311441, 35.556087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264824, -0.908994, 0.321866,
		0.581334, 0.115814, 0.805381,
		-0.769363, 0.400395, 0.497759,
		46.598713, 29.431561, 35.705414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142014, 28.878109, 36.125023>,  <47.137268, 29.151283, 35.356983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142014, 28.878109, 36.125023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.768192, 29.008066, 36.066994>,  <46.543900, 29.086040, 36.032177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.768192, 29.008066, 36.066994>,  <47.142014, 28.878109, 36.125023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768192, 29.008066, 36.066994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353746, -0.804507, 0.477108,
		0.038295, 0.497205, 0.866787,
		-0.934557, 0.324893, -0.145076,
		46.487823, 29.105534, 36.023472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.846699, 28.909824, 36.851051>,  <47.142014, 28.878109, 36.125023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.846699, 28.909824, 36.851051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562328, 28.874594, 36.571960>,  <46.391705, 28.853455, 36.404507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562328, 28.874594, 36.571960>,  <46.846699, 28.909824, 36.851051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562328, 28.874594, 36.571960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372752, -0.794110, 0.480047,
		-0.596353, 0.601358, 0.531725,
		-0.710928, -0.088076, -0.697728,
		46.349049, 28.848171, 36.362640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233219, 28.754957, 37.270714>,  <46.846699, 28.909824, 36.851051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233219, 28.754957, 37.270714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093334, 28.685614, 36.902443>,  <46.009403, 28.644009, 36.681480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.093334, 28.685614, 36.902443>,  <46.233219, 28.754957, 37.270714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093334, 28.685614, 36.902443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467046, -0.819645, 0.331739,
		-0.812137, 0.546013, 0.205678,
		-0.349716, -0.173357, -0.920677,
		45.988419, 28.633606, 36.626240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444126, 28.769735, 37.264229>,  <46.233219, 28.754957, 37.270714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444126, 28.769735, 37.264229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614803, 28.537071, 36.987217>,  <45.717209, 28.397472, 36.821011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614803, 28.537071, 36.987217>,  <45.444126, 28.769735, 37.264229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614803, 28.537071, 36.987217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568551, -0.768027, 0.294760,
		-0.703335, 0.267968, -0.658417,
		0.426696, -0.581659, -0.692534,
		45.742813, 28.362574, 36.779457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.022438, 37.248169, 39.068417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631847, 37.162052, 39.063812>,  <38.397491, 37.110382, 39.061050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631847, 37.162052, 39.063812>,  <39.022438, 37.248169, 39.068417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631847, 37.162052, 39.063812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093566, -0.375075, -0.922261,
		0.194242, -0.901647, 0.386398,
		-0.976481, -0.215295, -0.011508,
		38.338902, 37.097466, 39.060360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963947, 36.673588, 38.547611>,  <39.022438, 37.248169, 39.068417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963947, 36.673588, 38.547611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588482, 36.791531, 38.619129>,  <38.363201, 36.862297, 38.662041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588482, 36.791531, 38.619129>,  <38.963947, 36.673588, 38.547611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588482, 36.791531, 38.619129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242864, -0.197199, -0.949805,
		-0.244805, -0.934970, 0.256715,
		-0.938663, 0.294864, 0.178795,
		38.306881, 36.879986, 38.672768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587269, 36.308800, 38.061485>,  <38.963947, 36.673588, 38.547611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587269, 36.308800, 38.061485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337009, 36.600506, 38.172287>,  <38.186852, 36.775532, 38.238766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337009, 36.600506, 38.172287>,  <38.587269, 36.308800, 38.061485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337009, 36.600506, 38.172287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402783, 0.002104, -0.915293,
		-0.668077, -0.684225, 0.292420,
		-0.625652, 0.729268, 0.277000,
		38.149315, 36.819286, 38.255386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999763, 36.058308, 37.857311>,  <38.587269, 36.308800, 38.061485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999763, 36.058308, 37.857311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933620, 36.451859, 37.884541>,  <37.893936, 36.687988, 37.900879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933620, 36.451859, 37.884541>,  <37.999763, 36.058308, 37.857311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933620, 36.451859, 37.884541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408856, -0.005572, -0.912582,
		-0.897493, -0.178733, 0.403187,
		-0.165355, 0.983882, 0.068075,
		37.884014, 36.747025, 37.904964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322807, 36.130417, 37.621689>,  <37.999763, 36.058308, 37.857311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322807, 36.130417, 37.621689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493542, 36.491131, 37.594589>,  <37.595982, 36.707561, 37.578331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493542, 36.491131, 37.594589>,  <37.322807, 36.130417, 37.621689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493542, 36.491131, 37.594589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411333, 0.126885, -0.902610,
		-0.805367, 0.413132, 0.425095,
		0.426836, 0.901788, -0.067746,
		37.621593, 36.761669, 37.574265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770458, 36.527290, 37.362549>,  <37.322807, 36.130417, 37.621689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770458, 36.527290, 37.362549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120865, 36.707867, 37.294666>,  <37.331108, 36.816212, 37.253937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120865, 36.707867, 37.294666>,  <36.770458, 36.527290, 37.362549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120865, 36.707867, 37.294666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221113, 0.063223, -0.973197,
		-0.428608, 0.890060, 0.155203,
		0.876016, 0.451437, -0.169706,
		37.383671, 36.843296, 37.243755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704731, 37.160179, 36.944733>,  <36.770458, 36.527290, 37.362549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704731, 37.160179, 36.944733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082024, 37.050865, 36.869236>,  <37.308399, 36.985275, 36.823936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082024, 37.050865, 36.869236>,  <36.704731, 37.160179, 36.944733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082024, 37.050865, 36.869236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155017, 0.140336, -0.977893,
		0.293731, 0.951641, 0.090006,
		0.943235, -0.273285, -0.188742,
		37.364994, 36.968880, 36.812614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875275, 37.570881, 36.449989>,  <36.704731, 37.160179, 36.944733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875275, 37.570881, 36.449989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137897, 37.270458, 36.422150>,  <37.295471, 37.090202, 36.405445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137897, 37.270458, 36.422150>,  <36.875275, 37.570881, 36.449989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137897, 37.270458, 36.422150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021345, 0.110733, -0.993621,
		0.753975, 0.650882, 0.088734,
		0.656556, -0.751060, -0.069597,
		37.334866, 37.045139, 36.401272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344193, 37.851387, 35.940678>,  <36.875275, 37.570881, 36.449989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344193, 37.851387, 35.940678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379719, 37.453175, 35.953487>,  <37.401035, 37.214245, 35.961174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379719, 37.453175, 35.953487>,  <37.344193, 37.851387, 35.940678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379719, 37.453175, 35.953487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107902, -0.022342, -0.993911,
		0.990187, 0.091729, 0.105435,
		0.088815, -0.995534, 0.032021,
		37.406364, 37.154514, 35.963093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676113, 37.700531, 35.313427>,  <37.344193, 37.851387, 35.940678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676113, 37.700531, 35.313427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556988, 37.333248, 35.417885>,  <37.485512, 37.112877, 35.480560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556988, 37.333248, 35.417885>,  <37.676113, 37.700531, 35.313427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556988, 37.333248, 35.417885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116072, -0.236696, -0.964625,
		0.947542, -0.317589, -0.036088,
		-0.297812, -0.918212, 0.261143,
		37.467644, 37.057785, 35.496227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059238, 37.305504, 34.935417>,  <37.676113, 37.700531, 35.313427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059238, 37.305504, 34.935417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741398, 37.087811, 35.043056>,  <37.550694, 36.957195, 35.107639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741398, 37.087811, 35.043056>,  <38.059238, 37.305504, 34.935417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741398, 37.087811, 35.043056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061327, -0.369010, -0.927400,
		0.604024, -0.753418, 0.259840,
		-0.794603, -0.544237, 0.269095,
		37.503017, 36.924541, 35.123783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251072, 36.578194, 34.964520>,  <38.059238, 37.305504, 34.935417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251072, 36.578194, 34.964520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855110, 36.589863, 34.909031>,  <37.617535, 36.596863, 34.875736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855110, 36.589863, 34.909031>,  <38.251072, 36.578194, 34.964520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855110, 36.589863, 34.909031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081005, -0.686667, -0.722445,
		-0.116333, -0.726386, 0.677369,
		-0.989901, 0.029174, -0.138723,
		37.558140, 36.598614, 34.867413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640099, 37.162506, 34.550159>,  <38.251072, 36.578194, 34.964520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640099, 37.162506, 34.550159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020233, 37.081432, 34.644623>,  <39.248314, 37.032787, 34.701302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020233, 37.081432, 34.644623>,  <38.640099, 37.162506, 34.550159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020233, 37.081432, 34.644623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082304, -0.895504, -0.437377,
		0.300130, 0.396221, -0.867716,
		0.950341, -0.202687, 0.236157,
		39.305336, 37.020626, 34.715469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947205, 37.030128, 33.931004>,  <38.640099, 37.162506, 34.550159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947205, 37.030128, 33.931004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067722, 36.848404, 34.266342>,  <39.140034, 36.739368, 34.467545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067722, 36.848404, 34.266342>,  <38.947205, 37.030128, 33.931004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067722, 36.848404, 34.266342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302563, -0.879318, -0.367771,
		0.904256, -0.142847, -0.402387,
		0.301291, -0.454307, 0.838349,
		39.158108, 36.712112, 34.517845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100597, 36.316597, 33.902546>,  <38.947205, 37.030128, 33.931004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100597, 36.316597, 33.902546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331997, 36.035946, 33.736149>,  <39.470837, 35.867554, 33.636311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331997, 36.035946, 33.736149>,  <39.100597, 36.316597, 33.902546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331997, 36.035946, 33.736149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347522, -0.673399, 0.652504,
		-0.737946, -0.232908, -0.633395,
		0.578502, -0.701632, -0.415991,
		39.505547, 35.825455, 33.611351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735214, 35.626503, 33.537811>,  <39.100597, 36.316597, 33.902546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735214, 35.626503, 33.537811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088966, 35.559402, 33.712044>,  <39.301216, 35.519142, 33.816582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088966, 35.559402, 33.712044>,  <38.735214, 35.626503, 33.537811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088966, 35.559402, 33.712044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438629, -0.617779, 0.652651,
		0.159612, -0.768251, -0.619931,
		0.884380, -0.167749, 0.435582,
		39.354279, 35.509079, 33.842720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778351, 34.867245, 33.555901>,  <38.735214, 35.626503, 33.537811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778351, 34.867245, 33.555901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001213, 35.030128, 33.845383>,  <39.134930, 35.127861, 34.019073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001213, 35.030128, 33.845383>,  <38.778351, 34.867245, 33.555901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001213, 35.030128, 33.845383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520000, -0.508395, 0.686392,
		0.647436, -0.758758, -0.071507,
		0.557159, 0.407211, 0.723707,
		39.168362, 35.152290, 34.062496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850430, 34.357609, 34.042240>,  <38.778351, 34.867245, 33.555901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850430, 34.357609, 34.042240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975403, 34.673752, 34.253036>,  <39.050385, 34.863438, 34.379513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975403, 34.673752, 34.253036>,  <38.850430, 34.357609, 34.042240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975403, 34.673752, 34.253036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143433, -0.509148, 0.848643,
		0.939049, -0.340730, -0.045710,
		0.312431, 0.790362, 0.526987,
		39.069134, 34.910862, 34.411133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306862, 34.063213, 34.565254>,  <38.850430, 34.357609, 34.042240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306862, 34.063213, 34.565254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166512, 34.411484, 34.703129>,  <39.082302, 34.620445, 34.785854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166512, 34.411484, 34.703129>,  <39.306862, 34.063213, 34.565254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166512, 34.411484, 34.703129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123256, -0.407825, 0.904703,
		0.928276, 0.274951, 0.250411,
		-0.350873, 0.870678, 0.344685,
		39.061249, 34.672688, 34.806534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622982, 34.165459, 35.233463>,  <39.306862, 34.063213, 34.565254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622982, 34.165459, 35.233463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311241, 34.415569, 35.249634>,  <39.124195, 34.565636, 35.259338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311241, 34.415569, 35.249634>,  <39.622982, 34.165459, 35.233463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311241, 34.415569, 35.249634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151580, -0.250751, 0.956111,
		0.607971, 0.739022, 0.290203,
		-0.779356, 0.625276, 0.040428,
		39.077435, 34.603153, 35.261761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714714, 34.572311, 35.817997>,  <39.622982, 34.165459, 35.233463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714714, 34.572311, 35.817997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325817, 34.608395, 35.731644>,  <39.092480, 34.630047, 35.679832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325817, 34.608395, 35.731644>,  <39.714714, 34.572311, 35.817997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325817, 34.608395, 35.731644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225138, -0.109511, 0.968153,
		0.063697, 0.989883, 0.126781,
		-0.972242, 0.090212, -0.215885,
		39.034145, 34.635460, 35.666878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491482, 35.011707, 36.275558>,  <39.714714, 34.572311, 35.817997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491482, 35.011707, 36.275558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156750, 34.827660, 36.156895>,  <38.955910, 34.717232, 36.085697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156750, 34.827660, 36.156895>,  <39.491482, 35.011707, 36.275558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156750, 34.827660, 36.156895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330922, -0.006546, 0.943636,
		-0.436131, 0.887831, -0.146787,
		-0.836828, -0.460124, -0.296657,
		38.905701, 34.689621, 36.067898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905327, 35.426022, 36.564037>,  <39.491482, 35.011707, 36.275558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905327, 35.426022, 36.564037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770687, 35.056545, 36.490826>,  <38.689903, 34.834862, 36.446899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770687, 35.056545, 36.490826>,  <38.905327, 35.426022, 36.564037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770687, 35.056545, 36.490826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452616, -0.011743, 0.891628,
		-0.825736, 0.382963, -0.414124,
		-0.336598, -0.923689, -0.183032,
		38.669708, 34.779438, 36.435917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378094, 35.375824, 36.937347>,  <38.905327, 35.426022, 36.564037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378094, 35.375824, 36.937347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409641, 34.983475, 36.866169>,  <38.428570, 34.748066, 36.823463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409641, 34.983475, 36.866169>,  <38.378094, 35.375824, 36.937347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409641, 34.983475, 36.866169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119635, -0.186522, 0.975139,
		-0.989680, -0.055621, -0.132058,
		0.078870, -0.980875, -0.177943,
		38.433304, 34.689213, 36.812786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816673, 35.034431, 37.298145>,  <38.378094, 35.375824, 36.937347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816673, 35.034431, 37.298145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085976, 34.742588, 37.250160>,  <38.247559, 34.567482, 37.221371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085976, 34.742588, 37.250160>,  <37.816673, 35.034431, 37.298145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085976, 34.742588, 37.250160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185697, -0.323881, 0.927695,
		-0.715710, -0.602302, -0.353542,
		0.673258, -0.729612, -0.119959,
		38.287952, 34.523705, 37.214172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488358, 34.527180, 37.484604>,  <37.816673, 35.034431, 37.298145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488358, 34.527180, 37.484604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861996, 34.387604, 37.514816>,  <38.086178, 34.303856, 37.532944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861996, 34.387604, 37.514816>,  <37.488358, 34.527180, 37.484604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861996, 34.387604, 37.514816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202400, -0.343292, 0.917161,
		-0.294102, -0.872006, -0.391293,
		0.934097, -0.348937, 0.075531,
		38.142223, 34.282921, 37.537476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537525, 33.693470, 37.574562>,  <37.488358, 34.527180, 37.484604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537525, 33.693470, 37.574562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882587, 33.848354, 37.704720>,  <38.089626, 33.941284, 37.782814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882587, 33.848354, 37.704720>,  <37.537525, 33.693470, 37.574562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882587, 33.848354, 37.704720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162272, -0.397456, 0.903159,
		0.479048, -0.831922, -0.280035,
		0.862659, 0.387215, 0.325398,
		38.141384, 33.964520, 37.802338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848656, 33.103020, 37.837109>,  <37.537525, 33.693470, 37.574562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848656, 33.103020, 37.837109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023205, 33.421829, 38.004116>,  <38.127934, 33.613117, 38.104321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023205, 33.421829, 38.004116>,  <37.848656, 33.103020, 37.837109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023205, 33.421829, 38.004116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002959, -0.465301, 0.885148,
		0.899759, -0.385023, -0.205405,
		0.436377, 0.797028, 0.417519,
		38.154118, 33.660938, 38.129372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916588, 32.478058, 37.909706>,  <37.848656, 33.103020, 37.837109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916588, 32.478058, 37.909706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699837, 32.142719, 37.885918>,  <37.569786, 31.941515, 37.871643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699837, 32.142719, 37.885918>,  <37.916588, 32.478058, 37.909706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699837, 32.142719, 37.885918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640493, 0.457735, -0.616642,
		0.544183, -0.296055, -0.784994,
		-0.541879, -0.838350, -0.059471,
		37.537273, 31.891214, 37.868076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954357, 32.292816, 37.220512>,  <37.916588, 32.478058, 37.909706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954357, 32.292816, 37.220512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621155, 32.127773, 37.367943>,  <37.421234, 32.028748, 37.456402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621155, 32.127773, 37.367943>,  <37.954357, 32.292816, 37.220512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621155, 32.127773, 37.367943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510514, 0.316473, -0.799513,
		0.213239, -0.854167, -0.474266,
		-0.833010, -0.412607, 0.368580,
		37.371250, 32.003990, 37.478516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557007, 31.946911, 36.677162>,  <37.954357, 32.292816, 37.220512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557007, 31.946911, 36.677162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276485, 32.006115, 36.956093>,  <37.108173, 32.041637, 37.123451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276485, 32.006115, 36.956093>,  <37.557007, 31.946911, 36.677162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276485, 32.006115, 36.956093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631612, 0.324520, -0.704098,
		-0.330510, -0.934227, -0.134102,
		-0.701306, 0.148011, 0.697326,
		37.066093, 32.050518, 37.165291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020111, 31.677046, 36.342941>,  <37.557007, 31.946911, 36.677162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020111, 31.677046, 36.342941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865417, 31.910164, 36.628819>,  <36.772602, 32.050034, 36.800346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865417, 31.910164, 36.628819>,  <37.020111, 31.677046, 36.342941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865417, 31.910164, 36.628819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729645, 0.280569, -0.623618,
		-0.563961, -0.762648, 0.316727,
		-0.386737, 0.582794, 0.714692,
		36.749397, 32.085003, 36.843227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296455, 31.610319, 36.282040>,  <37.020111, 31.677046, 36.342941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296455, 31.610319, 36.282040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318237, 31.957291, 36.479870>,  <36.331306, 32.165474, 36.598568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318237, 31.957291, 36.479870>,  <36.296455, 31.610319, 36.282040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318237, 31.957291, 36.479870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749352, 0.362856, -0.553901,
		-0.659928, -0.340443, 0.669771,
		0.054459, 0.867429, 0.494571,
		36.334576, 32.217518, 36.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593243, 31.793575, 36.393429>,  <36.296455, 31.610319, 36.282040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593243, 31.793575, 36.393429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775475, 32.140877, 36.471996>,  <35.884815, 32.349258, 36.519138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775475, 32.140877, 36.471996>,  <35.593243, 31.793575, 36.393429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775475, 32.140877, 36.471996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738356, 0.491813, -0.461466,
		-0.497271, 0.065208, 0.865141,
		0.455579, 0.868256, 0.196418,
		35.912148, 32.401352, 36.530922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097988, 32.222916, 36.609886>,  <35.593243, 31.793575, 36.393429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097988, 32.222916, 36.609886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362762, 32.483719, 36.461979>,  <35.521629, 32.640198, 36.373234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362762, 32.483719, 36.461979>,  <35.097988, 32.222916, 36.609886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362762, 32.483719, 36.461979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745079, 0.518508, -0.419533,
		-0.081810, 0.553210, 0.829015,
		0.661940, 0.652003, -0.369766,
		35.561344, 32.679321, 36.351048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732975, 32.902012, 36.606220>,  <35.097988, 32.222916, 36.609886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732975, 32.902012, 36.606220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048340, 32.939201, 36.362988>,  <35.237556, 32.961514, 36.217049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048340, 32.939201, 36.362988>,  <34.732975, 32.902012, 36.606220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048340, 32.939201, 36.362988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600041, 0.333986, -0.726914,
		0.135508, 0.937981, 0.319106,
		0.788409, 0.092974, -0.608085,
		35.284863, 32.967094, 36.180561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727726, 33.582729, 36.256763>,  <34.732975, 32.902012, 36.606220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727726, 33.582729, 36.256763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938316, 33.331474, 36.027584>,  <35.064671, 33.180721, 35.890076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938316, 33.331474, 36.027584>,  <34.727726, 33.582729, 36.256763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938316, 33.331474, 36.027584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608802, 0.191865, -0.769771,
		0.593451, 0.754076, -0.281399,
		0.526475, -0.628138, -0.572946,
		35.096260, 33.143032, 35.855701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722816, 33.846062, 35.484192>,  <34.727726, 33.582729, 36.256763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722816, 33.846062, 35.484192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821510, 33.464951, 35.413376>,  <34.880726, 33.236286, 35.370888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821510, 33.464951, 35.413376>,  <34.722816, 33.846062, 35.484192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821510, 33.464951, 35.413376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380139, 0.072883, -0.922054,
		0.891412, 0.294804, -0.344203,
		0.246738, -0.952774, -0.177035,
		34.895531, 33.179119, 35.360264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035057, 33.853210, 34.859062>,  <34.722816, 33.846062, 35.484192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035057, 33.853210, 34.859062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938232, 33.466015, 34.885624>,  <34.880138, 33.233700, 34.901562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938232, 33.466015, 34.885624>,  <35.035057, 33.853210, 34.859062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938232, 33.466015, 34.885624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398847, 0.036888, -0.916275,
		0.884491, -0.248283, -0.395007,
		-0.242066, -0.967985, 0.066400,
		34.865612, 33.175621, 34.905544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232204, 33.491920, 34.189491>,  <35.035057, 33.853210, 34.859062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232204, 33.491920, 34.189491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966850, 33.257839, 34.376022>,  <34.807636, 33.117390, 34.487942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966850, 33.257839, 34.376022>,  <35.232204, 33.491920, 34.189491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966850, 33.257839, 34.376022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535258, -0.064381, -0.842232,
		0.522897, -0.808329, -0.270524,
		-0.663384, -0.585200, 0.466329,
		34.767834, 33.082279, 34.515923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.752026, 29.422644, 40.352287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356277, 29.377829, 40.389385>,  <39.118828, 29.350939, 40.411644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356277, 29.377829, 40.389385>,  <39.752026, 29.422644, 40.352287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356277, 29.377829, 40.389385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129227, 0.384509, -0.914032,
		0.066744, -0.916297, -0.394898,
		-0.989366, -0.112038, 0.092747,
		39.059467, 29.344217, 40.417210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493034, 29.249331, 39.621849>,  <39.752026, 29.422644, 40.352287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493034, 29.249331, 39.621849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168087, 29.387775, 39.809578>,  <38.973118, 29.470842, 39.922215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168087, 29.387775, 39.809578>,  <39.493034, 29.249331, 39.621849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168087, 29.387775, 39.809578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332780, 0.385752, -0.860496,
		-0.478872, -0.855220, -0.198193,
		-0.812367, 0.346113, 0.469326,
		38.924377, 29.491610, 39.950375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881329, 29.137672, 39.119614>,  <39.493034, 29.249331, 39.621849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881329, 29.137672, 39.119614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787621, 29.432762, 39.372875>,  <38.731396, 29.609816, 39.524830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.787621, 29.432762, 39.372875>,  <38.881329, 29.137672, 39.119614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787621, 29.432762, 39.372875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249045, 0.584001, -0.772606,
		-0.939731, -0.338680, 0.046914,
		-0.234268, 0.737725, 0.633150,
		38.717339, 29.654079, 39.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183472, 29.442171, 38.840405>,  <38.881329, 29.137672, 39.119614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183472, 29.442171, 38.840405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323963, 29.718620, 39.093067>,  <38.408257, 29.884489, 39.244663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.323963, 29.718620, 39.093067>,  <38.183472, 29.442171, 38.840405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323963, 29.718620, 39.093067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328002, 0.722708, -0.608365,
		-0.876957, 0.006491, 0.480525,
		0.351229, 0.691123, 0.631655,
		38.429333, 29.925957, 39.282562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618656, 29.914789, 38.916573>,  <38.183472, 29.442171, 38.840405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618656, 29.914789, 38.916573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936157, 30.132429, 39.025322>,  <38.126656, 30.263014, 39.090572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936157, 30.132429, 39.025322>,  <37.618656, 29.914789, 38.916573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936157, 30.132429, 39.025322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415570, 0.811510, -0.410795,
		-0.444141, 0.213087, 0.870249,
		0.793751, 0.544100, 0.271873,
		38.174282, 30.295660, 39.106884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371925, 30.461071, 39.340492>,  <37.618656, 29.914789, 38.916573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371925, 30.461071, 39.340492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715012, 30.586800, 39.177757>,  <37.920864, 30.662237, 39.080116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715012, 30.586800, 39.177757>,  <37.371925, 30.461071, 39.340492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715012, 30.586800, 39.177757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487766, 0.747617, -0.450725,
		0.162488, 0.585039, 0.794561,
		0.857719, 0.314322, -0.406841,
		37.972328, 30.681097, 39.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403275, 31.212603, 39.515022>,  <37.371925, 30.461071, 39.340492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403275, 31.212603, 39.515022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629478, 31.124466, 39.197117>,  <37.765202, 31.071585, 39.006374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629478, 31.124466, 39.197117>,  <37.403275, 31.212603, 39.515022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629478, 31.124466, 39.197117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457818, 0.717679, -0.524728,
		0.686003, 0.660596, 0.304980,
		0.565511, -0.220340, -0.794763,
		37.799133, 31.058363, 38.958687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668041, 31.928556, 39.189281>,  <37.403275, 31.212603, 39.515022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668041, 31.928556, 39.189281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722897, 31.655521, 38.902153>,  <37.755810, 31.491699, 38.729877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.722897, 31.655521, 38.902153>,  <37.668041, 31.928556, 39.189281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722897, 31.655521, 38.902153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483559, 0.586320, -0.649923,
		0.864502, 0.436236, -0.249668,
		0.137134, -0.682589, -0.717821,
		37.764038, 31.450745, 38.686806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859421, 32.288326, 38.583447>,  <37.668041, 31.928556, 39.189281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859421, 32.288326, 38.583447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736523, 31.942503, 38.424381>,  <37.662785, 31.735008, 38.328941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736523, 31.942503, 38.424381>,  <37.859421, 32.288326, 38.583447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736523, 31.942503, 38.424381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438536, 0.499491, -0.747124,
		0.844563, -0.055161, -0.532608,
		-0.307245, -0.864561, -0.397662,
		37.644348, 31.683134, 38.305084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489601, 32.786514, 38.325447>,  <37.859421, 32.288326, 38.583447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489601, 32.786514, 38.325447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.409588, 33.158951, 38.447468>,  <38.361580, 33.382412, 38.520679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.409588, 33.158951, 38.447468>,  <38.489601, 32.786514, 38.325447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409588, 33.158951, 38.447468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084690, -0.293748, 0.952124,
		0.976122, 0.216294, -0.020093,
		-0.200036, 0.931090, 0.305052,
		38.349575, 33.438278, 38.538982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035351, 32.933254, 38.616238>,  <38.489601, 32.786514, 38.325447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035351, 32.933254, 38.616238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739571, 33.157562, 38.765240>,  <38.562103, 33.292145, 38.854641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739571, 33.157562, 38.765240>,  <39.035351, 32.933254, 38.616238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739571, 33.157562, 38.765240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183870, -0.364055, 0.913047,
		0.647618, 0.743643, 0.166092,
		-0.739448, 0.560767, 0.372502,
		38.517735, 33.325790, 38.876991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318638, 33.218021, 39.124916>,  <39.035351, 32.933254, 38.616238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318638, 33.218021, 39.124916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933819, 33.262833, 39.224453>,  <38.702927, 33.289719, 39.284176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933819, 33.262833, 39.224453>,  <39.318638, 33.218021, 39.124916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933819, 33.262833, 39.224453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190191, -0.378679, 0.905776,
		0.195704, 0.918723, 0.342999,
		-0.962043, 0.112029, 0.248842,
		38.645206, 33.296440, 39.299107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342178, 33.494156, 39.789753>,  <39.318638, 33.218021, 39.124916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342178, 33.494156, 39.789753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.967167, 33.357773, 39.762054>,  <38.742161, 33.275944, 39.745438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.967167, 33.357773, 39.762054>,  <39.342178, 33.494156, 39.789753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967167, 33.357773, 39.762054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127237, -0.521239, 0.843872,
		-0.323815, 0.782341, 0.532057,
		-0.937526, -0.340956, -0.069243,
		38.685909, 33.255486, 39.741283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922371, 33.753986, 40.370785>,  <39.342178, 33.494156, 39.789753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922371, 33.753986, 40.370785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720032, 33.429321, 40.253952>,  <38.598629, 33.234520, 40.183853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720032, 33.429321, 40.253952>,  <38.922371, 33.753986, 40.370785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720032, 33.429321, 40.253952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166674, -0.240254, 0.956294,
		-0.846367, 0.532423, -0.013752,
		-0.505849, -0.811667, -0.292084,
		38.568275, 33.185822, 40.166328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528286, 33.731045, 40.929554>,  <38.922371, 33.753986, 40.370785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528286, 33.731045, 40.929554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506092, 33.378914, 40.741112>,  <38.492775, 33.167633, 40.628044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506092, 33.378914, 40.741112>,  <38.528286, 33.731045, 40.929554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506092, 33.378914, 40.741112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140990, -0.460199, 0.876549,
		-0.988455, 0.115055, -0.098584,
		-0.055483, -0.880329, -0.471107,
		38.489449, 33.114815, 40.599781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827473, 33.399490, 41.168858>,  <38.528286, 33.731045, 40.929554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827473, 33.399490, 41.168858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056160, 33.103065, 41.028023>,  <38.193375, 32.925213, 40.943520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056160, 33.103065, 41.028023>,  <37.827473, 33.399490, 41.168858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056160, 33.103065, 41.028023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114635, -0.497086, 0.860096,
		-0.812400, -0.451373, -0.369146,
		0.571721, -0.741059, -0.352089,
		38.227676, 32.880749, 40.922398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525822, 32.765354, 41.321247>,  <37.827473, 33.399490, 41.168858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525822, 32.765354, 41.321247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.909264, 32.664963, 41.267460>,  <38.139328, 32.604729, 41.235188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.909264, 32.664963, 41.267460>,  <37.525822, 32.765354, 41.321247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909264, 32.664963, 41.267460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021355, -0.534297, 0.845027,
		-0.283932, -0.807177, -0.517541,
		0.958606, -0.250982, -0.134467,
		38.196846, 32.589668, 41.227119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575951, 32.083694, 41.743099>,  <37.525822, 32.765354, 41.321247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575951, 32.083694, 41.743099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960598, 32.177269, 41.685726>,  <38.191387, 32.233414, 41.651302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960598, 32.177269, 41.685726>,  <37.575951, 32.083694, 41.743099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960598, 32.177269, 41.685726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231011, -0.408061, 0.883245,
		0.148092, -0.882475, -0.446438,
		0.961615, 0.233933, -0.143431,
		38.249081, 32.247448, 41.642696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964645, 31.513157, 41.967152>,  <37.575951, 32.083694, 41.743099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964645, 31.513157, 41.967152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.212639, 31.826941, 41.960945>,  <38.361435, 32.015213, 41.957222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.212639, 31.826941, 41.960945>,  <37.964645, 31.513157, 41.967152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212639, 31.826941, 41.960945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359889, -0.266746, 0.894051,
		0.697209, -0.559882, -0.447697,
		0.619984, 0.784461, -0.015517,
		38.398636, 32.062279, 41.956291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543190, 31.252426, 42.248631>,  <37.964645, 31.513157, 41.967152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543190, 31.252426, 42.248631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590286, 31.647331, 42.291439>,  <38.618546, 31.884274, 42.317123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.590286, 31.647331, 42.291439>,  <38.543190, 31.252426, 42.248631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590286, 31.647331, 42.291439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388076, -0.144947, 0.910158,
		0.914075, -0.065631, -0.400198,
		0.117742, 0.987260, 0.107022,
		38.625610, 31.943510, 42.323547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083282, 31.222952, 42.651440>,  <38.543190, 31.252426, 42.248631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083282, 31.222952, 42.651440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935772, 31.592937, 42.688210>,  <38.847267, 31.814928, 42.710270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935772, 31.592937, 42.688210>,  <39.083282, 31.222952, 42.651440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935772, 31.592937, 42.688210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230948, -0.004614, 0.972955,
		0.900371, 0.380031, -0.211917,
		-0.368775, 0.924962, 0.091922,
		38.825138, 31.870426, 42.715786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586941, 31.555563, 43.033604>,  <39.083282, 31.222952, 42.651440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586941, 31.555563, 43.033604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255299, 31.773340, 43.084473>,  <39.056313, 31.904007, 43.114994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255299, 31.773340, 43.084473>,  <39.586941, 31.555563, 43.033604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255299, 31.773340, 43.084473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220633, 0.109608, 0.969179,
		0.513724, 0.831605, -0.210999,
		-0.829101, 0.544443, 0.127171,
		39.006569, 31.936674, 43.122623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754864, 32.123360, 43.403309>,  <39.586941, 31.555563, 43.033604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754864, 32.123360, 43.403309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364437, 32.053516, 43.455173>,  <39.130180, 32.011612, 43.486294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364437, 32.053516, 43.455173>,  <39.754864, 32.123360, 43.403309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364437, 32.053516, 43.455173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136253, -0.026233, 0.990327,
		-0.169519, 0.984288, 0.049396,
		-0.976063, -0.174609, 0.129665,
		39.071617, 32.001133, 43.494072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.807987, 31.780054, 44.414093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168816, 31.661142, 44.288944>,  <35.385315, 31.589796, 44.213856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168816, 31.661142, 44.288944>,  <34.807987, 31.780054, 44.414093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168816, 31.661142, 44.288944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067815, 0.618306, -0.783006,
		0.426222, 0.727546, 0.537598,
		0.902073, -0.297277, -0.312874,
		35.439438, 31.571959, 44.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999264, 32.414482, 44.063320>,  <34.807987, 31.780054, 44.414093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999264, 32.414482, 44.063320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223431, 32.112442, 43.927231>,  <35.357933, 31.931217, 43.845577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.223431, 32.112442, 43.927231>,  <34.999264, 32.414482, 44.063320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223431, 32.112442, 43.927231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106065, 0.341976, -0.933704,
		0.821388, 0.559353, 0.111560,
		0.560421, -0.755101, -0.340223,
		35.391556, 31.885912, 43.825165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459408, 32.734871, 43.576054>,  <34.999264, 32.414482, 44.063320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459408, 32.734871, 43.576054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415371, 32.342930, 43.509399>,  <35.388947, 32.107765, 43.469406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415371, 32.342930, 43.509399>,  <35.459408, 32.734871, 43.576054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415371, 32.342930, 43.509399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120108, 0.179543, -0.976390,
		0.986637, -0.087480, -0.137455,
		-0.110094, -0.979853, -0.166637,
		35.382343, 32.048973, 43.459408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855198, 32.695335, 43.043709>,  <35.459408, 32.734871, 43.576054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855198, 32.695335, 43.043709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622070, 32.370335, 43.038498>,  <35.482193, 32.175335, 43.035370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622070, 32.370335, 43.038498>,  <35.855198, 32.695335, 43.043709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622070, 32.370335, 43.038498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300216, 0.230194, -0.925679,
		0.755111, -0.535592, -0.378086,
		-0.582819, -0.812497, -0.013028,
		35.447224, 32.126587, 43.034588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052723, 32.354183, 42.418030>,  <35.855198, 32.695335, 43.043709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052723, 32.354183, 42.418030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679985, 32.235882, 42.502121>,  <35.456341, 32.164902, 42.552574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679985, 32.235882, 42.502121>,  <36.052723, 32.354183, 42.418030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679985, 32.235882, 42.502121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317565, 0.384419, -0.866819,
		0.175550, -0.874501, -0.452140,
		-0.931845, -0.295754, 0.210226,
		35.400433, 32.147156, 42.565189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698757, 32.209137, 41.778454>,  <36.052723, 32.354183, 42.418030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698757, 32.209137, 41.778454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387650, 32.232498, 42.028786>,  <35.200985, 32.246513, 42.178986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387650, 32.232498, 42.028786>,  <35.698757, 32.209137, 41.778454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387650, 32.232498, 42.028786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592598, 0.263775, -0.761085,
		-0.209529, -0.962815, -0.170546,
		-0.777770, 0.058404, 0.625830,
		35.154320, 32.250019, 42.216534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155346, 31.832809, 41.531273>,  <35.698757, 32.209137, 41.778454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155346, 31.832809, 41.531273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993439, 32.139320, 41.730865>,  <34.896294, 32.323227, 41.850620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993439, 32.139320, 41.730865>,  <35.155346, 31.832809, 41.531273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993439, 32.139320, 41.730865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564071, 0.220260, -0.795807,
		-0.719714, -0.603580, 0.343080,
		-0.404766, 0.766275, 0.498986,
		34.872009, 32.369202, 41.880562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414024, 31.867191, 41.300880>,  <35.155346, 31.832809, 41.531273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414024, 31.867191, 41.300880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464134, 32.223793, 41.475018>,  <34.494202, 32.437756, 41.579498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464134, 32.223793, 41.475018>,  <34.414024, 31.867191, 41.300880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464134, 32.223793, 41.475018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594791, 0.418688, -0.686239,
		-0.794059, -0.172968, 0.582712,
		0.125277, 0.891506, 0.435343,
		34.501717, 32.491245, 41.605621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728340, 32.079300, 41.445217>,  <34.414024, 31.867191, 41.300880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728340, 32.079300, 41.445217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.976891, 32.391617, 41.419117>,  <34.126022, 32.579006, 41.403458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.976891, 32.391617, 41.419117>,  <33.728340, 32.079300, 41.445217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976891, 32.391617, 41.419117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575246, 0.398077, -0.714582,
		-0.531963, 0.481560, 0.696502,
		0.621376, 0.780791, -0.065253,
		34.163303, 32.625854, 41.399540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283035, 32.606544, 41.587749>,  <33.728340, 32.079300, 41.445217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283035, 32.606544, 41.587749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.580807, 32.780476, 41.385071>,  <33.759472, 32.884834, 41.263462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.580807, 32.780476, 41.385071>,  <33.283035, 32.606544, 41.587749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580807, 32.780476, 41.385071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664614, 0.555436, -0.499779,
		0.064119, 0.708810, 0.702479,
		0.744431, 0.434832, -0.506699,
		33.804134, 32.910927, 41.233063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001537, 33.152576, 41.450188>,  <33.283035, 32.606544, 41.587749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001537, 33.152576, 41.450188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335018, 33.175377, 41.230480>,  <33.535107, 33.189056, 41.098656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335018, 33.175377, 41.230480>,  <33.001537, 33.152576, 41.450188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335018, 33.175377, 41.230480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416859, 0.717311, -0.558295,
		0.362172, 0.694418, 0.621784,
		0.833703, 0.056997, -0.549264,
		33.585129, 33.192474, 41.065701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092644, 33.824173, 41.364037>,  <33.001537, 33.152576, 41.450188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092644, 33.824173, 41.364037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304474, 33.655113, 41.069851>,  <33.431572, 33.553677, 40.893337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.304474, 33.655113, 41.069851>,  <33.092644, 33.824173, 41.364037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304474, 33.655113, 41.069851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382566, 0.654842, -0.651786,
		0.757093, 0.626537, 0.185098,
		0.529578, -0.422651, -0.735468,
		33.463348, 33.528316, 40.849209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500519, 34.312099, 41.000534>,  <33.092644, 33.824173, 41.364037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500519, 34.312099, 41.000534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471169, 34.012028, 40.737675>,  <33.453560, 33.831985, 40.579960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471169, 34.012028, 40.737675>,  <33.500519, 34.312099, 41.000534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471169, 34.012028, 40.737675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247089, 0.652055, -0.716779,
		0.966211, 0.109783, -0.233204,
		-0.073371, -0.750182, -0.657149,
		33.449158, 33.786972, 40.540531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754292, 34.592239, 40.294716>,  <33.500519, 34.312099, 41.000534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754292, 34.592239, 40.294716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.580486, 34.239304, 40.222408>,  <33.476204, 34.027542, 40.179024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.580486, 34.239304, 40.222408>,  <33.754292, 34.592239, 40.294716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580486, 34.239304, 40.222408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406112, 0.371076, -0.835090,
		0.803913, -0.289443, -0.519565,
		-0.434509, -0.882341, -0.180766,
		33.450134, 33.974602, 40.168179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380882, 34.746822, 40.019344>,  <33.754292, 34.592239, 40.294716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380882, 34.746822, 40.019344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.513424, 35.122608, 40.054264>,  <34.592949, 35.348080, 40.075214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.513424, 35.122608, 40.054264>,  <34.380882, 34.746822, 40.019344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513424, 35.122608, 40.054264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363843, -0.212598, 0.906874,
		0.870532, -0.268729, -0.412261,
		0.331349, 0.939461, 0.087298,
		34.612827, 35.404446, 40.080452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098492, 34.754795, 40.233196>,  <34.380882, 34.746822, 40.019344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098492, 34.754795, 40.233196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996368, 35.127537, 40.336315>,  <34.935097, 35.351181, 40.398186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.996368, 35.127537, 40.336315>,  <35.098492, 34.754795, 40.233196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996368, 35.127537, 40.336315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428129, -0.130115, 0.894302,
		0.866905, 0.338692, -0.365737,
		-0.255305, 0.931857, 0.257801,
		34.919777, 35.407093, 40.413654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673367, 35.042694, 40.592880>,  <35.098492, 34.754795, 40.233196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673367, 35.042694, 40.592880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348969, 35.247738, 40.705673>,  <35.154327, 35.370762, 40.773350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348969, 35.247738, 40.705673>,  <35.673367, 35.042694, 40.592880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348969, 35.247738, 40.705673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355428, 0.048854, 0.933426,
		0.464704, 0.857233, -0.221815,
		-0.811000, 0.512607, 0.281982,
		35.105667, 35.401520, 40.790268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960178, 35.616970, 40.944660>,  <35.673367, 35.042694, 40.592880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960178, 35.616970, 40.944660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.592087, 35.570961, 41.094296>,  <35.371231, 35.543354, 41.184074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.592087, 35.570961, 41.094296>,  <35.960178, 35.616970, 40.944660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592087, 35.570961, 41.094296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364998, 0.092702, 0.926382,
		-0.141234, 0.989028, -0.043324,
		-0.920233, -0.115024, 0.374086,
		35.316017, 35.536453, 41.206520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841232, 36.169350, 41.480648>,  <35.960178, 35.616970, 40.944660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841232, 36.169350, 41.480648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587643, 35.871899, 41.565594>,  <35.435490, 35.693428, 41.616562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587643, 35.871899, 41.565594>,  <35.841232, 36.169350, 41.480648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587643, 35.871899, 41.565594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281620, 0.033763, 0.958932,
		-0.720254, 0.667746, 0.188014,
		-0.633975, -0.743623, 0.212369,
		35.397449, 35.648811, 41.629303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832905, 36.253933, 42.184822>,  <35.841232, 36.169350, 41.480648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832905, 36.253933, 42.184822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653111, 35.897511, 42.159580>,  <35.545235, 35.683659, 42.144436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653111, 35.897511, 42.159580>,  <35.832905, 36.253933, 42.184822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653111, 35.897511, 42.159580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336327, -0.234257, 0.912144,
		-0.827555, 0.388770, 0.404981,
		-0.449484, -0.891056, -0.063106,
		35.518265, 35.630192, 42.140648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663925, 36.059181, 42.916527>,  <35.832905, 36.253933, 42.184822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663925, 36.059181, 42.916527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.651604, 35.712585, 42.717228>,  <35.644211, 35.504627, 42.597649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.651604, 35.712585, 42.717228>,  <35.663925, 36.059181, 42.916527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651604, 35.712585, 42.717228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315507, -0.481428, 0.817730,
		-0.948423, -0.132009, 0.288214,
		-0.030807, -0.866488, -0.498247,
		35.642361, 35.452641, 42.567753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327675, 35.554268, 43.412155>,  <35.663925, 36.059181, 42.916527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327675, 35.554268, 43.412155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531372, 35.344803, 43.138966>,  <35.653591, 35.219124, 42.975052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531372, 35.344803, 43.138966>,  <35.327675, 35.554268, 43.412155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531372, 35.344803, 43.138966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399876, -0.558741, 0.726573,
		-0.762084, -0.643104, -0.075133,
		0.509242, -0.523666, -0.682969,
		35.684143, 35.187702, 42.934074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190712, 34.840549, 43.446529>,  <35.327675, 35.554268, 43.412155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190712, 34.840549, 43.446529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562286, 34.918892, 43.320850>,  <35.785233, 34.965897, 43.245441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.562286, 34.918892, 43.320850>,  <35.190712, 34.840549, 43.446529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562286, 34.918892, 43.320850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365398, -0.621801, 0.692710,
		-0.059696, -0.758290, -0.649179,
		0.928935, 0.195857, -0.314196,
		35.840965, 34.977650, 43.226593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529400, 34.306526, 43.654903>,  <35.190712, 34.840549, 43.446529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529400, 34.306526, 43.654903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843575, 34.531315, 43.551159>,  <36.032082, 34.666187, 43.488911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843575, 34.531315, 43.551159>,  <35.529400, 34.306526, 43.654903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843575, 34.531315, 43.551159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524814, -0.382562, 0.760405,
		0.328107, -0.733369, -0.595412,
		0.785440, 0.561975, -0.259361,
		36.079208, 34.699909, 43.473351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022728, 33.880543, 43.380749>,  <35.529400, 34.306526, 43.654903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022728, 33.880543, 43.380749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153252, 34.203327, 43.577656>,  <36.231567, 34.396999, 43.695801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153252, 34.203327, 43.577656>,  <36.022728, 33.880543, 43.380749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153252, 34.203327, 43.577656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407808, -0.589999, 0.696845,
		0.852769, -0.026634, -0.521609,
		0.326308, 0.806965, 0.492271,
		36.251144, 34.445415, 43.725338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732170, 33.646400, 43.489655>,  <36.022728, 33.880543, 43.380749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732170, 33.646400, 43.489655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.610199, 33.932232, 43.741497>,  <36.537018, 34.103729, 43.892601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.610199, 33.932232, 43.741497>,  <36.732170, 33.646400, 43.489655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610199, 33.932232, 43.741497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354229, -0.528561, 0.771456,
		0.884049, 0.458260, -0.091953,
		-0.304925, 0.714577, 0.629603,
		36.518723, 34.146606, 43.930378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262569, 33.763908, 43.865219>,  <36.732170, 33.646400, 43.489655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262569, 33.763908, 43.865219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987896, 33.933323, 44.101551>,  <36.823090, 34.034973, 44.243351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987896, 33.933323, 44.101551>,  <37.262569, 33.763908, 43.865219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987896, 33.933323, 44.101551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450440, -0.390021, 0.803111,
		0.570584, 0.817617, 0.077043,
		-0.686686, 0.423539, 0.590827,
		36.781891, 34.060383, 44.278801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634499, 33.893166, 44.375664>,  <37.262569, 33.763908, 43.865219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634499, 33.893166, 44.375664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.259499, 33.905834, 44.514282>,  <37.034500, 33.913437, 44.597454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.259499, 33.905834, 44.514282>,  <37.634499, 33.893166, 44.375664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259499, 33.905834, 44.514282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321442, -0.302652, 0.897261,
		0.133302, 0.952575, 0.273554,
		-0.937500, 0.031675, 0.346542,
		36.978249, 33.915337, 44.618244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887230, 34.649448, 44.367554>,  <37.634499, 33.893166, 44.375664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887230, 34.649448, 44.367554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.273762, 34.716217, 44.289230>,  <38.505680, 34.756279, 44.242237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.273762, 34.716217, 44.289230>,  <37.887230, 34.649448, 44.367554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273762, 34.716217, 44.289230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252723, 0.472889, -0.844101,
		-0.048306, 0.865166, 0.499153,
		0.966332, 0.166923, -0.195804,
		38.563660, 34.766293, 44.230488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045006, 35.404278, 44.322426>,  <37.887230, 34.649448, 44.367554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045006, 35.404278, 44.322426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346489, 35.228809, 44.126675>,  <38.527378, 35.123528, 44.009224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346489, 35.228809, 44.126675>,  <38.045006, 35.404278, 44.322426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346489, 35.228809, 44.126675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242790, 0.506098, -0.827597,
		0.610718, 0.742583, 0.274945,
		0.753709, -0.438675, -0.489375,
		38.572601, 35.097206, 43.979862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469368, 35.971680, 44.056637>,  <38.045006, 35.404278, 44.322426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469368, 35.971680, 44.056637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595600, 35.666611, 43.830807>,  <38.671341, 35.483570, 43.695309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.595600, 35.666611, 43.830807>,  <38.469368, 35.971680, 44.056637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595600, 35.666611, 43.830807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030966, 0.586381, -0.809444,
		0.948394, 0.272926, 0.161433,
		0.315580, -0.762672, -0.564571,
		38.690273, 35.437809, 43.661434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057152, 36.142422, 43.734875>,  <38.469368, 35.971680, 44.056637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057152, 36.142422, 43.734875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920063, 35.857384, 43.490009>,  <38.837811, 35.686359, 43.343090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920063, 35.857384, 43.490009>,  <39.057152, 36.142422, 43.734875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920063, 35.857384, 43.490009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206792, 0.578425, -0.789089,
		0.916393, -0.397032, -0.050882,
		-0.342725, -0.712594, -0.612168,
		38.817245, 35.643604, 43.306358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526920, 36.293816, 43.137875>,  <39.057152, 36.142422, 43.734875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526920, 36.293816, 43.137875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216431, 36.059868, 43.043724>,  <39.030136, 35.919498, 42.987232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216431, 36.059868, 43.043724>,  <39.526920, 36.293816, 43.137875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216431, 36.059868, 43.043724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028199, 0.340762, -0.939726,
		0.629829, -0.736074, -0.248015,
		-0.776222, -0.584873, -0.235378,
		38.983562, 35.884407, 42.973110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665039, 35.939636, 42.476673>,  <39.526920, 36.293816, 43.137875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665039, 35.939636, 42.476673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267212, 35.944675, 42.518021>,  <39.028515, 35.947701, 42.542828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267212, 35.944675, 42.518021>,  <39.665039, 35.939636, 42.476673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267212, 35.944675, 42.518021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100688, 0.136735, -0.985477,
		-0.026549, -0.990528, -0.134723,
		-0.994564, 0.012598, 0.103365,
		38.968842, 35.948456, 42.549030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454601, 35.793507, 41.839531>,  <39.665039, 35.939636, 42.476673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454601, 35.793507, 41.839531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108231, 35.902512, 42.007294>,  <38.900406, 35.967915, 42.107952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108231, 35.902512, 42.007294>,  <39.454601, 35.793507, 41.839531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108231, 35.902512, 42.007294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344565, 0.282780, -0.895159,
		-0.362544, -0.919658, -0.150969,
		-0.865931, 0.272516, 0.419402,
		38.848450, 35.984264, 42.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011715, 35.556263, 41.242138>,  <39.454601, 35.793507, 41.839531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011715, 35.556263, 41.242138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812065, 35.837463, 41.444786>,  <38.692276, 36.006184, 41.566376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812065, 35.837463, 41.444786>,  <39.011715, 35.556263, 41.242138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812065, 35.837463, 41.444786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430889, 0.305891, -0.848979,
		-0.751801, -0.642047, 0.150235,
		-0.499129, 0.702998, 0.506621,
		38.662327, 36.048363, 41.596771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326031, 35.617355, 40.992695>,  <39.011715, 35.556263, 41.242138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326031, 35.617355, 40.992695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404743, 35.965588, 41.173077>,  <38.451969, 36.174526, 41.281307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404743, 35.965588, 41.173077>,  <38.326031, 35.617355, 40.992695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404743, 35.965588, 41.173077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368391, 0.491898, -0.788876,
		-0.908607, -0.010893, 0.417511,
		0.196779, 0.870585, 0.450954,
		38.463776, 36.226765, 41.308361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702244, 35.939720, 41.105560>,  <38.326031, 35.617355, 40.992695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702244, 35.939720, 41.105560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974751, 36.232502, 41.101109>,  <38.138256, 36.408169, 41.098438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.974751, 36.232502, 41.101109>,  <37.702244, 35.939720, 41.105560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974751, 36.232502, 41.101109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450875, 0.407582, -0.794096,
		-0.576705, 0.546007, 0.607690,
		0.681266, 0.731951, -0.011126,
		38.179131, 36.452087, 41.097771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334244, 36.607037, 40.997772>,  <37.702244, 35.939720, 41.105560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334244, 36.607037, 40.997772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702419, 36.708477, 40.878788>,  <37.923325, 36.769341, 40.807396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.702419, 36.708477, 40.878788>,  <37.334244, 36.607037, 40.997772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702419, 36.708477, 40.878788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389606, 0.533559, -0.750681,
		-0.031659, 0.806847, 0.589912,
		0.920438, 0.253599, -0.297460,
		37.978550, 36.784557, 40.789551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230911, 37.298962, 40.829903>,  <37.334244, 36.607037, 40.997772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230911, 37.298962, 40.829903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.558479, 37.161633, 40.645943>,  <37.755020, 37.079235, 40.535568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.558479, 37.161633, 40.645943>,  <37.230911, 37.298962, 40.829903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558479, 37.161633, 40.645943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324629, 0.383725, -0.864506,
		0.473277, 0.857255, 0.202787,
		0.818917, -0.343320, -0.459898,
		37.804153, 37.058636, 40.507973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473526, 37.907150, 40.312016>,  <37.230911, 37.298962, 40.829903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473526, 37.907150, 40.312016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638134, 37.559204, 40.203209>,  <37.736897, 37.350437, 40.137924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.638134, 37.559204, 40.203209>,  <37.473526, 37.907150, 40.312016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638134, 37.559204, 40.203209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191555, 0.209247, -0.958917,
		0.891044, 0.446718, -0.080517,
		0.411517, -0.869861, -0.272020,
		37.761589, 37.298244, 40.121605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877914, 37.957977, 39.950989>,  <37.473526, 37.907150, 40.312016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877914, 37.957977, 39.950989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557934, 38.091114, 40.150707>,  <36.365944, 38.170994, 40.270538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.557934, 38.091114, 40.150707>,  <36.877914, 37.957977, 39.950989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557934, 38.091114, 40.150707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597584, -0.366364, -0.713211,
		-0.054462, -0.868905, 0.491974,
		-0.799954, 0.332838, 0.499291,
		36.317947, 38.190964, 40.300495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.563412, 33.787182, 27.005831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252596, 33.942970, 26.808033>,  <28.066107, 34.036442, 26.689354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252596, 33.942970, 26.808033>,  <28.563412, 33.787182, 27.005831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252596, 33.942970, 26.808033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490739, 0.117134, 0.863397,
		0.394190, 0.913560, 0.100111,
		-0.777039, 0.389470, -0.494493,
		28.019484, 34.059811, 26.659685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395012, 34.487831, 27.288960>,  <28.563412, 33.787182, 27.005831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395012, 34.487831, 27.288960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.069714, 34.320385, 27.127274>,  <27.874535, 34.219917, 27.030262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.069714, 34.320385, 27.127274>,  <28.395012, 34.487831, 27.288960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069714, 34.320385, 27.127274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424270, -0.048882, 0.904216,
		-0.398278, 0.906846, -0.137853,
		-0.813246, -0.418616, -0.404216,
		27.825739, 34.194801, 27.006008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825893, 34.831532, 27.512842>,  <28.395012, 34.487831, 27.288960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825893, 34.831532, 27.512842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692673, 34.470917, 27.402348>,  <27.612741, 34.254547, 27.336050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692673, 34.470917, 27.402348>,  <27.825893, 34.831532, 27.512842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692673, 34.470917, 27.402348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555403, -0.049177, 0.830126,
		-0.761975, 0.429896, -0.484339,
		-0.333049, -0.901538, -0.276237,
		27.592758, 34.200455, 27.319477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167528, 34.870377, 27.754091>,  <27.825893, 34.831532, 27.512842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167528, 34.870377, 27.754091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186605, 34.478119, 27.678131>,  <27.198051, 34.242764, 27.632555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186605, 34.478119, 27.678131>,  <27.167528, 34.870377, 27.754091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186605, 34.478119, 27.678131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734461, -0.163282, 0.658716,
		-0.676973, 0.108057, -0.728032,
		0.047695, -0.980644, -0.189901,
		27.200914, 34.183926, 27.621161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426472, 34.558678, 27.705271>,  <27.167528, 34.870377, 27.754091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426472, 34.558678, 27.705271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685112, 34.263908, 27.784111>,  <26.840296, 34.087048, 27.831415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685112, 34.263908, 27.784111>,  <26.426472, 34.558678, 27.705271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685112, 34.263908, 27.784111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620445, -0.357730, 0.697910,
		-0.443801, -0.573556, -0.688531,
		0.646598, -0.736928, 0.197098,
		26.879091, 34.042831, 27.843241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035194, 33.848320, 27.756763>,  <26.426472, 34.558678, 27.705271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035194, 33.848320, 27.756763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387127, 33.769676, 27.929852>,  <26.598286, 33.722492, 28.033705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387127, 33.769676, 27.929852>,  <26.035194, 33.848320, 27.756763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387127, 33.769676, 27.929852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474443, -0.417627, 0.774914,
		0.028363, -0.887093, -0.460719,
		0.879829, -0.196606, 0.432720,
		26.651075, 33.710693, 28.059668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050749, 33.166359, 27.969431>,  <26.035194, 33.848320, 27.756763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050749, 33.166359, 27.969431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.330872, 33.348576, 28.189270>,  <26.498945, 33.457905, 28.321173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.330872, 33.348576, 28.189270>,  <26.050749, 33.166359, 27.969431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330872, 33.348576, 28.189270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464595, -0.293672, 0.835409,
		0.541962, -0.840382, 0.005981,
		0.700306, 0.455538, 0.549596,
		26.540964, 33.485237, 28.354149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127460, 32.777634, 28.599712>,  <26.050749, 33.166359, 27.969431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127460, 32.777634, 28.599712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.310581, 33.117695, 28.703756>,  <26.420454, 33.321732, 28.766184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.310581, 33.117695, 28.703756>,  <26.127460, 32.777634, 28.599712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310581, 33.117695, 28.703756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388379, -0.071940, 0.918687,
		0.799738, -0.521597, 0.297248,
		0.457801, 0.850154, 0.260111,
		26.447922, 33.372742, 28.781790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489811, 32.620384, 29.203115>,  <26.127460, 32.777634, 28.599712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489811, 32.620384, 29.203115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411934, 33.012703, 29.198608>,  <26.365208, 33.248096, 29.195904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411934, 33.012703, 29.198608>,  <26.489811, 32.620384, 29.203115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411934, 33.012703, 29.198608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310124, -0.050654, 0.949346,
		0.930547, 0.188327, 0.314031,
		-0.194694, 0.980799, -0.011268,
		26.353525, 33.306942, 29.195229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672956, 32.709660, 29.884880>,  <26.489811, 32.620384, 29.203115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672956, 32.709660, 29.884880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461403, 33.028259, 29.767666>,  <26.334471, 33.219418, 29.697338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461403, 33.028259, 29.767666>,  <26.672956, 32.709660, 29.884880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461403, 33.028259, 29.767666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312820, 0.138015, 0.939731,
		0.788940, 0.588676, 0.176167,
		-0.528883, 0.796500, -0.293036,
		26.302738, 33.267208, 29.679756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929571, 33.397739, 30.259277>,  <26.672956, 32.709660, 29.884880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929571, 33.397739, 30.259277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541603, 33.428967, 30.167053>,  <26.308823, 33.447704, 30.111719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.541603, 33.428967, 30.167053>,  <26.929571, 33.397739, 30.259277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541603, 33.428967, 30.167053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209105, 0.217659, 0.953362,
		0.124610, 0.972898, -0.194788,
		-0.969921, 0.078068, -0.230560,
		26.250628, 33.452385, 30.097885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631914, 33.935955, 30.703224>,  <26.929571, 33.397739, 30.259277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631914, 33.935955, 30.703224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.300211, 33.769585, 30.553909>,  <26.101189, 33.669762, 30.464321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.300211, 33.769585, 30.553909>,  <26.631914, 33.935955, 30.703224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300211, 33.769585, 30.553909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464956, 0.142854, 0.873733,
		-0.310079, 0.898110, -0.311848,
		-0.829257, -0.415921, -0.373285,
		26.051434, 33.644810, 30.441923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146566, 34.424591, 30.941622>,  <26.631914, 33.935955, 30.703224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146566, 34.424591, 30.941622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959732, 34.088047, 30.832846>,  <25.847631, 33.886120, 30.767580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.959732, 34.088047, 30.832846>,  <26.146566, 34.424591, 30.941622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959732, 34.088047, 30.832846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633828, 0.104151, 0.766429,
		-0.616518, 0.530350, -0.581923,
		-0.467084, -0.841357, -0.271940,
		25.819607, 33.835640, 30.751263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389505, 34.554813, 30.893410>,  <26.146566, 34.424591, 30.941622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.389505, 34.554813, 30.893410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.412006, 34.157906, 30.937643>,  <25.425507, 33.919762, 30.964184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.412006, 34.157906, 30.937643>,  <25.389505, 34.554813, 30.893410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412006, 34.157906, 30.937643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399237, 0.079162, 0.913424,
		-0.915120, -0.095533, -0.391699,
		0.056254, -0.992273, 0.110583,
		25.428883, 33.860222, 30.970818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.831554, 34.458649, 31.337830>,  <25.389505, 34.554813, 30.893410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.831554, 34.458649, 31.337830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.061911, 34.132240, 31.357697>,  <25.200125, 33.936398, 31.369617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.061911, 34.132240, 31.357697>,  <24.831554, 34.458649, 31.337830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061911, 34.132240, 31.357697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082718, 0.002280, 0.996570,
		-0.813333, -0.578021, -0.066186,
		0.575888, -0.816019, 0.049667,
		25.234676, 33.887436, 31.372597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.457182, 33.975597, 31.779074>,  <24.831554, 34.458649, 31.337830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.457182, 33.975597, 31.779074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.841185, 33.863724, 31.773884>,  <25.071587, 33.796600, 31.770771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.841185, 33.863724, 31.773884>,  <24.457182, 33.975597, 31.779074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841185, 33.863724, 31.773884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008909, -0.076829, 0.997004,
		-0.279842, -0.957013, -0.076248,
		0.960005, -0.279683, -0.012974,
		25.129187, 33.779819, 31.769991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.479061, 33.536880, 32.291000>,  <24.457182, 33.975597, 31.779074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.479061, 33.536880, 32.291000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.860762, 33.644611, 32.239048>,  <25.089783, 33.709248, 32.207878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.860762, 33.644611, 32.239048>,  <24.479061, 33.536880, 32.291000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860762, 33.644611, 32.239048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133104, 0.006324, 0.991082,
		0.267746, -0.963028, -0.029813,
		0.954251, 0.269326, -0.129876,
		25.147038, 33.725410, 32.200085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864414, 33.227139, 32.911655>,  <24.479061, 33.536880, 32.291000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864414, 33.227139, 32.911655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.111832, 33.503590, 32.762127>,  <25.260283, 33.669460, 32.672409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.111832, 33.503590, 32.762127>,  <24.864414, 33.227139, 32.911655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111832, 33.503590, 32.762127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454274, 0.073637, 0.887813,
		0.641123, -0.718967, -0.268416,
		0.618544, 0.691132, -0.373819,
		25.297396, 33.710930, 32.649982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.625492, 33.078667, 33.019596>,  <24.864414, 33.227139, 32.911655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.625492, 33.078667, 33.019596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.612295, 33.476460, 32.979763>,  <25.604376, 33.715134, 32.955864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.612295, 33.476460, 32.979763>,  <25.625492, 33.078667, 33.019596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612295, 33.476460, 32.979763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422404, 0.104177, 0.900401,
		0.905807, -0.012357, -0.423510,
		-0.032993, 0.994482, -0.099584,
		25.602398, 33.774803, 32.949886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185602, 33.219776, 33.380535>,  <25.625492, 33.078667, 33.019596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185602, 33.219776, 33.380535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.973509, 33.556431, 33.339535>,  <25.846252, 33.758423, 33.314934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.973509, 33.556431, 33.339535>,  <26.185602, 33.219776, 33.380535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973509, 33.556431, 33.339535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277678, 0.286611, 0.916924,
		0.801092, 0.457721, -0.385673,
		-0.530233, 0.841633, -0.102503,
		25.814440, 33.808922, 33.308784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707752, 33.535473, 33.022583>,  <26.185602, 33.219776, 33.380535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707752, 33.535473, 33.022583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050491, 33.356819, 32.919563>,  <27.256134, 33.249626, 32.857750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050491, 33.356819, 32.919563>,  <26.707752, 33.535473, 33.022583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050491, 33.356819, 32.919563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192241, 0.740292, -0.644214,
		0.478388, 0.502482, 0.720178,
		0.856848, -0.446632, -0.257549,
		27.307547, 33.222828, 32.842300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285477, 34.024567, 32.996773>,  <26.707752, 33.535473, 33.022583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285477, 34.024567, 32.996773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389643, 33.718781, 32.760883>,  <27.452143, 33.535309, 32.619350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.389643, 33.718781, 32.760883>,  <27.285477, 34.024567, 32.996773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389643, 33.718781, 32.760883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365788, 0.643381, -0.672503,
		0.893523, -0.040584, 0.447179,
		0.260414, -0.764470, -0.589721,
		27.467768, 33.489441, 32.583965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038473, 34.085159, 32.901539>,  <27.285477, 34.024567, 32.996773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038473, 34.085159, 32.901539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900236, 33.879677, 32.587425>,  <27.817295, 33.756390, 32.398956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900236, 33.879677, 32.587425>,  <28.038473, 34.085159, 32.901539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900236, 33.879677, 32.587425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439210, 0.650976, -0.619133,
		0.829254, -0.558872, 0.000652,
		-0.345592, -0.513705, -0.785286,
		27.796558, 33.725567, 32.351841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638388, 34.201229, 32.344746>,  <28.038473, 34.085159, 32.901539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638388, 34.201229, 32.344746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298254, 34.095238, 32.162880>,  <28.094173, 34.031643, 32.053761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.298254, 34.095238, 32.162880>,  <28.638388, 34.201229, 32.344746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298254, 34.095238, 32.162880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239048, 0.575208, -0.782299,
		0.468816, -0.773902, -0.425777,
		-0.850333, -0.264974, -0.454667,
		28.043154, 34.015747, 32.026482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886766, 34.126873, 31.628168>,  <28.638388, 34.201229, 32.344746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886766, 34.126873, 31.628168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487982, 34.132473, 31.597525>,  <28.248711, 34.135834, 31.579140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487982, 34.132473, 31.597525>,  <28.886766, 34.126873, 31.628168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487982, 34.132473, 31.597525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068514, 0.625347, -0.777333,
		0.037022, -0.780221, -0.624407,
		-0.996963, 0.014003, -0.076608,
		28.188892, 34.136673, 31.574543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727634, 33.885429, 31.098898>,  <28.886766, 34.126873, 31.628168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727634, 33.885429, 31.098898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408064, 34.112514, 31.178312>,  <28.216322, 34.248764, 31.225962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.408064, 34.112514, 31.178312>,  <28.727634, 33.885429, 31.098898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408064, 34.112514, 31.178312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123288, 0.477692, -0.869834,
		-0.588655, -0.670457, -0.451633,
		-0.798928, 0.567713, 0.198536,
		28.168386, 34.282829, 31.237873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433542, 34.014126, 30.413574>,  <28.727634, 33.885429, 31.098898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433542, 34.014126, 30.413574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268021, 34.288853, 30.652590>,  <28.168709, 34.453690, 30.796000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.268021, 34.288853, 30.652590>,  <28.433542, 34.014126, 30.413574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268021, 34.288853, 30.652590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038729, 0.669059, -0.742200,
		-0.909543, -0.283982, -0.303458,
		-0.413802, 0.686815, 0.597539,
		28.143881, 34.494896, 30.831852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797768, 34.279232, 30.043737>,  <28.433542, 34.014126, 30.413574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797768, 34.279232, 30.043737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886694, 34.554592, 30.319906>,  <27.940050, 34.719807, 30.485607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886694, 34.554592, 30.319906>,  <27.797768, 34.279232, 30.043737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886694, 34.554592, 30.319906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061515, 0.696830, -0.714594,
		-0.973032, 0.201337, 0.112569,
		0.222316, 0.688398, 0.690423,
		27.953388, 34.761112, 30.527033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329782, 34.811916, 29.998663>,  <27.797768, 34.279232, 30.043737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329782, 34.811916, 29.998663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644207, 34.981724, 30.178392>,  <27.832863, 35.083607, 30.286230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.644207, 34.981724, 30.178392>,  <27.329782, 34.811916, 29.998663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644207, 34.981724, 30.178392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020007, 0.709031, -0.704893,
		-0.617823, 0.563080, 0.548850,
		0.786063, 0.424518, 0.449321,
		27.880026, 35.109077, 30.313189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221146, 35.542027, 30.110010>,  <27.329782, 34.811916, 29.998663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221146, 35.542027, 30.110010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620668, 35.531414, 30.126421>,  <27.860382, 35.525047, 30.136267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.620668, 35.531414, 30.126421>,  <27.221146, 35.542027, 30.110010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620668, 35.531414, 30.126421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048339, 0.658235, -0.751258,
		-0.007076, 0.752344, 0.658732,
		0.998806, -0.026527, 0.041025,
		27.920311, 35.523457, 30.138729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405994, 36.130718, 29.872686>,  <27.221146, 35.542027, 30.110010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405994, 36.130718, 29.872686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753351, 35.945465, 29.801802>,  <27.961765, 35.834312, 29.759272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753351, 35.945465, 29.801802>,  <27.405994, 36.130718, 29.872686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753351, 35.945465, 29.801802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126733, 0.552783, -0.823632,
		0.479410, 0.692778, 0.538726,
		0.868392, -0.463132, -0.177212,
		28.013868, 35.806526, 29.748638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921745, 36.700516, 29.728268>,  <27.405994, 36.130718, 29.872686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921745, 36.700516, 29.728268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075615, 36.353409, 29.602409>,  <28.167936, 36.145145, 29.526894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.075615, 36.353409, 29.602409>,  <27.921745, 36.700516, 29.728268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075615, 36.353409, 29.602409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276895, 0.433660, -0.857478,
		0.880541, 0.242727, 0.407100,
		0.384676, -0.867769, -0.314645,
		28.191017, 36.093079, 29.508017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629068, 36.897167, 29.459757>,  <27.921745, 36.700516, 29.728268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629068, 36.897167, 29.459757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509499, 36.554073, 29.292458>,  <28.437756, 36.348217, 29.192078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509499, 36.554073, 29.292458>,  <28.629068, 36.897167, 29.459757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509499, 36.554073, 29.292458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123916, 0.399689, -0.908237,
		0.946197, -0.323323, -0.013190,
		-0.298926, -0.857736, -0.418249,
		28.419821, 36.296753, 29.166983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978470, 36.893780, 28.867033>,  <28.629068, 36.897167, 29.459757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978470, 36.893780, 28.867033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668285, 36.646835, 28.814070>,  <28.482174, 36.498669, 28.782291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668285, 36.646835, 28.814070>,  <28.978470, 36.893780, 28.867033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668285, 36.646835, 28.814070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062499, 0.283729, -0.956866,
		0.628295, -0.733736, -0.258605,
		-0.775460, -0.617357, -0.132407,
		28.435648, 36.461628, 28.774347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960218, 36.802036, 28.138597>,  <28.978470, 36.893780, 28.867033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960218, 36.802036, 28.138597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622204, 36.616600, 28.245178>,  <28.419395, 36.505337, 28.309126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622204, 36.616600, 28.245178>,  <28.960218, 36.802036, 28.138597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622204, 36.616600, 28.245178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380801, 0.171946, -0.908529,
		0.375371, -0.869205, -0.321837,
		-0.845037, -0.463592, 0.266450,
		28.368692, 36.477524, 28.325113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878176, 36.301067, 27.643972>,  <28.960218, 36.802036, 28.138597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878176, 36.301067, 27.643972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526449, 36.406780, 27.802443>,  <28.315413, 36.470207, 27.897526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526449, 36.406780, 27.802443>,  <28.878176, 36.301067, 27.643972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526449, 36.406780, 27.802443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308497, 0.317663, -0.896616,
		-0.362807, -0.910630, -0.197798,
		-0.879318, 0.264278, 0.396177,
		28.262653, 36.486065, 27.921295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461090, 36.149326, 27.184912>,  <28.878176, 36.301067, 27.643972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461090, 36.149326, 27.184912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200279, 36.369091, 27.393915>,  <28.043793, 36.500950, 27.519318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200279, 36.369091, 27.393915>,  <28.461090, 36.149326, 27.184912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200279, 36.369091, 27.393915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377634, 0.362258, -0.852151,
		-0.657462, -0.752940, -0.028726,
		-0.652025, 0.549409, 0.522507,
		28.004671, 36.533913, 27.550667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827635, 36.141930, 26.796164>,  <28.461090, 36.149326, 27.184912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827635, 36.141930, 26.796164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807476, 36.489273, 26.993509>,  <27.795382, 36.697681, 27.111917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807476, 36.489273, 26.993509>,  <27.827635, 36.141930, 26.796164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807476, 36.489273, 26.993509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468125, 0.415828, -0.779709,
		-0.882224, -0.270251, 0.385546,
		-0.050397, 0.868361, 0.493365,
		27.792356, 36.749783, 27.141520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299089, 36.390995, 26.447079>,  <27.827635, 36.141930, 26.796164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299089, 36.390995, 26.447079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445097, 36.689571, 26.669643>,  <27.532701, 36.868717, 26.803181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.445097, 36.689571, 26.669643>,  <27.299089, 36.390995, 26.447079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445097, 36.689571, 26.669643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346192, 0.663617, -0.663147,
		-0.864240, 0.049438, 0.500645,
		0.365020, 0.746437, 0.556409,
		27.554604, 36.913502, 26.836567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735706, 36.870377, 26.506189>,  <27.299089, 36.390995, 26.447079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735706, 36.870377, 26.506189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078888, 37.064674, 26.573084>,  <27.284798, 37.181252, 26.613220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.078888, 37.064674, 26.573084>,  <26.735706, 36.870377, 26.506189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078888, 37.064674, 26.573084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285031, 0.720923, -0.631686,
		-0.427400, 0.494291, 0.756971,
		0.857955, 0.485743, 0.167234,
		27.336275, 37.210396, 26.623255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620430, 37.531567, 26.460960>,  <26.735706, 36.870377, 26.506189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620430, 37.531567, 26.460960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017653, 37.530060, 26.413935>,  <27.255987, 37.529156, 26.385719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017653, 37.530060, 26.413935>,  <26.620430, 37.531567, 26.460960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017653, 37.530060, 26.413935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063523, 0.824037, -0.562963,
		0.098994, 0.566523, 0.818078,
		0.993058, -0.003763, -0.117562,
		27.315571, 37.528931, 26.378666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815969, 38.191479, 26.618818>,  <26.620430, 37.531567, 26.460960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815969, 38.191479, 26.618818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080256, 38.022942, 26.370325>,  <27.238827, 37.921818, 26.221230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080256, 38.022942, 26.370325>,  <26.815969, 38.191479, 26.618818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080256, 38.022942, 26.370325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116355, 0.760114, -0.639288,
		0.741566, 0.494669, 0.453192,
		0.660713, -0.421342, -0.621232,
		27.278469, 37.896538, 26.183956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.474506, 32.590599, 43.948452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.226036, 32.277855, 43.927147>,  <39.076954, 32.090210, 43.914364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.226036, 32.277855, 43.927147>,  <39.474506, 32.590599, 43.948452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226036, 32.277855, 43.927147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055344, -0.111563, 0.992215,
		-0.781717, 0.613389, 0.112572,
		-0.621173, -0.781862, -0.053263,
		39.039684, 32.043297, 43.911167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096596, 32.655540, 44.476036>,  <39.474506, 32.590599, 43.948452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096596, 32.655540, 44.476036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019169, 32.270874, 44.398342>,  <38.972713, 32.040073, 44.351727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.019169, 32.270874, 44.398342>,  <39.096596, 32.655540, 44.476036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019169, 32.270874, 44.398342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131316, -0.221598, 0.966256,
		-0.972259, 0.161530, 0.169177,
		-0.193569, -0.961666, -0.194239,
		38.961098, 31.982374, 44.340069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799412, 32.366817, 45.117432>,  <39.096596, 32.655540, 44.476036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799412, 32.366817, 45.117432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.912437, 32.050583, 44.900127>,  <38.980251, 31.860844, 44.769745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.912437, 32.050583, 44.900127>,  <38.799412, 32.366817, 45.117432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912437, 32.050583, 44.900127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117194, -0.533647, 0.837548,
		-0.952062, -0.300330, -0.058138,
		0.282566, -0.790584, -0.543262,
		38.997208, 31.813408, 44.737148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299072, 31.701344, 45.249744>,  <38.799412, 32.366817, 45.117432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299072, 31.701344, 45.249744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648388, 31.572950, 45.103134>,  <38.857979, 31.495914, 45.015167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648388, 31.572950, 45.103134>,  <38.299072, 31.701344, 45.249744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648388, 31.572950, 45.103134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072593, -0.658173, 0.749358,
		-0.481765, -0.681013, -0.551474,
		0.873289, -0.320981, -0.366521,
		38.910374, 31.476656, 44.993179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285255, 30.923126, 45.277817>,  <38.299072, 31.701344, 45.249744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285255, 30.923126, 45.277817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667324, 31.040756, 45.264130>,  <38.896564, 31.111334, 45.255917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667324, 31.040756, 45.264130>,  <38.285255, 30.923126, 45.277817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667324, 31.040756, 45.264130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230936, -0.667755, 0.707653,
		0.185257, -0.683830, -0.705731,
		0.955169, 0.294076, -0.034215,
		38.953876, 31.128979, 45.253864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662941, 30.364559, 45.274097>,  <38.285255, 30.923126, 45.277817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662941, 30.364559, 45.274097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926704, 30.634827, 45.405945>,  <39.084961, 30.796988, 45.485054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.926704, 30.634827, 45.405945>,  <38.662941, 30.364559, 45.274097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926704, 30.634827, 45.405945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288341, -0.632228, 0.719130,
		0.694289, -0.379158, -0.611720,
		0.659410, 0.675668, 0.329622,
		39.124527, 30.837526, 45.504833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122231, 29.970341, 45.532330>,  <38.662941, 30.364559, 45.274097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122231, 29.970341, 45.532330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240181, 30.312960, 45.701740>,  <39.310951, 30.518532, 45.803387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240181, 30.312960, 45.701740>,  <39.122231, 29.970341, 45.532330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240181, 30.312960, 45.701740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253529, -0.497485, 0.829597,
		0.921289, -0.137248, -0.363854,
		0.294872, 0.856547, 0.423531,
		39.328644, 30.569923, 45.828800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746109, 29.807848, 45.859268>,  <39.122231, 29.970341, 45.532330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746109, 29.807848, 45.859268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670410, 30.158337, 46.036545>,  <39.624992, 30.368629, 46.142910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670410, 30.158337, 46.036545>,  <39.746109, 29.807848, 45.859268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670410, 30.158337, 46.036545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173860, -0.414318, 0.893372,
		0.966415, 0.246121, -0.073932,
		-0.189247, 0.876222, 0.443194,
		39.613636, 30.421204, 46.169502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380684, 29.975628, 46.247173>,  <39.746109, 29.807848, 45.859268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380684, 29.975628, 46.247173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056358, 30.155502, 46.397034>,  <39.861763, 30.263426, 46.486950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056358, 30.155502, 46.397034>,  <40.380684, 29.975628, 46.247173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056358, 30.155502, 46.397034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216524, -0.364241, 0.905785,
		0.543781, 0.815544, 0.197965,
		-0.810814, 0.449684, 0.374652,
		39.813114, 30.290407, 46.509430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618443, 30.273102, 46.862221>,  <40.380684, 29.975628, 46.247173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618443, 30.273102, 46.862221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220394, 30.257759, 46.898563>,  <39.981564, 30.248554, 46.920368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220394, 30.257759, 46.898563>,  <40.618443, 30.273102, 46.862221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220394, 30.257759, 46.898563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097086, -0.218840, 0.970919,
		-0.017357, 0.975007, 0.221497,
		-0.995125, -0.038356, 0.090861,
		39.921856, 30.246252, 46.925823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425678, 30.634073, 47.420986>,  <40.618443, 30.273102, 46.862221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425678, 30.634073, 47.420986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113152, 30.386982, 47.385326>,  <39.925636, 30.238728, 47.363930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.113152, 30.386982, 47.385326>,  <40.425678, 30.634073, 47.420986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113152, 30.386982, 47.385326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034475, -0.099909, 0.994399,
		-0.623177, 0.780018, 0.056765,
		-0.781321, -0.617729, -0.089152,
		39.878754, 30.201664, 47.358582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995247, 30.730625, 48.025921>,  <40.425678, 30.634073, 47.420986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995247, 30.730625, 48.025921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.917065, 30.366224, 47.880665>,  <39.870155, 30.147583, 47.793510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.917065, 30.366224, 47.880665>,  <39.995247, 30.730625, 48.025921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917065, 30.366224, 47.880665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117599, -0.389382, 0.913538,
		-0.973636, 0.135852, 0.183241,
		-0.195456, -0.911003, -0.363140,
		39.858429, 30.092924, 47.771725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142193, 31.263054, 48.482777>,  <39.995247, 30.730625, 48.025921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142193, 31.263054, 48.482777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783825, 31.344896, 48.325058>,  <39.568806, 31.394001, 48.230427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783825, 31.344896, 48.325058>,  <40.142193, 31.263054, 48.482777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783825, 31.344896, 48.325058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188943, 0.627806, 0.755090,
		0.402036, 0.750997, -0.523804,
		-0.895917, 0.204604, -0.394296,
		39.515049, 31.406277, 48.206768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152363, 31.934845, 48.747280>,  <40.142193, 31.263054, 48.482777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152363, 31.934845, 48.747280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780720, 31.871075, 48.613808>,  <39.557735, 31.832813, 48.533726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780720, 31.871075, 48.613808>,  <40.152363, 31.934845, 48.747280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780720, 31.871075, 48.613808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317727, 0.805839, 0.499673,
		0.189231, 0.570269, -0.799365,
		-0.929108, -0.159426, -0.333680,
		39.501987, 31.823246, 48.513702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205067, 32.486378, 49.197460>,  <40.152363, 31.934845, 48.747280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205067, 32.486378, 49.197460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935650, 32.766884, 49.290897>,  <39.773998, 32.935188, 49.346958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935650, 32.766884, 49.290897>,  <40.205067, 32.486378, 49.197460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935650, 32.766884, 49.290897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011245, 0.325711, -0.945403,
		-0.739064, -0.634141, -0.227265,
		-0.673541, 0.701269, 0.233591,
		39.733589, 32.977264, 49.360973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503822, 32.486923, 48.807217>,  <40.205067, 32.486378, 49.197460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503822, 32.486923, 48.807217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552406, 32.863289, 48.933666>,  <39.581558, 33.089108, 49.009537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552406, 32.863289, 48.933666>,  <39.503822, 32.486923, 48.807217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552406, 32.863289, 48.933666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177084, 0.333914, -0.925820,
		-0.976672, 0.056470, 0.207178,
		0.121461, 0.940911, 0.316125,
		39.588844, 33.145561, 49.028503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011330, 32.757317, 48.435265>,  <39.503822, 32.486923, 48.807217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011330, 32.757317, 48.435265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240456, 33.059689, 48.562042>,  <39.377930, 33.241112, 48.638111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.240456, 33.059689, 48.562042>,  <39.011330, 32.757317, 48.435265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240456, 33.059689, 48.562042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177040, 0.491639, -0.852612,
		-0.800341, 0.432272, 0.415446,
		0.572810, 0.755931, 0.316949,
		39.412300, 33.286469, 48.657127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711174, 33.268333, 48.144150>,  <39.011330, 32.757317, 48.435265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711174, 33.268333, 48.144150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062740, 33.428780, 48.247387>,  <39.273682, 33.525047, 48.309330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.062740, 33.428780, 48.247387>,  <38.711174, 33.268333, 48.144150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062740, 33.428780, 48.247387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024561, 0.578446, -0.815351,
		-0.476337, 0.710289, 0.518259,
		0.878919, 0.401111, 0.258090,
		39.326416, 33.549114, 48.324814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676498, 33.926746, 48.079224>,  <38.711174, 33.268333, 48.144150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676498, 33.926746, 48.079224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071823, 33.866421, 48.070370>,  <39.309017, 33.830223, 48.065056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.071823, 33.866421, 48.070370>,  <38.676498, 33.926746, 48.079224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071823, 33.866421, 48.070370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050424, 0.460500, -0.886227,
		0.143850, 0.874754, 0.462723,
		0.988314, -0.150816, -0.022134,
		39.368317, 33.821175, 48.063728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935101, 34.580528, 47.742973>,  <38.676498, 33.926746, 48.079224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935101, 34.580528, 47.742973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.219479, 34.300365, 47.717705>,  <39.390106, 34.132267, 47.702545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.219479, 34.300365, 47.717705>,  <38.935101, 34.580528, 47.742973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219479, 34.300365, 47.717705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167176, 0.255569, -0.952227,
		0.683091, 0.666419, 0.298786,
		0.710943, -0.700407, -0.063167,
		39.432762, 34.090244, 47.698753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619904, 34.854782, 47.552673>,  <38.935101, 34.580528, 47.742973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619904, 34.854782, 47.552673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.589127, 34.472916, 47.437645>,  <39.570660, 34.243797, 47.368626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.589127, 34.472916, 47.437645>,  <39.619904, 34.854782, 47.552673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589127, 34.472916, 47.437645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051934, 0.291876, -0.955045,
		0.995682, -0.058548, -0.072037,
		-0.076942, -0.954663, -0.287575,
		39.566044, 34.186516, 47.351372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024254, 34.881805, 46.977623>,  <39.619904, 34.854782, 47.552673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024254, 34.881805, 46.977623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.839558, 34.529308, 46.937202>,  <39.728741, 34.317810, 46.912952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.839558, 34.529308, 46.937202>,  <40.024254, 34.881805, 46.977623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839558, 34.529308, 46.937202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081254, 0.071419, -0.994131,
		0.883287, -0.467239, 0.038628,
		-0.461738, -0.881242, -0.101049,
		39.701035, 34.264935, 46.906887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487900, 34.429241, 46.527885>,  <40.024254, 34.881805, 46.977623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487900, 34.429241, 46.527885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111217, 34.295319, 46.514656>,  <39.885208, 34.214966, 46.506718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111217, 34.295319, 46.514656>,  <40.487900, 34.429241, 46.527885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111217, 34.295319, 46.514656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011100, 0.067332, -0.997669,
		0.336257, -0.939877, -0.059690,
		-0.941705, -0.334810, -0.033073,
		39.828705, 34.194874, 46.504734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461269, 34.072468, 45.876236>,  <40.487900, 34.429241, 46.527885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461269, 34.072468, 45.876236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.075050, 34.122528, 45.967499>,  <39.843319, 34.152565, 46.022255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.075050, 34.122528, 45.967499>,  <40.461269, 34.072468, 45.876236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075050, 34.122528, 45.967499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205510, 0.171131, -0.963576,
		-0.159641, -0.977267, -0.139514,
		-0.965546, 0.125155, 0.228158,
		39.785385, 34.160076, 46.035946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102783, 33.844990, 45.276173>,  <40.461269, 34.072468, 45.876236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102783, 33.844990, 45.276173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824566, 34.072758, 45.451435>,  <39.657635, 34.209419, 45.556591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.824566, 34.072758, 45.451435>,  <40.102783, 33.844990, 45.276173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824566, 34.072758, 45.451435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431061, 0.157164, -0.888530,
		-0.574806, -0.806886, 0.136139,
		-0.695546, 0.569417, 0.438156,
		39.615902, 34.243584, 45.582882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633518, 33.642643, 44.852364>,  <40.102783, 33.844990, 45.276173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633518, 33.642643, 44.852364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477627, 33.972153, 45.017052>,  <39.384094, 34.169857, 45.115864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477627, 33.972153, 45.017052>,  <39.633518, 33.642643, 44.852364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477627, 33.972153, 45.017052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456579, 0.215420, -0.863209,
		-0.799782, -0.524395, 0.292163,
		-0.389724, 0.823774, 0.411717,
		39.360710, 34.219284, 45.140568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863026, 33.558891, 44.798176>,  <39.633518, 33.642643, 44.852364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863026, 33.558891, 44.798176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.958744, 33.945259, 44.837650>,  <39.016174, 34.177078, 44.861336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.958744, 33.945259, 44.837650>,  <38.863026, 33.558891, 44.798176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958744, 33.945259, 44.837650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508793, 0.211310, -0.834553,
		-0.826962, 0.149498, 0.542018,
		0.239298, 0.965918, 0.098682,
		39.030533, 34.235035, 44.867256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280445, 33.979359, 44.697067>,  <38.863026, 33.558891, 44.798176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280445, 33.979359, 44.697067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585304, 34.222607, 44.608238>,  <38.768219, 34.368557, 44.554939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.585304, 34.222607, 44.608238>,  <38.280445, 33.979359, 44.697067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585304, 34.222607, 44.608238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398583, 0.170452, -0.901153,
		-0.510159, 0.775327, 0.372297,
		0.762148, 0.608123, -0.222075,
		38.813950, 34.405045, 44.541615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624752, 34.209736, 45.016533>,  <38.280445, 33.979359, 44.697067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624752, 34.209736, 45.016533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262997, 34.040436, 45.038227>,  <37.045944, 33.938854, 45.051243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262997, 34.040436, 45.038227>,  <37.624752, 34.209736, 45.016533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262997, 34.040436, 45.038227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269811, -0.468742, 0.841120,
		-0.330586, 0.775331, 0.538122,
		-0.904387, -0.423254, 0.054233,
		36.991680, 33.913460, 45.054497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454647, 34.277126, 45.683567>,  <37.624752, 34.209736, 45.016533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454647, 34.277126, 45.683567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210182, 33.988655, 45.553108>,  <37.063503, 33.815571, 45.474831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210182, 33.988655, 45.553108>,  <37.454647, 34.277126, 45.683567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210182, 33.988655, 45.553108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056338, -0.450658, 0.890917,
		-0.789495, 0.526123, 0.316057,
		-0.611166, -0.721180, -0.326151,
		37.026833, 33.772301, 45.455261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950115, 34.092831, 46.185169>,  <37.454647, 34.277126, 45.683567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950115, 34.092831, 46.185169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934578, 33.759018, 45.965336>,  <36.925255, 33.558731, 45.833435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934578, 33.759018, 45.965336>,  <36.950115, 34.092831, 46.185169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934578, 33.759018, 45.965336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047003, -0.550919, 0.833234,
		-0.998139, 0.006531, 0.060623,
		-0.038840, -0.834533, -0.549587,
		36.922924, 33.508659, 45.800461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493515, 33.673855, 46.445362>,  <36.950115, 34.092831, 46.185169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493515, 33.673855, 46.445362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724354, 33.415409, 46.245564>,  <36.862858, 33.260342, 46.125683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724354, 33.415409, 46.245564>,  <36.493515, 33.673855, 46.445362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724354, 33.415409, 46.245564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014440, -0.603458, 0.797264,
		-0.816549, -0.467309, -0.338923,
		0.577095, -0.646112, -0.499501,
		36.897484, 33.221577, 46.095715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129116, 32.958984, 46.428150>,  <36.493515, 33.673855, 46.445362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129116, 32.958984, 46.428150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.524757, 32.936314, 46.373810>,  <36.762142, 32.922710, 46.341206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.524757, 32.936314, 46.373810>,  <36.129116, 32.958984, 46.428150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524757, 32.936314, 46.373810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089841, -0.498610, 0.862158,
		-0.116601, -0.864971, -0.488087,
		0.989107, -0.056679, -0.135848,
		36.821491, 32.919312, 46.333054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268013, 32.277748, 46.616779>,  <36.129116, 32.958984, 46.428150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268013, 32.277748, 46.616779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628136, 32.451675, 46.609032>,  <36.844212, 32.556030, 46.604382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.628136, 32.451675, 46.609032>,  <36.268013, 32.277748, 46.616779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628136, 32.451675, 46.609032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239690, -0.458154, 0.855946,
		0.363304, -0.775261, -0.516702,
		0.900310, 0.434817, -0.019374,
		36.898228, 32.582119, 46.603218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765171, 31.758232, 46.760174>,  <36.268013, 32.277748, 46.616779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765171, 31.758232, 46.760174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940308, 32.106941, 46.848087>,  <37.045391, 32.316166, 46.900837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940308, 32.106941, 46.848087>,  <36.765171, 31.758232, 46.760174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940308, 32.106941, 46.848087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164991, -0.318225, 0.933547,
		0.883782, -0.372485, -0.283167,
		0.437843, 0.871773, 0.219785,
		37.071659, 32.368473, 46.914024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010277, 31.155119, 46.454189>,  <36.765171, 31.758232, 46.760174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010277, 31.155119, 46.454189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761868, 30.842407, 46.476665>,  <36.612823, 30.654781, 46.490150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761868, 30.842407, 46.476665>,  <37.010277, 31.155119, 46.454189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761868, 30.842407, 46.476665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504637, 0.343953, -0.791857,
		0.599729, -0.520116, -0.608116,
		-0.621020, -0.781777, 0.056191,
		36.575562, 30.607874, 46.493523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023533, 30.939615, 45.810265>,  <37.010277, 31.155119, 46.454189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023533, 30.939615, 45.810265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682114, 30.784475, 45.949421>,  <36.477261, 30.691391, 46.032913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.682114, 30.784475, 45.949421>,  <37.023533, 30.939615, 45.810265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682114, 30.784475, 45.949421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359774, -0.044207, -0.931992,
		0.376854, -0.920661, -0.101806,
		-0.853548, -0.387852, 0.347889,
		36.426048, 30.668119, 46.053787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926994, 30.281933, 45.484699>,  <37.023533, 30.939615, 45.810265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926994, 30.281933, 45.484699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581169, 30.452444, 45.591148>,  <36.373672, 30.554750, 45.655018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581169, 30.452444, 45.591148>,  <36.926994, 30.281933, 45.484699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581169, 30.452444, 45.591148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274339, 0.043319, -0.960657,
		-0.421035, -0.903554, 0.079492,
		-0.864562, 0.426278, 0.266119,
		36.321800, 30.580328, 45.670982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413784, 30.025047, 45.076778>,  <36.926994, 30.281933, 45.484699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413784, 30.025047, 45.076778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238327, 30.349426, 45.231678>,  <36.133053, 30.544054, 45.324615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.238327, 30.349426, 45.231678>,  <36.413784, 30.025047, 45.076778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238327, 30.349426, 45.231678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427878, 0.190471, -0.883539,
		-0.790262, -0.553252, 0.263437,
		-0.438642, 0.810946, 0.387246,
		36.106735, 30.592710, 45.347851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778976, 30.065931, 44.628334>,  <36.413784, 30.025047, 45.076778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778976, 30.065931, 44.628334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.775280, 30.410839, 44.830879>,  <35.773064, 30.617785, 44.952408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.775280, 30.410839, 44.830879>,  <35.778976, 30.065931, 44.628334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775280, 30.410839, 44.830879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439601, 0.451325, -0.776567,
		-0.898145, -0.229772, 0.374886,
		-0.009238, 0.862271, 0.506363,
		35.772511, 30.669519, 44.982788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166748, 30.350105, 44.610424>,  <35.778976, 30.065931, 44.628334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166748, 30.350105, 44.610424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405628, 30.666763, 44.662048>,  <35.548954, 30.856758, 44.693024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.405628, 30.666763, 44.662048>,  <35.166748, 30.350105, 44.610424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405628, 30.666763, 44.662048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390698, 0.427624, -0.815165,
		-0.700508, 0.436391, 0.564669,
		0.597197, 0.791644, 0.129057,
		35.584785, 30.904257, 44.700764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764385, 30.992174, 44.383129>,  <35.166748, 30.350105, 44.610424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764385, 30.992174, 44.383129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147915, 31.097155, 44.426540>,  <35.378033, 31.160143, 44.452587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147915, 31.097155, 44.426540>,  <34.764385, 30.992174, 44.383129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147915, 31.097155, 44.426540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088202, 0.638414, -0.764622,
		-0.269964, 0.723564, 0.635275,
		0.958822, 0.262453, 0.108529,
		35.435562, 31.175890, 44.459099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.752792, 26.830540, 47.081810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934261, 27.174269, 46.987370>,  <39.043144, 27.380507, 46.930706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934261, 27.174269, 46.987370>,  <38.752792, 26.830540, 47.081810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934261, 27.174269, 46.987370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182046, -0.169983, -0.968486,
		-0.872375, 0.482359, 0.079319,
		0.453675, 0.859323, -0.236101,
		39.070362, 27.432066, 46.916538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309479, 27.167080, 46.669319>,  <38.752792, 26.830540, 47.081810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309479, 27.167080, 46.669319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.654346, 27.357536, 46.600086>,  <38.861267, 27.471809, 46.558544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.654346, 27.357536, 46.600086>,  <38.309479, 27.167080, 46.669319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654346, 27.357536, 46.600086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252825, 0.108305, -0.961431,
		-0.439031, 0.872674, 0.213757,
		0.862167, 0.476141, -0.173085,
		38.912998, 27.500378, 46.548161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101517, 27.719513, 46.237850>,  <38.309479, 27.167080, 46.669319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101517, 27.719513, 46.237850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.497322, 27.686293, 46.190586>,  <38.734806, 27.666361, 46.162228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.497322, 27.686293, 46.190586>,  <38.101517, 27.719513, 46.237850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497322, 27.686293, 46.190586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094983, 0.242110, -0.965588,
		0.108800, 0.966688, 0.231684,
		0.989515, -0.083050, -0.118160,
		38.794178, 27.661377, 46.155136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299168, 28.291214, 45.772224>,  <38.101517, 27.719513, 46.237850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299168, 28.291214, 45.772224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585484, 28.014715, 45.732586>,  <38.757275, 27.848816, 45.708801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585484, 28.014715, 45.732586>,  <38.299168, 28.291214, 45.772224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585484, 28.014715, 45.732586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099341, 0.039667, -0.994262,
		0.691213, 0.721528, -0.040276,
		0.715790, -0.691248, -0.099095,
		38.800220, 27.807341, 45.702858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541412, 28.479895, 45.236759>,  <38.299168, 28.291214, 45.772224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541412, 28.479895, 45.236759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.749474, 28.139704, 45.268085>,  <38.874310, 27.935589, 45.286880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.749474, 28.139704, 45.268085>,  <38.541412, 28.479895, 45.236759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749474, 28.139704, 45.268085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055409, -0.057901, -0.996783,
		0.852277, 0.522815, 0.017007,
		0.520148, -0.850478, 0.078316,
		38.905518, 27.884560, 45.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089123, 28.694761, 44.934528>,  <38.541412, 28.479895, 45.236759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089123, 28.694761, 44.934528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.088535, 28.294779, 44.930870>,  <39.088184, 28.054789, 44.928677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.088535, 28.294779, 44.930870>,  <39.089123, 28.694761, 44.934528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088535, 28.294779, 44.930870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100243, 0.008950, -0.994923,
		0.994962, -0.002373, 0.100226,
		-0.001464, -0.999957, -0.009143,
		39.088097, 27.994791, 44.928127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644547, 28.523232, 44.385700>,  <39.089123, 28.694761, 44.934528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644547, 28.523232, 44.385700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.393078, 28.221371, 44.460815>,  <39.242195, 28.040255, 44.505886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.393078, 28.221371, 44.460815>,  <39.644547, 28.523232, 44.385700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393078, 28.221371, 44.460815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034363, -0.214284, -0.976167,
		0.776908, -0.620145, 0.108783,
		-0.628675, -0.754654, 0.187789,
		39.204475, 27.994974, 44.517151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010677, 27.972065, 44.132076>,  <39.644547, 28.523232, 44.385700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010677, 27.972065, 44.132076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.614250, 27.918859, 44.135811>,  <39.376392, 27.886936, 44.138050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.614250, 27.918859, 44.135811>,  <40.010677, 27.972065, 44.132076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614250, 27.918859, 44.135811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002051, -0.054791, -0.998496,
		0.133327, -0.989598, 0.054028,
		-0.991070, -0.133016, 0.009335,
		39.316929, 27.878956, 44.138611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842133, 27.490715, 43.523178>,  <40.010677, 27.972065, 44.132076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842133, 27.490715, 43.523178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.498413, 27.668106, 43.625099>,  <39.292179, 27.774542, 43.686253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.498413, 27.668106, 43.625099>,  <39.842133, 27.490715, 43.523178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498413, 27.668106, 43.625099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298590, -0.030502, -0.953894,
		-0.415262, -0.895765, 0.158629,
		-0.859303, 0.443481, 0.254800,
		39.240623, 27.801149, 43.701538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214298, 27.151764, 43.246784>,  <39.842133, 27.490715, 43.523178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214298, 27.151764, 43.246784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.085239, 27.527517, 43.293190>,  <39.007805, 27.752970, 43.321033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.085239, 27.527517, 43.293190>,  <39.214298, 27.151764, 43.246784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085239, 27.527517, 43.293190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345746, -0.002871, -0.938324,
		-0.881112, -0.342860, 0.325714,
		-0.322648, 0.939382, 0.116012,
		38.988445, 27.809332, 43.327995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510948, 27.209593, 42.902714>,  <39.214298, 27.151764, 43.246784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510948, 27.209593, 42.902714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.649654, 27.581806, 42.949814>,  <38.732876, 27.805134, 42.978073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.649654, 27.581806, 42.949814>,  <38.510948, 27.209593, 42.902714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649654, 27.581806, 42.949814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191503, 0.193136, -0.962302,
		-0.918194, 0.311142, 0.245172,
		0.346764, 0.930532, 0.117751,
		38.753685, 27.860966, 42.985138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054359, 27.599157, 42.515697>,  <38.510948, 27.209593, 42.902714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054359, 27.599157, 42.515697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.382275, 27.827908, 42.527687>,  <38.579025, 27.965158, 42.534882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.382275, 27.827908, 42.527687>,  <38.054359, 27.599157, 42.515697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382275, 27.827908, 42.527687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052040, 0.126518, -0.990598,
		-0.570292, 0.810525, 0.133478,
		0.819792, 0.571877, 0.029973,
		38.628212, 27.999470, 42.536678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574570, 27.837614, 42.981342>,  <38.054359, 27.599157, 42.515697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574570, 27.837614, 42.981342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.180370, 27.780153, 43.017487>,  <36.943851, 27.745678, 43.039173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.180370, 27.780153, 43.017487>,  <37.574570, 27.837614, 42.981342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180370, 27.780153, 43.017487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156450, -0.562742, 0.811693,
		-0.065753, 0.814055, 0.577053,
		-0.985495, -0.143651, 0.090357,
		36.884724, 27.737059, 43.044594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405056, 28.046007, 43.585171>,  <37.574570, 27.837614, 42.981342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405056, 28.046007, 43.585171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.104805, 27.792852, 43.509270>,  <36.924652, 27.640959, 43.463730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.104805, 27.792852, 43.509270>,  <37.405056, 28.046007, 43.585171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104805, 27.792852, 43.509270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000371, -0.287593, 0.957752,
		-0.660722, 0.718848, 0.216112,
		-0.750631, -0.632888, -0.189752,
		36.879616, 27.602985, 43.452343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018845, 28.011074, 44.287315>,  <37.405056, 28.046007, 43.585171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018845, 28.011074, 44.287315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860626, 27.702246, 44.088341>,  <36.765694, 27.516949, 43.968956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.860626, 27.702246, 44.088341>,  <37.018845, 28.011074, 44.287315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860626, 27.702246, 44.088341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136159, -0.486331, 0.863101,
		-0.908296, 0.409130, 0.087243,
		-0.395550, -0.772072, -0.497439,
		36.741962, 27.470625, 43.939110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411171, 27.877558, 44.598969>,  <37.018845, 28.011074, 44.287315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411171, 27.877558, 44.598969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.498631, 27.528765, 44.423771>,  <36.551105, 27.319489, 44.318653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.498631, 27.528765, 44.423771>,  <36.411171, 27.877558, 44.598969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498631, 27.528765, 44.423771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070282, -0.461763, 0.884215,
		-0.973269, -0.162552, -0.162250,
		0.218652, -0.871981, -0.437995,
		36.564228, 27.267170, 44.292374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019329, 27.452415, 44.872437>,  <36.411171, 27.877558, 44.598969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019329, 27.452415, 44.872437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296680, 27.204418, 44.725555>,  <36.463093, 27.055620, 44.637428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.296680, 27.204418, 44.725555>,  <36.019329, 27.452415, 44.872437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296680, 27.204418, 44.725555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029228, -0.533374, 0.845374,
		-0.719980, -0.575432, -0.387952,
		0.693379, -0.619992, -0.367200,
		36.504696, 27.018421, 44.615395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755772, 26.796770, 45.130337>,  <36.019329, 27.452415, 44.872437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755772, 26.796770, 45.130337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.139820, 26.706495, 45.064323>,  <36.370251, 26.652330, 45.024715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.139820, 26.706495, 45.064323>,  <35.755772, 26.796770, 45.130337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139820, 26.706495, 45.064323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034350, -0.490570, 0.870725,
		-0.277468, -0.841669, -0.463254,
		0.960121, -0.225686, -0.165029,
		36.427856, 26.638790, 45.014816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816555, 26.096628, 45.202995>,  <35.755772, 26.796770, 45.130337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816555, 26.096628, 45.202995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.187931, 26.238449, 45.247337>,  <36.410755, 26.323542, 45.273945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.187931, 26.238449, 45.247337>,  <35.816555, 26.096628, 45.202995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187931, 26.238449, 45.247337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060565, -0.438904, 0.896490,
		0.366511, -0.825623, -0.428970,
		0.928440, 0.354554, 0.110860,
		36.466465, 26.344816, 45.280594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216068, 25.580313, 45.480278>,  <35.816555, 26.096628, 45.202995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216068, 25.580313, 45.480278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.406345, 25.924412, 45.553699>,  <36.520512, 26.130871, 45.597752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.406345, 25.924412, 45.553699>,  <36.216068, 25.580313, 45.480278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406345, 25.924412, 45.553699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097058, -0.258730, 0.961061,
		0.874242, -0.439351, -0.206569,
		0.475689, 0.860250, 0.183550,
		36.549053, 26.182487, 45.608765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821701, 25.310234, 45.773983>,  <36.216068, 25.580313, 45.480278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821701, 25.310234, 45.773983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751984, 25.683191, 45.900639>,  <36.710152, 25.906965, 45.976631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751984, 25.683191, 45.900639>,  <36.821701, 25.310234, 45.773983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751984, 25.683191, 45.900639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272039, -0.263455, 0.925519,
		0.946370, 0.247452, -0.207729,
		-0.174294, 0.932394, 0.316642,
		36.699696, 25.962910, 45.995632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289066, 25.448427, 46.310089>,  <36.821701, 25.310234, 45.773983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289066, 25.448427, 46.310089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.017467, 25.737867, 46.359684>,  <36.854507, 25.911531, 46.389439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.017467, 25.737867, 46.359684>,  <37.289066, 25.448427, 46.310089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017467, 25.737867, 46.359684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166247, -0.012946, 0.985999,
		0.715073, 0.690100, -0.111505,
		-0.678994, 0.723598, 0.123984,
		36.813770, 25.954947, 46.396881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634453, 25.889938, 46.753639>,  <37.289066, 25.448427, 46.310089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634453, 25.889938, 46.753639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.245922, 25.977987, 46.789570>,  <37.012802, 26.030817, 46.811127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.245922, 25.977987, 46.789570>,  <37.634453, 25.889938, 46.753639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245922, 25.977987, 46.789570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101233, 0.041095, 0.994014,
		0.215114, 0.974606, -0.062201,
		-0.971328, 0.220123, 0.089822,
		36.954525, 26.044024, 46.816517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663933, 26.241312, 47.379230>,  <37.634453, 25.889938, 46.753639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663933, 26.241312, 47.379230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.280590, 26.150675, 47.309715>,  <37.050583, 26.096292, 47.268005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.280590, 26.150675, 47.309715>,  <37.663933, 26.241312, 47.379230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280590, 26.150675, 47.309715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162400, -0.068134, 0.984370,
		-0.234891, 0.971604, 0.028498,
		-0.958359, -0.226591, -0.173793,
		36.993084, 26.082697, 47.257576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306828, 26.658073, 47.858650>,  <37.663933, 26.241312, 47.379230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306828, 26.658073, 47.858650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043926, 26.371283, 47.765732>,  <36.886185, 26.199209, 47.709980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043926, 26.371283, 47.765732>,  <37.306828, 26.658073, 47.858650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043926, 26.371283, 47.765732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121970, -0.202974, 0.971558,
		-0.743734, 0.666894, 0.045955,
		-0.657254, -0.716976, -0.232299,
		36.846748, 26.156189, 47.696041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373035, 27.424772, 47.901600>,  <37.306828, 26.658073, 47.858650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373035, 27.424772, 47.901600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.172150, 27.651390, 48.162922>,  <37.051617, 27.787361, 48.319714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.172150, 27.651390, 48.162922>,  <37.373035, 27.424772, 47.901600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172150, 27.651390, 48.162922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105013, 0.709943, -0.696386,
		-0.858342, -0.418341, -0.297050,
		-0.502216, 0.566544, 0.653305,
		37.021484, 27.821354, 48.358913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879192, 27.734768, 47.460915>,  <37.373035, 27.424772, 47.901600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879192, 27.734768, 47.460915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953960, 27.964279, 47.779873>,  <36.998821, 28.101986, 47.971249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.953960, 27.964279, 47.779873>,  <36.879192, 27.734768, 47.460915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953960, 27.964279, 47.779873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121662, 0.818973, -0.560787,
		-0.974812, 0.007812, 0.222893,
		0.186924, 0.573779, 0.797394,
		37.010036, 28.136414, 48.019093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357498, 28.245934, 47.438316>,  <36.879192, 27.734768, 47.460915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357498, 28.245934, 47.438316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614456, 28.407877, 47.698597>,  <36.768631, 28.505043, 47.854767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614456, 28.407877, 47.698597>,  <36.357498, 28.245934, 47.438316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614456, 28.407877, 47.698597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096160, 0.884940, -0.455668,
		-0.760315, 0.230148, 0.607415,
		0.642397, 0.404861, 0.650702,
		36.807175, 28.529335, 47.893806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026791, 28.867887, 47.543705>,  <36.357498, 28.245934, 47.438316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026791, 28.867887, 47.543705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.405094, 28.940542, 47.651451>,  <36.632076, 28.984135, 47.716099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.405094, 28.940542, 47.651451>,  <36.026791, 28.867887, 47.543705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405094, 28.940542, 47.651451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064219, 0.917271, -0.393052,
		-0.318472, 0.354432, 0.879177,
		0.945754, 0.181636, 0.269364,
		36.688820, 28.995033, 47.732262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920708, 29.427006, 47.994831>,  <36.026791, 28.867887, 47.543705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920708, 29.427006, 47.994831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287533, 29.395901, 47.838394>,  <36.507626, 29.377237, 47.744530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.287533, 29.395901, 47.838394>,  <35.920708, 29.427006, 47.994831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287533, 29.395901, 47.838394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086027, 0.919120, -0.384470,
		0.389362, 0.386226, 0.836198,
		0.917059, -0.077762, -0.391096,
		36.562649, 29.372572, 47.721066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240643, 30.042576, 48.181648>,  <35.920708, 29.427006, 47.994831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240643, 30.042576, 48.181648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466949, 29.906134, 47.881367>,  <36.602734, 29.824268, 47.701199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.466949, 29.906134, 47.881367>,  <36.240643, 30.042576, 48.181648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466949, 29.906134, 47.881367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120162, 0.866598, -0.484323,
		0.815763, 0.364220, 0.449304,
		0.565766, -0.341104, -0.750704,
		36.636681, 29.803802, 47.656155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608479, 30.623903, 47.881931>,  <36.240643, 30.042576, 48.181648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608479, 30.623903, 47.881931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611958, 30.350788, 47.589706>,  <36.614044, 30.186920, 47.414371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.611958, 30.350788, 47.589706>,  <36.608479, 30.623903, 47.881931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611958, 30.350788, 47.589706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117970, 0.726192, -0.677294,
		0.992979, -0.080292, 0.086868,
		0.008701, -0.682787, -0.730566,
		36.614567, 30.145952, 47.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080223, 30.958174, 47.353077>,  <36.608479, 30.623903, 47.881931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080223, 30.958174, 47.353077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841595, 30.698372, 47.164505>,  <36.698418, 30.542490, 47.051361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.841595, 30.698372, 47.164505>,  <37.080223, 30.958174, 47.353077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841595, 30.698372, 47.164505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155171, 0.669672, -0.726265,
		0.787419, -0.360114, -0.500289,
		-0.596568, -0.649505, -0.471433,
		36.662624, 30.503521, 47.023075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488564, 31.568132, 46.981865>,  <37.080223, 30.958174, 47.353077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488564, 31.568132, 46.981865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.409706, 31.923641, 47.147381>,  <37.362392, 32.136948, 47.246689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.409706, 31.923641, 47.147381>,  <37.488564, 31.568132, 46.981865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409706, 31.923641, 47.147381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260628, -0.359373, 0.896060,
		0.945097, 0.284496, -0.160791,
		-0.197142, 0.888770, 0.413790,
		37.350563, 32.190273, 47.271519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970451, 31.691845, 47.494652>,  <37.488564, 31.568132, 46.981865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970451, 31.691845, 47.494652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.703968, 31.969421, 47.603920>,  <37.544079, 32.135967, 47.669479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.703968, 31.969421, 47.603920>,  <37.970451, 31.691845, 47.494652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703968, 31.969421, 47.603920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232634, -0.154640, 0.960191,
		0.708557, 0.703232, -0.058412,
		-0.666204, 0.693939, 0.273167,
		37.504108, 32.177605, 47.685871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283714, 32.054081, 48.103294>,  <37.970451, 31.691845, 47.494652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283714, 32.054081, 48.103294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.893429, 32.138977, 48.124989>,  <37.659260, 32.189915, 48.138004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.893429, 32.138977, 48.124989>,  <38.283714, 32.054081, 48.103294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893429, 32.138977, 48.124989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051060, -0.020423, 0.998487,
		0.213029, 0.977003, 0.009090,
		-0.975711, 0.212243, 0.054236,
		37.600716, 32.202648, 48.141258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173481, 32.498550, 48.693851>,  <38.283714, 32.054081, 48.103294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173481, 32.498550, 48.693851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802010, 32.361832, 48.636253>,  <37.579128, 32.279800, 48.601692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802010, 32.361832, 48.636253>,  <38.173481, 32.498550, 48.693851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802010, 32.361832, 48.636253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185574, 0.092052, 0.978309,
		-0.321128, 0.935254, -0.148915,
		-0.928676, -0.341797, -0.143998,
		37.523407, 32.259293, 48.593056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609928, 33.029102, 48.890533>,  <38.173481, 32.498550, 48.693851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609928, 33.029102, 48.890533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.420933, 32.676647, 48.882973>,  <37.307537, 32.465176, 48.878437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.420933, 32.676647, 48.882973>,  <37.609928, 33.029102, 48.890533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420933, 32.676647, 48.882973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, 0.106773, 0.965444,
		-0.848669, 0.460652, -0.259924,
		-0.472487, -0.881135, -0.018897,
		37.279186, 32.412308, 48.877304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157593, 33.121353, 49.360287>,  <37.609928, 33.029102, 48.890533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157593, 33.121353, 49.360287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.175831, 32.722935, 49.329777>,  <37.186771, 32.483883, 49.311470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.175831, 32.722935, 49.329777>,  <37.157593, 33.121353, 49.360287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175831, 32.722935, 49.329777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040968, -0.078153, 0.996099,
		-0.998120, -0.042289, -0.044369,
		0.045592, -0.996044, -0.076274,
		37.189507, 32.424122, 49.306896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666477, 32.769608, 49.813488>,  <37.157593, 33.121353, 49.360287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666477, 32.769608, 49.813488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942684, 32.487339, 49.749985>,  <37.108410, 32.317978, 49.711884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942684, 32.487339, 49.749985>,  <36.666477, 32.769608, 49.813488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942684, 32.487339, 49.749985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027247, -0.244715, 0.969212,
		-0.722800, -0.664935, -0.188208,
		0.690520, -0.705674, -0.158762,
		37.149841, 32.275639, 49.702354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423370, 32.146709, 50.106174>,  <36.666477, 32.769608, 49.813488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423370, 32.146709, 50.106174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.816467, 32.072792, 50.109283>,  <37.052326, 32.028442, 50.111149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.816467, 32.072792, 50.109283>,  <36.423370, 32.146709, 50.106174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816467, 32.072792, 50.109283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058202, -0.269084, 0.961357,
		-0.175559, -0.945223, -0.275197,
		0.982747, -0.184791, 0.007774,
		37.111290, 32.017353, 50.111614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474319, 31.627090, 50.601551>,  <36.423370, 32.146709, 50.106174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474319, 31.627090, 50.601551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851883, 31.746084, 50.544235>,  <37.078423, 31.817480, 50.509846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851883, 31.746084, 50.544235>,  <36.474319, 31.627090, 50.601551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851883, 31.746084, 50.544235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231819, -0.288031, 0.929138,
		0.235134, -0.910242, -0.340839,
		0.943913, 0.297485, -0.143285,
		37.135056, 31.835329, 50.501251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.340214, 36.723274, 35.030098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700405, 36.784763, 35.192825>,  <34.916519, 36.821655, 35.290462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700405, 36.784763, 35.192825>,  <34.340214, 36.723274, 35.030098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700405, 36.784763, 35.192825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361996, -0.253492, 0.897051,
		0.241020, -0.955046, -0.172619,
		0.900482, 0.153720, 0.406819,
		34.970551, 36.830879, 35.314873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464462, 36.192066, 35.459351>,  <34.340214, 36.723274, 35.030098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464462, 36.192066, 35.459351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734455, 36.462078, 35.578503>,  <34.896450, 36.624084, 35.649994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734455, 36.462078, 35.578503>,  <34.464462, 36.192066, 35.459351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734455, 36.462078, 35.578503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151846, -0.267994, 0.951379,
		0.722038, -0.687398, -0.078391,
		0.674984, 0.675029, 0.297880,
		34.936951, 36.664585, 35.667866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834648, 35.864349, 35.995167>,  <34.464462, 36.192066, 35.459351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834648, 35.864349, 35.995167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933853, 36.245331, 36.065960>,  <34.993374, 36.473919, 36.108437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933853, 36.245331, 36.065960>,  <34.834648, 35.864349, 35.995167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933853, 36.245331, 36.065960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181420, -0.225123, 0.957291,
		0.951618, -0.205309, -0.228627,
		0.248010, 0.952453, 0.176984,
		35.008255, 36.531067, 36.119057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535175, 35.802910, 36.376591>,  <34.834648, 35.864349, 35.995167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535175, 35.802910, 36.376591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414627, 36.175278, 36.459110>,  <35.342300, 36.398701, 36.508621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414627, 36.175278, 36.459110>,  <35.535175, 35.802910, 36.376591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414627, 36.175278, 36.459110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119158, -0.177891, 0.976809,
		0.946034, 0.318960, -0.057317,
		-0.301366, 0.930924, 0.206298,
		35.324219, 36.454556, 36.521000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899616, 35.997154, 36.961987>,  <35.535175, 35.802910, 36.376591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899616, 35.997154, 36.961987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581322, 36.238331, 36.939125>,  <35.390347, 36.383038, 36.925407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581322, 36.238331, 36.939125>,  <35.899616, 35.997154, 36.961987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581322, 36.238331, 36.939125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050699, 0.027715, 0.998329,
		0.603523, 0.797300, 0.008515,
		-0.795732, 0.602946, -0.057149,
		35.342602, 36.419216, 36.921982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036213, 36.618206, 37.394905>,  <35.899616, 35.997154, 36.961987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036213, 36.618206, 37.394905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640957, 36.559090, 37.378258>,  <35.403801, 36.523621, 37.368271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640957, 36.559090, 37.378258>,  <36.036213, 36.618206, 37.394905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640957, 36.559090, 37.378258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048313, 0.041999, 0.997949,
		-0.145736, 0.988127, -0.048641,
		-0.988143, -0.147787, -0.041619,
		35.344513, 36.514755, 37.365772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740978, 36.911003, 37.986275>,  <36.036213, 36.618206, 37.394905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740978, 36.911003, 37.986275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414307, 36.697529, 37.898453>,  <35.218304, 36.569443, 37.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414307, 36.697529, 37.898453>,  <35.740978, 36.911003, 37.986275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414307, 36.697529, 37.898453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214330, -0.072740, 0.974049,
		-0.535810, 0.842547, -0.054980,
		-0.816683, -0.533689, -0.219557,
		35.169300, 36.537422, 37.832584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068176, 37.086922, 38.396568>,  <35.740978, 36.911003, 37.986275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068176, 37.086922, 38.396568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995995, 36.710423, 38.282383>,  <34.952686, 36.484524, 38.213871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995995, 36.710423, 38.282383>,  <35.068176, 37.086922, 38.396568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995995, 36.710423, 38.282383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370340, -0.203851, 0.906252,
		-0.911200, 0.269252, -0.311797,
		-0.180450, -0.941248, -0.285464,
		34.941860, 36.428047, 38.196743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335049, 36.965954, 38.593330>,  <35.068176, 37.086922, 38.396568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335049, 36.965954, 38.593330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499428, 36.604019, 38.548813>,  <34.598053, 36.386856, 38.522102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499428, 36.604019, 38.548813>,  <34.335049, 36.965954, 38.593330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499428, 36.604019, 38.548813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350307, -0.269434, 0.897045,
		-0.841671, -0.329647, -0.427694,
		0.410944, -0.904841, -0.111297,
		34.622711, 36.332565, 38.515423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831612, 36.553322, 38.898163>,  <34.335049, 36.965954, 38.593330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831612, 36.553322, 38.898163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154831, 36.317822, 38.906467>,  <34.348763, 36.176521, 38.911449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154831, 36.317822, 38.906467>,  <33.831612, 36.553322, 38.898163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154831, 36.317822, 38.906467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185442, -0.220749, 0.957539,
		-0.559166, -0.777589, -0.287555,
		0.808050, -0.588748, 0.020762,
		34.397247, 36.141197, 38.912697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623093, 35.829426, 39.250889>,  <33.831612, 36.553322, 38.898163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623093, 35.829426, 39.250889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022961, 35.833836, 39.260128>,  <34.262882, 35.836483, 39.265671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022961, 35.833836, 39.260128>,  <33.623093, 35.829426, 39.250889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022961, 35.833836, 39.260128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019640, -0.248340, 0.968474,
		0.016418, -0.968610, -0.248042,
		0.999672, 0.011029, 0.023100,
		34.322861, 35.837143, 39.267059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856655, 35.138023, 39.635349>,  <33.623093, 35.829426, 39.250889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856655, 35.138023, 39.635349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151566, 35.408157, 39.642826>,  <34.328510, 35.570236, 39.647312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151566, 35.408157, 39.642826>,  <33.856655, 35.138023, 39.635349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151566, 35.408157, 39.642826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172646, -0.215087, 0.961213,
		0.653162, -0.705450, -0.275172,
		0.737274, 0.675335, 0.018693,
		34.372749, 35.610760, 39.648434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934998, 34.356995, 39.535427>,  <33.856655, 35.138023, 39.635349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934998, 34.356995, 39.535427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607414, 34.162251, 39.656937>,  <33.410866, 34.045406, 39.729843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607414, 34.162251, 39.656937>,  <33.934998, 34.356995, 39.535427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607414, 34.162251, 39.656937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398117, 0.100784, -0.911781,
		0.413291, -0.867648, -0.276364,
		-0.818959, -0.486856, 0.303773,
		33.361725, 34.016193, 39.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714733, 34.191208, 38.935310>,  <33.934998, 34.356995, 39.535427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714733, 34.191208, 38.935310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383919, 34.123619, 39.149773>,  <33.185429, 34.083065, 39.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383919, 34.123619, 39.149773>,  <33.714733, 34.191208, 38.935310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383919, 34.123619, 39.149773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551310, 0.057401, -0.832323,
		0.109874, -0.983946, -0.140636,
		-0.827033, -0.168985, 0.536152,
		33.135807, 34.072926, 39.310619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343239, 33.674767, 38.550068>,  <33.714733, 34.191208, 38.935310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343239, 33.674767, 38.550068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090691, 33.869614, 38.791428>,  <32.939163, 33.986523, 38.936241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090691, 33.869614, 38.791428>,  <33.343239, 33.674767, 38.550068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090691, 33.869614, 38.791428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617539, 0.154821, -0.771153,
		-0.469062, -0.859503, 0.203066,
		-0.631369, 0.487119, 0.603397,
		32.901279, 34.015751, 38.972446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742985, 33.275909, 38.507008>,  <33.343239, 33.674767, 38.550068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742985, 33.275909, 38.507008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655018, 33.648296, 38.623585>,  <32.602238, 33.871727, 38.693531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655018, 33.648296, 38.623585>,  <32.742985, 33.275909, 38.507008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655018, 33.648296, 38.623585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895318, -0.073988, -0.439240,
		-0.387354, -0.357531, 0.849781,
		-0.219916, 0.930966, 0.291444,
		32.589043, 33.927586, 38.711018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082817, 33.203163, 38.647697>,  <32.742985, 33.275909, 38.507008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082817, 33.203163, 38.647697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123081, 33.598644, 38.603260>,  <32.147240, 33.835934, 38.576595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123081, 33.598644, 38.603260>,  <32.082817, 33.203163, 38.647697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123081, 33.598644, 38.603260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797402, 0.013395, -0.603300,
		-0.594994, 0.149316, 0.789739,
		0.100661, 0.988699, -0.111095,
		32.153278, 33.895252, 38.569931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327162, 33.372623, 38.551102>,  <32.082817, 33.203163, 38.647697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327162, 33.372623, 38.551102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536369, 33.685703, 38.416149>,  <31.661894, 33.873550, 38.335178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536369, 33.685703, 38.416149>,  <31.327162, 33.372623, 38.551102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536369, 33.685703, 38.416149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753286, 0.239302, -0.612614,
		-0.398760, 0.574551, 0.714760,
		0.523021, 0.782704, -0.337377,
		31.693275, 33.920513, 38.314938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906446, 33.872265, 38.678272>,  <31.327162, 33.372623, 38.551102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906446, 33.872265, 38.678272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162144, 33.984722, 38.391964>,  <31.315563, 34.052197, 38.220181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162144, 33.984722, 38.391964>,  <30.906446, 33.872265, 38.678272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162144, 33.984722, 38.391964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768959, 0.223669, -0.598894,
		-0.008281, 0.933236, 0.359168,
		0.639244, 0.281145, -0.715768,
		31.353916, 34.069065, 38.177235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596010, 34.394150, 38.389359>,  <30.906446, 33.872265, 38.678272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596010, 34.394150, 38.389359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860649, 34.279545, 38.112171>,  <31.019432, 34.210781, 37.945858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860649, 34.279545, 38.112171>,  <30.596010, 34.394150, 38.389359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860649, 34.279545, 38.112171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736916, -0.077456, -0.671532,
		0.138726, 0.954941, -0.262379,
		0.661596, -0.286510, -0.692966,
		31.059128, 34.193592, 37.904282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359121, 34.799477, 37.829277>,  <30.596010, 34.394150, 38.389359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359121, 34.799477, 37.829277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603296, 34.527374, 37.666985>,  <30.749802, 34.364113, 37.569611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603296, 34.527374, 37.666985>,  <30.359121, 34.799477, 37.829277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603296, 34.527374, 37.666985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523774, 0.037565, -0.851029,
		0.594160, 0.732010, -0.333370,
		0.610438, -0.680258, -0.405727,
		30.786428, 34.323296, 37.545265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446465, 34.994156, 37.211960>,  <30.359121, 34.799477, 37.829277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446465, 34.994156, 37.211960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546055, 34.607307, 37.191235>,  <30.605810, 34.375198, 37.178799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546055, 34.607307, 37.191235>,  <30.446465, 34.994156, 37.211960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546055, 34.607307, 37.191235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378705, -0.047975, -0.924273,
		0.891399, 0.249746, -0.378199,
		0.248977, -0.967122, -0.051816,
		30.620749, 34.317169, 37.175690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892651, 34.861980, 36.588032>,  <30.446465, 34.994156, 37.211960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892651, 34.861980, 36.588032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704489, 34.521690, 36.681828>,  <30.591591, 34.317516, 36.738106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704489, 34.521690, 36.681828>,  <30.892651, 34.861980, 36.588032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704489, 34.521690, 36.681828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450247, 0.002854, -0.892900,
		0.758943, -0.525602, -0.384379,
		-0.470407, -0.850726, 0.234485,
		30.563366, 34.266472, 36.752174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760941, 34.502136, 35.906334>,  <30.892651, 34.861980, 36.588032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760941, 34.502136, 35.906334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542645, 34.264164, 36.142376>,  <30.411667, 34.121380, 36.284000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542645, 34.264164, 36.142376>,  <30.760941, 34.502136, 35.906334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542645, 34.264164, 36.142376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586369, -0.231951, -0.776125,
		0.598617, -0.769582, -0.222264,
		-0.545738, -0.594931, 0.590108,
		30.378923, 34.085686, 36.319408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614180, 33.880875, 35.460911>,  <30.760941, 34.502136, 35.906334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614180, 33.880875, 35.460911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344049, 33.875805, 35.755875>,  <30.181971, 33.872765, 35.932854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344049, 33.875805, 35.755875>,  <30.614180, 33.880875, 35.460911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344049, 33.875805, 35.755875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710838, -0.255313, -0.655381,
		0.196577, -0.966775, 0.163410,
		-0.675327, -0.012675, 0.737409,
		30.141451, 33.872002, 35.977097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354460, 33.210552, 35.471394>,  <30.614180, 33.880875, 35.460911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354460, 33.210552, 35.471394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087856, 33.464672, 35.627422>,  <29.927895, 33.617146, 35.721039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087856, 33.464672, 35.627422>,  <30.354460, 33.210552, 35.471394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087856, 33.464672, 35.627422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662808, -0.265479, -0.700148,
		-0.341251, -0.725197, 0.598028,
		-0.666509, 0.635304, 0.390071,
		29.887903, 33.655262, 35.744446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825279, 32.707287, 35.830887>,  <30.354460, 33.210552, 35.471394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825279, 32.707287, 35.830887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888083, 32.422543, 35.557068>,  <30.925764, 32.251698, 35.392776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888083, 32.422543, 35.557068>,  <30.825279, 32.707287, 35.830887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888083, 32.422543, 35.557068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956617, -0.062627, 0.284537,
		-0.245421, -0.699526, 0.671142,
		0.157010, -0.711857, -0.684549,
		30.935184, 32.208984, 35.351704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291166, 32.234962, 36.101830>,  <30.825279, 32.707287, 35.830887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291166, 32.234962, 36.101830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351761, 32.117142, 35.724407>,  <31.388119, 32.046448, 35.497955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351761, 32.117142, 35.724407>,  <31.291166, 32.234962, 36.101830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351761, 32.117142, 35.724407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984858, -0.036430, 0.169493,
		-0.084298, -0.954940, 0.284576,
		0.151488, -0.294555, -0.943551,
		31.397207, 32.028774, 35.441341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841072, 32.740902, 36.044468>,  <31.291166, 32.234962, 36.101830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841072, 32.740902, 36.044468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089409, 32.880562, 35.763710>,  <32.238411, 32.964359, 35.595257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089409, 32.880562, 35.763710>,  <31.841072, 32.740902, 36.044468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089409, 32.880562, 35.763710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756489, -0.501674, 0.419581,
		-0.205625, -0.791466, -0.575587,
		0.620841, 0.349149, -0.701891,
		32.275661, 32.985306, 35.553143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944611, 32.189281, 35.734459>,  <31.841072, 32.740902, 36.044468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944611, 32.189281, 35.734459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254768, 32.439308, 35.698574>,  <32.440865, 32.589325, 35.677044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254768, 32.439308, 35.698574>,  <31.944611, 32.189281, 35.734459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254768, 32.439308, 35.698574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583381, -0.654693, 0.480670,
		0.241718, -0.425046, -0.872300,
		0.775396, 0.625070, -0.089713,
		32.487389, 32.626831, 35.671661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559551, 31.776472, 35.581696>,  <31.944611, 32.189281, 35.734459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559551, 31.776472, 35.581696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704975, 32.115498, 35.736336>,  <32.792229, 32.318913, 35.829121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704975, 32.115498, 35.736336>,  <32.559551, 31.776472, 35.581696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704975, 32.115498, 35.736336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711082, -0.520582, 0.472606,
		0.601821, 0.103083, -0.791950,
		0.363558, 0.847566, 0.386598,
		32.814041, 32.369766, 35.852314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311394, 31.605925, 35.618065>,  <32.559551, 31.776472, 35.581696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311394, 31.605925, 35.618065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240765, 31.917318, 35.858990>,  <33.198387, 32.104156, 36.003544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240765, 31.917318, 35.858990>,  <33.311394, 31.605925, 35.618065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240765, 31.917318, 35.858990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692731, -0.336434, 0.637915,
		0.699247, 0.529879, -0.479877,
		-0.176571, 0.778486, 0.602314,
		33.187794, 32.150864, 36.039684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987309, 31.932318, 35.848728>,  <33.311394, 31.605925, 35.618065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987309, 31.932318, 35.848728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729576, 32.033352, 36.137459>,  <33.574936, 32.093971, 36.310699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729576, 32.033352, 36.137459>,  <33.987309, 31.932318, 35.848728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729576, 32.033352, 36.137459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651877, -0.312126, 0.691110,
		0.399867, 0.915848, 0.036457,
		-0.644331, 0.252587, 0.721829,
		33.536278, 32.109127, 36.354008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432018, 32.223831, 36.358353>,  <33.987309, 31.932318, 35.848728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432018, 32.223831, 36.358353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093197, 32.135189, 36.551594>,  <33.889904, 32.082005, 36.667538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093197, 32.135189, 36.551594>,  <34.432018, 32.223831, 36.358353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093197, 32.135189, 36.551594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524247, -0.198623, 0.828079,
		-0.087551, 0.954694, 0.284421,
		-0.847054, -0.221606, 0.483105,
		33.839081, 32.068707, 36.696526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551361, 32.368515, 37.090275>,  <34.432018, 32.223831, 36.358353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551361, 32.368515, 37.090275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213856, 32.154240, 37.103485>,  <34.011353, 32.025673, 37.111412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213856, 32.154240, 37.103485>,  <34.551361, 32.368515, 37.090275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213856, 32.154240, 37.103485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310821, -0.437547, 0.843767,
		-0.437547, 0.722209, 0.535692,
		-0.843767, -0.535692, 0.033030,
		33.960724, 31.993532, 37.113396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328205, 32.396683, 37.823009>,  <34.551361, 32.368515, 37.090275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328205, 32.396683, 37.823009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151073, 32.076328, 37.661777>,  <34.044792, 31.884115, 37.565037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151073, 32.076328, 37.661777>,  <34.328205, 32.396683, 37.823009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151073, 32.076328, 37.661777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259294, -0.544748, 0.797506,
		-0.858292, 0.248646, 0.448899,
		-0.442833, -0.800890, -0.403080,
		34.018223, 31.836061, 37.540852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950966, 32.142719, 38.343548>,  <34.328205, 32.396683, 37.823009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950966, 32.142719, 38.343548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972267, 31.840231, 38.082687>,  <33.985050, 31.658739, 37.926170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972267, 31.840231, 38.082687>,  <33.950966, 32.142719, 38.343548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972267, 31.840231, 38.082687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407133, -0.579886, 0.705673,
		-0.911815, -0.303091, 0.277000,
		0.053255, -0.756219, -0.652148,
		33.988243, 31.613365, 37.887043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561340, 31.599716, 38.610252>,  <33.950966, 32.142719, 38.343548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561340, 31.599716, 38.610252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816158, 31.424416, 38.356606>,  <33.969051, 31.319235, 38.204418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816158, 31.424416, 38.356606>,  <33.561340, 31.599716, 38.610252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816158, 31.424416, 38.356606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275308, -0.639030, 0.718224,
		-0.719983, -0.632121, -0.286439,
		0.637048, -0.438251, -0.634119,
		34.007275, 31.292940, 38.166370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475075, 30.901178, 38.769547>,  <33.561340, 31.599716, 38.610252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475075, 30.901178, 38.769547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824909, 30.948309, 38.581413>,  <34.034809, 30.976587, 38.468533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824909, 30.948309, 38.581413>,  <33.475075, 30.901178, 38.769547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824909, 30.948309, 38.581413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477551, -0.377235, 0.793498,
		-0.083934, -0.918592, -0.386192,
		0.874586, 0.117825, -0.470337,
		34.087284, 30.983656, 38.440311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792744, 30.218805, 38.824471>,  <33.475075, 30.901178, 38.769547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792744, 30.218805, 38.824471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085087, 30.483622, 38.758072>,  <34.260490, 30.642511, 38.718231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085087, 30.483622, 38.758072>,  <33.792744, 30.218805, 38.824471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085087, 30.483622, 38.758072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609060, -0.522829, 0.596402,
		0.308055, -0.536985, -0.785334,
		0.730854, 0.662040, -0.165996,
		34.304344, 30.682234, 38.708275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369263, 29.798225, 38.736885>,  <33.792744, 30.218805, 38.824471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369263, 29.798225, 38.736885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516590, 30.160231, 38.822010>,  <34.604988, 30.377434, 38.873085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516590, 30.160231, 38.822010>,  <34.369263, 29.798225, 38.736885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516590, 30.160231, 38.822010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575534, -0.401724, 0.712305,
		0.730137, -0.139879, -0.668830,
		0.368321, 0.905015, 0.212809,
		34.627087, 30.431736, 38.885853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113270, 29.662777, 38.757832>,  <34.369263, 29.798225, 38.736885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113270, 29.662777, 38.757832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068867, 29.999008, 38.969910>,  <35.042225, 30.200747, 39.097157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068867, 29.999008, 38.969910>,  <35.113270, 29.662777, 38.757832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068867, 29.999008, 38.969910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516726, -0.406894, 0.753280,
		0.848924, 0.357584, -0.389181,
		-0.111006, 0.840578, 0.530195,
		35.035564, 30.251181, 39.128967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744373, 29.731283, 38.990337>,  <35.113270, 29.662777, 38.757832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744373, 29.731283, 38.990337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529064, 29.955029, 39.242489>,  <35.399879, 30.089275, 39.393780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529064, 29.955029, 39.242489>,  <35.744373, 29.731283, 38.990337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529064, 29.955029, 39.242489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520827, -0.367265, 0.770620,
		0.662571, 0.743122, -0.093641,
		-0.538274, 0.559361, 0.630378,
		35.367580, 30.122837, 39.431602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256546, 30.183737, 39.544075>,  <35.744373, 29.731283, 38.990337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256546, 30.183737, 39.544075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877586, 30.145016, 39.666100>,  <35.650211, 30.121782, 39.739315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877586, 30.145016, 39.666100>,  <36.256546, 30.183737, 39.544075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877586, 30.145016, 39.666100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316160, -0.431200, 0.845050,
		0.049737, 0.897048, 0.439125,
		-0.947401, -0.096804, 0.305057,
		35.593365, 30.115974, 39.757618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312454, 30.373484, 40.156368>,  <36.256546, 30.183737, 39.544075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312454, 30.373484, 40.156368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959568, 30.186201, 40.176300>,  <35.747837, 30.073832, 40.188259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959568, 30.186201, 40.176300>,  <36.312454, 30.373484, 40.156368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959568, 30.186201, 40.176300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301079, -0.479584, 0.824227,
		-0.362013, 0.742145, 0.564062,
		-0.882212, -0.468209, 0.049829,
		35.694904, 30.045738, 40.191250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067932, 30.523584, 40.794403>,  <36.312454, 30.373484, 40.156368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067932, 30.523584, 40.794403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888187, 30.184607, 40.681328>,  <35.780338, 29.981220, 40.613483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888187, 30.184607, 40.681328>,  <36.067932, 30.523584, 40.794403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888187, 30.184607, 40.681328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180716, -0.396125, 0.900237,
		-0.874878, 0.353450, 0.331151,
		-0.449366, -0.847442, -0.282687,
		35.753376, 29.930374, 40.596523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686291, 30.348919, 41.370178>,  <36.067932, 30.523584, 40.794403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686291, 30.348919, 41.370178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718769, 30.006660, 41.165718>,  <35.738255, 29.801306, 41.043041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718769, 30.006660, 41.165718>,  <35.686291, 30.348919, 41.370178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718769, 30.006660, 41.165718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280222, -0.472563, 0.835560,
		-0.956496, -0.211078, 0.201402,
		0.081193, -0.855646, -0.511153,
		35.743126, 29.749966, 41.012371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411983, 29.888086, 41.737026>,  <35.686291, 30.348919, 41.370178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411983, 29.888086, 41.737026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652878, 29.672497, 41.501461>,  <35.797417, 29.543144, 41.360123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652878, 29.672497, 41.501461>,  <35.411983, 29.888086, 41.737026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652878, 29.672497, 41.501461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241768, -0.579912, 0.777978,
		-0.760825, -0.610909, -0.218940,
		0.602240, -0.538972, -0.588911,
		35.833549, 29.510805, 41.324787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162941, 29.229137, 41.914825>,  <35.411983, 29.888086, 41.737026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162941, 29.229137, 41.914825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531616, 29.208120, 41.761082>,  <35.752819, 29.195511, 41.668835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531616, 29.208120, 41.761082>,  <35.162941, 29.229137, 41.914825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531616, 29.208120, 41.761082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231472, -0.720605, 0.653566,
		-0.311315, -0.691352, -0.652009,
		0.921686, -0.052543, -0.384363,
		35.808121, 29.192358, 41.645771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152409, 28.530998, 41.861488>,  <35.162941, 29.229137, 41.914825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152409, 28.530998, 41.861488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531887, 28.652935, 41.827896>,  <35.759575, 28.726097, 41.807739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531887, 28.652935, 41.827896>,  <35.152409, 28.530998, 41.861488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531887, 28.652935, 41.827896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301215, -0.790506, 0.533263,
		0.096174, -0.531199, -0.841771,
		0.948694, 0.304840, -0.083979,
		35.816494, 28.744387, 41.802704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558308, 27.911633, 41.824448>,  <35.152409, 28.530998, 41.861488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558308, 27.911633, 41.824448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833237, 28.200514, 41.855461>,  <35.998196, 28.373842, 41.874069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833237, 28.200514, 41.855461>,  <35.558308, 27.911633, 41.824448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833237, 28.200514, 41.855461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519128, -0.563083, 0.642996,
		0.508029, -0.401699, -0.761935,
		0.687323, 0.722202, 0.077529,
		36.039433, 28.417175, 41.878719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117020, 27.605165, 41.663631>,  <35.558308, 27.911633, 41.824448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117020, 27.605165, 41.663631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250763, 27.912855, 41.881439>,  <36.331009, 28.097469, 42.012123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250763, 27.912855, 41.881439>,  <36.117020, 27.605165, 41.663631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250763, 27.912855, 41.881439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538604, -0.630082, 0.559377,
		0.773376, 0.106246, -0.624981,
		0.334358, 0.769226, 0.544515,
		36.351070, 28.143623, 42.044792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848724, 27.633860, 41.739330>,  <36.117020, 27.605165, 41.663631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848724, 27.633860, 41.739330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710564, 27.838051, 42.054317>,  <36.627666, 27.960566, 42.243309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710564, 27.838051, 42.054317>,  <36.848724, 27.633860, 41.739330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710564, 27.838051, 42.054317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459195, -0.639866, 0.616208,
		0.818434, 0.574444, -0.013394,
		-0.345406, 0.510476, 0.787470,
		36.606941, 27.991194, 42.290558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365128, 27.604078, 42.333454>,  <36.848724, 27.633860, 41.739330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365128, 27.604078, 42.333454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024807, 27.711958, 42.513855>,  <36.820614, 27.776686, 42.622093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024807, 27.711958, 42.513855>,  <37.365128, 27.604078, 42.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024807, 27.711958, 42.513855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241866, -0.560957, 0.791725,
		0.466517, 0.782682, 0.412032,
		-0.850801, 0.269697, 0.451000,
		36.769566, 27.792868, 42.649155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807735, 28.204542, 42.167122>,  <37.365128, 27.604078, 42.333454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807735, 28.204542, 42.167122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207630, 28.213774, 42.167171>,  <38.447567, 28.219313, 42.167202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207630, 28.213774, 42.167171>,  <37.807735, 28.204542, 42.167122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207630, 28.213774, 42.167171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012243, 0.534974, -0.844780,
		-0.019564, 0.844553, 0.535114,
		0.999734, 0.023079, 0.000127,
		38.507549, 28.220697, 42.167210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056805, 28.920603, 42.012913>,  <37.807735, 28.204542, 42.167122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056805, 28.920603, 42.012913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391724, 28.711519, 41.948784>,  <38.592674, 28.586069, 41.910309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391724, 28.711519, 41.948784>,  <38.056805, 28.920603, 42.012913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391724, 28.711519, 41.948784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148739, 0.499938, -0.853193,
		0.526124, 0.690532, 0.496346,
		0.837300, -0.522711, -0.160320,
		38.642914, 28.554707, 41.900688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610405, 29.447794, 41.930920>,  <38.056805, 28.920603, 42.012913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610405, 29.447794, 41.930920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701984, 29.105709, 41.744934>,  <38.756931, 28.900457, 41.633343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701984, 29.105709, 41.744934>,  <38.610405, 29.447794, 41.930920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701984, 29.105709, 41.744934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181169, 0.506743, -0.842846,
		0.956432, 0.108727, 0.270954,
		0.228944, -0.855213, -0.464968,
		38.770668, 28.849146, 41.605442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224369, 29.576141, 41.623222>,  <38.610405, 29.447794, 41.930920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224369, 29.576141, 41.623222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053040, 29.283304, 41.411346>,  <38.950241, 29.107601, 41.284222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053040, 29.283304, 41.411346>,  <39.224369, 29.576141, 41.623222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053040, 29.283304, 41.411346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208959, 0.490053, -0.846276,
		0.879133, -0.473165, -0.056923,
		-0.428323, -0.732095, -0.529694,
		38.924541, 29.063675, 41.252438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544922, 29.654512, 41.040058>,  <39.224369, 29.576141, 41.623222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544922, 29.654512, 41.040058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237534, 29.419498, 40.938663>,  <39.053101, 29.278490, 40.877827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237534, 29.419498, 40.938663>,  <39.544922, 29.654512, 41.040058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237534, 29.419498, 40.938663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054122, 0.454404, -0.889150,
		0.637595, -0.669564, -0.380994,
		-0.768468, -0.587537, -0.253487,
		39.006992, 29.243237, 40.862617>
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
