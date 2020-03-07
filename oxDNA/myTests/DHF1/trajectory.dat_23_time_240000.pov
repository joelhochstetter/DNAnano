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
	<3.224347, 2.259072, 1.789434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.498981, 2.170425, 1.512454>,  <3.663762, 2.117237, 1.346266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.498981, 2.170425, 1.512454>,  <3.224347, 2.259072, 1.789434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.498981, 2.170425, 1.512454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497087, 0.838118, 0.224638,
		0.530570, -0.498441, 0.685603,
		0.686586, -0.221618, -0.692449,
		3.704957, 2.103940, 1.304719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.781318, 2.346339, 2.088711>,  <3.224347, 2.259072, 1.789434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.781318, 2.346339, 2.088711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.828594, 2.412086, 1.696994>,  <3.856960, 2.451535, 1.461964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.828594, 2.412086, 1.696994>,  <3.781318, 2.346339, 2.088711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.828594, 2.412086, 1.696994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522844, 0.828125, 0.202099,
		0.844195, -0.535903, 0.011937,
		0.118191, 0.164370, -0.979292,
		3.864052, 2.461397, 1.403206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.474518, 2.378954, 2.098095>,  <3.781318, 2.346339, 2.088711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.474518, 2.378954, 2.098095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.280617, 2.556622, 1.796704>,  <4.164276, 2.663222, 1.615869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.280617, 2.556622, 1.796704>,  <4.474518, 2.378954, 2.098095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.280617, 2.556622, 1.796704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415737, 0.874934, 0.248301,
		0.769531, -0.192884, -0.608785,
		-0.484753, 0.444170, -0.753477,
		4.135191, 2.689873, 1.570661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.922700, 2.701055, 1.741688>,  <4.474518, 2.378954, 2.098095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.922700, 2.701055, 1.741688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.575840, 2.893303, 1.689452>,  <4.367723, 3.008651, 1.658111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.575840, 2.893303, 1.689452>,  <4.922700, 2.701055, 1.741688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.575840, 2.893303, 1.689452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476441, 0.876901, 0.063623,
		0.145093, -0.007048, -0.989393,
		-0.867151, 0.480619, -0.130590,
		4.315694, 3.037489, 1.650275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.017724, 3.158110, 1.118010>,  <4.922700, 2.701055, 1.741688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.017724, 3.158110, 1.118010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.759926, 3.288731, 1.394558>,  <4.605247, 3.367103, 1.560486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.759926, 3.288731, 1.394558>,  <5.017724, 3.158110, 1.118010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.759926, 3.288731, 1.394558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542277, 0.832672, 0.112220,
		-0.539037, 0.447239, -0.713734,
		-0.644495, 0.326550, 0.691368,
		4.566577, 3.386696, 1.601968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.915173, 3.954628, 1.055619>,  <5.017724, 3.158110, 1.118010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.915173, 3.954628, 1.055619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.828232, 3.803402, 1.415579>,  <4.776067, 3.712666, 1.631556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.828232, 3.803402, 1.415579>,  <4.915173, 3.954628, 1.055619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.828232, 3.803402, 1.415579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654572, 0.627455, 0.421704,
		-0.724080, 0.680710, 0.111091,
		-0.217354, -0.378065, 0.899902,
		4.763026, 3.689982, 1.685550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.587392, 4.446172, 1.529441>,  <4.915173, 3.954628, 1.055619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.587392, 4.446172, 1.529441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735802, 4.192070, 1.800378>,  <4.824848, 4.039609, 1.962940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735802, 4.192070, 1.800378>,  <4.587392, 4.446172, 1.529441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.735802, 4.192070, 1.800378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497985, 0.751765, 0.432273,
		-0.783806, 0.176923, 0.595270,
		0.371025, -0.635254, 0.677343,
		4.847109, 4.001494, 2.003581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.160673, 3.976314, 1.179209>,  <4.587392, 4.446172, 1.529441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.160673, 3.976314, 1.179209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.375446, 4.156708, 0.894023>,  <4.504311, 4.264944, 0.722912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.375446, 4.156708, 0.894023>,  <4.160673, 3.976314, 1.179209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.375446, 4.156708, 0.894023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182506, 0.887201, 0.423753,
		0.823647, -0.097408, 0.558675,
		0.536934, 0.450984, -0.712963,
		4.536526, 4.292003, 0.680135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.694256, 3.044851, 0.664040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.532014, 2.680023, 0.639989>,  <2.434669, 2.461127, 0.625558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.532014, 2.680023, 0.639989>,  <2.694256, 3.044851, 0.664040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.532014, 2.680023, 0.639989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427505, 0.131148, 0.894449,
		-0.807914, 0.388497, -0.443108,
		-0.405604, -0.912069, -0.060128,
		2.410333, 2.406403, 0.621951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.942872, 2.949935, 0.666216>,  <2.694256, 3.044851, 0.664040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.942872, 2.949935, 0.666216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.086932, 2.623650, 0.847281>,  <2.173368, 2.427878, 0.955921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.086932, 2.623650, 0.847281>,  <1.942872, 2.949935, 0.666216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.086932, 2.623650, 0.847281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530309, 0.220189, 0.818712,
		-0.767506, -0.534910, -0.353279,
		0.360149, -0.815713, 0.452664,
		2.194977, 2.378936, 0.983081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.401574, 2.792765, 1.044648>,  <1.942872, 2.949935, 0.666216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.401574, 2.792765, 1.044648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.710299, 2.596115, 1.205948>,  <1.895535, 2.478125, 1.302728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.710299, 2.596115, 1.205948>,  <1.401574, 2.792765, 1.044648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.710299, 2.596115, 1.205948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317039, 0.252191, 0.914268,
		-0.551173, -0.833489, 0.038779,
		0.771812, -0.491626, 0.403249,
		1.941843, 2.448627, 1.326923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.147067, 2.199028, 1.457099>,  <1.401574, 2.792765, 1.044648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.147067, 2.199028, 1.457099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490611, 2.371407, 1.567838>,  <1.696738, 2.474833, 1.634281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490611, 2.371407, 1.567838>,  <1.147067, 2.199028, 1.457099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490611, 2.371407, 1.567838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358534, 0.119798, 0.925798,
		0.365804, -0.894390, 0.257399,
		0.858860, 0.430947, 0.276847,
		1.748269, 2.500690, 1.650892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.337446, 1.970955, 2.116093>,  <1.147067, 2.199028, 1.457099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.337446, 1.970955, 2.116093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.482729, 2.332111, 2.024120>,  <1.569899, 2.548805, 1.968937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.482729, 2.332111, 2.024120>,  <1.337446, 1.970955, 2.116093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.482729, 2.332111, 2.024120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454298, 0.387081, 0.802360,
		0.813446, -0.186965, 0.550772,
		0.363207, 0.902891, -0.229931,
		1.591691, 2.602979, 1.955141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670511, 2.257915, 2.721665>,  <1.337446, 1.970955, 2.116093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670511, 2.257915, 2.721665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566655, 2.559826, 2.480700>,  <1.504342, 2.740972, 2.336122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.566655, 2.559826, 2.480700>,  <1.670511, 2.257915, 2.721665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.566655, 2.559826, 2.480700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397238, 0.485112, 0.779018,
		0.880221, 0.441564, 0.173872,
		-0.259639, 0.754776, -0.602412,
		1.488763, 2.786259, 2.299977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.804608, 3.009463, 2.960978>,  <1.670511, 2.257915, 2.721665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.804608, 3.009463, 2.960978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.486331, 3.000130, 2.718877>,  <1.295365, 2.994529, 2.573616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.486331, 3.000130, 2.718877>,  <1.804608, 3.009463, 2.960978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.486331, 3.000130, 2.718877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492400, 0.606832, 0.623936,
		0.352728, 0.794487, -0.494341,
		-0.795692, -0.023334, -0.605252,
		1.247623, 2.993129, 2.537301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.634970, 3.616207, 2.777086>,  <1.804608, 3.009463, 2.960978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.634970, 3.616207, 2.777086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.296405, 3.403332, 2.769495>,  <1.093266, 3.275607, 2.764941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.296405, 3.403332, 2.769495>,  <1.634970, 3.616207, 2.777086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.296405, 3.403332, 2.769495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390332, 0.595770, 0.701925,
		-0.362250, 0.601526, -0.711998,
		-0.846413, -0.532188, -0.018977,
		1.042481, 3.243675, 2.763802>
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
