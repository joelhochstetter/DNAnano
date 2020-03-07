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
	<3.410720, 5.748841, 5.168144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.808357, 5.719195, 5.199856>,  <4.046940, 5.701408, 5.218883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.808357, 5.719195, 5.199856>,  <3.410720, 5.748841, 5.168144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.808357, 5.719195, 5.199856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036815, -0.917481, -0.396072,
		0.102092, 0.390814, -0.914790,
		0.994093, -0.074114, 0.079279,
		4.106586, 5.696961, 5.223639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.747526, 5.565167, 4.531913>,  <3.410720, 5.748841, 5.168144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.747526, 5.565167, 4.531913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985916, 5.440969, 4.828131>,  <4.128951, 5.366450, 5.005861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985916, 5.440969, 4.828131>,  <3.747526, 5.565167, 4.531913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.985916, 5.440969, 4.828131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052895, -0.905037, -0.422032,
		0.801258, 0.290692, -0.522956,
		0.595976, -0.310494, 0.740544,
		4.164709, 5.347821, 5.050294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.466226, 5.429054, 4.356662>,  <3.747526, 5.565167, 4.531913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.466226, 5.429054, 4.356662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.371513, 5.193588, 4.665831>,  <4.314686, 5.052308, 4.851332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.371513, 5.193588, 4.665831>,  <4.466226, 5.429054, 4.356662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.371513, 5.193588, 4.665831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166669, -0.808362, -0.564600,
		0.957161, -0.004864, 0.289516,
		-0.236780, -0.588666, 0.772921,
		4.300479, 5.016988, 4.897707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.944781, 4.958691, 4.426534>,  <4.466226, 5.429054, 4.356662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.944781, 4.958691, 4.426534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.640396, 4.763194, 4.597212>,  <4.457766, 4.645896, 4.699618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.640396, 4.763194, 4.597212>,  <4.944781, 4.958691, 4.426534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.640396, 4.763194, 4.597212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321388, -0.855268, -0.406480,
		0.563602, -0.172181, 0.807902,
		-0.760962, -0.488743, 0.426694,
		4.412107, 4.616571, 4.725220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.247586, 4.355764, 4.801166>,  <4.944781, 4.958691, 4.426534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.247586, 4.355764, 4.801166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860573, 4.282722, 4.731270>,  <4.628365, 4.238896, 4.689332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860573, 4.282722, 4.731270>,  <5.247586, 4.355764, 4.801166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.860573, 4.282722, 4.731270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227023, -0.931771, -0.283310,
		-0.111084, -0.313782, 0.942975,
		-0.967534, -0.182606, -0.174741,
		4.570313, 4.227940, 4.678848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.104596, 3.628036, 5.048591>,  <5.247586, 4.355764, 4.801166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.104596, 3.628036, 5.048591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.796432, 3.716629, 4.809454>,  <4.611534, 3.769785, 4.665972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.796432, 3.716629, 4.809454>,  <5.104596, 3.628036, 5.048591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.796432, 3.716629, 4.809454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033627, -0.922297, -0.385016,
		-0.636662, -0.316724, 0.703098,
		-0.770409, 0.221482, -0.597842,
		4.565310, 3.783074, 4.630101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.571947, 3.216227, 5.246957>,  <5.104596, 3.628036, 5.048591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.571947, 3.216227, 5.246957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.503891, 3.309646, 4.864019>,  <4.463058, 3.365698, 4.634257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.503891, 3.309646, 4.864019>,  <4.571947, 3.216227, 5.246957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.503891, 3.309646, 4.864019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163514, -0.951350, -0.261146,
		-0.971759, -0.200970, 0.123673,
		-0.170139, 0.233548, -0.957344,
		4.452849, 3.379711, 4.576816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.087449, 2.733874, 5.017753>,  <4.571947, 3.216227, 5.246957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.087449, 2.733874, 5.017753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.249054, 2.891542, 4.687565>,  <4.346017, 2.986144, 4.489452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.249054, 2.891542, 4.687565>,  <4.087449, 2.733874, 5.017753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.249054, 2.891542, 4.687565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095108, -0.915607, -0.390664,
		-0.909796, 0.079324, -0.407406,
		0.404013, 0.394172, -0.825471,
		4.370258, 3.009794, 4.439924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.516940, 3.893851, 4.379201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.466484, 4.002186, 3.997471>,  <6.436211, 4.067187, 3.768433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.466484, 4.002186, 3.997471>,  <6.516940, 3.893851, 4.379201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.466484, 4.002186, 3.997471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606107, -0.782606, -0.141990,
		-0.785318, 0.560514, 0.262868,
		-0.126134, 0.270834, -0.954326,
		6.428642, 4.083437, 3.711173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.777002, 3.899236, 4.191854>,  <6.516940, 3.893851, 4.379201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.777002, 3.899236, 4.191854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.011070, 3.843132, 3.872379>,  <6.151511, 3.809469, 3.680694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.011070, 3.843132, 3.872379>,  <5.777002, 3.899236, 4.191854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.011070, 3.843132, 3.872379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577608, -0.763396, -0.289129,
		-0.569161, 0.630519, -0.527732,
		0.585170, -0.140261, -0.798688,
		6.186621, 3.801054, 3.632773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.341557, 3.835686, 3.568454>,  <5.777002, 3.899236, 4.191854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.341557, 3.835686, 3.568454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.692558, 3.663021, 3.484879>,  <5.903159, 3.559422, 3.434733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.692558, 3.663021, 3.484879>,  <5.341557, 3.835686, 3.568454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.692558, 3.663021, 3.484879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476795, -0.738484, -0.476767,
		0.051505, 0.517985, -0.853837,
		0.877504, -0.431661, -0.208938,
		5.955810, 3.533523, 3.422197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.784559, 3.492609, 3.317653>,  <5.341557, 3.835686, 3.568454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.784559, 3.492609, 3.317653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.626938, 3.336597, 3.650543>,  <4.532365, 3.242991, 3.850277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.626938, 3.336597, 3.650543>,  <4.784559, 3.492609, 3.317653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.626938, 3.336597, 3.650543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325715, 0.905985, 0.270372,
		-0.859437, -0.164528, -0.484044,
		-0.394053, -0.390028, 0.832226,
		4.508722, 3.219589, 3.900211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038994, 3.617259, 3.358505>,  <4.784559, 3.492609, 3.317653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038994, 3.617259, 3.358505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.188408, 3.557158, 3.724651>,  <4.278056, 3.521097, 3.944339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.188408, 3.557158, 3.724651>,  <4.038994, 3.617259, 3.358505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188408, 3.557158, 3.724651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477035, 0.815194, 0.328475,
		-0.795556, -0.559359, 0.232827,
		0.373535, -0.150254, 0.915366,
		4.300468, 3.512081, 3.999261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.593131, 3.906562, 3.763616>,  <4.038994, 3.617259, 3.358505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.593131, 3.906562, 3.763616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903557, 3.899191, 4.015770>,  <4.089812, 3.894768, 4.167062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903557, 3.899191, 4.015770>,  <3.593131, 3.906562, 3.763616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.903557, 3.899191, 4.015770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394060, 0.766248, 0.507525,
		-0.492383, -0.642281, 0.587396,
		0.776064, -0.018428, 0.630385,
		4.136376, 3.893663, 4.204885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.315819, 3.988831, 4.431999>,  <3.593131, 3.906562, 3.763616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.315819, 3.988831, 4.431999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.702988, 4.063490, 4.499279>,  <3.935289, 4.108285, 4.539647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.702988, 4.063490, 4.499279>,  <3.315819, 3.988831, 4.431999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.702988, 4.063490, 4.499279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251016, 0.747468, 0.615047,
		-0.010927, -0.637537, 0.770342,
		0.967921, 0.186648, 0.168199,
		3.993364, 4.119484, 4.549739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.355451, 4.069674, 5.176039>,  <3.315819, 3.988831, 4.431999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.355451, 4.069674, 5.176039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.666183, 4.242388, 4.992695>,  <3.852623, 4.346016, 4.882688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.666183, 4.242388, 4.992695>,  <3.355451, 4.069674, 5.176039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.666183, 4.242388, 4.992695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229067, 0.871792, 0.433022,
		0.586567, -0.231390, 0.776143,
		0.776832, 0.431785, -0.458361,
		3.899233, 4.371923, 4.855186>
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
