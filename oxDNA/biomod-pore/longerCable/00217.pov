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
	<24.019775, 35.026360, 35.075111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412399, 35.089211, 35.031567>,  <24.647974, 35.126923, 35.005440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412399, 35.089211, 35.031567>,  <24.019775, 35.026360, 35.075111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412399, 35.089211, 35.031567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115742, 0.941760, 0.315741,
		0.152135, -0.297319, 0.942580,
		0.981559, 0.157131, -0.108862,
		24.706867, 35.136349, 34.998909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311071, 35.260063, 35.721931>,  <24.019775, 35.026360, 35.075111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311071, 35.260063, 35.721931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560532, 35.378410, 35.432510>,  <24.710207, 35.449417, 35.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560532, 35.378410, 35.432510>,  <24.311071, 35.260063, 35.721931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560532, 35.378410, 35.432510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070254, 0.943075, 0.325077,
		0.778540, -0.151902, 0.608934,
		0.623650, 0.295865, -0.723550,
		24.747627, 35.467171, 35.215446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874365, 35.743961, 35.920746>,  <24.311071, 35.260063, 35.721931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874365, 35.743961, 35.920746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782084, 35.780781, 35.533283>,  <24.726715, 35.802872, 35.300804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782084, 35.780781, 35.533283>,  <24.874365, 35.743961, 35.920746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782084, 35.780781, 35.533283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110920, 0.986537, 0.120169,
		0.966681, 0.135167, -0.217387,
		-0.230704, 0.092052, -0.968660,
		24.712872, 35.808395, 35.242683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.382349, 36.217808, 35.487171>,  <24.874365, 35.743961, 35.920746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.382349, 36.217808, 35.487171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986450, 36.190666, 35.436893>,  <24.748911, 36.174381, 35.406727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986450, 36.190666, 35.436893>,  <25.382349, 36.217808, 35.487171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986450, 36.190666, 35.436893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121657, 0.861538, 0.492901,
		0.074847, 0.503138, -0.860959,
		-0.989746, -0.067850, -0.125694,
		24.689526, 36.170311, 35.399185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136423, 36.765129, 35.156830>,  <25.382349, 36.217808, 35.487171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136423, 36.765129, 35.156830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.847696, 36.638042, 35.402771>,  <24.674459, 36.561790, 35.550335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.847696, 36.638042, 35.402771>,  <25.136423, 36.765129, 35.156830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.847696, 36.638042, 35.402771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138451, 0.936732, 0.321504,
		-0.678094, 0.146941, -0.720137,
		-0.721817, -0.317713, 0.614849,
		24.631151, 36.542728, 35.587227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.641197, 37.299164, 35.345974>,  <25.136423, 36.765129, 35.156830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.641197, 37.299164, 35.345974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595884, 37.047249, 35.653358>,  <24.568697, 36.896099, 35.837788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595884, 37.047249, 35.653358>,  <24.641197, 37.299164, 35.345974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595884, 37.047249, 35.653358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322260, 0.708336, 0.628019,
		-0.939848, 0.318789, 0.122713,
		-0.113283, -0.629789, 0.768461,
		24.561899, 36.858311, 35.883896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336514, 37.696438, 35.901356>,  <24.641197, 37.299164, 35.345974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336514, 37.696438, 35.901356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509268, 37.376244, 36.067585>,  <24.612921, 37.184128, 36.167320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509268, 37.376244, 36.067585>,  <24.336514, 37.696438, 35.901356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509268, 37.376244, 36.067585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504412, 0.596336, 0.624461,
		-0.747690, -0.060078, 0.661324,
		0.431888, -0.800484, 0.415571,
		24.638834, 37.136097, 36.192257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274488, 37.805035, 36.680721>,  <24.336514, 37.696438, 35.901356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274488, 37.805035, 36.680721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579727, 37.562553, 36.591103>,  <24.762871, 37.417065, 36.537331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579727, 37.562553, 36.591103>,  <24.274488, 37.805035, 36.680721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579727, 37.562553, 36.591103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593272, 0.519558, 0.614888,
		-0.256343, -0.602141, 0.756118,
		0.763096, -0.606207, -0.224048,
		24.808657, 37.380692, 36.523888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599060, 37.422031, 37.418163>,  <24.274488, 37.805035, 36.680721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599060, 37.422031, 37.418163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855911, 37.448154, 37.112640>,  <25.010021, 37.463829, 36.929325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855911, 37.448154, 37.112640>,  <24.599060, 37.422031, 37.418163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855911, 37.448154, 37.112640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608789, 0.562081, 0.559858,
		0.465884, -0.824500, 0.321171,
		0.642127, 0.065304, -0.763811,
		25.048550, 37.467747, 36.883495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246569, 37.311970, 37.655453>,  <24.599060, 37.422031, 37.418163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246569, 37.311970, 37.655453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362759, 37.486366, 37.314739>,  <25.432472, 37.591003, 37.110313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362759, 37.486366, 37.314739>,  <25.246569, 37.311970, 37.655453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362759, 37.486366, 37.314739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540012, 0.660172, 0.522074,
		0.789944, -0.611622, -0.043678,
		0.290477, 0.435995, -0.851782,
		25.449902, 37.617165, 37.059204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869421, 37.367264, 37.667343>,  <25.246569, 37.311970, 37.655453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869421, 37.367264, 37.667343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779583, 37.653450, 37.402718>,  <25.725679, 37.825161, 37.243942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779583, 37.653450, 37.402718>,  <25.869421, 37.367264, 37.667343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779583, 37.653450, 37.402718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684211, 0.599192, 0.415722,
		0.693839, -0.359282, -0.624103,
		-0.224596, 0.715462, -0.661567,
		25.712204, 37.868088, 37.204247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450783, 37.739212, 37.439877>,  <25.869421, 37.367264, 37.667343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450783, 37.739212, 37.439877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130514, 37.972099, 37.383385>,  <25.938353, 38.111832, 37.349491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130514, 37.972099, 37.383385>,  <26.450783, 37.739212, 37.439877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130514, 37.972099, 37.383385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428774, 0.721526, 0.543647,
		0.418422, 0.374728, -0.827347,
		-0.800672, 0.582219, -0.141229,
		25.890312, 38.146767, 37.341015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592005, 38.306187, 37.003117>,  <26.450783, 37.739212, 37.439877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592005, 38.306187, 37.003117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282576, 38.392792, 37.241348>,  <26.096918, 38.444756, 37.384285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282576, 38.392792, 37.241348>,  <26.592005, 38.306187, 37.003117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282576, 38.392792, 37.241348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458971, 0.839452, 0.290976,
		-0.436958, 0.498443, -0.748748,
		-0.773572, 0.216509, 0.595575,
		26.050505, 38.457745, 37.420021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233007, 38.948589, 36.879917>,  <26.592005, 38.306187, 37.003117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233007, 38.948589, 36.879917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178030, 38.890274, 37.271805>,  <26.145044, 38.855286, 37.506939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178030, 38.890274, 37.271805>,  <26.233007, 38.948589, 36.879917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178030, 38.890274, 37.271805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292877, 0.938901, 0.180797,
		-0.946220, 0.311787, -0.086347,
		-0.137442, -0.145785, 0.979723,
		26.136797, 38.846539, 37.565723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781391, 39.479610, 37.113312>,  <26.233007, 38.948589, 36.879917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781391, 39.479610, 37.113312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013323, 39.352283, 37.413303>,  <26.152483, 39.275887, 37.593300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013323, 39.352283, 37.413303>,  <25.781391, 39.479610, 37.113312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013323, 39.352283, 37.413303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207740, 0.947854, 0.241694,
		-0.787807, 0.015659, 0.615723,
		0.579831, -0.318319, 0.749979,
		26.187273, 39.256786, 37.638298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436384, 38.971046, 36.923275>,  <25.781391, 39.479610, 37.113312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436384, 38.971046, 36.923275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712152, 38.683506, 36.958942>,  <25.877613, 38.510983, 36.980343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712152, 38.683506, 36.958942>,  <25.436384, 38.971046, 36.923275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712152, 38.683506, 36.958942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617638, -0.647685, -0.446126,
		0.378449, 0.252497, -0.890517,
		0.689420, -0.718853, 0.089164,
		25.918978, 38.467850, 36.985691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413492, 38.686005, 36.281075>,  <25.436384, 38.971046, 36.923275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413492, 38.686005, 36.281075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557526, 38.419270, 36.542046>,  <25.643946, 38.259228, 36.698627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557526, 38.419270, 36.542046>,  <25.413492, 38.686005, 36.281075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557526, 38.419270, 36.542046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428106, -0.739469, -0.519530,
		0.828893, -0.092232, -0.551751,
		0.360086, -0.666842, 0.652426,
		25.665552, 38.219215, 36.737774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783663, 38.140388, 35.947369>,  <25.413492, 38.686005, 36.281075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783663, 38.140388, 35.947369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660925, 37.981659, 36.293404>,  <25.587282, 37.886421, 36.501026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660925, 37.981659, 36.293404>,  <25.783663, 38.140388, 35.947369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660925, 37.981659, 36.293404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309676, -0.817852, -0.484994,
		0.899971, -0.416715, 0.128067,
		-0.306844, -0.396821, 0.865090,
		25.568872, 37.862614, 36.552929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009933, 37.479614, 35.938595>,  <25.783663, 38.140388, 35.947369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009933, 37.479614, 35.938595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709410, 37.469891, 36.202396>,  <25.529097, 37.464058, 36.360676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709410, 37.469891, 36.202396>,  <26.009933, 37.479614, 35.938595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709410, 37.469891, 36.202396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375254, -0.806318, -0.457204,
		0.542883, -0.590982, 0.596672,
		-0.751307, -0.024305, 0.659505,
		25.484018, 37.462601, 36.400249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929733, 36.737293, 36.180073>,  <26.009933, 37.479614, 35.938595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929733, 36.737293, 36.180073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586641, 36.926884, 36.259716>,  <25.380787, 37.040638, 36.307503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586641, 36.926884, 36.259716>,  <25.929733, 36.737293, 36.180073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586641, 36.926884, 36.259716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512805, -0.761333, -0.396741,
		-0.036461, -0.442399, 0.896077,
		-0.857731, 0.473978, 0.199105,
		25.329323, 37.069077, 36.319447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476950, 36.168568, 36.464272>,  <25.929733, 36.737293, 36.180073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476950, 36.168568, 36.464272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270527, 36.484325, 36.331280>,  <25.146673, 36.673779, 36.251484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270527, 36.484325, 36.331280>,  <25.476950, 36.168568, 36.464272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270527, 36.484325, 36.331280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608459, -0.611042, -0.506365,
		-0.602870, -0.059029, 0.795653,
		-0.516068, 0.789394, -0.332462,
		25.115711, 36.721146, 36.231537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672634, 36.345432, 37.240097>,  <25.476950, 36.168568, 36.464272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672634, 36.345432, 37.240097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708248, 36.172039, 37.598797>,  <25.729616, 36.068001, 37.814018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708248, 36.172039, 37.598797>,  <25.672634, 36.345432, 37.240097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708248, 36.172039, 37.598797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820837, -0.478039, -0.312580,
		0.564181, 0.763917, 0.313259,
		0.089035, -0.433486, 0.896751,
		25.734959, 36.041992, 37.867821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293886, 36.547050, 37.637455>,  <25.672634, 36.345432, 37.240097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293886, 36.547050, 37.637455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164732, 36.171993, 37.688942>,  <26.087240, 35.946957, 37.719833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164732, 36.171993, 37.688942>,  <26.293886, 36.547050, 37.637455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164732, 36.171993, 37.688942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879077, -0.347508, -0.326286,
		0.350670, 0.007797, 0.936467,
		-0.322886, -0.937645, 0.128715,
		26.067865, 35.890701, 37.727558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799576, 36.156738, 37.845982>,  <26.293886, 36.547050, 37.637455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799576, 36.156738, 37.845982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564774, 35.862846, 37.709984>,  <26.423893, 35.686512, 37.628384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564774, 35.862846, 37.709984>,  <26.799576, 36.156738, 37.845982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564774, 35.862846, 37.709984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807564, -0.501752, -0.309975,
		0.057156, -0.456524, 0.887873,
		-0.587003, -0.734732, -0.339995,
		26.388672, 35.642426, 37.607986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717566, 35.527428, 38.341713>,  <26.799576, 36.156738, 37.845982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717566, 35.527428, 38.341713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709597, 35.503540, 37.942505>,  <26.704815, 35.489208, 37.702980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709597, 35.503540, 37.942505>,  <26.717566, 35.527428, 38.341713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709597, 35.503540, 37.942505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786507, -0.617217, 0.021229,
		-0.617260, -0.784524, 0.059264,
		-0.019924, -0.059715, -0.998017,
		26.703619, 35.485626, 37.643101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689108, 34.837601, 38.214268>,  <26.717566, 35.527428, 38.341713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689108, 34.837601, 38.214268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864569, 35.035759, 37.914356>,  <26.969845, 35.154655, 37.734409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864569, 35.035759, 37.914356>,  <26.689108, 34.837601, 38.214268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864569, 35.035759, 37.914356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831483, -0.540248, 0.129495,
		-0.340915, -0.680231, -0.648894,
		0.438650, 0.495397, -0.749779,
		26.996164, 35.184380, 37.689423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882563, 34.402626, 37.597065>,  <26.689108, 34.837601, 38.214268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882563, 34.402626, 37.597065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125692, 34.699841, 37.709095>,  <27.271570, 34.878170, 37.776314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125692, 34.699841, 37.709095>,  <26.882563, 34.402626, 37.597065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125692, 34.699841, 37.709095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728843, -0.662036, 0.174633,
		0.315178, 0.097984, -0.943961,
		0.607825, 0.743040, 0.280074,
		27.308041, 34.922752, 37.793118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284252, 34.745827, 37.112389>,  <26.882563, 34.402626, 37.597065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284252, 34.745827, 37.112389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467751, 34.707924, 37.465790>,  <27.577850, 34.685181, 37.677830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467751, 34.707924, 37.465790>,  <27.284252, 34.745827, 37.112389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467751, 34.707924, 37.465790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401240, -0.865063, -0.301119,
		0.792816, 0.492633, -0.358826,
		0.458748, -0.094756, 0.883500,
		27.605375, 34.679497, 37.730839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048780, 34.858597, 37.094849>,  <27.284252, 34.745827, 37.112389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048780, 34.858597, 37.094849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957750, 34.584446, 37.371536>,  <27.903133, 34.419956, 37.537548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.957750, 34.584446, 37.371536>,  <28.048780, 34.858597, 37.094849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957750, 34.584446, 37.371536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363779, -0.718764, -0.592490,
		0.903258, 0.116797, 0.412896,
		-0.227573, -0.685374, 0.691718,
		27.889479, 34.378834, 37.579052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705973, 34.392368, 37.363899>,  <28.048780, 34.858597, 37.094849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705973, 34.392368, 37.363899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353630, 34.207199, 37.324310>,  <28.142225, 34.096096, 37.300556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353630, 34.207199, 37.324310>,  <28.705973, 34.392368, 37.363899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353630, 34.207199, 37.324310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405022, -0.628756, -0.663795,
		0.245057, -0.624793, 0.741337,
		-0.880854, -0.462925, -0.098974,
		28.089375, 34.068321, 37.294617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699589, 33.644447, 37.302505>,  <28.705973, 34.392368, 37.363899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699589, 33.644447, 37.302505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360332, 33.718056, 37.103794>,  <28.156778, 33.762222, 36.984566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360332, 33.718056, 37.103794>,  <28.699589, 33.644447, 37.302505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360332, 33.718056, 37.103794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301153, -0.604008, -0.737890,
		-0.435845, -0.775443, 0.456867,
		-0.848143, 0.184019, -0.496780,
		28.105890, 33.773262, 36.954762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439030, 32.999882, 37.038750>,  <28.699589, 33.644447, 37.302505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439030, 32.999882, 37.038750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301746, 33.293205, 36.803986>,  <28.219376, 33.469200, 36.663128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301746, 33.293205, 36.803986>,  <28.439030, 32.999882, 37.038750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301746, 33.293205, 36.803986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504011, -0.383496, -0.773889,
		-0.792579, -0.561413, -0.237978,
		-0.343208, 0.733311, -0.586909,
		28.198784, 33.513199, 36.627914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397293, 32.704830, 36.412674>,  <28.439030, 32.999882, 37.038750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397293, 32.704830, 36.412674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415550, 33.090984, 36.309944>,  <28.426504, 33.322678, 36.248306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415550, 33.090984, 36.309944>,  <28.397293, 32.704830, 36.412674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415550, 33.090984, 36.309944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713647, -0.211408, -0.667843,
		-0.699017, -0.152796, -0.698591,
		0.045645, 0.965381, -0.256820,
		28.429243, 33.380600, 36.232899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512476, 32.725918, 35.738354>,  <28.397293, 32.704830, 36.412674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512476, 32.725918, 35.738354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603695, 33.108505, 35.811195>,  <28.658426, 33.338058, 35.854900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603695, 33.108505, 35.811195>,  <28.512476, 32.725918, 35.738354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603695, 33.108505, 35.811195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742482, -0.049840, -0.668009,
		-0.629854, 0.287547, -0.721527,
		0.228045, 0.956469, 0.182107,
		28.672108, 33.395447, 35.865826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212837, 33.090267, 35.950005>,  <28.512476, 32.725918, 35.738354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212837, 33.090267, 35.950005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423033, 33.429119, 35.981594>,  <29.549150, 33.632431, 36.000546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423033, 33.429119, 35.981594>,  <29.212837, 33.090267, 35.950005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423033, 33.429119, 35.981594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847748, 0.529198, -0.035691,
		-0.072025, -0.048192, 0.996238,
		0.525487, 0.847129, 0.078970,
		29.580679, 33.683258, 36.005283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011499, 33.433716, 36.658966>,  <29.212837, 33.090267, 35.950005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011499, 33.433716, 36.658966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118839, 33.618996, 36.321106>,  <29.183243, 33.730164, 36.118389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118839, 33.618996, 36.321106>,  <29.011499, 33.433716, 36.658966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118839, 33.618996, 36.321106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892385, 0.449766, -0.036868,
		0.362818, 0.763647, 0.534047,
		0.268350, 0.463199, -0.844651,
		29.199345, 33.757954, 36.067711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064596, 34.202980, 36.655796>,  <29.011499, 33.433716, 36.658966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064596, 34.202980, 36.655796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927877, 34.018806, 36.328094>,  <28.845846, 33.908302, 36.131474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927877, 34.018806, 36.328094>,  <29.064596, 34.202980, 36.655796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927877, 34.018806, 36.328094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933659, 0.265648, 0.240232,
		0.107023, 0.847016, -0.520682,
		-0.341798, -0.460429, -0.819255,
		28.825338, 33.880676, 36.082317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554781, 34.661255, 36.151272>,  <29.064596, 34.202980, 36.655796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554781, 34.661255, 36.151272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489332, 34.266685, 36.156971>,  <28.450062, 34.029945, 36.160389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489332, 34.266685, 36.156971>,  <28.554781, 34.661255, 36.151272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489332, 34.266685, 36.156971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925749, 0.158517, 0.343311,
		-0.340906, 0.042987, -0.939114,
		-0.163623, -0.986420, 0.014244,
		28.440245, 33.970760, 36.161243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885157, 34.441540, 35.803993>,  <28.554781, 34.661255, 36.151272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885157, 34.441540, 35.803993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993139, 34.167229, 36.074352>,  <28.057930, 34.002644, 36.236568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993139, 34.167229, 36.074352>,  <27.885157, 34.441540, 35.803993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993139, 34.167229, 36.074352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827652, 0.193451, 0.526848,
		-0.492051, -0.701634, -0.515360,
		0.269957, -0.685775, 0.675896,
		28.074127, 33.961494, 36.277122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137449, 35.154640, 35.616470>,  <27.885157, 34.441540, 35.803993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137449, 35.154640, 35.616470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832298, 35.089375, 35.866718>,  <27.649208, 35.050217, 36.016869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832298, 35.089375, 35.866718>,  <28.137449, 35.154640, 35.616470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832298, 35.089375, 35.866718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063392, 0.944095, 0.323521,
		-0.643430, 0.286466, -0.709884,
		-0.762876, -0.163162, 0.625618,
		27.603436, 35.040424, 36.054405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824905, 35.565521, 35.558773>,  <28.137449, 35.154640, 35.616470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824905, 35.565521, 35.558773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820494, 35.716583, 35.929127>,  <28.817846, 35.807220, 36.151337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820494, 35.716583, 35.929127>,  <28.824905, 35.565521, 35.558773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820494, 35.716583, 35.929127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796802, 0.562748, -0.220046,
		-0.604140, 0.735318, -0.307120,
		-0.011027, 0.377652, 0.925882,
		28.817186, 35.829880, 36.206890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757298, 36.415741, 35.680111>,  <28.824905, 35.565521, 35.558773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757298, 36.415741, 35.680111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974449, 36.216198, 35.950348>,  <29.104740, 36.096474, 36.112492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974449, 36.216198, 35.950348>,  <28.757298, 36.415741, 35.680111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974449, 36.216198, 35.950348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737939, 0.667390, -0.100184,
		-0.400906, 0.552934, 0.730437,
		0.542881, -0.498854, 0.675592,
		29.137314, 36.066544, 36.153027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893631, 36.812027, 36.302818>,  <28.757298, 36.415741, 35.680111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893631, 36.812027, 36.302818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175404, 36.533703, 36.246784>,  <29.344467, 36.366707, 36.213165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175404, 36.533703, 36.246784>,  <28.893631, 36.812027, 36.302818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175404, 36.533703, 36.246784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692909, 0.716935, -0.076692,
		0.153793, -0.043040, 0.987165,
		0.704433, -0.695810, -0.140082,
		29.386734, 36.324959, 36.204758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479994, 36.950878, 36.792477>,  <28.893631, 36.812027, 36.302818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479994, 36.950878, 36.792477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596024, 36.766579, 36.456959>,  <29.665642, 36.655998, 36.255650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596024, 36.766579, 36.456959>,  <29.479994, 36.950878, 36.792477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596024, 36.766579, 36.456959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726426, 0.676608, -0.120442,
		0.623026, -0.574382, 0.530965,
		0.290076, -0.460745, -0.838791,
		29.683046, 36.628357, 36.205322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211090, 36.765110, 36.888599>,  <29.479994, 36.950878, 36.792477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211090, 36.765110, 36.888599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132526, 36.795444, 36.497566>,  <30.085388, 36.813644, 36.262947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132526, 36.795444, 36.497566>,  <30.211090, 36.765110, 36.888599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132526, 36.795444, 36.497566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912544, 0.378898, -0.153949,
		0.358730, -0.922326, -0.143623,
		-0.196410, 0.075836, -0.977585,
		30.073603, 36.818195, 36.204292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752207, 36.249832, 36.595516>,  <30.211090, 36.765110, 36.888599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752207, 36.249832, 36.595516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608654, 36.550991, 36.374847>,  <30.522522, 36.731686, 36.242447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608654, 36.550991, 36.374847>,  <30.752207, 36.249832, 36.595516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608654, 36.550991, 36.374847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932513, 0.263707, -0.246735,
		-0.040287, -0.602991, -0.796730,
		-0.358883, 0.752901, -0.551673,
		30.500990, 36.776863, 36.209347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079025, 36.273323, 35.965260>,  <30.752207, 36.249832, 36.595516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079025, 36.273323, 35.965260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967203, 36.654289, 36.013832>,  <30.900110, 36.882870, 36.042976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967203, 36.654289, 36.013832>,  <31.079025, 36.273323, 35.965260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967203, 36.654289, 36.013832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892702, 0.304395, -0.332304,
		-0.353455, 0.015500, -0.935323,
		-0.279557, 0.952420, 0.121427,
		30.883335, 36.940014, 36.050259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034767, 36.601429, 35.364723>,  <31.079025, 36.273323, 35.965260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034767, 36.601429, 35.364723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139359, 36.833164, 35.673527>,  <31.202114, 36.972206, 35.858807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139359, 36.833164, 35.673527>,  <31.034767, 36.601429, 35.364723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139359, 36.833164, 35.673527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917913, 0.098051, -0.384477,
		-0.298439, 0.809167, -0.506146,
		0.261478, 0.579340, 0.772007,
		31.217802, 37.006966, 35.905128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317368, 37.264118, 35.168652>,  <31.034767, 36.601429, 35.364723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317368, 37.264118, 35.168652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461740, 37.172928, 35.530373>,  <31.548365, 37.118214, 35.747406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461740, 37.172928, 35.530373>,  <31.317368, 37.264118, 35.168652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461740, 37.172928, 35.530373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929065, 0.003649, -0.369898,
		0.081027, 0.973661, 0.213119,
		0.360932, -0.227973, 0.904299,
		31.570021, 37.104534, 35.801662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823404, 37.835468, 35.541954>,  <31.317368, 37.264118, 35.168652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823404, 37.835468, 35.541954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885704, 37.444530, 35.599277>,  <31.923084, 37.209969, 35.633671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885704, 37.444530, 35.599277>,  <31.823404, 37.835468, 35.541954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885704, 37.444530, 35.599277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901134, 0.081160, -0.425876,
		0.404597, 0.195469, 0.893361,
		0.155750, -0.977346, 0.143307,
		31.932428, 37.151325, 35.642269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309204, 38.046307, 34.974106>,  <31.823404, 37.835468, 35.541954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309204, 38.046307, 34.974106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637226, 37.931095, 34.776299>,  <32.834042, 37.861969, 34.657616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637226, 37.931095, 34.776299>,  <32.309204, 38.046307, 34.974106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637226, 37.931095, 34.776299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504662, -0.043499, 0.862221,
		-0.269855, -0.956634, 0.109685,
		0.820058, -0.288028, -0.494515,
		32.883244, 37.844688, 34.627945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501823, 37.447254, 35.256157>,  <32.309204, 38.046307, 34.974106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501823, 37.447254, 35.256157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829945, 37.624447, 35.111450>,  <33.026817, 37.730762, 35.024628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829945, 37.624447, 35.111450>,  <32.501823, 37.447254, 35.256157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829945, 37.624447, 35.111450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429082, -0.058448, 0.901373,
		0.378150, -0.894622, -0.238021,
		0.820299, 0.442985, -0.361764,
		33.076035, 37.757343, 35.002922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140644, 37.300343, 35.564407>,  <32.501823, 37.447254, 35.256157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140644, 37.300343, 35.564407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155842, 37.662804, 35.395912>,  <33.164959, 37.880280, 35.294815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155842, 37.662804, 35.395912>,  <33.140644, 37.300343, 35.564407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155842, 37.662804, 35.395912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752891, 0.251218, 0.608313,
		0.657048, -0.340255, -0.672692,
		0.037990, 0.906155, -0.421237,
		33.167240, 37.934650, 35.269543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893913, 37.440689, 35.652786>,  <33.140644, 37.300343, 35.564407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893913, 37.440689, 35.652786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748699, 37.804600, 35.572269>,  <33.661572, 38.022945, 35.523960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748699, 37.804600, 35.572269>,  <33.893913, 37.440689, 35.652786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748699, 37.804600, 35.572269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721056, 0.411128, 0.557720,
		0.590157, 0.057325, -0.805251,
		-0.363032, 0.909773, -0.201295,
		33.639790, 38.077530, 35.511879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018433, 36.965717, 36.230011>,  <33.893913, 37.440689, 35.652786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018433, 36.965717, 36.230011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950901, 37.279125, 36.469208>,  <33.910381, 37.467171, 36.612724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950901, 37.279125, 36.469208>,  <34.018433, 36.965717, 36.230011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950901, 37.279125, 36.469208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253125, -0.551887, 0.794574,
		0.952589, 0.285513, -0.105154,
		-0.168828, 0.783519, 0.597992,
		33.900253, 37.514179, 36.648605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573807, 36.988522, 36.687881>,  <34.018433, 36.965717, 36.230011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573807, 36.988522, 36.687881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272285, 37.176006, 36.872093>,  <34.091373, 37.288498, 36.982620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272285, 37.176006, 36.872093>,  <34.573807, 36.988522, 36.687881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272285, 37.176006, 36.872093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075446, -0.634481, 0.769248,
		0.652752, 0.614608, 0.442912,
		-0.753805, 0.468713, 0.460528,
		34.046143, 37.316620, 37.010250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849834, 37.061337, 37.322266>,  <34.573807, 36.988522, 36.687881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849834, 37.061337, 37.322266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453606, 37.107319, 37.352089>,  <34.215870, 37.134911, 37.369984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453606, 37.107319, 37.352089>,  <34.849834, 37.061337, 37.322266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453606, 37.107319, 37.352089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026362, -0.693858, 0.719630,
		0.134457, 0.710877, 0.690344,
		-0.990569, 0.114958, 0.074554,
		34.156437, 37.141808, 37.374454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638855, 37.231430, 38.029610>,  <34.849834, 37.061337, 37.322266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638855, 37.231430, 38.029610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358231, 37.028248, 37.829693>,  <34.189857, 36.906338, 37.709743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358231, 37.028248, 37.829693>,  <34.638855, 37.231430, 38.029610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358231, 37.028248, 37.829693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041310, -0.671186, 0.740137,
		-0.711413, 0.539897, 0.449893,
		-0.701559, -0.507958, -0.499793,
		34.147762, 36.875862, 37.679756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313473, 36.984093, 38.616535>,  <34.638855, 37.231430, 38.029610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313473, 36.984093, 38.616535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229420, 36.760815, 38.295471>,  <34.178989, 36.626846, 38.102833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229420, 36.760815, 38.295471>,  <34.313473, 36.984093, 38.616535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229420, 36.760815, 38.295471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006775, -0.821799, 0.569736,
		-0.977649, 0.114282, 0.176469,
		-0.210133, -0.558198, -0.802658,
		34.166382, 36.593357, 38.054672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886021, 36.585865, 38.812485>,  <34.313473, 36.984093, 38.616535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886021, 36.585865, 38.812485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067921, 36.408741, 38.503391>,  <34.177059, 36.302467, 38.317936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067921, 36.408741, 38.503391>,  <33.886021, 36.585865, 38.812485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067921, 36.408741, 38.503391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162062, -0.812009, 0.560694,
		-0.875751, -0.380206, -0.297496,
		0.454749, -0.442815, -0.772734,
		34.204346, 36.275898, 38.271572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656395, 35.917500, 38.774891>,  <33.886021, 36.585865, 38.812485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656395, 35.917500, 38.774891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029888, 35.941967, 38.633808>,  <34.253983, 35.956646, 38.549160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029888, 35.941967, 38.633808>,  <33.656395, 35.917500, 38.774891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029888, 35.941967, 38.633808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331271, -0.521031, 0.786629,
		-0.135654, -0.851343, -0.506767,
		0.933733, 0.061168, -0.352705,
		34.310009, 35.960316, 38.527996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715225, 36.091976, 38.019142>,  <33.656395, 35.917500, 38.774891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715225, 36.091976, 38.019142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733139, 36.475277, 38.132099>,  <33.743889, 36.705257, 38.199875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733139, 36.475277, 38.132099>,  <33.715225, 36.091976, 38.019142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733139, 36.475277, 38.132099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315035, 0.281801, -0.906279,
		-0.948023, -0.048377, 0.314503,
		0.044784, 0.958252, 0.282394,
		33.746574, 36.762753, 38.216816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234589, 36.522686, 37.552258>,  <33.715225, 36.091976, 38.019142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234589, 36.522686, 37.552258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501347, 36.774677, 37.711445>,  <33.661400, 36.925873, 37.806957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501347, 36.774677, 37.711445>,  <33.234589, 36.522686, 37.552258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501347, 36.774677, 37.711445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215803, 0.674471, -0.706058,
		-0.713222, 0.384981, 0.585751,
		0.666891, 0.629983, 0.397968,
		33.701412, 36.963673, 37.830833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899204, 37.185730, 37.737789>,  <33.234589, 36.522686, 37.552258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899204, 37.185730, 37.737789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286556, 37.210468, 37.641109>,  <33.518967, 37.225311, 37.583099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286556, 37.210468, 37.641109>,  <32.899204, 37.185730, 37.737789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286556, 37.210468, 37.641109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212607, 0.711502, -0.669748,
		0.130548, 0.699956, 0.702152,
		0.968378, 0.061848, -0.241701,
		33.577068, 37.229023, 37.568600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002449, 37.950214, 37.588409>,  <32.899204, 37.185730, 37.737789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002449, 37.950214, 37.588409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318306, 37.755600, 37.438877>,  <33.507820, 37.638832, 37.349159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318306, 37.755600, 37.438877>,  <33.002449, 37.950214, 37.588409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318306, 37.755600, 37.438877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044205, 0.652806, -0.756235,
		0.611971, 0.580630, 0.536991,
		0.789643, -0.486532, -0.373831,
		33.555199, 37.609642, 37.326729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417603, 38.458778, 37.379166>,  <33.002449, 37.950214, 37.588409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417603, 38.458778, 37.379166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570881, 38.160927, 37.160557>,  <33.662846, 37.982216, 37.029392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570881, 38.160927, 37.160557>,  <33.417603, 38.458778, 37.379166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570881, 38.160927, 37.160557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156188, 0.635403, -0.756220,
		0.910367, 0.204418, 0.359785,
		0.383193, -0.744632, -0.546522,
		33.685841, 37.937538, 36.996601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109879, 38.442501, 37.008606>,  <33.417603, 38.458778, 37.379166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109879, 38.442501, 37.008606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240292, 38.788319, 37.161587>,  <34.318539, 38.995808, 37.253376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240292, 38.788319, 37.161587>,  <34.109879, 38.442501, 37.008606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240292, 38.788319, 37.161587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769935, -0.008086, -0.638071,
		-0.548548, 0.502493, -0.668278,
		0.326030, 0.864543, 0.382452,
		34.338100, 39.047680, 37.276321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259033, 38.853279, 36.454792>,  <34.109879, 38.442501, 37.008606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259033, 38.853279, 36.454792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461147, 38.963589, 36.781872>,  <34.582417, 39.029774, 36.978119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461147, 38.963589, 36.781872>,  <34.259033, 38.853279, 36.454792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461147, 38.963589, 36.781872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844818, 0.035142, -0.533898,
		-0.175973, 0.960579, -0.215224,
		0.505288, 0.275777, 0.817699,
		34.612732, 39.046322, 37.027180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534824, 39.493809, 36.168621>,  <34.259033, 38.853279, 36.454792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534824, 39.493809, 36.168621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769642, 39.401924, 36.479134>,  <34.910534, 39.346794, 36.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769642, 39.401924, 36.479134>,  <34.534824, 39.493809, 36.168621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769642, 39.401924, 36.479134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804934, 0.267934, -0.529427,
		-0.086374, 0.935651, 0.342194,
		0.587044, -0.229715, 0.776280,
		34.945755, 39.333008, 36.712017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947025, 40.176468, 36.506588>,  <34.534824, 39.493809, 36.168621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947025, 40.176468, 36.506588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159500, 39.842804, 36.565937>,  <35.286987, 39.642605, 36.601547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159500, 39.842804, 36.565937>,  <34.947025, 40.176468, 36.506588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159500, 39.842804, 36.565937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768083, 0.400198, -0.499890,
		0.357612, 0.379496, 0.853286,
		0.531189, -0.834161, 0.148369,
		35.318855, 39.592556, 36.610447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755219, 40.412094, 36.535343>,  <34.947025, 40.176468, 36.506588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755219, 40.412094, 36.535343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761147, 40.013580, 36.501431>,  <35.764702, 39.774471, 36.481083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761147, 40.013580, 36.501431>,  <35.755219, 40.412094, 36.535343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761147, 40.013580, 36.501431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677484, 0.072366, -0.731970,
		0.735389, -0.046594, 0.676042,
		0.014817, -0.996289, -0.084784,
		35.765591, 39.714695, 36.475994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527683, 40.213081, 36.421753>,  <35.755219, 40.412094, 36.535343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527683, 40.213081, 36.421753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288239, 39.909576, 36.319038>,  <36.144573, 39.727474, 36.257408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288239, 39.909576, 36.319038>,  <36.527683, 40.213081, 36.421753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288239, 39.909576, 36.319038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617004, -0.232304, -0.751891,
		0.510857, -0.608529, 0.607221,
		-0.598608, -0.758767, -0.256791,
		36.108658, 39.681946, 36.242001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892311, 39.565083, 36.531979>,  <36.527683, 40.213081, 36.421753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892311, 39.565083, 36.531979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588364, 39.499527, 36.280346>,  <36.405994, 39.460194, 36.129368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588364, 39.499527, 36.280346>,  <36.892311, 39.565083, 36.531979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588364, 39.499527, 36.280346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645688, -0.302574, -0.701096,
		-0.075443, -0.938930, 0.335736,
		-0.759866, -0.163888, -0.629083,
		36.360405, 39.450359, 36.091621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017754, 38.913841, 36.188610>,  <36.892311, 39.565083, 36.531979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017754, 38.913841, 36.188610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733116, 39.091278, 35.970669>,  <36.562336, 39.197739, 35.839905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733116, 39.091278, 35.970669>,  <37.017754, 38.913841, 36.188610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733116, 39.091278, 35.970669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647639, 0.113460, -0.753453,
		-0.272402, -0.889020, -0.368021,
		-0.711590, 0.443587, -0.544857,
		36.519638, 39.224354, 35.807213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018280, 38.609722, 35.488167>,  <37.017754, 38.913841, 36.188610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018280, 38.609722, 35.488167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828075, 38.954292, 35.416794>,  <36.713955, 39.161034, 35.373970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828075, 38.954292, 35.416794>,  <37.018280, 38.609722, 35.488167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828075, 38.954292, 35.416794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276768, -0.046037, -0.959833,
		-0.835040, -0.505792, -0.216524,
		-0.475508, 0.861426, -0.178430,
		36.685425, 39.212719, 35.363266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828499, 38.499706, 34.859085>,  <37.018280, 38.609722, 35.488167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828499, 38.499706, 34.859085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773914, 38.893677, 34.901588>,  <36.741165, 39.130058, 34.927090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773914, 38.893677, 34.901588>,  <36.828499, 38.499706, 34.859085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773914, 38.893677, 34.901588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207812, 0.133339, -0.969038,
		-0.968603, -0.110151, -0.222876,
		-0.136459, 0.984930, 0.106262,
		36.732975, 39.189156, 34.933468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307442, 38.694748, 34.427376>,  <36.828499, 38.499706, 34.859085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307442, 38.694748, 34.427376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520424, 39.028301, 34.485527>,  <36.648212, 39.228432, 34.520416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520424, 39.028301, 34.485527>,  <36.307442, 38.694748, 34.427376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520424, 39.028301, 34.485527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168489, 0.063902, -0.983630,
		-0.829520, 0.548233, -0.106475,
		0.532455, 0.833881, 0.145379,
		36.680161, 39.278465, 34.529140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908550, 39.299973, 34.118229>,  <36.307442, 38.694748, 34.427376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908550, 39.299973, 34.118229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293003, 39.407555, 34.143181>,  <36.523674, 39.472103, 34.158154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293003, 39.407555, 34.143181>,  <35.908550, 39.299973, 34.118229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293003, 39.407555, 34.143181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038542, 0.093038, -0.994916,
		-0.273394, 0.958648, 0.079056,
		0.961130, 0.268957, 0.062384,
		36.581341, 39.488243, 34.161896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974152, 39.982052, 33.874355>,  <35.908550, 39.299973, 34.118229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974152, 39.982052, 33.874355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345013, 39.834408, 33.848614>,  <36.567532, 39.745823, 33.833168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345013, 39.834408, 33.848614>,  <35.974152, 39.982052, 33.874355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345013, 39.834408, 33.848614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046276, 0.283260, -0.957926,
		0.371810, 0.885168, 0.279706,
		0.927155, -0.369110, -0.064357,
		36.623158, 39.723675, 33.829308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332134, 40.498524, 33.571342>,  <35.974152, 39.982052, 33.874355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332134, 40.498524, 33.571342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535294, 40.160973, 33.502163>,  <36.657188, 39.958443, 33.460655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535294, 40.160973, 33.502163>,  <36.332134, 40.498524, 33.571342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535294, 40.160973, 33.502163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134267, 0.275872, -0.951771,
		0.850890, 0.460179, 0.253419,
		0.507896, -0.843878, -0.172950,
		36.687664, 39.907810, 33.450279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844933, 40.825996, 33.256905>,  <36.332134, 40.498524, 33.571342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844933, 40.825996, 33.256905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905800, 40.440781, 33.168003>,  <36.942318, 40.209652, 33.114662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905800, 40.440781, 33.168003>,  <36.844933, 40.825996, 33.256905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905800, 40.440781, 33.168003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334304, 0.261769, -0.905383,
		0.930100, 0.063468, 0.361781,
		0.152166, -0.963041, -0.222254,
		36.951450, 40.151867, 33.101326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576538, 40.740639, 33.102688>,  <36.844933, 40.825996, 33.256905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576538, 40.740639, 33.102688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408012, 40.427788, 32.919052>,  <37.306896, 40.240078, 32.808868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408012, 40.427788, 32.919052>,  <37.576538, 40.740639, 33.102688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408012, 40.427788, 32.919052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496004, 0.225078, -0.838641,
		0.759258, -0.581044, 0.293111,
		-0.421315, -0.782130, -0.459093,
		37.281616, 40.193150, 32.781322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066010, 40.415169, 32.863586>,  <37.576538, 40.740639, 33.102688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066010, 40.415169, 32.863586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763203, 40.301533, 32.628227>,  <37.581520, 40.233349, 32.487011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763203, 40.301533, 32.628227>,  <38.066010, 40.415169, 32.863586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763203, 40.301533, 32.628227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447987, 0.429865, -0.783916,
		0.475643, -0.857032, -0.198142,
		-0.757015, -0.284099, -0.588402,
		37.536098, 40.216305, 32.451706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332539, 40.321922, 32.338654>,  <38.066010, 40.415169, 32.863586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332539, 40.321922, 32.338654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966293, 40.352879, 32.180836>,  <37.746548, 40.371452, 32.086143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966293, 40.352879, 32.180836>,  <38.332539, 40.321922, 32.338654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966293, 40.352879, 32.180836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364986, 0.571607, -0.734881,
		0.168652, -0.816869, -0.551616,
		-0.915610, 0.077393, -0.394549,
		37.691612, 40.376095, 32.062469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504654, 40.396423, 31.648901>,  <38.332539, 40.321922, 32.338654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504654, 40.396423, 31.648901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122551, 40.512699, 31.670708>,  <37.893288, 40.582466, 31.683792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122551, 40.512699, 31.670708>,  <38.504654, 40.396423, 31.648901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122551, 40.512699, 31.670708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143317, 0.616207, -0.774435,
		-0.258717, -0.731975, -0.630300,
		-0.955262, 0.290692, 0.054519,
		37.835972, 40.599907, 31.687063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312634, 40.522823, 30.927074>,  <38.504654, 40.396423, 31.648901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312634, 40.522823, 30.927074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039310, 40.711021, 31.150406>,  <37.875317, 40.823940, 31.284405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039310, 40.711021, 31.150406>,  <38.312634, 40.522823, 30.927074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039310, 40.711021, 31.150406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159298, 0.842339, -0.514868,
		-0.712545, -0.262870, -0.650522,
		-0.683304, 0.470493, 0.558330,
		37.834320, 40.852169, 31.317905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753792, 40.721619, 30.433653>,  <38.312634, 40.522823, 30.927074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753792, 40.721619, 30.433653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731995, 40.955944, 30.757099>,  <37.718914, 41.096539, 30.951166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731995, 40.955944, 30.757099>,  <37.753792, 40.721619, 30.433653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731995, 40.955944, 30.757099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129407, 0.807132, -0.576014,
		-0.990093, 0.073250, -0.119794,
		-0.054496, 0.585809, 0.808615,
		37.715645, 41.131687, 30.999683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347946, 41.311272, 30.147404>,  <37.753792, 40.721619, 30.433653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347946, 41.311272, 30.147404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559620, 41.424393, 30.467400>,  <37.686623, 41.492268, 30.659397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559620, 41.424393, 30.467400>,  <37.347946, 41.311272, 30.147404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559620, 41.424393, 30.467400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275773, 0.834313, -0.477359,
		-0.802443, 0.473226, 0.363514,
		0.529183, 0.282806, 0.799991,
		37.718376, 41.509235, 30.707397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236904, 42.023754, 30.165457>,  <37.347946, 41.311272, 30.147404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236904, 42.023754, 30.165457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548889, 41.971771, 30.410332>,  <37.736080, 41.940582, 30.557257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548889, 41.971771, 30.410332>,  <37.236904, 42.023754, 30.165457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548889, 41.971771, 30.410332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447919, 0.799085, -0.401039,
		-0.437074, 0.587005, 0.681463,
		0.779959, -0.129956, 0.612189,
		37.782875, 41.932785, 30.593988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382145, 42.626488, 30.385302>,  <37.236904, 42.023754, 30.165457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382145, 42.626488, 30.385302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726910, 42.431519, 30.441198>,  <37.933769, 42.314537, 30.474737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726910, 42.431519, 30.441198>,  <37.382145, 42.626488, 30.385302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726910, 42.431519, 30.441198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506424, 0.813658, -0.285474,
		0.025446, 0.316821, 0.948144,
		0.861909, -0.487427, 0.139741,
		37.985481, 42.285290, 30.483120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810535, 43.135090, 30.422779>,  <37.382145, 42.626488, 30.385302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810535, 43.135090, 30.422779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055775, 42.827145, 30.351864>,  <38.202919, 42.642380, 30.309315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055775, 42.827145, 30.351864>,  <37.810535, 43.135090, 30.422779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055775, 42.827145, 30.351864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675623, 0.627260, -0.387399,
		0.409448, 0.117733, 0.904705,
		0.613095, -0.769859, -0.177288,
		38.239704, 42.596188, 30.298677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428406, 43.315388, 30.678566>,  <37.810535, 43.135090, 30.422779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428406, 43.315388, 30.678566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521385, 43.033352, 30.410589>,  <38.577171, 42.864132, 30.249804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521385, 43.033352, 30.410589>,  <38.428406, 43.315388, 30.678566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521385, 43.033352, 30.410589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539848, 0.666495, -0.514148,
		0.809032, -0.242156, 0.535563,
		0.232446, -0.705085, -0.669943,
		38.591118, 42.821827, 30.209606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095753, 43.434437, 30.549976>,  <38.428406, 43.315388, 30.678566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095753, 43.434437, 30.549976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952717, 43.210598, 30.250916>,  <38.866894, 43.076294, 30.071480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952717, 43.210598, 30.250916>,  <39.095753, 43.434437, 30.549976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952717, 43.210598, 30.250916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606390, 0.469722, -0.641602,
		0.710224, -0.682800, 0.171363,
		-0.357593, -0.559594, -0.747651,
		38.845440, 43.042721, 30.026621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637466, 43.294788, 30.191273>,  <39.095753, 43.434437, 30.549976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637466, 43.294788, 30.191273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340446, 43.260239, 29.925594>,  <39.162235, 43.239510, 29.766188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340446, 43.260239, 29.925594>,  <39.637466, 43.294788, 30.191273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340446, 43.260239, 29.925594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589178, 0.387427, -0.709062,
		0.318572, -0.917845, -0.236795,
		-0.742550, -0.086373, -0.664198,
		39.117680, 43.234325, 29.726336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907825, 43.032597, 29.520271>,  <39.637466, 43.294788, 30.191273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907825, 43.032597, 29.520271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533848, 43.125645, 29.413107>,  <39.309464, 43.181473, 29.348808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533848, 43.125645, 29.413107>,  <39.907825, 43.032597, 29.520271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533848, 43.125645, 29.413107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335140, 0.331098, -0.882074,
		-0.116482, -0.914474, -0.387517,
		-0.934940, 0.232618, -0.267910,
		39.253365, 43.195431, 29.332733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802578, 42.650742, 28.826927>,  <39.907825, 43.032597, 29.520271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802578, 42.650742, 28.826927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550400, 42.960751, 28.844257>,  <39.399094, 43.146755, 28.854656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550400, 42.960751, 28.844257>,  <39.802578, 42.650742, 28.826927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550400, 42.960751, 28.844257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337703, 0.324106, -0.883693,
		-0.698927, -0.542486, -0.466058,
		-0.630443, 0.775025, 0.043327,
		39.361267, 43.193256, 28.857256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565186, 42.757244, 28.045826>,  <39.802578, 42.650742, 28.826927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565186, 42.757244, 28.045826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481400, 43.106056, 28.222771>,  <39.431126, 43.315342, 28.328938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481400, 43.106056, 28.222771>,  <39.565186, 42.757244, 28.045826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481400, 43.106056, 28.222771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317273, 0.488536, -0.812816,
		-0.924911, -0.029909, -0.379004,
		-0.209468, 0.872031, 0.442363,
		39.418560, 43.367664, 28.355480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229824, 43.108540, 27.564737>,  <39.565186, 42.757244, 28.045826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229824, 43.108540, 27.564737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305470, 43.416367, 27.808704>,  <39.350857, 43.601063, 27.955084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305470, 43.416367, 27.808704>,  <39.229824, 43.108540, 27.564737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305470, 43.416367, 27.808704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247761, 0.563633, -0.787992,
		-0.950184, 0.300135, -0.084078,
		0.189114, 0.769569, 0.609917,
		39.362206, 43.647236, 27.991680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872532, 43.719395, 27.306465>,  <39.229824, 43.108540, 27.564737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872532, 43.719395, 27.306465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173553, 43.853863, 27.532969>,  <39.354168, 43.934544, 27.668871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173553, 43.853863, 27.532969>,  <38.872532, 43.719395, 27.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173553, 43.853863, 27.532969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266379, 0.630999, -0.728617,
		-0.602246, 0.699166, 0.385315,
		0.752557, 0.336167, 0.566259,
		39.399323, 43.954712, 27.702847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806168, 44.536377, 27.327528>,  <38.872532, 43.719395, 27.306465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806168, 44.536377, 27.327528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183586, 44.458603, 27.434793>,  <39.410038, 44.411938, 27.499153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183586, 44.458603, 27.434793>,  <38.806168, 44.536377, 27.327528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183586, 44.458603, 27.434793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329248, 0.639082, -0.695104,
		-0.036225, 0.744156, 0.667023,
		0.943548, -0.194436, 0.268163,
		39.466652, 44.400272, 27.515242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157928, 45.227634, 27.491739>,  <38.806168, 44.536377, 27.327528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157928, 45.227634, 27.491739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435265, 44.947456, 27.424017>,  <39.601665, 44.779350, 27.383383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435265, 44.947456, 27.424017>,  <39.157928, 45.227634, 27.491739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435265, 44.947456, 27.424017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547153, 0.664600, -0.508852,
		0.468942, 0.260170, 0.844041,
		0.693337, -0.700442, -0.169306,
		39.643265, 44.737324, 27.373224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797272, 45.605854, 27.330002>,  <39.157928, 45.227634, 27.491739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797272, 45.605854, 27.330002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870640, 45.238674, 27.189302>,  <39.914661, 45.018368, 27.104883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870640, 45.238674, 27.189302>,  <39.797272, 45.605854, 27.330002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870640, 45.238674, 27.189302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459740, 0.396378, -0.794685,
		0.868905, -0.015949, 0.494722,
		0.183422, -0.917949, -0.351747,
		39.925667, 44.963291, 27.083778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553101, 45.475330, 27.318714>,  <39.797272, 45.605854, 27.330002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553101, 45.475330, 27.318714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377800, 45.237778, 27.048826>,  <40.272621, 45.095245, 26.886894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377800, 45.237778, 27.048826>,  <40.553101, 45.475330, 27.318714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377800, 45.237778, 27.048826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595417, 0.370524, -0.712875,
		0.673359, -0.714158, 0.191222,
		-0.438253, -0.593878, -0.674718,
		40.246323, 45.059616, 26.846411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071369, 45.358006, 26.961922>,  <40.553101, 45.475330, 27.318714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071369, 45.358006, 26.961922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768009, 45.259827, 26.720398>,  <40.585995, 45.200920, 26.575483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768009, 45.259827, 26.720398>,  <41.071369, 45.358006, 26.961922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768009, 45.259827, 26.720398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506949, 0.360143, -0.783134,
		0.409679, -0.900028, -0.148701,
		-0.758397, -0.245450, -0.603812,
		40.540489, 45.186192, 26.539255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310398, 44.811054, 26.530407>,  <41.071369, 45.358006, 26.961922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310398, 44.811054, 26.530407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008186, 44.998566, 26.347357>,  <40.826859, 45.111073, 26.237528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008186, 44.998566, 26.347357>,  <41.310398, 44.811054, 26.530407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008186, 44.998566, 26.347357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635516, 0.354889, -0.685692,
		-0.159030, -0.808890, -0.566045,
		-0.755533, 0.468776, -0.457624,
		40.781525, 45.139198, 26.210070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475727, 44.669216, 25.858751>,  <41.310398, 44.811054, 26.530407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475727, 44.669216, 25.858751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204521, 44.962658, 25.840382>,  <41.041798, 45.138725, 25.829359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204521, 44.962658, 25.840382>,  <41.475727, 44.669216, 25.858751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204521, 44.962658, 25.840382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565369, 0.480561, -0.670387,
		-0.469731, -0.480500, -0.740589,
		-0.678019, 0.733608, -0.045926,
		41.001114, 45.182739, 25.826605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296772, 44.787243, 25.107637>,  <41.475727, 44.669216, 25.858751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296772, 44.787243, 25.107637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239712, 45.104942, 25.343880>,  <41.205475, 45.295563, 25.485624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239712, 45.104942, 25.343880>,  <41.296772, 44.787243, 25.107637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239712, 45.104942, 25.343880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517232, 0.568567, -0.639690,
		-0.843874, 0.214231, -0.491917,
		-0.142646, 0.794252, 0.590606,
		41.196918, 45.343220, 25.521061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272366, 45.417496, 24.572773>,  <41.296772, 44.787243, 25.107637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272366, 45.417496, 24.572773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336819, 45.562244, 24.940052>,  <41.375492, 45.649094, 25.160419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336819, 45.562244, 24.940052>,  <41.272366, 45.417496, 24.572773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336819, 45.562244, 24.940052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707007, 0.606805, -0.363221,
		-0.688605, 0.707698, -0.158070,
		0.161133, 0.361872, 0.918196,
		41.385159, 45.670807, 25.215511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441395, 46.060005, 24.394705>,  <41.272366, 45.417496, 24.572773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441395, 46.060005, 24.394705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565716, 46.036003, 24.774137>,  <41.640308, 46.021603, 25.001797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565716, 46.036003, 24.774137>,  <41.441395, 46.060005, 24.394705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565716, 46.036003, 24.774137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746431, 0.633259, -0.204509,
		-0.588426, 0.771610, 0.241604,
		0.310799, -0.060002, 0.948580,
		41.658955, 46.018002, 25.058712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559593, 46.760498, 24.706881>,  <41.441395, 46.060005, 24.394705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559593, 46.760498, 24.706881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802376, 46.476990, 24.850687>,  <41.948044, 46.306885, 24.936972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802376, 46.476990, 24.850687>,  <41.559593, 46.760498, 24.706881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802376, 46.476990, 24.850687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794725, 0.539208, -0.278686,
		0.003669, 0.454867, 0.890552,
		0.606958, -0.708767, 0.359516,
		41.984463, 46.264359, 24.958542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986553, 47.079826, 25.192419>,  <41.559593, 46.760498, 24.706881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986553, 47.079826, 25.192419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185215, 46.766846, 25.042162>,  <42.304413, 46.579060, 24.952007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185215, 46.766846, 25.042162>,  <41.986553, 47.079826, 25.192419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185215, 46.766846, 25.042162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689858, 0.618505, -0.376226,
		0.526715, -0.072286, 0.846963,
		0.496655, -0.782449, -0.375643,
		42.334213, 46.532112, 24.929468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675941, 47.057175, 25.400225>,  <41.986553, 47.079826, 25.192419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675941, 47.057175, 25.400225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670284, 46.869946, 25.046795>,  <42.666889, 46.757607, 24.834738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670284, 46.869946, 25.046795>,  <42.675941, 47.057175, 25.400225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670284, 46.869946, 25.046795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756778, 0.572536, -0.315419,
		0.653519, -0.673132, 0.346130,
		-0.014147, -0.468076, -0.883575,
		42.666039, 46.729523, 24.781723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304367, 46.704170, 25.118080>,  <42.675941, 47.057175, 25.400225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304367, 46.704170, 25.118080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088673, 46.838036, 24.808960>,  <42.959255, 46.918354, 24.623487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088673, 46.838036, 24.808960>,  <43.304367, 46.704170, 25.118080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088673, 46.838036, 24.808960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741120, 0.624386, -0.246743,
		0.399950, -0.705791, -0.584720,
		-0.539240, 0.334664, -0.772800,
		42.926899, 46.938435, 24.577120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799236, 46.488422, 24.562357>,  <43.304367, 46.704170, 25.118080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799236, 46.488422, 24.562357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986744, 46.802624, 24.400742>,  <44.099247, 46.991142, 24.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986744, 46.802624, 24.400742>,  <43.799236, 46.488422, 24.562357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986744, 46.802624, 24.400742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275605, 0.564636, 0.777964,
		0.839227, -0.253326, 0.481169,
		0.468764, 0.785501, -0.404040,
		44.127373, 47.038273, 24.279530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414822, 46.723598, 24.886650>,  <43.799236, 46.488422, 24.562357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414822, 46.723598, 24.886650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237511, 47.041000, 24.719868>,  <44.131126, 47.231441, 24.619799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237511, 47.041000, 24.719868>,  <44.414822, 46.723598, 24.886650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237511, 47.041000, 24.719868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213554, 0.358272, 0.908865,
		0.870575, 0.491920, 0.010644,
		-0.443276, 0.793509, -0.416955,
		44.104527, 47.279053, 24.594782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051147, 46.486122, 25.287691>,  <44.414822, 46.723598, 24.886650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051147, 46.486122, 25.287691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912342, 46.850056, 25.196661>,  <44.829060, 47.068417, 25.142044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912342, 46.850056, 25.196661>,  <45.051147, 46.486122, 25.287691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912342, 46.850056, 25.196661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743515, -0.414783, -0.524539,
		-0.571635, -0.012818, 0.820408,
		-0.347015, 0.909830, -0.227574,
		44.808239, 47.123005, 25.128389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283497, 45.977276, 25.810827>,  <45.051147, 46.486122, 25.287691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283497, 45.977276, 25.810827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455730, 45.725525, 25.552069>,  <45.559071, 45.574474, 25.396814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455730, 45.725525, 25.552069>,  <45.283497, 45.977276, 25.810827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455730, 45.725525, 25.552069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146129, -0.755902, 0.638169,
		-0.890641, -0.180256, -0.417452,
		0.430587, -0.629381, -0.646896,
		45.584908, 45.536709, 25.358000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786747, 45.469379, 25.557701>,  <45.283497, 45.977276, 25.810827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786747, 45.469379, 25.557701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153404, 45.312119, 25.528877>,  <45.373398, 45.217762, 25.511583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153404, 45.312119, 25.528877>,  <44.786747, 45.469379, 25.557701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153404, 45.312119, 25.528877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271152, -0.744100, 0.610567,
		-0.293668, -0.540133, -0.788680,
		0.916644, -0.393156, -0.072060,
		45.428398, 45.194172, 25.507259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659920, 45.511211, 26.348080>,  <44.786747, 45.469379, 25.557701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659920, 45.511211, 26.348080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567493, 45.888519, 26.252710>,  <44.512039, 46.114906, 26.195490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567493, 45.888519, 26.252710>,  <44.659920, 45.511211, 26.348080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567493, 45.888519, 26.252710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743592, -0.013180, 0.668504,
		0.627440, 0.331757, 0.704455,
		-0.231065, 0.943273, -0.238422,
		44.498173, 46.171501, 26.181183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822323, 46.058350, 26.879890>,  <44.659920, 45.511211, 26.348080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822323, 46.058350, 26.879890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498714, 46.119499, 26.652870>,  <44.304550, 46.156189, 26.516657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498714, 46.119499, 26.652870>,  <44.822323, 46.058350, 26.879890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498714, 46.119499, 26.652870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584424, -0.312254, 0.748963,
		-0.062722, 0.937618, 0.341964,
		-0.809021, 0.152875, -0.567551,
		44.256008, 46.165363, 26.482605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243824, 46.345207, 27.333168>,  <44.822323, 46.058350, 26.879890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243824, 46.345207, 27.333168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065857, 46.214588, 26.999603>,  <43.959076, 46.136215, 26.799465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065857, 46.214588, 26.999603>,  <44.243824, 46.345207, 27.333168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065857, 46.214588, 26.999603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774162, -0.327894, 0.541442,
		-0.450242, 0.886483, -0.106914,
		-0.444922, -0.326548, -0.833913,
		43.932381, 46.116623, 26.749430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503223, 46.661140, 27.375147>,  <44.243824, 46.345207, 27.333168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503223, 46.661140, 27.375147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519226, 46.337097, 27.141184>,  <43.528828, 46.142670, 27.000805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519226, 46.337097, 27.141184>,  <43.503223, 46.661140, 27.375147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519226, 46.337097, 27.141184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598808, -0.488051, 0.635008,
		-0.799893, 0.324846, -0.504625,
		0.040003, -0.810112, -0.584909,
		43.531227, 46.094063, 26.965712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810101, 46.331577, 27.318499>,  <43.503223, 46.661140, 27.375147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810101, 46.331577, 27.318499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048225, 46.028690, 27.211004>,  <43.191101, 45.846958, 27.146507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048225, 46.028690, 27.211004>,  <42.810101, 46.331577, 27.318499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048225, 46.028690, 27.211004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652071, -0.650722, 0.389055,
		-0.469472, -0.056376, -0.881146,
		0.595314, -0.757220, -0.268735,
		43.226818, 45.801525, 27.130384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367134, 45.747124, 27.021086>,  <42.810101, 46.331577, 27.318499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367134, 45.747124, 27.021086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716217, 45.589199, 27.135981>,  <42.925667, 45.494446, 27.204918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716217, 45.589199, 27.135981>,  <42.367134, 45.747124, 27.021086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716217, 45.589199, 27.135981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484463, -0.773313, 0.409002,
		0.060645, -0.496095, -0.866148,
		0.872707, -0.394812, 0.287237,
		42.978031, 45.470757, 27.222151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207188, 44.987202, 26.917768>,  <42.367134, 45.747124, 27.021086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207188, 44.987202, 26.917768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541080, 45.037926, 27.132109>,  <42.741417, 45.068359, 27.260714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541080, 45.037926, 27.132109>,  <42.207188, 44.987202, 26.917768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541080, 45.037926, 27.132109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235287, -0.797678, 0.555293,
		0.497853, -0.589601, -0.636013,
		0.834735, 0.126809, 0.535852,
		42.791500, 45.075970, 27.292864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446541, 44.287697, 27.132343>,  <42.207188, 44.987202, 26.917768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446541, 44.287697, 27.132343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629677, 44.540886, 27.382055>,  <42.739559, 44.692799, 27.531883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629677, 44.540886, 27.382055>,  <42.446541, 44.287697, 27.132343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629677, 44.540886, 27.382055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180042, -0.621635, 0.762335,
		0.870615, -0.461422, -0.170645,
		0.457837, 0.632977, 0.624279,
		42.767029, 44.730778, 27.569340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896301, 43.830299, 27.547277>,  <42.446541, 44.287697, 27.132343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896301, 43.830299, 27.547277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874130, 44.156075, 27.778316>,  <42.860828, 44.351540, 27.916941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874130, 44.156075, 27.778316>,  <42.896301, 43.830299, 27.547277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874130, 44.156075, 27.778316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122566, -0.579662, 0.805587,
		0.990911, -0.026139, 0.131954,
		-0.055432, 0.814438, 0.577597,
		42.857502, 44.400406, 27.951595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298035, 43.639610, 28.113716>,  <42.896301, 43.830299, 27.547277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298035, 43.639610, 28.113716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079842, 43.957405, 28.220486>,  <42.948925, 44.148083, 28.284548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079842, 43.957405, 28.220486>,  <43.298035, 43.639610, 28.113716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079842, 43.957405, 28.220486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197023, -0.431106, 0.880528,
		0.814637, 0.427720, 0.391691,
		-0.545480, 0.794483, 0.266924,
		42.916199, 44.195751, 28.300564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441883, 43.719925, 28.830219>,  <43.298035, 43.639610, 28.113716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441883, 43.719925, 28.830219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108105, 43.939598, 28.811914>,  <42.907837, 44.071404, 28.800932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108105, 43.939598, 28.811914>,  <43.441883, 43.719925, 28.830219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108105, 43.939598, 28.811914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298578, -0.380747, 0.875147,
		0.463192, 0.743928, 0.481688,
		-0.834448, 0.549183, -0.045762,
		42.857769, 44.104355, 28.798185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403423, 43.997528, 29.459776>,  <43.441883, 43.719925, 28.830219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403423, 43.997528, 29.459776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031799, 44.019764, 29.313480>,  <42.808826, 44.033104, 29.225702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031799, 44.019764, 29.313480>,  <43.403423, 43.997528, 29.459776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031799, 44.019764, 29.313480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352273, -0.434805, 0.828763,
		-0.112956, 0.898807, 0.423540,
		-0.929056, 0.055588, -0.365739,
		42.753082, 44.036442, 29.203758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989464, 44.212143, 30.038265>,  <43.403423, 43.997528, 29.459776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989464, 44.212143, 30.038265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723686, 44.048725, 29.787952>,  <42.564220, 43.950676, 29.637764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723686, 44.048725, 29.787952>,  <42.989464, 44.212143, 30.038265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723686, 44.048725, 29.787952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391504, -0.522972, 0.757117,
		-0.636579, 0.748061, 0.187542,
		-0.664448, -0.408541, -0.625781,
		42.524353, 43.926163, 29.600218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375511, 44.339893, 30.301992>,  <42.989464, 44.212143, 30.038265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375511, 44.339893, 30.301992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288006, 44.025036, 30.071325>,  <42.235504, 43.836121, 29.932924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288006, 44.025036, 30.071325>,  <42.375511, 44.339893, 30.301992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288006, 44.025036, 30.071325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469724, -0.433052, 0.769302,
		-0.855280, 0.439168, -0.275007,
		-0.218760, -0.787145, -0.576669,
		42.222378, 43.788891, 29.898325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676037, 44.198582, 30.484156>,  <42.375511, 44.339893, 30.301992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676037, 44.198582, 30.484156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818909, 43.868385, 30.309349>,  <41.904633, 43.670265, 30.204466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818909, 43.868385, 30.309349>,  <41.676037, 44.198582, 30.484156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818909, 43.868385, 30.309349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387872, -0.556718, 0.734588,
		-0.849692, -0.092875, -0.519035,
		0.357181, -0.825493, -0.437015,
		41.926064, 43.620739, 30.178244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034451, 43.846558, 30.211702>,  <41.676037, 44.198582, 30.484156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034451, 43.846558, 30.211702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353462, 43.616287, 30.283863>,  <41.544868, 43.478123, 30.327160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.353462, 43.616287, 30.283863>,  <41.034451, 43.846558, 30.211702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353462, 43.616287, 30.283863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549758, -0.570376, 0.610277,
		-0.248425, -0.585890, -0.771374,
		0.797528, -0.575677, 0.180402,
		41.592720, 43.443584, 30.337984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727215, 43.196468, 30.297211>,  <41.034451, 43.846558, 30.211702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727215, 43.196468, 30.297211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091412, 43.171925, 30.460789>,  <41.309929, 43.157196, 30.558935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091412, 43.171925, 30.460789>,  <40.727215, 43.196468, 30.297211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091412, 43.171925, 30.460789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342503, -0.666052, 0.662620,
		0.231721, -0.743377, -0.627452,
		0.910492, -0.061361, 0.408947,
		41.364559, 43.153515, 30.583473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839081, 42.501747, 30.280331>,  <40.727215, 43.196468, 30.297211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839081, 42.501747, 30.280331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084457, 42.680923, 30.540497>,  <41.231682, 42.788429, 30.696596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084457, 42.680923, 30.540497>,  <40.839081, 42.501747, 30.280331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084457, 42.680923, 30.540497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236804, -0.681356, 0.692587,
		0.753403, -0.578881, -0.311897,
		0.613439, 0.447939, 0.650417,
		41.268490, 42.815304, 30.735622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025654, 41.924252, 30.692438>,  <40.839081, 42.501747, 30.280331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025654, 41.924252, 30.692438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106224, 42.248466, 30.912422>,  <41.154564, 42.442997, 31.044413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106224, 42.248466, 30.912422>,  <41.025654, 41.924252, 30.692438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106224, 42.248466, 30.912422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186745, -0.519393, 0.833881,
		0.961538, -0.270664, 0.046747,
		0.201422, 0.810538, 0.549962,
		41.166649, 42.491627, 31.077410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538082, 41.720230, 31.277756>,  <41.025654, 41.924252, 30.692438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538082, 41.720230, 31.277756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323555, 42.041180, 31.382488>,  <41.194839, 42.233749, 31.445328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323555, 42.041180, 31.382488>,  <41.538082, 41.720230, 31.277756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323555, 42.041180, 31.382488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178607, -0.411088, 0.893927,
		0.824901, 0.432666, 0.363784,
		-0.536319, 0.802376, 0.261829,
		41.162659, 42.281891, 31.461037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690208, 41.813133, 31.975962>,  <41.538082, 41.720230, 31.277756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690208, 41.813133, 31.975962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356682, 42.031502, 31.943165>,  <41.156567, 42.162521, 31.923487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356682, 42.031502, 31.943165>,  <41.690208, 41.813133, 31.975962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356682, 42.031502, 31.943165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213848, -0.182493, 0.959669,
		0.508937, 0.817723, 0.268909,
		-0.833818, 0.545917, -0.081990,
		41.106537, 42.195278, 31.918568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719437, 42.157146, 32.557934>,  <41.690208, 41.813133, 31.975962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719437, 42.157146, 32.557934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336658, 42.208565, 32.453831>,  <41.106991, 42.239418, 32.391369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336658, 42.208565, 32.453831>,  <41.719437, 42.157146, 32.557934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336658, 42.208565, 32.453831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254433, 0.060092, 0.965221,
		0.139717, 0.989881, -0.024798,
		-0.956945, 0.128548, -0.260255,
		41.049576, 42.247128, 32.375755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422134, 42.680496, 32.964630>,  <41.719437, 42.157146, 32.557934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422134, 42.680496, 32.964630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087227, 42.494736, 32.849174>,  <40.886284, 42.383282, 32.779900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087227, 42.494736, 32.849174>,  <41.422134, 42.680496, 32.964630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087227, 42.494736, 32.849174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369420, 0.091246, 0.924772,
		-0.403126, 0.880913, -0.247955,
		-0.837268, -0.464399, -0.288643,
		40.836048, 42.355415, 32.762581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835297, 43.035549, 33.373299>,  <41.422134, 42.680496, 32.964630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835297, 43.035549, 33.373299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664307, 42.701450, 33.234951>,  <40.561714, 42.500992, 33.151943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664307, 42.701450, 33.234951>,  <40.835297, 43.035549, 33.373299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664307, 42.701450, 33.234951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516991, -0.087987, 0.851457,
		-0.741611, 0.542786, -0.394205,
		-0.427474, -0.835250, -0.345868,
		40.536064, 42.450874, 33.131191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136879, 43.055744, 33.457924>,  <40.835297, 43.035549, 33.373299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136879, 43.055744, 33.457924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203590, 42.662537, 33.427292>,  <40.243618, 42.426613, 33.408913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203590, 42.662537, 33.427292>,  <40.136879, 43.055744, 33.457924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203590, 42.662537, 33.427292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499473, -0.151196, 0.853034,
		-0.850126, -0.104012, -0.516205,
		0.166774, -0.983016, -0.076584,
		40.253624, 42.367630, 33.404316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478565, 42.716446, 33.531269>,  <40.136879, 43.055744, 33.457924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478565, 42.716446, 33.531269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744465, 42.427448, 33.607292>,  <39.904003, 42.254051, 33.652905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744465, 42.427448, 33.607292>,  <39.478565, 42.716446, 33.531269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744465, 42.427448, 33.607292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585646, -0.346021, 0.733000,
		-0.463825, -0.598560, -0.653140,
		0.664744, -0.722492, 0.190051,
		39.943890, 42.210701, 33.664307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120655, 42.062370, 33.611565>,  <39.478565, 42.716446, 33.531269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120655, 42.062370, 33.611565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470695, 42.011063, 33.798218>,  <39.680721, 41.980278, 33.910210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470695, 42.011063, 33.798218>,  <39.120655, 42.062370, 33.611565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470695, 42.011063, 33.798218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483752, -0.204941, 0.850872,
		-0.013506, -0.970333, -0.241393,
		0.875101, -0.128266, 0.466633,
		39.733227, 41.972584, 33.938210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049759, 41.417721, 33.886570>,  <39.120655, 42.062370, 33.611565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049759, 41.417721, 33.886570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329807, 41.591930, 34.112896>,  <39.497837, 41.696457, 34.248692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329807, 41.591930, 34.112896>,  <39.049759, 41.417721, 33.886570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329807, 41.591930, 34.112896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575023, -0.125859, 0.808399,
		0.423293, -0.891333, 0.162322,
		0.700123, 0.435528, 0.565812,
		39.539845, 41.722588, 34.282639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066704, 40.996971, 34.484406>,  <39.049759, 41.417721, 33.886570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066704, 40.996971, 34.484406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227623, 41.346943, 34.592232>,  <39.324173, 41.556927, 34.656925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227623, 41.346943, 34.592232>,  <39.066704, 40.996971, 34.484406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227623, 41.346943, 34.592232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447702, -0.068821, 0.891530,
		0.798574, -0.479343, 0.364019,
		0.402297, 0.874925, 0.269562,
		39.348312, 41.609421, 34.673100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255474, 40.853683, 35.109680>,  <39.066704, 40.996971, 34.484406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255474, 40.853683, 35.109680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257851, 41.252598, 35.080349>,  <39.259277, 41.491947, 35.062752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257851, 41.252598, 35.080349>,  <39.255474, 40.853683, 35.109680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257851, 41.252598, 35.080349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195262, 0.073075, 0.978025,
		0.980733, 0.008509, 0.195167,
		0.005940, 0.997290, -0.073328,
		39.259632, 41.551785, 35.058350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616184, 41.091244, 35.778770>,  <39.255474, 40.853683, 35.109680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616184, 41.091244, 35.778770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400757, 41.381413, 35.607323>,  <39.271500, 41.555511, 35.504456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400757, 41.381413, 35.607323>,  <39.616184, 41.091244, 35.778770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400757, 41.381413, 35.607323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344477, 0.274672, 0.897714,
		0.768947, 0.631130, 0.101960,
		-0.538569, 0.725417, -0.428618,
		39.239185, 41.599037, 35.478737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734768, 41.616421, 36.218601>,  <39.616184, 41.091244, 35.778770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734768, 41.616421, 36.218601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383781, 41.699669, 36.045750>,  <39.173191, 41.749619, 35.942039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383781, 41.699669, 36.045750>,  <39.734768, 41.616421, 36.218601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383781, 41.699669, 36.045750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382376, 0.240363, 0.892196,
		0.289553, 0.948109, -0.131330,
		-0.877466, 0.208121, -0.432133,
		39.120541, 41.762104, 35.916111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443565, 42.227165, 36.628620>,  <39.734768, 41.616421, 36.218601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443565, 42.227165, 36.628620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128571, 42.066570, 36.441574>,  <38.939571, 41.970211, 36.329346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128571, 42.066570, 36.441574>,  <39.443565, 42.227165, 36.628620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128571, 42.066570, 36.441574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567900, 0.177885, 0.803646,
		-0.239474, 0.898422, -0.368089,
		-0.787491, -0.401490, -0.467615,
		38.892323, 41.946125, 36.301289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800648, 42.576565, 36.863605>,  <39.443565, 42.227165, 36.628620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800648, 42.576565, 36.863605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647537, 42.254162, 36.683014>,  <38.555672, 42.060719, 36.574657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647537, 42.254162, 36.683014>,  <38.800648, 42.576565, 36.863605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647537, 42.254162, 36.683014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768830, 0.006953, 0.639415,
		-0.512234, 0.591865, -0.622344,
		-0.382775, -0.806007, -0.451482,
		38.532703, 42.012360, 36.547569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042645, 42.578308, 36.974186>,  <38.800648, 42.576565, 36.863605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042645, 42.578308, 36.974186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125099, 42.201077, 36.869793>,  <38.174572, 41.974739, 36.807156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125099, 42.201077, 36.869793>,  <38.042645, 42.578308, 36.974186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125099, 42.201077, 36.869793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558088, -0.332388, 0.760299,
		-0.803769, -0.011076, -0.594839,
		0.206138, -0.943078, -0.260982,
		38.186939, 41.918152, 36.791500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448826, 42.218418, 36.843277>,  <38.042645, 42.578308, 36.974186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448826, 42.218418, 36.843277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712044, 41.928493, 36.924889>,  <37.869976, 41.754539, 36.973854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712044, 41.928493, 36.924889>,  <37.448826, 42.218418, 36.843277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712044, 41.928493, 36.924889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681451, -0.457992, 0.570848,
		-0.320311, -0.514681, -0.795301,
		0.658046, -0.724808, 0.204030,
		37.909458, 41.711052, 36.986099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020794, 41.638760, 36.717888>,  <37.448826, 42.218418, 36.843277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020794, 41.638760, 36.717888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329430, 41.498627, 36.930271>,  <37.514610, 41.414547, 37.057701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329430, 41.498627, 36.930271>,  <37.020794, 41.638760, 36.717888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329430, 41.498627, 36.930271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600101, -0.677771, 0.424859,
		0.211027, -0.646446, -0.733195,
		0.771587, -0.350334, 0.530961,
		37.560905, 41.393528, 37.089558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950108, 41.012691, 36.685097>,  <37.020794, 41.638760, 36.717888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950108, 41.012691, 36.685097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178169, 41.074036, 37.007935>,  <37.315006, 41.110840, 37.201637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178169, 41.074036, 37.007935>,  <36.950108, 41.012691, 36.685097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178169, 41.074036, 37.007935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521758, -0.691260, 0.499929,
		0.634582, -0.706145, -0.314110,
		0.570154, 0.153356, 0.807097,
		37.349216, 41.120041, 37.250065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042007, 40.341515, 36.966938>,  <36.950108, 41.012691, 36.685097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042007, 40.341515, 36.966938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124752, 40.573563, 37.282066>,  <37.174397, 40.712791, 37.471146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124752, 40.573563, 37.282066>,  <37.042007, 40.341515, 36.966938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124752, 40.573563, 37.282066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317344, -0.721918, 0.614920,
		0.925474, -0.377213, 0.034764,
		0.206859, 0.580124, 0.787823,
		37.186810, 40.747601, 37.518414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136269, 39.823307, 37.459892>,  <37.042007, 40.341515, 36.966938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136269, 39.823307, 37.459892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124748, 40.147778, 37.693527>,  <37.117836, 40.342461, 37.833710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124748, 40.147778, 37.693527>,  <37.136269, 39.823307, 37.459892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124748, 40.147778, 37.693527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529445, -0.508013, 0.679420,
		0.847855, -0.289675, 0.444105,
		-0.028800, 0.811179, 0.584088,
		37.116108, 40.391132, 37.868755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355747, 39.667904, 38.124306>,  <37.136269, 39.823307, 37.459892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355747, 39.667904, 38.124306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116188, 39.987255, 38.149349>,  <36.972454, 40.178867, 38.164375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116188, 39.987255, 38.149349>,  <37.355747, 39.667904, 38.124306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116188, 39.987255, 38.149349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627787, -0.516587, 0.582255,
		0.497201, 0.309406, 0.810592,
		-0.598894, 0.798377, 0.062606,
		36.936520, 40.226768, 38.168133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989429, 39.369690, 38.236496>,  <37.355747, 39.667904, 38.124306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989429, 39.369690, 38.236496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039074, 38.976643, 38.291710>,  <38.068859, 38.740814, 38.324837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039074, 38.976643, 38.291710>,  <37.989429, 39.369690, 38.236496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039074, 38.976643, 38.291710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702741, -0.011168, -0.711358,
		0.700537, 0.185290, 0.689141,
		0.124111, -0.982620, 0.138034,
		38.076309, 38.681858, 38.333118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703979, 39.213596, 38.157310>,  <37.989429, 39.369690, 38.236496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703979, 39.213596, 38.157310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550335, 38.851582, 38.084244>,  <38.458149, 38.634373, 38.040405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550335, 38.851582, 38.084244>,  <38.703979, 39.213596, 38.157310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550335, 38.851582, 38.084244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607735, -0.098894, -0.787959,
		0.695069, -0.413672, 0.588009,
		-0.384107, -0.905039, -0.182665,
		38.435104, 38.580070, 38.029446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335594, 38.724483, 38.011925>,  <38.703979, 39.213596, 38.157310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335594, 38.724483, 38.011925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021355, 38.535122, 37.852562>,  <38.832809, 38.421505, 37.756947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021355, 38.535122, 37.852562>,  <39.335594, 38.724483, 38.011925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021355, 38.535122, 37.852562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555000, -0.254515, -0.791957,
		0.273514, -0.843275, 0.462685,
		-0.785599, -0.473402, -0.398404,
		38.785675, 38.393101, 37.733040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623066, 38.036289, 37.716267>,  <39.335594, 38.724483, 38.011925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623066, 38.036289, 37.716267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280403, 38.122265, 37.528679>,  <39.074806, 38.173851, 37.416126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280403, 38.122265, 37.528679>,  <39.623066, 38.036289, 37.716267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280403, 38.122265, 37.528679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458105, -0.101077, -0.883133,
		-0.237224, -0.971382, -0.011877,
		-0.856659, 0.214942, -0.468973,
		39.023407, 38.186749, 37.387985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546963, 37.611420, 37.198921>,  <39.623066, 38.036289, 37.716267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546963, 37.611420, 37.198921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319157, 37.921963, 37.090904>,  <39.182472, 38.108288, 37.026096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319157, 37.921963, 37.090904>,  <39.546963, 37.611420, 37.198921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319157, 37.921963, 37.090904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409975, -0.016459, -0.911948,
		-0.712445, -0.630074, -0.308915,
		-0.569511, 0.776360, -0.270040,
		39.148304, 38.154869, 37.009892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404675, 37.493839, 36.570908>,  <39.546963, 37.611420, 37.198921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404675, 37.493839, 36.570908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319775, 37.884426, 36.586170>,  <39.268837, 38.118778, 36.595325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319775, 37.884426, 36.586170>,  <39.404675, 37.493839, 36.570908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319775, 37.884426, 36.586170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491651, 0.140444, -0.859392,
		-0.844530, -0.163644, -0.509892,
		-0.212245, 0.976471, 0.038154,
		39.256100, 38.177368, 36.597618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524445, 37.630447, 35.920525>,  <39.404675, 37.493839, 36.570908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524445, 37.630447, 35.920525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527454, 37.993111, 36.089241>,  <39.529259, 38.210709, 36.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527454, 37.993111, 36.089241>,  <39.524445, 37.630447, 35.920525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527454, 37.993111, 36.089241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562923, 0.344784, -0.751161,
		-0.826475, 0.243088, -0.507786,
		0.007522, 0.906660, 0.421795,
		39.529713, 38.265110, 36.215778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327888, 38.084576, 35.364433>,  <39.524445, 37.630447, 35.920525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327888, 38.084576, 35.364433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508736, 38.311829, 35.639477>,  <39.617245, 38.448181, 35.804504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508736, 38.311829, 35.639477>,  <39.327888, 38.084576, 35.364433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508736, 38.311829, 35.639477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429879, 0.536673, -0.726076,
		-0.781534, 0.623861, -0.001592,
		0.452116, 0.568137, 0.687613,
		39.644371, 38.482269, 35.845760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318592, 38.660046, 35.031723>,  <39.327888, 38.084576, 35.364433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318592, 38.660046, 35.031723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596058, 38.706146, 35.316128>,  <39.762539, 38.733807, 35.486771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596058, 38.706146, 35.316128>,  <39.318592, 38.660046, 35.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596058, 38.706146, 35.316128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527080, 0.591564, -0.610114,
		-0.490928, 0.797978, 0.349602,
		0.693669, 0.115254, 0.711013,
		39.804157, 38.740723, 35.529430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535908, 39.387321, 35.020378>,  <39.318592, 38.660046, 35.031723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535908, 39.387321, 35.020378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842323, 39.183041, 35.176517>,  <40.026173, 39.060474, 35.270203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842323, 39.183041, 35.176517>,  <39.535908, 39.387321, 35.020378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842323, 39.183041, 35.176517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636327, 0.516554, -0.572940,
		0.090963, 0.687284, 0.720671,
		0.766037, -0.510699, 0.390350,
		40.072136, 39.029831, 35.293621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060738, 39.970875, 34.944630>,  <39.535908, 39.387321, 35.020378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060738, 39.970875, 34.944630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246838, 39.619423, 34.987640>,  <40.358498, 39.408554, 35.013447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246838, 39.619423, 34.987640>,  <40.060738, 39.970875, 34.944630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246838, 39.619423, 34.987640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757797, 0.332566, -0.561377,
		0.457482, 0.342660, 0.820545,
		0.465247, -0.878626, 0.107524,
		40.386414, 39.355835, 35.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673523, 40.207424, 34.863091>,  <40.060738, 39.970875, 34.944630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673523, 40.207424, 34.863091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683655, 39.811535, 34.806786>,  <40.689735, 39.574001, 34.773003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683655, 39.811535, 34.806786>,  <40.673523, 40.207424, 34.863091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683655, 39.811535, 34.806786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621964, 0.125844, -0.772867,
		0.782636, -0.067971, 0.618758,
		0.025334, -0.989719, -0.140765,
		40.691254, 39.514618, 34.764557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375187, 39.952545, 34.910568>,  <40.673523, 40.207424, 34.863091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375187, 39.952545, 34.910568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153461, 39.707233, 34.685490>,  <41.020428, 39.560047, 34.550442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153461, 39.707233, 34.685490>,  <41.375187, 39.952545, 34.910568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153461, 39.707233, 34.685490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581689, 0.198092, -0.788922,
		0.595296, -0.764622, 0.246934,
		-0.554311, -0.613281, -0.562696,
		40.987167, 39.523251, 34.516682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870773, 39.620483, 34.428848>,  <41.375187, 39.952545, 34.910568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870773, 39.620483, 34.428848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517326, 39.555706, 34.253120>,  <41.305260, 39.516838, 34.147682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517326, 39.555706, 34.253120>,  <41.870773, 39.620483, 34.428848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517326, 39.555706, 34.253120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434920, 0.063625, -0.898219,
		0.173415, -0.984746, 0.014214,
		-0.883613, -0.161947, -0.439319,
		41.252243, 39.507122, 34.121326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056293, 39.117081, 33.970722>,  <41.870773, 39.620483, 34.428848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056293, 39.117081, 33.970722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714710, 39.286621, 33.849991>,  <41.509758, 39.388344, 33.777554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714710, 39.286621, 33.849991>,  <42.056293, 39.117081, 33.970722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714710, 39.286621, 33.849991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283637, -0.107131, -0.952929,
		-0.436236, -0.899373, -0.028734,
		-0.853960, 0.423852, -0.301830,
		41.458523, 39.413776, 33.759441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880676, 38.777374, 33.440170>,  <42.056293, 39.117081, 33.970722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880676, 38.777374, 33.440170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665142, 39.112061, 33.401043>,  <41.535824, 39.312870, 33.377567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665142, 39.112061, 33.401043>,  <41.880676, 38.777374, 33.440170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665142, 39.112061, 33.401043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392265, 0.146444, -0.908120,
		-0.745511, -0.527697, -0.407123,
		-0.538833, 0.836714, -0.097822,
		41.503490, 39.363075, 33.371696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504227, 38.813293, 32.758236>,  <41.880676, 38.777374, 33.440170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504227, 38.813293, 32.758236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556587, 39.182781, 32.902245>,  <41.588005, 39.404472, 32.988647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556587, 39.182781, 32.902245>,  <41.504227, 38.813293, 32.758236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556587, 39.182781, 32.902245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432129, 0.273669, -0.859285,
		-0.892261, 0.268058, -0.363339,
		0.130904, 0.923715, 0.360020,
		41.595860, 39.459896, 33.010250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297779, 39.200172, 32.188061>,  <41.504227, 38.813293, 32.758236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297779, 39.200172, 32.188061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512089, 39.455509, 32.409138>,  <41.640675, 39.608711, 32.541782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512089, 39.455509, 32.409138>,  <41.297779, 39.200172, 32.188061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512089, 39.455509, 32.409138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271994, 0.489197, -0.828677,
		-0.799351, 0.594315, 0.088477,
		0.535777, 0.638339, 0.552690,
		41.672821, 39.647011, 32.574944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117512, 39.886631, 31.830915>,  <41.297779, 39.200172, 32.188061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117512, 39.886631, 31.830915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456383, 39.914921, 32.041546>,  <41.659706, 39.931892, 32.167923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456383, 39.914921, 32.041546>,  <41.117512, 39.886631, 31.830915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456383, 39.914921, 32.041546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438124, 0.467667, -0.767681,
		-0.300554, 0.881071, 0.365214,
		0.847180, 0.070721, 0.526578,
		41.710537, 39.936138, 32.199520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308517, 40.544769, 31.684399>,  <41.117512, 39.886631, 31.830915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308517, 40.544769, 31.684399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651527, 40.387360, 31.816936>,  <41.857334, 40.292915, 31.896460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651527, 40.387360, 31.816936>,  <41.308517, 40.544769, 31.684399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651527, 40.387360, 31.816936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507389, 0.540694, -0.670974,
		0.084890, 0.743497, 0.663329,
		0.857525, -0.393525, 0.331343,
		41.908787, 40.269302, 31.916340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691669, 41.089813, 31.680044>,  <41.308517, 40.544769, 31.684399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691669, 41.089813, 31.680044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941051, 40.777073, 31.681080>,  <42.090679, 40.589428, 31.681702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941051, 40.777073, 31.681080>,  <41.691669, 41.089813, 31.680044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941051, 40.777073, 31.681080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595173, 0.472443, -0.650051,
		0.507023, 0.406819, 0.759886,
		0.623456, -0.781854, 0.002589,
		42.128090, 40.542515, 31.681856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.315941, 41.350788, 31.650158>,  <41.691669, 41.089813, 31.680044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.315941, 41.350788, 31.650158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368217, 40.981155, 31.506493>,  <42.399582, 40.759377, 31.420294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368217, 40.981155, 31.506493>,  <42.315941, 41.350788, 31.650158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368217, 40.981155, 31.506493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530057, 0.371273, -0.762362,
		0.837831, -0.090743, 0.538336,
		0.130691, -0.924079, -0.359163,
		42.407425, 40.703930, 31.398745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009468, 41.187687, 31.620155>,  <42.315941, 41.350788, 31.650158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009468, 41.187687, 31.620155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836315, 40.938801, 31.359245>,  <42.732422, 40.789467, 31.202700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836315, 40.938801, 31.359245>,  <43.009468, 41.187687, 31.620155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836315, 40.938801, 31.359245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703750, 0.218920, -0.675877,
		0.563337, -0.751612, 0.343119,
		-0.432881, -0.622217, -0.652273,
		42.706451, 40.752136, 31.163563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506737, 40.949135, 31.207621>,  <43.009468, 41.187687, 31.620155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506737, 40.949135, 31.207621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193363, 40.872532, 30.971127>,  <43.005341, 40.826572, 30.829229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193363, 40.872532, 30.971127>,  <43.506737, 40.949135, 31.207621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193363, 40.872532, 30.971127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570441, 0.155963, -0.806395,
		0.246639, -0.969021, -0.012945,
		-0.783432, -0.191504, -0.591236,
		42.958332, 40.815083, 30.793756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779510, 40.588078, 30.604750>,  <43.506737, 40.949135, 31.207621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779510, 40.588078, 30.604750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422894, 40.715767, 30.476219>,  <43.208923, 40.792381, 30.399101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422894, 40.715767, 30.476219>,  <43.779510, 40.588078, 30.604750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422894, 40.715767, 30.476219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411703, 0.275380, -0.868716,
		-0.188826, -0.906787, -0.376937,
		-0.891541, 0.319222, -0.321328,
		43.155430, 40.811535, 30.379820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696960, 40.368835, 29.878889>,  <43.779510, 40.588078, 30.604750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696960, 40.368835, 29.878889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445148, 40.677788, 29.912640>,  <43.294064, 40.863159, 29.932890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445148, 40.677788, 29.912640>,  <43.696960, 40.368835, 29.878889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445148, 40.677788, 29.912640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242972, 0.298849, -0.922851,
		-0.738010, -0.560459, -0.375801,
		-0.629527, 0.772383, 0.084378,
		43.256290, 40.909504, 29.937952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314484, 40.476536, 29.278322>,  <43.696960, 40.368835, 29.878889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314484, 40.476536, 29.278322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285778, 40.836166, 29.451069>,  <43.268555, 41.051945, 29.554716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285778, 40.836166, 29.451069>,  <43.314484, 40.476536, 29.278322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285778, 40.836166, 29.451069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257842, 0.434987, -0.862730,
		-0.963518, 0.049442, -0.263036,
		-0.071762, 0.899078, 0.431866,
		43.264248, 41.105888, 29.580629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900223, 40.795670, 28.853563>,  <43.314484, 40.476536, 29.278322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900223, 40.795670, 28.853563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109249, 41.088737, 29.027975>,  <43.234665, 41.264580, 29.132622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109249, 41.088737, 29.027975>,  <42.900223, 40.795670, 28.853563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109249, 41.088737, 29.027975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086468, 0.463231, -0.882009,
		-0.848203, 0.498610, 0.178715,
		0.522565, 0.732670, 0.436028,
		43.266018, 41.308540, 29.158783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574291, 41.476585, 28.564142>,  <42.900223, 40.795670, 28.853563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574291, 41.476585, 28.564142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950283, 41.504059, 28.697845>,  <43.175877, 41.520542, 28.778069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950283, 41.504059, 28.697845>,  <42.574291, 41.476585, 28.564142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950283, 41.504059, 28.697845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257157, 0.501327, -0.826161,
		-0.224315, 0.862528, 0.453574,
		0.939975, 0.068681, 0.334260,
		43.232277, 41.524662, 28.798124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755779, 42.177254, 28.390287>,  <42.574291, 41.476585, 28.564142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755779, 42.177254, 28.390287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126797, 42.038097, 28.444883>,  <43.349407, 41.954605, 28.477640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.126797, 42.038097, 28.444883>,  <42.755779, 42.177254, 28.390287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126797, 42.038097, 28.444883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276307, 0.392508, -0.877264,
		0.251619, 0.851416, 0.460194,
		0.927546, -0.347891, 0.136490,
		43.405060, 41.933731, 28.485830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199024, 42.699272, 28.115274>,  <42.755779, 42.177254, 28.390287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199024, 42.699272, 28.115274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457558, 42.396980, 28.157442>,  <43.612679, 42.215603, 28.182743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457558, 42.396980, 28.157442>,  <43.199024, 42.699272, 28.115274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457558, 42.396980, 28.157442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526242, 0.341434, -0.778776,
		0.552554, 0.558828, 0.618381,
		0.646338, -0.755734, 0.105419,
		43.651459, 42.170261, 28.189068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800842, 43.021164, 28.119890>,  <43.199024, 42.699272, 28.115274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800842, 43.021164, 28.119890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854877, 42.651501, 27.976957>,  <43.887299, 42.429703, 27.891197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854877, 42.651501, 27.976957>,  <43.800842, 43.021164, 28.119890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854877, 42.651501, 27.976957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499931, 0.374938, -0.780699,
		0.855466, -0.073181, 0.512663,
		0.135084, -0.924157, -0.357332,
		43.895401, 42.374252, 27.869759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529236, 43.042149, 27.854460>,  <43.800842, 43.021164, 28.119890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529236, 43.042149, 27.854460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346214, 42.720848, 27.701918>,  <44.236401, 42.528069, 27.610394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346214, 42.720848, 27.701918>,  <44.529236, 43.042149, 27.854460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346214, 42.720848, 27.701918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452511, 0.158842, -0.877498,
		0.765428, -0.574068, 0.290802,
		-0.457552, -0.803253, -0.381354,
		44.208950, 42.479874, 27.587511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019806, 42.723267, 27.414772>,  <44.529236, 43.042149, 27.854460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019806, 42.723267, 27.414772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660294, 42.583336, 27.309090>,  <44.444584, 42.499378, 27.245680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660294, 42.583336, 27.309090>,  <45.019806, 42.723267, 27.414772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660294, 42.583336, 27.309090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189121, 0.234297, -0.953592,
		0.395499, -0.907041, -0.144422,
		-0.898785, -0.349831, -0.264205,
		44.390659, 42.478386, 27.229828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093281, 42.194313, 26.836182>,  <45.019806, 42.723267, 27.414772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093281, 42.194313, 26.836182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727192, 42.355179, 26.826139>,  <44.507538, 42.451698, 26.820114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727192, 42.355179, 26.826139>,  <45.093281, 42.194313, 26.836182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727192, 42.355179, 26.826139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165865, 0.319217, -0.933054,
		-0.367229, -0.858115, -0.358860,
		-0.915222, 0.402167, -0.025105,
		44.452625, 42.475830, 26.818607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.944527, 42.144482, 26.127842>,  <45.093281, 42.194313, 26.836182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.944527, 42.144482, 26.127842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659363, 42.393925, 26.256142>,  <44.488266, 42.543591, 26.333122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659363, 42.393925, 26.256142>,  <44.944527, 42.144482, 26.127842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659363, 42.393925, 26.256142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048860, 0.412111, -0.909822,
		-0.699553, -0.664292, -0.263328,
		-0.712908, 0.623603, 0.320751,
		44.445492, 42.581005, 26.352367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435631, 42.085140, 25.602791>,  <44.944527, 42.144482, 26.127842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435631, 42.085140, 25.602791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422394, 42.433331, 25.799231>,  <44.414452, 42.642246, 25.917095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422394, 42.433331, 25.799231>,  <44.435631, 42.085140, 25.602791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422394, 42.433331, 25.799231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102065, 0.485857, -0.868059,
		-0.994227, -0.078851, 0.072766,
		-0.033094, 0.870474, 0.491100,
		44.412464, 42.694473, 25.946560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848969, 42.458683, 25.361902>,  <44.435631, 42.085140, 25.602791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848969, 42.458683, 25.361902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122177, 42.725235, 25.481508>,  <44.286102, 42.885166, 25.553272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122177, 42.725235, 25.481508>,  <43.848969, 42.458683, 25.361902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122177, 42.725235, 25.481508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003015, 0.406815, -0.913506,
		-0.730388, 0.624849, 0.275856,
		0.683026, 0.666382, 0.299016,
		44.327084, 42.925148, 25.571213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126698, 42.326870, 25.654491>,  <43.848969, 42.458683, 25.361902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126698, 42.326870, 25.654491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812103, 42.165535, 25.467402>,  <42.623348, 42.068733, 25.355148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812103, 42.165535, 25.467402>,  <43.126698, 42.326870, 25.654491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812103, 42.165535, 25.467402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329041, -0.367247, 0.869978,
		-0.522663, 0.838123, 0.156119,
		-0.786483, -0.403336, -0.467723,
		42.576157, 42.044533, 25.327085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560085, 42.520164, 26.009453>,  <43.126698, 42.326870, 25.654491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560085, 42.520164, 26.009453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426540, 42.204296, 25.803556>,  <42.346413, 42.014774, 25.680019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426540, 42.204296, 25.803556>,  <42.560085, 42.520164, 26.009453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426540, 42.204296, 25.803556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313839, -0.421796, 0.850643,
		-0.888843, 0.445542, -0.107008,
		-0.333861, -0.789671, -0.514739,
		42.326382, 41.967396, 25.649136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847000, 42.504383, 26.049545>,  <42.560085, 42.520164, 26.009453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847000, 42.504383, 26.049545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970673, 42.132473, 25.969624>,  <42.044876, 41.909325, 25.921671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.970673, 42.132473, 25.969624>,  <41.847000, 42.504383, 26.049545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970673, 42.132473, 25.969624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433133, -0.324715, 0.840807,
		-0.846643, -0.173418, -0.503113,
		0.309179, -0.929777, -0.199804,
		42.063427, 41.853539, 25.909681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204185, 42.127232, 25.870567>,  <41.847000, 42.504383, 26.049545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204185, 42.127232, 25.870567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500801, 41.880684, 25.976561>,  <41.678768, 41.732754, 26.040155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500801, 41.880684, 25.976561>,  <41.204185, 42.127232, 25.870567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500801, 41.880684, 25.976561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493625, -0.233744, 0.837674,
		-0.454379, -0.751966, -0.477585,
		0.741535, -0.616369, 0.264980,
		41.723263, 41.695774, 26.056055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814861, 41.532482, 26.233694>,  <41.204185, 42.127232, 25.870567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814861, 41.532482, 26.233694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192196, 41.441135, 26.329996>,  <41.418598, 41.386326, 26.387777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192196, 41.441135, 26.329996>,  <40.814861, 41.532482, 26.233694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192196, 41.441135, 26.329996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324215, -0.479692, 0.815340,
		-0.070708, -0.847198, -0.526552,
		0.943337, -0.228367, 0.240756,
		41.475197, 41.372623, 26.402224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869335, 40.745518, 26.219727>,  <40.814861, 41.532482, 26.233694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869335, 40.745518, 26.219727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148491, 40.901157, 26.460243>,  <41.315987, 40.994541, 26.604553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148491, 40.901157, 26.460243>,  <40.869335, 40.745518, 26.219727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148491, 40.901157, 26.460243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286811, -0.617463, 0.732447,
		0.656268, -0.683626, -0.319325,
		0.697891, 0.389096, 0.601293,
		41.357857, 41.017887, 26.640631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043663, 40.215076, 26.596815>,  <40.869335, 40.745518, 26.219727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043663, 40.215076, 26.596815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164188, 40.529758, 26.812332>,  <41.236504, 40.718567, 26.941643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164188, 40.529758, 26.812332>,  <41.043663, 40.215076, 26.596815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164188, 40.529758, 26.812332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005092, -0.563719, 0.825951,
		0.953511, -0.251614, -0.165851,
		0.301314, 0.786709, 0.538794,
		41.254581, 40.765770, 26.973970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537334, 39.897263, 27.121969>,  <41.043663, 40.215076, 26.596815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537334, 39.897263, 27.121969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397514, 40.249992, 27.248589>,  <41.313622, 40.461632, 27.324560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397514, 40.249992, 27.248589>,  <41.537334, 39.897263, 27.121969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397514, 40.249992, 27.248589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141337, -0.383625, 0.912609,
		0.926196, 0.274262, 0.258730,
		-0.349550, 0.881823, 0.316549,
		41.292648, 40.514538, 27.343554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835491, 40.075459, 27.802212>,  <41.537334, 39.897263, 27.121969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835491, 40.075459, 27.802212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516018, 40.315872, 27.790487>,  <41.324333, 40.460121, 27.783453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516018, 40.315872, 27.790487>,  <41.835491, 40.075459, 27.802212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516018, 40.315872, 27.790487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301683, -0.357797, 0.883724,
		0.520661, 0.714660, 0.467090,
		-0.798686, 0.601034, -0.029310,
		41.276413, 40.496181, 27.781694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707531, 40.234131, 28.504871>,  <41.835491, 40.075459, 27.802212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707531, 40.234131, 28.504871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365849, 40.406490, 28.388491>,  <41.160839, 40.509907, 28.318663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365849, 40.406490, 28.388491>,  <41.707531, 40.234131, 28.504871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365849, 40.406490, 28.388491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388086, -0.156019, 0.908321,
		0.346001, 0.888810, 0.300498,
		-0.854209, 0.430899, -0.290952,
		41.109585, 40.535759, 28.301205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525036, 40.723568, 29.107483>,  <41.707531, 40.234131, 28.504871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525036, 40.723568, 29.107483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207291, 40.626072, 28.884922>,  <41.016644, 40.567574, 28.751387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207291, 40.626072, 28.884922>,  <41.525036, 40.723568, 29.107483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207291, 40.626072, 28.884922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518079, -0.206386, 0.830060,
		-0.317150, 0.947627, 0.037670,
		-0.794362, -0.243738, -0.556400,
		40.968983, 40.552952, 28.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991173, 41.002434, 29.495224>,  <41.525036, 40.723568, 29.107483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991173, 41.002434, 29.495224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863178, 40.709694, 29.254557>,  <40.786381, 40.534050, 29.110157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863178, 40.709694, 29.254557>,  <40.991173, 41.002434, 29.495224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863178, 40.709694, 29.254557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455328, -0.438114, 0.775069,
		-0.830833, 0.521970, -0.193040,
		-0.319989, -0.731849, -0.601667,
		40.767181, 40.490139, 29.074057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215298, 41.027596, 29.466766>,  <40.991173, 41.002434, 29.495224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215298, 41.027596, 29.466766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358627, 40.663723, 29.382788>,  <40.444626, 40.445400, 29.332399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358627, 40.663723, 29.382788>,  <40.215298, 41.027596, 29.466766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358627, 40.663723, 29.382788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570523, -0.391369, 0.722034,
		-0.738991, -0.138941, -0.659233,
		0.358324, -0.909684, -0.209949,
		40.466125, 40.390820, 29.319803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676292, 40.577503, 29.649969>,  <40.215298, 41.027596, 29.466766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676292, 40.577503, 29.649969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996365, 40.341312, 29.607924>,  <40.188408, 40.199596, 29.582697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996365, 40.341312, 29.607924>,  <39.676292, 40.577503, 29.649969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996365, 40.341312, 29.607924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337817, -0.588536, 0.734510,
		-0.495576, -0.552229, -0.670408,
		0.800177, -0.590481, -0.105112,
		40.236416, 40.164169, 29.576389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341850, 39.922211, 29.711113>,  <39.676292, 40.577503, 29.649969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341850, 39.922211, 29.711113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730995, 39.862675, 29.781984>,  <39.964481, 39.826954, 29.824507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730995, 39.862675, 29.781984>,  <39.341850, 39.922211, 29.711113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730995, 39.862675, 29.781984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231398, -0.626095, 0.744621,
		0.000103, -0.765410, -0.643543,
		0.972859, -0.148838, 0.177179,
		40.022854, 39.818024, 29.835138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493923, 39.144352, 29.692673>,  <39.341850, 39.922211, 29.711113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493923, 39.144352, 29.692673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765537, 39.352940, 29.899355>,  <39.928505, 39.478092, 30.023365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765537, 39.352940, 29.899355>,  <39.493923, 39.144352, 29.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765537, 39.352940, 29.899355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112728, -0.621441, 0.775309,
		0.725398, -0.584710, -0.363196,
		0.679036, 0.521465, 0.516705,
		39.969250, 39.509380, 30.054367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858589, 38.618187, 29.915085>,  <39.493923, 39.144352, 29.692673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858589, 38.618187, 29.915085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947521, 38.934990, 30.142521>,  <40.000881, 39.125072, 30.278982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947521, 38.934990, 30.142521>,  <39.858589, 38.618187, 29.915085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947521, 38.934990, 30.142521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029239, -0.577510, 0.815860,
		0.974533, -0.198015, -0.105241,
		0.222330, 0.792005, 0.568592,
		40.014221, 39.172592, 30.313099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396797, 38.328815, 30.459394>,  <39.858589, 38.618187, 29.915085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396797, 38.328815, 30.459394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228355, 38.653488, 30.621302>,  <40.127289, 38.848293, 30.718445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228355, 38.653488, 30.621302>,  <40.396797, 38.328815, 30.459394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228355, 38.653488, 30.621302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039722, -0.462339, 0.885813,
		0.906142, 0.356943, 0.226935,
		-0.421105, 0.811686, 0.404766,
		40.102024, 38.896996, 30.742731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811131, 38.462143, 31.079935>,  <40.396797, 38.328815, 30.459394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811131, 38.462143, 31.079935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442204, 38.609997, 31.125000>,  <40.220848, 38.698708, 31.152039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442204, 38.609997, 31.125000>,  <40.811131, 38.462143, 31.079935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442204, 38.609997, 31.125000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058750, -0.422291, 0.904554,
		0.381931, 0.827671, 0.411204,
		-0.922321, 0.369636, 0.112661,
		40.165508, 38.720886, 31.158798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823467, 38.734207, 31.721617>,  <40.811131, 38.462143, 31.079935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823467, 38.734207, 31.721617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431080, 38.728088, 31.644188>,  <40.195648, 38.724415, 31.597731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431080, 38.728088, 31.644188>,  <40.823467, 38.734207, 31.721617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431080, 38.728088, 31.644188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186721, -0.199264, 0.961992,
		-0.053289, 0.979826, 0.192615,
		-0.980967, -0.015299, -0.193572,
		40.136791, 38.723499, 31.586117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474796, 39.109451, 32.386848>,  <40.823467, 38.734207, 31.721617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474796, 39.109451, 32.386848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206692, 38.888363, 32.188759>,  <40.045830, 38.755711, 32.069904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206692, 38.888363, 32.188759>,  <40.474796, 39.109451, 32.386848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206692, 38.888363, 32.188759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453335, -0.223393, 0.862892,
		-0.587566, 0.802869, -0.100834,
		-0.670264, -0.552718, -0.495226,
		40.005611, 38.722549, 32.040192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777256, 39.136078, 32.732624>,  <40.474796, 39.109451, 32.386848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777256, 39.136078, 32.732624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712719, 38.812153, 32.506996>,  <39.673996, 38.617798, 32.371620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712719, 38.812153, 32.506996>,  <39.777256, 39.136078, 32.732624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712719, 38.812153, 32.506996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423740, -0.459344, 0.780671,
		-0.891299, 0.364971, -0.269040,
		-0.161340, -0.809814, -0.564066,
		39.664318, 38.569210, 32.337776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162331, 38.866898, 32.960159>,  <39.777256, 39.136078, 32.732624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162331, 38.866898, 32.960159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364769, 38.566345, 32.790791>,  <39.486233, 38.386013, 32.689171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364769, 38.566345, 32.790791>,  <39.162331, 38.866898, 32.960159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364769, 38.566345, 32.790791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212917, -0.584588, 0.782894,
		-0.835783, -0.306067, -0.455841,
		0.506097, -0.751386, -0.423422,
		39.516598, 38.340931, 32.663765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730865, 38.386440, 33.183681>,  <39.162331, 38.866898, 32.960159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730865, 38.386440, 33.183681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071720, 38.211525, 33.068695>,  <39.276234, 38.106575, 32.999702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071720, 38.211525, 33.068695>,  <38.730865, 38.386440, 33.183681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071720, 38.211525, 33.068695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058720, -0.625747, 0.777812,
		-0.520010, -0.645925, -0.558902,
		0.852139, -0.437288, -0.287466,
		39.327362, 38.080338, 32.982456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717854, 37.608242, 33.214001>,  <38.730865, 38.386440, 33.183681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717854, 37.608242, 33.214001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117249, 37.630146, 33.216167>,  <39.356884, 37.643288, 33.217468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117249, 37.630146, 33.216167>,  <38.717854, 37.608242, 33.214001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117249, 37.630146, 33.216167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034101, -0.693029, 0.720103,
		0.043186, -0.718827, -0.693846,
		0.998485, 0.054759, 0.005417,
		39.416794, 37.646572, 33.217793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951340, 36.899574, 33.137379>,  <38.717854, 37.608242, 33.214001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951340, 36.899574, 33.137379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252365, 37.100777, 33.307381>,  <39.432980, 37.221497, 33.409382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252365, 37.100777, 33.307381>,  <38.951340, 36.899574, 33.137379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252365, 37.100777, 33.307381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163012, -0.767614, 0.619835,
		0.638021, -0.397186, -0.659676,
		0.752567, 0.503003, 0.425007,
		39.478134, 37.251678, 33.434883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597652, 36.400784, 33.164848>,  <38.951340, 36.899574, 33.137379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597652, 36.400784, 33.164848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668316, 36.700848, 33.419735>,  <39.710716, 36.880886, 33.572666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668316, 36.700848, 33.419735>,  <39.597652, 36.400784, 33.164848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668316, 36.700848, 33.419735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391618, -0.647519, 0.653723,
		0.903010, 0.134058, -0.408169,
		0.176660, 0.750165, 0.637216,
		39.721313, 36.925896, 33.610901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262863, 36.355217, 33.268814>,  <39.597652, 36.400784, 33.164848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262863, 36.355217, 33.268814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080151, 36.531246, 33.578056>,  <39.970524, 36.636864, 33.763603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080151, 36.531246, 33.578056>,  <40.262863, 36.355217, 33.268814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080151, 36.531246, 33.578056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379946, -0.689302, 0.616850,
		0.804361, 0.575502, 0.147656,
		-0.456777, 0.440068, 0.773107,
		39.943119, 36.663265, 33.809990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791393, 36.315647, 33.681519>,  <40.262863, 36.355217, 33.268814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791393, 36.315647, 33.681519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488052, 36.394329, 33.930099>,  <40.306049, 36.441540, 34.079250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488052, 36.394329, 33.930099>,  <40.791393, 36.315647, 33.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488052, 36.394329, 33.930099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307550, -0.732618, 0.607193,
		0.574730, 0.651595, 0.495085,
		-0.758353, 0.196709, 0.621456,
		40.260548, 36.453342, 34.116535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059166, 36.422493, 34.379234>,  <40.791393, 36.315647, 33.681519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059166, 36.422493, 34.379234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671677, 36.329475, 34.413853>,  <40.439182, 36.273666, 34.434624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671677, 36.329475, 34.413853>,  <41.059166, 36.422493, 34.379234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671677, 36.329475, 34.413853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235078, -0.748526, 0.620038,
		-0.079404, 0.620993, 0.779784,
		-0.968728, -0.232543, 0.086546,
		40.381058, 36.259712, 34.439816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865578, 36.343773, 35.136421>,  <41.059166, 36.422493, 34.379234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865578, 36.343773, 35.136421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579517, 36.147133, 34.937672>,  <40.407879, 36.029148, 34.818420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579517, 36.147133, 34.937672>,  <40.865578, 36.343773, 35.136421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579517, 36.147133, 34.937672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048422, -0.744007, 0.666415,
		-0.697287, 0.452530, 0.555885,
		-0.715155, -0.491599, -0.496874,
		40.364971, 35.999653, 34.788609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749886, 35.823677, 35.623314>,  <40.865578, 36.343773, 35.136421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749886, 35.823677, 35.623314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562035, 35.711517, 35.288452>,  <40.449326, 35.644222, 35.087536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562035, 35.711517, 35.288452>,  <40.749886, 35.823677, 35.623314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562035, 35.711517, 35.288452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080656, -0.930634, 0.356951,
		-0.879174, 0.235155, 0.414434,
		-0.469625, -0.280396, -0.837156,
		40.421146, 35.627399, 35.037304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209068, 35.384338, 35.803406>,  <40.749886, 35.823677, 35.623314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209068, 35.384338, 35.803406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241486, 35.285275, 35.417225>,  <40.260937, 35.225838, 35.185516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241486, 35.285275, 35.417225>,  <40.209068, 35.384338, 35.803406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241486, 35.285275, 35.417225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103897, -0.965461, 0.238938,
		-0.991281, 0.080944, -0.103974,
		0.081042, -0.247657, -0.965452,
		40.265797, 35.210976, 35.127590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701591, 34.873131, 35.741013>,  <40.209068, 35.384338, 35.803406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701591, 34.873131, 35.741013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951565, 34.834297, 35.431168>,  <40.101551, 34.810997, 35.245258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951565, 34.834297, 35.431168>,  <39.701591, 34.873131, 35.741013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951565, 34.834297, 35.431168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110422, -0.993254, 0.035405,
		-0.772826, 0.063409, -0.631442,
		0.624937, -0.097087, -0.774614,
		40.139046, 34.805172, 35.198784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325146, 34.435818, 35.256916>,  <39.701591, 34.873131, 35.741013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325146, 34.435818, 35.256916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719933, 34.409519, 35.198151>,  <39.956802, 34.393742, 35.162891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719933, 34.409519, 35.198151>,  <39.325146, 34.435818, 35.256916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719933, 34.409519, 35.198151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083510, -0.989466, -0.118245,
		-0.137589, 0.128972, -0.982057,
		0.986963, -0.065742, -0.146910,
		40.016022, 34.389797, 35.154079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422749, 33.816849, 34.809864>,  <39.325146, 34.435818, 35.256916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422749, 33.816849, 34.809864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780815, 33.881844, 34.975891>,  <39.995655, 33.920841, 35.075508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780815, 33.881844, 34.975891>,  <39.422749, 33.816849, 34.809864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780815, 33.881844, 34.975891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160579, -0.986222, 0.039764,
		0.415808, 0.031055, -0.908922,
		0.895164, 0.162488, 0.415066,
		40.049366, 33.930592, 35.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817219, 33.246944, 34.484657>,  <39.422749, 33.816849, 34.809864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817219, 33.246944, 34.484657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037037, 33.373730, 34.793858>,  <40.168930, 33.449802, 34.979378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037037, 33.373730, 34.793858>,  <39.817219, 33.246944, 34.484657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037037, 33.373730, 34.793858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325775, -0.933296, 0.151092,
		0.769329, 0.168792, -0.616151,
		0.549548, 0.316967, 0.773000,
		40.201900, 33.468819, 35.025757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401833, 32.832657, 34.451946>,  <39.817219, 33.246944, 34.484657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401833, 32.832657, 34.451946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345181, 32.990051, 34.815289>,  <40.311188, 33.084488, 35.033295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345181, 32.990051, 34.815289>,  <40.401833, 32.832657, 34.451946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345181, 32.990051, 34.815289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151651, -0.898150, 0.412709,
		0.978235, 0.196205, 0.067531,
		-0.141629, 0.393485, 0.908356,
		40.302692, 33.108097, 35.087795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854622, 32.522972, 34.813206>,  <40.401833, 32.832657, 34.451946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854622, 32.522972, 34.813206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609444, 32.657001, 35.099430>,  <40.462337, 32.737419, 35.271164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609444, 32.657001, 35.099430>,  <40.854622, 32.522972, 34.813206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609444, 32.657001, 35.099430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120612, -0.855334, 0.503841,
		0.780868, 0.395131, 0.483856,
		-0.612942, 0.335074, 0.715561,
		40.425560, 32.757523, 35.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179146, 32.273289, 35.474297>,  <40.854622, 32.522972, 34.813206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179146, 32.273289, 35.474297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794804, 32.363564, 35.538563>,  <40.564198, 32.417728, 35.577122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794804, 32.363564, 35.538563>,  <41.179146, 32.273289, 35.474297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794804, 32.363564, 35.538563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099568, -0.822527, 0.559942,
		0.258522, 0.522029, 0.812805,
		-0.960860, 0.225687, 0.160664,
		40.506546, 32.431271, 35.586761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980186, 31.521732, 35.543674>,  <41.179146, 32.273289, 35.474297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980186, 31.521732, 35.543674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012901, 31.125999, 35.495457>,  <41.032532, 30.888559, 35.466526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012901, 31.125999, 35.495457>,  <40.980186, 31.521732, 35.543674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012901, 31.125999, 35.495457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973457, -0.105239, 0.203240,
		-0.213758, 0.100721, -0.971680,
		0.081788, -0.989333, -0.120543,
		41.037437, 30.829199, 35.459293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417507, 31.203075, 35.006413>,  <40.980186, 31.521732, 35.543674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417507, 31.203075, 35.006413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515327, 30.869747, 35.204716>,  <40.574020, 30.669750, 35.323696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515327, 30.869747, 35.204716>,  <40.417507, 31.203075, 35.006413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515327, 30.869747, 35.204716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951899, -0.303672, -0.040883,
		0.184616, -0.461913, -0.867498,
		0.244551, -0.833319, 0.495757,
		40.588692, 30.619751, 35.353443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069519, 30.707716, 34.675308>,  <40.417507, 31.203075, 35.006413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069519, 30.707716, 34.675308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148216, 30.555843, 35.036888>,  <40.195435, 30.464720, 35.253838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148216, 30.555843, 35.036888>,  <40.069519, 30.707716, 34.675308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148216, 30.555843, 35.036888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958057, -0.270393, 0.094948,
		0.208372, -0.884719, -0.416956,
		0.196744, -0.379683, 0.903954,
		40.207241, 30.441938, 35.308075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674847, 30.037348, 34.776985>,  <40.069519, 30.707716, 34.675308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674847, 30.037348, 34.776985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778336, 30.183222, 35.134773>,  <39.840427, 30.270746, 35.349445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778336, 30.183222, 35.134773>,  <39.674847, 30.037348, 34.776985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778336, 30.183222, 35.134773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957859, -0.022754, 0.286335,
		0.124774, -0.930853, 0.343430,
		0.258722, 0.364685, 0.894465,
		39.855953, 30.292627, 35.403114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382114, 29.519131, 35.272659>,  <39.674847, 30.037348, 34.776985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382114, 29.519131, 35.272659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440071, 29.867405, 35.460667>,  <39.474846, 30.076370, 35.573471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.440071, 29.867405, 35.460667>,  <39.382114, 29.519131, 35.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440071, 29.867405, 35.460667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981649, 0.066969, 0.178553,
		0.123987, -0.487262, 0.864409,
		0.144890, 0.870685, 0.470016,
		39.483540, 30.128611, 35.601673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257885, 29.582081, 36.077938>,  <39.382114, 29.519131, 35.272659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257885, 29.582081, 36.077938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456207, 29.927143, 36.117947>,  <39.575199, 30.134180, 36.141953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456207, 29.927143, 36.117947>,  <39.257885, 29.582081, 36.077938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456207, 29.927143, 36.117947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785931, 0.396716, 0.474266,
		0.369445, -0.313759, 0.874681,
		0.495805, 0.862654, 0.100028,
		39.604950, 30.185940, 36.147953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019264, 29.753191, 36.732578>,  <39.257885, 29.582081, 36.077938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019264, 29.753191, 36.732578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095039, 30.067429, 36.496967>,  <39.140507, 30.255972, 36.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095039, 30.067429, 36.496967>,  <39.019264, 29.753191, 36.732578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095039, 30.067429, 36.496967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890289, 0.390437, 0.234404,
		0.414125, 0.479999, 0.773371,
		0.189439, 0.785595, -0.589027,
		39.151871, 30.303108, 36.320259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723957, 30.405460, 37.081646>,  <39.019264, 29.753191, 36.732578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723957, 30.405460, 37.081646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759674, 30.503500, 36.695496>,  <38.781105, 30.562325, 36.463806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759674, 30.503500, 36.695496>,  <38.723957, 30.405460, 37.081646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759674, 30.503500, 36.695496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870820, 0.489650, 0.043767,
		0.483424, 0.836761, 0.257162,
		0.089297, 0.245100, -0.965377,
		38.786465, 30.577030, 36.405884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429470, 31.071409, 37.086937>,  <38.723957, 30.405460, 37.081646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429470, 31.071409, 37.086937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437923, 30.984133, 36.696667>,  <38.442993, 30.931767, 36.462505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437923, 30.984133, 36.696667>,  <38.429470, 31.071409, 37.086937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437923, 30.984133, 36.696667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894709, 0.431365, -0.115842,
		0.446149, 0.875396, -0.186101,
		0.021130, -0.218189, -0.975678,
		38.444263, 30.918676, 36.403965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489864, 31.672251, 36.557686>,  <38.429470, 31.071409, 37.086937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489864, 31.672251, 36.557686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301376, 31.366167, 36.382229>,  <38.188282, 31.182516, 36.276955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301376, 31.366167, 36.382229>,  <38.489864, 31.672251, 36.557686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301376, 31.366167, 36.382229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681772, 0.631521, -0.369280,
		0.559586, 0.125038, -0.819286,
		-0.471223, -0.765210, -0.438638,
		38.160011, 31.136604, 36.250637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266724, 31.883862, 35.858307>,  <38.489864, 31.672251, 36.557686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266724, 31.883862, 35.858307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021507, 31.579803, 35.944431>,  <37.874378, 31.397367, 35.996105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021507, 31.579803, 35.944431>,  <38.266724, 31.883862, 35.858307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021507, 31.579803, 35.944431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780382, 0.540099, -0.315114,
		0.123242, -0.361205, -0.924306,
		-0.613038, -0.760147, 0.215315,
		37.837597, 31.351759, 36.009026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940117, 31.628275, 35.210697>,  <38.266724, 31.883862, 35.858307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940117, 31.628275, 35.210697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723412, 31.551388, 35.538002>,  <37.593388, 31.505257, 35.734386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723412, 31.551388, 35.538002>,  <37.940117, 31.628275, 35.210697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723412, 31.551388, 35.538002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707185, 0.630402, -0.320131,
		-0.454299, -0.752095, -0.477457,
		-0.541759, -0.192215, 0.818261,
		37.560883, 31.493723, 35.783482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869640, 31.258574, 34.620167>,  <37.940117, 31.628275, 35.210697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869640, 31.258574, 34.620167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740498, 31.125933, 34.265583>,  <37.663013, 31.046349, 34.052834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740498, 31.125933, 34.265583>,  <37.869640, 31.258574, 34.620167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740498, 31.125933, 34.265583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557437, 0.690301, -0.461247,
		0.764873, -0.643058, -0.038017,
		-0.322852, -0.331603, -0.886457,
		37.643642, 31.026451, 33.999645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262024, 31.385778, 35.057339>,  <37.869640, 31.258574, 34.620167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262024, 31.385778, 35.057339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187691, 31.501574, 35.432926>,  <37.143089, 31.571051, 35.658279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187691, 31.501574, 35.432926>,  <37.262024, 31.385778, 35.057339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187691, 31.501574, 35.432926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710638, 0.620350, -0.331902,
		-0.678570, -0.728947, 0.090436,
		-0.185837, 0.289486, 0.938969,
		37.131939, 31.588419, 35.714619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453838, 31.376659, 35.122299>,  <37.262024, 31.385778, 35.057339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453838, 31.376659, 35.122299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590721, 31.609816, 35.417091>,  <36.672852, 31.749708, 35.593967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590721, 31.609816, 35.417091>,  <36.453838, 31.376659, 35.122299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590721, 31.609816, 35.417091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673070, 0.699350, -0.240597,
		-0.655646, -0.413703, 0.631647,
		0.342207, 0.582889, 0.736977,
		36.693382, 31.784683, 35.638184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893654, 31.772718, 35.269611>,  <36.453838, 31.376659, 35.122299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893654, 31.772718, 35.269611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172340, 31.963366, 35.484058>,  <36.339554, 32.077755, 35.612728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172340, 31.963366, 35.484058>,  <35.893654, 31.772718, 35.269611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172340, 31.963366, 35.484058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613002, 0.783744, 0.099870,
		-0.372580, -0.398223, 0.838214,
		0.696715, 0.476617, 0.536119,
		36.381355, 32.106350, 35.644894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682934, 31.969534, 36.028965>,  <35.893654, 31.772718, 35.269611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682934, 31.969534, 36.028965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944683, 32.247299, 35.909241>,  <36.101734, 32.413960, 35.837406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944683, 32.247299, 35.909241>,  <35.682934, 31.969534, 36.028965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944683, 32.247299, 35.909241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730261, 0.683066, -0.011800,
		0.196255, 0.226297, 0.954083,
		0.654372, 0.694413, -0.299311,
		36.140995, 32.455624, 35.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531200, 32.634975, 36.369553>,  <35.682934, 31.969534, 36.028965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531200, 32.634975, 36.369553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786049, 32.752213, 36.084408>,  <35.938957, 32.822556, 35.913319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786049, 32.752213, 36.084408>,  <35.531200, 32.634975, 36.369553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786049, 32.752213, 36.084408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558878, 0.812588, -0.165396,
		0.530789, 0.503781, 0.681518,
		0.637117, 0.293095, -0.712865,
		35.977184, 32.840141, 35.870548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636494, 33.425789, 36.479980>,  <35.531200, 32.634975, 36.369553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636494, 33.425789, 36.479980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728924, 33.334499, 36.101665>,  <35.784382, 33.279728, 35.874676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728924, 33.334499, 36.101665>,  <35.636494, 33.425789, 36.479980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728924, 33.334499, 36.101665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590254, 0.739889, -0.322744,
		0.773438, 0.632834, 0.036259,
		0.231071, -0.228220, -0.945792,
		35.798244, 33.266033, 35.817928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179363, 33.904011, 36.941147>,  <35.636494, 33.425789, 36.479980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179363, 33.904011, 36.941147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416046, 34.036148, 37.235291>,  <35.558056, 34.115429, 37.411777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416046, 34.036148, 37.235291>,  <35.179363, 33.904011, 36.941147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416046, 34.036148, 37.235291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548992, 0.502856, -0.667640,
		-0.590328, 0.798757, 0.116191,
		0.591710, 0.330339, 0.735361,
		35.593559, 34.135250, 37.455898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462505, 33.859314, 36.612530>,  <35.179363, 33.904011, 36.941147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462505, 33.859314, 36.612530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282276, 33.992455, 36.281181>,  <34.174137, 34.072338, 36.082375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282276, 33.992455, 36.281181>,  <34.462505, 33.859314, 36.612530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282276, 33.992455, 36.281181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486089, 0.686815, 0.540372,
		0.748799, 0.646138, -0.147665,
		-0.450574, 0.332852, -0.828367,
		34.147102, 34.092312, 36.032673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837688, 33.210747, 36.338867>,  <34.462505, 33.859314, 36.612530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837688, 33.210747, 36.338867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716835, 32.908367, 36.106571>,  <34.644325, 32.726940, 35.967194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716835, 32.908367, 36.106571>,  <34.837688, 33.210747, 36.338867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716835, 32.908367, 36.106571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098862, 0.581078, -0.807821,
		0.948126, -0.301481, -0.100828,
		-0.302132, -0.755948, -0.580740,
		34.626194, 32.681583, 35.932350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258026, 33.188026, 35.788849>,  <34.837688, 33.210747, 36.338867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258026, 33.188026, 35.788849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899532, 33.043648, 35.685719>,  <34.684437, 32.957020, 35.623840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899532, 33.043648, 35.685719>,  <35.258026, 33.188026, 35.788849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899532, 33.043648, 35.685719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063171, 0.679196, -0.731234,
		0.439050, -0.639073, -0.631523,
		-0.896239, -0.360942, -0.257830,
		34.630661, 32.935364, 35.608368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136711, 33.126427, 35.029583>,  <35.258026, 33.188026, 35.788849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136711, 33.126427, 35.029583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758026, 33.105927, 35.156776>,  <34.530815, 33.093628, 35.233093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758026, 33.105927, 35.156776>,  <35.136711, 33.126427, 35.029583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758026, 33.105927, 35.156776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293941, 0.541059, -0.787943,
		-0.131666, -0.839422, -0.527290,
		-0.946712, -0.051247, 0.317979,
		34.474014, 33.090553, 35.252171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647854, 32.949734, 34.374184>,  <35.136711, 33.126427, 35.029583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647854, 32.949734, 34.374184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437057, 33.201706, 34.602383>,  <34.310581, 33.352890, 34.739304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437057, 33.201706, 34.602383>,  <34.647854, 32.949734, 34.374184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437057, 33.201706, 34.602383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312130, 0.480911, -0.819329,
		-0.790481, -0.609846, -0.056814,
		-0.526987, 0.629930, 0.570502,
		34.278961, 33.390686, 34.773533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401573, 33.201653, 34.351467>,  <34.647854, 32.949734, 34.374184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401573, 33.201653, 34.351467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508579, 33.356148, 34.704571>,  <35.572781, 33.448845, 34.916431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508579, 33.356148, 34.704571>,  <35.401573, 33.201653, 34.351467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508579, 33.356148, 34.704571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648468, -0.749790, 0.131546,
		0.712690, 0.537249, -0.451039,
		0.267512, 0.386236, 0.882757,
		35.588833, 33.472019, 34.969398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051781, 33.101604, 34.566658>,  <35.401573, 33.201653, 34.351467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051781, 33.101604, 34.566658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980274, 33.144772, 34.957840>,  <35.937370, 33.170670, 35.192551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980274, 33.144772, 34.957840>,  <36.051781, 33.101604, 34.566658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980274, 33.144772, 34.957840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765921, -0.608643, 0.207167,
		0.617583, 0.786071, 0.026148,
		-0.178763, 0.107916, 0.977956,
		35.926647, 33.177147, 35.251228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636383, 33.319672, 34.868286>,  <36.051781, 33.101604, 34.566658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636383, 33.319672, 34.868286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409004, 33.137775, 35.142536>,  <36.272575, 33.028637, 35.307087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409004, 33.137775, 35.142536>,  <36.636383, 33.319672, 34.868286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409004, 33.137775, 35.142536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780566, -0.561431, 0.274796,
		0.259969, 0.691381, 0.674099,
		-0.568448, -0.454740, 0.685622,
		36.238468, 33.001354, 35.348225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114143, 33.221306, 35.365791>,  <36.636383, 33.319672, 34.868286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114143, 33.221306, 35.365791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820293, 32.984131, 35.497704>,  <36.643986, 32.841827, 35.576851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820293, 32.984131, 35.497704>,  <37.114143, 33.221306, 35.365791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820293, 32.984131, 35.497704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676925, -0.607690, 0.415314,
		-0.045848, 0.528338, 0.847795,
		-0.734623, -0.592935, 0.329784,
		36.599907, 32.806252, 35.596638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374321, 32.808929, 35.903881>,  <37.114143, 33.221306, 35.365791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374321, 32.808929, 35.903881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028004, 32.611607, 35.870281>,  <36.820213, 32.493214, 35.850121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028004, 32.611607, 35.870281>,  <37.374321, 32.808929, 35.903881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028004, 32.611607, 35.870281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414008, -0.800431, 0.433484,
		-0.281074, 0.340531, 0.897238,
		-0.865792, -0.493305, -0.083998,
		36.768265, 32.463615, 35.845081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228935, 32.559242, 36.571815>,  <37.374321, 32.808929, 35.903881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228935, 32.559242, 36.571815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067478, 32.323097, 36.292233>,  <36.970604, 32.181408, 36.124481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067478, 32.323097, 36.292233>,  <37.228935, 32.559242, 36.571815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067478, 32.323097, 36.292233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577662, -0.756876, 0.305690,
		-0.709494, -0.280374, 0.646536,
		-0.403640, -0.590364, -0.698960,
		36.946384, 32.145988, 36.082546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986996, 31.996334, 36.914234>,  <37.228935, 32.559242, 36.571815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986996, 31.996334, 36.914234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025494, 31.858603, 36.540672>,  <37.048592, 31.775963, 36.316536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025494, 31.858603, 36.540672>,  <36.986996, 31.996334, 36.914234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025494, 31.858603, 36.540672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564333, -0.754007, 0.336159,
		-0.819918, -0.559385, 0.121747,
		0.096244, -0.344328, -0.933903,
		37.054367, 31.755304, 36.260502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909683, 31.228476, 36.934628>,  <36.986996, 31.996334, 36.914234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909683, 31.228476, 36.934628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119480, 31.312956, 36.604706>,  <37.245358, 31.363644, 36.406754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119480, 31.312956, 36.604706>,  <36.909683, 31.228476, 36.934628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119480, 31.312956, 36.604706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651464, -0.723275, 0.229059,
		-0.548185, -0.657471, -0.516938,
		0.524488, 0.211200, -0.824807,
		37.276825, 31.376316, 36.357265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948711, 30.639017, 36.554577>,  <36.909683, 31.228476, 36.934628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948711, 30.639017, 36.554577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263195, 30.864716, 36.453781>,  <37.451885, 31.000135, 36.393303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263195, 30.864716, 36.453781>,  <36.948711, 30.639017, 36.554577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263195, 30.864716, 36.453781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615767, -0.749645, 0.242617,
		-0.052004, -0.345913, -0.936824,
		0.786210, 0.564248, -0.251986,
		37.499058, 31.033991, 36.378185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399853, 30.191805, 36.148712>,  <36.948711, 30.639017, 36.554577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399853, 30.191805, 36.148712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523655, 30.557764, 36.045048>,  <37.597939, 30.777340, 35.982849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523655, 30.557764, 36.045048>,  <37.399853, 30.191805, 36.148712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523655, 30.557764, 36.045048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945589, -0.324886, -0.017630,
		-0.100326, -0.239601, -0.965674,
		0.309510, 0.914899, -0.259159,
		37.616508, 30.832233, 35.967300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755745, 30.220331, 35.441841>,  <37.399853, 30.191805, 36.148712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755745, 30.220331, 35.441841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895302, 30.518742, 35.668724>,  <37.979034, 30.697788, 35.804852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895302, 30.518742, 35.668724>,  <37.755745, 30.220331, 35.441841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895302, 30.518742, 35.668724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930175, -0.349437, -0.112553,
		0.114235, 0.566869, -0.815849,
		0.348891, 0.746025, 0.567205,
		37.999969, 30.742550, 35.838886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391773, 30.469164, 35.163467>,  <37.755745, 30.220331, 35.441841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391773, 30.469164, 35.163467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414886, 30.600346, 35.540638>,  <38.428753, 30.679054, 35.766941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414886, 30.600346, 35.540638>,  <38.391773, 30.469164, 35.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414886, 30.600346, 35.540638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964995, -0.260378, 0.031428,
		0.255824, 0.908102, -0.331519,
		0.057781, 0.327954, 0.942925,
		38.432220, 30.698732, 35.823517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965748, 30.511318, 34.592487>,  <38.391773, 30.469164, 35.163467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965748, 30.511318, 34.592487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142330, 30.420187, 34.939640>,  <39.248280, 30.365509, 35.147930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142330, 30.420187, 34.939640>,  <38.965748, 30.511318, 34.592487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142330, 30.420187, 34.939640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701024, -0.516162, -0.492080,
		0.560074, 0.825635, -0.068151,
		0.441455, -0.227826, 0.867878,
		39.274765, 30.351839, 35.200005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945267, 30.911564, 35.170315>,  <38.965748, 30.511318, 34.592487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945267, 30.911564, 35.170315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883614, 30.823385, 35.555573>,  <38.846622, 30.770477, 35.786728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883614, 30.823385, 35.555573>,  <38.945267, 30.911564, 35.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883614, 30.823385, 35.555573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987954, -0.048013, 0.147114,
		0.013812, 0.974216, 0.225193,
		-0.154133, -0.220448, 0.963144,
		38.837376, 30.757252, 35.844517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429806, 31.312969, 35.618015>,  <38.945267, 30.911564, 35.170315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429806, 31.312969, 35.618015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330273, 30.973602, 35.804893>,  <39.270554, 30.769981, 35.917019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330273, 30.973602, 35.804893>,  <39.429806, 31.312969, 35.618015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330273, 30.973602, 35.804893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945203, -0.317981, -0.074020,
		0.211358, 0.423172, 0.881052,
		-0.248835, -0.848418, 0.467191,
		39.255623, 30.719076, 35.945049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746944, 31.221060, 36.228199>,  <39.429806, 31.312969, 35.618015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746944, 31.221060, 36.228199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676174, 30.863258, 36.063976>,  <39.633713, 30.648577, 35.965443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676174, 30.863258, 36.063976>,  <39.746944, 31.221060, 36.228199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676174, 30.863258, 36.063976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983305, -0.178671, -0.034457,
		-0.042533, -0.409802, 0.911183,
		-0.176922, -0.894505, -0.410559,
		39.623096, 30.594906, 35.940807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166828, 30.658934, 36.632339>,  <39.746944, 31.221060, 36.228199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166828, 30.658934, 36.632339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085258, 30.542828, 36.258354>,  <40.036316, 30.473164, 36.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085258, 30.542828, 36.258354>,  <40.166828, 30.658934, 36.632339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085258, 30.542828, 36.258354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972993, -0.165609, -0.160805,
		-0.108162, -0.942507, 0.316200,
		-0.203926, -0.290267, -0.934965,
		40.024082, 30.455748, 35.977863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429039, 30.134800, 37.159492>,  <40.166828, 30.658934, 36.632339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429039, 30.134800, 37.159492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666344, 30.142550, 37.481403>,  <40.808727, 30.147200, 37.674549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666344, 30.142550, 37.481403>,  <40.429039, 30.134800, 37.159492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666344, 30.142550, 37.481403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489194, -0.785272, 0.379523,
		0.639322, -0.618848, -0.456392,
		0.593259, 0.019373, 0.804779,
		40.844322, 30.148361, 37.722836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546856, 29.888166, 36.465137>,  <40.429039, 30.134800, 37.159492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546856, 29.888166, 36.465137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434654, 30.043360, 36.113960>,  <40.367332, 30.136477, 35.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434654, 30.043360, 36.113960>,  <40.546856, 29.888166, 36.465137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434654, 30.043360, 36.113960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958788, 0.070182, -0.275317,
		-0.045203, -0.918990, -0.391680,
		-0.280503, 0.387984, -0.877945,
		40.350502, 30.159756, 35.850578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961388, 29.614336, 36.055416>,  <40.546856, 29.888166, 36.465137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961388, 29.614336, 36.055416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859478, 29.948977, 35.861431>,  <40.798332, 30.149761, 35.745041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859478, 29.948977, 35.861431>,  <40.961388, 29.614336, 36.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859478, 29.948977, 35.861431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946414, 0.112787, -0.302622,
		-0.198476, -0.536077, -0.820505,
		-0.254771, 0.836601, -0.484965,
		40.783047, 30.199957, 35.715942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207909, 29.508469, 35.355274>,  <40.961388, 29.614336, 36.055416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207909, 29.508469, 35.355274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154568, 29.902231, 35.401161>,  <41.122562, 30.138489, 35.428692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154568, 29.902231, 35.401161>,  <41.207909, 29.508469, 35.355274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154568, 29.902231, 35.401161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877073, 0.171116, -0.448846,
		-0.461477, 0.040759, -0.886216,
		-0.133351, 0.984408, 0.114714,
		41.114563, 30.197554, 35.435577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200764, 29.948608, 34.639469>,  <41.207909, 29.508469, 35.355274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200764, 29.948608, 34.639469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339802, 30.140566, 34.961681>,  <41.423225, 30.255741, 35.155010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339802, 30.140566, 34.961681>,  <41.200764, 29.948608, 34.639469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339802, 30.140566, 34.961681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763010, 0.354551, -0.540472,
		-0.544971, 0.802492, -0.242924,
		0.347596, 0.479895, 0.805530,
		41.444080, 30.284534, 35.203339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260277, 30.662477, 34.587059>,  <41.200764, 29.948608, 34.639469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260277, 30.662477, 34.587059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531727, 30.535580, 34.852036>,  <41.694595, 30.459440, 35.011021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531727, 30.535580, 34.852036>,  <41.260277, 30.662477, 34.587059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531727, 30.535580, 34.852036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714432, 0.494428, -0.495104,
		-0.170458, 0.809257, 0.562181,
		0.678624, -0.317245, 0.662438,
		41.735313, 30.440407, 35.050766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660919, 31.317564, 34.821918>,  <41.260277, 30.662477, 34.587059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660919, 31.317564, 34.821918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842762, 30.961817, 34.841351>,  <41.951866, 30.748369, 34.853012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842762, 30.961817, 34.841351>,  <41.660919, 31.317564, 34.821918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842762, 30.961817, 34.841351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750284, 0.352974, -0.559002,
		0.480009, 0.290576, 0.827742,
		0.454604, -0.889368, 0.048584,
		41.979145, 30.695007, 34.855927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300735, 31.417706, 35.061363>,  <41.660919, 31.317564, 34.821918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300735, 31.417706, 35.061363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224766, 31.138895, 34.784790>,  <42.179184, 30.971609, 34.618847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224766, 31.138895, 34.784790>,  <42.300735, 31.417706, 35.061363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224766, 31.138895, 34.784790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628397, 0.454802, -0.631089,
		0.754352, -0.554354, 0.351631,
		-0.189925, -0.697027, -0.691435,
		42.167789, 30.929787, 34.577358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955288, 31.110422, 34.820454>,  <42.300735, 31.417706, 35.061363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955288, 31.110422, 34.820454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674515, 31.065561, 34.539108>,  <42.506050, 31.038645, 34.370300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674515, 31.065561, 34.539108>,  <42.955288, 31.110422, 34.820454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674515, 31.065561, 34.539108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620654, 0.388134, -0.681278,
		0.349405, -0.914753, -0.202835,
		-0.701929, -0.112152, -0.703362,
		42.463936, 31.031916, 34.328098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426105, 31.533352, 34.613258>,  <42.955288, 31.110422, 34.820454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426105, 31.533352, 34.613258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076374, 31.694086, 34.722122>,  <42.866535, 31.790525, 34.787441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076374, 31.694086, 34.722122>,  <43.426105, 31.533352, 34.613258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076374, 31.694086, 34.722122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485269, -0.732530, -0.477403,
		0.007530, -0.549480, 0.835473,
		-0.874333, 0.401834, 0.272162,
		42.814075, 31.814636, 34.803772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571716, 30.963961, 35.149620>,  <43.426105, 31.533352, 34.613258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571716, 30.963961, 35.149620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918453, 31.050631, 35.329239>,  <44.126495, 31.102633, 35.437012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918453, 31.050631, 35.329239>,  <43.571716, 30.963961, 35.149620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918453, 31.050631, 35.329239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044932, 0.863020, -0.503167,
		-0.496561, 0.456341, 0.738363,
		0.866838, 0.216677, 0.449047,
		44.178505, 31.115633, 35.463951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607861, 31.582602, 35.413952>,  <43.571716, 30.963961, 35.149620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607861, 31.582602, 35.413952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958172, 31.457363, 35.266994>,  <44.168358, 31.382219, 35.178818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958172, 31.457363, 35.266994>,  <43.607861, 31.582602, 35.413952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958172, 31.457363, 35.266994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017878, 0.781628, -0.623489,
		0.482378, 0.539471, 0.690132,
		0.875781, -0.313096, -0.367396,
		44.220905, 31.363434, 35.156776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025452, 32.179981, 35.402637>,  <43.607861, 31.582602, 35.413952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025452, 32.179981, 35.402637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129536, 31.906267, 35.130154>,  <44.191986, 31.742039, 34.966663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129536, 31.906267, 35.130154>,  <44.025452, 32.179981, 35.402637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129536, 31.906267, 35.130154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080607, 0.718443, -0.690900,
		0.962181, 0.124871, 0.242106,
		0.260213, -0.684286, -0.681206,
		44.207600, 31.700981, 34.925793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778370, 32.905369, 35.302185>,  <44.025452, 32.179981, 35.402637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778370, 32.905369, 35.302185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896355, 33.038483, 35.660461>,  <43.967144, 33.118351, 35.875427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896355, 33.038483, 35.660461>,  <43.778370, 32.905369, 35.302185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896355, 33.038483, 35.660461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585421, -0.803789, 0.105856,
		0.755170, 0.493130, -0.431903,
		0.294958, 0.332784, 0.895687,
		43.984840, 33.138317, 35.929169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590485, 32.819424, 35.379993>,  <43.778370, 32.905369, 35.302185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590485, 32.819424, 35.379993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419922, 32.808876, 35.741653>,  <44.317585, 32.802547, 35.958649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419922, 32.808876, 35.741653>,  <44.590485, 32.819424, 35.379993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419922, 32.808876, 35.741653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559790, -0.792850, 0.240881,
		0.710500, 0.608846, 0.352840,
		-0.426409, -0.026370, 0.904146,
		44.292000, 32.800964, 36.012897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064625, 32.711079, 35.984306>,  <44.590485, 32.819424, 35.379993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064625, 32.711079, 35.984306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713093, 32.583797, 36.126514>,  <44.502174, 32.507427, 36.211842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713093, 32.583797, 36.126514>,  <45.064625, 32.711079, 35.984306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713093, 32.583797, 36.126514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448545, -0.805028, 0.388249,
		0.162663, 0.500675, 0.850215,
		-0.878833, -0.318206, 0.355523,
		44.449444, 32.488335, 36.233170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330208, 32.797810, 35.370453>,  <45.064625, 32.711079, 35.984306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330208, 32.797810, 35.370453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019894, 32.636978, 35.175930>,  <44.833706, 32.540478, 35.059216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.019894, 32.636978, 35.175930>,  <45.330208, 32.797810, 35.370453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019894, 32.636978, 35.175930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140542, -0.861436, 0.488032,
		-0.615151, 0.310260, 0.724795,
		-0.775782, -0.402078, -0.486309,
		44.787159, 32.516354, 35.030037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464581, 32.574753, 34.620045>,  <45.330208, 32.797810, 35.370453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464581, 32.574753, 34.620045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731838, 32.378262, 34.843571>,  <45.892193, 32.260368, 34.977688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731838, 32.378262, 34.843571>,  <45.464581, 32.574753, 34.620045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731838, 32.378262, 34.843571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649823, 0.019473, -0.759836,
		0.362369, 0.870815, 0.332221,
		0.668146, -0.491225, 0.558819,
		45.932281, 32.230892, 35.011215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924530, 32.476448, 34.001507>,  <45.464581, 32.574753, 34.620045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924530, 32.476448, 34.001507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321960, 32.506973, 33.968098>,  <46.560421, 32.525288, 33.948051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321960, 32.506973, 33.968098>,  <45.924530, 32.476448, 34.001507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321960, 32.506973, 33.968098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006216, 0.773977, 0.633183,
		0.112965, -0.628599, 0.769482,
		0.993579, 0.076311, -0.083525,
		46.620033, 32.529865, 33.943039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227314, 32.420818, 34.632786>,  <45.924530, 32.476448, 34.001507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227314, 32.420818, 34.632786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405251, 32.660019, 34.366096>,  <46.512012, 32.803539, 34.206085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.405251, 32.660019, 34.366096>,  <46.227314, 32.420818, 34.632786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405251, 32.660019, 34.366096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022049, 0.736894, 0.675648,
		0.895340, -0.315254, 0.314613,
		0.444837, 0.597998, -0.666722,
		46.538704, 32.839417, 34.166080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.859707, 32.791954, 35.008823>,  <46.227314, 32.420818, 34.632786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.859707, 32.791954, 35.008823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715446, 32.981480, 34.687469>,  <46.628891, 33.095196, 34.494656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715446, 32.981480, 34.687469>,  <46.859707, 32.791954, 35.008823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.715446, 32.981480, 34.687469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093518, 0.838644, 0.536592,
		0.928001, 0.268654, -0.258147,
		-0.360651, 0.473816, -0.803386,
		46.607250, 33.123623, 34.446453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536747, 33.204124, 34.995644>,  <46.859707, 32.791954, 35.008823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536747, 33.204124, 34.995644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432758, 33.209560, 34.609436>,  <47.370365, 33.212822, 34.377712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.432758, 33.209560, 34.609436>,  <47.536747, 33.204124, 34.995644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.432758, 33.209560, 34.609436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179201, 0.981852, 0.062075,
		0.948842, 0.189160, -0.252821,
		-0.259975, 0.013593, -0.965520,
		47.354767, 33.213638, 34.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.955761, 33.759388, 34.751408>,  <47.536747, 33.204124, 34.995644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.955761, 33.759388, 34.751408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.629726, 33.683239, 34.532539>,  <47.434105, 33.637550, 34.401218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.629726, 33.683239, 34.532539>,  <47.955761, 33.759388, 34.751408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.629726, 33.683239, 34.532539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339513, 0.922254, 0.184876,
		0.469437, 0.336461, -0.816347,
		-0.815083, -0.190372, -0.547173,
		47.385201, 33.626129, 34.368389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.963123, 34.434101, 35.003582>,  <47.955761, 33.759388, 34.751408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.963123, 34.434101, 35.003582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620533, 34.231228, 35.041962>,  <47.414978, 34.109505, 35.064987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620533, 34.231228, 35.041962>,  <47.963123, 34.434101, 35.003582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.620533, 34.231228, 35.041962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238622, 0.553862, 0.797682,
		-0.457713, 0.660304, -0.595397,
		-0.856480, -0.507184, 0.095947,
		47.363590, 34.079071, 35.070747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493279, 34.846741, 34.646870>,  <47.963123, 34.434101, 35.003582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493279, 34.846741, 34.646870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808758, 34.918694, 34.882023>,  <47.998043, 34.961864, 35.023113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808758, 34.918694, 34.882023>,  <47.493279, 34.846741, 34.646870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.808758, 34.918694, 34.882023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547138, -0.641446, -0.537761,
		0.280361, 0.745781, -0.604324,
		0.788694, 0.179881, 0.587882,
		48.045364, 34.972656, 35.058388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.751831, 39.508377, 27.876934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502708, 39.788795, 28.015873>,  <37.353237, 39.957047, 28.099237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.502708, 39.788795, 28.015873>,  <37.751831, 39.508377, 27.876934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502708, 39.788795, 28.015873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108250, -0.516908, 0.849169,
		0.774853, 0.491265, 0.397821,
		-0.622804, 0.701045, 0.347348,
		37.315868, 39.999107, 28.120077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951790, 39.432125, 28.563995>,  <37.751831, 39.508377, 27.876934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951790, 39.432125, 28.563995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624104, 39.659191, 28.596605>,  <37.427494, 39.795429, 28.616171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624104, 39.659191, 28.596605>,  <37.951790, 39.432125, 28.563995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624104, 39.659191, 28.596605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141571, -0.337936, 0.930461,
		0.555740, 0.750704, 0.357206,
		-0.819214, 0.567664, 0.081526,
		37.378338, 39.829491, 28.621063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853573, 39.729958, 29.233671>,  <37.951790, 39.432125, 28.563995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853573, 39.729958, 29.233671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470886, 39.696507, 29.122177>,  <37.241272, 39.676437, 29.055281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470886, 39.696507, 29.122177>,  <37.853573, 39.729958, 29.233671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470886, 39.696507, 29.122177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246614, -0.275513, 0.929126,
		-0.154492, 0.957653, 0.242966,
		-0.956720, -0.083624, -0.278735,
		37.183868, 39.671421, 29.038557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465302, 40.067276, 29.793407>,  <37.853573, 39.729958, 29.233671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465302, 40.067276, 29.793407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211517, 39.837379, 29.586670>,  <37.059246, 39.699440, 29.462627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211517, 39.837379, 29.586670>,  <37.465302, 40.067276, 29.793407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211517, 39.837379, 29.586670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226640, -0.500942, 0.835279,
		-0.738982, 0.647089, 0.187568,
		-0.634460, -0.574746, -0.516844,
		37.021179, 39.664955, 29.431618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806820, 40.038120, 30.241745>,  <37.465302, 40.067276, 29.793407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806820, 40.038120, 30.241745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780632, 39.725574, 29.993492>,  <36.764919, 39.538048, 29.844540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780632, 39.725574, 29.993492>,  <36.806820, 40.038120, 30.241745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780632, 39.725574, 29.993492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071401, -0.616704, 0.783950,
		-0.995297, 0.095639, -0.015415,
		-0.065470, -0.781364, -0.620632,
		36.760990, 39.491165, 29.807302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405750, 39.620010, 30.683119>,  <36.806820, 40.038120, 30.241745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405750, 39.620010, 30.683119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583817, 39.400398, 30.400164>,  <36.690655, 39.268631, 30.230391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583817, 39.400398, 30.400164>,  <36.405750, 39.620010, 30.683119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583817, 39.400398, 30.400164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123672, -0.744712, 0.655827,
		-0.886867, -0.379435, -0.263620,
		0.445165, -0.549029, -0.707386,
		36.717365, 39.235691, 30.187948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951015, 39.028549, 30.611340>,  <36.405750, 39.620010, 30.683119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951015, 39.028549, 30.611340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317448, 38.942677, 30.475868>,  <36.537308, 38.891155, 30.394587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.317448, 38.942677, 30.475868>,  <35.951015, 39.028549, 30.611340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317448, 38.942677, 30.475868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040114, -0.791311, 0.610097,
		-0.398974, -0.572486, -0.716296,
		0.916084, -0.214679, -0.338677,
		36.592274, 38.878273, 30.374266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974075, 38.298695, 30.645624>,  <35.951015, 39.028549, 30.611340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974075, 38.298695, 30.645624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360474, 38.393822, 30.605038>,  <36.592312, 38.450897, 30.580685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360474, 38.393822, 30.605038>,  <35.974075, 38.298695, 30.645624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360474, 38.393822, 30.605038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249941, -0.758395, 0.601969,
		0.066208, -0.606859, -0.792047,
		0.965995, 0.237820, -0.101467,
		36.650272, 38.465168, 30.574598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325478, 37.654537, 30.445993>,  <35.974075, 38.298695, 30.645624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325478, 37.654537, 30.445993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594677, 37.894932, 30.618452>,  <36.756195, 38.039169, 30.721928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594677, 37.894932, 30.618452>,  <36.325478, 37.654537, 30.445993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594677, 37.894932, 30.618452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272621, -0.743426, 0.610734,
		0.687571, -0.293481, -0.664165,
		0.672996, 0.600988, 0.431149,
		36.796577, 38.075230, 30.747797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930172, 37.240005, 30.469080>,  <36.325478, 37.654537, 30.445993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930172, 37.240005, 30.469080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985031, 37.518620, 30.750797>,  <37.017948, 37.685787, 30.919828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985031, 37.518620, 30.750797>,  <36.930172, 37.240005, 30.469080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985031, 37.518620, 30.750797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322665, -0.703647, 0.633062,
		0.936524, 0.140426, -0.321252,
		0.137150, 0.696535, 0.704293,
		37.026176, 37.727581, 30.962086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517330, 37.101574, 30.835276>,  <36.930172, 37.240005, 30.469080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517330, 37.101574, 30.835276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348362, 37.354130, 31.095402>,  <37.246983, 37.505661, 31.251478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.348362, 37.354130, 31.095402>,  <37.517330, 37.101574, 30.835276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348362, 37.354130, 31.095402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386850, -0.523258, 0.759308,
		0.819699, 0.572324, -0.023216,
		-0.422422, 0.631385, 0.650317,
		37.221634, 37.543545, 31.290497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997906, 37.138649, 31.315826>,  <37.517330, 37.101574, 30.835276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997906, 37.138649, 31.315826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683605, 37.295658, 31.507044>,  <37.495026, 37.389862, 31.621775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.683605, 37.295658, 31.507044>,  <37.997906, 37.138649, 31.315826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683605, 37.295658, 31.507044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230341, -0.531580, 0.815086,
		0.574056, 0.750567, 0.327276,
		-0.785750, 0.392520, 0.478043,
		37.447880, 37.413414, 31.650457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258057, 37.445316, 31.939266>,  <37.997906, 37.138649, 31.315826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258057, 37.445316, 31.939266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869434, 37.369518, 31.996077>,  <37.636261, 37.324039, 32.030163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869434, 37.369518, 31.996077>,  <38.258057, 37.445316, 31.939266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869434, 37.369518, 31.996077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224022, -0.541013, 0.810629,
		-0.076773, 0.819388, 0.568075,
		-0.971555, -0.189496, 0.142026,
		37.577969, 37.312668, 32.038685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098515, 37.508602, 32.638256>,  <38.258057, 37.445316, 31.939266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098515, 37.508602, 32.638256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775806, 37.301888, 32.523682>,  <37.582180, 37.177856, 32.454937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.775806, 37.301888, 32.523682>,  <38.098515, 37.508602, 32.638256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775806, 37.301888, 32.523682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069713, -0.564642, 0.822387,
		-0.586733, 0.643512, 0.491566,
		-0.806774, -0.516790, -0.286433,
		37.533775, 37.146851, 32.437752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786201, 37.379154, 33.241768>,  <38.098515, 37.508602, 32.638256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786201, 37.379154, 33.241768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639206, 37.102417, 32.993156>,  <37.551006, 36.936375, 32.843990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639206, 37.102417, 32.993156>,  <37.786201, 37.379154, 33.241768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639206, 37.102417, 32.993156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048694, -0.653061, 0.755738,
		-0.928751, 0.307993, 0.206307,
		-0.367493, -0.691847, -0.621528,
		37.528957, 36.894863, 32.806698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307098, 37.058159, 33.644840>,  <37.786201, 37.379154, 33.241768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307098, 37.058159, 33.644840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359051, 36.794895, 33.348206>,  <37.390224, 36.636936, 33.170223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359051, 36.794895, 33.348206>,  <37.307098, 37.058159, 33.644840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359051, 36.794895, 33.348206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176314, -0.751338, 0.635928,
		-0.975727, 0.048155, -0.213629,
		0.129885, -0.658158, -0.741591,
		37.398018, 36.597446, 33.125729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701118, 36.604321, 33.654598>,  <37.307098, 37.058159, 33.644840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701118, 36.604321, 33.654598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988827, 36.403320, 33.462708>,  <37.161453, 36.282719, 33.347572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988827, 36.403320, 33.462708>,  <36.701118, 36.604321, 33.654598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988827, 36.403320, 33.462708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264371, -0.836554, 0.479881,
		-0.642460, -0.218338, -0.734556,
		0.719272, -0.502500, -0.479730,
		37.204609, 36.252571, 33.318787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439610, 35.988701, 33.432278>,  <36.701118, 36.604321, 33.654598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439610, 35.988701, 33.432278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827076, 35.893574, 33.403652>,  <37.059555, 35.836498, 33.386475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827076, 35.893574, 33.403652>,  <36.439610, 35.988701, 33.432278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827076, 35.893574, 33.403652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182027, -0.875905, 0.446831,
		-0.168949, -0.419805, -0.891751,
		0.968671, -0.237814, -0.071567,
		37.117676, 35.822231, 33.382183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536827, 35.217190, 33.261036>,  <36.439610, 35.988701, 33.432278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536827, 35.217190, 33.261036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888382, 35.321709, 33.420673>,  <37.099316, 35.384418, 33.516457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888382, 35.321709, 33.420673>,  <36.536827, 35.217190, 33.261036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888382, 35.321709, 33.420673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006858, -0.829630, 0.558272,
		0.476977, -0.493396, -0.727361,
		0.878889, 0.261295, 0.399098,
		37.152050, 35.400097, 33.540401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962479, 34.630135, 33.246876>,  <36.536827, 35.217190, 33.261036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962479, 34.630135, 33.246876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101765, 34.875202, 33.530674>,  <37.185337, 35.022243, 33.700951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.101765, 34.875202, 33.530674>,  <36.962479, 34.630135, 33.246876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101765, 34.875202, 33.530674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048371, -0.744108, 0.666306,
		0.936165, -0.266338, -0.229476,
		0.348217, 0.612672, 0.709491,
		37.206230, 35.059002, 33.743523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365131, 34.157700, 33.538555>,  <36.962479, 34.630135, 33.246876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365131, 34.157700, 33.538555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327858, 34.446167, 33.813141>,  <37.305492, 34.619247, 33.977890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327858, 34.446167, 33.813141>,  <37.365131, 34.157700, 33.538555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327858, 34.446167, 33.813141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236311, -0.653742, 0.718873,
		0.967199, 0.229206, -0.109502,
		-0.093184, 0.721170, 0.686462,
		37.299904, 34.662518, 34.019081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000011, 34.452240, 34.013557>,  <37.365131, 34.157700, 33.538555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000011, 34.452240, 34.013557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211945, 34.192642, 34.231945>,  <38.339104, 34.036884, 34.362976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211945, 34.192642, 34.231945>,  <38.000011, 34.452240, 34.013557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211945, 34.192642, 34.231945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820526, 0.229447, -0.523537,
		0.214502, 0.725370, 0.654086,
		0.529836, -0.648994, 0.545968,
		38.370895, 33.997944, 34.395737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692448, 34.754925, 34.298752>,  <38.000011, 34.452240, 34.013557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692448, 34.754925, 34.298752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.751110, 34.359863, 34.276722>,  <38.786308, 34.122826, 34.263504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.751110, 34.359863, 34.276722>,  <38.692448, 34.754925, 34.298752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751110, 34.359863, 34.276722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805202, 0.151536, -0.573312,
		0.574580, 0.039730, 0.817484,
		0.146656, -0.987653, -0.055078,
		38.795105, 34.063568, 34.260197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423336, 34.680840, 34.164570>,  <38.692448, 34.754925, 34.298752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423336, 34.680840, 34.164570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283272, 34.323261, 34.052670>,  <39.199234, 34.108715, 33.985531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283272, 34.323261, 34.052670>,  <39.423336, 34.680840, 34.164570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283272, 34.323261, 34.052670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638734, -0.009428, -0.769370,
		0.685135, -0.448084, 0.574292,
		-0.350157, -0.893942, -0.279747,
		39.178226, 34.055080, 33.968746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020897, 34.354599, 33.965992>,  <39.423336, 34.680840, 34.164570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020897, 34.354599, 33.965992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704624, 34.199104, 33.776802>,  <39.514862, 34.105808, 33.663288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704624, 34.199104, 33.776802>,  <40.020897, 34.354599, 33.965992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704624, 34.199104, 33.776802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536287, -0.067095, -0.841365,
		0.295336, -0.918902, 0.261525,
		-0.790679, -0.388737, -0.472979,
		39.467419, 34.082481, 33.634907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293476, 33.883732, 33.575027>,  <40.020897, 34.354599, 33.965992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293476, 33.883732, 33.575027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929039, 33.921387, 33.414505>,  <39.710377, 33.943981, 33.318192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.929039, 33.921387, 33.414505>,  <40.293476, 33.883732, 33.575027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929039, 33.921387, 33.414505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402668, -0.004867, -0.915333,
		-0.088123, -0.995547, -0.033473,
		-0.911094, 0.094140, -0.401304,
		39.655712, 33.949627, 33.294113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292316, 33.537037, 32.994396>,  <40.293476, 33.883732, 33.575027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292316, 33.537037, 32.994396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.958706, 33.739243, 32.905972>,  <39.758541, 33.860565, 32.852917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.958706, 33.739243, 32.905972>,  <40.292316, 33.537037, 32.994396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958706, 33.739243, 32.905972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308458, 0.095023, -0.946480,
		-0.457450, -0.857572, -0.235180,
		-0.834022, 0.505510, -0.221057,
		39.708500, 33.890896, 32.839653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107185, 33.438519, 32.169781>,  <40.292316, 33.537037, 32.994396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107185, 33.438519, 32.169781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890526, 33.759724, 32.269211>,  <39.760532, 33.952446, 32.328869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890526, 33.759724, 32.269211>,  <40.107185, 33.438519, 32.169781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890526, 33.759724, 32.269211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160791, 0.389219, -0.907003,
		-0.825087, -0.451304, -0.339936,
		-0.541644, 0.803015, 0.248574,
		39.728031, 34.000629, 32.343784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607067, 33.604656, 31.507189>,  <40.107185, 33.438519, 32.169781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607067, 33.604656, 31.507189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.656990, 33.923328, 31.743738>,  <39.686943, 34.114532, 31.885668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.656990, 33.923328, 31.743738>,  <39.607067, 33.604656, 31.507189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656990, 33.923328, 31.743738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285135, 0.542090, -0.790466,
		-0.950327, 0.267274, -0.159508,
		0.124803, 0.796683, 0.591372,
		39.694431, 34.162334, 31.921150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128853, 34.080765, 31.351557>,  <39.607067, 33.604656, 31.507189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128853, 34.080765, 31.351557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411968, 34.305592, 31.522724>,  <39.581837, 34.440487, 31.625425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411968, 34.305592, 31.522724>,  <39.128853, 34.080765, 31.351557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411968, 34.305592, 31.522724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044697, 0.568910, -0.821184,
		-0.705005, 0.600354, 0.377548,
		0.707792, 0.562064, 0.427919,
		39.624306, 34.474209, 31.651100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985920, 34.828850, 31.167765>,  <39.128853, 34.080765, 31.351557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985920, 34.828850, 31.167765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370060, 34.850681, 31.277122>,  <39.600544, 34.863781, 31.342737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370060, 34.850681, 31.277122>,  <38.985920, 34.828850, 31.167765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370060, 34.850681, 31.277122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177940, 0.634929, -0.751800,
		-0.214614, 0.770641, 0.600044,
		0.960353, 0.054575, 0.273392,
		39.658165, 34.867054, 31.359140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094463, 35.454479, 31.417356>,  <38.985920, 34.828850, 31.167765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094463, 35.454479, 31.417356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455326, 35.318485, 31.311140>,  <39.671844, 35.236889, 31.247410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455326, 35.318485, 31.311140>,  <39.094463, 35.454479, 31.417356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455326, 35.318485, 31.311140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040477, 0.679534, -0.732526,
		0.429497, 0.650108, 0.626811,
		0.902161, -0.339989, -0.265543,
		39.725975, 35.216488, 31.231478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469631, 36.073208, 31.289249>,  <39.094463, 35.454479, 31.417356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469631, 36.073208, 31.289249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694088, 35.782379, 31.131016>,  <39.828762, 35.607883, 31.036076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694088, 35.782379, 31.131016>,  <39.469631, 36.073208, 31.289249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694088, 35.782379, 31.131016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128586, 0.548693, -0.826076,
		0.817670, 0.412680, 0.401386,
		0.561143, -0.727070, -0.395585,
		39.862431, 35.564259, 31.012341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147316, 36.341854, 31.130537>,  <39.469631, 36.073208, 31.289249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147316, 36.341854, 31.130537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058540, 36.034428, 30.890518>,  <40.005276, 35.849972, 30.746508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.058540, 36.034428, 30.890518>,  <40.147316, 36.341854, 31.130537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058540, 36.034428, 30.890518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073172, 0.600530, -0.796247,
		0.972312, -0.220621, -0.077041,
		-0.221934, -0.768564, -0.600046,
		39.991959, 35.803860, 30.710505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694836, 36.346859, 30.495377>,  <40.147316, 36.341854, 31.130537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694836, 36.346859, 30.495377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364460, 36.137913, 30.410566>,  <40.166233, 36.012543, 30.359680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364460, 36.137913, 30.410566>,  <40.694836, 36.346859, 30.495377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364460, 36.137913, 30.410566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029626, 0.415791, -0.908977,
		0.562980, -0.744478, -0.358894,
		-0.825939, -0.522369, -0.212026,
		40.116676, 35.981201, 30.346958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790649, 36.133541, 29.842041>,  <40.694836, 36.346859, 30.495377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790649, 36.133541, 29.842041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.397373, 36.084076, 29.895765>,  <40.161407, 36.054398, 29.927999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.397373, 36.084076, 29.895765>,  <40.790649, 36.133541, 29.842041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397373, 36.084076, 29.895765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162671, 0.259371, -0.951979,
		0.082891, -0.957827, -0.275128,
		-0.983192, -0.123666, 0.134311,
		40.102417, 36.046974, 29.936058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554161, 35.811638, 29.234148>,  <40.790649, 36.133541, 29.842041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554161, 35.811638, 29.234148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248245, 36.006527, 29.402767>,  <40.064693, 36.123459, 29.503939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.248245, 36.006527, 29.402767>,  <40.554161, 35.811638, 29.234148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248245, 36.006527, 29.402767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166081, 0.483096, -0.859672,
		-0.622501, -0.727483, -0.288550,
		-0.764794, 0.487224, 0.421549,
		40.018806, 36.152695, 29.529232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047009, 35.856770, 28.742655>,  <40.554161, 35.811638, 29.234148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047009, 35.856770, 28.742655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892635, 36.126892, 28.994055>,  <39.800011, 36.288967, 29.144894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892635, 36.126892, 28.994055>,  <40.047009, 35.856770, 28.742655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892635, 36.126892, 28.994055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315713, 0.543459, -0.777803,
		-0.866820, -0.498608, 0.003462,
		-0.385937, 0.675308, 0.628499,
		39.776855, 36.329483, 29.182604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265747, 35.966957, 28.567842>,  <40.047009, 35.856770, 28.742655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265747, 35.966957, 28.567842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.396111, 36.289600, 28.765089>,  <39.474331, 36.483185, 28.883436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.396111, 36.289600, 28.765089>,  <39.265747, 35.966957, 28.567842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396111, 36.289600, 28.765089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337981, 0.586534, -0.736035,
		-0.882921, 0.073219, 0.463777,
		0.325912, 0.806608, 0.493117,
		39.493885, 36.531582, 28.913025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697556, 36.452026, 28.463676>,  <39.265747, 35.966957, 28.567842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697556, 36.452026, 28.463676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974510, 36.717194, 28.577620>,  <39.140682, 36.876293, 28.645987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.974510, 36.717194, 28.577620>,  <38.697556, 36.452026, 28.463676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974510, 36.717194, 28.577620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307511, 0.628271, -0.714641,
		-0.652715, 0.407211, 0.638861,
		0.692388, 0.662913, 0.284860,
		39.182228, 36.916069, 28.663078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.421230, 37.255493, 28.573465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816891, 37.291946, 28.527374>,  <39.054287, 37.313816, 28.499720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816891, 37.291946, 28.527374>,  <38.421230, 37.255493, 28.573465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816891, 37.291946, 28.527374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144896, 0.734589, -0.662860,
		0.024240, 0.672365, 0.739823,
		0.989150, 0.091130, -0.115229,
		39.113636, 37.319286, 28.492805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524086, 38.029736, 28.495094>,  <38.421230, 37.255493, 28.573465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524086, 38.029736, 28.495094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859856, 37.865677, 28.352467>,  <39.061317, 37.767242, 28.266890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859856, 37.865677, 28.352467>,  <38.524086, 38.029736, 28.495094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859856, 37.865677, 28.352467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085838, 0.747915, -0.658221,
		0.536650, 0.521922, 0.663026,
		0.839428, -0.410147, -0.356568,
		39.111683, 37.742634, 28.245497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957619, 38.544731, 28.433128>,  <38.524086, 38.029736, 28.495094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957619, 38.544731, 28.433128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093891, 38.268204, 28.178253>,  <39.175655, 38.102287, 28.025328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.093891, 38.268204, 28.178253>,  <38.957619, 38.544731, 28.433128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093891, 38.268204, 28.178253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123419, 0.704751, -0.698636,
		0.932043, 0.159371, 0.325418,
		0.340682, -0.691322, -0.637189,
		39.196095, 38.060806, 27.987097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475269, 38.836246, 28.168839>,  <38.957619, 38.544731, 28.433128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475269, 38.836246, 28.168839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421490, 38.540112, 27.905378>,  <39.389221, 38.362431, 27.747303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.421490, 38.540112, 27.905378>,  <39.475269, 38.836246, 28.168839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421490, 38.540112, 27.905378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008471, 0.665519, -0.746332,
		0.990885, -0.094761, -0.095747,
		-0.134445, -0.740341, -0.658650,
		39.381157, 38.318008, 27.707783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868721, 39.049503, 27.592510>,  <39.475269, 38.836246, 28.168839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868721, 39.049503, 27.592510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600445, 38.781891, 27.464403>,  <39.439480, 38.621323, 27.387539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600445, 38.781891, 27.464403>,  <39.868721, 39.049503, 27.592510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600445, 38.781891, 27.464403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063987, 0.377982, -0.923599,
		0.738976, -0.639938, -0.210697,
		-0.670686, -0.669036, -0.320267,
		39.399239, 38.581181, 27.368322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172207, 38.695030, 26.945059>,  <39.868721, 39.049503, 27.592510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172207, 38.695030, 26.945059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773312, 38.699787, 26.974367>,  <39.533974, 38.702641, 26.991953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773312, 38.699787, 26.974367>,  <40.172207, 38.695030, 26.945059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773312, 38.699787, 26.974367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069686, 0.190014, -0.979305,
		-0.025570, -0.981709, -0.188661,
		-0.997241, 0.011894, 0.073270,
		39.474140, 38.703354, 26.996347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955601, 38.664772, 26.266785>,  <40.172207, 38.695030, 26.945059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955601, 38.664772, 26.266785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.594578, 38.758751, 26.411112>,  <39.377964, 38.815140, 26.497709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.594578, 38.758751, 26.411112>,  <39.955601, 38.664772, 26.266785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594578, 38.758751, 26.411112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136034, 0.639478, -0.756679,
		-0.408519, -0.732029, -0.545203,
		-0.902556, 0.234952, 0.360820,
		39.323811, 38.829235, 26.519358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565872, 38.748241, 25.703026>,  <39.955601, 38.664772, 26.266785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565872, 38.748241, 25.703026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333294, 38.907249, 25.986971>,  <39.193748, 39.002655, 26.157337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.333294, 38.907249, 25.986971>,  <39.565872, 38.748241, 25.703026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333294, 38.907249, 25.986971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466504, 0.551931, -0.691192,
		-0.666558, -0.733041, -0.135470,
		-0.581441, 0.397522, 0.709860,
		39.158863, 39.026505, 26.199928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998070, 38.549095, 25.425690>,  <39.565872, 38.748241, 25.703026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998070, 38.549095, 25.425690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023952, 38.872486, 25.659674>,  <39.039482, 39.066521, 25.800064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023952, 38.872486, 25.659674>,  <38.998070, 38.549095, 25.425690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023952, 38.872486, 25.659674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258109, 0.579802, -0.772793,
		-0.963946, -0.100978, 0.246193,
		0.064708, 0.808475, 0.584962,
		39.043365, 39.115028, 25.835163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280415, 38.927608, 25.345043>,  <38.998070, 38.549095, 25.425690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280415, 38.927608, 25.345043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553703, 39.185108, 25.482904>,  <38.717678, 39.339607, 25.565620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553703, 39.185108, 25.482904>,  <38.280415, 38.927608, 25.345043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553703, 39.185108, 25.482904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226059, 0.635276, -0.738459,
		-0.694335, 0.426621, 0.579563,
		0.683225, 0.643754, 0.344653,
		38.758671, 39.378235, 25.586300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882267, 39.577942, 25.400700>,  <38.280415, 38.927608, 25.345043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882267, 39.577942, 25.400700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273640, 39.658348, 25.381680>,  <38.508465, 39.706593, 25.370268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.273640, 39.658348, 25.381680>,  <37.882267, 39.577942, 25.400700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273640, 39.658348, 25.381680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172853, 0.670745, -0.721265,
		-0.113089, 0.713929, 0.691026,
		0.978434, 0.201013, -0.047551,
		38.567169, 39.718651, 25.367414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938759, 40.330765, 25.185751>,  <37.882267, 39.577942, 25.400700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938759, 40.330765, 25.185751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294174, 40.164120, 25.108870>,  <38.507423, 40.064133, 25.062740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294174, 40.164120, 25.108870>,  <37.938759, 40.330765, 25.185751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294174, 40.164120, 25.108870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008037, 0.432991, -0.901362,
		0.458739, 0.799347, 0.388076,
		0.888535, -0.416609, -0.192206,
		38.560734, 40.039139, 25.051208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296631, 40.888462, 24.844521>,  <37.938759, 40.330765, 25.185751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296631, 40.888462, 24.844521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551666, 40.590656, 24.765339>,  <38.704689, 40.411972, 24.717831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.551666, 40.590656, 24.765339>,  <38.296631, 40.888462, 24.844521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551666, 40.590656, 24.765339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321644, 0.490754, -0.809756,
		0.700019, 0.452620, 0.552366,
		0.637589, -0.744510, -0.197955,
		38.742943, 40.367302, 24.705952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006969, 41.246464, 24.806629>,  <38.296631, 40.888462, 24.844521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006969, 41.246464, 24.806629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952152, 40.912815, 24.592915>,  <38.919262, 40.712627, 24.464685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952152, 40.912815, 24.592915>,  <39.006969, 41.246464, 24.806629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952152, 40.912815, 24.592915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444972, 0.430055, -0.785527,
		0.884997, -0.345391, 0.312225,
		-0.137040, -0.834121, -0.534287,
		38.911041, 40.662579, 24.432629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673286, 41.038399, 24.535713>,  <39.006969, 41.246464, 24.806629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673286, 41.038399, 24.535713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.401531, 40.863842, 24.299747>,  <39.238480, 40.759109, 24.158167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.401531, 40.863842, 24.299747>,  <39.673286, 41.038399, 24.535713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401531, 40.863842, 24.299747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448161, 0.389807, -0.804489,
		0.581023, -0.810935, -0.069257,
		-0.679385, -0.436388, -0.589916,
		39.197716, 40.732925, 24.122772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092003, 40.793549, 24.094376>,  <39.673286, 41.038399, 24.535713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092003, 40.793549, 24.094376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729221, 40.823761, 23.928610>,  <39.511555, 40.841888, 23.829151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729221, 40.823761, 23.928610>,  <40.092003, 40.793549, 24.094376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729221, 40.823761, 23.928610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375175, 0.592163, -0.713152,
		0.191535, -0.802270, -0.565399,
		-0.906949, 0.075530, -0.414412,
		39.457138, 40.846420, 23.804287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201469, 40.530197, 23.382601>,  <40.092003, 40.793549, 24.094376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201469, 40.530197, 23.382601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868488, 40.751778, 23.377720>,  <39.668697, 40.884727, 23.374792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868488, 40.751778, 23.377720>,  <40.201469, 40.530197, 23.382601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868488, 40.751778, 23.377720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399299, 0.584488, -0.706353,
		-0.384156, -0.592881, -0.707754,
		-0.832457, 0.553955, -0.012202,
		39.618752, 40.917965, 23.374060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087032, 40.622292, 22.664734>,  <40.201469, 40.530197, 23.382601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087032, 40.622292, 22.664734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878704, 40.904163, 22.857473>,  <39.753708, 41.073288, 22.973116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878704, 40.904163, 22.857473>,  <40.087032, 40.622292, 22.664734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878704, 40.904163, 22.857473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089245, 0.606294, -0.790217,
		-0.848991, -0.368556, -0.378657,
		-0.520817, 0.704680, 0.481847,
		39.722458, 41.115566, 23.002028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887321, 40.979595, 22.067492>,  <40.087032, 40.622292, 22.664734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887321, 40.979595, 22.067492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789253, 41.232460, 22.361504>,  <39.730412, 41.384178, 22.537910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789253, 41.232460, 22.361504>,  <39.887321, 40.979595, 22.067492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789253, 41.232460, 22.361504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279313, 0.772079, -0.570858,
		-0.928374, 0.065348, -0.365858,
		-0.245167, 0.632158, 0.735030,
		39.715702, 41.422108, 22.582012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518925, 41.520538, 21.701252>,  <39.887321, 40.979595, 22.067492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518925, 41.520538, 21.701252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655460, 41.672741, 22.045044>,  <39.737381, 41.764061, 22.251320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655460, 41.672741, 22.045044>,  <39.518925, 41.520538, 21.701252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655460, 41.672741, 22.045044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382593, 0.778975, -0.496810,
		-0.858553, 0.498410, 0.120312,
		0.341335, 0.380507, 0.859479,
		39.757862, 41.786892, 22.302887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372017, 42.262581, 21.680218>,  <39.518925, 41.520538, 21.701252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372017, 42.262581, 21.680218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669106, 42.241001, 21.947186>,  <39.847359, 42.228054, 22.107367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669106, 42.241001, 21.947186>,  <39.372017, 42.262581, 21.680218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669106, 42.241001, 21.947186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510560, 0.690526, -0.512350,
		-0.433230, 0.721293, 0.540415,
		0.742725, -0.053949, 0.667419,
		39.891922, 42.224815, 22.147411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486008, 42.915806, 21.732265>,  <39.372017, 42.262581, 21.680218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486008, 42.915806, 21.732265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820766, 42.711456, 21.810865>,  <40.021622, 42.588844, 21.858025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820766, 42.711456, 21.810865>,  <39.486008, 42.915806, 21.732265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820766, 42.711456, 21.810865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532624, 0.677328, -0.507482,
		0.126167, 0.529369, 0.838958,
		0.836895, -0.510876, 0.196498,
		40.071835, 42.558193, 21.869816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928715, 43.345013, 22.220251>,  <39.486008, 42.915806, 21.732265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928715, 43.345013, 22.220251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105103, 43.087662, 21.969938>,  <40.210938, 42.933250, 21.819752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.105103, 43.087662, 21.969938>,  <39.928715, 43.345013, 22.220251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105103, 43.087662, 21.969938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375653, 0.765531, -0.522348,
		0.815124, -0.004734, 0.579267,
		0.440974, -0.643382, -0.625781,
		40.237396, 42.894646, 21.782204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888359, 44.000416, 21.766340>,  <39.928715, 43.345013, 22.220251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888359, 44.000416, 21.766340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012611, 44.375740, 21.705570>,  <40.087162, 44.600937, 21.669109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012611, 44.375740, 21.705570>,  <39.888359, 44.000416, 21.766340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012611, 44.375740, 21.705570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929090, 0.265961, -0.257014,
		-0.200753, 0.220986, 0.954391,
		0.310627, 0.938312, -0.151924,
		40.105801, 44.657234, 21.659992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459869, 44.109104, 22.141348>,  <39.888359, 44.000416, 21.766340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459869, 44.109104, 22.141348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138275, 44.297779, 22.286186>,  <39.945316, 44.410984, 22.373089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138275, 44.297779, 22.286186>,  <40.459869, 44.109104, 22.141348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138275, 44.297779, 22.286186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382611, -0.055792, 0.922223,
		0.455204, 0.879998, -0.135617,
		-0.803988, 0.471689, 0.362094,
		39.897079, 44.439285, 22.394814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685112, 44.534630, 22.806435>,  <40.459869, 44.109104, 22.141348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685112, 44.534630, 22.806435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285789, 44.533127, 22.829636>,  <40.046196, 44.532223, 22.843557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285789, 44.533127, 22.829636>,  <40.685112, 44.534630, 22.806435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285789, 44.533127, 22.829636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057991, 0.003543, 0.998311,
		-0.003961, 0.999987, -0.003319,
		-0.998309, -0.003762, 0.058004,
		39.986298, 44.531998, 22.847036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551861, 44.886475, 23.351524>,  <40.685112, 44.534630, 22.806435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551861, 44.886475, 23.351524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220009, 44.669643, 23.298059>,  <40.020897, 44.539547, 23.265982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220009, 44.669643, 23.298059>,  <40.551861, 44.886475, 23.351524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220009, 44.669643, 23.298059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037360, -0.292766, 0.955454,
		-0.557059, 0.787682, 0.263140,
		-0.829632, -0.542075, -0.133660,
		39.971119, 44.507019, 23.257961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024784, 45.154552, 23.792156>,  <40.551861, 44.886475, 23.351524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024784, 45.154552, 23.792156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938354, 44.771454, 23.716223>,  <39.886497, 44.541595, 23.670662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938354, 44.771454, 23.716223>,  <40.024784, 45.154552, 23.792156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938354, 44.771454, 23.716223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056804, -0.206429, 0.976811,
		-0.974722, 0.200284, 0.099009,
		-0.216078, -0.957744, -0.189834,
		39.873531, 44.484131, 23.659273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612717, 45.010490, 24.300768>,  <40.024784, 45.154552, 23.792156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612717, 45.010490, 24.300768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658707, 44.641788, 24.152637>,  <39.686302, 44.420567, 24.063759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658707, 44.641788, 24.152637>,  <39.612717, 45.010490, 24.300768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658707, 44.641788, 24.152637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240881, -0.387541, 0.889825,
		-0.963721, -0.013102, -0.266592,
		0.114974, -0.921759, -0.370325,
		39.693199, 44.365261, 24.041540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969429, 44.577534, 24.499260>,  <39.612717, 45.010490, 24.300768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969429, 44.577534, 24.499260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.258045, 44.312557, 24.418716>,  <39.431217, 44.153572, 24.370390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.258045, 44.312557, 24.418716>,  <38.969429, 44.577534, 24.499260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258045, 44.312557, 24.418716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152271, -0.435536, 0.887199,
		-0.675417, -0.609492, -0.415129,
		0.721544, -0.662441, -0.201360,
		39.474510, 44.113827, 24.358309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723221, 43.937656, 24.440594>,  <38.969429, 44.577534, 24.499260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723221, 43.937656, 24.440594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.107212, 43.853691, 24.514769>,  <39.337605, 43.803314, 24.559275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.107212, 43.853691, 24.514769>,  <38.723221, 43.937656, 24.440594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107212, 43.853691, 24.514769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279998, -0.735986, 0.616381,
		0.007096, -0.643632, -0.765302,
		0.959974, -0.209909, 0.185438,
		39.395203, 43.790718, 24.570400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787949, 43.167336, 24.439005>,  <38.723221, 43.937656, 24.440594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787949, 43.167336, 24.439005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099545, 43.290485, 24.657505>,  <39.286503, 43.364376, 24.788605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099545, 43.290485, 24.657505>,  <38.787949, 43.167336, 24.439005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099545, 43.290485, 24.657505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008464, -0.876246, 0.481789,
		0.626977, -0.370686, -0.685194,
		0.778992, 0.307870, 0.546249,
		39.333241, 43.382847, 24.821381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091187, 42.566029, 24.560083>,  <38.787949, 43.167336, 24.439005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091187, 42.566029, 24.560083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283752, 42.819939, 24.801844>,  <39.399292, 42.972282, 24.946899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283752, 42.819939, 24.801844>,  <39.091187, 42.566029, 24.560083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283752, 42.819939, 24.801844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175517, -0.745421, 0.643072,
		0.858738, -0.203503, -0.470272,
		0.481418, 0.634771, 0.604403,
		39.428177, 43.010368, 24.983164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732765, 42.264908, 24.787916>,  <39.091187, 42.566029, 24.560083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732765, 42.264908, 24.787916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.633709, 42.531189, 25.069487>,  <39.574276, 42.690960, 25.238428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.633709, 42.531189, 25.069487>,  <39.732765, 42.264908, 24.787916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633709, 42.531189, 25.069487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029755, -0.731438, 0.681258,
		0.968396, 0.147760, 0.200940,
		-0.247638, 0.665706, 0.703925,
		39.559418, 42.730900, 25.280664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914089, 41.850002, 25.481823>,  <39.732765, 42.264908, 24.787916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914089, 41.850002, 25.481823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657391, 42.144123, 25.568995>,  <39.503372, 42.320595, 25.621298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657391, 42.144123, 25.568995>,  <39.914089, 41.850002, 25.481823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657391, 42.144123, 25.568995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365580, -0.543102, 0.755904,
		0.674173, 0.405431, 0.617346,
		-0.641749, 0.735300, 0.217927,
		39.464867, 42.364712, 25.634373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903965, 41.918262, 26.226612>,  <39.914089, 41.850002, 25.481823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903965, 41.918262, 26.226612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.568577, 42.109066, 26.121216>,  <39.367344, 42.223549, 26.057978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.568577, 42.109066, 26.121216>,  <39.903965, 41.918262, 26.226612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568577, 42.109066, 26.121216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484248, -0.430439, 0.761726,
		0.249930, 0.766282, 0.591900,
		-0.838474, 0.477005, -0.263491,
		39.317036, 42.252167, 26.042168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588612, 42.066872, 26.795891>,  <39.903965, 41.918262, 26.226612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588612, 42.066872, 26.795891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.279198, 42.101509, 26.544765>,  <39.093552, 42.122292, 26.394091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.279198, 42.101509, 26.544765>,  <39.588612, 42.066872, 26.795891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279198, 42.101509, 26.544765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529347, -0.632989, 0.564904,
		-0.348483, 0.769303, 0.535475,
		-0.773532, 0.086592, -0.627814,
		39.047138, 42.127487, 26.356421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981178, 42.279018, 27.182365>,  <39.588612, 42.066872, 26.795891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981178, 42.279018, 27.182365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845173, 42.112198, 26.845211>,  <38.763569, 42.012104, 26.642918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845173, 42.112198, 26.845211>,  <38.981178, 42.279018, 27.182365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845173, 42.112198, 26.845211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677655, -0.512798, 0.527089,
		-0.652055, 0.750402, -0.108263,
		-0.340012, -0.417056, -0.842886,
		38.743168, 41.987080, 26.592346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147434, 42.346642, 27.187054>,  <38.981178, 42.279018, 27.182365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147434, 42.346642, 27.187054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220688, 42.046555, 26.932922>,  <38.264641, 41.866505, 26.780443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220688, 42.046555, 26.932922>,  <38.147434, 42.346642, 27.187054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220688, 42.046555, 26.932922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764952, -0.514676, 0.387243,
		-0.617503, 0.415077, -0.668133,
		0.183136, -0.750213, -0.635327,
		38.275627, 41.821491, 26.742325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551426, 42.092930, 27.039255>,  <38.147434, 42.346642, 27.187054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551426, 42.092930, 27.039255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781971, 41.781490, 26.939983>,  <37.920300, 41.594627, 26.880421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781971, 41.781490, 26.939983>,  <37.551426, 42.092930, 27.039255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781971, 41.781490, 26.939983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721563, -0.627440, 0.292686,
		-0.383600, 0.010381, -0.923441,
		0.576365, -0.778596, -0.248177,
		37.954880, 41.547913, 26.865530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073795, 41.507710, 26.816694>,  <37.551426, 42.092930, 27.039255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073795, 41.507710, 26.816694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412876, 41.318691, 26.913103>,  <37.616325, 41.205280, 26.970949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.412876, 41.318691, 26.913103>,  <37.073795, 41.507710, 26.816694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412876, 41.318691, 26.913103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521885, -0.661542, 0.538514,
		-0.095027, -0.582289, -0.807409,
		0.847706, -0.472548, 0.241024,
		37.667187, 41.176926, 26.985411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970684, 40.762291, 26.671316>,  <37.073795, 41.507710, 26.816694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970684, 40.762291, 26.671316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255192, 40.792683, 26.950836>,  <37.425896, 40.810917, 27.118547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255192, 40.792683, 26.950836>,  <36.970684, 40.762291, 26.671316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255192, 40.792683, 26.950836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557169, -0.545156, 0.626392,
		0.428549, -0.834884, -0.345420,
		0.711272, 0.075982, 0.698798,
		37.468575, 40.815475, 27.160475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979794, 40.123001, 27.015532>,  <36.970684, 40.762291, 26.671316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979794, 40.123001, 27.015532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183903, 40.345943, 27.277517>,  <37.306370, 40.479710, 27.434708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183903, 40.345943, 27.277517>,  <36.979794, 40.123001, 27.015532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183903, 40.345943, 27.277517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401658, -0.518963, 0.754551,
		0.760456, -0.648098, -0.040945,
		0.510272, 0.557357, 0.654962,
		37.336983, 40.513149, 27.474007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256245, 39.607780, 27.372835>,  <36.979794, 40.123001, 27.015532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256245, 39.607780, 27.372835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280155, 39.932205, 27.605593>,  <37.294502, 40.126862, 27.745247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.280155, 39.932205, 27.605593>,  <37.256245, 39.607780, 27.372835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280155, 39.932205, 27.605593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382837, -0.519734, 0.763749,
		0.921880, -0.268422, 0.279440,
		0.059773, 0.811064, 0.581894,
		37.298088, 40.175526, 27.780161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.816296, 34.768330, 29.914541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.877216, 35.082081, 30.155056>,  <39.913769, 35.270332, 30.299366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.877216, 35.082081, 30.155056>,  <39.816296, 34.768330, 29.914541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877216, 35.082081, 30.155056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381556, -0.607885, 0.696341,
		0.911712, 0.123369, -0.391869,
		0.152305, 0.784382, 0.601288,
		39.922909, 35.317394, 30.335442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465935, 34.600304, 30.272926>,  <39.816296, 34.768330, 29.914541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465935, 34.600304, 30.272926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.272221, 34.879795, 30.483543>,  <40.155994, 35.047489, 30.609913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.272221, 34.879795, 30.483543>,  <40.465935, 34.600304, 30.272926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272221, 34.879795, 30.483543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147476, -0.528018, 0.836330,
		0.862392, 0.482673, 0.152664,
		-0.484284, 0.698730, 0.526541,
		40.126934, 35.089413, 30.641506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811432, 34.548706, 30.878326>,  <40.465935, 34.600304, 30.272926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811432, 34.548706, 30.878326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495823, 34.768997, 30.987244>,  <40.306458, 34.901173, 31.052593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.495823, 34.768997, 30.987244>,  <40.811432, 34.548706, 30.878326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495823, 34.768997, 30.987244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028800, -0.409564, 0.911827,
		0.613689, 0.727294, 0.307294,
		-0.789023, 0.550728, 0.272291,
		40.259117, 34.934216, 31.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910915, 34.820705, 31.664963>,  <40.811432, 34.548706, 30.878326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910915, 34.820705, 31.664963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524292, 34.843952, 31.565048>,  <40.292320, 34.857899, 31.505100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524292, 34.843952, 31.565048>,  <40.910915, 34.820705, 31.664963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524292, 34.843952, 31.565048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255640, -0.296064, 0.920323,
		-0.020468, 0.953399, 0.301018,
		-0.966555, 0.058116, -0.249787,
		40.234325, 34.861385, 31.490112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606010, 35.113495, 32.295208>,  <40.910915, 34.820705, 31.664963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606010, 35.113495, 32.295208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321701, 34.922916, 32.088207>,  <40.151115, 34.808571, 31.964006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321701, 34.922916, 32.088207>,  <40.606010, 35.113495, 32.295208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321701, 34.922916, 32.088207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385027, -0.352187, 0.853064,
		-0.588695, 0.805584, 0.066879,
		-0.710769, -0.476444, -0.517502,
		40.108471, 34.779984, 31.932957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053394, 35.157005, 32.637974>,  <40.606010, 35.113495, 32.295208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053394, 35.157005, 32.637974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922512, 34.846340, 32.422665>,  <39.843983, 34.659943, 32.293480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922512, 34.846340, 32.422665>,  <40.053394, 35.157005, 32.637974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922512, 34.846340, 32.422665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372444, -0.417518, 0.828833,
		-0.868461, 0.471670, -0.152651,
		-0.327202, -0.776663, -0.538269,
		39.824352, 34.613342, 32.261185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220062, 35.104233, 32.874943>,  <40.053394, 35.157005, 32.637974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220062, 35.104233, 32.874943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388084, 34.776531, 32.718796>,  <39.488895, 34.579910, 32.625107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.388084, 34.776531, 32.718796>,  <39.220062, 35.104233, 32.874943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388084, 34.776531, 32.718796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429822, -0.558453, 0.709495,
		-0.799256, -0.130235, -0.586710,
		0.420051, -0.819249, -0.390369,
		39.514099, 34.530758, 32.601685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691299, 34.648251, 32.718655>,  <39.220062, 35.104233, 32.874943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691299, 34.648251, 32.718655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004036, 34.400082, 32.743324>,  <39.191677, 34.251179, 32.758125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004036, 34.400082, 32.743324>,  <38.691299, 34.648251, 32.718655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004036, 34.400082, 32.743324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453627, -0.498192, 0.738937,
		-0.427726, -0.605708, -0.670946,
		0.781839, -0.620421, 0.061676,
		39.238586, 34.213955, 32.761826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509956, 33.941639, 32.731075>,  <38.691299, 34.648251, 32.718655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509956, 33.941639, 32.731075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862038, 33.955452, 32.920410>,  <39.073288, 33.963741, 33.034012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862038, 33.955452, 32.920410>,  <38.509956, 33.941639, 32.731075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862038, 33.955452, 32.920410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414093, -0.431400, 0.801511,
		0.231875, -0.901499, -0.365421,
		0.880205, 0.034532, 0.473336,
		39.126099, 33.965813, 33.062412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402580, 33.445534, 33.159519>,  <38.509956, 33.941639, 32.731075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402580, 33.445534, 33.159519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.736187, 33.623100, 33.290581>,  <38.936352, 33.729641, 33.369217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.736187, 33.623100, 33.290581>,  <38.402580, 33.445534, 33.159519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736187, 33.623100, 33.290581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205939, -0.300476, 0.931291,
		0.511868, -0.844188, -0.159182,
		0.834015, 0.443916, 0.327655,
		38.986393, 33.756275, 33.388878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770264, 32.934216, 33.522049>,  <38.402580, 33.445534, 33.159519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770264, 32.934216, 33.522049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880230, 33.290543, 33.666756>,  <38.946209, 33.504337, 33.753578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880230, 33.290543, 33.666756>,  <38.770264, 32.934216, 33.522049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880230, 33.290543, 33.666756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280221, -0.285693, 0.916437,
		0.919728, -0.353315, 0.171083,
		0.274914, 0.890813, 0.361766,
		38.962704, 33.557785, 33.775284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881165, 32.741425, 34.184216>,  <38.770264, 32.934216, 33.522049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881165, 32.741425, 34.184216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863159, 33.140266, 34.208733>,  <38.852356, 33.379570, 34.223442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.863159, 33.140266, 34.208733>,  <38.881165, 32.741425, 34.184216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863159, 33.140266, 34.208733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452938, -0.075057, 0.888376,
		0.890404, 0.012230, 0.455006,
		-0.045016, 0.997104, 0.061292,
		38.849655, 33.439396, 34.227119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064747, 32.869785, 34.870075>,  <38.881165, 32.741425, 34.184216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064747, 32.869785, 34.870075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878151, 33.200260, 34.743706>,  <38.766193, 33.398544, 34.667885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.878151, 33.200260, 34.743706>,  <39.064747, 32.869785, 34.870075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878151, 33.200260, 34.743706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552768, 0.006536, 0.833310,
		0.690533, 0.563361, 0.453639,
		-0.466489, 0.826185, -0.315921,
		38.738205, 33.448116, 34.648930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027607, 33.299202, 35.475971>,  <39.064747, 32.869785, 34.870075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027607, 33.299202, 35.475971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.754242, 33.376358, 35.194336>,  <38.590221, 33.422653, 35.025356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.754242, 33.376358, 35.194336>,  <39.027607, 33.299202, 35.475971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754242, 33.376358, 35.194336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723665, -0.051938, 0.688194,
		0.096177, 0.979845, 0.175083,
		-0.683417, 0.192890, -0.704084,
		38.549217, 33.434223, 34.983112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256416, 32.761463, 35.826092>,  <39.027607, 33.299202, 35.475971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256416, 32.761463, 35.826092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643250, 32.665939, 35.790939>,  <39.875351, 32.608624, 35.769848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.643250, 32.665939, 35.790939>,  <39.256416, 32.761463, 35.826092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643250, 32.665939, 35.790939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207330, 0.939694, -0.272012,
		0.147538, 0.244838, 0.958273,
		0.967082, -0.238810, -0.087878,
		39.933372, 32.594296, 35.764576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590641, 33.218292, 36.195499>,  <39.256416, 32.761463, 35.826092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590641, 33.218292, 36.195499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857544, 33.079834, 35.931698>,  <40.017685, 32.996761, 35.773415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857544, 33.079834, 35.931698>,  <39.590641, 33.218292, 36.195499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857544, 33.079834, 35.931698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270317, 0.937623, -0.218614,
		0.694039, -0.032403, 0.719207,
		0.667262, -0.346141, -0.659506,
		40.057724, 32.975990, 35.733845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116962, 33.650745, 36.308792>,  <39.590641, 33.218292, 36.195499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116962, 33.650745, 36.308792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166573, 33.495598, 35.943459>,  <40.196339, 33.402508, 35.724258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.166573, 33.495598, 35.943459>,  <40.116962, 33.650745, 36.308792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166573, 33.495598, 35.943459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192296, 0.912383, -0.361358,
		0.973468, -0.130814, 0.187742,
		0.124022, -0.387872, -0.913331,
		40.203781, 33.379234, 35.669460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779526, 33.827904, 36.163094>,  <40.116962, 33.650745, 36.308792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779526, 33.827904, 36.163094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605228, 33.737423, 35.814621>,  <40.500652, 33.683132, 35.605537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605228, 33.737423, 35.814621>,  <40.779526, 33.827904, 36.163094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605228, 33.737423, 35.814621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052296, 0.959907, -0.275399,
		0.898552, -0.165561, -0.406440,
		-0.435740, -0.226205, -0.871184,
		40.474506, 33.669563, 35.553265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200253, 34.046570, 35.635372>,  <40.779526, 33.827904, 36.163094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200253, 34.046570, 35.635372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836433, 34.017738, 35.471653>,  <40.618141, 34.000439, 35.373421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836433, 34.017738, 35.471653>,  <41.200253, 34.046570, 35.635372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836433, 34.017738, 35.471653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099865, 0.918084, -0.383599,
		0.403422, -0.389777, -0.827844,
		-0.909548, -0.072080, -0.409300,
		40.563568, 33.996113, 35.348862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279518, 34.441296, 34.969986>,  <41.200253, 34.046570, 35.635372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279518, 34.441296, 34.969986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883957, 34.399391, 35.012131>,  <40.646622, 34.374249, 35.037418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.883957, 34.399391, 35.012131>,  <41.279518, 34.441296, 34.969986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883957, 34.399391, 35.012131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144108, 0.849022, -0.508325,
		-0.036203, -0.517866, -0.854695,
		-0.988900, -0.104765, 0.105366,
		40.587288, 34.367962, 35.043739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044086, 34.636322, 34.244637>,  <41.279518, 34.441296, 34.969986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044086, 34.636322, 34.244637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762768, 34.695873, 34.522690>,  <40.593975, 34.731606, 34.689522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762768, 34.695873, 34.522690>,  <41.044086, 34.636322, 34.244637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762768, 34.695873, 34.522690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147069, 0.926199, -0.347168,
		-0.695517, -0.346395, -0.629498,
		-0.703297, 0.148882, 0.695131,
		40.551777, 34.740540, 34.731228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583382, 34.940971, 33.878513>,  <41.044086, 34.636322, 34.244637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583382, 34.940971, 33.878513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487957, 35.009575, 34.260857>,  <40.430702, 35.050735, 34.490265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487957, 35.009575, 34.260857>,  <40.583382, 34.940971, 33.878513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487957, 35.009575, 34.260857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262144, 0.936369, -0.233437,
		-0.935076, -0.306263, -0.178424,
		-0.238564, 0.171508, 0.955862,
		40.416389, 35.061028, 34.547615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868473, 35.240177, 33.953171>,  <40.583382, 34.940971, 33.878513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868473, 35.240177, 33.953171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087009, 35.345055, 34.271355>,  <40.218132, 35.407982, 34.462265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.087009, 35.345055, 34.271355>,  <39.868473, 35.240177, 33.953171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087009, 35.345055, 34.271355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325417, 0.941573, -0.086854,
		-0.771759, -0.211405, 0.599747,
		0.546344, 0.262198, 0.795462,
		40.250912, 35.423714, 34.509995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274101, 35.514397, 34.291397>,  <39.868473, 35.240177, 33.953171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274101, 35.514397, 34.291397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620583, 35.660557, 34.427731>,  <39.828472, 35.748253, 34.509533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.620583, 35.660557, 34.427731>,  <39.274101, 35.514397, 34.291397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620583, 35.660557, 34.427731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312903, 0.928454, -0.200161,
		-0.389590, 0.066732, 0.918568,
		0.866205, 0.365404, 0.340836,
		39.880444, 35.770180, 34.529980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106018, 36.065643, 34.699062>,  <39.274101, 35.514397, 34.291397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106018, 36.065643, 34.699062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492069, 36.131336, 34.617516>,  <39.723698, 36.170753, 34.568588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.492069, 36.131336, 34.617516>,  <39.106018, 36.065643, 34.699062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492069, 36.131336, 34.617516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243935, 0.846858, -0.472575,
		0.095037, 0.505824, 0.857386,
		0.965124, 0.164235, -0.203871,
		39.781605, 36.180607, 34.556355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261692, 36.657951, 34.927525>,  <39.106018, 36.065643, 34.699062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261692, 36.657951, 34.927525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.559921, 36.613651, 34.664661>,  <39.738861, 36.587070, 34.506943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.559921, 36.613651, 34.664661>,  <39.261692, 36.657951, 34.927525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559921, 36.613651, 34.664661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176993, 0.917774, -0.355477,
		0.642487, 0.381347, 0.664669,
		0.745576, -0.110748, -0.657154,
		39.783596, 36.580425, 34.467514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563301, 37.347675, 34.834736>,  <39.261692, 36.657951, 34.927525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563301, 37.347675, 34.834736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699715, 37.140957, 34.520634>,  <39.781563, 37.016926, 34.332172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.699715, 37.140957, 34.520634>,  <39.563301, 37.347675, 34.834736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699715, 37.140957, 34.520634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070166, 0.819004, -0.569481,
		0.937430, 0.249309, 0.243045,
		0.341031, -0.516795, -0.785252,
		39.802025, 36.985920, 34.285057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087460, 37.785122, 34.521069>,  <39.563301, 37.347675, 34.834736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087460, 37.785122, 34.521069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.944878, 37.543251, 34.236168>,  <39.859329, 37.398129, 34.065228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.944878, 37.543251, 34.236168>,  <40.087460, 37.785122, 34.521069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944878, 37.543251, 34.236168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078449, 0.779011, -0.622083,
		0.931012, -0.165871, -0.325121,
		-0.356458, -0.604673, -0.712256,
		39.837940, 37.361851, 34.022491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595215, 38.236473, 34.454788>,  <40.087460, 37.785122, 34.521069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595215, 38.236473, 34.454788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627190, 38.621098, 34.559864>,  <40.646374, 38.851871, 34.622910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627190, 38.621098, 34.559864>,  <40.595215, 38.236473, 34.454788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627190, 38.621098, 34.559864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347329, -0.220150, 0.911535,
		0.934330, -0.164109, 0.316380,
		0.079940, 0.961563, 0.262692,
		40.651173, 38.909565, 34.638672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906857, 38.188511, 35.189632>,  <40.595215, 38.236473, 34.454788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906857, 38.188511, 35.189632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745319, 38.549229, 35.128078>,  <40.648399, 38.765659, 35.091148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745319, 38.549229, 35.128078>,  <40.906857, 38.188511, 35.189632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745319, 38.549229, 35.128078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484510, -0.068152, 0.872127,
		0.775992, 0.426758, 0.464451,
		-0.403841, 0.901794, -0.153883,
		40.624168, 38.819767, 35.081913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980156, 38.305607, 35.847496>,  <40.906857, 38.188511, 35.189632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980156, 38.305607, 35.847496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704208, 38.530472, 35.665047>,  <40.538639, 38.665390, 35.555576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704208, 38.530472, 35.665047>,  <40.980156, 38.305607, 35.847496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704208, 38.530472, 35.665047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627689, -0.150594, 0.763759,
		0.360669, 0.813199, 0.456755,
		-0.689873, 0.562164, -0.456121,
		40.497246, 38.699120, 35.528210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801086, 38.856483, 36.343311>,  <40.980156, 38.305607, 35.847496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801086, 38.856483, 36.343311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486221, 38.830128, 36.098026>,  <40.297302, 38.814316, 35.950855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486221, 38.830128, 36.098026>,  <40.801086, 38.856483, 36.343311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486221, 38.830128, 36.098026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582752, -0.246079, 0.774497,
		-0.201930, 0.967008, 0.155307,
		-0.787162, -0.065889, -0.613216,
		40.250072, 38.810360, 35.914062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307400, 39.215439, 36.750629>,  <40.801086, 38.856483, 36.343311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307400, 39.215439, 36.750629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095394, 39.015354, 36.476730>,  <39.968193, 38.895306, 36.312389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095394, 39.015354, 36.476730>,  <40.307400, 39.215439, 36.750629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095394, 39.015354, 36.476730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730710, -0.140345, 0.668107,
		-0.430293, 0.854457, -0.291122,
		-0.530011, -0.500207, -0.684749,
		39.936390, 38.865292, 36.271305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589455, 39.418682, 36.738583>,  <40.307400, 39.215439, 36.750629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589455, 39.418682, 36.738583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.541351, 39.069046, 36.550323>,  <39.512489, 38.859264, 36.437366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.541351, 39.069046, 36.550323>,  <39.589455, 39.418682, 36.738583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541351, 39.069046, 36.550323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728629, -0.244289, 0.639862,
		-0.674269, 0.419874, -0.607508,
		-0.120254, -0.874087, -0.470649,
		39.505276, 38.806820, 36.409130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943783, 39.414047, 36.585155>,  <39.589455, 39.418682, 36.738583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943783, 39.414047, 36.585155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046898, 39.027763, 36.597446>,  <39.108768, 38.795994, 36.604820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046898, 39.027763, 36.597446>,  <38.943783, 39.414047, 36.585155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046898, 39.027763, 36.597446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733979, -0.175046, 0.656227,
		-0.628347, -0.191722, -0.753938,
		0.257787, -0.965713, 0.030730,
		39.124233, 38.738049, 36.606667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312298, 39.091843, 36.711235>,  <38.943783, 39.414047, 36.585155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312298, 39.091843, 36.711235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.589806, 38.819344, 36.804695>,  <38.756310, 38.655846, 36.860771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.589806, 38.819344, 36.804695>,  <38.312298, 39.091843, 36.711235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589806, 38.819344, 36.804695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617746, -0.396112, 0.679327,
		-0.370235, -0.615634, -0.695645,
		0.693770, -0.681242, 0.233651,
		38.797935, 38.614971, 36.874790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908421, 38.479019, 36.771980>,  <38.312298, 39.091843, 36.711235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908421, 38.479019, 36.771980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249020, 38.390209, 36.961994>,  <38.453381, 38.336922, 37.076000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249020, 38.390209, 36.961994>,  <37.908421, 38.479019, 36.771980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249020, 38.390209, 36.961994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521465, -0.453568, 0.722738,
		0.054995, -0.863123, -0.501990,
		0.851498, -0.222024, 0.475032,
		38.504471, 38.323601, 37.104504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841858, 37.784790, 37.108425>,  <37.908421, 38.479019, 36.771980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841858, 37.784790, 37.108425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123966, 37.981709, 37.312481>,  <38.293232, 38.099861, 37.434914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123966, 37.981709, 37.312481>,  <37.841858, 37.784790, 37.108425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123966, 37.981709, 37.312481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375325, -0.351185, 0.857788,
		0.601439, -0.796438, -0.062908,
		0.705268, 0.492296, 0.510140,
		38.335548, 38.129398, 37.465523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935181, 37.431828, 37.743404>,  <37.841858, 37.784790, 37.108425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935181, 37.431828, 37.743404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096546, 37.785843, 37.836323>,  <38.193367, 37.998253, 37.892075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096546, 37.785843, 37.836323>,  <37.935181, 37.431828, 37.743404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096546, 37.785843, 37.836323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309955, -0.106683, 0.944747,
		0.860920, -0.453128, 0.231285,
		0.403416, 0.885039, 0.232295,
		38.217571, 38.051353, 37.906010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443905, 37.373348, 38.344379>,  <37.935181, 37.431828, 37.743404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443905, 37.373348, 38.344379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292057, 37.743343, 38.337601>,  <38.200951, 37.965340, 38.333534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292057, 37.743343, 38.337601>,  <38.443905, 37.373348, 38.344379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292057, 37.743343, 38.337601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229564, -0.076438, 0.970288,
		0.896210, 0.372227, 0.241361,
		-0.379617, 0.924989, -0.016946,
		38.178173, 38.020840, 38.332516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.861546, 39.468353, 31.704792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656712, 39.811928, 31.705389>,  <42.533813, 40.018074, 31.705748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656712, 39.811928, 31.705389>,  <42.861546, 39.468353, 31.704792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656712, 39.811928, 31.705389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378501, -0.227216, 0.897279,
		0.771045, 0.458915, 0.441461,
		-0.512082, 0.858936, 0.001494,
		42.503086, 40.069607, 31.705837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021069, 39.801483, 32.360729>,  <42.861546, 39.468353, 31.704792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021069, 39.801483, 32.360729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668770, 39.934296, 32.225651>,  <42.457390, 40.013981, 32.144604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668770, 39.934296, 32.225651>,  <43.021069, 39.801483, 32.360729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668770, 39.934296, 32.225651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424973, -0.239415, 0.872971,
		0.209000, 0.912380, 0.351967,
		-0.880748, 0.332028, -0.337700,
		42.404545, 40.033905, 32.124340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724945, 40.163731, 32.946781>,  <43.021069, 39.801483, 32.360729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724945, 40.163731, 32.946781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411346, 40.106934, 32.705059>,  <42.223186, 40.072853, 32.560028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411346, 40.106934, 32.705059>,  <42.724945, 40.163731, 32.946781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411346, 40.106934, 32.705059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589271, -0.135876, 0.796428,
		-0.195199, 0.980497, 0.022853,
		-0.784001, -0.141995, -0.604301,
		42.176147, 40.064335, 32.523769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145042, 40.645100, 33.266945>,  <42.724945, 40.163731, 32.946781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145042, 40.645100, 33.266945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986458, 40.353779, 33.043377>,  <41.891308, 40.178986, 32.909237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986458, 40.353779, 33.043377>,  <42.145042, 40.645100, 33.266945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986458, 40.353779, 33.043377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513102, -0.329064, 0.792744,
		-0.761278, 0.601078, -0.243231,
		-0.396463, -0.728300, -0.558924,
		41.867519, 40.135288, 32.875698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488319, 40.735878, 33.263332>,  <42.145042, 40.645100, 33.266945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488319, 40.735878, 33.263332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526569, 40.348183, 33.172611>,  <41.549519, 40.115566, 33.118179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526569, 40.348183, 33.172611>,  <41.488319, 40.735878, 33.263332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526569, 40.348183, 33.172611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551818, -0.241252, 0.798307,
		-0.828464, 0.048814, -0.557911,
		0.095629, -0.969234, -0.226805,
		41.555260, 40.057411, 33.104568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813194, 40.417934, 33.202072>,  <41.488319, 40.735878, 33.263332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813194, 40.417934, 33.202072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046719, 40.097477, 33.254734>,  <41.186832, 39.905201, 33.286331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046719, 40.097477, 33.254734>,  <40.813194, 40.417934, 33.202072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046719, 40.097477, 33.254734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544291, -0.265891, 0.795644,
		-0.602421, -0.536162, -0.591286,
		0.583812, -0.801144, 0.131650,
		41.221863, 39.857132, 33.294228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369858, 39.923782, 33.279278>,  <40.813194, 40.417934, 33.202072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369858, 39.923782, 33.279278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703449, 39.755173, 33.421715>,  <40.903603, 39.654007, 33.507175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703449, 39.755173, 33.421715>,  <40.369858, 39.923782, 33.279278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703449, 39.755173, 33.421715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477801, -0.228825, 0.848142,
		-0.276034, -0.877469, -0.392241,
		0.833973, -0.421530, 0.356092,
		40.953640, 39.628716, 33.528542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130806, 39.285603, 33.527748>,  <40.369858, 39.923782, 33.279278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130806, 39.285603, 33.527748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474689, 39.343365, 33.723728>,  <40.681019, 39.378021, 33.841316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474689, 39.343365, 33.723728>,  <40.130806, 39.285603, 33.527748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474689, 39.343365, 33.723728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371457, -0.481647, 0.793748,
		0.350603, -0.864386, -0.360435,
		0.859707, 0.144404, 0.489950,
		40.732601, 39.386684, 33.870712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232479, 38.681973, 33.872345>,  <40.130806, 39.285603, 33.527748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232479, 38.681973, 33.872345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462784, 38.942402, 34.070175>,  <40.600967, 39.098660, 34.188873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462784, 38.942402, 34.070175>,  <40.232479, 38.681973, 33.872345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462784, 38.942402, 34.070175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341373, -0.358222, 0.868989,
		0.742939, -0.669168, 0.016005,
		0.575766, 0.651069, 0.494573,
		40.635513, 39.137722, 34.218548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434662, 37.953960, 33.810844>,  <40.232479, 38.681973, 33.872345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434662, 37.953960, 33.810844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155529, 37.706459, 33.666523>,  <39.988049, 37.557957, 33.579929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155529, 37.706459, 33.666523>,  <40.434662, 37.953960, 33.810844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155529, 37.706459, 33.666523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023522, 0.523257, -0.851850,
		0.715880, -0.585957, -0.379698,
		-0.697828, -0.618754, -0.360806,
		39.946182, 37.520832, 33.558281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674744, 37.738831, 33.128708>,  <40.434662, 37.953960, 33.810844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674744, 37.738831, 33.128708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276485, 37.707920, 33.149578>,  <40.037533, 37.689373, 33.162102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276485, 37.707920, 33.149578>,  <40.674744, 37.738831, 33.128708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276485, 37.707920, 33.149578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077461, 0.373994, -0.924190,
		0.051904, -0.924206, -0.378351,
		-0.995643, -0.077277, 0.052178,
		39.977791, 37.684738, 33.165230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371971, 37.388565, 32.580170>,  <40.674744, 37.738831, 33.128708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371971, 37.388565, 32.580170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056343, 37.609997, 32.686699>,  <39.866966, 37.742855, 32.750614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056343, 37.609997, 32.686699>,  <40.371971, 37.388565, 32.580170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056343, 37.609997, 32.686699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012265, 0.447641, -0.894130,
		-0.614185, -0.702261, -0.360008,
		-0.789067, 0.553577, 0.266321,
		39.819622, 37.776070, 32.766594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947216, 37.282681, 32.069950>,  <40.371971, 37.388565, 32.580170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947216, 37.282681, 32.069950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785320, 37.609039, 32.235119>,  <39.688183, 37.804855, 32.334221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785320, 37.609039, 32.235119>,  <39.947216, 37.282681, 32.069950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785320, 37.609039, 32.235119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056132, 0.428543, -0.901776,
		-0.912708, -0.388161, -0.127650,
		-0.404738, 0.815893, 0.412923,
		39.663898, 37.853806, 32.358997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445629, 37.498764, 31.653299>,  <39.947216, 37.282681, 32.069950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445629, 37.498764, 31.653299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487087, 37.825871, 31.879753>,  <39.511963, 38.022137, 32.015625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487087, 37.825871, 31.879753>,  <39.445629, 37.498764, 31.653299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487087, 37.825871, 31.879753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014381, 0.570373, -0.821260,
		-0.994511, 0.076975, 0.070875,
		0.103642, 0.817771, 0.566135,
		39.518181, 38.071201, 32.049595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190979, 37.962284, 31.268087>,  <39.445629, 37.498764, 31.653299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190979, 37.962284, 31.268087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408550, 38.191528, 31.513260>,  <39.539093, 38.329075, 31.660362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408550, 38.191528, 31.513260>,  <39.190979, 37.962284, 31.268087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408550, 38.191528, 31.513260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134226, 0.661605, -0.737741,
		-0.828325, 0.483551, 0.282940,
		0.543930, 0.573112, 0.612929,
		39.571728, 38.363461, 31.697138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917458, 38.689816, 31.303770>,  <39.190979, 37.962284, 31.268087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917458, 38.689816, 31.303770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300907, 38.712757, 31.415304>,  <39.530975, 38.726521, 31.482225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300907, 38.712757, 31.415304>,  <38.917458, 38.689816, 31.303770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300907, 38.712757, 31.415304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165045, 0.686098, -0.708541,
		-0.231945, 0.725245, 0.648245,
		0.958625, 0.057352, 0.278835,
		39.588493, 38.729961, 31.498955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084354, 39.433933, 31.273252>,  <38.917458, 38.689816, 31.303770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084354, 39.433933, 31.273252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424911, 39.224922, 31.254946>,  <39.629246, 39.099514, 31.243961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424911, 39.224922, 31.254946>,  <39.084354, 39.433933, 31.273252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424911, 39.224922, 31.254946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276775, 0.521655, -0.807014,
		0.445560, 0.674420, 0.588756,
		0.851394, -0.522527, -0.045766,
		39.680328, 39.068165, 31.241217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535881, 39.939350, 31.205231>,  <39.084354, 39.433933, 31.273252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535881, 39.939350, 31.205231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733181, 39.611996, 31.087280>,  <39.851562, 39.415585, 31.016510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733181, 39.611996, 31.087280>,  <39.535881, 39.939350, 31.205231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733181, 39.611996, 31.087280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384335, 0.509127, -0.770114,
		0.780377, 0.266529, 0.565662,
		0.493252, -0.818384, -0.294874,
		39.881157, 39.366482, 30.998817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269661, 40.206078, 31.101315>,  <39.535881, 39.939350, 31.205231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269661, 40.206078, 31.101315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207630, 39.866470, 30.899279>,  <40.170410, 39.662704, 30.778057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207630, 39.866470, 30.899279>,  <40.269661, 40.206078, 31.101315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207630, 39.866470, 30.899279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492644, 0.376703, -0.784472,
		0.856302, -0.370484, 0.359846,
		-0.155079, -0.849021, -0.505088,
		40.161106, 39.611763, 30.747753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985401, 40.024746, 30.689518>,  <40.269661, 40.206078, 31.101315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985401, 40.024746, 30.689518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673512, 39.874649, 30.489033>,  <40.486378, 39.784592, 30.368742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673512, 39.874649, 30.489033>,  <40.985401, 40.024746, 30.689518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673512, 39.874649, 30.489033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444856, 0.231294, -0.865220,
		0.440600, -0.897603, -0.013415,
		-0.779727, -0.375249, -0.501213,
		40.439594, 39.762074, 30.338669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282688, 39.720173, 30.068890>,  <40.985401, 40.024746, 30.689518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282688, 39.720173, 30.068890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889931, 39.757755, 30.003094>,  <40.654278, 39.780304, 29.963617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889931, 39.757755, 30.003094>,  <41.282688, 39.720173, 30.068890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889931, 39.757755, 30.003094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184823, 0.284810, -0.940598,
		-0.041526, -0.953969, -0.297018,
		-0.981894, 0.093955, -0.164488,
		40.595364, 39.785942, 29.953747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266251, 39.443333, 29.447872>,  <41.282688, 39.720173, 30.068890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266251, 39.443333, 29.447872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922966, 39.647858, 29.465858>,  <40.716995, 39.770573, 29.476650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922966, 39.647858, 29.465858>,  <41.266251, 39.443333, 29.447872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922966, 39.647858, 29.465858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114510, 0.276116, -0.954278,
		-0.500353, -0.813828, -0.295518,
		-0.858216, 0.511316, 0.044964,
		40.665501, 39.801254, 29.479347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814903, 39.257584, 28.871000>,  <41.266251, 39.443333, 29.447872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814903, 39.257584, 28.871000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693394, 39.616383, 28.999451>,  <40.620487, 39.831661, 29.076521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693394, 39.616383, 28.999451>,  <40.814903, 39.257584, 28.871000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693394, 39.616383, 28.999451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004350, 0.335744, -0.941943,
		-0.952735, -0.287532, -0.098087,
		-0.303771, 0.896996, 0.321125,
		40.602261, 39.885483, 29.095789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.126755, 43.641914, 28.877481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477570, 43.500877, 29.008007>,  <38.688061, 43.416256, 29.086323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477570, 43.500877, 29.008007>,  <38.126755, 43.641914, 28.877481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477570, 43.500877, 29.008007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480061, -0.669407, 0.566953,
		0.018536, -0.653892, -0.756361,
		0.877039, -0.352591, 0.326316,
		38.740681, 43.395100, 29.105902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119030, 42.888355, 28.934431>,  <38.126755, 43.641914, 28.877481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119030, 42.888355, 28.934431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423267, 42.999832, 29.168980>,  <38.605808, 43.066719, 29.309710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423267, 42.999832, 29.168980>,  <38.119030, 42.888355, 28.934431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423267, 42.999832, 29.168980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258853, -0.698109, 0.667561,
		0.595395, -0.659526, -0.458836,
		0.760592, 0.278692, 0.586371,
		38.651443, 43.083439, 29.344891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425552, 42.329502, 29.028189>,  <38.119030, 42.888355, 28.934431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425552, 42.329502, 29.028189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.563484, 42.550644, 29.331621>,  <38.646244, 42.683327, 29.513680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.563484, 42.550644, 29.331621>,  <38.425552, 42.329502, 29.028189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563484, 42.550644, 29.331621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207988, -0.743058, 0.636087,
		0.915331, -0.377120, -0.141245,
		0.344834, 0.552853, 0.758580,
		38.666935, 42.716499, 29.559195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974384, 41.933636, 29.361021>,  <38.425552, 42.329502, 29.028189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974384, 41.933636, 29.361021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839127, 42.203503, 29.623466>,  <38.757973, 42.365421, 29.780933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839127, 42.203503, 29.623466>,  <38.974384, 41.933636, 29.361021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839127, 42.203503, 29.623466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239806, -0.735939, 0.633157,
		0.910029, 0.056757, 0.410641,
		-0.338143, 0.674665, 0.656115,
		38.737682, 42.405903, 29.820301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146854, 41.699833, 30.072725>,  <38.974384, 41.933636, 29.361021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146854, 41.699833, 30.072725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.846397, 41.954262, 30.143391>,  <38.666122, 42.106918, 30.185789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.846397, 41.954262, 30.143391>,  <39.146854, 41.699833, 30.072725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846397, 41.954262, 30.143391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483484, -0.712274, 0.508830,
		0.449483, 0.296788, 0.842545,
		-0.751138, 0.636067, 0.176663,
		38.621056, 42.145081, 30.196390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998440, 41.470070, 30.676178>,  <39.146854, 41.699833, 30.072725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998440, 41.470070, 30.676178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693665, 41.724049, 30.625118>,  <38.510799, 41.876434, 30.594482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.693665, 41.724049, 30.625118>,  <38.998440, 41.470070, 30.676178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693665, 41.724049, 30.625118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596828, -0.611835, 0.519091,
		0.251493, 0.471700, 0.845133,
		-0.761937, 0.634947, -0.127651,
		38.465084, 41.914532, 30.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833996, 41.821957, 31.354103>,  <38.998440, 41.470070, 30.676178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833996, 41.821957, 31.354103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497715, 41.860653, 31.140991>,  <38.295944, 41.883873, 31.013124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.497715, 41.860653, 31.140991>,  <38.833996, 41.821957, 31.354103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497715, 41.860653, 31.140991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467923, -0.624957, 0.624881,
		-0.272513, 0.774642, 0.570672,
		-0.840705, 0.096743, -0.532782,
		38.245502, 41.889675, 30.981157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301285, 42.023266, 31.806499>,  <38.833996, 41.821957, 31.354103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301285, 42.023266, 31.806499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125301, 41.863567, 31.484745>,  <38.019711, 41.767746, 31.291693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.125301, 41.863567, 31.484745>,  <38.301285, 42.023266, 31.806499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125301, 41.863567, 31.484745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507736, -0.628230, 0.589518,
		-0.740704, 0.667778, 0.073681,
		-0.439956, -0.399248, -0.804388,
		37.993313, 41.743793, 31.243429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701214, 41.858471, 32.109253>,  <38.301285, 42.023266, 31.806499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701214, 41.858471, 32.109253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687241, 41.654095, 31.765692>,  <37.678856, 41.531467, 31.559555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687241, 41.654095, 31.765692>,  <37.701214, 41.858471, 32.109253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687241, 41.654095, 31.765692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456759, -0.756254, 0.468455,
		-0.888904, 0.408679, -0.206957,
		-0.034936, -0.510941, -0.858905,
		37.676762, 41.500813, 31.508020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009548, 41.545143, 32.037224>,  <37.701214, 41.858471, 32.109253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009548, 41.545143, 32.037224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255241, 41.318581, 31.817444>,  <37.402657, 41.182644, 31.685575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255241, 41.318581, 31.817444>,  <37.009548, 41.545143, 32.037224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255241, 41.318581, 31.817444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259488, -0.802532, 0.537222,
		-0.745237, -0.187406, -0.639922,
		0.614237, -0.566410, -0.549448,
		37.439510, 41.148659, 31.652609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596146, 41.104633, 31.748941>,  <37.009548, 41.545143, 32.037224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596146, 41.104633, 31.748941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.966175, 40.952969, 31.740217>,  <37.188194, 40.861969, 31.734983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.966175, 40.952969, 31.740217>,  <36.596146, 41.104633, 31.748941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966175, 40.952969, 31.740217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315637, -0.799475, 0.511089,
		-0.211222, -0.465911, -0.859251,
		0.925072, -0.379165, -0.021809,
		37.243698, 40.839218, 31.733675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516357, 40.468891, 31.576994>,  <36.596146, 41.104633, 31.748941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516357, 40.468891, 31.576994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.879013, 40.460835, 31.745564>,  <37.096607, 40.456001, 31.846706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.879013, 40.460835, 31.745564>,  <36.516357, 40.468891, 31.576994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879013, 40.460835, 31.745564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301407, -0.729873, 0.613547,
		0.295227, -0.683286, -0.667803,
		0.906639, -0.020145, 0.421426,
		37.151005, 40.454792, 31.871992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484283, 39.774246, 31.784643>,  <36.516357, 40.468891, 31.576994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484283, 39.774246, 31.784643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805119, 39.919498, 31.974291>,  <36.997620, 40.006649, 32.088081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.805119, 39.919498, 31.974291>,  <36.484283, 39.774246, 31.784643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805119, 39.919498, 31.974291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133304, -0.665006, 0.734845,
		0.582136, -0.652614, -0.484988,
		0.802090, 0.363128, 0.474120,
		37.045746, 40.028439, 32.116528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775356, 39.239315, 32.064754>,  <36.484283, 39.774246, 31.784643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775356, 39.239315, 32.064754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920059, 39.530712, 32.297451>,  <37.006882, 39.705551, 32.437069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920059, 39.530712, 32.297451>,  <36.775356, 39.239315, 32.064754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920059, 39.530712, 32.297451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128332, -0.579151, 0.805056,
		0.923396, -0.365894, -0.116024,
		0.361760, 0.728496, 0.581742,
		37.028587, 39.749260, 32.471973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241985, 38.767712, 31.759031>,  <36.775356, 39.239315, 32.064754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241985, 38.767712, 31.759031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186954, 38.452126, 31.519499>,  <37.153934, 38.262772, 31.375778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186954, 38.452126, 31.519499>,  <37.241985, 38.767712, 31.759031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186954, 38.452126, 31.519499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023415, 0.607004, -0.794354,
		0.990214, -0.095263, -0.101984,
		-0.137578, -0.788968, -0.598833,
		37.145679, 38.215435, 31.339849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739998, 38.848545, 31.223644>,  <37.241985, 38.767712, 31.759031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739998, 38.848545, 31.223644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.438328, 38.620827, 31.092728>,  <37.257324, 38.484196, 31.014177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.438328, 38.620827, 31.092728>,  <37.739998, 38.848545, 31.223644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438328, 38.620827, 31.092728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103789, 0.595483, -0.796635,
		0.648423, -0.566830, -0.508184,
		-0.754172, -0.569301, -0.327294,
		37.212074, 38.450039, 30.994539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912636, 38.684963, 30.621578>,  <37.739998, 38.848545, 31.223644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912636, 38.684963, 30.621578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516769, 38.629669, 30.606348>,  <37.279251, 38.596493, 30.597210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516769, 38.629669, 30.606348>,  <37.912636, 38.684963, 30.621578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516769, 38.629669, 30.606348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049605, 0.579255, -0.813636,
		0.134529, -0.803340, -0.580127,
		-0.989667, -0.138235, -0.038077,
		37.219868, 38.588200, 30.594925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774429, 38.560886, 29.907583>,  <37.912636, 38.684963, 30.621578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774429, 38.560886, 29.907583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421551, 38.650074, 30.073481>,  <37.209824, 38.703587, 30.173019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.421551, 38.650074, 30.073481>,  <37.774429, 38.560886, 29.907583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421551, 38.650074, 30.073481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201345, 0.617578, -0.760301,
		-0.425662, -0.754242, -0.499931,
		-0.882197, 0.222973, 0.414742,
		37.156891, 38.716965, 30.197903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298103, 38.347805, 29.438318>,  <37.774429, 38.560886, 29.907583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298103, 38.347805, 29.438318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.090183, 38.614456, 29.652014>,  <36.965431, 38.774448, 29.780231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.090183, 38.614456, 29.652014>,  <37.298103, 38.347805, 29.438318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090183, 38.614456, 29.652014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095649, 0.576014, -0.811825,
		-0.848915, -0.473088, -0.235651,
		-0.519803, 0.666630, 0.534237,
		36.934242, 38.814445, 29.812284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600613, 38.502869, 29.020857>,  <37.298103, 38.347805, 29.438318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600613, 38.502869, 29.020857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675762, 38.813656, 29.261198>,  <36.720852, 39.000130, 29.405403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675762, 38.813656, 29.261198>,  <36.600613, 38.502869, 29.020857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675762, 38.813656, 29.261198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071225, 0.620913, -0.780637,
		-0.979608, 0.103862, 0.171991,
		0.187870, 0.776969, 0.600853,
		36.732124, 39.046745, 29.441454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106544, 38.983494, 28.807268>,  <36.600613, 38.502869, 29.020857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106544, 38.983494, 28.807268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391357, 39.188862, 28.998857>,  <36.562244, 39.312080, 29.113811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391357, 39.188862, 28.998857>,  <36.106544, 38.983494, 28.807268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391357, 39.188862, 28.998857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208289, 0.497003, -0.842380,
		-0.670542, 0.699566, 0.246943,
		0.712032, 0.513416, 0.478973,
		36.604965, 39.342888, 29.142550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955025, 39.704124, 28.700319>,  <36.106544, 38.983494, 28.807268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955025, 39.704124, 28.700319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343239, 39.668331, 28.789816>,  <36.576168, 39.646854, 28.843513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.343239, 39.668331, 28.789816>,  <35.955025, 39.704124, 28.700319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343239, 39.668331, 28.789816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235818, 0.543678, -0.805484,
		-0.049568, 0.834510, 0.548758,
		0.970532, -0.089481, 0.223742,
		36.634399, 39.641487, 28.856939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185890, 40.396072, 28.665791>,  <35.955025, 39.704124, 28.700319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185890, 40.396072, 28.665791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536263, 40.204273, 28.644533>,  <36.746487, 40.089195, 28.631779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.536263, 40.204273, 28.644533>,  <36.185890, 40.396072, 28.665791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536263, 40.204273, 28.644533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345592, 0.700522, -0.624368,
		0.336609, 0.528539, 0.779321,
		0.875934, -0.479495, -0.053144,
		36.799042, 40.060425, 28.628590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647747, 40.884163, 28.741938>,  <36.185890, 40.396072, 28.665791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647747, 40.884163, 28.741938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843849, 40.603752, 28.534779>,  <36.961510, 40.435505, 28.410484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.843849, 40.603752, 28.534779>,  <36.647747, 40.884163, 28.741938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843849, 40.603752, 28.534779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316527, 0.696838, -0.643605,
		0.812071, 0.151603, 0.563522,
		0.490256, -0.701023, -0.517896,
		36.990925, 40.393444, 28.379410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266380, 41.238148, 28.499479>,  <36.647747, 40.884163, 28.741938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266380, 41.238148, 28.499479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293732, 40.903210, 28.282528>,  <37.310143, 40.702248, 28.152357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293732, 40.903210, 28.282528>,  <37.266380, 41.238148, 28.499479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293732, 40.903210, 28.282528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605848, 0.466780, -0.644255,
		0.792636, -0.284543, 0.539225,
		0.068381, -0.837348, -0.542377,
		37.314247, 40.652004, 28.119816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005550, 41.191135, 28.352533>,  <37.266380, 41.238148, 28.499479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005550, 41.191135, 28.352533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.804466, 40.970867, 28.085985>,  <37.683815, 40.838707, 27.926056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.804466, 40.970867, 28.085985>,  <38.005550, 41.191135, 28.352533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804466, 40.970867, 28.085985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605928, 0.325329, -0.725956,
		0.616552, -0.768715, 0.170121,
		-0.502708, -0.550671, -0.666368,
		37.653652, 40.805668, 27.886074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492371, 40.800068, 27.930578>,  <38.005550, 41.191135, 28.352533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492371, 40.800068, 27.930578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170128, 40.790928, 27.693773>,  <37.976784, 40.785442, 27.551689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170128, 40.790928, 27.693773>,  <38.492371, 40.800068, 27.930578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170128, 40.790928, 27.693773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548088, 0.350658, -0.759367,
		0.224946, -0.936225, -0.269968,
		-0.805604, -0.022850, -0.592013,
		37.928448, 40.784073, 27.516169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744755, 40.474937, 27.347057>,  <38.492371, 40.800068, 27.930578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744755, 40.474937, 27.347057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.433754, 40.700199, 27.235088>,  <38.247154, 40.835358, 27.167908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.433754, 40.700199, 27.235088>,  <38.744755, 40.474937, 27.347057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433754, 40.700199, 27.235088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544840, 0.380892, -0.747041,
		-0.314079, -0.733335, -0.602971,
		-0.777498, 0.563153, -0.279920,
		38.200504, 40.869144, 27.151112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714874, 39.823448, 27.066200>,  <38.744755, 40.474937, 27.347057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714874, 39.823448, 27.066200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831810, 39.550110, 26.798594>,  <38.901970, 39.386108, 26.638029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831810, 39.550110, 26.798594>,  <38.714874, 39.823448, 27.066200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831810, 39.550110, 26.798594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043024, -0.708267, 0.704632,
		-0.955348, -0.177205, -0.236451,
		0.292334, -0.683342, -0.669017,
		38.919510, 39.345108, 26.597889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194008, 39.217918, 26.999460>,  <38.714874, 39.823448, 27.066200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194008, 39.217918, 26.999460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550179, 39.104527, 26.857033>,  <38.763882, 39.036491, 26.771576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550179, 39.104527, 26.857033>,  <38.194008, 39.217918, 26.999460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550179, 39.104527, 26.857033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002848, -0.778853, 0.627200,
		-0.455121, -0.559489, -0.692703,
		0.890425, -0.283480, -0.356066,
		38.817307, 39.019482, 26.750214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167923, 38.593090, 26.932121>,  <38.194008, 39.217918, 26.999460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167923, 38.593090, 26.932121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564175, 38.634331, 26.967939>,  <38.801926, 38.659073, 26.989429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564175, 38.634331, 26.967939>,  <38.167923, 38.593090, 26.932121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564175, 38.634331, 26.967939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040515, -0.848115, 0.528260,
		0.130406, -0.519684, -0.844347,
		0.990632, 0.103097, 0.089544,
		38.861366, 38.665260, 26.994802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414791, 37.895576, 26.862236>,  <38.167923, 38.593090, 26.932121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414791, 37.895576, 26.862236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714706, 38.094254, 27.037104>,  <38.894653, 38.213459, 27.142025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714706, 38.094254, 27.037104>,  <38.414791, 37.895576, 26.862236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714706, 38.094254, 27.037104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220206, -0.810342, 0.543005,
		0.623964, -0.310870, -0.716957,
		0.749785, 0.496694, 0.437170,
		38.939644, 38.243263, 27.168255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965824, 37.431690, 26.873611>,  <38.414791, 37.895576, 26.862236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965824, 37.431690, 26.873611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092098, 37.704403, 27.137585>,  <39.167862, 37.868031, 27.295969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.092098, 37.704403, 27.137585>,  <38.965824, 37.431690, 26.873611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092098, 37.704403, 27.137585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299007, -0.731542, 0.612732,
		0.900522, 0.003896, -0.434793,
		0.315682, 0.681785, 0.659935,
		39.186802, 37.908939, 27.335566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675003, 37.209064, 27.099072>,  <38.965824, 37.431690, 26.873611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675003, 37.209064, 27.099072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536957, 37.463345, 27.375269>,  <39.454128, 37.615913, 27.540987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536957, 37.463345, 27.375269>,  <39.675003, 37.209064, 27.099072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536957, 37.463345, 27.375269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363016, -0.588029, 0.722801,
		0.865513, 0.500112, -0.027829,
		-0.345118, 0.635696, 0.690495,
		39.433422, 37.654053, 27.582418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154953, 37.204983, 27.665524>,  <39.675003, 37.209064, 27.099072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154953, 37.204983, 27.665524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.832836, 37.370312, 27.835545>,  <39.639568, 37.469509, 27.937557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.832836, 37.370312, 27.835545>,  <40.154953, 37.204983, 27.665524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832836, 37.370312, 27.835545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130394, -0.575907, 0.807049,
		0.578364, 0.705333, 0.409878,
		-0.805290, 0.413323, 0.425055,
		39.591248, 37.494308, 27.963060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368511, 37.397423, 28.301664>,  <40.154953, 37.204983, 27.665524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368511, 37.397423, 28.301664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977016, 37.391136, 28.383480>,  <39.742119, 37.387363, 28.432570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.977016, 37.391136, 28.383480>,  <40.368511, 37.397423, 28.301664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977016, 37.391136, 28.383480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186044, -0.488103, 0.852727,
		0.086433, 0.872645, 0.480646,
		-0.978732, -0.015717, 0.204539,
		39.683395, 37.386421, 28.444841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281399, 37.649731, 29.013205>,  <40.368511, 37.397423, 28.301664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281399, 37.649731, 29.013205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962830, 37.429241, 28.913715>,  <39.771687, 37.296947, 28.854021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.962830, 37.429241, 28.913715>,  <40.281399, 37.649731, 29.013205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962830, 37.429241, 28.913715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088095, -0.512659, 0.854061,
		-0.598286, 0.658284, 0.456854,
		-0.796425, -0.551219, -0.248725,
		39.723904, 37.263874, 28.839098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990536, 37.455959, 29.638037>,  <40.281399, 37.649731, 29.013205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990536, 37.455959, 29.638037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.818939, 37.184700, 29.399347>,  <39.715981, 37.021946, 29.256134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.818939, 37.184700, 29.399347>,  <39.990536, 37.455959, 29.638037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818939, 37.184700, 29.399347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075157, -0.631513, 0.771714,
		-0.900175, 0.375910, 0.219948,
		-0.428995, -0.678147, -0.596724,
		39.690239, 36.981255, 29.220329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411263, 37.213894, 30.071806>,  <39.990536, 37.455959, 29.638037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411263, 37.213894, 30.071806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503685, 36.955063, 29.781179>,  <39.559139, 36.799763, 29.606804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.503685, 36.955063, 29.781179>,  <39.411263, 37.213894, 30.071806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503685, 36.955063, 29.781179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169612, -0.762130, 0.624811,
		-0.958041, -0.021134, -0.285850,
		0.231059, -0.647079, -0.726568,
		39.573002, 36.760941, 29.563210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930973, 36.624088, 30.169533>,  <39.411263, 37.213894, 30.071806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930973, 36.624088, 30.169533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259624, 36.498089, 29.979498>,  <39.456814, 36.422489, 29.865477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259624, 36.498089, 29.979498>,  <38.930973, 36.624088, 30.169533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259624, 36.498089, 29.979498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010695, -0.824778, 0.565356,
		-0.569928, -0.469592, -0.674289,
		0.821625, -0.315000, -0.475086,
		39.506111, 36.403587, 29.836971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800884, 35.908772, 30.215599>,  <38.930973, 36.624088, 30.169533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800884, 35.908772, 30.215599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183407, 35.957092, 30.109106>,  <39.412922, 35.986084, 30.045210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.183407, 35.957092, 30.109106>,  <38.800884, 35.908772, 30.215599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183407, 35.957092, 30.109106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266319, -0.735628, 0.622837,
		-0.120612, -0.666528, -0.735658,
		0.956309, 0.120798, -0.266234,
		39.470299, 35.993332, 30.029236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192230, 35.358814, 29.828190>,  <38.800884, 35.908772, 30.215599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192230, 35.358814, 29.828190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.467537, 35.550190, 30.046322>,  <39.632721, 35.665016, 30.177202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.467537, 35.550190, 30.046322>,  <39.192230, 35.358814, 29.828190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467537, 35.550190, 30.046322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180672, -0.841063, 0.509874,
		0.702604, -0.252401, -0.665313,
		0.688262, 0.478443, 0.545332,
		39.674015, 35.693722, 30.209921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.335323, 39.530964, 28.328711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.407467, 39.854897, 28.552008>,  <40.450752, 40.049255, 28.685986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.407467, 39.854897, 28.552008>,  <40.335323, 39.530964, 28.328711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407467, 39.854897, 28.552008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217709, 0.520605, -0.825575,
		-0.959204, 0.270437, -0.082411,
		0.180362, 0.809836, 0.558243,
		40.461575, 40.097847, 28.719481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896111, 40.099583, 28.070246>,  <40.335323, 39.530964, 28.328711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896111, 40.099583, 28.070246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.218967, 40.243443, 28.257511>,  <40.412682, 40.329758, 28.369871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.218967, 40.243443, 28.257511>,  <39.896111, 40.099583, 28.070246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218967, 40.243443, 28.257511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274984, 0.472702, -0.837220,
		-0.522408, 0.804491, 0.282638,
		0.807139, 0.359650, 0.468165,
		40.461109, 40.351337, 28.397961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943302, 40.888199, 28.009993>,  <39.896111, 40.099583, 28.070246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943302, 40.888199, 28.009993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314842, 40.769821, 28.099123>,  <40.537766, 40.698795, 28.152601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.314842, 40.769821, 28.099123>,  <39.943302, 40.888199, 28.009993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314842, 40.769821, 28.099123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333472, 0.405999, -0.850859,
		0.161342, 0.864628, 0.475802,
		0.928851, -0.295946, 0.222825,
		40.593498, 40.681038, 28.165970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418015, 41.449177, 27.865963>,  <39.943302, 40.888199, 28.009993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418015, 41.449177, 27.865963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663334, 41.133270, 27.861240>,  <40.810524, 40.943726, 27.858406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.663334, 41.133270, 27.861240>,  <40.418015, 41.449177, 27.865963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663334, 41.133270, 27.861240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535482, 0.426729, -0.728808,
		0.580625, 0.440653, 0.684616,
		0.613297, -0.789764, -0.011808,
		40.847324, 40.896339, 27.857698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060345, 41.765591, 27.732840>,  <40.418015, 41.449177, 27.865963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060345, 41.765591, 27.732840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140995, 41.383865, 27.644625>,  <41.189384, 41.154831, 27.591696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.140995, 41.383865, 27.644625>,  <41.060345, 41.765591, 27.732840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140995, 41.383865, 27.644625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598689, 0.298280, -0.743371,
		0.775189, 0.017850, 0.631477,
		0.201626, -0.954311, -0.220537,
		41.201485, 41.097572, 27.578463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803452, 41.704903, 27.675787>,  <41.060345, 41.765591, 27.732840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803452, 41.704903, 27.675787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.632427, 41.421295, 27.451471>,  <41.529812, 41.251133, 27.316881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.632427, 41.421295, 27.451471>,  <41.803452, 41.704903, 27.675787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632427, 41.421295, 27.451471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607511, 0.234015, -0.759057,
		0.669416, -0.665232, 0.330678,
		-0.427565, -0.709016, -0.560790,
		41.504158, 41.208591, 27.283234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367481, 41.532398, 27.255657>,  <41.803452, 41.704903, 27.675787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367481, 41.532398, 27.255657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.047482, 41.370903, 27.078121>,  <41.855480, 41.274006, 26.971600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.047482, 41.370903, 27.078121>,  <42.367481, 41.532398, 27.255657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047482, 41.370903, 27.078121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389373, 0.213467, -0.896003,
		0.456494, -0.889623, -0.013570,
		-0.800002, -0.403736, -0.443841,
		41.807480, 41.249783, 26.944969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668701, 41.115452, 26.829464>,  <42.367481, 41.532398, 27.255657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668701, 41.115452, 26.829464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.308422, 41.193501, 26.674198>,  <42.092255, 41.240330, 26.581038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.308422, 41.193501, 26.674198>,  <42.668701, 41.115452, 26.829464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308422, 41.193501, 26.674198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425452, 0.215264, -0.879006,
		-0.087957, -0.956864, -0.276903,
		-0.900696, 0.195124, -0.388166,
		42.038212, 41.252037, 26.557749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583736, 40.725117, 26.226719>,  <42.668701, 41.115452, 26.829464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583736, 40.725117, 26.226719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334030, 41.035450, 26.190115>,  <42.184208, 41.221649, 26.168152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.334030, 41.035450, 26.190115>,  <42.583736, 40.725117, 26.226719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334030, 41.035450, 26.190115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423772, 0.237898, -0.873969,
		-0.656285, -0.584368, -0.477289,
		-0.624265, 0.775834, -0.091510,
		42.146751, 41.268200, 26.162663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313156, 40.647369, 25.594675>,  <42.583736, 40.725117, 26.226719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313156, 40.647369, 25.594675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.248268, 41.030392, 25.689985>,  <42.209335, 41.260204, 25.747171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.248268, 41.030392, 25.689985>,  <42.313156, 40.647369, 25.594675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248268, 41.030392, 25.689985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419662, 0.285497, -0.861612,
		-0.893067, -0.039774, -0.448161,
		-0.162218, 0.957554, 0.238277,
		42.199604, 41.317657, 25.761469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901169, 40.905163, 25.035276>,  <42.313156, 40.647369, 25.594675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901169, 40.905163, 25.035276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.054909, 41.226089, 25.217949>,  <42.147152, 41.418648, 25.327553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.054909, 41.226089, 25.217949>,  <41.901169, 40.905163, 25.035276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054909, 41.226089, 25.217949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170766, 0.424356, -0.889248,
		-0.907255, 0.419771, 0.026093,
		0.384353, 0.802318, 0.456681,
		42.170216, 41.466785, 25.354954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583122, 41.409714, 24.692039>,  <41.901169, 40.905163, 25.035276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583122, 41.409714, 24.692039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904579, 41.572495, 24.865725>,  <42.097454, 41.670162, 24.969934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904579, 41.572495, 24.865725>,  <41.583122, 41.409714, 24.692039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904579, 41.572495, 24.865725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155358, 0.560866, -0.813199,
		-0.574471, 0.720983, 0.387514,
		0.803646, 0.406956, 0.434212,
		42.145672, 41.694580, 24.995989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695129, 42.165157, 24.439339>,  <41.583122, 41.409714, 24.692039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695129, 42.165157, 24.439339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.058163, 42.073849, 24.580294>,  <42.275986, 42.019062, 24.664867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.058163, 42.073849, 24.580294>,  <41.695129, 42.165157, 24.439339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058163, 42.073849, 24.580294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418685, 0.554859, -0.718912,
		-0.031418, 0.800015, 0.599157,
		0.907588, -0.228271, 0.352387,
		42.330441, 42.005367, 24.686010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420784, 41.586113, 24.014973>,  <41.695129, 42.165157, 24.439339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420784, 41.586113, 24.014973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.183128, 41.900002, 24.085648>,  <41.040535, 42.088333, 24.128052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.183128, 41.900002, 24.085648>,  <41.420784, 41.586113, 24.014973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183128, 41.900002, 24.085648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629566, 0.590384, -0.505067,
		-0.500650, -0.188841, -0.844801,
		-0.594134, 0.784720, 0.176688,
		41.004887, 42.135418, 24.138655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446835, 41.928123, 23.435400>,  <41.420784, 41.586113, 24.014973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446835, 41.928123, 23.435400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.316311, 42.190521, 23.707634>,  <41.237995, 42.347958, 23.870975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.316311, 42.190521, 23.707634>,  <41.446835, 41.928123, 23.435400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316311, 42.190521, 23.707634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338594, 0.753337, -0.563771,
		-0.882539, 0.046478, -0.467937,
		-0.326311, 0.655990, 0.680587,
		41.218418, 42.387318, 23.911810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913593, 42.116547, 22.917809>,  <41.446835, 41.928123, 23.435400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913593, 42.116547, 22.917809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.581661, 42.169209, 22.700903>,  <40.382504, 42.200806, 22.570761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.581661, 42.169209, 22.700903>,  <40.913593, 42.116547, 22.917809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581661, 42.169209, 22.700903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517579, -0.544792, 0.659784,
		-0.208553, 0.828172, 0.520229,
		-0.829830, 0.131659, -0.542262,
		40.332714, 42.208706, 22.538225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291122, 42.245552, 23.397202>,  <40.913593, 42.116547, 22.917809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291122, 42.245552, 23.397202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.120239, 42.111034, 23.061487>,  <40.017708, 42.030323, 22.860058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.120239, 42.111034, 23.061487>,  <40.291122, 42.245552, 23.397202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120239, 42.111034, 23.061487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569974, -0.620414, 0.538718,
		-0.701872, 0.708515, 0.073367,
		-0.427207, -0.336294, -0.839286,
		39.992077, 42.010147, 22.809702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514435, 42.218067, 23.561092>,  <40.291122, 42.245552, 23.397202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514435, 42.218067, 23.561092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609863, 41.962414, 23.268631>,  <39.667122, 41.809021, 23.093153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609863, 41.962414, 23.268631>,  <39.514435, 42.218067, 23.561092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609863, 41.962414, 23.268631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549900, -0.709471, 0.440750,
		-0.800433, 0.296911, -0.520722,
		0.238574, -0.639136, -0.731155,
		39.681435, 41.770672, 23.049284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967552, 41.941109, 23.610878>,  <39.514435, 42.218067, 23.561092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967552, 41.941109, 23.610878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172958, 41.686092, 23.381149>,  <39.296204, 41.533085, 23.243311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172958, 41.686092, 23.381149>,  <38.967552, 41.941109, 23.610878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172958, 41.686092, 23.381149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598631, -0.745700, 0.292526,
		-0.614769, 0.193591, -0.764579,
		0.513517, -0.637538, -0.574323,
		39.327015, 41.494831, 23.208853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492874, 41.489437, 23.148422>,  <38.967552, 41.941109, 23.610878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492874, 41.489437, 23.148422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834560, 41.292274, 23.214588>,  <39.039574, 41.173977, 23.254288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834560, 41.292274, 23.214588>,  <38.492874, 41.489437, 23.148422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834560, 41.292274, 23.214588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517206, -0.773123, 0.367122,
		-0.053069, -0.399156, -0.915346,
		0.854214, -0.492905, 0.165417,
		39.090824, 41.144402, 23.264214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369114, 40.792839, 23.103180>,  <38.492874, 41.489437, 23.148422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369114, 40.792839, 23.103180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.704613, 40.805706, 23.320608>,  <38.905910, 40.813427, 23.451065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.704613, 40.805706, 23.320608>,  <38.369114, 40.792839, 23.103180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704613, 40.805706, 23.320608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365666, -0.706408, 0.606033,
		0.403476, -0.707074, -0.580736,
		0.838747, 0.032165, 0.543571,
		38.956238, 40.815357, 23.483679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334148, 40.139912, 23.338240>,  <38.369114, 40.792839, 23.103180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334148, 40.139912, 23.338240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593632, 40.326172, 23.579021>,  <38.749321, 40.437927, 23.723490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593632, 40.326172, 23.579021>,  <38.334148, 40.139912, 23.338240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593632, 40.326172, 23.579021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307628, -0.563020, 0.767055,
		0.696093, -0.682771, -0.221987,
		0.648706, 0.465653, 0.601954,
		38.788242, 40.465866, 23.759607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806126, 39.659840, 23.633636>,  <38.334148, 40.139912, 23.338240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806126, 39.659840, 23.633636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.874619, 39.960587, 23.888313>,  <38.915714, 40.141033, 24.041121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.874619, 39.960587, 23.888313>,  <38.806126, 39.659840, 23.633636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874619, 39.960587, 23.888313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025597, -0.642625, 0.765753,
		0.984898, -0.147421, -0.090794,
		0.171235, 0.751865, 0.636693,
		38.925987, 40.186146, 24.079321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335552, 39.399593, 24.147045>,  <38.806126, 39.659840, 23.633636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335552, 39.399593, 24.147045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151947, 39.701725, 24.334145>,  <39.041782, 39.883003, 24.446404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151947, 39.701725, 24.334145>,  <39.335552, 39.399593, 24.147045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151947, 39.701725, 24.334145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076279, -0.491041, 0.867791,
		0.885148, 0.434008, 0.167780,
		-0.459015, 0.755325, 0.467749,
		39.014244, 39.928322, 24.474470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747200, 39.601830, 24.783863>,  <39.335552, 39.399593, 24.147045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747200, 39.601830, 24.783863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383057, 39.741531, 24.872643>,  <39.164570, 39.825352, 24.925911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383057, 39.741531, 24.872643>,  <39.747200, 39.601830, 24.783863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383057, 39.741531, 24.872643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136794, -0.252209, 0.957955,
		0.390551, 0.902447, 0.181825,
		-0.910361, 0.349257, 0.221950,
		39.109947, 39.846310, 24.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847927, 40.049248, 25.311962>,  <39.747200, 39.601830, 24.783863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847927, 40.049248, 25.311962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.469986, 39.919151, 25.327311>,  <39.243221, 39.841091, 25.336519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.469986, 39.919151, 25.327311>,  <39.847927, 40.049248, 25.311962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469986, 39.919151, 25.327311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182824, -0.426618, 0.885761,
		-0.271720, 0.843927, 0.462553,
		-0.944851, -0.325245, 0.038369,
		39.186531, 39.821579, 25.338821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615143, 40.240459, 25.932617>,  <39.847927, 40.049248, 25.311962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615143, 40.240459, 25.932617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344151, 39.964493, 25.830605>,  <39.181557, 39.798912, 25.769398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344151, 39.964493, 25.830605>,  <39.615143, 40.240459, 25.932617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344151, 39.964493, 25.830605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180713, -0.492219, 0.851506,
		-0.713000, 0.530788, 0.458144,
		-0.677476, -0.689917, -0.255032,
		39.140907, 39.757519, 25.754095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218292, 40.141224, 26.593964>,  <39.615143, 40.240459, 25.932617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218292, 40.141224, 26.593964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169270, 39.824753, 26.354292>,  <39.139858, 39.634869, 26.210489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169270, 39.824753, 26.354292>,  <39.218292, 40.141224, 26.593964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169270, 39.824753, 26.354292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017934, -0.601864, 0.798397,
		-0.992300, 0.108591, 0.059571,
		-0.122553, -0.791181, -0.599177,
		39.132504, 39.587399, 26.174540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675098, 40.559433, 26.409107>,  <39.218292, 40.141224, 26.593964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675098, 40.559433, 26.409107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457653, 40.864857, 26.548512>,  <38.327187, 41.048111, 26.632154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.457653, 40.864857, 26.548512>,  <38.675098, 40.559433, 26.409107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457653, 40.864857, 26.548512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571565, 0.640837, -0.512486,
		-0.614653, -0.079398, -0.784791,
		-0.543613, 0.763560, 0.348511,
		38.294567, 41.093925, 26.653065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608753, 40.956665, 25.866484>,  <38.675098, 40.559433, 26.409107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608753, 40.956665, 25.866484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535736, 41.212341, 26.165312>,  <38.491928, 41.365746, 26.344608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535736, 41.212341, 26.165312>,  <38.608753, 40.956665, 25.866484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535736, 41.212341, 26.165312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484506, 0.719652, -0.497348,
		-0.855531, 0.271173, -0.441058,
		-0.182541, 0.639192, 0.747069,
		38.480972, 41.404099, 26.389433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224728, 41.459965, 25.509171>,  <38.608753, 40.956665, 25.866484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224728, 41.459965, 25.509171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392101, 41.621006, 25.834827>,  <38.492523, 41.717632, 26.030222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.392101, 41.621006, 25.834827>,  <38.224728, 41.459965, 25.509171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392101, 41.621006, 25.834827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461387, 0.677887, -0.572356,
		-0.782328, 0.615126, 0.097893,
		0.418431, 0.402604, 0.814141,
		38.517632, 41.741787, 26.079069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064415, 42.185665, 25.515535>,  <38.224728, 41.459965, 25.509171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064415, 42.185665, 25.515535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373577, 42.154411, 25.767410>,  <38.559074, 42.135658, 25.918535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373577, 42.154411, 25.767410>,  <38.064415, 42.185665, 25.515535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373577, 42.154411, 25.767410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438388, 0.783201, -0.440922,
		-0.458723, 0.616840, 0.639595,
		0.772910, -0.078130, 0.629688,
		38.605450, 42.130974, 25.956316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180836, 42.822243, 25.817438>,  <38.064415, 42.185665, 25.515535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180836, 42.822243, 25.817438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537766, 42.646095, 25.857111>,  <38.751923, 42.540405, 25.880915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537766, 42.646095, 25.857111>,  <38.180836, 42.822243, 25.817438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537766, 42.646095, 25.857111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449966, 0.850260, -0.273109,
		0.035937, 0.288331, 0.956856,
		0.892322, -0.440367, 0.099183,
		38.805462, 42.513985, 25.886866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683662, 43.370815, 25.991549>,  <38.180836, 42.822243, 25.817438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683662, 43.370815, 25.991549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.931782, 43.076683, 25.882353>,  <39.080654, 42.900204, 25.816835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.931782, 43.076683, 25.882353>,  <38.683662, 43.370815, 25.991549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931782, 43.076683, 25.882353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677881, 0.677659, -0.285056,
		0.394605, -0.008237, 0.918814,
		0.620294, -0.735331, -0.272991,
		39.117870, 42.856083, 25.800455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350609, 43.623474, 26.203520>,  <38.683662, 43.370815, 25.991549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350609, 43.623474, 26.203520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409946, 43.352131, 25.915680>,  <39.445549, 43.189323, 25.742977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.409946, 43.352131, 25.915680>,  <39.350609, 43.623474, 26.203520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409946, 43.352131, 25.915680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434325, 0.698407, -0.568849,
		0.888457, -0.228155, 0.398233,
		0.148343, -0.678361, -0.719598,
		39.454449, 43.148624, 25.699800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041870, 43.703110, 26.712954>,  <39.350609, 43.623474, 26.203520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041870, 43.703110, 26.712954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036003, 44.089394, 26.816639>,  <40.032482, 44.321163, 26.878851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.036003, 44.089394, 26.816639>,  <40.041870, 43.703110, 26.712954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036003, 44.089394, 26.816639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121532, -0.259044, 0.958189,
		0.992479, -0.017447, 0.121165,
		-0.014669, 0.965708, 0.259216,
		40.031601, 44.379105, 26.894403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584129, 43.799255, 27.124037>,  <40.041870, 43.703110, 26.712954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584129, 43.799255, 27.124037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.325470, 44.091698, 27.211065>,  <40.170277, 44.267162, 27.263283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.325470, 44.091698, 27.211065>,  <40.584129, 43.799255, 27.124037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325470, 44.091698, 27.211065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176977, -0.421246, 0.889512,
		0.741978, 0.536692, 0.401785,
		-0.646644, 0.731105, 0.217573,
		40.131477, 44.311028, 27.276337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694775, 44.040535, 27.820181>,  <40.584129, 43.799255, 27.124037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694775, 44.040535, 27.820181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.319633, 44.153358, 27.739311>,  <40.094547, 44.221054, 27.690788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.319633, 44.153358, 27.739311>,  <40.694775, 44.040535, 27.820181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319633, 44.153358, 27.739311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297611, -0.354055, 0.886608,
		0.178495, 0.891677, 0.415995,
		-0.937853, 0.282060, -0.202175,
		40.038277, 44.237976, 27.678659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452175, 44.392597, 28.320824>,  <40.694775, 44.040535, 27.820181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452175, 44.392597, 28.320824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132214, 44.230602, 28.143673>,  <39.940239, 44.133404, 28.037382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132214, 44.230602, 28.143673>,  <40.452175, 44.392597, 28.320824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132214, 44.230602, 28.143673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346673, -0.290565, 0.891846,
		-0.489874, 0.866923, 0.092025,
		-0.799901, -0.404989, -0.442879,
		39.892242, 44.109104, 28.010809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897343, 44.559803, 28.755556>,  <40.452175, 44.392597, 28.320824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897343, 44.559803, 28.755556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740982, 44.264046, 28.536283>,  <39.647167, 44.086594, 28.404720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740982, 44.264046, 28.536283>,  <39.897343, 44.559803, 28.755556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740982, 44.264046, 28.536283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489814, -0.337131, 0.804006,
		-0.779281, 0.582792, -0.230378,
		-0.390900, -0.739389, -0.548179,
		39.623711, 44.042229, 28.371830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229782, 44.512379, 29.057203>,  <39.897343, 44.559803, 28.755556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229782, 44.512379, 29.057203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279514, 44.167248, 28.861219>,  <39.309353, 43.960167, 28.743629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.279514, 44.167248, 28.861219>,  <39.229782, 44.512379, 29.057203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279514, 44.167248, 28.861219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559311, -0.468812, 0.683656,
		-0.819580, 0.189040, -0.540881,
		0.124333, -0.862832, -0.489961,
		39.316814, 43.908398, 28.714231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616245, 44.240288, 28.932154>,  <39.229782, 44.512379, 29.057203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616245, 44.240288, 28.932154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854153, 43.918980, 28.919430>,  <38.996899, 43.726196, 28.911795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.854153, 43.918980, 28.919430>,  <38.616245, 44.240288, 28.932154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854153, 43.918980, 28.919430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567635, -0.447660, 0.690935,
		-0.569246, -0.392890, -0.722217,
		0.594769, -0.803268, -0.031811,
		39.032585, 43.678001, 28.909887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.735847, 43.886448, 26.257994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.630466, 43.579590, 26.024040>,  <44.567238, 43.395477, 25.883669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.630466, 43.579590, 26.024040>,  <44.735847, 43.886448, 26.257994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630466, 43.579590, 26.024040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240327, -0.534992, 0.809954,
		-0.934258, 0.353945, -0.043422,
		-0.263449, -0.767142, -0.584883,
		44.551434, 43.349449, 25.848576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146221, 43.746719, 26.694862>,  <44.735847, 43.886448, 26.257994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146221, 43.746719, 26.694862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.206314, 43.437172, 26.448751>,  <44.242371, 43.251446, 26.301085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.206314, 43.437172, 26.448751>,  <44.146221, 43.746719, 26.694862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206314, 43.437172, 26.448751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188345, -0.633344, 0.750601,
		-0.970545, 0.003123, -0.240899,
		0.150228, -0.773864, -0.615278,
		44.251381, 43.205013, 26.264168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577839, 43.413059, 26.786814>,  <44.146221, 43.746719, 26.694862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577839, 43.413059, 26.786814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.852005, 43.152515, 26.656618>,  <44.016502, 42.996189, 26.578501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.852005, 43.152515, 26.656618>,  <43.577839, 43.413059, 26.786814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852005, 43.152515, 26.656618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168026, -0.576424, 0.799689,
		-0.708505, -0.493425, -0.504532,
		0.685411, -0.651358, -0.325491,
		44.057629, 42.957108, 26.558971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203758, 42.810753, 26.800203>,  <43.577839, 43.413059, 26.786814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203758, 42.810753, 26.800203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.593964, 42.722931, 26.805265>,  <43.828087, 42.670238, 26.808304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.593964, 42.722931, 26.805265>,  <43.203758, 42.810753, 26.800203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593964, 42.722931, 26.805265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142756, -0.588396, 0.795871,
		-0.167293, -0.778193, -0.605334,
		0.975518, -0.219559, 0.012657,
		43.886620, 42.657063, 26.809063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123016, 42.109856, 26.907938>,  <43.203758, 42.810753, 26.800203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123016, 42.109856, 26.907938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502094, 42.215870, 26.979086>,  <43.729542, 42.279476, 27.021774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502094, 42.215870, 26.979086>,  <43.123016, 42.109856, 26.907938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502094, 42.215870, 26.979086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079623, -0.343341, 0.935830,
		0.309094, -0.901041, -0.304279,
		0.947693, 0.265031, 0.177868,
		43.786404, 42.295380, 27.032446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521420, 41.533939, 27.126514>,  <43.123016, 42.109856, 26.907938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521420, 41.533939, 27.126514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708782, 41.856186, 27.271614>,  <43.821198, 42.049534, 27.358675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708782, 41.856186, 27.271614>,  <43.521420, 41.533939, 27.126514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708782, 41.856186, 27.271614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154037, -0.478752, 0.864332,
		0.869983, -0.348979, -0.348343,
		0.468404, 0.805612, 0.362750,
		43.849304, 42.097870, 27.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204079, 41.204811, 27.394245>,  <43.521420, 41.533939, 27.126514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204079, 41.204811, 27.394245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.120205, 41.553352, 27.571680>,  <44.069881, 41.762478, 27.678141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.120205, 41.553352, 27.571680>,  <44.204079, 41.204811, 27.394245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120205, 41.553352, 27.571680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139498, -0.475694, 0.868479,
		0.967766, 0.120228, 0.221299,
		-0.209687, 0.871355, 0.443589,
		44.057301, 41.814758, 27.704758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558762, 41.206665, 28.063421>,  <44.204079, 41.204811, 27.394245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558762, 41.206665, 28.063421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.265408, 41.476791, 28.094650>,  <44.089394, 41.638866, 28.113388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.265408, 41.476791, 28.094650>,  <44.558762, 41.206665, 28.063421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265408, 41.476791, 28.094650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206218, -0.330427, 0.921028,
		0.647782, 0.659368, 0.381593,
		-0.733385, 0.675316, 0.078071,
		44.045391, 41.679386, 28.118071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550812, 41.421471, 28.704218>,  <44.558762, 41.206665, 28.063421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550812, 41.421471, 28.704218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.190552, 41.578949, 28.630648>,  <43.974396, 41.673435, 28.586506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.190552, 41.578949, 28.630648>,  <44.550812, 41.421471, 28.704218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190552, 41.578949, 28.630648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264838, -0.161755, 0.950629,
		0.344508, 0.904897, 0.249950,
		-0.900653, 0.393696, -0.183926,
		43.920357, 41.697056, 28.575470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417309, 41.841213, 29.226414>,  <44.550812, 41.421471, 28.704218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417309, 41.841213, 29.226414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.057640, 41.733120, 29.088741>,  <43.841839, 41.668266, 29.006138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.057640, 41.733120, 29.088741>,  <44.417309, 41.841213, 29.226414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057640, 41.733120, 29.088741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319814, -0.131015, 0.938378,
		-0.298670, 0.953840, 0.031383,
		-0.899175, -0.270229, -0.344182,
		43.787888, 41.652050, 28.985487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974213, 42.118797, 29.845150>,  <44.417309, 41.841213, 29.226414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974213, 42.118797, 29.845150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.754261, 41.866653, 29.625959>,  <43.622292, 41.715366, 29.494446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.754261, 41.866653, 29.625959>,  <43.974213, 42.118797, 29.845150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754261, 41.866653, 29.625959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564642, -0.202898, 0.800008,
		-0.615479, 0.749316, -0.244360,
		-0.549878, -0.630364, -0.547974,
		43.589298, 41.677544, 29.461567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222759, 42.263588, 30.084106>,  <43.974213, 42.118797, 29.845150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222759, 42.263588, 30.084106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230694, 41.893204, 29.933270>,  <43.235455, 41.670971, 29.842768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230694, 41.893204, 29.933270>,  <43.222759, 42.263588, 30.084106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230694, 41.893204, 29.933270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429873, -0.348424, 0.832953,
		-0.902671, 0.145581, -0.404958,
		0.019835, -0.925963, -0.377093,
		43.236645, 41.615414, 29.820141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530682, 42.586437, 29.717880>,  <43.222759, 42.263588, 30.084106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530682, 42.586437, 29.717880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.297264, 42.886765, 29.841648>,  <42.157211, 43.066963, 29.915909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.297264, 42.886765, 29.841648>,  <42.530682, 42.586437, 29.717880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297264, 42.886765, 29.841648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205350, 0.505069, -0.838294,
		-0.785687, -0.425645, -0.448913,
		-0.583547, 0.750821, 0.309420,
		42.122200, 43.112011, 29.934473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036312, 42.773140, 29.164339>,  <42.530682, 42.586437, 29.717880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036312, 42.773140, 29.164339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.084656, 43.090168, 29.403410>,  <42.113663, 43.280384, 29.546852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.084656, 43.090168, 29.403410>,  <42.036312, 42.773140, 29.164339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084656, 43.090168, 29.403410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269736, 0.553217, -0.788158,
		-0.955320, 0.256469, -0.146926,
		0.120856, 0.792574, 0.597678,
		42.120914, 43.327942, 29.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649204, 43.271835, 28.873608>,  <42.036312, 42.773140, 29.164339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649204, 43.271835, 28.873608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.912540, 43.475826, 29.095062>,  <42.070541, 43.598221, 29.227936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.912540, 43.475826, 29.095062>,  <41.649204, 43.271835, 28.873608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912540, 43.475826, 29.095062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118367, 0.656225, -0.745223,
		-0.743357, 0.556141, 0.371655,
		0.658339, 0.509975, 0.553638,
		42.110043, 43.628819, 29.261154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491940, 44.005508, 28.734280>,  <41.649204, 43.271835, 28.873608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491940, 44.005508, 28.734280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869053, 43.988972, 28.866615>,  <42.095322, 43.979050, 28.946016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.869053, 43.988972, 28.866615>,  <41.491940, 44.005508, 28.734280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869053, 43.988972, 28.866615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272397, 0.667691, -0.692813,
		-0.192257, 0.743290, 0.640747,
		0.942782, -0.041339, 0.330838,
		42.151886, 43.976570, 28.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760384, 44.664658, 28.612425>,  <41.491940, 44.005508, 28.734280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760384, 44.664658, 28.612425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.102039, 44.466637, 28.676147>,  <42.307034, 44.347824, 28.714380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.102039, 44.466637, 28.676147>,  <41.760384, 44.664658, 28.612425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102039, 44.466637, 28.676147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471953, 0.609210, -0.637279,
		0.218434, 0.619507, 0.753988,
		0.854135, -0.495050, 0.159306,
		42.358280, 44.318123, 28.723940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200333, 45.199696, 28.834316>,  <41.760384, 44.664658, 28.612425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200333, 45.199696, 28.834316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428238, 44.908272, 28.682226>,  <42.564980, 44.733418, 28.590971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428238, 44.908272, 28.682226>,  <42.200333, 45.199696, 28.834316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428238, 44.908272, 28.682226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441633, 0.661629, -0.605976,
		0.693058, 0.177342, 0.698728,
		0.569764, -0.728558, -0.380227,
		42.599167, 44.689705, 28.568157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813484, 45.398766, 28.723965>,  <42.200333, 45.199696, 28.834316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813484, 45.398766, 28.723965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.820309, 45.089569, 28.470289>,  <42.824402, 44.904053, 28.318085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.820309, 45.089569, 28.470289>,  <42.813484, 45.398766, 28.723965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820309, 45.089569, 28.470289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434849, 0.576889, -0.691452,
		0.900342, -0.263979, 0.345976,
		0.017061, -0.772991, -0.634188,
		42.825428, 44.857674, 28.280033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426903, 45.525543, 28.380398>,  <42.813484, 45.398766, 28.723965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426903, 45.525543, 28.380398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.222763, 45.280796, 28.138685>,  <43.100277, 45.133945, 27.993658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.222763, 45.280796, 28.138685>,  <43.426903, 45.525543, 28.380398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222763, 45.280796, 28.138685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320534, 0.516699, -0.793902,
		0.797997, -0.598861, -0.067572,
		-0.510351, -0.611872, -0.604280,
		43.069656, 45.097233, 27.957401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913452, 45.365589, 27.970533>,  <43.426903, 45.525543, 28.380398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913452, 45.365589, 27.970533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.577507, 45.254467, 27.784006>,  <43.375938, 45.187794, 27.672091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.577507, 45.254467, 27.784006>,  <43.913452, 45.365589, 27.970533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577507, 45.254467, 27.784006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302387, 0.473975, -0.826988,
		0.450770, -0.835564, -0.314067,
		-0.839862, -0.277812, -0.466317,
		43.325546, 45.171124, 27.644112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161236, 44.942410, 27.429541>,  <43.913452, 45.365589, 27.970533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161236, 44.942410, 27.429541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.803585, 45.107632, 27.360346>,  <43.588993, 45.206764, 27.318829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.803585, 45.107632, 27.360346>,  <44.161236, 44.942410, 27.429541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803585, 45.107632, 27.360346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381278, 0.499587, -0.777843,
		-0.234869, -0.761446, -0.604182,
		-0.894127, 0.413053, -0.172985,
		43.535347, 45.231548, 27.308451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999264, 44.901257, 26.698517>,  <44.161236, 44.942410, 27.429541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999264, 44.901257, 26.698517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.764557, 45.187847, 26.849445>,  <43.623734, 45.359802, 26.940002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.764557, 45.187847, 26.849445>,  <43.999264, 44.901257, 26.698517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764557, 45.187847, 26.849445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341753, 0.641547, -0.686748,
		-0.734105, -0.274010, -0.621295,
		-0.586766, 0.716475, 0.377319,
		43.588528, 45.402790, 26.962641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699131, 45.076195, 26.151192>,  <43.999264, 44.901257, 26.698517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699131, 45.076195, 26.151192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651569, 45.384598, 26.401440>,  <43.623032, 45.569641, 26.551588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651569, 45.384598, 26.401440>,  <43.699131, 45.076195, 26.151192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651569, 45.384598, 26.401440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323203, 0.625831, -0.709841,
		-0.938830, 0.117798, -0.323608,
		-0.118906, 0.771011, 0.625622,
		43.615898, 45.615902, 26.589127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414570, 45.527748, 25.701958>,  <43.699131, 45.076195, 26.151192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414570, 45.527748, 25.701958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.565964, 45.718517, 26.019270>,  <43.656799, 45.832977, 26.209658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.565964, 45.718517, 26.019270>,  <43.414570, 45.527748, 25.701958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565964, 45.718517, 26.019270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334177, 0.728826, -0.597611,
		-0.863178, 0.491282, 0.116471,
		0.378483, 0.476923, 0.793281,
		43.679508, 45.861595, 26.257254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643650, 45.580685, 25.882717>,  <43.414570, 45.527748, 25.701958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643650, 45.580685, 25.882717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442165, 45.783749, 25.603132>,  <42.321274, 45.905586, 25.435381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442165, 45.783749, 25.603132>,  <42.643650, 45.580685, 25.882717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442165, 45.783749, 25.603132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845578, -0.124126, 0.519222,
		0.176829, 0.852569, 0.491791,
		-0.503716, 0.507661, -0.698964,
		42.291050, 45.936047, 25.393442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131500, 45.845253, 26.238848>,  <42.643650, 45.580685, 25.882717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131500, 45.845253, 26.238848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.002724, 45.889099, 25.862690>,  <41.925457, 45.915405, 25.636995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.002724, 45.889099, 25.862690>,  <42.131500, 45.845253, 26.238848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002724, 45.889099, 25.862690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945539, 0.013191, 0.325240,
		0.048055, 0.993887, 0.099396,
		-0.321941, 0.109612, -0.940393,
		41.906143, 45.921982, 25.580572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566967, 46.207737, 26.346731>,  <42.131500, 45.845253, 26.238848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566967, 46.207737, 26.346731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514854, 46.023197, 25.995691>,  <41.483589, 45.912472, 25.785067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514854, 46.023197, 25.995691>,  <41.566967, 46.207737, 26.346731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514854, 46.023197, 25.995691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916067, -0.282588, 0.284543,
		-0.379274, 0.841011, -0.385813,
		-0.130277, -0.461351, -0.877601,
		41.475773, 45.884792, 25.732410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890896, 46.373436, 26.246620>,  <41.566967, 46.207737, 26.346731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890896, 46.373436, 26.246620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.979267, 46.062836, 26.010576>,  <41.032291, 45.876476, 25.868950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.979267, 46.062836, 26.010576>,  <40.890896, 46.373436, 26.246620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979267, 46.062836, 26.010576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757137, -0.517948, 0.398087,
		-0.614763, 0.358847, -0.702350,
		0.220929, -0.776504, -0.590112,
		41.045547, 45.829884, 25.833542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313374, 46.248631, 25.792885>,  <40.890896, 46.373436, 26.246620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313374, 46.248631, 25.792885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.513474, 45.902569, 25.807079>,  <40.633533, 45.694931, 25.815596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.513474, 45.902569, 25.807079>,  <40.313374, 46.248631, 25.792885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513474, 45.902569, 25.807079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777954, -0.431079, 0.457120,
		-0.380180, -0.256283, -0.888697,
		0.500251, -0.865153, 0.035489,
		40.663548, 45.643024, 25.817726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851616, 45.739727, 25.486933>,  <40.313374, 46.248631, 25.792885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851616, 45.739727, 25.486933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114288, 45.554195, 25.724802>,  <40.271893, 45.442875, 25.867523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114288, 45.554195, 25.724802>,  <39.851616, 45.739727, 25.486933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114288, 45.554195, 25.724802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753797, -0.428543, 0.498138,
		0.023794, -0.775380, -0.631046,
		0.656677, -0.463828, 0.594676,
		40.311291, 45.415047, 25.903204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524563, 45.088360, 25.811029>,  <39.851616, 45.739727, 25.486933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524563, 45.088360, 25.811029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867256, 45.073017, 26.016758>,  <40.072872, 45.063812, 26.140196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.867256, 45.073017, 26.016758>,  <39.524563, 45.088360, 25.811029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867256, 45.073017, 26.016758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444524, -0.560604, 0.698656,
		0.261531, -0.827195, -0.497343,
		0.856738, -0.038361, 0.514324,
		40.124279, 45.061508, 26.171055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526871, 44.385700, 25.951550>,  <39.524563, 45.088360, 25.811029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526871, 44.385700, 25.951550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.727047, 44.597809, 26.225302>,  <39.847153, 44.725075, 26.389553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.727047, 44.597809, 26.225302>,  <39.526871, 44.385700, 25.951550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727047, 44.597809, 26.225302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681077, -0.246904, 0.689328,
		0.534506, -0.811082, 0.237593,
		0.500438, 0.530269, 0.684380,
		39.877178, 44.756889, 26.430616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011532, 43.828629, 25.817856>,  <39.526871, 44.385700, 25.951550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011532, 43.828629, 25.817856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846722, 43.567554, 25.563538>,  <39.747837, 43.410912, 25.410946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.846722, 43.567554, 25.563538>,  <40.011532, 43.828629, 25.817856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846722, 43.567554, 25.563538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374040, 0.515121, -0.771197,
		0.830863, -0.555563, 0.031890,
		-0.412021, -0.652687, -0.635798,
		39.723114, 43.371750, 25.372799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447151, 43.944481, 25.313074>,  <40.011532, 43.828629, 25.817856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447151, 43.944481, 25.313074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.138824, 43.742268, 25.158014>,  <39.953827, 43.620941, 25.064978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.138824, 43.742268, 25.158014>,  <40.447151, 43.944481, 25.313074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138824, 43.742268, 25.158014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150411, 0.446878, -0.881860,
		0.619043, -0.738061, -0.268424,
		-0.770819, -0.505535, -0.387650,
		39.907578, 43.590607, 25.041719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677483, 43.563454, 24.664015>,  <40.447151, 43.944481, 25.313074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677483, 43.563454, 24.664015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.286304, 43.646576, 24.655558>,  <40.051598, 43.696449, 24.650484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.286304, 43.646576, 24.655558>,  <40.677483, 43.563454, 24.664015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286304, 43.646576, 24.655558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103951, 0.396383, -0.912181,
		-0.181180, -0.894257, -0.409241,
		-0.977940, 0.207810, -0.021143,
		39.992924, 43.708920, 24.649216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413681, 43.197594, 24.039850>,  <40.677483, 43.563454, 24.664015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413681, 43.197594, 24.039850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.157951, 43.485317, 24.148550>,  <40.004513, 43.657951, 24.213770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.157951, 43.485317, 24.148550>,  <40.413681, 43.197594, 24.039850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157951, 43.485317, 24.148550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001772, 0.354790, -0.934944,
		-0.768933, -0.597254, -0.228101,
		-0.639327, 0.719313, 0.271752,
		39.966152, 43.701111, 24.230076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994816, 43.249161, 23.484999>,  <40.413681, 43.197594, 24.039850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994816, 43.249161, 23.484999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.898537, 43.583870, 23.681723>,  <39.840767, 43.784695, 23.799757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.898537, 43.583870, 23.681723>,  <39.994816, 43.249161, 23.484999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898537, 43.583870, 23.681723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186631, 0.457350, -0.869482,
		-0.952487, -0.301072, 0.046083,
		-0.240701, 0.836771, 0.491810,
		39.826328, 43.834900, 23.829266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342606, 43.379784, 23.232370>,  <39.994816, 43.249161, 23.484999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342606, 43.379784, 23.232370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.501320, 43.716431, 23.378929>,  <39.596546, 43.918419, 23.466864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.501320, 43.716431, 23.378929>,  <39.342606, 43.379784, 23.232370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501320, 43.716431, 23.378929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381296, 0.514215, -0.768242,
		-0.834972, 0.165119, 0.524936,
		0.396781, 0.841617, 0.366396,
		39.620354, 43.968914, 23.488848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797855, 43.904701, 23.241724>,  <39.342606, 43.379784, 23.232370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797855, 43.904701, 23.241724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157028, 44.080662, 23.235874>,  <39.372532, 44.186237, 23.232365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157028, 44.080662, 23.235874>,  <38.797855, 43.904701, 23.241724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157028, 44.080662, 23.235874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252802, 0.488255, -0.835284,
		-0.360301, 0.753721, 0.549625,
		0.897928, 0.439899, -0.014623,
		39.426407, 44.212631, 23.231487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699455, 44.507912, 22.917612>,  <38.797855, 43.904701, 23.241724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699455, 44.507912, 22.917612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099350, 44.504765, 22.909023>,  <39.339287, 44.502876, 22.903870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.099350, 44.504765, 22.909023>,  <38.699455, 44.507912, 22.917612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099350, 44.504765, 22.909023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015037, 0.481222, -0.876470,
		0.017228, 0.876564, 0.480977,
		0.999738, -0.007867, -0.021472,
		39.399273, 44.502403, 22.902582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961723, 45.278423, 22.802845>,  <38.699455, 44.507912, 22.917612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961723, 45.278423, 22.802845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.221436, 45.002636, 22.674425>,  <39.377262, 44.837166, 22.597374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.221436, 45.002636, 22.674425>,  <38.961723, 45.278423, 22.802845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221436, 45.002636, 22.674425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070083, 0.474570, -0.877424,
		0.757313, 0.547194, 0.356448,
		0.649281, -0.689465, -0.321049,
		39.416222, 44.795795, 22.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.541698, 35.224033, 34.870602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867092, 35.018925, 34.760838>,  <37.062328, 34.895859, 34.694977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867092, 35.018925, 34.760838>,  <36.541698, 35.224033, 34.870602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867092, 35.018925, 34.760838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163683, 0.654629, -0.738017,
		0.558073, 0.555451, 0.616465,
		0.813488, -0.512772, -0.274412,
		37.111137, 34.865093, 34.678513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258656, 35.538475, 34.978970>,  <36.541698, 35.224033, 34.870602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258656, 35.538475, 34.978970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.270035, 35.286705, 34.668354>,  <37.276863, 35.135643, 34.481987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.270035, 35.286705, 34.668354>,  <37.258656, 35.538475, 34.978970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270035, 35.286705, 34.668354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290686, 0.748487, -0.596044,
		0.956396, -0.208773, 0.204259,
		0.028447, -0.629429, -0.776537,
		37.278568, 35.097878, 34.435394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833672, 35.737953, 34.638020>,  <37.258656, 35.538475, 34.978970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833672, 35.737953, 34.638020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633701, 35.530685, 34.360435>,  <37.513721, 35.406326, 34.193886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633701, 35.530685, 34.360435>,  <37.833672, 35.737953, 34.638020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633701, 35.530685, 34.360435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297675, 0.649657, -0.699525,
		0.813308, -0.556282, -0.170531,
		-0.499920, -0.518167, -0.693962,
		37.483727, 35.375237, 34.152248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303387, 35.616695, 34.022614>,  <37.833672, 35.737953, 34.638020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303387, 35.616695, 34.022614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927582, 35.578064, 33.891163>,  <37.702099, 35.554886, 33.812294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927582, 35.578064, 33.891163>,  <38.303387, 35.616695, 34.022614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927582, 35.578064, 33.891163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246335, 0.476104, -0.844182,
		0.237990, -0.874069, -0.423513,
		-0.939510, -0.096580, -0.328622,
		37.645729, 35.549091, 33.792576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410767, 35.662479, 33.389717>,  <38.303387, 35.616695, 34.022614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410767, 35.662479, 33.389717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.011417, 35.683014, 33.379860>,  <37.771809, 35.695335, 33.373947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.011417, 35.683014, 33.379860>,  <38.410767, 35.662479, 33.389717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011417, 35.683014, 33.379860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048379, 0.536435, -0.842554,
		-0.030036, -0.842379, -0.538048,
		-0.998377, 0.051337, -0.024641,
		37.711903, 35.698414, 33.372467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235409, 35.688889, 32.685181>,  <38.410767, 35.662479, 33.389717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235409, 35.688889, 32.685181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.935757, 35.846748, 32.897995>,  <37.755966, 35.941463, 33.025684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.935757, 35.846748, 32.897995>,  <38.235409, 35.688889, 32.685181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935757, 35.846748, 32.897995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151408, 0.679896, -0.717507,
		-0.644892, -0.618058, -0.449575,
		-0.749126, 0.394645, 0.532039,
		37.711018, 35.965141, 33.057606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626289, 35.668617, 32.174751>,  <38.235409, 35.688889, 32.685181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626289, 35.668617, 32.174751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564381, 35.955482, 32.446552>,  <37.527237, 36.127602, 32.609634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.564381, 35.955482, 32.446552>,  <37.626289, 35.668617, 32.174751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564381, 35.955482, 32.446552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158645, 0.660822, -0.733584,
		-0.975130, -0.221335, 0.011500,
		-0.154769, 0.717164, 0.679501,
		37.517948, 36.170631, 32.650402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088043, 36.077232, 31.924778>,  <37.626289, 35.668617, 32.174751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088043, 36.077232, 31.924778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214344, 36.323910, 32.213219>,  <37.290127, 36.471916, 32.386284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214344, 36.323910, 32.213219>,  <37.088043, 36.077232, 31.924778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214344, 36.323910, 32.213219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234495, 0.787127, -0.570476,
		-0.919408, 0.011036, 0.393151,
		0.315756, 0.616692, 0.721103,
		37.309071, 36.508919, 32.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479652, 36.464596, 32.116013>,  <37.088043, 36.077232, 31.924778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479652, 36.464596, 32.116013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808037, 36.669914, 32.216057>,  <37.005066, 36.793106, 32.276081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.808037, 36.669914, 32.216057>,  <36.479652, 36.464596, 32.116013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808037, 36.669914, 32.216057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312163, 0.770249, -0.556121,
		-0.478098, 0.378479, 0.792575,
		0.820961, 0.513293, 0.250108,
		37.054325, 36.823902, 32.291088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243469, 37.154827, 32.271721>,  <36.479652, 36.464596, 32.116013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243469, 37.154827, 32.271721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632694, 37.189716, 32.186367>,  <36.866230, 37.210651, 32.135155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632694, 37.189716, 32.186367>,  <36.243469, 37.154827, 32.271721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632694, 37.189716, 32.186367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210921, 0.710411, -0.671437,
		0.093025, 0.698360, 0.709675,
		0.973067, 0.087225, -0.213385,
		36.924614, 37.215885, 32.122353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345970, 37.790920, 32.342083>,  <36.243469, 37.154827, 32.271721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345970, 37.790920, 32.342083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666691, 37.676685, 32.132111>,  <36.859123, 37.608143, 32.006126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666691, 37.676685, 32.132111>,  <36.345970, 37.790920, 32.342083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666691, 37.676685, 32.132111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167826, 0.735449, -0.656467,
		0.573542, 0.614453, 0.541754,
		0.801801, -0.285591, -0.524932,
		36.907230, 37.591007, 31.974630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700314, 38.367748, 32.118057>,  <36.345970, 37.790920, 32.342083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700314, 38.367748, 32.118057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853058, 38.107922, 31.855076>,  <36.944706, 37.952026, 31.697287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.853058, 38.107922, 31.855076>,  <36.700314, 38.367748, 32.118057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853058, 38.107922, 31.855076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101869, 0.677445, -0.728486,
		0.918589, 0.345154, 0.192518,
		0.381860, -0.649567, -0.657454,
		36.967617, 37.913052, 31.657839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014549, 38.855507, 32.721321>,  <36.700314, 38.367748, 32.118057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014549, 38.855507, 32.721321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987740, 39.238361, 32.834034>,  <36.971653, 39.468075, 32.901661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987740, 39.238361, 32.834034>,  <37.014549, 38.855507, 32.721321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987740, 39.238361, 32.834034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083101, -0.286793, 0.954381,
		0.994285, 0.040552, 0.098762,
		-0.067026, 0.957134, 0.281784,
		36.967632, 39.525501, 32.918568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480183, 38.869320, 33.363804>,  <37.014549, 38.855507, 32.721321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480183, 38.869320, 33.363804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237774, 39.187496, 33.363388>,  <37.092327, 39.378403, 33.363140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237774, 39.187496, 33.363388>,  <37.480183, 38.869320, 33.363804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237774, 39.187496, 33.363388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052354, -0.038587, 0.997883,
		0.793720, 0.604798, 0.065029,
		-0.606026, 0.795444, -0.001036,
		37.055965, 39.426128, 33.363079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871708, 39.326279, 33.864258>,  <37.480183, 38.869320, 33.363804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871708, 39.326279, 33.864258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493542, 39.454456, 33.840553>,  <37.266644, 39.531364, 33.826332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493542, 39.454456, 33.840553>,  <37.871708, 39.326279, 33.864258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493542, 39.454456, 33.840553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024716, 0.110816, 0.993533,
		0.324938, 0.940763, -0.096847,
		-0.945412, 0.320444, -0.059260,
		37.209919, 39.550591, 33.822777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767315, 39.925835, 34.348339>,  <37.871708, 39.326279, 33.864258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767315, 39.925835, 34.348339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397530, 39.796024, 34.268291>,  <37.175659, 39.718140, 34.220261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.397530, 39.796024, 34.268291>,  <37.767315, 39.925835, 34.348339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397530, 39.796024, 34.268291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279868, 0.221149, 0.934220,
		-0.258922, 0.919661, -0.295268,
		-0.924464, -0.324527, -0.200123,
		37.120190, 39.698666, 34.208256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307327, 40.370850, 34.726994>,  <37.767315, 39.925835, 34.348339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307327, 40.370850, 34.726994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099228, 40.034622, 34.666599>,  <36.974369, 39.832886, 34.630363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099228, 40.034622, 34.666599>,  <37.307327, 40.370850, 34.726994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099228, 40.034622, 34.666599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315728, 0.025034, 0.948520,
		-0.793513, 0.541132, -0.278413,
		-0.520244, -0.840565, -0.150986,
		36.943153, 39.782452, 34.621304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695599, 40.501003, 35.038280>,  <37.307327, 40.370850, 34.726994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695599, 40.501003, 35.038280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693233, 40.101612, 35.016335>,  <36.691814, 39.861977, 35.003166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693233, 40.101612, 35.016335>,  <36.695599, 40.501003, 35.038280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693233, 40.101612, 35.016335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584292, -0.041079, 0.810504,
		-0.811522, 0.036848, -0.583158,
		-0.005909, -0.998476, -0.054866,
		36.691460, 39.802071, 34.999874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023270, 40.300850, 35.212585>,  <36.695599, 40.501003, 35.038280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023270, 40.300850, 35.212585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223057, 39.955769, 35.244274>,  <36.342930, 39.748718, 35.263287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223057, 39.955769, 35.244274>,  <36.023270, 40.300850, 35.212585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223057, 39.955769, 35.244274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477875, -0.198080, 0.855803,
		-0.722614, -0.465300, -0.511199,
		0.499464, -0.862705, 0.079220,
		36.372894, 39.696957, 35.268040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574490, 39.757160, 35.120701>,  <36.023270, 40.300850, 35.212585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574490, 39.757160, 35.120701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876984, 39.611427, 35.338093>,  <36.058479, 39.523987, 35.468529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876984, 39.611427, 35.338093>,  <35.574490, 39.757160, 35.120701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876984, 39.611427, 35.338093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640319, -0.241323, 0.729215,
		-0.134523, -0.899458, -0.415786,
		0.756237, -0.364332, 0.543477,
		36.103855, 39.502129, 35.501137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321018, 39.074501, 35.296825>,  <35.574490, 39.757160, 35.120701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321018, 39.074501, 35.296825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.620167, 39.218811, 35.519730>,  <35.799656, 39.305397, 35.653473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.620167, 39.218811, 35.519730>,  <35.321018, 39.074501, 35.296825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620167, 39.218811, 35.519730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483578, -0.279032, 0.829634,
		0.454801, -0.889935, -0.034218,
		0.747869, 0.360771, 0.557257,
		35.844528, 39.327042, 35.686909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426884, 38.650768, 35.790043>,  <35.321018, 39.074501, 35.296825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426884, 38.650768, 35.790043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613224, 38.969631, 35.943672>,  <35.725029, 39.160950, 36.035851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.613224, 38.969631, 35.943672>,  <35.426884, 38.650768, 35.790043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613224, 38.969631, 35.943672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386170, -0.207380, 0.898814,
		0.796149, -0.567034, 0.211231,
		0.465853, 0.797161, 0.384077,
		35.752979, 39.208778, 36.058895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648262, 38.412582, 36.482674>,  <35.426884, 38.650768, 35.790043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648262, 38.412582, 36.482674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661869, 38.811272, 36.453308>,  <35.670033, 39.050484, 36.435688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661869, 38.811272, 36.453308>,  <35.648262, 38.412582, 36.482674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661869, 38.811272, 36.453308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372524, 0.080810, 0.924497,
		0.927399, -0.004099, 0.374052,
		0.034016, 0.996721, -0.073416,
		35.672073, 39.110287, 36.431282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099392, 38.617100, 37.058353>,  <35.648262, 38.412582, 36.482674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099392, 38.617100, 37.058353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861477, 38.904011, 36.913166>,  <35.718727, 39.076157, 36.826054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861477, 38.904011, 36.913166>,  <36.099392, 38.617100, 37.058353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861477, 38.904011, 36.913166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581800, -0.072504, 0.810094,
		0.554745, 0.693005, 0.460436,
		-0.594783, 0.717277, -0.362969,
		35.683041, 39.119194, 36.804276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772160, 38.923309, 37.663307>,  <36.099392, 38.617100, 37.058353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772160, 38.923309, 37.663307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523857, 39.068832, 37.385513>,  <35.374878, 39.156147, 37.218838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.523857, 39.068832, 37.385513>,  <35.772160, 38.923309, 37.663307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523857, 39.068832, 37.385513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764192, -0.082884, 0.639641,
		0.175143, 0.927780, 0.329468,
		-0.620754, 0.363805, -0.694485,
		35.337631, 39.177975, 37.177166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462227, 39.564034, 37.899250>,  <35.772160, 38.923309, 37.663307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462227, 39.564034, 37.899250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212261, 39.375797, 37.650082>,  <35.062283, 39.262856, 37.500580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212261, 39.375797, 37.650082>,  <35.462227, 39.564034, 37.899250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212261, 39.375797, 37.650082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668850, -0.088804, 0.738074,
		-0.402650, 0.877870, -0.259262,
		-0.624910, -0.470593, -0.622920,
		35.024788, 39.234619, 37.463207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942059, 40.096436, 37.990238>,  <35.462227, 39.564034, 37.899250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942059, 40.096436, 37.990238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025093, 40.173618, 38.373837>,  <36.074913, 40.219929, 38.603996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025093, 40.173618, 38.373837>,  <35.942059, 40.096436, 37.990238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025093, 40.173618, 38.373837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661779, 0.694258, -0.282939,
		-0.720387, 0.693378, 0.016420,
		0.207584, 0.192959, 0.958997,
		36.087368, 40.231506, 38.661537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737930, 40.763912, 38.186977>,  <35.942059, 40.096436, 37.990238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737930, 40.763912, 38.186977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068165, 40.594265, 38.335857>,  <36.266304, 40.492477, 38.425186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068165, 40.594265, 38.335857>,  <35.737930, 40.763912, 38.186977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068165, 40.594265, 38.335857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561321, 0.684692, -0.464884,
		-0.057679, 0.592726, 0.803337,
		0.825586, -0.424115, 0.372201,
		36.315842, 40.467030, 38.447517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154984, 41.292454, 38.181744>,  <35.737930, 40.763912, 38.186977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154984, 41.292454, 38.181744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419827, 40.992859, 38.191772>,  <36.578732, 40.813103, 38.197792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419827, 40.992859, 38.191772>,  <36.154984, 41.292454, 38.181744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419827, 40.992859, 38.191772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688262, 0.594507, -0.415761,
		0.296493, 0.292538, 0.909128,
		0.662109, -0.748988, 0.025076,
		36.618458, 40.768162, 38.199295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867680, 41.547596, 38.400124>,  <36.154984, 41.292454, 38.181744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867680, 41.547596, 38.400124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964317, 41.185043, 38.261497>,  <37.022301, 40.967514, 38.178322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964317, 41.185043, 38.261497>,  <36.867680, 41.547596, 38.400124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964317, 41.185043, 38.261497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798138, 0.388737, -0.460281,
		0.551913, -0.165408, 0.817332,
		0.241593, -0.906379, -0.346568,
		37.036797, 40.913128, 38.157528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556042, 41.529564, 38.465527>,  <36.867680, 41.547596, 38.400124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556042, 41.529564, 38.465527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460556, 41.259228, 38.186596>,  <37.403267, 41.097027, 38.019238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460556, 41.259228, 38.186596>,  <37.556042, 41.529564, 38.465527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460556, 41.259228, 38.186596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717861, 0.360786, -0.595407,
		0.653982, -0.642712, 0.399034,
		-0.238709, -0.675836, -0.697326,
		37.388943, 41.056477, 37.977398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149982, 41.217556, 38.309006>,  <37.556042, 41.529564, 38.465527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149982, 41.217556, 38.309006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910973, 41.172455, 37.991455>,  <37.767567, 41.145393, 37.800922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910973, 41.172455, 37.991455>,  <38.149982, 41.217556, 38.309006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910973, 41.172455, 37.991455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699121, 0.411584, -0.584662,
		0.392672, -0.904370, -0.167103,
		-0.597527, -0.112756, -0.793881,
		37.731712, 41.138630, 37.753292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554867, 40.886940, 37.829491>,  <38.149982, 41.217556, 38.309006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554867, 40.886940, 37.829491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260582, 41.052563, 37.615093>,  <38.084011, 41.151936, 37.486454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.260582, 41.052563, 37.615093>,  <38.554867, 40.886940, 37.829491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260582, 41.052563, 37.615093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674455, 0.375479, -0.635709,
		-0.061962, -0.829202, -0.555505,
		-0.735711, 0.414053, -0.535994,
		38.039867, 41.176777, 37.454296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753773, 40.780891, 37.174320>,  <38.554867, 40.886940, 37.829491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753773, 40.780891, 37.174320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476555, 41.065632, 37.128777>,  <38.310226, 41.236477, 37.101452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476555, 41.065632, 37.128777>,  <38.753773, 40.780891, 37.174320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476555, 41.065632, 37.128777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465372, 0.321155, -0.824796,
		-0.550568, -0.624602, -0.553849,
		-0.693040, 0.711852, -0.113855,
		38.268642, 41.279186, 37.094620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464802, 40.663513, 36.533054>,  <38.753773, 40.780891, 37.174320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464802, 40.663513, 36.533054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382950, 41.043419, 36.627777>,  <38.333839, 41.271362, 36.684608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382950, 41.043419, 36.627777>,  <38.464802, 40.663513, 36.533054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382950, 41.043419, 36.627777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181529, 0.274548, -0.944283,
		-0.961861, -0.150237, -0.228589,
		-0.204625, 0.949764, 0.236805,
		38.321564, 41.328346, 36.698818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939899, 41.000610, 35.944752>,  <38.464802, 40.663513, 36.533054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939899, 41.000610, 35.944752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155174, 41.273857, 36.142220>,  <38.284340, 41.437805, 36.260700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155174, 41.273857, 36.142220>,  <37.939899, 41.000610, 35.944752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155174, 41.273857, 36.142220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454471, 0.258070, -0.852559,
		-0.709798, 0.683192, -0.171567,
		0.538185, 0.683116, 0.493668,
		38.316631, 41.478790, 36.290321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903458, 41.545185, 35.560410>,  <37.939899, 41.000610, 35.944752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903458, 41.545185, 35.560410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192646, 41.684223, 35.799236>,  <38.366158, 41.767647, 35.942532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192646, 41.684223, 35.799236>,  <37.903458, 41.545185, 35.560410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192646, 41.684223, 35.799236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500059, 0.333041, -0.799390,
		-0.476711, 0.876506, 0.066962,
		0.722972, 0.347593, 0.597069,
		38.409538, 41.788502, 35.978355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041973, 42.235783, 35.310989>,  <37.903458, 41.545185, 35.560410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041973, 42.235783, 35.310989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356552, 42.085861, 35.507366>,  <38.545300, 41.995911, 35.625191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356552, 42.085861, 35.507366>,  <38.041973, 42.235783, 35.310989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356552, 42.085861, 35.507366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589405, 0.217754, -0.777937,
		0.184666, 0.901170, 0.392161,
		0.786448, -0.374800, 0.490942,
		38.592487, 41.973423, 35.654648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522072, 42.558090, 34.998837>,  <38.041973, 42.235783, 35.310989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522072, 42.558090, 34.998837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750324, 42.278549, 35.171341>,  <38.887276, 42.110825, 35.274845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750324, 42.278549, 35.171341>,  <38.522072, 42.558090, 34.998837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750324, 42.278549, 35.171341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622516, 0.025609, -0.782188,
		0.535588, 0.714810, 0.449658,
		0.570631, -0.698850, 0.431265,
		38.921513, 42.068893, 35.300720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192074, 42.885799, 34.961159>,  <38.522072, 42.558090, 34.998837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192074, 42.885799, 34.961159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228741, 42.490250, 35.008015>,  <39.250740, 42.252918, 35.036129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228741, 42.490250, 35.008015>,  <39.192074, 42.885799, 34.961159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228741, 42.490250, 35.008015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692777, -0.021175, -0.720841,
		0.715303, 0.147228, 0.683129,
		0.091663, -0.988876, 0.117143,
		39.256241, 42.193588, 35.043156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907734, 42.723213, 34.963654>,  <39.192074, 42.885799, 34.961159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907734, 42.723213, 34.963654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.764172, 42.355892, 34.896824>,  <39.678036, 42.135502, 34.856724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.764172, 42.355892, 34.896824>,  <39.907734, 42.723213, 34.963654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764172, 42.355892, 34.896824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544116, -0.060404, -0.836833,
		0.758371, -0.391251, 0.521340,
		-0.358903, -0.918300, -0.167077,
		39.656502, 42.080402, 34.846703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507244, 42.252071, 34.979130>,  <39.907734, 42.723213, 34.963654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507244, 42.252071, 34.979130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216793, 42.074707, 34.768940>,  <40.042522, 41.968288, 34.642826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.216793, 42.074707, 34.768940>,  <40.507244, 42.252071, 34.979130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216793, 42.074707, 34.768940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654557, -0.211876, -0.725716,
		0.210456, -0.870916, 0.444088,
		-0.726129, -0.443412, -0.525473,
		39.998955, 41.941685, 34.611298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797161, 41.684296, 34.564865>,  <40.507244, 42.252071, 34.979130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797161, 41.684296, 34.564865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466488, 41.808800, 34.377369>,  <40.268085, 41.883503, 34.264874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.466488, 41.808800, 34.377369>,  <40.797161, 41.684296, 34.564865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466488, 41.808800, 34.377369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436454, -0.171035, -0.883320,
		-0.355116, -0.934806, 0.005539,
		-0.826680, 0.311264, -0.468737,
		40.218483, 41.902180, 34.236748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924290, 41.397083, 33.925228>,  <40.797161, 41.684296, 34.564865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924290, 41.397083, 33.925228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621357, 41.651081, 33.864254>,  <40.439598, 41.803478, 33.827671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621357, 41.651081, 33.864254>,  <40.924290, 41.397083, 33.925228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621357, 41.651081, 33.864254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083222, -0.137671, -0.986976,
		-0.647711, -0.760149, 0.051417,
		-0.757327, 0.634996, -0.152432,
		40.394157, 41.841579, 33.818523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495869, 41.119720, 33.334076>,  <40.924290, 41.397083, 33.925228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495869, 41.119720, 33.334076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395496, 41.506615, 33.349464>,  <40.335274, 41.738750, 33.358700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.395496, 41.506615, 33.349464>,  <40.495869, 41.119720, 33.334076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395496, 41.506615, 33.349464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182438, 0.086289, -0.979424,
		-0.950658, -0.238748, -0.198114,
		-0.250931, 0.967240, 0.038474,
		40.320217, 41.796787, 33.361008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117916, 41.293659, 32.699863>,  <40.495869, 41.119720, 33.334076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117916, 41.293659, 32.699863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.227394, 41.656090, 32.828938>,  <40.293079, 41.873547, 32.906384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.227394, 41.656090, 32.828938>,  <40.117916, 41.293659, 32.699863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227394, 41.656090, 32.828938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332052, 0.225859, -0.915821,
		-0.902682, 0.357801, -0.239048,
		0.273690, 0.906072, 0.322688,
		40.309502, 41.927910, 32.925743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723557, 41.817837, 32.331429>,  <40.117916, 41.293659, 32.699863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723557, 41.817837, 32.331429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061649, 41.966503, 32.485027>,  <40.264503, 42.055702, 32.577187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061649, 41.966503, 32.485027>,  <39.723557, 41.817837, 32.331429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061649, 41.966503, 32.485027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263153, 0.335927, -0.904380,
		-0.465118, 0.865459, 0.186131,
		0.845231, 0.371663, 0.383994,
		40.315220, 42.078003, 32.600227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781219, 42.485073, 32.064510>,  <39.723557, 41.817837, 32.331429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781219, 42.485073, 32.064510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.161983, 42.404697, 32.157017>,  <40.390442, 42.356472, 32.212521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.161983, 42.404697, 32.157017>,  <39.781219, 42.485073, 32.064510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161983, 42.404697, 32.157017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293405, 0.380688, -0.876921,
		0.088171, 0.902607, 0.421339,
		0.951913, -0.200942, 0.231264,
		40.447559, 42.344414, 32.226395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120777, 43.042366, 31.824001>,  <39.781219, 42.485073, 32.064510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120777, 43.042366, 31.824001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.421272, 42.782524, 31.870750>,  <40.601570, 42.626621, 31.898800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.421272, 42.782524, 31.870750>,  <40.120777, 43.042366, 31.824001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421272, 42.782524, 31.870750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406085, 0.315309, -0.857715,
		0.520322, 0.691808, 0.500666,
		0.751239, -0.649601, 0.116871,
		40.646645, 42.587643, 31.905811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627293, 43.450932, 31.701143>,  <40.120777, 43.042366, 31.824001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627293, 43.450932, 31.701143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805885, 43.095585, 31.658331>,  <40.913040, 42.882378, 31.632645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.805885, 43.095585, 31.658331>,  <40.627293, 43.450932, 31.701143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805885, 43.095585, 31.658331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554701, 0.368657, -0.745922,
		0.702109, 0.273674, 0.657378,
		0.446486, -0.888366, -0.107030,
		40.939831, 42.829075, 31.626223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324303, 43.632767, 31.703735>,  <40.627293, 43.450932, 31.701143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324303, 43.632767, 31.703735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.280201, 43.277763, 31.524769>,  <41.253738, 43.064762, 31.417389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.280201, 43.277763, 31.524769>,  <41.324303, 43.632767, 31.703735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280201, 43.277763, 31.524769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574196, 0.310559, -0.757530,
		0.811260, -0.340424, 0.475361,
		-0.110254, -0.887505, -0.447415,
		41.247124, 43.011513, 31.390545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029861, 43.429760, 31.539036>,  <41.324303, 43.632767, 31.703735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029861, 43.429760, 31.539036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.792976, 43.225040, 31.290089>,  <41.650845, 43.102207, 31.140720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.792976, 43.225040, 31.290089>,  <42.029861, 43.429760, 31.539036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792976, 43.225040, 31.290089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528816, 0.335918, -0.779431,
		0.607978, -0.790709, 0.071713,
		-0.592214, -0.511800, -0.622370,
		41.615311, 43.071499, 31.103378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518185, 43.038578, 31.121964>,  <42.029861, 43.429760, 31.539036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518185, 43.038578, 31.121964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.164993, 43.090832, 30.941612>,  <41.953079, 43.122185, 30.833403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.164993, 43.090832, 30.941612>,  <42.518185, 43.038578, 31.121964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164993, 43.090832, 30.941612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462786, 0.403143, -0.789497,
		0.078635, -0.905766, -0.416420,
		-0.882976, 0.130631, -0.450876,
		41.900101, 43.130020, 30.806349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585011, 42.595058, 30.477087>,  <42.518185, 43.038578, 31.121964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585011, 42.595058, 30.477087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.283855, 42.853436, 30.426617>,  <42.103165, 43.008461, 30.396334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.283855, 42.853436, 30.426617>,  <42.585011, 42.595058, 30.477087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283855, 42.853436, 30.426617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383799, 0.275156, -0.881469,
		-0.534661, -0.712072, -0.455073,
		-0.752885, 0.645944, -0.126177,
		42.057991, 43.047218, 30.388763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472652, 41.930576, 30.151258>,  <42.585011, 42.595058, 30.477087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472652, 41.930576, 30.151258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.711548, 41.616989, 30.083485>,  <42.854885, 41.428837, 30.042820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.711548, 41.616989, 30.083485>,  <42.472652, 41.930576, 30.151258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711548, 41.616989, 30.083485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423287, -0.487512, 0.763650,
		-0.681275, -0.384361, -0.623002,
		0.597237, -0.783964, -0.169435,
		42.890720, 41.381802, 30.032654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037552, 41.350449, 30.026083>,  <42.472652, 41.930576, 30.151258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037552, 41.350449, 30.026083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.386280, 41.190434, 30.139147>,  <42.595516, 41.094425, 30.206985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.386280, 41.190434, 30.139147>,  <42.037552, 41.350449, 30.026083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386280, 41.190434, 30.139147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481384, -0.593117, 0.645353,
		-0.090513, -0.698702, -0.709664,
		0.871824, -0.400034, 0.282659,
		42.647827, 41.070423, 30.223944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915340, 40.622330, 30.078339>,  <42.037552, 41.350449, 30.026083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915340, 40.622330, 30.078339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.239910, 40.682175, 30.304331>,  <42.434654, 40.718082, 30.439926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.239910, 40.682175, 30.304331>,  <41.915340, 40.622330, 30.078339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239910, 40.682175, 30.304331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317888, -0.698210, 0.641444,
		0.490439, -0.700086, -0.518989,
		0.811429, 0.149609, 0.564978,
		42.483337, 40.727058, 30.473824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052402, 39.941811, 30.348364>,  <41.915340, 40.622330, 30.078339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052402, 39.941811, 30.348364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.250896, 40.199814, 30.580818>,  <42.369991, 40.354614, 30.720291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.250896, 40.199814, 30.580818>,  <42.052402, 39.941811, 30.348364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250896, 40.199814, 30.580818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332836, -0.476888, 0.813510,
		0.801857, -0.597112, -0.021965,
		0.496232, 0.645007, 0.581136,
		42.399765, 40.393314, 30.755159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554707, 39.529800, 30.839155>,  <42.052402, 39.941811, 30.348364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554707, 39.529800, 30.839155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.545700, 39.880814, 31.030752>,  <42.540298, 40.091419, 31.145710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.545700, 39.880814, 31.030752>,  <42.554707, 39.529800, 30.839155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545700, 39.880814, 31.030752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136481, -0.477325, 0.868063,
		0.990387, -0.045829, 0.130513,
		-0.022514, 0.877531, 0.478991,
		42.538944, 40.144073, 31.174450>
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
