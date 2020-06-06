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
	<24.093746, 34.911438, 34.794617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388365, 34.935219, 35.064125>,  <24.565136, 34.949486, 35.225830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388365, 34.935219, 35.064125>,  <24.093746, 34.911438, 34.794617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388365, 34.935219, 35.064125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675326, -0.008882, -0.737466,
		-0.037857, 0.998192, -0.046689,
		0.736547, 0.059449, 0.673769,
		24.609329, 34.953053, 35.266254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573557, 35.582310, 34.754330>,  <24.093746, 34.911438, 34.794617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573557, 35.582310, 34.754330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760258, 35.247173, 34.867580>,  <24.872278, 35.046089, 34.935532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760258, 35.247173, 34.867580>,  <24.573557, 35.582310, 34.754330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760258, 35.247173, 34.867580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474356, -0.033020, -0.879713,
		0.746411, 0.544912, 0.382024,
		0.466752, -0.837843, 0.283129,
		24.900284, 34.995819, 34.952518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.339010, 35.492882, 34.677399>,  <24.573557, 35.582310, 34.754330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.339010, 35.492882, 34.677399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193985, 35.120781, 34.654831>,  <25.106970, 34.897522, 34.641293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193985, 35.120781, 34.654831>,  <25.339010, 35.492882, 34.677399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193985, 35.120781, 34.654831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542926, -0.161626, -0.824080,
		0.757482, -0.329411, 0.563656,
		-0.362563, -0.930250, -0.056416,
		25.085217, 34.841705, 34.637905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955948, 35.041981, 34.725266>,  <25.339010, 35.492882, 34.677399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955948, 35.041981, 34.725266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631868, 34.968102, 34.502747>,  <25.437420, 34.923775, 34.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631868, 34.968102, 34.502747>,  <25.955948, 35.041981, 34.725266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631868, 34.968102, 34.502747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549447, 0.091265, -0.830529,
		0.204168, -0.978548, 0.027539,
		-0.810200, -0.184699, -0.556294,
		25.388809, 34.912693, 34.335857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425356, 35.532448, 34.400009>,  <25.955948, 35.041981, 34.725266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425356, 35.532448, 34.400009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663385, 35.703045, 34.672478>,  <26.806202, 35.805405, 34.835957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.663385, 35.703045, 34.672478>,  <26.425356, 35.532448, 34.400009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663385, 35.703045, 34.672478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775769, -0.526232, -0.348228,
		0.209935, 0.735649, -0.644009,
		0.595072, 0.426497, 0.681168,
		26.841908, 35.830994, 34.876827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957741, 35.856110, 34.021530>,  <26.425356, 35.532448, 34.400009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957741, 35.856110, 34.021530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265905, 36.110588, 34.004921>,  <27.450804, 36.263275, 33.994957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265905, 36.110588, 34.004921>,  <26.957741, 35.856110, 34.021530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265905, 36.110588, 34.004921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097079, -0.181426, -0.978601,
		-0.630114, 0.749894, -0.201534,
		0.770411, 0.636195, -0.041521,
		27.497028, 36.301445, 33.992466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881561, 36.274418, 33.470085>,  <26.957741, 35.856110, 34.021530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881561, 36.274418, 33.470085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272211, 36.264828, 33.555534>,  <27.506601, 36.259075, 33.606804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272211, 36.264828, 33.555534>,  <26.881561, 36.274418, 33.470085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272211, 36.264828, 33.555534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192594, -0.343779, -0.919089,
		0.095474, 0.938745, -0.331124,
		0.976623, -0.023977, 0.213618,
		27.565199, 36.257633, 33.619621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422173, 36.649342, 32.939312>,  <26.881561, 36.274418, 33.470085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422173, 36.649342, 32.939312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543175, 36.321156, 33.133354>,  <27.615776, 36.124245, 33.249779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543175, 36.321156, 33.133354>,  <27.422173, 36.649342, 32.939312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543175, 36.321156, 33.133354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141971, -0.542063, -0.828258,
		0.942515, 0.181681, -0.280458,
		0.302505, -0.820463, 0.485109,
		27.633926, 36.075016, 33.278889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958866, 36.345253, 32.649120>,  <27.422173, 36.649342, 32.939312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958866, 36.345253, 32.649120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828175, 36.016155, 32.835167>,  <27.749760, 35.818695, 32.946796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828175, 36.016155, 32.835167>,  <27.958866, 36.345253, 32.649120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828175, 36.016155, 32.835167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051876, -0.506999, -0.860384,
		0.943694, -0.256983, 0.208332,
		-0.326729, -0.822746, 0.465121,
		27.730156, 35.769333, 32.974705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222826, 35.820919, 32.283665>,  <27.958866, 36.345253, 32.649120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222826, 35.820919, 32.283665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947626, 35.608650, 32.481670>,  <27.782507, 35.481289, 32.600475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947626, 35.608650, 32.481670>,  <28.222826, 35.820919, 32.283665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947626, 35.608650, 32.481670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110970, -0.597157, -0.794411,
		0.717176, -0.601487, 0.351955,
		-0.688000, -0.530676, 0.495013,
		27.741226, 35.449448, 32.630173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301472, 35.105927, 32.038113>,  <28.222826, 35.820919, 32.283665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301472, 35.105927, 32.038113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928560, 35.127888, 32.181133>,  <27.704813, 35.141064, 32.266945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928560, 35.127888, 32.181133>,  <28.301472, 35.105927, 32.038113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928560, 35.127888, 32.181133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322683, -0.572970, -0.753379,
		0.163503, -0.817735, 0.551884,
		-0.932278, 0.054904, 0.357551,
		27.648876, 35.144360, 32.288399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047810, 34.403946, 32.172634>,  <28.301472, 35.105927, 32.038113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047810, 34.403946, 32.172634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722525, 34.632938, 32.130779>,  <27.527353, 34.770336, 32.105667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722525, 34.632938, 32.130779>,  <28.047810, 34.403946, 32.172634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722525, 34.632938, 32.130779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341260, -0.614727, -0.711092,
		-0.471411, -0.542561, 0.695270,
		-0.813212, 0.572484, -0.104635,
		27.478561, 34.804684, 32.099388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569851, 33.929619, 31.911892>,  <28.047810, 34.403946, 32.172634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569851, 33.929619, 31.911892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394878, 34.278435, 31.824080>,  <27.289894, 34.487724, 31.771393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394878, 34.278435, 31.824080>,  <27.569851, 33.929619, 31.911892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394878, 34.278435, 31.824080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496830, -0.437849, -0.749299,
		-0.749542, -0.218699, 0.624787,
		-0.437433, 0.872043, -0.219530,
		27.263649, 34.540047, 31.758221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936712, 33.772888, 31.808065>,  <27.569851, 33.929619, 31.911892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936712, 33.772888, 31.808065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994148, 34.121590, 31.620693>,  <27.028610, 34.330811, 31.508270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.994148, 34.121590, 31.620693>,  <26.936712, 33.772888, 31.808065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994148, 34.121590, 31.620693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443295, -0.366537, -0.818010,
		-0.884801, 0.325110, 0.333813,
		0.143588, 0.871753, -0.468432,
		27.037224, 34.383114, 31.480164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356398, 33.995861, 31.520580>,  <26.936712, 33.772888, 31.808065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356398, 33.995861, 31.520580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634157, 34.178104, 31.297787>,  <26.800814, 34.287449, 31.164110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634157, 34.178104, 31.297787>,  <26.356398, 33.995861, 31.520580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634157, 34.178104, 31.297787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377776, -0.427971, -0.821052,
		-0.612448, 0.780554, -0.125067,
		0.694401, 0.455605, -0.556985,
		26.842478, 34.314785, 31.130692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983465, 34.229500, 31.061251>,  <26.356398, 33.995861, 31.520580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983465, 34.229500, 31.061251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349794, 34.210865, 30.901703>,  <26.569592, 34.199684, 30.805975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349794, 34.210865, 30.901703>,  <25.983465, 34.229500, 31.061251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349794, 34.210865, 30.901703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392790, -0.310602, -0.865588,
		-0.083565, 0.949398, -0.302756,
		0.915824, -0.046586, -0.398869,
		26.624542, 34.196888, 30.782042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796688, 34.330322, 30.388416>,  <25.983465, 34.229500, 31.061251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796688, 34.330322, 30.388416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165350, 34.175171, 30.392511>,  <26.386547, 34.082081, 30.394968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165350, 34.175171, 30.392511>,  <25.796688, 34.330322, 30.388416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165350, 34.175171, 30.392511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224484, -0.554552, -0.801298,
		0.316482, 0.736222, -0.598178,
		0.921654, -0.387878, 0.010236,
		26.441847, 34.058807, 30.395582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880363, 34.265408, 29.745850>,  <25.796688, 34.330322, 30.388416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880363, 34.265408, 29.745850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183167, 34.055008, 29.900908>,  <26.364849, 33.928768, 29.993942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183167, 34.055008, 29.900908>,  <25.880363, 34.265408, 29.745850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183167, 34.055008, 29.900908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130904, -0.703325, -0.698712,
		0.640158, 0.478187, -0.601278,
		0.757008, -0.525996, 0.387643,
		26.410269, 33.897209, 30.017200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331312, 34.159443, 29.143000>,  <25.880363, 34.265408, 29.745850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331312, 34.159443, 29.143000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420622, 33.879559, 29.414457>,  <26.474207, 33.711628, 29.577332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420622, 33.879559, 29.414457>,  <26.331312, 34.159443, 29.143000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420622, 33.879559, 29.414457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151099, -0.712650, -0.685055,
		0.962973, 0.050412, -0.264841,
		0.223274, -0.699706, 0.678645,
		26.487604, 33.669647, 29.618052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843714, 33.733597, 28.821011>,  <26.331312, 34.159443, 29.143000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843714, 33.733597, 28.821011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669241, 33.505341, 29.099323>,  <26.564556, 33.368385, 29.266312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669241, 33.505341, 29.099323>,  <26.843714, 33.733597, 28.821011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669241, 33.505341, 29.099323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025479, -0.765072, -0.643440,
		0.899497, -0.298386, 0.319172,
		-0.436183, -0.570641, 0.695783,
		26.538385, 33.334148, 29.308058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124546, 33.044285, 28.815090>,  <26.843714, 33.733597, 28.821011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124546, 33.044285, 28.815090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793900, 32.965034, 29.025784>,  <26.595512, 32.917484, 29.152201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793900, 32.965034, 29.025784>,  <27.124546, 33.044285, 28.815090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793900, 32.965034, 29.025784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075070, -0.888791, -0.452124,
		0.557737, -0.413275, 0.719815,
		-0.826616, -0.198130, 0.526735,
		26.545916, 32.905594, 29.183804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173466, 32.283436, 28.931479>,  <27.124546, 33.044285, 28.815090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173466, 32.283436, 28.931479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788345, 32.356346, 29.011272>,  <26.557274, 32.400093, 29.059149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788345, 32.356346, 29.011272>,  <27.173466, 32.283436, 28.931479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788345, 32.356346, 29.011272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244291, -0.902672, -0.354268,
		0.115494, -0.389821, 0.913620,
		-0.962800, 0.182274, 0.199483,
		26.499506, 32.411030, 29.071117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852392, 31.634535, 29.220377>,  <27.173466, 32.283436, 28.931479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852392, 31.634535, 29.220377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544674, 31.839193, 29.067326>,  <26.360043, 31.961988, 28.975494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544674, 31.839193, 29.067326>,  <26.852392, 31.634535, 29.220377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544674, 31.839193, 29.067326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420149, -0.856318, -0.300323,
		-0.481310, -0.070277, 0.873729,
		-0.769295, 0.511645, -0.382628,
		26.313885, 31.992687, 28.952538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254343, 31.292370, 29.527185>,  <26.852392, 31.634535, 29.220377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254343, 31.292370, 29.527185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138474, 31.473358, 29.189817>,  <26.068953, 31.581951, 28.987396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138474, 31.473358, 29.189817>,  <26.254343, 31.292370, 29.527185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138474, 31.473358, 29.189817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547754, -0.801000, -0.241588,
		-0.784891, 0.392004, 0.479873,
		-0.289675, 0.452473, -0.843419,
		26.051571, 31.609100, 28.936790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968645, 30.960615, 28.890841>,  <26.254343, 31.292370, 29.527185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968645, 30.960615, 28.890841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639103, 30.863977, 29.095934>,  <25.441378, 30.805994, 29.218990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639103, 30.863977, 29.095934>,  <25.968645, 30.960615, 28.890841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639103, 30.863977, 29.095934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391489, -0.411614, -0.822989,
		0.409878, -0.878752, 0.244529,
		-0.823855, -0.241595, 0.512733,
		25.391947, 30.791498, 29.249754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797674, 30.190229, 28.729189>,  <25.968645, 30.960615, 28.890841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797674, 30.190229, 28.729189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741793, 30.059443, 29.103050>,  <25.708263, 29.980970, 29.327368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741793, 30.059443, 29.103050>,  <25.797674, 30.190229, 28.729189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741793, 30.059443, 29.103050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927056, -0.374848, 0.007437,
		0.347922, 0.867515, 0.355483,
		-0.139704, -0.326966, 0.934653,
		25.699883, 29.961353, 29.383446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409590, 30.502180, 29.279003>,  <25.797674, 30.190229, 28.729189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409590, 30.502180, 29.279003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238907, 30.144079, 29.330296>,  <26.136497, 29.929218, 29.361071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238907, 30.144079, 29.330296>,  <26.409590, 30.502180, 29.279003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238907, 30.144079, 29.330296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900510, -0.433704, -0.031336,
		0.083668, 0.102101, 0.991249,
		-0.426709, -0.895252, 0.128230,
		26.110893, 29.875504, 29.368765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792027, 29.966318, 29.636717>,  <26.409590, 30.502180, 29.279003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792027, 29.966318, 29.636717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553160, 29.755468, 29.394880>,  <26.409840, 29.628958, 29.249779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553160, 29.755468, 29.394880>,  <26.792027, 29.966318, 29.636717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553160, 29.755468, 29.394880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779281, -0.559842, -0.281600,
		-0.190037, -0.639308, 0.745098,
		-0.597166, -0.527126, -0.604591,
		26.374010, 29.597330, 29.213503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706352, 29.235493, 29.859396>,  <26.792027, 29.966318, 29.636717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706352, 29.235493, 29.859396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714466, 29.257906, 29.460108>,  <26.719336, 29.271355, 29.220535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714466, 29.257906, 29.460108>,  <26.706352, 29.235493, 29.859396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714466, 29.257906, 29.460108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809325, -0.587129, -0.016511,
		-0.587011, -0.807551, -0.057261,
		0.020286, 0.056035, -0.998223,
		26.720552, 29.274715, 29.160641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745937, 28.620619, 29.682213>,  <26.706352, 29.235493, 29.859396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745937, 28.620619, 29.682213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908062, 28.863300, 29.408678>,  <27.005337, 29.008909, 29.244558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908062, 28.863300, 29.408678>,  <26.745937, 28.620619, 29.682213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908062, 28.863300, 29.408678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826825, -0.562389, -0.008894,
		-0.389977, -0.561807, -0.729582,
		0.405313, 0.606705, -0.683835,
		27.029655, 29.045311, 29.203527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824881, 28.309212, 29.050194>,  <26.745937, 28.620619, 29.682213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824881, 28.309212, 29.050194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105171, 28.594463, 29.058479>,  <27.273346, 28.765614, 29.063450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105171, 28.594463, 29.058479>,  <26.824881, 28.309212, 29.050194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105171, 28.594463, 29.058479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713307, -0.700849, -0.001842,
		0.013204, 0.016066, -0.999784,
		0.700727, 0.713129, 0.020713,
		27.315390, 28.808401, 29.064693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392155, 27.870642, 28.781668>,  <26.824881, 28.309212, 29.050194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392155, 27.870642, 28.781668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568520, 28.198618, 28.927704>,  <27.674339, 28.395405, 29.015326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568520, 28.198618, 28.927704>,  <27.392155, 27.870642, 28.781668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568520, 28.198618, 28.927704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729909, -0.564274, 0.385782,
		0.522329, 0.096385, -0.847280,
		0.440914, 0.819942, 0.365088,
		27.700794, 28.444601, 29.037230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054935, 27.764015, 28.583612>,  <27.392155, 27.870642, 28.781668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054935, 27.764015, 28.583612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065615, 28.003166, 28.904070>,  <28.072023, 28.146656, 29.096344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065615, 28.003166, 28.904070>,  <28.054935, 27.764015, 28.583612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065615, 28.003166, 28.904070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729433, -0.559650, 0.393345,
		0.683531, 0.573877, -0.451054,
		0.026700, 0.597877, 0.801143,
		28.073626, 28.182529, 29.144413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722162, 27.877647, 28.734394>,  <28.054935, 27.764015, 28.583612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722162, 27.877647, 28.734394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525404, 27.925152, 29.079401>,  <28.407349, 27.953653, 29.286406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525404, 27.925152, 29.079401>,  <28.722162, 27.877647, 28.734394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525404, 27.925152, 29.079401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679920, -0.566385, 0.465744,
		0.543828, 0.815539, 0.197855,
		-0.491894, 0.118759, 0.862517,
		28.377836, 27.960779, 29.338156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096075, 28.266558, 29.282751>,  <28.722162, 27.877647, 28.734394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096075, 28.266558, 29.282751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845638, 27.999828, 29.444420>,  <28.695375, 27.839790, 29.541420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845638, 27.999828, 29.444420>,  <29.096075, 28.266558, 29.282751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845638, 27.999828, 29.444420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773588, -0.466159, 0.429252,
		-0.097828, 0.581413, 0.807706,
		-0.626092, -0.666824, 0.404171,
		28.657810, 27.799782, 29.565672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907825, 28.979654, 29.098284>,  <29.096075, 28.266558, 29.282751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907825, 28.979654, 29.098284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877872, 29.374140, 29.039261>,  <28.859900, 29.610832, 29.003847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877872, 29.374140, 29.039261>,  <28.907825, 28.979654, 29.098284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877872, 29.374140, 29.039261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690982, 0.158008, 0.705391,
		0.718982, -0.049137, -0.693289,
		-0.074885, 0.986215, -0.147557,
		28.855408, 29.670004, 28.994993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590624, 29.110540, 29.136896>,  <28.907825, 28.979654, 29.098284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590624, 29.110540, 29.136896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402409, 29.458338, 29.196999>,  <29.289480, 29.667017, 29.233059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402409, 29.458338, 29.196999>,  <29.590624, 29.110540, 29.136896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402409, 29.458338, 29.196999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704333, 0.267533, 0.657527,
		0.531517, 0.415220, -0.738297,
		-0.470537, 0.869493, 0.150254,
		29.261248, 29.719185, 29.242075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146070, 29.707281, 29.039190>,  <29.590624, 29.110540, 29.136896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146070, 29.707281, 29.039190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833612, 29.845459, 29.247221>,  <29.646137, 29.928366, 29.372040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833612, 29.845459, 29.247221>,  <30.146070, 29.707281, 29.039190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833612, 29.845459, 29.247221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623602, 0.390930, 0.676974,
		0.030541, 0.853137, -0.520792,
		-0.781145, 0.345443, 0.520078,
		29.599268, 29.949091, 29.403244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553040, 30.223621, 29.330246>,  <30.146070, 29.707281, 29.039190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553040, 30.223621, 29.330246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205467, 30.241644, 29.527397>,  <29.996923, 30.252457, 29.645687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205467, 30.241644, 29.527397>,  <30.553040, 30.223621, 29.330246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205467, 30.241644, 29.527397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476406, 0.346044, 0.808264,
		-0.134140, 0.937136, -0.322153,
		-0.868932, 0.045055, 0.492876,
		29.944788, 30.255161, 29.675261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517618, 30.983021, 29.555510>,  <30.553040, 30.223621, 29.330246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517618, 30.983021, 29.555510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308161, 30.715990, 29.767223>,  <30.182487, 30.555773, 29.894253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308161, 30.715990, 29.767223>,  <30.517618, 30.983021, 29.555510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308161, 30.715990, 29.767223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418715, 0.339389, 0.842314,
		-0.741941, 0.662691, 0.101805,
		-0.523642, -0.667575, 0.529285,
		30.151068, 30.515718, 29.926008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119392, 31.320753, 29.959047>,  <30.517618, 30.983021, 29.555510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119392, 31.320753, 29.959047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163269, 30.979174, 30.162512>,  <30.189594, 30.774225, 30.284590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163269, 30.979174, 30.162512>,  <30.119392, 31.320753, 29.959047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163269, 30.979174, 30.162512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316525, 0.515119, 0.796533,
		-0.942221, 0.073631, 0.326800,
		0.109691, -0.853950, 0.508662,
		30.196177, 30.722988, 30.315111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870598, 31.477613, 30.627907>,  <30.119392, 31.320753, 29.959047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870598, 31.477613, 30.627907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050920, 31.127098, 30.695898>,  <30.159113, 30.916788, 30.736692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050920, 31.127098, 30.695898>,  <29.870598, 31.477613, 30.627907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050920, 31.127098, 30.695898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397683, 0.367650, 0.840644,
		-0.799140, -0.311368, 0.514223,
		0.450804, -0.876289, 0.169978,
		30.186161, 30.864212, 30.746891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682995, 31.256588, 31.332254>,  <29.870598, 31.477613, 30.627907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682995, 31.256588, 31.332254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028246, 31.080732, 31.232876>,  <30.235397, 30.975218, 31.173248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028246, 31.080732, 31.232876>,  <29.682995, 31.256588, 31.332254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028246, 31.080732, 31.232876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459257, 0.478826, 0.748204,
		-0.209979, -0.759896, 0.615197,
		0.863129, -0.439640, -0.248445,
		30.287184, 30.948841, 31.158342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863985, 30.810398, 31.899025>,  <29.682995, 31.256588, 31.332254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863985, 30.810398, 31.899025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193951, 30.915600, 31.698885>,  <30.391930, 30.978722, 31.578802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193951, 30.915600, 31.698885>,  <29.863985, 30.810398, 31.899025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193951, 30.915600, 31.698885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409017, 0.333241, 0.849503,
		0.390162, -0.905416, 0.167320,
		0.824911, 0.263007, -0.500349,
		30.441423, 30.994501, 31.548780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373816, 30.607460, 32.339161>,  <29.863985, 30.810398, 31.899025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373816, 30.607460, 32.339161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536856, 30.875696, 32.091236>,  <30.634680, 31.036638, 31.942480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536856, 30.875696, 32.091236>,  <30.373816, 30.607460, 32.339161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536856, 30.875696, 32.091236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481461, 0.418929, 0.769866,
		0.775924, -0.612212, -0.152110,
		0.407598, 0.670593, -0.619813,
		30.659136, 31.076874, 31.905293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035027, 30.619287, 32.505226>,  <30.373816, 30.607460, 32.339161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035027, 30.619287, 32.505226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011456, 30.964508, 32.304562>,  <30.997313, 31.171640, 32.184162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011456, 30.964508, 32.304562>,  <31.035027, 30.619287, 32.505226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011456, 30.964508, 32.304562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352493, 0.488155, 0.798406,
		0.933957, -0.129784, -0.332987,
		-0.058929, 0.863053, -0.501665,
		30.993776, 31.223423, 32.154060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632742, 30.972670, 32.698544>,  <31.035027, 30.619287, 32.505226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632742, 30.972670, 32.698544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371687, 31.245071, 32.565697>,  <31.215054, 31.408512, 32.485989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371687, 31.245071, 32.565697>,  <31.632742, 30.972670, 32.698544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371687, 31.245071, 32.565697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154981, 0.549055, 0.821292,
		0.741651, 0.484534, -0.463876,
		-0.652637, 0.681003, -0.332113,
		31.175896, 31.449373, 32.466064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884808, 31.720346, 32.696571>,  <31.632742, 30.972670, 32.698544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884808, 31.720346, 32.696571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486437, 31.742252, 32.725227>,  <31.247414, 31.755396, 32.742420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486437, 31.742252, 32.725227>,  <31.884808, 31.720346, 32.696571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486437, 31.742252, 32.725227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088468, 0.747193, 0.658693,
		-0.017453, 0.662347, -0.748994,
		-0.995926, 0.054766, 0.071638,
		31.187658, 31.758682, 32.746719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818184, 32.330345, 33.047791>,  <31.884808, 31.720346, 32.696571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818184, 32.330345, 33.047791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443159, 32.191223, 33.046543>,  <31.218145, 32.107750, 33.045795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443159, 32.191223, 33.046543>,  <31.818184, 32.330345, 33.047791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443159, 32.191223, 33.046543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220678, 0.587888, 0.778260,
		-0.268852, 0.730355, -0.627934,
		-0.937561, -0.347808, -0.003119,
		31.161890, 32.086880, 33.045609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414164, 32.940063, 33.227287>,  <31.818184, 32.330345, 33.047791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414164, 32.940063, 33.227287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149687, 32.652477, 33.312992>,  <30.991001, 32.479923, 33.364414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149687, 32.652477, 33.312992>,  <31.414164, 32.940063, 33.227287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149687, 32.652477, 33.312992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323958, 0.531225, 0.782849,
		-0.676667, 0.448200, -0.584156,
		-0.661191, -0.718970, 0.214265,
		30.951330, 32.436787, 33.377270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796143, 33.243484, 33.419830>,  <31.414164, 32.940063, 33.227287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796143, 33.243484, 33.419830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715221, 32.884304, 33.576168>,  <30.666668, 32.668797, 33.669971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715221, 32.884304, 33.576168>,  <30.796143, 33.243484, 33.419830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715221, 32.884304, 33.576168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471120, 0.439113, 0.765000,
		-0.858557, -0.029371, -0.511877,
		-0.202303, -0.897951, 0.390841,
		30.654530, 32.614918, 33.693420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089867, 33.265083, 33.487438>,  <30.796143, 33.243484, 33.419830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089867, 33.265083, 33.487438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258505, 33.009384, 33.744694>,  <30.359688, 32.855965, 33.899048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258505, 33.009384, 33.744694>,  <30.089867, 33.265083, 33.487438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258505, 33.009384, 33.744694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537825, 0.394753, 0.744926,
		-0.730070, -0.659951, -0.177376,
		0.421595, -0.639245, 0.643135,
		30.384983, 32.817612, 33.937634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609335, 33.193001, 33.939182>,  <30.089867, 33.265083, 33.487438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609335, 33.193001, 33.939182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928919, 33.055725, 34.136723>,  <30.120668, 32.973362, 34.255245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928919, 33.055725, 34.136723>,  <29.609335, 33.193001, 33.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928919, 33.055725, 34.136723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349170, 0.403875, 0.845556,
		-0.489636, -0.848003, 0.202850,
		0.798960, -0.343186, 0.493848,
		30.168608, 32.952770, 34.284878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347183, 32.688320, 34.522041>,  <29.609335, 33.193001, 33.939182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347183, 32.688320, 34.522041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692232, 32.876030, 34.597580>,  <29.899261, 32.988655, 34.642902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692232, 32.876030, 34.597580>,  <29.347183, 32.688320, 34.522041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692232, 32.876030, 34.597580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320713, 0.218667, 0.921590,
		0.391189, -0.855548, 0.339130,
		0.862621, 0.469280, 0.188845,
		29.951019, 33.016815, 34.654232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396362, 32.605705, 35.216434>,  <29.347183, 32.688320, 34.522041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396362, 32.605705, 35.216434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658686, 32.894009, 35.126610>,  <29.816080, 33.066990, 35.072716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658686, 32.894009, 35.126610>,  <29.396362, 32.605705, 35.216434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658686, 32.894009, 35.126610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275152, 0.505210, 0.817957,
		0.703000, -0.474632, 0.529638,
		0.655807, 0.720755, -0.224567,
		29.855429, 33.110233, 35.059238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552660, 32.848396, 35.856529>,  <29.396362, 32.605705, 35.216434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552660, 32.848396, 35.856529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666887, 33.155506, 35.627102>,  <29.735424, 33.339771, 35.489445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666887, 33.155506, 35.627102>,  <29.552660, 32.848396, 35.856529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666887, 33.155506, 35.627102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207720, 0.633848, 0.745043,
		0.935577, -0.093619, 0.340488,
		0.285568, 0.767771, -0.573567,
		29.752558, 33.385838, 35.455032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006144, 33.254871, 36.220245>,  <29.552660, 32.848396, 35.856529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006144, 33.254871, 36.220245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853607, 33.488678, 35.933773>,  <29.762085, 33.628963, 35.761890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853607, 33.488678, 35.933773>,  <30.006144, 33.254871, 36.220245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853607, 33.488678, 35.933773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167440, 0.718240, 0.675348,
		0.909144, 0.377455, -0.176022,
		-0.381340, 0.584516, -0.716185,
		29.739204, 33.664032, 35.718918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053875, 33.987751, 36.366379>,  <30.006144, 33.254871, 36.220245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053875, 33.987751, 36.366379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739363, 33.987320, 36.119232>,  <29.550655, 33.987061, 35.970943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739363, 33.987320, 36.119232>,  <30.053875, 33.987751, 36.366379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739363, 33.987320, 36.119232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498556, 0.591795, 0.633420,
		0.364972, 0.806088, -0.465853,
		-0.786281, -0.001073, -0.617868,
		29.503479, 33.987000, 35.933872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880167, 34.731083, 36.444332>,  <30.053875, 33.987751, 36.366379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880167, 34.731083, 36.444332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575022, 34.548660, 36.261009>,  <29.391933, 34.439205, 36.151016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575022, 34.548660, 36.261009>,  <29.880167, 34.731083, 36.444332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575022, 34.548660, 36.261009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637617, 0.413181, 0.650173,
		-0.107150, 0.788222, -0.605991,
		-0.762865, -0.456057, -0.458311,
		29.346163, 34.411842, 36.123516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274082, 34.470657, 37.058426>,  <29.880167, 34.731083, 36.444332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274082, 34.470657, 37.058426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147615, 34.847328, 37.012314>,  <30.071735, 35.073330, 36.984646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147615, 34.847328, 37.012314>,  <30.274082, 34.470657, 37.058426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147615, 34.847328, 37.012314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074885, 0.096364, 0.992525,
		0.945743, 0.322437, 0.040050,
		-0.316167, 0.941673, -0.115282,
		30.052765, 35.129829, 36.977730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672676, 35.140881, 37.406445>,  <30.274082, 34.470657, 37.058426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672676, 35.140881, 37.406445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274841, 35.144855, 37.365067>,  <30.036140, 35.147240, 37.340240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274841, 35.144855, 37.365067>,  <30.672676, 35.140881, 37.406445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274841, 35.144855, 37.365067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103800, -0.047865, 0.993446,
		0.004917, 0.998805, 0.048637,
		-0.994586, 0.009933, -0.103441,
		29.976465, 35.147835, 37.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873276, 35.372227, 36.714458>,  <30.672676, 35.140881, 37.406445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873276, 35.372227, 36.714458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035902, 35.627834, 36.453274>,  <31.133478, 35.781200, 36.296562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035902, 35.627834, 36.453274>,  <30.873276, 35.372227, 36.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035902, 35.627834, 36.453274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772684, -0.621861, -0.127471,
		-0.487506, -0.452706, -0.746589,
		0.406568, 0.639020, -0.652960,
		31.157873, 35.819542, 36.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879766, 35.023182, 36.018532>,  <30.873276, 35.372227, 36.714458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879766, 35.023182, 36.018532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170370, 35.286266, 36.098129>,  <31.344732, 35.444118, 36.145885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170370, 35.286266, 36.098129>,  <30.879766, 35.023182, 36.018532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170370, 35.286266, 36.098129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649056, -0.751912, 0.115562,
		0.225630, 0.045199, -0.973164,
		0.726510, 0.657712, 0.198991,
		31.388323, 35.483582, 36.157825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328621, 35.125816, 35.416363>,  <30.879766, 35.023182, 36.018532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328621, 35.125816, 35.416363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458395, 35.168751, 35.792282>,  <31.536259, 35.194511, 36.017834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458395, 35.168751, 35.792282>,  <31.328621, 35.125816, 35.416363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458395, 35.168751, 35.792282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403771, -0.914191, -0.034981,
		0.855402, 0.390812, -0.339932,
		0.324434, 0.107332, 0.939799,
		31.555725, 35.200951, 36.074223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130272, 35.105690, 35.489937>,  <31.328621, 35.125816, 35.416363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130272, 35.105690, 35.489937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936871, 34.974957, 35.814751>,  <31.820829, 34.896515, 36.009640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936871, 34.974957, 35.814751>,  <32.130272, 35.105690, 35.489937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936871, 34.974957, 35.814751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607731, -0.792995, 0.042685,
		0.629989, 0.514137, 0.582045,
		-0.483505, -0.326836, 0.812035,
		31.791819, 34.876907, 36.058361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477608, 34.859169, 34.876663>,  <32.130272, 35.105690, 35.489937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477608, 34.859169, 34.876663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778271, 34.619358, 34.986633>,  <32.958668, 34.475471, 35.052616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778271, 34.619358, 34.986633>,  <32.477608, 34.859169, 34.876663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778271, 34.619358, 34.986633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206555, -0.609841, -0.765133,
		0.626380, 0.518327, -0.582225,
		0.751654, -0.599525, 0.274929,
		33.003765, 34.439499, 35.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162605, 35.140965, 34.524475>,  <32.477608, 34.859169, 34.876663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162605, 35.140965, 34.524475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452286, 35.416756, 34.529377>,  <33.626095, 35.582230, 34.532318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452286, 35.416756, 34.529377>,  <33.162605, 35.140965, 34.524475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452286, 35.416756, 34.529377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521228, 0.535671, 0.664363,
		0.451500, -0.487521, 0.747310,
		0.724203, 0.689478, 0.012254,
		33.669548, 35.623600, 34.533054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334175, 35.221695, 35.196903>,  <33.162605, 35.140965, 34.524475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334175, 35.221695, 35.196903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466038, 35.559582, 35.028248>,  <33.545155, 35.762314, 34.927055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466038, 35.559582, 35.028248>,  <33.334175, 35.221695, 35.196903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466038, 35.559582, 35.028248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375022, 0.527021, 0.762632,
		0.866421, -0.093283, 0.490524,
		0.329657, 0.844717, -0.421639,
		33.564934, 35.812996, 34.901756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752502, 35.497383, 35.710865>,  <33.334175, 35.221695, 35.196903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752502, 35.497383, 35.710865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626343, 35.787476, 35.466061>,  <33.550648, 35.961533, 35.319176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626343, 35.787476, 35.466061>,  <33.752502, 35.497383, 35.710865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626343, 35.787476, 35.466061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366493, 0.501801, 0.783504,
		0.875333, 0.471412, 0.107528,
		-0.315396, 0.725235, -0.612013,
		33.531723, 36.005047, 35.282455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910736, 36.102345, 36.023331>,  <33.752502, 35.497383, 35.710865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910736, 36.102345, 36.023331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622829, 36.211605, 35.768040>,  <33.450085, 36.277161, 35.614864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622829, 36.211605, 35.768040>,  <33.910736, 36.102345, 36.023331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622829, 36.211605, 35.768040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445983, 0.522604, 0.726626,
		0.532015, 0.807636, -0.254332,
		-0.719764, 0.273148, -0.638224,
		33.406898, 36.293549, 35.576572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737255, 36.786880, 36.221512>,  <33.910736, 36.102345, 36.023331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737255, 36.786880, 36.221512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416405, 36.659397, 36.019512>,  <33.223896, 36.582909, 35.898312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416405, 36.659397, 36.019512>,  <33.737255, 36.786880, 36.221512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416405, 36.659397, 36.019512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596281, 0.381613, 0.706272,
		-0.032381, 0.867638, -0.496140,
		-0.802122, -0.318709, -0.505000,
		33.175770, 36.563786, 35.868011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329441, 37.314812, 36.365540>,  <33.737255, 36.786880, 36.221512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329441, 37.314812, 36.365540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062744, 37.069981, 36.195450>,  <32.902725, 36.923080, 36.093395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062744, 37.069981, 36.195450>,  <33.329441, 37.314812, 36.365540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062744, 37.069981, 36.195450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722007, 0.388974, 0.572194,
		-0.184830, 0.688517, -0.701272,
		-0.666742, -0.612081, -0.425220,
		32.862720, 36.886356, 36.067883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798004, 37.726643, 36.263897>,  <33.329441, 37.314812, 36.365540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798004, 37.726643, 36.263897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670826, 37.347401, 36.264870>,  <32.594521, 37.119854, 36.265453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670826, 37.347401, 36.264870>,  <32.798004, 37.726643, 36.263897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670826, 37.347401, 36.264870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706946, 0.238785, 0.665740,
		-0.631773, 0.209947, -0.746180,
		-0.317946, -0.948105, 0.002437,
		32.575443, 37.062969, 36.265602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099884, 37.780441, 36.203426>,  <32.798004, 37.726643, 36.263897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099884, 37.780441, 36.203426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182468, 37.423389, 36.363720>,  <32.232018, 37.209160, 36.459896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182468, 37.423389, 36.363720>,  <32.099884, 37.780441, 36.203426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182468, 37.423389, 36.363720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623893, 0.195398, 0.756688,
		-0.753745, -0.406240, -0.516563,
		0.206462, -0.892630, 0.400731,
		32.244408, 37.155602, 36.483940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491014, 37.379440, 36.149239>,  <32.099884, 37.780441, 36.203426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491014, 37.379440, 36.149239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684580, 37.222542, 36.462151>,  <31.800718, 37.128403, 36.649899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684580, 37.222542, 36.462151>,  <31.491014, 37.379440, 36.149239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684580, 37.222542, 36.462151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745358, 0.283665, 0.603304,
		-0.458553, -0.875028, -0.155098,
		0.483912, -0.392250, 0.782285,
		31.829754, 37.104866, 36.696835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968538, 37.218555, 36.597500>,  <31.491014, 37.379440, 36.149239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968538, 37.218555, 36.597500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276587, 37.146271, 36.842205>,  <31.461416, 37.102901, 36.989029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276587, 37.146271, 36.842205>,  <30.968538, 37.218555, 36.597500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276587, 37.146271, 36.842205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633057, -0.098572, 0.767804,
		-0.078444, -0.978585, -0.190309,
		0.770120, -0.180706, 0.611768,
		31.507622, 37.092060, 37.025734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995636, 36.493771, 36.977684>,  <30.968538, 37.218555, 36.597500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995636, 36.493771, 36.977684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195009, 36.750645, 37.210636>,  <31.314632, 36.904770, 37.350407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195009, 36.750645, 37.210636>,  <30.995636, 36.493771, 36.977684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195009, 36.750645, 37.210636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645292, -0.173783, 0.743907,
		0.578932, -0.746592, 0.327777,
		0.498433, 0.642183, 0.582379,
		31.344540, 36.943298, 37.385349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056734, 36.113983, 37.673901>,  <30.995636, 36.493771, 36.977684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056734, 36.113983, 37.673901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156078, 36.477028, 37.809284>,  <31.215685, 36.694855, 37.890514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156078, 36.477028, 37.809284>,  <31.056734, 36.113983, 37.673901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156078, 36.477028, 37.809284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757734, -0.035641, 0.651589,
		0.603454, -0.418293, 0.678878,
		0.248359, 0.907613, 0.338462,
		31.230587, 36.749313, 37.910824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956541, 36.064381, 38.422989>,  <31.056734, 36.113983, 37.673901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956541, 36.064381, 38.422989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995178, 36.454147, 38.341812>,  <31.018360, 36.688007, 38.293106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995178, 36.454147, 38.341812>,  <30.956541, 36.064381, 38.422989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995178, 36.454147, 38.341812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603528, 0.219478, 0.766540,
		0.791469, 0.048438, 0.609287,
		0.096595, 0.974414, -0.202944,
		31.024157, 36.746471, 38.280930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057909, 36.395084, 39.033516>,  <30.956541, 36.064381, 38.422989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057909, 36.395084, 39.033516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940763, 36.688526, 38.788219>,  <30.870476, 36.864590, 38.641041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940763, 36.688526, 38.788219>,  <31.057909, 36.395084, 39.033516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940763, 36.688526, 38.788219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542352, 0.400749, 0.738414,
		0.787456, 0.548844, 0.280506,
		-0.292862, 0.733601, -0.613239,
		30.852905, 36.908607, 38.604248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059546, 37.018509, 39.444649>,  <31.057909, 36.395084, 39.033516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059546, 37.018509, 39.444649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840469, 37.078457, 39.115387>,  <30.709024, 37.114426, 38.917831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840469, 37.078457, 39.115387>,  <31.059546, 37.018509, 39.444649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840469, 37.078457, 39.115387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737499, 0.378151, 0.559551,
		0.395136, 0.913532, -0.096577,
		-0.547688, 0.149873, -0.823150,
		30.676163, 37.123417, 38.868443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005270, 37.704216, 39.308430>,  <31.059546, 37.018509, 39.444649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005270, 37.704216, 39.308430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680981, 37.514988, 39.170486>,  <30.486406, 37.401451, 39.087719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680981, 37.514988, 39.170486>,  <31.005270, 37.704216, 39.308430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680981, 37.514988, 39.170486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471884, 0.179423, 0.863211,
		-0.346481, 0.862562, -0.368696,
		-0.810726, -0.473068, -0.344863,
		30.437763, 37.373066, 39.067028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503817, 38.075096, 39.567501>,  <31.005270, 37.704216, 39.308430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503817, 38.075096, 39.567501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322466, 37.729053, 39.481682>,  <30.213655, 37.521427, 39.430191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322466, 37.729053, 39.481682>,  <30.503817, 38.075096, 39.567501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322466, 37.729053, 39.481682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607087, 0.123476, 0.784983,
		-0.652605, 0.486146, -0.581179,
		-0.453378, -0.865110, -0.214552,
		30.186453, 37.469521, 39.417316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787836, 38.152863, 39.712620>,  <30.503817, 38.075096, 39.567501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787836, 38.152863, 39.712620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805717, 37.754173, 39.685654>,  <29.816446, 37.514961, 39.669472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805717, 37.754173, 39.685654>,  <29.787836, 38.152863, 39.712620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805717, 37.754173, 39.685654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640048, -0.080389, 0.764118,
		-0.767033, 0.008993, -0.641544,
		0.044701, -0.996723, -0.067417,
		29.819128, 37.455158, 39.665428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020781, 37.850906, 39.701344>,  <29.787836, 38.152863, 39.712620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020781, 37.850906, 39.701344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252275, 37.545322, 39.815487>,  <29.391172, 37.361973, 39.883972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252275, 37.545322, 39.815487>,  <29.020781, 37.850906, 39.701344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252275, 37.545322, 39.815487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650140, -0.220972, 0.726973,
		-0.492323, -0.606247, -0.624566,
		0.578736, -0.763961, 0.285356,
		29.425896, 37.316135, 39.901093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659197, 37.206047, 39.652233>,  <29.020781, 37.850906, 39.701344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659197, 37.206047, 39.652233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957705, 37.158150, 39.914146>,  <29.136810, 37.129410, 40.071293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957705, 37.158150, 39.914146>,  <28.659197, 37.206047, 39.652233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957705, 37.158150, 39.914146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648512, -0.352532, 0.674651,
		0.150046, -0.928107, -0.340740,
		0.746270, -0.119745, 0.654784,
		29.181585, 37.122227, 40.110580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462751, 36.551884, 40.021729>,  <28.659197, 37.206047, 39.652233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462751, 36.551884, 40.021729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711348, 36.762283, 40.253960>,  <28.860506, 36.888523, 40.393299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711348, 36.762283, 40.253960>,  <28.462751, 36.551884, 40.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711348, 36.762283, 40.253960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557690, -0.223430, 0.799412,
		0.550211, -0.820611, 0.154486,
		0.621490, 0.526000, 0.580581,
		28.897795, 36.920082, 40.428135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574722, 36.171265, 40.623863>,  <28.462751, 36.551884, 40.021729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574722, 36.171265, 40.623863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687895, 36.540779, 40.727066>,  <28.755798, 36.762489, 40.788986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687895, 36.540779, 40.727066>,  <28.574722, 36.171265, 40.623863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687895, 36.540779, 40.727066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403852, -0.129248, 0.905648,
		0.869973, -0.360431, 0.336506,
		0.282931, 0.923788, 0.258004,
		28.772774, 36.817917, 40.804466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535704, 36.146030, 41.441971>,  <28.574722, 36.171265, 40.623863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535704, 36.146030, 41.441971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569580, 36.532402, 41.344147>,  <28.589907, 36.764225, 41.285454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569580, 36.532402, 41.344147>,  <28.535704, 36.146030, 41.441971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569580, 36.532402, 41.344147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464089, 0.255432, 0.848161,
		0.881731, 0.041663, 0.469910,
		0.084693, 0.965929, -0.244557,
		28.594988, 36.822182, 41.270779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831902, 36.462414, 41.959751>,  <28.535704, 36.146030, 41.441971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831902, 36.462414, 41.959751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609562, 36.738113, 41.773865>,  <28.476158, 36.903534, 41.662334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609562, 36.738113, 41.773865>,  <28.831902, 36.462414, 41.959751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609562, 36.738113, 41.773865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302425, 0.353056, 0.885376,
		0.774319, 0.632678, 0.012201,
		-0.555850, 0.689253, -0.464716,
		28.442806, 36.944889, 41.634449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907887, 36.909428, 42.405582>,  <28.831902, 36.462414, 41.959751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907887, 36.909428, 42.405582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594284, 37.039452, 42.194046>,  <28.406122, 37.117466, 42.067123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594284, 37.039452, 42.194046>,  <28.907887, 36.909428, 42.405582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594284, 37.039452, 42.194046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427181, 0.335600, 0.839577,
		0.450393, 0.884143, -0.124251,
		-0.784004, 0.325062, -0.528841,
		28.359083, 37.136971, 42.035393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760029, 37.491100, 42.773273>,  <28.907887, 36.909428, 42.405582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760029, 37.491100, 42.773273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428232, 37.403141, 42.567909>,  <28.229155, 37.350365, 42.444691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428232, 37.403141, 42.567909>,  <28.760029, 37.491100, 42.773273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428232, 37.403141, 42.567909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558397, 0.345734, 0.754096,
		0.011681, 0.912203, -0.409572,
		-0.829492, -0.219895, -0.513410,
		28.179384, 37.337173, 42.413887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420349, 38.161190, 42.758495>,  <28.760029, 37.491100, 42.773273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420349, 38.161190, 42.758495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154537, 37.868874, 42.696091>,  <27.995050, 37.693485, 42.658646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154537, 37.868874, 42.696091>,  <28.420349, 38.161190, 42.758495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154537, 37.868874, 42.696091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450129, 0.224819, 0.864199,
		-0.596474, 0.644515, -0.478350,
		-0.664532, -0.730792, -0.156016,
		27.955177, 37.649635, 42.649284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756414, 38.434902, 43.074841>,  <28.420349, 38.161190, 42.758495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756414, 38.434902, 43.074841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719645, 38.039986, 43.022984>,  <27.697582, 37.803036, 42.991871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719645, 38.039986, 43.022984>,  <27.756414, 38.434902, 43.074841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719645, 38.039986, 43.022984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474665, -0.071004, 0.877298,
		-0.875353, 0.142184, -0.462105,
		-0.091926, -0.987291, -0.129643,
		27.692066, 37.743797, 42.984089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106750, 38.291580, 43.241566>,  <27.756414, 38.434902, 43.074841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106750, 38.291580, 43.241566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301077, 37.946167, 43.295681>,  <27.417673, 37.738918, 43.328148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301077, 37.946167, 43.295681>,  <27.106750, 38.291580, 43.241566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301077, 37.946167, 43.295681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278607, -0.006285, 0.960385,
		-0.828470, -0.504260, -0.243638,
		0.485815, -0.863529, 0.135284,
		27.446821, 37.687107, 43.336266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778181, 38.033508, 43.787628>,  <27.106750, 38.291580, 43.241566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778181, 38.033508, 43.787628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080914, 37.773201, 43.763264>,  <27.262552, 37.617016, 43.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080914, 37.773201, 43.763264>,  <26.778181, 38.033508, 43.787628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080914, 37.773201, 43.763264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089278, -0.195241, 0.976683,
		-0.647486, -0.733745, -0.205863,
		0.756830, -0.650768, -0.060909,
		27.307962, 37.577972, 43.744991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505636, 37.437115, 44.051094>,  <26.778181, 38.033508, 43.787628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505636, 37.437115, 44.051094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901613, 37.407341, 44.099224>,  <27.139198, 37.389477, 44.128101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901613, 37.407341, 44.099224>,  <26.505636, 37.437115, 44.051094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901613, 37.407341, 44.099224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141483, -0.519879, 0.842442,
		-0.000152, -0.850991, -0.525180,
		0.989941, -0.074432, 0.120321,
		27.198595, 37.385010, 44.135319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690113, 36.688866, 44.231426>,  <26.505636, 37.437115, 44.051094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690113, 36.688866, 44.231426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998220, 36.912781, 44.353619>,  <27.183086, 37.047131, 44.426933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998220, 36.912781, 44.353619>,  <26.690113, 36.688866, 44.231426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998220, 36.912781, 44.353619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086244, -0.566059, 0.819841,
		0.631858, -0.605154, -0.484297,
		0.770271, 0.559791, 0.305478,
		27.229301, 37.080719, 44.445263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066442, 36.275246, 44.691250>,  <26.690113, 36.688866, 44.231426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066442, 36.275246, 44.691250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204622, 36.632862, 44.805347>,  <27.287529, 36.847431, 44.873806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.204622, 36.632862, 44.805347>,  <27.066442, 36.275246, 44.691250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204622, 36.632862, 44.805347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019218, -0.310627, 0.950337,
		0.938241, -0.322810, -0.124487,
		0.345447, 0.894038, 0.285240,
		27.308256, 36.901073, 44.890919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676188, 36.137299, 45.078606>,  <27.066442, 36.275246, 44.691250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676188, 36.137299, 45.078606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505999, 36.482952, 45.186127>,  <27.403885, 36.690342, 45.250637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505999, 36.482952, 45.186127>,  <27.676188, 36.137299, 45.078606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505999, 36.482952, 45.186127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010675, -0.301795, 0.953313,
		0.904909, 0.402737, 0.137629,
		-0.425470, 0.864131, 0.268798,
		27.378357, 36.742191, 45.266766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878527, 36.264362, 45.836952>,  <27.676188, 36.137299, 45.078606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878527, 36.264362, 45.836952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568659, 36.509880, 45.776100>,  <27.382738, 36.657192, 45.739590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568659, 36.509880, 45.776100>,  <27.878527, 36.264362, 45.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568659, 36.509880, 45.776100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356489, -0.225187, 0.906756,
		0.522308, 0.756666, 0.393257,
		-0.774668, 0.613797, -0.152126,
		27.336258, 36.694019, 45.730461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783514, 36.572742, 46.498238>,  <27.878527, 36.264362, 45.836952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783514, 36.572742, 46.498238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449724, 36.700108, 46.318344>,  <27.249451, 36.776527, 46.210407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.449724, 36.700108, 46.318344>,  <27.783514, 36.572742, 46.498238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449724, 36.700108, 46.318344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453647, 0.066337, 0.888709,
		0.312814, 0.945626, 0.089093,
		-0.834477, 0.318417, -0.449732,
		27.199381, 36.795631, 46.183426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543703, 37.220436, 46.874329>,  <27.783514, 36.572742, 46.498238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543703, 37.220436, 46.874329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226034, 37.045883, 46.705162>,  <27.035433, 36.941151, 46.603661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226034, 37.045883, 46.705162>,  <27.543703, 37.220436, 46.874329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226034, 37.045883, 46.705162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476741, 0.015836, 0.878901,
		-0.376839, 0.899622, -0.220617,
		-0.794173, -0.436382, -0.422919,
		26.987782, 36.914970, 46.578285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960485, 37.598389, 47.004608>,  <27.543703, 37.220436, 46.874329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960485, 37.598389, 47.004608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820684, 37.231369, 46.928764>,  <26.736803, 37.011158, 46.883259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820684, 37.231369, 46.928764>,  <26.960485, 37.598389, 47.004608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820684, 37.231369, 46.928764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537482, 0.030588, 0.842720,
		-0.767437, 0.396446, -0.503856,
		-0.349505, -0.917548, -0.189608,
		26.715834, 36.956104, 46.871883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216230, 37.686954, 46.987888>,  <26.960485, 37.598389, 47.004608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216230, 37.686954, 46.987888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294907, 37.302788, 47.066788>,  <26.342113, 37.072289, 47.114128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294907, 37.302788, 47.066788>,  <26.216230, 37.686954, 46.987888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294907, 37.302788, 47.066788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380958, 0.110512, 0.917964,
		-0.903429, -0.255700, -0.344142,
		0.196692, -0.960419, 0.197251,
		26.353914, 37.014664, 47.125961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592781, 37.278118, 47.156960>,  <26.216230, 37.686954, 46.987888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592781, 37.278118, 47.156960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924940, 37.161201, 47.346699>,  <26.124235, 37.091053, 47.460541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924940, 37.161201, 47.346699>,  <25.592781, 37.278118, 47.156960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924940, 37.161201, 47.346699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461245, 0.116956, 0.879531,
		-0.312556, -0.949151, -0.037697,
		0.830399, -0.292290, 0.474346,
		26.174059, 37.073513, 47.489002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488050, 36.653824, 47.580826>,  <25.592781, 37.278118, 47.156960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488050, 36.653824, 47.580826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808195, 36.834755, 47.738213>,  <26.000282, 36.943314, 47.832645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808195, 36.834755, 47.738213>,  <25.488050, 36.653824, 47.580826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808195, 36.834755, 47.738213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379496, -0.125834, 0.916596,
		0.464113, -0.882931, 0.070944,
		0.800363, 0.452327, 0.393470,
		26.048304, 36.970451, 47.856255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654881, 36.213486, 48.187660>,  <25.488050, 36.653824, 47.580826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654881, 36.213486, 48.187660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739622, 36.601765, 48.233044>,  <25.790466, 36.834732, 48.260273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739622, 36.601765, 48.233044>,  <25.654881, 36.213486, 48.187660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739622, 36.601765, 48.233044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128001, -0.087535, 0.987904,
		0.968883, -0.223813, 0.105706,
		0.211853, 0.970693, 0.113460,
		25.803179, 36.892971, 48.267082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312263, 36.268929, 47.802372>,  <25.654881, 36.213486, 48.187660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312263, 36.268929, 47.802372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944080, 36.206181, 47.659184>,  <25.723169, 36.168533, 47.573269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944080, 36.206181, 47.659184>,  <26.312263, 36.268929, 47.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944080, 36.206181, 47.659184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367094, -0.661378, -0.654080,
		-0.134150, -0.733465, 0.666359,
		-0.920460, -0.156871, -0.357974,
		25.667942, 36.159119, 47.551792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985821, 35.605549, 47.728210>,  <26.312263, 36.268929, 47.802372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985821, 35.605549, 47.728210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789972, 35.820004, 47.453159>,  <25.672462, 35.948677, 47.288128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789972, 35.820004, 47.453159>,  <25.985821, 35.605549, 47.728210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789972, 35.820004, 47.453159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035052, -0.775882, -0.629903,
		-0.871231, -0.332516, 0.361095,
		-0.489620, 0.536134, -0.687628,
		25.643085, 35.980843, 47.246872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419220, 35.363125, 47.544006>,  <25.985821, 35.605549, 47.728210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419220, 35.363125, 47.544006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588322, 35.543076, 47.229328>,  <25.689783, 35.651047, 47.040524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588322, 35.543076, 47.229328>,  <25.419220, 35.363125, 47.544006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588322, 35.543076, 47.229328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016878, -0.864021, -0.503173,
		-0.906086, 0.225997, -0.357678,
		0.422756, 0.449881, -0.786692,
		25.715149, 35.678040, 46.993320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637623, 34.797653, 47.911911>,  <25.419220, 35.363125, 47.544006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637623, 34.797653, 47.911911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693279, 34.554710, 48.224770>,  <25.726673, 34.408943, 48.412487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.693279, 34.554710, 48.224770>,  <25.637623, 34.797653, 47.911911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693279, 34.554710, 48.224770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796368, -0.400826, -0.452919,
		0.588589, 0.685899, 0.427908,
		0.139140, -0.607356, 0.782150,
		25.735022, 34.372505, 48.459415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186325, 34.993877, 48.434643>,  <25.637623, 34.797653, 47.911911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186325, 34.993877, 48.434643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121029, 34.603725, 48.375332>,  <26.081850, 34.369633, 48.339745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121029, 34.603725, 48.375332>,  <26.186325, 34.993877, 48.434643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121029, 34.603725, 48.375332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884495, -0.078109, -0.459965,
		0.437059, -0.206235, 0.875469,
		-0.163243, -0.975380, -0.148276,
		26.072056, 34.311111, 48.330849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719557, 34.823410, 48.097004>,  <26.186325, 34.993877, 48.434643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719557, 34.823410, 48.097004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553995, 34.460304, 48.069752>,  <26.454659, 34.242439, 48.053402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.553995, 34.460304, 48.069752>,  <26.719557, 34.823410, 48.097004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553995, 34.460304, 48.069752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657268, -0.246231, -0.712299,
		0.629826, -0.339602, 0.698562,
		-0.413906, -0.907767, -0.068127,
		26.429823, 34.187973, 48.049313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221851, 34.219482, 48.228245>,  <26.719557, 34.823410, 48.097004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221851, 34.219482, 48.228245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940269, 34.145508, 47.953945>,  <26.771320, 34.101124, 47.789368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940269, 34.145508, 47.953945>,  <27.221851, 34.219482, 48.228245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940269, 34.145508, 47.953945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708896, -0.123433, -0.694429,
		0.043780, -0.974968, 0.217991,
		-0.703953, -0.184935, -0.685747,
		26.729084, 34.090027, 47.748222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361240, 33.509365, 47.865940>,  <27.221851, 34.219482, 48.228245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361240, 33.509365, 47.865940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199314, 33.817619, 47.669067>,  <27.102158, 34.002571, 47.550945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199314, 33.817619, 47.669067>,  <27.361240, 33.509365, 47.865940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199314, 33.817619, 47.669067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661327, -0.124972, -0.739614,
		-0.631483, -0.624901, -0.459052,
		-0.404817, 0.770637, -0.492181,
		27.077869, 34.048809, 47.521412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237404, 33.321548, 47.193573>,  <27.361240, 33.509365, 47.865940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237404, 33.321548, 47.193573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236940, 33.719406, 47.152233>,  <27.236662, 33.958122, 47.127430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236940, 33.719406, 47.152233>,  <27.237404, 33.321548, 47.193573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236940, 33.719406, 47.152233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503186, -0.088730, -0.859611,
		-0.864177, -0.052996, -0.500389,
		-0.001157, 0.994645, -0.103345,
		27.236593, 34.017799, 47.121231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001104, 33.334229, 46.548595>,  <27.237404, 33.321548, 47.193573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001104, 33.334229, 46.548595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173843, 33.679783, 46.652290>,  <27.277487, 33.887115, 46.714508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173843, 33.679783, 46.652290>,  <27.001104, 33.334229, 46.548595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173843, 33.679783, 46.652290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569026, -0.037951, -0.821443,
		-0.699798, 0.502250, -0.507965,
		0.431847, 0.863889, 0.259236,
		27.303398, 33.938950, 46.730061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112614, 33.582375, 45.935638>,  <27.001104, 33.334229, 46.548595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112614, 33.582375, 45.935638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327528, 33.818661, 46.176430>,  <27.456476, 33.960434, 46.320904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327528, 33.818661, 46.176430>,  <27.112614, 33.582375, 45.935638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327528, 33.818661, 46.176430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741347, 0.009554, -0.671054,
		-0.402155, 0.806822, -0.432794,
		0.537286, 0.590718, 0.601977,
		27.488714, 33.995876, 46.357021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331940, 34.114532, 45.486172>,  <27.112614, 33.582375, 45.935638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331940, 34.114532, 45.486172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574755, 34.095722, 45.803486>,  <27.720444, 34.084435, 45.993874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574755, 34.095722, 45.803486>,  <27.331940, 34.114532, 45.486172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574755, 34.095722, 45.803486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772362, -0.199975, -0.602881,
		0.186988, 0.978672, -0.085071,
		0.607035, -0.047026, 0.793282,
		27.756865, 34.081615, 46.041470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879795, 34.451408, 45.252132>,  <27.331940, 34.114532, 45.486172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879795, 34.451408, 45.252132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032131, 34.256435, 45.566425>,  <28.123533, 34.139454, 45.755001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032131, 34.256435, 45.566425>,  <27.879795, 34.451408, 45.252132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032131, 34.256435, 45.566425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824843, -0.204921, -0.526917,
		0.417847, 0.848776, 0.324009,
		0.380839, -0.487428, 0.785733,
		28.146383, 34.110207, 45.802147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602449, 34.690510, 45.297222>,  <27.879795, 34.451408, 45.252132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602449, 34.690510, 45.297222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586096, 34.335693, 45.481174>,  <28.576284, 34.122803, 45.591545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586096, 34.335693, 45.481174>,  <28.602449, 34.690510, 45.297222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586096, 34.335693, 45.481174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769122, -0.321738, -0.552210,
		0.637793, 0.331130, 0.695394,
		-0.040882, -0.887039, 0.459882,
		28.573832, 34.069580, 45.619141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276556, 34.439163, 45.290222>,  <28.602449, 34.690510, 45.297222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276556, 34.439163, 45.290222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038231, 34.121799, 45.340038>,  <28.895235, 33.931381, 45.369930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038231, 34.121799, 45.340038>,  <29.276556, 34.439163, 45.290222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038231, 34.121799, 45.340038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421978, -0.441209, -0.792003,
		0.683330, -0.419333, 0.597679,
		-0.595814, -0.793407, 0.124543,
		28.859488, 33.883778, 45.377399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662573, 33.924068, 45.395443>,  <29.276556, 34.439163, 45.290222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662573, 33.924068, 45.395443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314590, 33.785034, 45.255524>,  <29.105801, 33.701614, 45.171574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314590, 33.785034, 45.255524>,  <29.662573, 33.924068, 45.395443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314590, 33.785034, 45.255524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480427, -0.437468, -0.760139,
		0.111189, -0.829341, 0.547568,
		-0.869958, -0.347586, -0.349796,
		29.053602, 33.680759, 45.150585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761379, 33.235310, 45.316490>,  <29.662573, 33.924068, 45.395443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761379, 33.235310, 45.316490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446796, 33.301762, 45.078537>,  <29.258047, 33.341633, 44.935764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446796, 33.301762, 45.078537>,  <29.761379, 33.235310, 45.316490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446796, 33.301762, 45.078537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414853, -0.571458, -0.708048,
		-0.457578, -0.803639, 0.380509,
		-0.786460, 0.166132, -0.594879,
		29.210859, 33.351601, 44.900074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651842, 32.592579, 45.034946>,  <29.761379, 33.235310, 45.316490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651842, 32.592579, 45.034946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495628, 32.869617, 44.792362>,  <29.401901, 33.035843, 44.646812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495628, 32.869617, 44.792362>,  <29.651842, 32.592579, 45.034946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495628, 32.869617, 44.792362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542267, -0.359283, -0.759515,
		-0.743930, -0.625476, -0.235262,
		-0.390532, 0.692600, -0.606456,
		29.378469, 33.077396, 44.610424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636593, 32.290779, 44.460682>,  <29.651842, 32.592579, 45.034946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636593, 32.290779, 44.460682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598185, 32.662617, 44.318336>,  <29.575140, 32.885719, 44.232929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598185, 32.662617, 44.318336>,  <29.636593, 32.290779, 44.460682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598185, 32.662617, 44.318336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457118, -0.276407, -0.845365,
		-0.884208, -0.243844, -0.398392,
		-0.096019, 0.929591, -0.355867,
		29.569378, 32.941494, 44.211575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680267, 32.217579, 43.721104>,  <29.636593, 32.290779, 44.460682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680267, 32.217579, 43.721104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752409, 32.608032, 43.769482>,  <29.795694, 32.842304, 43.798508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752409, 32.608032, 43.769482>,  <29.680267, 32.217579, 43.721104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752409, 32.608032, 43.769482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478695, 0.020306, -0.877746,
		-0.859257, 0.216202, -0.463610,
		0.180356, 0.976137, 0.120943,
		29.806517, 32.900875, 43.805763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495253, 32.495083, 43.116299>,  <29.680267, 32.217579, 43.721104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495253, 32.495083, 43.116299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759678, 32.747826, 43.278164>,  <29.918333, 32.899471, 43.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759678, 32.747826, 43.278164>,  <29.495253, 32.495083, 43.116299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759678, 32.747826, 43.278164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502576, 0.027585, -0.864093,
		-0.557146, 0.774593, -0.299321,
		0.661064, 0.631858, 0.404661,
		29.957996, 32.937382, 43.399563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492197, 33.080505, 42.657852>,  <29.495253, 32.495083, 43.116299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492197, 33.080505, 42.657852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829897, 33.088856, 42.872070>,  <30.032516, 33.093864, 43.000599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829897, 33.088856, 42.872070>,  <29.492197, 33.080505, 42.657852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829897, 33.088856, 42.872070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534796, 0.032722, -0.844348,
		-0.035148, 0.999246, 0.016463,
		0.844250, 0.020873, 0.535543,
		30.083172, 33.095119, 43.032734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918224, 33.528839, 42.191643>,  <29.492197, 33.080505, 42.657852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918224, 33.528839, 42.191643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155050, 33.321411, 42.438396>,  <30.297146, 33.196953, 42.586449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155050, 33.321411, 42.438396>,  <29.918224, 33.528839, 42.191643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155050, 33.321411, 42.438396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698068, -0.052486, -0.714105,
		0.402693, 0.853421, 0.330924,
		0.592063, -0.518573, 0.616882,
		30.332668, 33.165840, 42.623463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546955, 33.757374, 41.981308>,  <29.918224, 33.528839, 42.191643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546955, 33.757374, 41.981308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589869, 33.416851, 42.186741>,  <30.615616, 33.212536, 42.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589869, 33.416851, 42.186741>,  <30.546955, 33.757374, 41.981308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589869, 33.416851, 42.186741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731187, -0.282463, -0.620951,
		0.673688, 0.442141, 0.592162,
		0.107284, -0.851308, 0.513580,
		30.622053, 33.161457, 42.340816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264656, 33.765446, 42.173401>,  <30.546955, 33.757374, 41.981308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264656, 33.765446, 42.173401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130842, 33.389469, 42.200527>,  <31.050554, 33.163883, 42.216805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130842, 33.389469, 42.200527>,  <31.264656, 33.765446, 42.173401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130842, 33.389469, 42.200527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826380, -0.327186, -0.458307,
		0.452971, -0.097275, 0.886203,
		-0.334535, -0.939940, 0.067820,
		31.030481, 33.107487, 42.220875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830471, 33.386490, 42.239662>,  <31.264656, 33.765446, 42.173401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830471, 33.386490, 42.239662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565407, 33.116280, 42.110329>,  <31.406368, 32.954155, 42.032730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565407, 33.116280, 42.110329>,  <31.830471, 33.386490, 42.239662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565407, 33.116280, 42.110329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626818, -0.264001, -0.733077,
		0.409851, -0.688455, 0.598375,
		-0.662662, -0.675525, -0.323335,
		31.366608, 32.913624, 42.013329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300972, 32.866402, 42.013950>,  <31.830471, 33.386490, 42.239662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300972, 32.866402, 42.013950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949995, 32.785049, 41.840176>,  <31.739410, 32.736237, 41.735912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949995, 32.785049, 41.840176>,  <32.300972, 32.866402, 42.013950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949995, 32.785049, 41.840176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472439, -0.209555, -0.856089,
		0.083074, -0.956412, 0.279957,
		-0.877440, -0.203381, -0.434438,
		31.686764, 32.724033, 41.709843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353947, 32.255562, 41.618793>,  <32.300972, 32.866402, 42.013950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353947, 32.255562, 41.618793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050156, 32.457794, 41.455048>,  <31.867880, 32.579132, 41.356800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050156, 32.457794, 41.455048>,  <32.353947, 32.255562, 41.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050156, 32.457794, 41.455048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414304, -0.109243, -0.903559,
		-0.501543, -0.855835, -0.126497,
		-0.759478, 0.505582, -0.409365,
		31.822311, 32.609470, 41.332237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335159, 31.953720, 40.987373>,  <32.353947, 32.255562, 41.618793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335159, 31.953720, 40.987373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090591, 32.265537, 40.933006>,  <31.943850, 32.452629, 40.900387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090591, 32.265537, 40.933006>,  <32.335159, 31.953720, 40.987373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090591, 32.265537, 40.933006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322860, 0.088944, -0.942258,
		-0.722442, -0.620001, -0.306065,
		-0.611423, 0.779543, -0.135917,
		31.907164, 32.499401, 40.892231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946781, 31.815229, 40.370197>,  <32.335159, 31.953720, 40.987373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946781, 31.815229, 40.370197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916813, 32.212528, 40.405632>,  <31.898832, 32.450909, 40.426891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916813, 32.212528, 40.405632>,  <31.946781, 31.815229, 40.370197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916813, 32.212528, 40.405632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312132, 0.107731, -0.943911,
		-0.947080, -0.043066, -0.318096,
		-0.074919, 0.993247, 0.088587,
		31.894337, 32.510502, 40.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535425, 32.057716, 39.738773>,  <31.946781, 31.815229, 40.370197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535425, 32.057716, 39.738773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744125, 32.363808, 39.889614>,  <31.869345, 32.547462, 39.980118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744125, 32.363808, 39.889614>,  <31.535425, 32.057716, 39.738773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744125, 32.363808, 39.889614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389967, 0.179214, -0.903221,
		-0.758751, 0.618312, -0.204909,
		0.521750, 0.765227, 0.377100,
		31.900650, 32.593376, 40.002743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394968, 32.691967, 39.336113>,  <31.535425, 32.057716, 39.738773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394968, 32.691967, 39.336113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752739, 32.725063, 39.511909>,  <31.967402, 32.744923, 39.617390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752739, 32.725063, 39.511909>,  <31.394968, 32.691967, 39.336113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752739, 32.725063, 39.511909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383548, 0.363457, -0.848993,
		-0.229985, 0.927929, 0.293350,
		0.894426, 0.082742, 0.439495,
		32.021069, 32.749886, 39.643757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583221, 33.355938, 39.002605>,  <31.394968, 32.691967, 39.336113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583221, 33.355938, 39.002605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911776, 33.185791, 39.154598>,  <32.108910, 33.083702, 39.245796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911776, 33.185791, 39.154598>,  <31.583221, 33.355938, 39.002605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911776, 33.185791, 39.154598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490776, 0.187624, -0.850844,
		0.290627, 0.885359, 0.362872,
		0.821386, -0.425367, 0.379984,
		32.158192, 33.058182, 39.268593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105816, 33.849945, 38.855297>,  <31.583221, 33.355938, 39.002605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105816, 33.849945, 38.855297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292568, 33.506405, 38.939579>,  <32.404617, 33.300282, 38.990150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292568, 33.506405, 38.939579>,  <32.105816, 33.849945, 38.855297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292568, 33.506405, 38.939579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564039, 0.105697, -0.818955,
		0.681091, 0.501199, 0.533774,
		0.466878, -0.858852, 0.210707,
		32.432632, 33.248749, 39.002792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819828, 34.035217, 38.750156>,  <32.105816, 33.849945, 38.855297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819828, 34.035217, 38.750156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816425, 33.635479, 38.736145>,  <32.814384, 33.395634, 38.727737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816425, 33.635479, 38.736145>,  <32.819828, 34.035217, 38.750156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816425, 33.635479, 38.736145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633901, 0.021708, -0.773109,
		0.773367, -0.028781, 0.633304,
		-0.008503, -0.999350, -0.035032,
		32.813873, 33.335674, 38.725636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540936, 33.850159, 38.667175>,  <32.819828, 34.035217, 38.750156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540936, 33.850159, 38.667175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311245, 33.550613, 38.534836>,  <33.173431, 33.370884, 38.455433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311245, 33.550613, 38.534836>,  <33.540936, 33.850159, 38.667175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311245, 33.550613, 38.534836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466167, 0.033135, -0.884076,
		0.673018, -0.661891, 0.330070,
		-0.574225, -0.748867, -0.330852,
		33.138977, 33.325954, 38.435581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010113, 33.247158, 38.451462>,  <33.540936, 33.850159, 38.667175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010113, 33.247158, 38.451462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661842, 33.203896, 38.259537>,  <33.452881, 33.177937, 38.144382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661842, 33.203896, 38.259537>,  <34.010113, 33.247158, 38.451462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661842, 33.203896, 38.259537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484531, -0.020881, -0.874525,
		0.084568, -0.993914, 0.070587,
		-0.870677, -0.108158, -0.479817,
		33.400639, 33.171448, 38.115593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070633, 32.677097, 38.000378>,  <34.010113, 33.247158, 38.451462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070633, 32.677097, 38.000378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759624, 32.882286, 37.854870>,  <33.573021, 33.005402, 37.767567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759624, 32.882286, 37.854870>,  <34.070633, 32.677097, 38.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759624, 32.882286, 37.854870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419977, -0.006980, -0.907508,
		-0.468068, -0.858376, -0.210010,
		-0.777517, 0.512974, -0.363765,
		33.526371, 33.036179, 37.745739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820774, 32.299911, 37.447113>,  <34.070633, 32.677097, 38.000378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820774, 32.299911, 37.447113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669102, 32.666611, 37.396832>,  <33.578098, 32.886631, 37.366661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669102, 32.666611, 37.396832>,  <33.820774, 32.299911, 37.447113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669102, 32.666611, 37.396832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296073, -0.008506, -0.955127,
		-0.876678, -0.399381, -0.268198,
		-0.379179, 0.916746, -0.125703,
		33.555347, 32.941635, 37.359119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425514, 32.312416, 36.802101>,  <33.820774, 32.299911, 37.447113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425514, 32.312416, 36.802101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510586, 32.696259, 36.875778>,  <33.561630, 32.926563, 36.919983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510586, 32.696259, 36.875778>,  <33.425514, 32.312416, 36.802101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510586, 32.696259, 36.875778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250968, 0.128536, -0.959423,
		-0.944342, 0.250277, -0.213493,
		0.212680, 0.959604, 0.184194,
		33.574390, 32.984138, 36.931038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387775, 32.469616, 36.076313>,  <33.425514, 32.312416, 36.802101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387775, 32.469616, 36.076313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519005, 32.806900, 36.246658>,  <33.597744, 33.009270, 36.348866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519005, 32.806900, 36.246658>,  <33.387775, 32.469616, 36.076313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519005, 32.806900, 36.246658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475957, 0.241863, -0.845558,
		-0.815984, 0.480101, -0.321982,
		0.328077, 0.843211, 0.425864,
		33.617428, 33.059864, 36.374416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105415, 33.095730, 35.619965>,  <33.387775, 32.469616, 36.076313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105415, 33.095730, 35.619965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418106, 33.250198, 35.815834>,  <33.605721, 33.342880, 35.933357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418106, 33.250198, 35.815834>,  <33.105415, 33.095730, 35.619965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418106, 33.250198, 35.815834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468190, 0.155272, -0.869879,
		-0.411953, 0.909266, -0.059420,
		0.781725, 0.386169, 0.489674,
		33.652622, 33.366051, 35.962738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140713, 33.796333, 35.436459>,  <33.105415, 33.095730, 35.619965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140713, 33.796333, 35.436459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501183, 33.692261, 35.575134>,  <33.717464, 33.629818, 35.658340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501183, 33.692261, 35.575134>,  <33.140713, 33.796333, 35.436459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501183, 33.692261, 35.575134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422227, 0.345970, -0.837872,
		0.098050, 0.901450, 0.421632,
		0.901172, -0.260178, 0.346694,
		33.771534, 33.614208, 35.679142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664188, 34.296852, 35.213829>,  <33.140713, 33.796333, 35.436459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664188, 34.296852, 35.213829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916027, 34.014786, 35.344273>,  <34.067131, 33.845547, 35.422539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916027, 34.014786, 35.344273>,  <33.664188, 34.296852, 35.213829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916027, 34.014786, 35.344273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701089, 0.334791, -0.629595,
		0.334791, 0.625022, 0.705168,
		0.629595, -0.705168, 0.326111,
		34.104904, 33.803234, 35.442104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218563, 34.576199, 35.431080>,  <33.664188, 34.296852, 35.213829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218563, 34.576199, 35.431080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336468, 34.222736, 35.285603>,  <34.407211, 34.010658, 35.198315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336468, 34.222736, 35.285603>,  <34.218563, 34.576199, 35.431080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336468, 34.222736, 35.285603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682753, 0.461044, -0.566822,
		0.668553, -0.081236, 0.739214,
		0.294764, -0.883651, -0.363697,
		34.424896, 33.957642, 35.176495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971485, 34.648430, 35.291302>,  <34.218563, 34.576199, 35.431080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971485, 34.648430, 35.291302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898754, 34.303963, 35.101425>,  <34.855114, 34.097282, 34.987499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898754, 34.303963, 35.101425>,  <34.971485, 34.648430, 35.291302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898754, 34.303963, 35.101425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736638, 0.200488, -0.645886,
		0.651385, -0.467116, 0.597913,
		-0.181829, -0.861166, -0.474691,
		34.844204, 34.045612, 34.959019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659664, 34.320457, 35.300819>,  <34.971485, 34.648430, 35.291302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659664, 34.320457, 35.300819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410847, 34.206619, 35.009048>,  <35.261555, 34.138317, 34.833984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410847, 34.206619, 35.009048>,  <35.659664, 34.320457, 35.300819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410847, 34.206619, 35.009048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596297, 0.431559, -0.676895,
		0.507434, -0.856014, -0.098743,
		-0.622046, -0.284600, -0.729426,
		35.224232, 34.121239, 34.790222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264297, 33.961510, 35.161564>,  <35.659664, 34.320457, 35.300819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264297, 33.961510, 35.161564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576008, 34.211899, 35.173481>,  <36.763035, 34.362133, 35.180630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576008, 34.211899, 35.173481>,  <36.264297, 33.961510, 35.161564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576008, 34.211899, 35.173481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016257, -0.067711, 0.997573,
		0.626474, -0.776897, -0.062942,
		0.779273, 0.625977, 0.029789,
		36.809792, 34.399693, 35.182419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928196, 33.686836, 35.556690>,  <36.264297, 33.961510, 35.161564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928196, 33.686836, 35.556690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878433, 34.083176, 35.577656>,  <36.848576, 34.320980, 35.590233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878433, 34.083176, 35.577656>,  <36.928196, 33.686836, 35.556690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878433, 34.083176, 35.577656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042199, -0.058058, 0.997421,
		0.991334, 0.121871, 0.049036,
		-0.124403, 0.990847, 0.052412,
		36.841114, 34.380428, 35.593380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274612, 33.920311, 36.158245>,  <36.928196, 33.686836, 35.556690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274612, 33.920311, 36.158245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030045, 34.229092, 36.088676>,  <36.883305, 34.414360, 36.046936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030045, 34.229092, 36.088676>,  <37.274612, 33.920311, 36.158245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030045, 34.229092, 36.088676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207263, 0.055888, 0.976688,
		0.763679, 0.633215, 0.125828,
		-0.611421, 0.771955, -0.173922,
		36.846619, 34.460678, 36.036499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440308, 34.527252, 36.635475>,  <37.274612, 33.920311, 36.158245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440308, 34.527252, 36.635475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063694, 34.604794, 36.525257>,  <36.837727, 34.651318, 36.459126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063694, 34.604794, 36.525257>,  <37.440308, 34.527252, 36.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063694, 34.604794, 36.525257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255043, 0.124288, 0.958908,
		0.220137, 0.973125, -0.067580,
		-0.941537, 0.193856, -0.275549,
		36.781231, 34.662949, 36.442593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276508, 35.175304, 36.917542>,  <37.440308, 34.527252, 36.635475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276508, 35.175304, 36.917542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936527, 34.973949, 36.855335>,  <36.732540, 34.853138, 36.818012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936527, 34.973949, 36.855335>,  <37.276508, 35.175304, 36.917542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936527, 34.973949, 36.855335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197014, 0.029914, 0.979944,
		-0.488639, 0.863543, -0.124599,
		-0.849951, -0.503387, -0.155514,
		36.681541, 34.822933, 36.808681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902546, 35.323833, 37.502499>,  <37.276508, 35.175304, 36.917542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902546, 35.323833, 37.502499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639187, 35.049812, 37.377785>,  <36.481171, 34.885399, 37.302956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639187, 35.049812, 37.377785>,  <36.902546, 35.323833, 37.502499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639187, 35.049812, 37.377785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327137, -0.112603, 0.938244,
		-0.677856, 0.719736, -0.149969,
		-0.658401, -0.685055, -0.311781,
		36.441666, 34.844296, 37.284252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204201, 35.600792, 37.677364>,  <36.902546, 35.323833, 37.502499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204201, 35.600792, 37.677364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203918, 35.202408, 37.641434>,  <36.203751, 34.963379, 37.619873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203918, 35.202408, 37.641434>,  <36.204201, 35.600792, 37.677364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203918, 35.202408, 37.641434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367176, -0.083300, 0.926414,
		-0.930151, 0.033634, -0.365633,
		-0.000702, -0.995957, -0.089831,
		36.203709, 34.903622, 37.614483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525902, 35.327415, 37.793858>,  <36.204201, 35.600792, 37.677364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525902, 35.327415, 37.793858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765751, 35.014118, 37.859570>,  <35.909660, 34.826141, 37.898998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765751, 35.014118, 37.859570>,  <35.525902, 35.327415, 37.793858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765751, 35.014118, 37.859570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493581, -0.200358, 0.846306,
		-0.629948, -0.588547, -0.506732,
		0.599619, -0.783243, 0.164281,
		35.945637, 34.779144, 37.908855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121284, 34.716583, 37.803997>,  <35.525902, 35.327415, 37.793858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121284, 34.716583, 37.803997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448433, 34.597813, 38.001144>,  <35.644722, 34.526550, 38.119434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448433, 34.597813, 38.001144>,  <35.121284, 34.716583, 37.803997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448433, 34.597813, 38.001144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565661, -0.257976, 0.783247,
		-0.105413, -0.919395, -0.378948,
		0.817873, -0.296920, 0.492872,
		35.693794, 34.508736, 38.149006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961300, 34.106556, 38.190472>,  <35.121284, 34.716583, 37.803997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961300, 34.106556, 38.190472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289818, 34.239746, 38.375771>,  <35.486927, 34.319660, 38.486950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289818, 34.239746, 38.375771>,  <34.961300, 34.106556, 38.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289818, 34.239746, 38.375771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406335, -0.228554, 0.884678,
		0.400457, -0.914816, -0.052409,
		0.821295, 0.332980, 0.463247,
		35.536205, 34.339642, 38.514744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125534, 33.612938, 38.650063>,  <34.961300, 34.106556, 38.190472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125534, 33.612938, 38.650063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322941, 33.928921, 38.795612>,  <35.441383, 34.118511, 38.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322941, 33.928921, 38.795612>,  <35.125534, 33.612938, 38.650063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322941, 33.928921, 38.795612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400108, -0.165264, 0.901444,
		0.772240, -0.590466, 0.234509,
		0.493517, 0.789960, 0.363874,
		35.470997, 34.165909, 38.904774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231861, 33.451042, 39.369423>,  <35.125534, 33.612938, 38.650063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231861, 33.451042, 39.369423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339867, 33.836159, 39.365078>,  <35.404671, 34.067230, 39.362473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339867, 33.836159, 39.365078>,  <35.231861, 33.451042, 39.369423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339867, 33.836159, 39.365078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209572, 0.069774, 0.975301,
		0.939771, -0.261073, 0.220615,
		0.270018, 0.962794, -0.010858,
		35.420872, 34.124996, 39.361820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576248, 33.482986, 40.035854>,  <35.231861, 33.451042, 39.369423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576248, 33.482986, 40.035854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433060, 33.838417, 39.921108>,  <35.347145, 34.051674, 39.852261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433060, 33.838417, 39.921108>,  <35.576248, 33.482986, 40.035854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433060, 33.838417, 39.921108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493122, 0.080977, 0.866183,
		0.792896, 0.451532, 0.409187,
		-0.357975, 0.888573, -0.286866,
		35.325668, 34.104988, 39.835049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748516, 33.935856, 40.532108>,  <35.576248, 33.482986, 40.035854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748516, 33.935856, 40.532108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453735, 34.119148, 40.333340>,  <35.276867, 34.229122, 40.214077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453735, 34.119148, 40.333340>,  <35.748516, 33.935856, 40.532108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453735, 34.119148, 40.333340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511655, 0.102249, 0.853085,
		0.441717, 0.882934, 0.159102,
		-0.736950, 0.458228, -0.496923,
		35.232651, 34.256615, 40.184261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620541, 34.588284, 40.853222>,  <35.748516, 33.935856, 40.532108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620541, 34.588284, 40.853222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271206, 34.495205, 40.682041>,  <35.061607, 34.439358, 40.579334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271206, 34.495205, 40.682041>,  <35.620541, 34.588284, 40.853222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271206, 34.495205, 40.682041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467569, 0.154029, 0.870434,
		-0.136634, 0.960274, -0.243321,
		-0.873333, -0.232700, -0.427948,
		35.009205, 34.425396, 40.553658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086273, 35.000263, 41.259403>,  <35.620541, 34.588284, 40.853222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086273, 35.000263, 41.259403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865501, 34.740105, 41.050652>,  <34.733040, 34.584011, 40.925400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865501, 34.740105, 41.050652>,  <35.086273, 35.000263, 41.259403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865501, 34.740105, 41.050652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661334, -0.039814, 0.749034,
		-0.507946, 0.758552, -0.408154,
		-0.551931, -0.650395, -0.521880,
		34.699921, 34.544987, 40.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360432, 35.295139, 41.206478>,  <35.086273, 35.000263, 41.259403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360432, 35.295139, 41.206478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321907, 34.898106, 41.176838>,  <34.298794, 34.659885, 41.159054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321907, 34.898106, 41.176838>,  <34.360432, 35.295139, 41.206478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321907, 34.898106, 41.176838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697237, 0.014146, 0.716701,
		-0.710341, 0.120695, -0.693432,
		-0.096312, -0.992589, -0.074104,
		34.293015, 34.600330, 41.154606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586094, 35.139996, 41.264950>,  <34.360432, 35.295139, 41.206478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586094, 35.139996, 41.264950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797783, 34.810501, 41.346317>,  <33.924797, 34.612804, 41.395138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797783, 34.810501, 41.346317>,  <33.586094, 35.139996, 41.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797783, 34.810501, 41.346317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626014, -0.217235, 0.748943,
		-0.572743, -0.523699, -0.630638,
		0.529218, -0.823740, 0.203423,
		33.956547, 34.563377, 41.407345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060307, 34.702168, 41.436420>,  <33.586094, 35.139996, 41.264950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060307, 34.702168, 41.436420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386124, 34.537865, 41.600273>,  <33.581612, 34.439281, 41.698586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386124, 34.537865, 41.600273>,  <33.060307, 34.702168, 41.436420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386124, 34.537865, 41.600273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535252, -0.259887, 0.803719,
		-0.223672, -0.873921, -0.431546,
		0.814540, -0.410755, 0.409638,
		33.630486, 34.414635, 41.723164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741695, 34.143124, 41.817551>,  <33.060307, 34.702168, 41.436420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741695, 34.143124, 41.817551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109562, 34.161636, 41.973537>,  <33.330280, 34.172745, 42.067131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109562, 34.161636, 41.973537>,  <32.741695, 34.143124, 41.817551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109562, 34.161636, 41.973537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379131, -0.154166, 0.912410,
		0.102346, -0.986960, -0.124235,
		0.919666, 0.046280, 0.389966,
		33.385460, 34.175522, 42.090527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759518, 33.536640, 42.234222>,  <32.741695, 34.143124, 41.817551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759518, 33.536640, 42.234222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050514, 33.782013, 42.357162>,  <33.225113, 33.929237, 42.430927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050514, 33.782013, 42.357162>,  <32.759518, 33.536640, 42.234222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050514, 33.782013, 42.357162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245733, -0.185290, 0.951464,
		0.640607, -0.767703, 0.015944,
		0.727488, 0.613432, 0.307348,
		33.268761, 33.966042, 42.449368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039734, 33.207500, 42.853455>,  <32.759518, 33.536640, 42.234222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039734, 33.207500, 42.853455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111961, 33.600849, 42.861263>,  <33.155296, 33.836857, 42.865948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111961, 33.600849, 42.861263>,  <33.039734, 33.207500, 42.853455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111961, 33.600849, 42.861263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426981, 0.060490, 0.902235,
		0.886049, -0.171249, 0.430803,
		0.180566, 0.983369, 0.019523,
		33.166130, 33.895859, 42.867119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292568, 33.376099, 43.578995>,  <33.039734, 33.207500, 42.853455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292568, 33.376099, 43.578995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156338, 33.704403, 43.395535>,  <33.074600, 33.901386, 43.285458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156338, 33.704403, 43.395535>,  <33.292568, 33.376099, 43.578995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156338, 33.704403, 43.395535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542676, 0.226758, 0.808754,
		0.767794, 0.524346, 0.368176,
		-0.340580, 0.820757, -0.458654,
		33.054165, 33.950630, 43.257938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412834, 33.934162, 44.004620>,  <33.292568, 33.376099, 43.578995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412834, 33.934162, 44.004620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129688, 34.077599, 43.761196>,  <32.959801, 34.163662, 43.615143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129688, 34.077599, 43.761196>,  <33.412834, 33.934162, 44.004620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129688, 34.077599, 43.761196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548854, 0.263090, 0.793437,
		0.444625, 0.895654, 0.010583,
		-0.707861, 0.358591, -0.608560,
		32.917332, 34.185177, 43.578629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295231, 34.653008, 44.219120>,  <33.412834, 33.934162, 44.004620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295231, 34.653008, 44.219120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953415, 34.568592, 44.029289>,  <32.748325, 34.517944, 43.915390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953415, 34.568592, 44.029289>,  <33.295231, 34.653008, 44.219120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953415, 34.568592, 44.029289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510281, 0.511494, 0.691367,
		0.096839, 0.832968, -0.544780,
		-0.854538, -0.211040, -0.474580,
		32.697052, 34.505280, 43.886913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928471, 35.273087, 44.212509>,  <33.295231, 34.653008, 44.219120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928471, 35.273087, 44.212509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651203, 35.012226, 44.089729>,  <32.484844, 34.855709, 44.016060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651203, 35.012226, 44.089729>,  <32.928471, 35.273087, 44.212509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651203, 35.012226, 44.089729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666738, 0.418366, 0.616790,
		-0.273818, 0.632198, -0.724810,
		-0.693170, -0.652146, -0.306954,
		32.443253, 34.816582, 43.997643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346504, 35.692272, 44.263988>,  <32.928471, 35.273087, 44.212509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346504, 35.692272, 44.263988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217556, 35.314564, 44.237358>,  <32.140186, 35.087940, 44.221378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217556, 35.314564, 44.237358>,  <32.346504, 35.692272, 44.263988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217556, 35.314564, 44.237358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764114, 0.218059, 0.607108,
		-0.558755, 0.246589, -0.791825,
		-0.322371, -0.944269, -0.066580,
		32.120846, 35.031284, 44.217384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560925, 35.736378, 44.177956>,  <32.346504, 35.692272, 44.263988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560925, 35.736378, 44.177956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634241, 35.380211, 44.344601>,  <31.678230, 35.166512, 44.444588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634241, 35.380211, 44.344601>,  <31.560925, 35.736378, 44.177956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634241, 35.380211, 44.344601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760305, 0.140248, 0.634246,
		-0.623170, -0.433005, -0.651280,
		0.183291, -0.890415, 0.416614,
		31.689228, 35.113087, 44.469585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904158, 35.463123, 44.324371>,  <31.560925, 35.736378, 44.177956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904158, 35.463123, 44.324371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155846, 35.257755, 44.557777>,  <31.306858, 35.134533, 44.697819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155846, 35.257755, 44.557777>,  <30.904158, 35.463123, 44.324371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155846, 35.257755, 44.557777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589055, 0.174765, 0.788969,
		-0.507049, -0.840153, -0.192467,
		0.629218, -0.513419, 0.583511,
		31.344610, 35.103729, 44.732830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482933, 34.938297, 44.712524>,  <30.904158, 35.463123, 44.324371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482933, 34.938297, 44.712524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814125, 35.018715, 44.921917>,  <31.012840, 35.066967, 45.047550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814125, 35.018715, 44.921917>,  <30.482933, 34.938297, 44.712524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814125, 35.018715, 44.921917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557692, 0.197743, 0.806150,
		0.058554, -0.959417, 0.275846,
		0.827980, 0.201040, 0.523481,
		31.062519, 35.079029, 45.078960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399303, 34.799137, 45.466511>,  <30.482933, 34.938297, 44.712524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399303, 34.799137, 45.466511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738770, 35.010094, 45.482620>,  <30.942450, 35.136669, 45.492287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738770, 35.010094, 45.482620>,  <30.399303, 34.799137, 45.466511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738770, 35.010094, 45.482620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239854, 0.315858, 0.917989,
		0.471420, -0.788726, 0.394556,
		0.848665, 0.527395, 0.040277,
		30.993370, 35.168312, 45.494705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696810, 34.617149, 46.030670>,  <30.399303, 34.799137, 45.466511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696810, 34.617149, 46.030670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844044, 34.980198, 45.949928>,  <30.932384, 35.198025, 45.901482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844044, 34.980198, 45.949928>,  <30.696810, 34.617149, 46.030670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844044, 34.980198, 45.949928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064953, 0.241667, 0.968183,
		0.927521, -0.343261, 0.147906,
		0.368083, 0.907617, -0.201855,
		30.954470, 35.252483, 45.889370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970997, 34.805553, 46.664455>,  <30.696810, 34.617149, 46.030670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970997, 34.805553, 46.664455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004620, 35.151722, 46.466877>,  <31.024794, 35.359421, 46.348328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004620, 35.151722, 46.466877>,  <30.970997, 34.805553, 46.664455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004620, 35.151722, 46.466877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068548, 0.489509, 0.869300,
		0.994100, -0.106931, -0.018175,
		0.084058, 0.865417, -0.493951,
		31.029837, 35.411346, 46.318691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428955, 35.167953, 47.033962>,  <30.970997, 34.805553, 46.664455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428955, 35.167953, 47.033962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209444, 35.434311, 46.831802>,  <31.077738, 35.594124, 46.710506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209444, 35.434311, 46.831802>,  <31.428955, 35.167953, 47.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209444, 35.434311, 46.831802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136249, 0.525243, 0.839974,
		0.824790, 0.529820, -0.197515,
		-0.548779, 0.665891, -0.505402,
		31.044811, 35.634079, 46.680183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671329, 35.863953, 47.175610>,  <31.428955, 35.167953, 47.033962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671329, 35.863953, 47.175610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291529, 35.884529, 47.051804>,  <31.063648, 35.896877, 46.977520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291529, 35.884529, 47.051804>,  <31.671329, 35.863953, 47.175610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291529, 35.884529, 47.051804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207780, 0.636084, 0.743118,
		0.235109, 0.769903, -0.593274,
		-0.949501, 0.051444, -0.309519,
		31.006678, 35.899963, 46.958946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562571, 36.477135, 47.361835>,  <31.671329, 35.863953, 47.175610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562571, 36.477135, 47.361835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188694, 36.344574, 47.310417>,  <30.964369, 36.265038, 47.279564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188694, 36.344574, 47.310417>,  <31.562571, 36.477135, 47.361835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188694, 36.344574, 47.310417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293715, 0.516365, 0.804424,
		-0.200208, 0.789646, -0.579979,
		-0.934692, -0.331401, -0.128550,
		30.908287, 36.245155, 47.271851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244688, 36.990135, 47.561550>,  <31.562571, 36.477135, 47.361835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244688, 36.990135, 47.561550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968153, 36.703243, 47.596497>,  <30.802233, 36.531109, 47.617466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968153, 36.703243, 47.596497>,  <31.244688, 36.990135, 47.561550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968153, 36.703243, 47.596497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265897, 0.364982, 0.892237,
		-0.671827, 0.593606, -0.443035,
		-0.691337, -0.717230, 0.087367,
		30.760752, 36.488075, 47.622707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602432, 37.315987, 47.923550>,  <31.244688, 36.990135, 47.561550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602432, 37.315987, 47.923550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554991, 36.920872, 47.963959>,  <30.526525, 36.683804, 47.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554991, 36.920872, 47.963959>,  <30.602432, 37.315987, 47.923550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554991, 36.920872, 47.963959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345898, 0.136470, 0.928295,
		-0.930746, 0.075154, -0.357860,
		-0.118602, -0.987789, 0.101023,
		30.519411, 36.624535, 47.994267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886826, 37.409885, 48.194492>,  <30.602432, 37.315987, 47.923550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886826, 37.409885, 48.194492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017323, 37.786697, 48.163132>,  <30.095621, 38.012783, 48.144318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017323, 37.786697, 48.163132>,  <29.886826, 37.409885, 48.194492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017323, 37.786697, 48.163132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196035, -0.013710, -0.980501,
		-0.924735, 0.335251, 0.180198,
		0.326244, 0.942029, -0.078399,
		30.115196, 38.069305, 48.139610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338839, 37.785885, 47.683041>,  <29.886826, 37.409885, 48.194492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338839, 37.785885, 47.683041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672180, 38.005150, 47.711437>,  <29.872185, 38.136707, 47.728477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672180, 38.005150, 47.711437>,  <29.338839, 37.785885, 47.683041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672180, 38.005150, 47.711437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022208, 0.161543, -0.986616,
		-0.552295, 0.820622, 0.146796,
		0.833353, 0.548163, 0.070995,
		29.922186, 38.169598, 47.732735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162954, 38.165340, 47.159271>,  <29.338839, 37.785885, 47.683041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162954, 38.165340, 47.159271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557270, 38.197186, 47.218433>,  <29.793859, 38.216293, 47.253929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557270, 38.197186, 47.218433>,  <29.162954, 38.165340, 47.159271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557270, 38.197186, 47.218433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139995, 0.097165, -0.985373,
		-0.092824, 0.992079, 0.084638,
		0.985792, 0.079617, 0.147906,
		29.853008, 38.221069, 47.262806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377438, 38.734161, 46.735729>,  <29.162954, 38.165340, 47.159271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377438, 38.734161, 46.735729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686176, 38.494637, 46.821217>,  <29.871420, 38.350922, 46.872509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686176, 38.494637, 46.821217>,  <29.377438, 38.734161, 46.735729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686176, 38.494637, 46.821217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150350, -0.154711, -0.976452,
		0.617775, 0.785806, -0.029382,
		0.771848, -0.598810, 0.213722,
		29.917730, 38.314995, 46.885334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987476, 38.989552, 46.363644>,  <29.377438, 38.734161, 46.735729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987476, 38.989552, 46.363644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082108, 38.612217, 46.456722>,  <30.138885, 38.385815, 46.512569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082108, 38.612217, 46.456722>,  <29.987476, 38.989552, 46.363644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082108, 38.612217, 46.456722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271151, -0.165882, -0.948135,
		0.933010, 0.287405, 0.216543,
		0.236578, -0.943335, 0.232699,
		30.153082, 38.329216, 46.526531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566832, 38.898178, 45.997147>,  <29.987476, 38.989552, 46.363644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566832, 38.898178, 45.997147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459637, 38.527191, 46.101448>,  <30.395321, 38.304600, 46.164028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459637, 38.527191, 46.101448>,  <30.566832, 38.898178, 45.997147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459637, 38.527191, 46.101448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297330, -0.337056, -0.893302,
		0.916394, -0.161864, 0.366089,
		-0.267986, -0.927466, 0.260749,
		30.379240, 38.248951, 46.179672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138147, 38.543098, 45.902302>,  <30.566832, 38.898178, 45.997147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138147, 38.543098, 45.902302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808493, 38.317928, 45.877277>,  <30.610701, 38.182827, 45.862263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808493, 38.317928, 45.877277>,  <31.138147, 38.543098, 45.902302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808493, 38.317928, 45.877277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341333, -0.405471, -0.847989,
		0.451986, -0.720213, 0.526309,
		-0.824136, -0.562926, -0.062565,
		30.561253, 38.149052, 45.858509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415726, 37.911312, 45.739780>,  <31.138147, 38.543098, 45.902302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415726, 37.911312, 45.739780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033421, 37.901066, 45.622574>,  <30.804037, 37.894920, 45.552250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033421, 37.901066, 45.622574>,  <31.415726, 37.911312, 45.739780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033421, 37.901066, 45.622574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284844, -0.329021, -0.900338,
		-0.073350, -0.943975, 0.321762,
		-0.955764, -0.025612, -0.293019,
		30.746691, 37.893383, 45.534668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381493, 37.314938, 45.388481>,  <31.415726, 37.911312, 45.739780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381493, 37.314938, 45.388481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080572, 37.548847, 45.267101>,  <30.900019, 37.689194, 45.194271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080572, 37.548847, 45.267101>,  <31.381493, 37.314938, 45.388481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080572, 37.548847, 45.267101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164704, -0.279040, -0.946049,
		-0.637898, -0.761695, 0.113608,
		-0.752302, 0.584771, -0.303453,
		30.854881, 37.724277, 45.176064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970915, 36.922268, 44.963665>,  <31.381493, 37.314938, 45.388481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970915, 36.922268, 44.963665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880026, 37.299938, 44.868244>,  <30.825493, 37.526539, 44.810989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880026, 37.299938, 44.868244>,  <30.970915, 36.922268, 44.963665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880026, 37.299938, 44.868244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139743, -0.210817, -0.967486,
		-0.963764, -0.253172, -0.084039,
		-0.227224, 0.944172, -0.238557,
		30.811859, 37.583191, 44.796677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516060, 36.780678, 44.362934>,  <30.970915, 36.922268, 44.963665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516060, 36.780678, 44.362934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608862, 37.169224, 44.342464>,  <30.664543, 37.402351, 44.330181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608862, 37.169224, 44.342464>,  <30.516060, 36.780678, 44.362934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608862, 37.169224, 44.342464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211672, -0.101766, -0.972028,
		-0.949404, 0.214685, -0.229222,
		0.232007, 0.971367, -0.051174,
		30.678465, 37.460632, 44.327110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170809, 37.041805, 43.800247>,  <30.516060, 36.780678, 44.362934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170809, 37.041805, 43.800247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448431, 37.324715, 43.853989>,  <30.615005, 37.494461, 43.886234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448431, 37.324715, 43.853989>,  <30.170809, 37.041805, 43.800247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448431, 37.324715, 43.853989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255377, -0.067396, -0.964490,
		-0.673103, 0.703720, -0.227398,
		0.694057, 0.707273, 0.134349,
		30.656649, 37.536896, 43.894295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168829, 37.510147, 43.213028>,  <30.170809, 37.041805, 43.800247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168829, 37.510147, 43.213028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530895, 37.564484, 43.374134>,  <30.748135, 37.597084, 43.470798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530895, 37.564484, 43.374134>,  <30.168829, 37.510147, 43.213028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530895, 37.564484, 43.374134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397656, 0.064105, -0.915293,
		-0.150154, 0.988654, 0.004007,
		0.905165, 0.135842, 0.402770,
		30.802444, 37.605236, 43.494965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496796, 37.950573, 42.760727>,  <30.168829, 37.510147, 43.213028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496796, 37.950573, 42.760727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803278, 37.802280, 42.970676>,  <30.987167, 37.713306, 43.096645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803278, 37.802280, 42.970676>,  <30.496796, 37.950573, 42.760727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803278, 37.802280, 42.970676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529943, -0.097428, -0.842418,
		0.363445, 0.923617, 0.121815,
		0.766204, -0.370727, 0.524874,
		31.033138, 37.691063, 43.128139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075745, 38.365753, 42.527924>,  <30.496796, 37.950573, 42.760727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075745, 38.365753, 42.527924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189644, 38.009533, 42.669819>,  <31.257982, 37.795799, 42.754955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189644, 38.009533, 42.669819>,  <31.075745, 38.365753, 42.527924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189644, 38.009533, 42.669819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511001, -0.172078, -0.842180,
		0.811047, 0.421078, 0.406074,
		0.284747, -0.890552, 0.354735,
		31.275068, 37.742367, 42.776237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815626, 38.414909, 42.342400>,  <31.075745, 38.365753, 42.527924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815626, 38.414909, 42.342400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717602, 38.030704, 42.395092>,  <31.658787, 37.800182, 42.426708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717602, 38.030704, 42.395092>,  <31.815626, 38.414909, 42.342400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717602, 38.030704, 42.395092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562548, -0.251541, -0.787570,
		0.789610, -0.118897, 0.601979,
		-0.245063, -0.960516, 0.131734,
		31.644083, 37.742550, 42.434612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524654, 38.221848, 42.450451>,  <31.815626, 38.414909, 42.342400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524654, 38.221848, 42.450451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290054, 37.920849, 42.330612>,  <32.149292, 37.740250, 42.258709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290054, 37.920849, 42.330612>,  <32.524654, 38.221848, 42.450451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290054, 37.920849, 42.330612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768109, -0.399409, -0.500481,
		0.256949, -0.523658, 0.812256,
		-0.586503, -0.752499, -0.299598,
		32.114101, 37.695099, 42.240734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893761, 37.638649, 42.579262>,  <32.524654, 38.221848, 42.450451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893761, 37.638649, 42.579262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637047, 37.519627, 42.296539>,  <32.483017, 37.448215, 42.126907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637047, 37.519627, 42.296539>,  <32.893761, 37.638649, 42.579262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637047, 37.519627, 42.296539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727518, -0.527722, -0.438437,
		-0.242538, -0.795595, 0.555161,
		-0.641789, -0.297552, -0.706802,
		32.444511, 37.430363, 42.084499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984585, 36.840466, 42.467587>,  <32.893761, 37.638649, 42.579262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984585, 36.840466, 42.467587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798149, 36.953754, 42.132317>,  <32.686287, 37.021729, 41.931152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798149, 36.953754, 42.132317>,  <32.984585, 36.840466, 42.467587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798149, 36.953754, 42.132317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658972, -0.521019, -0.542490,
		-0.590352, -0.805187, 0.056207,
		-0.466091, 0.283222, -0.838179,
		32.658321, 37.038719, 41.880863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000145, 36.270035, 41.987728>,  <32.984585, 36.840466, 42.467587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000145, 36.270035, 41.987728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935169, 36.594456, 41.762943>,  <32.896183, 36.789108, 41.628071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935169, 36.594456, 41.762943>,  <33.000145, 36.270035, 41.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935169, 36.594456, 41.762943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586779, -0.378477, -0.715853,
		-0.793286, -0.446031, -0.414431,
		-0.162440, 0.811056, -0.561962,
		32.886436, 36.837772, 41.594353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865646, 35.979137, 41.205128>,  <33.000145, 36.270035, 41.987728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865646, 35.979137, 41.205128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966660, 36.365978, 41.192871>,  <33.027267, 36.598083, 41.185516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966660, 36.365978, 41.192871>,  <32.865646, 35.979137, 41.205128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966660, 36.365978, 41.192871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674768, -0.198719, -0.710773,
		-0.693481, 0.158813, -0.702754,
		0.252531, 0.967103, -0.030646,
		33.042419, 36.656109, 41.183678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770954, 36.234993, 40.475281>,  <32.865646, 35.979137, 41.205128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770954, 36.234993, 40.475281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022026, 36.493462, 40.648937>,  <33.172668, 36.648544, 40.753132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022026, 36.493462, 40.648937>,  <32.770954, 36.234993, 40.475281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022026, 36.493462, 40.648937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595259, -0.039000, -0.802587,
		-0.501680, 0.762193, -0.409120,
		0.627682, 0.646174, 0.434137,
		33.210331, 36.687313, 40.779179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991405, 36.695816, 39.909374>,  <32.770954, 36.234993, 40.475281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991405, 36.695816, 39.909374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273540, 36.718746, 40.191994>,  <33.442822, 36.732506, 40.361565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273540, 36.718746, 40.191994>,  <32.991405, 36.695816, 39.909374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273540, 36.718746, 40.191994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707808, -0.002300, -0.706402,
		-0.038873, 0.998353, -0.042201,
		0.705335, 0.057330, 0.706552,
		33.485142, 36.735947, 40.403961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491142, 37.310204, 39.720139>,  <32.991405, 36.695816, 39.909374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491142, 37.310204, 39.720139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713505, 37.098827, 39.976803>,  <33.846924, 36.972004, 40.130798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713505, 37.098827, 39.976803>,  <33.491142, 37.310204, 39.720139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713505, 37.098827, 39.976803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746070, -0.023186, -0.665463,
		0.366532, 0.848657, 0.381361,
		0.555907, -0.528436, 0.641656,
		33.880276, 36.940296, 40.169300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167423, 37.614021, 39.537315>,  <33.491142, 37.310204, 39.720139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167423, 37.614021, 39.537315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253651, 37.297146, 39.765690>,  <34.305386, 37.107021, 39.902714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253651, 37.297146, 39.765690>,  <34.167423, 37.614021, 39.537315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253651, 37.297146, 39.765690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833057, -0.155847, -0.530780,
		0.509458, 0.590036, 0.626346,
		0.215565, -0.792193, 0.570931,
		34.318321, 37.059486, 39.936970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774796, 37.718967, 39.813255>,  <34.167423, 37.614021, 39.537315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774796, 37.718967, 39.813255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729988, 37.322079, 39.834965>,  <34.703102, 37.083946, 39.847992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729988, 37.322079, 39.834965>,  <34.774796, 37.718967, 39.813255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729988, 37.322079, 39.834965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831936, -0.123517, -0.540950,
		0.543446, -0.015444, 0.839302,
		-0.112022, -0.992222, 0.054277,
		34.696381, 37.024410, 39.851246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327785, 37.570656, 40.210037>,  <34.774796, 37.718967, 39.813255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327785, 37.570656, 40.210037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223934, 37.259933, 39.980545>,  <35.161625, 37.073502, 39.842850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223934, 37.259933, 39.980545>,  <35.327785, 37.570656, 40.210037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223934, 37.259933, 39.980545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957985, -0.132186, -0.254541,
		0.121890, -0.615711, 0.778488,
		-0.259629, -0.776805, -0.573730,
		35.146046, 37.026894, 39.808426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940884, 37.126270, 40.307888>,  <35.327785, 37.570656, 40.210037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940884, 37.126270, 40.307888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737518, 36.993786, 39.989941>,  <35.615501, 36.914295, 39.799171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737518, 36.993786, 39.989941>,  <35.940884, 37.126270, 40.307888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737518, 36.993786, 39.989941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852728, -0.322162, -0.411177,
		-0.119891, -0.886855, 0.446222,
		-0.508410, -0.331210, -0.794871,
		35.584995, 36.894424, 39.751480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331818, 36.543571, 40.105225>,  <35.940884, 37.126270, 40.307888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331818, 36.543571, 40.105225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126720, 36.669346, 39.785667>,  <36.003662, 36.744812, 39.593933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126720, 36.669346, 39.785667>,  <36.331818, 36.543571, 40.105225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126720, 36.669346, 39.785667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815107, -0.113942, -0.567994,
		-0.269625, -0.942415, -0.197877,
		-0.512740, 0.314436, -0.798891,
		35.972897, 36.763676, 39.546001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556225, 36.087040, 39.539810>,  <36.331818, 36.543571, 40.105225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556225, 36.087040, 39.539810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388496, 36.389446, 39.338768>,  <36.287857, 36.570889, 39.218143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388496, 36.389446, 39.338768>,  <36.556225, 36.087040, 39.539810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388496, 36.389446, 39.338768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815229, 0.069972, -0.574896,
		-0.399461, -0.650805, -0.645666,
		-0.419324, 0.756014, -0.502604,
		36.262699, 36.616249, 39.187988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767349, 35.905140, 38.915634>,  <36.556225, 36.087040, 39.539810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767349, 35.905140, 38.915634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679897, 36.294994, 38.896526>,  <36.627426, 36.528908, 38.885063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679897, 36.294994, 38.896526>,  <36.767349, 35.905140, 38.915634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679897, 36.294994, 38.896526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804790, 0.152416, -0.573657,
		-0.551827, -0.163865, -0.817701,
		-0.218633, 0.974637, -0.047770,
		36.614307, 36.587387, 38.882195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640297, 36.163948, 38.226151>,  <36.767349, 35.905140, 38.915634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640297, 36.163948, 38.226151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753307, 36.485336, 38.435764>,  <36.821114, 36.678169, 38.561535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753307, 36.485336, 38.435764>,  <36.640297, 36.163948, 38.226151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753307, 36.485336, 38.435764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786866, 0.118341, -0.605671,
		-0.548654, 0.583465, -0.598789,
		0.282526, 0.803470, 0.524037,
		36.838066, 36.726376, 38.592976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701469, 36.713654, 37.776722>,  <36.640297, 36.163948, 38.226151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701469, 36.713654, 37.776722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938709, 36.821453, 38.080196>,  <37.081055, 36.886131, 38.262280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938709, 36.821453, 38.080196>,  <36.701469, 36.713654, 37.776722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938709, 36.821453, 38.080196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766738, 0.098438, -0.634368,
		-0.245644, 0.957957, -0.148250,
		0.593104, 0.269498, 0.758682,
		37.116642, 36.902302, 38.307800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990021, 37.252850, 37.486546>,  <36.701469, 36.713654, 37.776722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990021, 37.252850, 37.486546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244259, 37.162094, 37.781715>,  <37.396801, 37.107639, 37.958817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244259, 37.162094, 37.781715>,  <36.990021, 37.252850, 37.486546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244259, 37.162094, 37.781715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772020, 0.187962, -0.607169,
		-0.000943, 0.955611, 0.294630,
		0.635597, -0.226888, 0.737928,
		37.434937, 37.094028, 38.003094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456730, 37.733337, 37.401108>,  <36.990021, 37.252850, 37.486546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456730, 37.733337, 37.401108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658562, 37.475262, 37.630589>,  <37.779659, 37.320415, 37.768276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658562, 37.475262, 37.630589>,  <37.456730, 37.733337, 37.401108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658562, 37.475262, 37.630589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823610, 0.160378, -0.544009,
		0.258976, 0.747005, 0.612303,
		0.504577, -0.645185, 0.573706,
		37.809937, 37.281708, 37.802700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055622, 38.014763, 37.622295>,  <37.456730, 37.733337, 37.401108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055622, 38.014763, 37.622295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191887, 37.649693, 37.712605>,  <38.273643, 37.430649, 37.766792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191887, 37.649693, 37.712605>,  <38.055622, 38.014763, 37.622295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191887, 37.649693, 37.712605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817679, 0.169073, -0.550287,
		0.464061, 0.372072, 0.803872,
		0.340659, -0.912675, 0.225776,
		38.294086, 37.375889, 37.780338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740959, 38.000896, 37.933701>,  <38.055622, 38.014763, 37.622295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740959, 38.000896, 37.933701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685581, 37.644524, 37.760693>,  <38.652355, 37.430698, 37.656887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685581, 37.644524, 37.760693>,  <38.740959, 38.000896, 37.933701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685581, 37.644524, 37.760693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861341, 0.107227, -0.496582,
		0.488799, -0.441293, 0.752553,
		-0.138444, -0.890933, -0.432517,
		38.644047, 37.377243, 37.630936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362793, 37.733845, 37.821888>,  <38.740959, 38.000896, 37.933701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362793, 37.733845, 37.821888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133392, 37.518059, 37.575287>,  <38.995754, 37.388588, 37.427326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133392, 37.518059, 37.575287>,  <39.362793, 37.733845, 37.821888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133392, 37.518059, 37.575287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623553, 0.200611, -0.755604,
		0.531301, -0.817758, 0.221336,
		-0.573499, -0.539468, -0.616500,
		38.961342, 37.356220, 37.390335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739769, 37.299412, 37.473988>,  <39.362793, 37.733845, 37.821888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739769, 37.299412, 37.473988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410366, 37.337379, 37.250267>,  <39.212723, 37.360161, 37.116035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410366, 37.337379, 37.250267>,  <39.739769, 37.299412, 37.473988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410366, 37.337379, 37.250267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537870, 0.444064, -0.716591,
		0.180348, -0.890953, -0.416746,
		-0.823511, 0.094919, -0.559303,
		39.163311, 37.365856, 37.082478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845547, 36.942726, 36.775166>,  <39.739769, 37.299412, 37.473988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845547, 36.942726, 36.775166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570316, 37.231026, 36.741539>,  <39.405178, 37.404007, 36.721363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570316, 37.231026, 36.741539>,  <39.845547, 36.942726, 36.775166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570316, 37.231026, 36.741539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611837, 0.513976, -0.601236,
		-0.390132, -0.465133, -0.794637,
		-0.688079, 0.720750, -0.084067,
		39.363892, 37.447250, 36.716320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754562, 37.177364, 36.081169>,  <39.845547, 36.942726, 36.775166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754562, 37.177364, 36.081169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669056, 37.488449, 36.317635>,  <39.617752, 37.675098, 36.459515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669056, 37.488449, 36.317635>,  <39.754562, 37.177364, 36.081169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669056, 37.488449, 36.317635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634221, 0.570759, -0.521534,
		-0.743013, 0.263440, -0.615249,
		-0.213766, 0.777710, 0.591160,
		39.604927, 37.721764, 36.494984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565918, 37.847809, 35.640675>,  <39.754562, 37.177364, 36.081169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565918, 37.847809, 35.640675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726280, 37.956161, 35.990738>,  <39.822498, 38.021175, 36.200775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726280, 37.956161, 35.990738>,  <39.565918, 37.847809, 35.640675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726280, 37.956161, 35.990738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699724, 0.526059, -0.483372,
		-0.591321, 0.806154, 0.021357,
		0.400907, 0.270884, 0.875155,
		39.846554, 38.037426, 36.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751999, 38.555534, 35.573689>,  <39.565918, 37.847809, 35.640675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751999, 38.555534, 35.573689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979340, 38.403938, 35.865810>,  <40.115746, 38.312981, 36.041084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979340, 38.403938, 35.865810>,  <39.751999, 38.555534, 35.573689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979340, 38.403938, 35.865810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815712, 0.375686, -0.439856,
		-0.107662, 0.845709, 0.522671,
		0.568350, -0.378994, 0.730302,
		40.149845, 38.290241, 36.084900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243187, 38.994587, 35.784817>,  <39.751999, 38.555534, 35.573689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243187, 38.994587, 35.784817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401203, 38.636414, 35.866924>,  <40.496014, 38.421509, 35.916187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401203, 38.636414, 35.866924>,  <40.243187, 38.994587, 35.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401203, 38.636414, 35.866924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872050, 0.295241, -0.390335,
		0.288917, 0.333204, 0.897498,
		0.395040, -0.895437, 0.205270,
		40.519714, 38.367783, 35.928505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849998, 39.023937, 36.204807>,  <40.243187, 38.994587, 35.784817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849998, 39.023937, 36.204807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864807, 38.685677, 35.991825>,  <40.873692, 38.482719, 35.864037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864807, 38.685677, 35.991825>,  <40.849998, 39.023937, 36.204807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864807, 38.685677, 35.991825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904851, 0.254497, -0.341284,
		0.424115, -0.469154, 0.774610,
		0.037021, -0.845651, -0.532451,
		40.875912, 38.431980, 35.832088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460316, 38.580017, 36.331059>,  <40.849998, 39.023937, 36.204807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460316, 38.580017, 36.331059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358730, 38.510834, 35.950409>,  <41.297779, 38.469322, 35.722019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358730, 38.510834, 35.950409>,  <41.460316, 38.580017, 36.331059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358730, 38.510834, 35.950409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949210, 0.144375, -0.279564,
		0.185744, -0.974290, 0.127509,
		-0.253967, -0.172960, -0.951623,
		41.282539, 38.458946, 35.664921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832226, 38.073086, 36.031609>,  <41.460316, 38.580017, 36.331059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832226, 38.073086, 36.031609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733433, 38.301922, 35.718761>,  <41.674156, 38.439224, 35.531052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733433, 38.301922, 35.718761>,  <41.832226, 38.073086, 36.031609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733433, 38.301922, 35.718761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968087, 0.181069, -0.173268,
		0.042494, -0.799957, -0.598551,
		-0.246986, 0.572086, -0.782122,
		41.659336, 38.473549, 35.484123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665516, 37.480083, 35.590004>,  <41.832226, 38.073086, 36.031609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665516, 37.480083, 35.590004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008907, 37.323479, 35.457497>,  <42.214943, 37.229515, 35.377991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008907, 37.323479, 35.457497>,  <41.665516, 37.480083, 35.590004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008907, 37.323479, 35.457497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240588, 0.263004, -0.934316,
		0.452918, 0.881787, 0.131591,
		0.858477, -0.391509, -0.331267,
		42.266449, 37.206024, 35.358116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018448, 37.994503, 35.194771>,  <41.665516, 37.480083, 35.590004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018448, 37.994503, 35.194771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138790, 37.636272, 35.063663>,  <42.210995, 37.421333, 34.985001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138790, 37.636272, 35.063663>,  <42.018448, 37.994503, 35.194771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138790, 37.636272, 35.063663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241359, 0.260998, -0.934680,
		0.922622, 0.360313, -0.137633,
		0.300855, -0.895575, -0.327767,
		42.229046, 37.367599, 34.965332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317379, 38.063004, 34.502918>,  <42.018448, 37.994503, 35.194771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317379, 38.063004, 34.502918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264244, 37.667889, 34.470329>,  <42.232365, 37.430820, 34.450775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264244, 37.667889, 34.470329>,  <42.317379, 38.063004, 34.502918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264244, 37.667889, 34.470329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265745, 0.114684, -0.957198,
		0.954847, -0.105503, -0.277733,
		-0.132839, -0.987784, -0.081469,
		42.224392, 37.371555, 34.445889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549789, 37.848232, 33.820637>,  <42.317379, 38.063004, 34.502918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549789, 37.848232, 33.820637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326855, 37.535629, 33.932793>,  <42.193092, 37.348068, 34.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326855, 37.535629, 33.932793>,  <42.549789, 37.848232, 33.820637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326855, 37.535629, 33.932793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303416, -0.122644, -0.944932,
		0.772858, -0.611726, -0.168766,
		-0.557341, -0.781505, 0.280394,
		42.159653, 37.301178, 34.016911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813881, 37.274014, 33.390133>,  <42.549789, 37.848232, 33.820637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813881, 37.274014, 33.390133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450104, 37.178139, 33.526047>,  <42.231834, 37.120613, 33.607597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450104, 37.178139, 33.526047>,  <42.813881, 37.274014, 33.390133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450104, 37.178139, 33.526047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224563, -0.404631, -0.886479,
		0.349966, -0.882510, 0.314166,
		-0.909447, -0.239687, 0.339787,
		42.177269, 37.106232, 33.627983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674900, 36.632603, 33.058014>,  <42.813881, 37.274014, 33.390133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674900, 36.632603, 33.058014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336433, 36.803181, 33.185860>,  <42.133354, 36.905525, 33.262566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336433, 36.803181, 33.185860>,  <42.674900, 36.632603, 33.058014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336433, 36.803181, 33.185860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457421, -0.273445, -0.846164,
		-0.273445, -0.862192, 0.426443,
		0.846164, -0.426443, -0.319613,
		42.082584, 36.931114, 33.281742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125999, 36.140877, 32.962059>,  <42.674900, 36.632603, 33.058014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125999, 36.140877, 32.962059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974670, 36.510616, 32.981834>,  <41.883873, 36.732460, 32.993702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974670, 36.510616, 32.981834>,  <42.125999, 36.140877, 32.962059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974670, 36.510616, 32.981834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498508, -0.158449, -0.852281,
		-0.779973, -0.347087, 0.520742,
		-0.378326, 0.924351, 0.049440,
		41.861172, 36.787922, 32.996666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409821, 36.123489, 32.731014>,  <42.125999, 36.140877, 32.962059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409821, 36.123489, 32.731014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514797, 36.507362, 32.690742>,  <41.577785, 36.737686, 32.666580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514797, 36.507362, 32.690742>,  <41.409821, 36.123489, 32.731014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514797, 36.507362, 32.690742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593211, 0.078164, -0.801243,
		-0.761068, 0.270008, 0.589807,
		0.262444, 0.959680, -0.100683,
		41.593529, 36.795265, 32.660538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783066, 36.419804, 32.560432>,  <41.409821, 36.123489, 32.731014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783066, 36.419804, 32.560432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086067, 36.663551, 32.466747>,  <41.267868, 36.809799, 32.410538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086067, 36.663551, 32.466747>,  <40.783066, 36.419804, 32.560432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086067, 36.663551, 32.466747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273847, -0.029066, -0.961334,
		-0.592612, 0.792356, 0.144856,
		0.757508, 0.609367, -0.234210,
		41.313320, 36.846363, 32.396484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421352, 36.904491, 32.078869>,  <40.783066, 36.419804, 32.560432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421352, 36.904491, 32.078869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808422, 36.945766, 31.986824>,  <41.040665, 36.970531, 31.931597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808422, 36.945766, 31.986824>,  <40.421352, 36.904491, 32.078869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808422, 36.945766, 31.986824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222972, -0.076251, -0.971838,
		-0.117826, 0.991735, -0.050778,
		0.967678, 0.103186, -0.230113,
		41.098724, 36.976723, 31.917789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488876, 37.455776, 31.570841>,  <40.421352, 36.904491, 32.078869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488876, 37.455776, 31.570841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812950, 37.224354, 31.533169>,  <41.007397, 37.085499, 31.510565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812950, 37.224354, 31.533169>,  <40.488876, 37.455776, 31.570841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812950, 37.224354, 31.533169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003431, 0.155985, -0.987754,
		0.586162, 0.800588, 0.124392,
		0.810187, -0.578557, -0.094180,
		41.056007, 37.050785, 31.504915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821671, 37.697384, 30.961811>,  <40.488876, 37.455776, 31.570841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821671, 37.697384, 30.961811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013771, 37.351955, 31.023258>,  <41.129032, 37.144699, 31.060127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013771, 37.351955, 31.023258>,  <40.821671, 37.697384, 30.961811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013771, 37.351955, 31.023258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050956, -0.147375, -0.987767,
		0.875651, 0.482202, -0.026773,
		0.480249, -0.863575, 0.153620,
		41.157845, 37.092884, 31.069344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347141, 37.689003, 30.592846>,  <40.821671, 37.697384, 30.961811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347141, 37.689003, 30.592846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279179, 37.299442, 30.653048>,  <41.238400, 37.065708, 30.689169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279179, 37.299442, 30.653048>,  <41.347141, 37.689003, 30.592846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279179, 37.299442, 30.653048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133900, -0.128491, -0.982630,
		0.976321, -0.187107, -0.108574,
		-0.169906, -0.973900, 0.150502,
		41.228207, 37.007271, 30.698198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852303, 37.329071, 30.193233>,  <41.347141, 37.689003, 30.592846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852303, 37.329071, 30.193233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527958, 37.107601, 30.269081>,  <41.333351, 36.974720, 30.314590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527958, 37.107601, 30.269081>,  <41.852303, 37.329071, 30.193233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527958, 37.107601, 30.269081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115718, -0.165928, -0.979325,
		0.573686, -0.816038, 0.070474,
		-0.810860, -0.553670, 0.189620,
		41.284698, 36.941502, 30.325968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957130, 36.847260, 29.743469>,  <41.852303, 37.329071, 30.193233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957130, 36.847260, 29.743469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573795, 36.811100, 29.851847>,  <41.343792, 36.789406, 29.916874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573795, 36.811100, 29.851847>,  <41.957130, 36.847260, 29.743469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573795, 36.811100, 29.851847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241400, -0.250700, -0.937484,
		0.152675, -0.963835, 0.218433,
		-0.958341, -0.090400, 0.270945,
		41.286293, 36.783981, 29.933130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773315, 36.275414, 29.294062>,  <41.957130, 36.847260, 29.743469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773315, 36.275414, 29.294062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430695, 36.458210, 29.389965>,  <41.225124, 36.567886, 29.447508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430695, 36.458210, 29.389965>,  <41.773315, 36.275414, 29.294062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430695, 36.458210, 29.389965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277550, -0.016253, -0.960574,
		-0.435077, -0.889323, 0.140759,
		-0.856548, 0.456991, 0.239760,
		41.173729, 36.595306, 29.461893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315453, 35.981163, 28.867785>,  <41.773315, 36.275414, 29.294062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315453, 35.981163, 28.867785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121918, 36.306614, 28.996727>,  <41.005798, 36.501884, 29.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121918, 36.306614, 28.996727>,  <41.315453, 35.981163, 28.867785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121918, 36.306614, 28.996727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491411, 0.052211, -0.869361,
		-0.724167, -0.579038, 0.374563,
		-0.483837, 0.813627, 0.322356,
		40.976768, 36.550701, 29.093433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602654, 35.829830, 28.725914>,  <41.315453, 35.981163, 28.867785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602654, 35.829830, 28.725914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673199, 36.219715, 28.780798>,  <40.715527, 36.453648, 28.813728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673199, 36.219715, 28.780798>,  <40.602654, 35.829830, 28.725914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673199, 36.219715, 28.780798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499692, 0.208755, -0.840672,
		-0.848058, 0.079704, 0.523874,
		0.176366, 0.974715, 0.137208,
		40.726109, 36.512131, 28.821960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031384, 36.157078, 28.739952>,  <40.602654, 35.829830, 28.725914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031384, 36.157078, 28.739952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278126, 36.457539, 28.645916>,  <40.426170, 36.637814, 28.589495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278126, 36.457539, 28.645916>,  <40.031384, 36.157078, 28.739952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278126, 36.457539, 28.645916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500770, 0.144118, -0.853498,
		-0.607224, 0.644209, 0.465052,
		0.616854, 0.751149, -0.235089,
		40.463181, 36.682884, 28.575390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527687, 36.745094, 28.569244>,  <40.031384, 36.157078, 28.739952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527687, 36.745094, 28.569244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883446, 36.849861, 28.419378>,  <40.096901, 36.912720, 28.329458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883446, 36.849861, 28.419378>,  <39.527687, 36.745094, 28.569244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883446, 36.849861, 28.419378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425431, 0.174336, -0.888040,
		-0.167272, 0.949214, 0.266480,
		0.889398, 0.261913, -0.374664,
		40.150265, 36.928436, 28.306978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050415, 37.299461, 28.796736>,  <39.527687, 36.745094, 28.569244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050415, 37.299461, 28.796736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654053, 37.326305, 28.750084>,  <39.416237, 37.342411, 28.722094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654053, 37.326305, 28.750084>,  <40.050415, 37.299461, 28.796736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654053, 37.326305, 28.750084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082827, 0.378867, 0.921737,
		0.106043, 0.923015, -0.369864,
		-0.990906, 0.067109, -0.116627,
		39.356781, 37.346439, 28.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824093, 37.986748, 29.061102>,  <40.050415, 37.299461, 28.796736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824093, 37.986748, 29.061102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522717, 37.723915, 29.070648>,  <39.341888, 37.566216, 29.076376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522717, 37.723915, 29.070648>,  <39.824093, 37.986748, 29.061102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522717, 37.723915, 29.070648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132814, 0.187642, 0.973217,
		-0.643957, 0.730096, -0.228647,
		-0.753446, -0.657077, 0.023866,
		39.296684, 37.526791, 29.077808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637253, 38.601227, 28.662189>,  <39.824093, 37.986748, 29.061102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637253, 38.601227, 28.662189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582951, 38.206123, 28.631462>,  <39.550369, 37.969063, 28.613026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582951, 38.206123, 28.631462>,  <39.637253, 38.601227, 28.662189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582951, 38.206123, 28.631462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217936, 0.045864, -0.974885,
		0.966475, -0.149086, 0.209043,
		-0.135754, -0.987760, -0.076818,
		39.542225, 37.909794, 28.608418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214039, 38.530087, 28.178442>,  <39.637253, 38.601227, 28.662189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214039, 38.530087, 28.178442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924503, 38.254620, 28.161440>,  <39.750782, 38.089340, 28.151239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924503, 38.254620, 28.161440>,  <40.214039, 38.530087, 28.178442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924503, 38.254620, 28.161440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185098, -0.134469, -0.973477,
		0.664683, -0.712503, 0.224803,
		-0.723834, -0.688664, -0.042503,
		39.707352, 38.048019, 28.148689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486881, 39.292645, 28.078831>,  <40.214039, 38.530087, 28.178442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486881, 39.292645, 28.078831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569992, 39.645790, 27.910366>,  <40.619858, 39.857677, 27.809286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569992, 39.645790, 27.910366>,  <40.486881, 39.292645, 28.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569992, 39.645790, 27.910366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975310, -0.219918, 0.020151,
		-0.074831, -0.414951, -0.906761,
		0.207774, 0.882865, -0.421163,
		40.632324, 39.910648, 27.784018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842319, 39.138706, 28.678156>,  <40.486881, 39.292645, 28.078831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842319, 39.138706, 28.678156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822838, 39.421291, 28.960585>,  <40.811150, 39.590843, 29.130043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822838, 39.421291, 28.960585>,  <40.842319, 39.138706, 28.678156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822838, 39.421291, 28.960585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857987, 0.332325, -0.391687,
		-0.511358, -0.624878, 0.589950,
		-0.048702, 0.706461, 0.706074,
		40.808228, 39.633228, 29.172407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614727, 38.991199, 28.374193>,  <40.842319, 39.138706, 28.678156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614727, 38.991199, 28.374193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789562, 38.973255, 28.733513>,  <41.894463, 38.962490, 28.949104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789562, 38.973255, 28.733513>,  <41.614727, 38.991199, 28.374193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789562, 38.973255, 28.733513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565341, 0.790493, -0.235606,
		-0.699530, 0.610826, 0.370877,
		0.437090, -0.044858, 0.898299,
		41.920689, 38.959797, 29.003002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041145, 39.367794, 27.899023>,  <41.614727, 38.991199, 28.374193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041145, 39.367794, 27.899023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879826, 39.716026, 27.786278>,  <41.783035, 39.924965, 27.718632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879826, 39.716026, 27.786278>,  <42.041145, 39.367794, 27.899023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879826, 39.716026, 27.786278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598803, 0.483995, 0.638111,
		0.691944, 0.088570, -0.716498,
		-0.403299, 0.870577, -0.281861,
		41.758835, 39.977200, 27.701719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647324, 39.914505, 27.747849>,  <42.041145, 39.367794, 27.899023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647324, 39.914505, 27.747849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304535, 40.098797, 27.840225>,  <42.098862, 40.209373, 27.895651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304535, 40.098797, 27.840225>,  <42.647324, 39.914505, 27.747849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304535, 40.098797, 27.840225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497621, 0.623137, 0.603386,
		0.134089, 0.632004, -0.763277,
		-0.856968, 0.460729, 0.230943,
		42.047443, 40.237015, 27.909508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321320, 39.565521, 27.504309>,  <42.647324, 39.914505, 27.747849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321320, 39.565521, 27.504309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267487, 39.882446, 27.742344>,  <43.235188, 40.072601, 27.885164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267487, 39.882446, 27.742344>,  <43.321320, 39.565521, 27.504309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267487, 39.882446, 27.742344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152010, -0.609950, 0.777723,
		0.979174, 0.014205, 0.202526,
		-0.134578, 0.792312, 0.595088,
		43.227112, 40.120140, 27.920870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866665, 39.692196, 27.960951>,  <43.321320, 39.565521, 27.504309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866665, 39.692196, 27.960951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529186, 39.810909, 28.139877>,  <43.326698, 39.882137, 28.247232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529186, 39.810909, 28.139877>,  <43.866665, 39.692196, 27.960951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529186, 39.810909, 28.139877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187918, -0.617267, 0.763982,
		0.502852, 0.728629, 0.465016,
		-0.843699, 0.296785, 0.447316,
		43.276077, 39.899944, 28.274073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039902, 40.202309, 28.428493>,  <43.866665, 39.692196, 27.960951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039902, 40.202309, 28.428493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732811, 39.963028, 28.520372>,  <43.548557, 39.819462, 28.575500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732811, 39.963028, 28.520372>,  <44.039902, 40.202309, 28.428493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732811, 39.963028, 28.520372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446905, -0.242962, 0.860956,
		-0.459215, 0.763628, 0.453865,
		-0.767722, -0.598198, 0.229698,
		43.502495, 39.783569, 28.589281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923409, 40.313286, 29.124657>,  <44.039902, 40.202309, 28.428493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923409, 40.313286, 29.124657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729610, 39.969036, 29.061928>,  <43.613331, 39.762486, 29.024290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729610, 39.969036, 29.061928>,  <43.923409, 40.313286, 29.124657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729610, 39.969036, 29.061928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369213, -0.363693, 0.855225,
		-0.793058, 0.356456, 0.493961,
		-0.484500, -0.860620, -0.156822,
		43.584259, 39.710850, 29.014881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442753, 40.188263, 29.661409>,  <43.923409, 40.313286, 29.124657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442753, 40.188263, 29.661409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504959, 39.831730, 29.491070>,  <43.542282, 39.617809, 29.388866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504959, 39.831730, 29.491070>,  <43.442753, 40.188263, 29.661409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504959, 39.831730, 29.491070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090294, -0.416462, 0.904658,
		-0.983698, -0.179142, 0.015714,
		0.155518, -0.891329, -0.425848,
		43.551613, 39.564331, 29.363316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907017, 39.661232, 30.029352>,  <43.442753, 40.188263, 29.661409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907017, 39.661232, 30.029352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196434, 39.448433, 29.853413>,  <43.370083, 39.320751, 29.747849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196434, 39.448433, 29.853413>,  <42.907017, 39.661232, 30.029352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196434, 39.448433, 29.853413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383932, -0.219392, 0.896919,
		-0.573662, -0.817827, 0.045514,
		0.723539, -0.532003, -0.439847,
		43.413494, 39.288834, 29.721458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917290, 39.012962, 30.428673>,  <42.907017, 39.661232, 30.029352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917290, 39.012962, 30.428673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258675, 38.972839, 30.224110>,  <43.463505, 38.948765, 30.101372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258675, 38.972839, 30.224110>,  <42.917290, 39.012962, 30.428673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258675, 38.972839, 30.224110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483900, -0.211816, 0.849102,
		-0.193488, -0.972149, -0.132243,
		0.853465, -0.100299, -0.511407,
		43.514713, 38.942745, 30.070686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141819, 38.345581, 30.571398>,  <42.917290, 39.012962, 30.428673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141819, 38.345581, 30.571398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477867, 38.536919, 30.469120>,  <43.679497, 38.651722, 30.407753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477867, 38.536919, 30.469120>,  <43.141819, 38.345581, 30.571398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477867, 38.536919, 30.469120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449711, -0.350741, 0.821426,
		0.303244, -0.805086, -0.509783,
		0.840121, 0.478348, -0.255697,
		43.729904, 38.680424, 30.392410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802944, 37.819160, 30.588072>,  <43.141819, 38.345581, 30.571398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802944, 37.819160, 30.588072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939667, 38.193474, 30.622644>,  <44.021702, 38.418064, 30.643389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939667, 38.193474, 30.622644>,  <43.802944, 37.819160, 30.588072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939667, 38.193474, 30.622644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397149, -0.227190, 0.889189,
		0.851729, -0.269603, -0.449302,
		0.341805, 0.935788, 0.086431,
		44.042210, 38.474209, 30.648573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440929, 37.693794, 30.666235>,  <43.802944, 37.819160, 30.588072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440929, 37.693794, 30.666235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345390, 38.052036, 30.816349>,  <44.288067, 38.266983, 30.906418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345390, 38.052036, 30.816349>,  <44.440929, 37.693794, 30.666235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345390, 38.052036, 30.816349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433239, -0.247594, 0.866604,
		0.869055, 0.369573, -0.328875,
		-0.238845, 0.895608, 0.375286,
		44.273735, 38.320717, 30.928934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003029, 37.823483, 31.160543>,  <44.440929, 37.693794, 30.666235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003029, 37.823483, 31.160543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739723, 38.106228, 31.264103>,  <44.581738, 38.275875, 31.326239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739723, 38.106228, 31.264103>,  <45.003029, 37.823483, 31.160543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739723, 38.106228, 31.264103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353576, -0.013300, 0.935311,
		0.664581, 0.707224, -0.241176,
		-0.658267, 0.706864, 0.258896,
		44.542244, 38.318287, 31.341772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344803, 38.311588, 31.490198>,  <45.003029, 37.823483, 31.160543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344803, 38.311588, 31.490198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970543, 38.363377, 31.621523>,  <44.745987, 38.394447, 31.700317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970543, 38.363377, 31.621523>,  <45.344803, 38.311588, 31.490198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970543, 38.363377, 31.621523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325917, -0.039898, 0.944556,
		0.135389, 0.990781, -0.004865,
		-0.935654, 0.129468, 0.328314,
		44.689846, 38.402218, 31.720016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292648, 38.899555, 32.023529>,  <45.344803, 38.311588, 31.490198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292648, 38.899555, 32.023529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974949, 38.666382, 32.092068>,  <44.784328, 38.526478, 32.133190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974949, 38.666382, 32.092068>,  <45.292648, 38.899555, 32.023529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974949, 38.666382, 32.092068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261884, -0.073967, 0.962261,
		-0.548263, 0.809143, 0.211410,
		-0.794244, -0.582937, 0.171348,
		44.736675, 38.491501, 32.143471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132805, 39.025673, 32.746044>,  <45.292648, 38.899555, 32.023529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132805, 39.025673, 32.746044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895763, 38.706825, 32.699707>,  <44.753540, 38.515518, 32.671906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895763, 38.706825, 32.699707>,  <45.132805, 39.025673, 32.746044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895763, 38.706825, 32.699707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016047, -0.132109, 0.991105,
		-0.805334, 0.589192, 0.065497,
		-0.592604, -0.797119, -0.115847,
		44.717983, 38.467690, 32.664951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740925, 39.086189, 33.286194>,  <45.132805, 39.025673, 32.746044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740925, 39.086189, 33.286194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711281, 38.698807, 33.191032>,  <44.693493, 38.466377, 33.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.711281, 38.698807, 33.191032>,  <44.740925, 39.086189, 33.286194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711281, 38.698807, 33.191032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043112, -0.235228, 0.970984,
		-0.996318, 0.082215, -0.024319,
		-0.074109, -0.968457, -0.237906,
		44.689049, 38.408268, 33.119659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193771, 38.759743, 33.674778>,  <44.740925, 39.086189, 33.286194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193771, 38.759743, 33.674778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437504, 38.457127, 33.579823>,  <44.583744, 38.275555, 33.522850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437504, 38.457127, 33.579823>,  <44.193771, 38.759743, 33.674778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437504, 38.457127, 33.579823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072246, -0.351116, 0.933541,
		-0.789616, -0.551687, -0.268604,
		0.609333, -0.756544, -0.237389,
		44.620304, 38.230164, 33.508606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841572, 38.187069, 33.808578>,  <44.193771, 38.759743, 33.674778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841572, 38.187069, 33.808578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226196, 38.077358, 33.813839>,  <44.456970, 38.011532, 33.816994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.226196, 38.077358, 33.813839>,  <43.841572, 38.187069, 33.808578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.226196, 38.077358, 33.813839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112344, -0.349261, 0.930266,
		-0.250558, -0.895985, -0.366649,
		0.961561, -0.274276, 0.013149,
		44.514664, 37.995075, 33.817783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774185, 37.541019, 34.080677>,  <43.841572, 38.187069, 33.808578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774185, 37.541019, 34.080677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174019, 37.548569, 34.089394>,  <44.413918, 37.553097, 34.094624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174019, 37.548569, 34.089394>,  <43.774185, 37.541019, 34.080677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174019, 37.548569, 34.089394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010710, -0.458654, 0.888550,
		0.026759, -0.888414, -0.458261,
		0.999584, 0.018869, 0.021788,
		44.473896, 37.554230, 34.095928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101170, 36.851410, 34.161060>,  <43.774185, 37.541019, 34.080677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101170, 36.851410, 34.161060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368553, 37.113869, 34.301144>,  <44.528984, 37.271343, 34.385193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368553, 37.113869, 34.301144>,  <44.101170, 36.851410, 34.161060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368553, 37.113869, 34.301144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047868, -0.507840, 0.860120,
		0.742211, -0.558188, -0.370877,
		0.668455, 0.656144, 0.350205,
		44.569088, 37.310711, 34.406204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615952, 36.487907, 34.634106>,  <44.101170, 36.851410, 34.161060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615952, 36.487907, 34.634106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633553, 36.866573, 34.761784>,  <44.644112, 37.093773, 34.838390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.633553, 36.866573, 34.761784>,  <44.615952, 36.487907, 34.634106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633553, 36.866573, 34.761784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033376, -0.320723, 0.946585,
		0.998474, -0.030999, -0.045708,
		0.044003, 0.946666, 0.319199,
		44.646755, 37.150574, 34.857544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072781, 36.402977, 35.145348>,  <44.615952, 36.487907, 34.634106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072781, 36.402977, 35.145348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919353, 36.762524, 35.230118>,  <44.827297, 36.978252, 35.280979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919353, 36.762524, 35.230118>,  <45.072781, 36.402977, 35.145348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919353, 36.762524, 35.230118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074774, -0.258954, 0.962991,
		0.920480, 0.353528, 0.166539,
		-0.383570, 0.898866, 0.211928,
		44.804283, 37.032185, 35.293697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504902, 36.756332, 35.739582>,  <45.072781, 36.402977, 35.145348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504902, 36.756332, 35.739582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116093, 36.845314, 35.709438>,  <44.882805, 36.898705, 35.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.116093, 36.845314, 35.709438>,  <45.504902, 36.756332, 35.739582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116093, 36.845314, 35.709438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138900, -0.285732, 0.948190,
		0.189398, 0.932133, 0.308638,
		-0.972026, 0.222455, -0.075357,
		44.824486, 36.912052, 35.686832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219051, 37.016056, 35.698830>,  <45.504902, 36.756332, 35.739582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219051, 37.016056, 35.698830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287636, 36.631821, 35.611309>,  <46.328785, 36.401279, 35.558796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.287636, 36.631821, 35.611309>,  <46.219051, 37.016056, 35.698830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287636, 36.631821, 35.611309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703451, 0.274862, -0.655445,
		0.689753, -0.041537, 0.722853,
		0.171459, -0.960586, -0.218806,
		46.339073, 36.343643, 35.545666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919098, 36.730713, 35.805611>,  <46.219051, 37.016056, 35.698830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919098, 36.730713, 35.805611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787056, 36.517284, 35.494141>,  <46.707832, 36.389229, 35.307259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787056, 36.517284, 35.494141>,  <46.919098, 36.730713, 35.805611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787056, 36.517284, 35.494141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789479, 0.296139, -0.537609,
		0.517449, -0.792213, 0.323488,
		-0.330104, -0.533573, -0.778673,
		46.688026, 36.357212, 35.260540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.352238, 36.130638, 35.587555>,  <46.919098, 36.730713, 35.805611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.352238, 36.130638, 35.587555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146511, 36.332169, 35.309956>,  <47.023075, 36.453087, 35.143394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.146511, 36.332169, 35.309956>,  <47.352238, 36.130638, 35.587555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146511, 36.332169, 35.309956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857186, 0.276842, -0.434271,
		-0.026668, -0.818240, -0.574258,
		-0.514317, 0.503826, -0.694001,
		46.992214, 36.483315, 35.101757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.556606, 35.932774, 34.863998>,  <47.352238, 36.130638, 35.587555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.556606, 35.932774, 34.863998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430847, 36.309059, 34.914936>,  <47.355392, 36.534828, 34.945499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430847, 36.309059, 34.914936>,  <47.556606, 35.932774, 34.863998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430847, 36.309059, 34.914936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851897, 0.338777, -0.399376,
		-0.418839, -0.017078, -0.907900,
		-0.314396, 0.940712, 0.127345,
		47.336529, 36.591274, 34.953140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.057144, 35.320900, 35.304108>,  <47.556606, 35.932774, 34.863998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.057144, 35.320900, 35.304108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879776, 35.075474, 35.042755>,  <47.773354, 34.928219, 34.885944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.879776, 35.075474, 35.042755>,  <48.057144, 35.320900, 35.304108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.879776, 35.075474, 35.042755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845658, 0.527980, 0.078102,
		0.297052, 0.587171, -0.752988,
		-0.443422, -0.613570, -0.653383,
		47.746750, 34.891403, 34.846741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.452887, 40.962395, 41.415524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.178679, 40.690342, 41.311619>,  <31.014154, 40.527111, 41.249275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.178679, 40.690342, 41.311619>,  <31.452887, 40.962395, 41.415524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178679, 40.690342, 41.311619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591226, -0.311830, -0.743784,
		0.424872, -0.663458, 0.615879,
		-0.685519, -0.680137, -0.259766,
		30.973022, 40.486301, 41.233688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897121, 40.290596, 41.324516>,  <31.452887, 40.962395, 41.415524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897121, 40.290596, 41.324516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543182, 40.256054, 41.141392>,  <31.330820, 40.235329, 41.031517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.543182, 40.256054, 41.141392>,  <31.897121, 40.290596, 41.324516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543182, 40.256054, 41.141392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454574, -0.375245, -0.807808,
		-0.102029, -0.922894, 0.371290,
		-0.884846, -0.086359, -0.457810,
		31.277729, 40.230145, 41.004047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845190, 39.695473, 41.068016>,  <31.897121, 40.290596, 41.324516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845190, 39.695473, 41.068016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.574068, 39.865246, 40.827869>,  <31.411396, 39.967110, 40.683781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.574068, 39.865246, 40.827869>,  <31.845190, 39.695473, 41.068016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574068, 39.865246, 40.827869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450231, -0.405954, -0.795294,
		-0.581271, -0.809356, 0.084064,
		-0.677803, 0.424433, -0.600367,
		31.370728, 39.992577, 40.647758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687897, 39.189880, 40.589561>,  <31.845190, 39.695473, 41.068016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687897, 39.189880, 40.589561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.576120, 39.528416, 40.408180>,  <31.509054, 39.731537, 40.299351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.576120, 39.528416, 40.408180>,  <31.687897, 39.189880, 40.589561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576120, 39.528416, 40.408180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343016, -0.353109, -0.870433,
		-0.896801, -0.398779, -0.191634,
		-0.279443, 0.846338, -0.453456,
		31.492287, 39.782318, 40.272144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305958, 38.955788, 39.952408>,  <31.687897, 39.189880, 40.589561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305958, 38.955788, 39.952408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.423494, 39.333164, 39.890999>,  <31.494017, 39.559589, 39.854153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.423494, 39.333164, 39.890999>,  <31.305958, 38.955788, 39.952408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423494, 39.333164, 39.890999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480208, -0.284581, -0.829707,
		-0.826472, 0.170079, -0.536672,
		0.293842, 0.943444, -0.153525,
		31.511646, 39.616196, 39.844940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082685, 39.099293, 39.322891>,  <31.305958, 38.955788, 39.952408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082685, 39.099293, 39.322891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.378313, 39.352615, 39.414722>,  <31.555689, 39.504608, 39.469822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.378313, 39.352615, 39.414722>,  <31.082685, 39.099293, 39.322891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378313, 39.352615, 39.414722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506921, -0.298420, -0.808688,
		-0.443634, 0.714053, -0.541587,
		0.739067, 0.633304, 0.229579,
		31.600033, 39.542606, 39.483597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188309, 39.253380, 38.699421>,  <31.082685, 39.099293, 39.322891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188309, 39.253380, 38.699421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.513155, 39.367886, 38.902802>,  <31.708063, 39.436588, 39.024830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.513155, 39.367886, 38.902802>,  <31.188309, 39.253380, 38.699421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513155, 39.367886, 38.902802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570493, -0.206599, -0.794893,
		-0.122503, 0.935612, -0.331093,
		0.812115, 0.286264, 0.508451,
		31.756790, 39.453766, 39.055336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650444, 39.680325, 38.218380>,  <31.188309, 39.253380, 38.699421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650444, 39.680325, 38.218380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.908644, 39.591480, 38.510681>,  <32.063564, 39.538174, 38.686062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.908644, 39.591480, 38.510681>,  <31.650444, 39.680325, 38.218380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908644, 39.591480, 38.510681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693941, -0.229093, -0.682614,
		0.319027, 0.947725, 0.006254,
		0.645498, -0.222112, 0.730752,
		32.102295, 39.524845, 38.729908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312115, 40.128227, 38.070370>,  <31.650444, 39.680325, 38.218380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312115, 40.128227, 38.070370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.405079, 39.819736, 38.307415>,  <32.460857, 39.634644, 38.449642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.405079, 39.819736, 38.307415>,  <32.312115, 40.128227, 38.070370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405079, 39.819736, 38.307415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763082, -0.233206, -0.602761,
		0.603067, 0.592305, 0.534308,
		0.232415, -0.771226, 0.592616,
		32.474804, 39.588367, 38.485199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030457, 40.103592, 38.243126>,  <32.312115, 40.128227, 38.070370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030457, 40.103592, 38.243126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.900871, 39.734341, 38.325954>,  <32.823120, 39.512791, 38.375652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.900871, 39.734341, 38.325954>,  <33.030457, 40.103592, 38.243126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900871, 39.734341, 38.325954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821539, -0.383045, -0.422314,
		0.469167, 0.033299, 0.882481,
		-0.323968, -0.923129, 0.207069,
		32.803680, 39.457401, 38.388077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545647, 39.736706, 38.618999>,  <33.030457, 40.103592, 38.243126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545647, 39.736706, 38.618999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310085, 39.504684, 38.393883>,  <33.168751, 39.365471, 38.258812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.310085, 39.504684, 38.393883>,  <33.545647, 39.736706, 38.618999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310085, 39.504684, 38.393883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808193, -0.426686, -0.405911,
		-0.004682, -0.693882, 0.720074,
		-0.588899, -0.580058, -0.562788,
		33.133415, 39.330666, 38.225048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966133, 39.227619, 38.503365>,  <33.545647, 39.736706, 38.618999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966133, 39.227619, 38.503365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663864, 39.079948, 38.286972>,  <33.482502, 38.991344, 38.157135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.663864, 39.079948, 38.286972>,  <33.966133, 39.227619, 38.503365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663864, 39.079948, 38.286972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653381, -0.482042, -0.583720,
		-0.045278, -0.794570, 0.605482,
		-0.755674, -0.369181, -0.540983,
		33.437160, 38.969193, 38.124676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910652, 38.485847, 38.553928>,  <33.966133, 39.227619, 38.503365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910652, 38.485847, 38.553928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775181, 38.615810, 38.200718>,  <33.693897, 38.693787, 37.988792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.775181, 38.615810, 38.200718>,  <33.910652, 38.485847, 38.553928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775181, 38.615810, 38.200718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632051, -0.616650, -0.469314,
		-0.697000, -0.717063, 0.003489,
		-0.338679, 0.324906, -0.883025,
		33.673576, 38.713284, 37.935810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047241, 37.922443, 38.118515>,  <33.910652, 38.485847, 38.553928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047241, 37.922443, 38.118515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.961025, 38.222771, 37.868778>,  <33.909294, 38.402969, 37.718933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.961025, 38.222771, 37.868778>,  <34.047241, 37.922443, 38.118515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961025, 38.222771, 37.868778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637759, -0.375935, -0.672262,
		-0.739462, -0.543085, -0.397812,
		-0.215544, 0.750821, -0.624347,
		33.896362, 38.448017, 37.681473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125492, 37.627262, 37.506950>,  <34.047241, 37.922443, 38.118515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125492, 37.627262, 37.506950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126480, 38.013828, 37.404167>,  <34.127071, 38.245770, 37.342495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.126480, 38.013828, 37.404167>,  <34.125492, 37.627262, 37.506950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126480, 38.013828, 37.404167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438196, -0.232024, -0.868418,
		-0.898876, -0.110454, -0.424054,
		0.002471, 0.966418, -0.256962,
		34.127220, 38.303753, 37.327080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059399, 37.665386, 36.828255>,  <34.125492, 37.627262, 37.506950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059399, 37.665386, 36.828255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.170563, 38.045116, 36.886967>,  <34.237263, 38.272953, 36.922192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.170563, 38.045116, 36.886967>,  <34.059399, 37.665386, 36.828255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170563, 38.045116, 36.886967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323212, 0.051475, -0.944925,
		-0.904598, 0.310049, -0.292528,
		0.277915, 0.949326, 0.146776,
		34.253937, 38.329914, 36.931000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796265, 38.010387, 36.215797>,  <34.059399, 37.665386, 36.828255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796265, 38.010387, 36.215797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105843, 38.195564, 36.388630>,  <34.291588, 38.306671, 36.492329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.105843, 38.195564, 36.388630>,  <33.796265, 38.010387, 36.215797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105843, 38.195564, 36.388630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496716, -0.020570, -0.867669,
		-0.392790, 0.886151, -0.245869,
		0.773944, 0.462939, 0.432086,
		34.338024, 38.334446, 36.518257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943974, 38.507542, 35.701668>,  <33.796265, 38.010387, 36.215797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943974, 38.507542, 35.701668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262745, 38.470371, 35.940418>,  <34.454010, 38.448071, 36.083668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262745, 38.470371, 35.940418>,  <33.943974, 38.507542, 35.701668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262745, 38.470371, 35.940418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598551, -0.011799, -0.800998,
		0.081475, 0.995603, 0.046217,
		0.796931, -0.092924, 0.596880,
		34.501823, 38.442493, 36.119484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380337, 38.989079, 35.361809>,  <33.943974, 38.507542, 35.701668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380337, 38.989079, 35.361809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592453, 38.741318, 35.593372>,  <34.719723, 38.592663, 35.732311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592453, 38.741318, 35.593372>,  <34.380337, 38.989079, 35.361809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592453, 38.741318, 35.593372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650008, -0.141351, -0.746665,
		0.544314, 0.772245, 0.327658,
		0.530294, -0.619401, 0.578905,
		34.751541, 38.555496, 35.767044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017414, 39.228664, 35.373287>,  <34.380337, 38.989079, 35.361809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017414, 39.228664, 35.373287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052952, 38.841770, 35.468410>,  <35.074272, 38.609634, 35.525486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052952, 38.841770, 35.468410>,  <35.017414, 39.228664, 35.373287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052952, 38.841770, 35.468410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745592, -0.093734, -0.659778,
		0.660455, 0.235924, 0.712839,
		0.088841, -0.967240, 0.237810,
		35.079605, 38.551598, 35.539753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819466, 39.071289, 35.404411>,  <35.017414, 39.228664, 35.373287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819466, 39.071289, 35.404411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599224, 38.739094, 35.370651>,  <35.467079, 38.539776, 35.350395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.599224, 38.739094, 35.370651>,  <35.819466, 39.071289, 35.404411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599224, 38.739094, 35.370651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571503, -0.301328, -0.763273,
		0.608458, -0.468495, 0.640539,
		-0.550602, -0.830490, -0.084401,
		35.434044, 38.489948, 35.345329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331284, 38.432941, 35.335682>,  <35.819466, 39.071289, 35.404411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331284, 38.432941, 35.335682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975101, 38.375278, 35.163029>,  <35.761395, 38.340679, 35.059437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975101, 38.375278, 35.163029>,  <36.331284, 38.432941, 35.335682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975101, 38.375278, 35.163029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454155, -0.221222, -0.863021,
		0.028926, -0.964510, 0.262459,
		-0.890453, -0.144160, -0.431637,
		35.707966, 38.332031, 35.033539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462543, 38.987961, 35.704079>,  <36.331284, 38.432941, 35.335682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462543, 38.987961, 35.704079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778912, 39.155514, 35.882511>,  <36.968731, 39.256046, 35.989571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778912, 39.155514, 35.882511>,  <36.462543, 38.987961, 35.704079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778912, 39.155514, 35.882511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569077, 0.235531, 0.787830,
		0.224917, -0.876976, 0.424647,
		0.790926, 0.418854, 0.446092,
		37.016186, 39.281178, 36.016335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436005, 38.794823, 36.360466>,  <36.462543, 38.987961, 35.704079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436005, 38.794823, 36.360466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690083, 39.101963, 36.393784>,  <36.842529, 39.286247, 36.413773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690083, 39.101963, 36.393784>,  <36.436005, 38.794823, 36.360466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690083, 39.101963, 36.393784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400733, 0.235460, 0.885422,
		0.660257, -0.595794, 0.457265,
		0.635196, 0.767847, 0.083291,
		36.880642, 39.332317, 36.418770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656212, 38.770588, 37.010983>,  <36.436005, 38.794823, 36.360466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656212, 38.770588, 37.010983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737122, 39.147453, 36.904087>,  <36.785667, 39.373573, 36.839951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737122, 39.147453, 36.904087>,  <36.656212, 38.770588, 37.010983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737122, 39.147453, 36.904087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460160, 0.332314, 0.823298,
		0.864487, -0.043560, 0.500764,
		0.202274, 0.942162, -0.267237,
		36.797802, 39.430103, 36.823917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809700, 39.059803, 37.630451>,  <36.656212, 38.770588, 37.010983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809700, 39.059803, 37.630451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778755, 39.376347, 37.387878>,  <36.760189, 39.566273, 37.242336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778755, 39.376347, 37.387878>,  <36.809700, 39.059803, 37.630451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778755, 39.376347, 37.387878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220612, 0.579590, 0.784478,
		0.972289, 0.194473, 0.129747,
		-0.077359, 0.791363, -0.606432,
		36.755547, 39.613754, 37.205948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122391, 39.616291, 38.011196>,  <36.809700, 39.059803, 37.630451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122391, 39.616291, 38.011196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878399, 39.774902, 37.736771>,  <36.732002, 39.870071, 37.572113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878399, 39.774902, 37.736771>,  <37.122391, 39.616291, 38.011196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878399, 39.774902, 37.736771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415941, 0.576711, 0.703135,
		0.674478, 0.714260, -0.186847,
		-0.609978, 0.396531, -0.686068,
		36.695404, 39.893860, 37.530949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251038, 40.349957, 37.960175>,  <37.122391, 39.616291, 38.011196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251038, 40.349957, 37.960175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877075, 40.289490, 37.831738>,  <36.652699, 40.253208, 37.754673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.877075, 40.289490, 37.831738>,  <37.251038, 40.349957, 37.960175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877075, 40.289490, 37.831738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338885, 0.648961, 0.681180,
		0.105407, 0.745653, -0.657945,
		-0.934905, -0.151167, -0.321095,
		36.596603, 40.244141, 37.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833992, 41.042355, 38.037186>,  <37.251038, 40.349957, 37.960175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833992, 41.042355, 38.037186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560513, 40.750595, 38.027966>,  <36.396427, 40.575539, 38.022434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.560513, 40.750595, 38.027966>,  <36.833992, 41.042355, 38.037186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560513, 40.750595, 38.027966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510540, 0.455499, 0.729294,
		-0.521450, 0.510384, -0.683812,
		-0.683696, -0.729403, -0.023052,
		36.355404, 40.531773, 38.021049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059044, 41.344856, 38.163578>,  <36.833992, 41.042355, 38.037186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059044, 41.344856, 38.163578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009750, 40.952736, 38.225323>,  <35.980175, 40.717464, 38.262367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009750, 40.952736, 38.225323>,  <36.059044, 41.344856, 38.163578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009750, 40.952736, 38.225323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498603, 0.195648, 0.844462,
		-0.858026, 0.027101, -0.512891,
		-0.123232, -0.980300, 0.154359,
		35.972782, 40.658646, 38.271629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386177, 41.237507, 38.297276>,  <36.059044, 41.344856, 38.163578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386177, 41.237507, 38.297276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548428, 40.913273, 38.466232>,  <35.645779, 40.718731, 38.567604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548428, 40.913273, 38.466232>,  <35.386177, 41.237507, 38.297276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548428, 40.913273, 38.466232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637236, 0.080508, 0.766452,
		-0.655282, -0.580058, -0.483878,
		0.405631, -0.810586, 0.422389,
		35.670116, 40.670097, 38.592949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886517, 41.097061, 38.652897>,  <35.386177, 41.237507, 38.297276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886517, 41.097061, 38.652897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173248, 40.852787, 38.787491>,  <35.345287, 40.706223, 38.868248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.173248, 40.852787, 38.787491>,  <34.886517, 41.097061, 38.652897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173248, 40.852787, 38.787491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419538, 0.007687, 0.907705,
		-0.556906, -0.791839, -0.250694,
		0.716829, -0.610682, 0.336487,
		35.388298, 40.669582, 38.888435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578300, 40.508930, 39.024338>,  <34.886517, 41.097061, 38.652897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578300, 40.508930, 39.024338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949951, 40.547943, 39.167007>,  <35.172939, 40.571350, 39.252609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949951, 40.547943, 39.167007>,  <34.578300, 40.508930, 39.024338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949951, 40.547943, 39.167007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337593, -0.169779, 0.925854,
		0.150858, -0.980644, -0.124819,
		0.929125, 0.097534, 0.356671,
		35.228687, 40.577202, 39.274010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571602, 40.055012, 39.514080>,  <34.578300, 40.508930, 39.024338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571602, 40.055012, 39.514080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894691, 40.276066, 39.596226>,  <35.088547, 40.408699, 39.645512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.894691, 40.276066, 39.596226>,  <34.571602, 40.055012, 39.514080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894691, 40.276066, 39.596226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158364, -0.132153, 0.978497,
		0.567888, -0.822881, -0.019226,
		0.807728, 0.552632, 0.205363,
		35.137009, 40.441856, 39.657833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175186, 39.684155, 40.027355>,  <34.571602, 40.055012, 39.514080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175186, 39.684155, 40.027355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170994, 40.084061, 40.034843>,  <35.168476, 40.324005, 40.039337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170994, 40.084061, 40.034843>,  <35.175186, 39.684155, 40.027355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170994, 40.084061, 40.034843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173556, -0.020254, 0.984616,
		0.984768, 0.007075, 0.173728,
		-0.010485, 0.999770, 0.018718,
		35.167847, 40.383991, 40.040459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484116, 39.808811, 40.677860>,  <35.175186, 39.684155, 40.027355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484116, 39.808811, 40.677860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321087, 40.166115, 40.602001>,  <35.223270, 40.380497, 40.556484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321087, 40.166115, 40.602001>,  <35.484116, 39.808811, 40.677860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321087, 40.166115, 40.602001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349744, 0.039149, 0.936027,
		0.843543, 0.447826, 0.296457,
		-0.407571, 0.893263, -0.189649,
		35.198814, 40.434093, 40.545105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278847, 40.119946, 41.364662>,  <35.484116, 39.808811, 40.677860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278847, 40.119946, 41.364662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019318, 40.310246, 41.127110>,  <34.863602, 40.424423, 40.984577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019318, 40.310246, 41.127110>,  <35.278847, 40.119946, 41.364662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019318, 40.310246, 41.127110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593242, 0.172518, 0.786321,
		0.476546, 0.862497, 0.170301,
		-0.648820, 0.475748, -0.593883,
		34.824673, 40.452969, 40.948944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177822, 40.739075, 41.668968>,  <35.278847, 40.119946, 41.364662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177822, 40.739075, 41.668968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866875, 40.676414, 41.425278>,  <34.680305, 40.638817, 41.279064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866875, 40.676414, 41.425278>,  <35.177822, 40.739075, 41.668968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866875, 40.676414, 41.425278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597178, 0.488147, 0.636468,
		0.197690, 0.858588, -0.473018,
		-0.777366, -0.156653, -0.609231,
		34.633663, 40.629417, 41.242508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937359, 41.402493, 41.391319>,  <35.177822, 40.739075, 41.668968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937359, 41.402493, 41.391319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649734, 41.124748, 41.402779>,  <34.477161, 40.958103, 41.409653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.649734, 41.124748, 41.402779>,  <34.937359, 41.402493, 41.391319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649734, 41.124748, 41.402779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482891, 0.528866, 0.697937,
		-0.499770, 0.488024, -0.715585,
		-0.719059, -0.694358, 0.028650,
		34.434017, 40.916439, 41.411373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250069, 41.802212, 41.391403>,  <34.937359, 41.402493, 41.391319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250069, 41.802212, 41.391403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150517, 41.430187, 41.499512>,  <34.090786, 41.206974, 41.564377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150517, 41.430187, 41.499512>,  <34.250069, 41.802212, 41.391403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150517, 41.430187, 41.499512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692446, 0.365978, 0.621755,
		-0.677182, -0.032403, -0.735102,
		-0.248884, -0.930059, 0.270271,
		34.075851, 41.151169, 41.580593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.431404, 41.798008, 41.483101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537605, 41.452450, 41.654305>,  <33.601326, 41.245113, 41.757027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537605, 41.452450, 41.654305>,  <33.431404, 41.798008, 41.483101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537605, 41.452450, 41.654305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630116, 0.180518, 0.755227,
		-0.729700, -0.470213, -0.496425,
		0.265504, -0.863894, 0.428012,
		33.617256, 41.193283, 41.782707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827854, 41.532215, 41.671284>,  <33.431404, 41.798008, 41.483101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827854, 41.532215, 41.671284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083466, 41.316990, 41.891151>,  <33.236832, 41.187855, 42.023071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.083466, 41.316990, 41.891151>,  <32.827854, 41.532215, 41.671284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083466, 41.316990, 41.891151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699658, -0.109722, 0.706003,
		-0.319562, -0.835734, -0.446574,
		0.639030, -0.538061, 0.549665,
		33.275173, 41.155571, 42.056049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362450, 40.958702, 41.926949>,  <32.827854, 41.532215, 41.671284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362450, 40.958702, 41.926949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685463, 40.969070, 42.162651>,  <32.879272, 40.975292, 42.304073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685463, 40.969070, 42.162651>,  <32.362450, 40.958702, 41.926949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685463, 40.969070, 42.162651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587361, -0.055873, 0.807394,
		0.053854, -0.998101, -0.029893,
		0.807532, 0.025923, 0.589254,
		32.927723, 40.976845, 42.339428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441864, 40.284561, 42.398949>,  <32.362450, 40.958702, 41.926949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441864, 40.284561, 42.398949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607029, 40.604706, 42.572807>,  <32.706127, 40.796795, 42.677124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607029, 40.604706, 42.572807>,  <32.441864, 40.284561, 42.398949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607029, 40.604706, 42.572807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654603, -0.071013, 0.752630,
		0.633244, -0.595294, 0.494599,
		0.412913, 0.800364, 0.434650,
		32.730904, 40.844814, 42.703201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639729, 40.138596, 43.151890>,  <32.441864, 40.284561, 42.398949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639729, 40.138596, 43.151890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647121, 40.536049, 43.107426>,  <32.651558, 40.774521, 43.080746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647121, 40.536049, 43.107426>,  <32.639729, 40.138596, 43.151890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647121, 40.536049, 43.107426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612958, 0.099095, 0.783877,
		0.789899, 0.053648, 0.610886,
		0.018482, 0.993631, -0.111160,
		32.652668, 40.834137, 43.074078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753696, 40.425404, 43.811073>,  <32.639729, 40.138596, 43.151890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753696, 40.425404, 43.811073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586548, 40.736671, 43.623524>,  <32.486259, 40.923431, 43.510994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.586548, 40.736671, 43.623524>,  <32.753696, 40.425404, 43.811073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586548, 40.736671, 43.623524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498222, 0.235280, 0.834517,
		0.759709, 0.582324, 0.289382,
		-0.417873, 0.778166, -0.468871,
		32.461185, 40.970119, 43.482864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708115, 40.845573, 44.356842>,  <32.753696, 40.425404, 43.811073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708115, 40.845573, 44.356842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472321, 41.035294, 44.095291>,  <32.330845, 41.149124, 43.938362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472321, 41.035294, 44.095291>,  <32.708115, 40.845573, 44.356842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472321, 41.035294, 44.095291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663927, 0.176600, 0.726645,
		0.460122, 0.862469, 0.210797,
		-0.589482, 0.474299, -0.653874,
		32.295475, 41.177582, 43.899128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521812, 41.347519, 44.704571>,  <32.708115, 40.845573, 44.356842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521812, 41.347519, 44.704571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.246876, 41.337460, 44.414211>,  <32.081913, 41.331425, 44.239998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.246876, 41.337460, 44.414211>,  <32.521812, 41.347519, 44.704571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246876, 41.337460, 44.414211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717191, 0.181544, 0.672814,
		0.114861, 0.983061, -0.142821,
		-0.687346, -0.025150, -0.725895,
		32.040672, 41.329914, 44.196442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156879, 41.941910, 44.782242>,  <32.521812, 41.347519, 44.704571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156879, 41.941910, 44.782242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917715, 41.676434, 44.602455>,  <31.774218, 41.517147, 44.494583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917715, 41.676434, 44.602455>,  <32.156879, 41.941910, 44.782242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917715, 41.676434, 44.602455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646309, 0.067500, 0.760084,
		-0.474121, 0.744956, -0.469307,
		-0.597907, -0.663690, -0.449469,
		31.738342, 41.477325, 44.467613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483946, 42.216721, 44.780403>,  <32.156879, 41.941910, 44.782242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483946, 42.216721, 44.780403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428373, 41.821621, 44.751972>,  <31.395029, 41.584560, 44.734913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428373, 41.821621, 44.751972>,  <31.483946, 42.216721, 44.780403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428373, 41.821621, 44.751972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652014, 0.037214, 0.757293,
		-0.745369, 0.151558, -0.649196,
		-0.138932, -0.987748, -0.071080,
		31.386694, 41.525295, 44.730648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737560, 42.133907, 44.845177>,  <31.483946, 42.216721, 44.780403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737560, 42.133907, 44.845177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.895718, 41.771881, 44.907818>,  <30.990612, 41.554665, 44.945400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.895718, 41.771881, 44.907818>,  <30.737560, 42.133907, 44.845177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895718, 41.771881, 44.907818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542214, -0.092372, 0.835148,
		-0.741396, -0.415123, -0.527261,
		0.395393, -0.905064, 0.156601,
		31.014336, 41.500362, 44.954800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222551, 41.738071, 44.962902>,  <30.737560, 42.133907, 44.845177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222551, 41.738071, 44.962902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517105, 41.527306, 45.132656>,  <30.693838, 41.400848, 45.234509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.517105, 41.527306, 45.132656>,  <30.222551, 41.738071, 44.962902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517105, 41.527306, 45.132656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586223, -0.183773, 0.789031,
		-0.337762, -0.829812, -0.444218,
		0.736383, -0.526915, 0.424383,
		30.738020, 41.369232, 45.259972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916367, 41.140610, 45.147636>,  <30.222551, 41.738071, 44.962902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916367, 41.140610, 45.147636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245914, 41.161137, 45.373417>,  <30.443644, 41.173454, 45.508884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245914, 41.161137, 45.373417>,  <29.916367, 41.140610, 45.147636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245914, 41.161137, 45.373417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559414, -0.086386, 0.824375,
		0.091067, -0.994939, -0.042462,
		0.823870, 0.051320, 0.564450,
		30.493076, 41.176533, 45.542751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842697, 40.590660, 45.756195>,  <29.916367, 41.140610, 45.147636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842697, 40.590660, 45.756195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148775, 40.825245, 45.862431>,  <30.332422, 40.965996, 45.926170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148775, 40.825245, 45.862431>,  <29.842697, 40.590660, 45.756195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148775, 40.825245, 45.862431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248735, -0.111185, 0.962169,
		0.593805, -0.802309, 0.060795,
		0.765197, 0.586463, 0.265585,
		30.378334, 41.001183, 45.942104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228024, 40.170425, 46.175293>,  <29.842697, 40.590660, 45.756195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228024, 40.170425, 46.175293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297602, 40.549412, 46.282665>,  <30.339348, 40.776802, 46.347088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297602, 40.549412, 46.282665>,  <30.228024, 40.170425, 46.175293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297602, 40.549412, 46.282665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324705, -0.202160, 0.923958,
		0.929683, -0.247879, 0.272481,
		0.173945, 0.947464, 0.268432,
		30.349785, 40.833652, 46.363194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651945, 40.175636, 46.873634>,  <30.228024, 40.170425, 46.175293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651945, 40.175636, 46.873634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475565, 40.534260, 46.856892>,  <30.369738, 40.749432, 46.846844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.475565, 40.534260, 46.856892>,  <30.651945, 40.175636, 46.873634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475565, 40.534260, 46.856892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386261, -0.147461, 0.910526,
		0.810164, 0.417664, 0.411327,
		-0.440949, 0.896556, -0.041860,
		30.343281, 40.803226, 46.844334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564198, 40.328510, 47.546284>,  <30.651945, 40.175636, 46.873634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564198, 40.328510, 47.546284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335741, 40.622360, 47.399792>,  <30.198668, 40.798668, 47.311897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335741, 40.622360, 47.399792>,  <30.564198, 40.328510, 47.546284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335741, 40.622360, 47.399792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598301, -0.067101, 0.798457,
		0.561988, 0.675151, 0.477849,
		-0.571144, 0.734621, -0.366234,
		30.164398, 40.842747, 47.289921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596632, 40.917027, 48.063576>,  <30.564198, 40.328510, 47.546284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596632, 40.917027, 48.063576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252171, 40.932625, 47.860836>,  <30.045494, 40.941982, 47.739193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252171, 40.932625, 47.860836>,  <30.596632, 40.917027, 48.063576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252171, 40.932625, 47.860836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505556, -0.169977, 0.845885,
		-0.053166, 0.984676, 0.166091,
		-0.861154, 0.038996, -0.506845,
		29.993824, 40.944324, 47.708782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199316, 41.272850, 48.385658>,  <30.596632, 40.917027, 48.063576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199316, 41.272850, 48.385658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910494, 41.094032, 48.174458>,  <29.737200, 40.986740, 48.047737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910494, 41.094032, 48.174458>,  <30.199316, 41.272850, 48.385658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910494, 41.094032, 48.174458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533648, -0.125804, 0.836297,
		-0.440287, 0.885621, -0.147727,
		-0.722058, -0.447045, -0.527999,
		29.693876, 40.959919, 48.016056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633898, 41.571560, 48.531311>,  <30.199316, 41.272850, 48.385658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633898, 41.571560, 48.531311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.497334, 41.226116, 48.382927>,  <29.415394, 41.018848, 48.293896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.497334, 41.226116, 48.382927>,  <29.633898, 41.571560, 48.531311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497334, 41.226116, 48.382927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691424, -0.036583, 0.721522,
		-0.636687, 0.502825, -0.584634,
		-0.341412, -0.863613, -0.370957,
		29.394911, 40.967033, 48.271641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895767, 41.693283, 48.476048>,  <29.633898, 41.571560, 48.531311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895767, 41.693283, 48.476048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.952276, 41.297943, 48.453400>,  <28.986181, 41.060738, 48.439812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.952276, 41.297943, 48.453400>,  <28.895767, 41.693283, 48.476048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952276, 41.297943, 48.453400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745027, -0.143802, 0.651349,
		-0.651903, -0.049837, -0.756663,
		0.141271, -0.988351, -0.056615,
		28.994658, 41.001438, 48.436417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285397, 41.467678, 48.632339>,  <28.895767, 41.693283, 48.476048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285397, 41.467678, 48.632339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505684, 41.147709, 48.727703>,  <28.637856, 40.955727, 48.784920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505684, 41.147709, 48.727703>,  <28.285397, 41.467678, 48.632339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505684, 41.147709, 48.727703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613734, -0.194476, 0.765186,
		-0.565722, -0.567721, -0.598039,
		0.550717, -0.799920, 0.238410,
		28.670898, 40.907734, 48.799225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872387, 40.889664, 48.718567>,  <28.285397, 41.467678, 48.632339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872387, 40.889664, 48.718567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211203, 40.872154, 48.930458>,  <28.414492, 40.861649, 49.057594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.211203, 40.872154, 48.930458>,  <27.872387, 40.889664, 48.718567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211203, 40.872154, 48.930458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497504, -0.416149, 0.761124,
		0.187130, -0.908243, -0.374270,
		0.847037, -0.043771, 0.529728,
		28.465313, 40.859024, 49.089375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261541, 40.629250, 48.398853>,  <27.872387, 40.889664, 48.718567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261541, 40.629250, 48.398853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.090113, 40.271946, 48.453144>,  <26.987255, 40.057564, 48.485718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.090113, 40.271946, 48.453144>,  <27.261541, 40.629250, 48.398853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090113, 40.271946, 48.453144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308627, -0.285922, -0.907192,
		0.849162, -0.346907, 0.398220,
		-0.428571, -0.893255, 0.135729,
		26.961542, 40.003971, 48.493862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796728, 40.068054, 48.399780>,  <27.261541, 40.629250, 48.398853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796728, 40.068054, 48.399780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.425657, 39.992992, 48.270657>,  <27.203014, 39.947956, 48.193184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.425657, 39.992992, 48.270657>,  <27.796728, 40.068054, 48.399780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425657, 39.992992, 48.270657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362919, -0.249877, -0.897692,
		0.087794, -0.949920, 0.299908,
		-0.927675, -0.187654, -0.322806,
		27.147354, 39.936695, 48.173813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854105, 39.469696, 48.039738>,  <27.796728, 40.068054, 48.399780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854105, 39.469696, 48.039738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507868, 39.609436, 47.896236>,  <27.300125, 39.693279, 47.810135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.507868, 39.609436, 47.896236>,  <27.854105, 39.469696, 48.039738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507868, 39.609436, 47.896236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265717, -0.286812, -0.920399,
		-0.424435, -0.892017, 0.155434,
		-0.865592, 0.349348, -0.358757,
		27.248190, 39.714241, 47.788609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669195, 39.020325, 47.592415>,  <27.854105, 39.469696, 48.039738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669195, 39.020325, 47.592415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.447142, 39.334728, 47.483593>,  <27.313910, 39.523369, 47.418301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.447142, 39.334728, 47.483593>,  <27.669195, 39.020325, 47.592415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447142, 39.334728, 47.483593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183239, -0.203480, -0.961779,
		-0.811326, -0.583767, -0.031069,
		-0.555133, 0.786010, -0.272058,
		27.280602, 39.570530, 47.401978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208435, 38.711308, 47.089298>,  <27.669195, 39.020325, 47.592415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208435, 38.711308, 47.089298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.228296, 39.108208, 47.043747>,  <27.240213, 39.346348, 47.016415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.228296, 39.108208, 47.043747>,  <27.208435, 38.711308, 47.089298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228296, 39.108208, 47.043747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362559, -0.124152, -0.923654,
		-0.930637, 0.004573, -0.365915,
		0.049653, 0.992253, -0.113883,
		27.243193, 39.405884, 47.009583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838329, 38.861568, 46.443432>,  <27.208435, 38.711308, 47.089298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838329, 38.861568, 46.443432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097258, 39.162132, 46.494602>,  <27.252615, 39.342468, 46.525307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097258, 39.162132, 46.494602>,  <26.838329, 38.861568, 46.443432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097258, 39.162132, 46.494602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248992, -0.049828, -0.967223,
		-0.720402, 0.657957, -0.219348,
		0.647321, 0.751405, 0.127929,
		27.291454, 39.387554, 46.532982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759245, 39.082314, 45.824039>,  <26.838329, 38.861568, 46.443432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759245, 39.082314, 45.824039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096397, 39.244488, 45.965561>,  <27.298689, 39.341793, 46.050472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096397, 39.244488, 45.965561>,  <26.759245, 39.082314, 45.824039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096397, 39.244488, 45.965561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370944, 0.038511, -0.927857,
		-0.389808, 0.913314, -0.117932,
		0.842882, 0.405432, 0.353800,
		27.349262, 39.366116, 46.071701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950254, 39.516518, 45.320503>,  <26.759245, 39.082314, 45.824039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950254, 39.516518, 45.320503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.297237, 39.494289, 45.518265>,  <27.505426, 39.480953, 45.636921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.297237, 39.494289, 45.518265>,  <26.950254, 39.516518, 45.320503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297237, 39.494289, 45.518265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485932, -0.118525, -0.865923,
		0.106719, 0.991395, -0.075811,
		0.867457, -0.055571, 0.494399,
		27.557474, 39.477619, 45.666584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310003, 39.918465, 44.827843>,  <26.950254, 39.516518, 45.320503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310003, 39.918465, 44.827843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.575645, 39.745430, 45.071754>,  <27.735031, 39.641609, 45.218102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.575645, 39.745430, 45.071754>,  <27.310003, 39.918465, 44.827843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575645, 39.745430, 45.071754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713728, 0.123976, -0.689364,
		0.222608, 0.893030, 0.391079,
		0.664107, -0.432582, 0.609782,
		27.774878, 39.615654, 45.254688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840273, 40.384476, 44.984699>,  <27.310003, 39.918465, 44.827843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840273, 40.384476, 44.984699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.004066, 40.026554, 45.055855>,  <28.102343, 39.811802, 45.098549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.004066, 40.026554, 45.055855>,  <27.840273, 40.384476, 44.984699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004066, 40.026554, 45.055855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571444, 0.099568, -0.814578,
		0.711179, 0.435207, 0.552104,
		0.409482, -0.894808, 0.177886,
		28.126911, 39.758110, 45.109219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557005, 40.462376, 45.165543>,  <27.840273, 40.384476, 44.984699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557005, 40.462376, 45.165543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.504400, 40.095974, 45.013943>,  <28.472837, 39.876133, 44.922985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.504400, 40.095974, 45.013943>,  <28.557005, 40.462376, 45.165543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504400, 40.095974, 45.013943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658603, 0.205010, -0.724025,
		0.740909, -0.344827, 0.576323,
		-0.131512, -0.916005, -0.378998,
		28.464947, 39.821171, 44.900242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292538, 40.191254, 44.963799>,  <28.557005, 40.462376, 45.165543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292538, 40.191254, 44.963799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.029097, 39.954594, 44.777813>,  <28.871031, 39.812599, 44.666222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.029097, 39.954594, 44.777813>,  <29.292538, 40.191254, 44.963799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029097, 39.954594, 44.777813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573090, 0.006063, -0.819470,
		0.487657, -0.806174, 0.335074,
		-0.658604, -0.591648, -0.464967,
		28.831516, 39.777100, 44.638325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712412, 39.586601, 44.743385>,  <29.292538, 40.191254, 44.963799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712412, 39.586601, 44.743385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.385504, 39.617466, 44.514957>,  <29.189360, 39.635986, 44.377903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.385504, 39.617466, 44.514957>,  <29.712412, 39.586601, 44.743385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385504, 39.617466, 44.514957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571084, -0.024025, -0.820540,
		-0.077042, -0.996729, -0.024437,
		-0.817268, 0.077172, -0.571067,
		29.140324, 39.640617, 44.343636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894167, 39.122147, 44.153843>,  <29.712412, 39.586601, 44.743385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894167, 39.122147, 44.153843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.596922, 39.372959, 44.060364>,  <29.418575, 39.523445, 44.004276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.596922, 39.372959, 44.060364>,  <29.894167, 39.122147, 44.153843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596922, 39.372959, 44.060364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512995, 0.309566, -0.800627,
		-0.429674, -0.714842, -0.551707,
		-0.743112, 0.627032, -0.233699,
		29.373989, 39.561069, 43.990253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664871, 38.950813, 43.517849>,  <29.894167, 39.122147, 44.153843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664871, 38.950813, 43.517849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548452, 39.332905, 43.539150>,  <29.478601, 39.562160, 43.551929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548452, 39.332905, 43.539150>,  <29.664871, 38.950813, 43.517849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548452, 39.332905, 43.539150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324165, 0.150833, -0.933899,
		-0.900115, -0.254548, -0.353551,
		-0.291049, 0.955225, 0.053251,
		29.461138, 39.619473, 43.555126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605694, 39.084324, 42.861912>,  <29.664871, 38.950813, 43.517849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605694, 39.084324, 42.861912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587948, 39.455208, 43.010674>,  <29.577301, 39.677738, 43.099930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587948, 39.455208, 43.010674>,  <29.605694, 39.084324, 42.861912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587948, 39.455208, 43.010674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418228, 0.355319, -0.835963,
		-0.907258, 0.118454, -0.403549,
		-0.044365, 0.927209, 0.371907,
		29.574638, 39.733372, 43.122246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254278, 39.524040, 42.386681>,  <29.605694, 39.084324, 42.861912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254278, 39.524040, 42.386681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.478474, 39.762749, 42.616364>,  <29.612991, 39.905975, 42.754173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.478474, 39.762749, 42.616364>,  <29.254278, 39.524040, 42.386681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478474, 39.762749, 42.616364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319078, 0.484212, -0.814695,
		-0.764227, 0.639844, 0.080978,
		0.560488, 0.596773, 0.574208,
		29.646620, 39.941780, 42.788628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155153, 40.112549, 42.128059>,  <29.254278, 39.524040, 42.386681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155153, 40.112549, 42.128059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515667, 40.127651, 42.300690>,  <29.731976, 40.136715, 42.404270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515667, 40.127651, 42.300690>,  <29.155153, 40.112549, 42.128059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515667, 40.127651, 42.300690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399704, 0.311774, -0.861994,
		-0.167102, 0.949406, 0.265905,
		0.901284, 0.037758, 0.431579,
		29.786053, 40.138977, 42.430164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399548, 40.645294, 41.885162>,  <29.155153, 40.112549, 42.128059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399548, 40.645294, 41.885162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.731876, 40.475281, 42.028873>,  <29.931273, 40.373272, 42.115101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.731876, 40.475281, 42.028873>,  <29.399548, 40.645294, 41.885162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731876, 40.475281, 42.028873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514211, 0.339300, -0.787694,
		0.212895, 0.839178, 0.500456,
		0.830820, -0.425036, 0.359280,
		29.981123, 40.347771, 42.136658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957504, 41.218636, 41.806248>,  <29.399548, 40.645294, 41.885162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957504, 41.218636, 41.806248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.144594, 40.866081, 41.832737>,  <30.256847, 40.654549, 41.848629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.144594, 40.866081, 41.832737>,  <29.957504, 41.218636, 41.806248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144594, 40.866081, 41.832737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520475, 0.214093, -0.826601,
		0.714380, 0.421089, 0.558878,
		0.467725, -0.881390, 0.066223,
		30.284912, 40.601665, 41.852604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678158, 41.324108, 41.634331>,  <29.957504, 41.218636, 41.806248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678158, 41.324108, 41.634331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636312, 40.930931, 41.573818>,  <30.611206, 40.695026, 41.537510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636312, 40.930931, 41.573818>,  <30.678158, 41.324108, 41.634331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636312, 40.930931, 41.573818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741787, 0.024203, -0.670199,
		0.662426, -0.182330, 0.726600,
		-0.104611, -0.982939, -0.151282,
		30.604929, 40.636047, 41.528435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.076828, 36.448338, 27.623817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793259, 36.725510, 27.676409>,  <40.623119, 36.891811, 27.707964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.793259, 36.725510, 27.676409>,  <41.076828, 36.448338, 27.623817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793259, 36.725510, 27.676409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569878, 0.452937, 0.685629,
		0.415541, 0.560981, -0.715979,
		-0.708919, 0.692927, 0.131477,
		40.580582, 36.933388, 27.715853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395245, 37.200397, 27.749773>,  <41.076828, 36.448338, 27.623817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395245, 37.200397, 27.749773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.036579, 37.119713, 27.907408>,  <40.821381, 37.071301, 28.001989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.036579, 37.119713, 27.907408>,  <41.395245, 37.200397, 27.749773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036579, 37.119713, 27.907408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365383, 0.165444, 0.916037,
		-0.249979, 0.965370, -0.074644,
		-0.896664, -0.201716, 0.394088,
		40.767582, 37.059196, 28.025635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321999, 37.627663, 28.363640>,  <41.395245, 37.200397, 27.749773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321999, 37.627663, 28.363640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.041008, 37.346046, 28.405300>,  <40.872414, 37.177078, 28.430296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.041008, 37.346046, 28.405300>,  <41.321999, 37.627663, 28.363640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041008, 37.346046, 28.405300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189477, -0.043949, 0.980901,
		-0.686016, 0.708799, 0.164273,
		-0.702481, -0.704040, 0.104152,
		40.830265, 37.134834, 28.436546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006355, 37.821457, 28.889378>,  <41.321999, 37.627663, 28.363640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006355, 37.821457, 28.889378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.900772, 37.436085, 28.870953>,  <40.837421, 37.204861, 28.859898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.900772, 37.436085, 28.870953>,  <41.006355, 37.821457, 28.889378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900772, 37.436085, 28.870953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036955, -0.037619, 0.998609,
		-0.963825, 0.265295, -0.025674,
		-0.263960, -0.963433, -0.046062,
		40.821583, 37.147057, 28.857134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391975, 37.660831, 29.380671>,  <41.006355, 37.821457, 28.889378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391975, 37.660831, 29.380671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597672, 37.325912, 29.306391>,  <40.721088, 37.124962, 29.261822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597672, 37.325912, 29.306391>,  <40.391975, 37.660831, 29.380671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597672, 37.325912, 29.306391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007745, -0.221049, 0.975232,
		-0.857612, -0.500063, -0.120157,
		0.514238, -0.837302, -0.185701,
		40.751942, 37.074722, 29.250681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037525, 37.092014, 29.688276>,  <40.391975, 37.660831, 29.380671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037525, 37.092014, 29.688276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.408367, 36.951305, 29.636522>,  <40.630871, 36.866882, 29.605469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.408367, 36.951305, 29.636522>,  <40.037525, 37.092014, 29.688276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408367, 36.951305, 29.636522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025715, -0.284696, 0.958273,
		-0.373931, -0.891742, -0.254896,
		0.927100, -0.351774, -0.129388,
		40.686497, 36.845776, 29.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013939, 36.577297, 30.141943>,  <40.037525, 37.092014, 29.688276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013939, 36.577297, 30.141943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405102, 36.639992, 30.086622>,  <40.639801, 36.677608, 30.053431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.405102, 36.639992, 30.086622>,  <40.013939, 36.577297, 30.141943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405102, 36.639992, 30.086622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144821, -0.030915, 0.988975,
		0.150734, -0.987156, -0.052931,
		0.977909, 0.156738, -0.138301,
		40.698475, 36.687012, 30.045132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307896, 36.096779, 30.669830>,  <40.013939, 36.577297, 30.141943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307896, 36.096779, 30.669830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.595009, 36.352909, 30.560459>,  <40.767277, 36.506588, 30.494837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.595009, 36.352909, 30.560459>,  <40.307896, 36.096779, 30.669830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595009, 36.352909, 30.560459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286248, 0.086597, 0.954234,
		0.634700, -0.763205, -0.121134,
		0.717787, 0.640327, -0.273429,
		40.810345, 36.545006, 30.478430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952065, 35.759560, 30.899006>,  <40.307896, 36.096779, 30.669830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952065, 35.759560, 30.899006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033836, 36.147087, 30.842999>,  <41.082901, 36.379604, 30.809395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033836, 36.147087, 30.842999>,  <40.952065, 35.759560, 30.899006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033836, 36.147087, 30.842999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351104, 0.060951, 0.934350,
		0.913747, -0.240171, -0.327695,
		0.204431, 0.968815, -0.140019,
		41.095165, 36.437733, 30.800993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568893, 35.832127, 31.227077>,  <40.952065, 35.759560, 30.899006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568893, 35.832127, 31.227077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.479805, 36.217010, 31.164396>,  <41.426353, 36.447941, 31.126787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.479805, 36.217010, 31.164396>,  <41.568893, 35.832127, 31.227077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479805, 36.217010, 31.164396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362701, 0.230987, 0.902825,
		0.904900, 0.144242, -0.400438,
		-0.222721, 0.962205, -0.156703,
		41.412991, 36.505672, 31.117386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079433, 36.247036, 31.568542>,  <41.568893, 35.832127, 31.227077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079433, 36.247036, 31.568542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.775875, 36.505680, 31.537653>,  <41.593739, 36.660866, 31.519119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.775875, 36.505680, 31.537653>,  <42.079433, 36.247036, 31.568542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775875, 36.505680, 31.537653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196579, 0.340524, 0.919457,
		0.620829, 0.682594, -0.385534,
		-0.758899, 0.646613, -0.077223,
		41.548206, 36.699665, 31.514486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332214, 36.887897, 31.710161>,  <42.079433, 36.247036, 31.568542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332214, 36.887897, 31.710161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.941959, 36.915886, 31.793327>,  <41.707806, 36.932678, 31.843227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.941959, 36.915886, 31.793327>,  <42.332214, 36.887897, 31.710161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941959, 36.915886, 31.793327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217892, 0.199190, 0.955430,
		0.025440, 0.977460, -0.209584,
		-0.975641, 0.069973, 0.207913,
		41.649265, 36.936878, 31.855701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273544, 37.599289, 32.048523>,  <42.332214, 36.887897, 31.710161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273544, 37.599289, 32.048523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.959431, 37.371151, 32.144894>,  <41.770962, 37.234268, 32.202717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.959431, 37.371151, 32.144894>,  <42.273544, 37.599289, 32.048523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959431, 37.371151, 32.144894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099526, 0.267781, 0.958326,
		-0.611089, 0.776532, -0.153519,
		-0.785280, -0.570343, 0.240923,
		41.723846, 37.200047, 32.217171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800014, 38.034439, 32.454243>,  <42.273544, 37.599289, 32.048523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800014, 38.034439, 32.454243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746071, 37.646217, 32.534081>,  <41.713707, 37.413284, 32.581982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.746071, 37.646217, 32.534081>,  <41.800014, 38.034439, 32.454243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746071, 37.646217, 32.534081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144436, 0.180029, 0.972999,
		-0.980281, 0.160045, 0.115905,
		-0.134857, -0.970554, 0.199595,
		41.705612, 37.355053, 32.593960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393471, 38.018658, 33.129890>,  <41.800014, 38.034439, 32.454243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393471, 38.018658, 33.129890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.526100, 37.643806, 33.086361>,  <41.605679, 37.418896, 33.060242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.526100, 37.643806, 33.086361>,  <41.393471, 38.018658, 33.129890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526100, 37.643806, 33.086361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190311, -0.046540, 0.980620,
		-0.924035, -0.345857, 0.162915,
		0.331573, -0.937132, -0.108825,
		41.625572, 37.362667, 33.053715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080692, 37.649632, 33.675171>,  <41.393471, 38.018658, 33.129890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080692, 37.649632, 33.675171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377953, 37.410629, 33.554703>,  <41.556309, 37.267227, 33.482422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377953, 37.410629, 33.554703>,  <41.080692, 37.649632, 33.675171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377953, 37.410629, 33.554703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186597, -0.247187, 0.950831,
		-0.642577, -0.762812, -0.072204,
		0.743153, -0.597509, -0.301175,
		41.600899, 37.231377, 33.464352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979832, 36.948925, 34.088783>,  <41.080692, 37.649632, 33.675171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979832, 36.948925, 34.088783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.356220, 36.973408, 33.955620>,  <41.582054, 36.988098, 33.875721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.356220, 36.973408, 33.955620>,  <40.979832, 36.948925, 34.088783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356220, 36.973408, 33.955620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338450, -0.184920, 0.922635,
		-0.005089, -0.980846, -0.194720,
		0.940970, 0.061208, -0.332908,
		41.638512, 36.991768, 33.855747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239677, 36.436203, 34.494713>,  <40.979832, 36.948925, 34.088783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239677, 36.436203, 34.494713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520794, 36.688274, 34.362675>,  <41.689465, 36.839516, 34.283451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.520794, 36.688274, 34.362675>,  <41.239677, 36.436203, 34.494713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520794, 36.688274, 34.362675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545620, -0.179742, 0.818530,
		0.456486, -0.755362, -0.470158,
		0.702793, 0.630176, -0.330091,
		41.731632, 36.877327, 34.263649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004887, 36.073616, 34.507259>,  <41.239677, 36.436203, 34.494713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004887, 36.073616, 34.507259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072510, 36.467331, 34.486862>,  <42.113083, 36.703560, 34.474625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072510, 36.467331, 34.486862>,  <42.004887, 36.073616, 34.507259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072510, 36.467331, 34.486862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598284, -0.061371, 0.798930,
		0.783246, -0.165575, -0.599258,
		0.169060, 0.984286, -0.050993,
		42.123226, 36.762615, 34.471565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770107, 36.219440, 34.622154>,  <42.004887, 36.073616, 34.507259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770107, 36.219440, 34.622154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608276, 36.577007, 34.699326>,  <42.511177, 36.791550, 34.745628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608276, 36.577007, 34.699326>,  <42.770107, 36.219440, 34.622154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608276, 36.577007, 34.699326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506413, 0.043334, 0.861201,
		0.761486, 0.446124, -0.470226,
		-0.404580, 0.893921, 0.192925,
		42.486904, 36.845184, 34.757202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351074, 36.660793, 34.849865>,  <42.770107, 36.219440, 34.622154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351074, 36.660793, 34.849865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026230, 36.837349, 35.002525>,  <42.831326, 36.943283, 35.094124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.026230, 36.837349, 35.002525>,  <43.351074, 36.660793, 34.849865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026230, 36.837349, 35.002525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486063, 0.149845, 0.860981,
		0.322836, 0.884718, -0.336232,
		-0.812108, 0.441386, 0.381653,
		42.782597, 36.969765, 35.117020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365917, 37.373837, 35.085659>,  <43.351074, 36.660793, 34.849865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365917, 37.373837, 35.085659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131519, 37.126190, 35.294773>,  <42.990883, 36.977604, 35.420242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131519, 37.126190, 35.294773>,  <43.365917, 37.373837, 35.085659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131519, 37.126190, 35.294773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610647, 0.086696, 0.787143,
		-0.532656, 0.780500, 0.327258,
		-0.585993, -0.619116, 0.522789,
		42.955723, 36.940456, 35.451611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760544, 37.653641, 35.668659>,  <43.365917, 37.373837, 35.085659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760544, 37.653641, 35.668659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138611, 37.525753, 35.695312>,  <44.365452, 37.449020, 35.711304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138611, 37.525753, 35.695312>,  <43.760544, 37.653641, 35.668659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138611, 37.525753, 35.695312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183880, 0.352336, -0.917631,
		0.269906, 0.879567, 0.391806,
		0.945166, -0.319720, 0.066637,
		44.422161, 37.429836, 35.715305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234745, 38.246609, 35.457417>,  <43.760544, 37.653641, 35.668659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234745, 38.246609, 35.457417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408733, 37.890541, 35.403164>,  <44.513126, 37.676899, 35.370613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408733, 37.890541, 35.403164>,  <44.234745, 38.246609, 35.457417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408733, 37.890541, 35.403164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189413, 0.237713, -0.952689,
		0.880297, 0.388702, 0.272008,
		0.434972, -0.890170, -0.135633,
		44.539227, 37.623489, 35.362473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827168, 38.397709, 35.159359>,  <44.234745, 38.246609, 35.457417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827168, 38.397709, 35.159359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769119, 38.011902, 35.071144>,  <44.734291, 37.780418, 35.018215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769119, 38.011902, 35.071144>,  <44.827168, 38.397709, 35.159359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769119, 38.011902, 35.071144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312814, 0.166741, -0.935064,
		0.938663, -0.204683, 0.277519,
		-0.145118, -0.964522, -0.220541,
		44.725582, 37.722546, 35.004982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364082, 38.280067, 34.704433>,  <44.827168, 38.397709, 35.159359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364082, 38.280067, 34.704433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.116272, 37.975086, 34.629753>,  <44.967587, 37.792099, 34.584946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.116272, 37.975086, 34.629753>,  <45.364082, 38.280067, 34.704433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116272, 37.975086, 34.629753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170756, 0.101246, -0.980098,
		0.766178, -0.639077, 0.067468,
		-0.619527, -0.762450, -0.186699,
		44.930412, 37.746353, 34.573742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721680, 37.855766, 34.280758>,  <45.364082, 38.280067, 34.704433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721680, 37.855766, 34.280758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331890, 37.787193, 34.222782>,  <45.098015, 37.746048, 34.187996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331890, 37.787193, 34.222782>,  <45.721680, 37.855766, 34.280758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331890, 37.787193, 34.222782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129327, 0.099055, -0.986642,
		0.183505, -0.980202, -0.074355,
		-0.974474, -0.171438, -0.144944,
		45.039547, 37.735764, 34.179298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651722, 37.421089, 33.686161>,  <45.721680, 37.855766, 34.280758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651722, 37.421089, 33.686161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.292919, 37.593525, 33.725235>,  <45.077637, 37.696987, 33.748680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.292919, 37.593525, 33.725235>,  <45.651722, 37.421089, 33.686161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292919, 37.593525, 33.725235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006271, 0.233391, -0.972363,
		-0.441975, -0.871602, -0.212056,
		-0.897006, 0.431090, 0.097687,
		45.023819, 37.722851, 33.754539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342918, 37.268398, 33.017452>,  <45.651722, 37.421089, 33.686161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342918, 37.268398, 33.017452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106483, 37.551746, 33.171764>,  <44.964622, 37.721756, 33.264351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106483, 37.551746, 33.171764>,  <45.342918, 37.268398, 33.017452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106483, 37.551746, 33.171764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244302, 0.298592, -0.922583,
		-0.768725, -0.639570, -0.003436,
		-0.591083, 0.708373, 0.385784,
		44.929157, 37.764259, 33.287498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.791592, 37.196049, 32.690575>,  <45.342918, 37.268398, 33.017452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.791592, 37.196049, 32.690575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728989, 37.560863, 32.842205>,  <44.691429, 37.779751, 32.933182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728989, 37.560863, 32.842205>,  <44.791592, 37.196049, 32.690575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728989, 37.560863, 32.842205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376383, 0.299770, -0.876626,
		-0.913150, -0.279871, 0.296360,
		-0.156503, 0.912036, 0.379074,
		44.682037, 37.834473, 32.955929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029224, 37.389660, 32.515202>,  <44.791592, 37.196049, 32.690575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029224, 37.389660, 32.515202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251720, 37.718414, 32.564365>,  <44.385216, 37.915665, 32.593864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251720, 37.718414, 32.564365>,  <44.029224, 37.389660, 32.515202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251720, 37.718414, 32.564365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307146, 0.340753, -0.888566,
		-0.772180, 0.456502, 0.441978,
		0.556237, 0.821884, 0.122909,
		44.418591, 37.964981, 32.601238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647301, 37.933895, 32.221516>,  <44.029224, 37.389660, 32.515202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647301, 37.933895, 32.221516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018444, 38.082867, 32.213699>,  <44.241131, 38.172249, 32.209011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.018444, 38.082867, 32.213699>,  <43.647301, 37.933895, 32.221516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018444, 38.082867, 32.213699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225653, 0.518928, -0.824496,
		-0.296926, 0.769422, 0.565530,
		0.927855, 0.372428, -0.019538,
		44.296803, 38.194595, 32.207836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551422, 38.721676, 32.277279>,  <43.647301, 37.933895, 32.221516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551422, 38.721676, 32.277279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888668, 38.608852, 32.094151>,  <44.091015, 38.541157, 31.984274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.888668, 38.608852, 32.094151>,  <43.551422, 38.721676, 32.277279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888668, 38.608852, 32.094151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241343, 0.562334, -0.790907,
		0.480531, 0.777317, 0.406039,
		0.843115, -0.282061, -0.457819,
		44.141602, 38.524235, 31.956804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634342, 39.145126, 31.666994>,  <43.551422, 38.721676, 32.277279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634342, 39.145126, 31.666994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947289, 38.918232, 31.564119>,  <44.135056, 38.782097, 31.502396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947289, 38.918232, 31.564119>,  <43.634342, 39.145126, 31.666994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947289, 38.918232, 31.564119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123606, 0.263310, -0.956760,
		0.610426, 0.780329, 0.135892,
		0.782369, -0.567234, -0.257185,
		44.181999, 38.748062, 31.486963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008232, 39.575626, 31.264206>,  <43.634342, 39.145126, 31.666994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008232, 39.575626, 31.264206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107594, 39.199116, 31.172729>,  <44.167210, 38.973209, 31.117844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107594, 39.199116, 31.172729>,  <44.008232, 39.575626, 31.264206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107594, 39.199116, 31.172729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000969, 0.235850, -0.971789,
		0.968657, 0.241615, 0.057674,
		0.248401, -0.941274, -0.228692,
		44.182114, 38.916733, 31.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533249, 39.622707, 30.791582>,  <44.008232, 39.575626, 31.264206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533249, 39.622707, 30.791582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342964, 39.274342, 30.742241>,  <44.228794, 39.065323, 30.712637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342964, 39.274342, 30.742241>,  <44.533249, 39.622707, 30.791582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342964, 39.274342, 30.742241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097137, 0.191395, -0.976695,
		0.874223, -0.452640, -0.175646,
		-0.475708, -0.870910, -0.123354,
		44.200253, 39.013069, 30.705235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644203, 39.491829, 30.075863>,  <44.533249, 39.622707, 30.791582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644203, 39.491829, 30.075863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366390, 39.217773, 30.163692>,  <44.199703, 39.053341, 30.216391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.366390, 39.217773, 30.163692>,  <44.644203, 39.491829, 30.075863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366390, 39.217773, 30.163692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369649, 0.077987, -0.925893,
		0.617238, -0.724229, -0.307425,
		-0.694533, -0.685135, 0.219574,
		44.158031, 39.012234, 30.229565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677128, 39.028381, 29.515465>,  <44.644203, 39.491829, 30.075863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677128, 39.028381, 29.515465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.315922, 39.004753, 29.685673>,  <44.099197, 38.990578, 29.787798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.315922, 39.004753, 29.685673>,  <44.677128, 39.028381, 29.515465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315922, 39.004753, 29.685673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427970, 0.037419, -0.903018,
		0.037419, -0.997552, -0.059071,
		0.903018, 0.059071, -0.425522,
		44.045017, 38.987030, 29.813330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382835, 38.540623, 29.129686>,  <44.677128, 39.028381, 29.515465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382835, 38.540623, 29.129686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095871, 38.763233, 29.297306>,  <43.923695, 38.896801, 29.397877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095871, 38.763233, 29.297306>,  <44.382835, 38.540623, 29.129686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095871, 38.763233, 29.297306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388944, 0.179070, -0.903690,
		-0.577969, -0.811301, 0.087992,
		-0.717408, 0.556529, 0.419048,
		43.880650, 38.930191, 29.423021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784897, 38.420879, 28.794987>,  <44.382835, 38.540623, 29.129686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784897, 38.420879, 28.794987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699192, 38.766613, 28.976984>,  <43.647770, 38.974052, 29.086184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.699192, 38.766613, 28.976984>,  <43.784897, 38.420879, 28.794987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699192, 38.766613, 28.976984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555328, 0.275413, -0.784703,
		-0.803556, -0.420804, 0.420978,
		-0.214263, 0.864333, 0.454994,
		43.634914, 39.025913, 29.113482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093842, 38.549202, 28.724995>,  <43.784897, 38.420879, 28.794987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093842, 38.549202, 28.724995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222504, 38.916763, 28.816349>,  <43.299702, 39.137299, 28.871162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222504, 38.916763, 28.816349>,  <43.093842, 38.549202, 28.724995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222504, 38.916763, 28.816349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514852, 0.372165, -0.772282,
		-0.794649, 0.130820, 0.592806,
		0.321652, 0.918901, 0.228388,
		43.319000, 39.192432, 28.884865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524731, 39.056313, 28.954506>,  <43.093842, 38.549202, 28.724995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524731, 39.056313, 28.954506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832088, 39.261147, 28.800970>,  <43.016502, 39.384048, 28.708849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832088, 39.261147, 28.800970>,  <42.524731, 39.056313, 28.954506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832088, 39.261147, 28.800970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636310, 0.547246, -0.543720,
		-0.068377, 0.662033, 0.746349,
		0.768397, 0.512087, -0.383839,
		43.062607, 39.414772, 28.685818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.929043, 41.452736, 39.884438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701729, 41.129452, 39.822659>,  <35.565342, 40.935482, 39.785591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701729, 41.129452, 39.822659>,  <35.929043, 41.452736, 39.884438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701729, 41.129452, 39.822659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392847, -0.101570, -0.913978,
		0.722997, -0.580073, 0.375222,
		-0.568285, -0.808207, -0.154445,
		35.531242, 40.886990, 39.776325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432659, 40.830410, 39.647064>,  <35.929043, 41.452736, 39.884438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432659, 40.830410, 39.647064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050224, 40.776253, 39.543091>,  <35.820763, 40.743759, 39.480705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050224, 40.776253, 39.543091>,  <36.432659, 40.830410, 39.647064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050224, 40.776253, 39.543091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291683, -0.353001, -0.888995,
		0.028611, -0.925774, 0.376992,
		-0.956087, -0.135398, -0.259933,
		35.763397, 40.735634, 39.465111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382122, 40.137539, 39.513855>,  <36.432659, 40.830410, 39.647064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382122, 40.137539, 39.513855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084412, 40.306973, 39.307312>,  <35.905785, 40.408634, 39.183388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084412, 40.306973, 39.307312>,  <36.382122, 40.137539, 39.513855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084412, 40.306973, 39.307312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388745, -0.353906, -0.850664,
		-0.543072, -0.833861, 0.098737,
		-0.744279, 0.423588, -0.516355,
		35.861126, 40.434048, 39.152405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286060, 39.607018, 39.030655>,  <36.382122, 40.137539, 39.513855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286060, 39.607018, 39.030655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126442, 39.956562, 38.919571>,  <36.030670, 40.166290, 38.852921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126442, 39.956562, 38.919571>,  <36.286060, 39.607018, 39.030655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126442, 39.956562, 38.919571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325341, -0.148225, -0.933907,
		-0.857272, -0.463023, -0.225155,
		-0.399047, 0.873864, -0.277710,
		36.006729, 40.218719, 38.836258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851181, 39.389122, 38.520515>,  <36.286060, 39.607018, 39.030655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851181, 39.389122, 38.520515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905697, 39.781158, 38.462753>,  <35.938408, 40.016380, 38.428097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905697, 39.781158, 38.462753>,  <35.851181, 39.389122, 38.520515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905697, 39.781158, 38.462753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165382, -0.166229, -0.972120,
		-0.976767, 0.108610, -0.184744,
		0.136291, 0.980088, -0.144405,
		35.946583, 40.075184, 38.419434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526440, 39.516132, 37.922649>,  <35.851181, 39.389122, 38.520515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526440, 39.516132, 37.922649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782471, 39.821327, 37.958740>,  <35.936089, 40.004444, 37.980396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782471, 39.821327, 37.958740>,  <35.526440, 39.516132, 37.922649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782471, 39.821327, 37.958740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253798, -0.099134, -0.962164,
		-0.725177, 0.638763, -0.257100,
		0.640082, 0.762990, 0.090228,
		35.974495, 40.050224, 37.985809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396484, 39.991604, 37.328732>,  <35.526440, 39.516132, 37.922649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396484, 39.991604, 37.328732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775860, 40.046917, 37.442810>,  <36.003487, 40.080105, 37.511257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775860, 40.046917, 37.442810>,  <35.396484, 39.991604, 37.328732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775860, 40.046917, 37.442810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301420, -0.115299, -0.946495,
		-0.098005, 0.983658, -0.151037,
		0.948441, 0.138287, 0.285194,
		36.060390, 40.088402, 37.528370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707401, 40.255795, 36.751526>,  <35.396484, 39.991604, 37.328732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707401, 40.255795, 36.751526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020584, 40.173962, 36.986515>,  <36.208492, 40.124863, 37.127510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020584, 40.173962, 36.986515>,  <35.707401, 40.255795, 36.751526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020584, 40.173962, 36.986515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560853, -0.176397, -0.808905,
		0.269114, 0.962825, -0.023372,
		0.782957, -0.204580, 0.587474,
		36.255470, 40.112587, 37.162758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380821, 40.613583, 36.394299>,  <35.707401, 40.255795, 36.751526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380821, 40.613583, 36.394299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493828, 40.329716, 36.652462>,  <36.561630, 40.159397, 36.807362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493828, 40.329716, 36.652462>,  <36.380821, 40.613583, 36.394299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493828, 40.329716, 36.652462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662670, -0.342089, -0.666215,
		0.693580, 0.615912, 0.373630,
		0.282516, -0.709667, 0.645413,
		36.578583, 40.116817, 36.846085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020695, 40.551952, 36.224201>,  <36.380821, 40.613583, 36.394299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020695, 40.551952, 36.224201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959820, 40.231380, 36.455559>,  <36.923294, 40.039036, 36.594376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959820, 40.231380, 36.455559>,  <37.020695, 40.551952, 36.224201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959820, 40.231380, 36.455559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705729, -0.497826, -0.504099,
		0.691943, 0.331471, 0.641359,
		-0.152191, -0.801434, 0.578396,
		36.914162, 39.990952, 36.629078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708786, 40.371166, 36.501736>,  <37.020695, 40.551952, 36.224201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708786, 40.371166, 36.501736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455139, 40.063160, 36.473534>,  <37.302952, 39.878357, 36.456612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455139, 40.063160, 36.473534>,  <37.708786, 40.371166, 36.501736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455139, 40.063160, 36.473534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642831, -0.474308, -0.601499,
		0.429720, -0.426746, 0.795757,
		-0.634121, -0.770013, -0.070506,
		37.264904, 39.832157, 36.452381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142086, 39.785728, 36.500717>,  <37.708786, 40.371166, 36.501736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142086, 39.785728, 36.500717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800034, 39.631405, 36.362209>,  <37.594803, 39.538811, 36.279106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800034, 39.631405, 36.362209>,  <38.142086, 39.785728, 36.500717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800034, 39.631405, 36.362209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517172, -0.588747, -0.621217,
		0.035805, -0.710303, 0.702985,
		-0.855132, -0.385806, -0.346269,
		37.543495, 39.515663, 36.258327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148495, 39.008209, 36.481728>,  <38.142086, 39.785728, 36.500717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148495, 39.008209, 36.481728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901604, 39.138538, 36.195267>,  <37.753468, 39.216736, 36.023392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901604, 39.138538, 36.195267>,  <38.148495, 39.008209, 36.481728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901604, 39.138538, 36.195267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432899, -0.619421, -0.654917,
		-0.656986, -0.714252, 0.241273,
		-0.617226, 0.325825, -0.716150,
		37.716434, 39.236286, 35.980423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777687, 38.535892, 36.545387>,  <38.148495, 39.008209, 36.481728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777687, 38.535892, 36.545387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973709, 38.225426, 36.386684>,  <39.091320, 38.039146, 36.291462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973709, 38.225426, 36.386684>,  <38.777687, 38.535892, 36.545387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973709, 38.225426, 36.386684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442292, -0.613611, 0.654109,
		-0.751151, -0.145065, -0.643994,
		0.490050, -0.776168, -0.396753,
		39.120724, 37.992577, 36.267658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342781, 38.002289, 36.211765>,  <38.777687, 38.535892, 36.545387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342781, 38.002289, 36.211765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669121, 37.829929, 36.366020>,  <38.864925, 37.726513, 36.458572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669121, 37.829929, 36.366020>,  <38.342781, 38.002289, 36.211765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669121, 37.829929, 36.366020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575674, -0.668274, 0.471179,
		0.054680, -0.606412, -0.793268,
		0.815849, -0.430899, 0.385637,
		38.913876, 37.700661, 36.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075073, 37.315205, 36.408215>,  <38.342781, 38.002289, 36.211765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075073, 37.315205, 36.408215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413116, 37.350933, 36.619049>,  <38.615944, 37.372368, 36.745548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413116, 37.350933, 36.619049>,  <38.075073, 37.315205, 36.408215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413116, 37.350933, 36.619049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471858, -0.338812, 0.813976,
		0.251285, -0.936605, -0.244187,
		0.845108, 0.089318, 0.527083,
		38.666649, 37.377728, 36.777172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255436, 36.590652, 36.675159>,  <38.075073, 37.315205, 36.408215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255436, 36.590652, 36.675159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490292, 36.812019, 36.911465>,  <38.631203, 36.944839, 37.053249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490292, 36.812019, 36.911465>,  <38.255436, 36.590652, 36.675159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490292, 36.812019, 36.911465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361630, -0.473606, 0.803070,
		0.724220, -0.685151, -0.077941,
		0.587137, 0.553414, 0.590765,
		38.666431, 36.978043, 37.088696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487801, 36.177708, 37.184887>,  <38.255436, 36.590652, 36.675159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487801, 36.177708, 37.184887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530056, 36.542038, 37.344505>,  <38.555408, 36.760635, 37.440277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530056, 36.542038, 37.344505>,  <38.487801, 36.177708, 37.184887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530056, 36.542038, 37.344505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571238, -0.272886, 0.774093,
		0.813958, -0.309727, 0.491469,
		0.105643, 0.910825, 0.399046,
		38.561749, 36.815285, 37.464218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553272, 36.152836, 37.885250>,  <38.487801, 36.177708, 37.184887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553272, 36.152836, 37.885250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457607, 36.538631, 37.840420>,  <38.400208, 36.770107, 37.813522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457607, 36.538631, 37.840420>,  <38.553272, 36.152836, 37.885250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457607, 36.538631, 37.840420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540605, -0.036385, 0.840490,
		0.806565, 0.261603, 0.530110,
		-0.239162, 0.964490, -0.112077,
		38.385860, 36.827980, 37.806797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430691, 36.448486, 38.590786>,  <38.553272, 36.152836, 37.885250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430691, 36.448486, 38.590786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231853, 36.691540, 38.343018>,  <38.112553, 36.837372, 38.194359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231853, 36.691540, 38.343018>,  <38.430691, 36.448486, 38.590786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231853, 36.691540, 38.343018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766065, 0.027909, 0.642157,
		0.407484, 0.793726, 0.451614,
		-0.497093, 0.607634, -0.619418,
		38.082726, 36.873829, 38.157192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144783, 36.877979, 39.059090>,  <38.430691, 36.448486, 38.590786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144783, 36.877979, 39.059090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937515, 36.948368, 38.724300>,  <37.813152, 36.990601, 38.523426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937515, 36.948368, 38.724300>,  <38.144783, 36.877979, 39.059090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937515, 36.948368, 38.724300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852573, -0.028530, 0.521830,
		0.067948, 0.983982, 0.164811,
		-0.518173, 0.175971, -0.836977,
		37.782063, 37.001160, 38.473206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785942, 37.446285, 39.226742>,  <38.144783, 36.877979, 39.059090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785942, 37.446285, 39.226742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581768, 37.263721, 38.935223>,  <37.459263, 37.154182, 38.760311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581768, 37.263721, 38.935223>,  <37.785942, 37.446285, 39.226742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581768, 37.263721, 38.935223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847142, 0.121355, 0.517323,
		-0.147667, 0.881456, -0.448586,
		-0.510435, -0.456408, -0.728799,
		37.428638, 37.126801, 38.716583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134705, 37.795029, 39.196857>,  <37.785942, 37.446285, 39.226742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134705, 37.795029, 39.196857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041466, 37.456467, 39.005333>,  <36.985523, 37.253330, 38.890419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041466, 37.456467, 39.005333>,  <37.134705, 37.795029, 39.196857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041466, 37.456467, 39.005333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894641, -0.006340, 0.446741,
		-0.381159, 0.532503, -0.755750,
		-0.233100, -0.846404, -0.478816,
		36.971535, 37.202545, 38.861687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402718, 37.863598, 39.031635>,  <37.134705, 37.795029, 39.196857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402718, 37.863598, 39.031635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457207, 37.473736, 38.960659>,  <36.489899, 37.239819, 38.918072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457207, 37.473736, 38.960659>,  <36.402718, 37.863598, 39.031635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457207, 37.473736, 38.960659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974040, -0.164458, 0.155562,
		-0.180802, 0.151646, -0.971758,
		0.136223, -0.974657, -0.177444,
		36.498074, 37.181339, 38.907425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848667, 37.662151, 38.565914>,  <36.402718, 37.863598, 39.031635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848667, 37.662151, 38.565914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971172, 37.325981, 38.744755>,  <36.044674, 37.124279, 38.852058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971172, 37.325981, 38.744755>,  <35.848667, 37.662151, 38.565914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971172, 37.325981, 38.744755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921929, -0.144839, 0.359260,
		-0.237173, -0.522220, -0.819168,
		0.306260, -0.840421, 0.447098,
		36.063049, 37.073856, 38.878883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412930, 37.186832, 38.399876>,  <35.848667, 37.662151, 38.565914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412930, 37.186832, 38.399876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560844, 37.056297, 38.747845>,  <35.649593, 36.977978, 38.956627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560844, 37.056297, 38.747845>,  <35.412930, 37.186832, 38.399876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560844, 37.056297, 38.747845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926636, -0.197906, 0.319655,
		0.067849, -0.924305, -0.375576,
		0.369787, -0.326334, 0.869921,
		35.671780, 36.958397, 39.008820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092125, 36.488773, 38.624985>,  <35.412930, 37.186832, 38.399876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092125, 36.488773, 38.624985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233421, 36.629124, 38.971882>,  <35.318199, 36.713333, 39.180019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233421, 36.629124, 38.971882>,  <35.092125, 36.488773, 38.624985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233421, 36.629124, 38.971882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884495, -0.176746, 0.431775,
		0.304781, -0.919591, 0.247915,
		0.353239, 0.350876, 0.867242,
		35.339394, 36.734386, 39.232056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902008, 35.894379, 39.165104>,  <35.092125, 36.488773, 38.624985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902008, 35.894379, 39.165104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969421, 36.234879, 39.363888>,  <35.009869, 36.439178, 39.483158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969421, 36.234879, 39.363888>,  <34.902008, 35.894379, 39.165104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969421, 36.234879, 39.363888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813379, -0.164689, 0.557935,
		0.556786, -0.498248, 0.664634,
		0.168533, 0.851250, 0.496961,
		35.019981, 36.490253, 39.512978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451538, 35.365307, 39.306625>,  <34.902008, 35.894379, 39.165104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451538, 35.365307, 39.306625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443493, 34.965530, 39.317291>,  <35.438667, 34.725666, 39.323689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443493, 34.965530, 39.317291>,  <35.451538, 35.365307, 39.306625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443493, 34.965530, 39.317291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627084, -0.033378, -0.778237,
		0.778692, 0.001069, 0.627405,
		-0.020110, -0.999442, 0.026661,
		35.437462, 34.665699, 39.325291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172459, 35.106728, 39.401077>,  <35.451538, 35.365307, 39.306625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172459, 35.106728, 39.401077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943970, 34.826672, 39.229725>,  <35.806877, 34.658638, 39.126915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943970, 34.826672, 39.229725>,  <36.172459, 35.106728, 39.401077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943970, 34.826672, 39.229725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656914, -0.077061, -0.750017,
		0.492103, -0.709839, 0.503948,
		-0.571225, -0.700136, -0.428381,
		35.772602, 34.616631, 39.101212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594135, 34.732193, 39.052414>,  <36.172459, 35.106728, 39.401077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594135, 34.732193, 39.052414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261490, 34.594135, 38.878380>,  <36.061905, 34.511299, 38.773960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261490, 34.594135, 38.878380>,  <36.594135, 34.732193, 39.052414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261490, 34.594135, 38.878380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508935, -0.160068, -0.845791,
		0.222280, -0.924798, 0.308773,
		-0.831611, -0.345148, -0.435082,
		36.012005, 34.490593, 38.747856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829990, 34.177670, 38.637718>,  <36.594135, 34.732193, 39.052414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829990, 34.177670, 38.637718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470287, 34.271671, 38.490143>,  <36.254467, 34.328072, 38.401600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470287, 34.271671, 38.490143>,  <36.829990, 34.177670, 38.637718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470287, 34.271671, 38.490143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386647, 0.032608, -0.921651,
		-0.204562, -0.971447, -0.120187,
		-0.899255, 0.235004, -0.368937,
		36.200512, 34.342171, 38.379463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707390, 33.725266, 37.989292>,  <36.829990, 34.177670, 38.637718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707390, 33.725266, 37.989292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454456, 34.034019, 37.962887>,  <36.302696, 34.219273, 37.947044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454456, 34.034019, 37.962887>,  <36.707390, 33.725266, 37.989292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454456, 34.034019, 37.962887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217151, 0.094798, -0.971524,
		-0.743643, -0.628659, -0.227558,
		-0.632329, 0.771882, -0.066018,
		36.264759, 34.265583, 37.943081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262089, 33.580593, 37.433094>,  <36.707390, 33.725266, 37.989292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262089, 33.580593, 37.433094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230637, 33.976871, 37.477535>,  <36.211765, 34.214638, 37.504200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230637, 33.976871, 37.477535>,  <36.262089, 33.580593, 37.433094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230637, 33.976871, 37.477535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154585, 0.122219, -0.980391,
		-0.984846, -0.059913, -0.162756,
		-0.078630, 0.990693, 0.111106,
		36.207047, 34.274078, 37.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871262, 33.857986, 36.771233>,  <36.262089, 33.580593, 37.433094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871262, 33.857986, 36.771233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035427, 34.184753, 36.933327>,  <36.133926, 34.380814, 37.030582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035427, 34.184753, 36.933327>,  <35.871262, 33.857986, 36.771233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035427, 34.184753, 36.933327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171600, 0.367260, -0.914152,
		-0.895610, 0.444716, 0.010546,
		0.410411, 0.816913, 0.405235,
		36.158550, 34.429829, 37.054897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456146, 34.370651, 36.590988>,  <35.871262, 33.857986, 36.771233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456146, 34.370651, 36.590988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833431, 34.489075, 36.651241>,  <36.059803, 34.560127, 36.687393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833431, 34.489075, 36.651241>,  <35.456146, 34.370651, 36.590988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833431, 34.489075, 36.651241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053310, 0.312693, -0.948357,
		-0.327873, 0.902537, 0.279154,
		0.943216, 0.296060, 0.150638,
		36.116398, 34.577892, 36.696434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568596, 34.846355, 36.148903>,  <35.456146, 34.370651, 36.590988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568596, 34.846355, 36.148903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955982, 34.803986, 36.239113>,  <36.188412, 34.778564, 36.293240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955982, 34.803986, 36.239113>,  <35.568596, 34.846355, 36.148903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955982, 34.803986, 36.239113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245349, 0.247692, -0.937258,
		0.043414, 0.963031, 0.265868,
		0.968462, -0.105921, 0.225525,
		36.246521, 34.772209, 36.306770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962452, 35.371647, 35.789410>,  <35.568596, 34.846355, 36.148903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962452, 35.371647, 35.789410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253822, 35.109486, 35.869244>,  <36.428646, 34.952190, 35.917145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253822, 35.109486, 35.869244>,  <35.962452, 35.371647, 35.789410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253822, 35.109486, 35.869244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378655, 0.142347, -0.914526,
		0.570973, 0.741743, 0.351862,
		0.728430, -0.655404, 0.199589,
		36.472351, 34.912865, 35.929119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635441, 35.630047, 35.653259>,  <35.962452, 35.371647, 35.789410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635441, 35.630047, 35.653259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650169, 35.233433, 35.603462>,  <36.659008, 34.995464, 35.573582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650169, 35.233433, 35.603462>,  <36.635441, 35.630047, 35.653259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650169, 35.233433, 35.603462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401423, 0.128765, -0.906796,
		0.915152, -0.016583, 0.402767,
		0.036825, -0.991536, -0.124497,
		36.661217, 34.935970, 35.566113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290565, 35.498203, 35.374195>,  <36.635441, 35.630047, 35.653259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290565, 35.498203, 35.374195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061722, 35.194805, 35.249374>,  <36.924416, 35.012764, 35.174484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061722, 35.194805, 35.249374>,  <37.290565, 35.498203, 35.374195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061722, 35.194805, 35.249374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297471, 0.162667, -0.940771,
		0.764334, -0.631046, 0.132568,
		-0.572106, -0.758498, -0.312050,
		36.890091, 34.967255, 35.155758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.089088, 34.772316, 43.011692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.832909, 34.533413, 42.818565>,  <33.679199, 34.390072, 42.702690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.832909, 34.533413, 42.818565>,  <34.089088, 34.772316, 43.011692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832909, 34.533413, 42.818565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631645, -0.052032, -0.773510,
		0.436860, -0.800363, 0.410575,
		-0.640452, -0.597253, -0.482814,
		33.640774, 34.354237, 42.673721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580242, 34.311073, 42.631809>,  <34.089088, 34.772316, 43.011692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580242, 34.311073, 42.631809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.216808, 34.262608, 42.471909>,  <33.998749, 34.233528, 42.375969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.216808, 34.262608, 42.471909>,  <34.580242, 34.311073, 42.631809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216808, 34.262608, 42.471909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408222, -0.054779, -0.911238,
		0.088517, -0.991119, 0.099235,
		-0.908581, -0.121170, -0.399748,
		33.944233, 34.226257, 42.351986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668282, 33.752190, 42.171764>,  <34.580242, 34.311073, 42.631809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668282, 33.752190, 42.171764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.351017, 33.943073, 42.020416>,  <34.160656, 34.057606, 41.929607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.351017, 33.943073, 42.020416>,  <34.668282, 33.752190, 42.171764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351017, 33.943073, 42.020416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441404, 0.022421, -0.897028,
		-0.419588, -0.878503, -0.228427,
		-0.793163, 0.477211, -0.378367,
		34.113068, 34.086235, 41.906906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426052, 33.389721, 41.548435>,  <34.668282, 33.752190, 42.171764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426052, 33.389721, 41.548435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.264240, 33.754025, 41.515259>,  <34.167152, 33.972607, 41.495354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.264240, 33.754025, 41.515259>,  <34.426052, 33.389721, 41.548435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264240, 33.754025, 41.515259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325947, 0.058844, -0.943555,
		-0.854466, -0.408734, -0.320662,
		-0.404532, 0.910755, -0.082946,
		34.142879, 34.027252, 41.490376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143940, 33.377354, 40.835217>,  <34.426052, 33.389721, 41.548435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143940, 33.377354, 40.835217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199623, 33.761734, 40.930882>,  <34.233032, 33.992363, 40.988281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199623, 33.761734, 40.930882>,  <34.143940, 33.377354, 40.835217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199623, 33.761734, 40.930882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357141, 0.176537, -0.917216,
		-0.923619, 0.213099, -0.318618,
		0.139210, 0.960949, 0.239160,
		34.241386, 34.050018, 41.002628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928116, 33.730682, 40.216690>,  <34.143940, 33.377354, 40.835217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928116, 33.730682, 40.216690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167683, 33.973064, 40.426113>,  <34.311424, 34.118492, 40.551769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167683, 33.973064, 40.426113>,  <33.928116, 33.730682, 40.216690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167683, 33.973064, 40.426113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530247, 0.189867, -0.826311,
		-0.600114, 0.772508, -0.207591,
		0.598917, 0.605955, 0.523562,
		34.347359, 34.154850, 40.583183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024475, 34.235378, 39.739086>,  <33.928116, 33.730682, 40.216690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024475, 34.235378, 39.739086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320110, 34.304371, 39.999546>,  <34.497490, 34.345768, 40.155823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320110, 34.304371, 39.999546>,  <34.024475, 34.235378, 39.739086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320110, 34.304371, 39.999546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623340, 0.191297, -0.758190,
		-0.255337, 0.966259, 0.033871,
		0.739087, 0.172481, 0.651153,
		34.541836, 34.356113, 40.194893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212646, 34.848755, 39.567329>,  <34.024475, 34.235378, 39.739086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212646, 34.848755, 39.567329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532776, 34.689224, 39.746399>,  <34.724854, 34.593506, 39.853840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532776, 34.689224, 39.746399>,  <34.212646, 34.848755, 39.567329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532776, 34.689224, 39.746399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517504, 0.082468, -0.851698,
		0.302764, 0.913309, 0.272397,
		0.800327, -0.398830, 0.447673,
		34.772873, 34.569576, 39.880699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753670, 35.251255, 39.416538>,  <34.212646, 34.848755, 39.567329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753670, 35.251255, 39.416538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939629, 34.920902, 39.544159>,  <35.051205, 34.722691, 39.620731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939629, 34.920902, 39.544159>,  <34.753670, 35.251255, 39.416538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939629, 34.920902, 39.544159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573256, 0.006161, -0.819353,
		0.674724, 0.563808, 0.476307,
		0.464893, -0.825883, 0.319049,
		35.079098, 34.673138, 39.639874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669151, 35.754738, 39.959915>,  <34.753670, 35.251255, 39.416538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669151, 35.754738, 39.959915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660854, 36.151863, 39.912766>,  <34.655876, 36.390137, 39.884476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660854, 36.151863, 39.912766>,  <34.669151, 35.754738, 39.959915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660854, 36.151863, 39.912766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641731, 0.077190, 0.763035,
		0.766649, 0.091474, 0.635517,
		-0.020742, 0.992811, -0.117879,
		34.654633, 36.449707, 39.877403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683056, 35.934444, 40.621441>,  <34.669151, 35.754738, 39.959915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683056, 35.934444, 40.621441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562954, 36.273006, 40.445515>,  <34.490891, 36.476143, 40.339958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.562954, 36.273006, 40.445515>,  <34.683056, 35.934444, 40.621441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562954, 36.273006, 40.445515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640387, 0.162852, 0.750589,
		0.706930, 0.507023, 0.493131,
		-0.300258, 0.846408, -0.439816,
		34.472878, 36.526928, 40.313568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546993, 36.394604, 41.108437>,  <34.683056, 35.934444, 40.621441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546993, 36.394604, 41.108437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.334579, 36.554642, 40.809658>,  <34.207130, 36.650665, 40.630390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.334579, 36.554642, 40.809658>,  <34.546993, 36.394604, 41.108437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334579, 36.554642, 40.809658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703483, 0.283218, 0.651843,
		0.472347, 0.871614, 0.131062,
		-0.531036, 0.400096, -0.746943,
		34.175270, 36.674671, 40.585575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387127, 37.026337, 41.380829>,  <34.546993, 36.394604, 41.108437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387127, 37.026337, 41.380829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119991, 36.923122, 41.101570>,  <33.959709, 36.861195, 40.934013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.119991, 36.923122, 41.101570>,  <34.387127, 37.026337, 41.380829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119991, 36.923122, 41.101570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743003, 0.286616, 0.604813,
		0.044038, 0.922643, -0.383133,
		-0.667838, -0.258034, -0.698148,
		33.919640, 36.845711, 40.892124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962868, 37.505386, 41.387920>,  <34.387127, 37.026337, 41.380829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962868, 37.505386, 41.387920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.742798, 37.226921, 41.203461>,  <33.610756, 37.059841, 41.092785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.742798, 37.226921, 41.203461>,  <33.962868, 37.505386, 41.387920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742798, 37.226921, 41.203461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795565, 0.269175, 0.542791,
		-0.253741, 0.665508, -0.701937,
		-0.550175, -0.696164, -0.461154,
		33.577744, 37.018070, 41.065113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329147, 37.937325, 41.159058>,  <33.962868, 37.505386, 41.387920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329147, 37.937325, 41.159058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241840, 37.546974, 41.160740>,  <33.189457, 37.312763, 41.161747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.241840, 37.546974, 41.160740>,  <33.329147, 37.937325, 41.159058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241840, 37.546974, 41.160740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725094, 0.165053, 0.668578,
		-0.653146, 0.142880, -0.743630,
		-0.218264, -0.975881, 0.004202,
		33.176361, 37.254211, 41.161999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565868, 37.877846, 40.972343>,  <33.329147, 37.937325, 41.159058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565868, 37.877846, 40.972343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.665817, 37.535656, 41.153778>,  <32.725784, 37.330341, 41.262638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.665817, 37.535656, 41.153778>,  <32.565868, 37.877846, 40.972343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665817, 37.535656, 41.153778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807242, 0.074648, 0.585481,
		-0.534721, -0.512444, -0.671919,
		0.249869, -0.855470, 0.453582,
		32.740776, 37.279015, 41.289852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917938, 37.579163, 40.922089>,  <32.565868, 37.877846, 40.972343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917938, 37.579163, 40.922089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146950, 37.392914, 41.192024>,  <32.284355, 37.281166, 41.353985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.146950, 37.392914, 41.192024>,  <31.917938, 37.579163, 40.922089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146950, 37.392914, 41.192024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698232, 0.154531, 0.698994,
		-0.429750, -0.871388, -0.236639,
		0.572527, -0.465621, 0.674841,
		32.318707, 37.253227, 41.394478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576408, 37.026882, 41.226765>,  <31.917938, 37.579163, 40.922089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576408, 37.026882, 41.226765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.845406, 37.157578, 41.492393>,  <32.006805, 37.235996, 41.651772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.845406, 37.157578, 41.492393>,  <31.576408, 37.026882, 41.226765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845406, 37.157578, 41.492393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712311, 0.042168, 0.700596,
		0.200911, -0.944173, 0.261099,
		0.672494, 0.326741, 0.664073,
		32.047153, 37.255600, 41.691616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585560, 36.601189, 41.831017>,  <31.576408, 37.026882, 41.226765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585560, 36.601189, 41.831017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.744276, 36.942455, 41.966461>,  <31.839506, 37.147217, 42.047729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.744276, 36.942455, 41.966461>,  <31.585560, 36.601189, 41.831017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744276, 36.942455, 41.966461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601694, -0.036832, 0.797877,
		0.693197, -0.520330, 0.498733,
		0.396790, 0.853171, 0.338611,
		31.863314, 37.198406, 42.068043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581676, 36.513397, 42.583149>,  <31.585560, 36.601189, 41.831017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581676, 36.513397, 42.583149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623520, 36.910667, 42.562550>,  <31.648626, 37.149029, 42.550190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.623520, 36.910667, 42.562550>,  <31.581676, 36.513397, 42.583149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623520, 36.910667, 42.562550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468465, 0.094885, 0.878372,
		0.877267, -0.067760, 0.475195,
		0.104607, 0.993179, -0.051496,
		31.654902, 37.208622, 42.547100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687939, 36.623486, 43.299313>,  <31.581676, 36.513397, 42.583149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687939, 36.623486, 43.299313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.621635, 36.977993, 43.126312>,  <31.581854, 37.190697, 43.022511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.621635, 36.977993, 43.126312>,  <31.687939, 36.623486, 43.299313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621635, 36.977993, 43.126312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237781, 0.389711, 0.889711,
		0.957070, 0.250320, 0.146138,
		-0.165761, 0.886265, -0.432502,
		31.571907, 37.243874, 42.996563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021915, 37.068356, 43.611008>,  <31.687939, 36.623486, 43.299313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021915, 37.068356, 43.611008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.715546, 37.282349, 43.468376>,  <31.531723, 37.410744, 43.382797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.715546, 37.282349, 43.468376>,  <32.021915, 37.068356, 43.611008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715546, 37.282349, 43.468376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239815, 0.276869, 0.930501,
		0.596526, 0.798211, -0.083765,
		-0.765928, 0.534980, -0.356583,
		31.485767, 37.442844, 43.361401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049572, 37.702808, 43.974167>,  <32.021915, 37.068356, 43.611008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049572, 37.702808, 43.974167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.677980, 37.647141, 43.836983>,  <31.455025, 37.613739, 43.754673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.677980, 37.647141, 43.836983>,  <32.049572, 37.702808, 43.974167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677980, 37.647141, 43.836983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370121, 0.349630, 0.860679,
		0.000132, 0.926494, -0.376309,
		-0.928983, -0.139166, -0.342962,
		31.399286, 37.605392, 43.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.322906, 37.562363, 41.346905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.629627, 37.428822, 41.566196>,  <27.813660, 37.348698, 41.697773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.629627, 37.428822, 41.566196>,  <27.322906, 37.562363, 41.346905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629627, 37.428822, 41.566196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600544, 0.071591, -0.796380,
		0.226626, 0.939902, 0.255390,
		0.766803, -0.333853, 0.548229,
		27.859669, 37.328667, 41.730663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896051, 37.941185, 41.111225>,  <27.322906, 37.562363, 41.346905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896051, 37.941185, 41.111225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.036106, 37.599770, 41.265560>,  <28.120138, 37.394920, 41.358162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.036106, 37.599770, 41.265560>,  <27.896051, 37.941185, 41.111225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036106, 37.599770, 41.265560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672878, -0.057370, -0.737526,
		0.651645, 0.517855, 0.554243,
		0.350134, -0.853543, 0.385838,
		28.141146, 37.343708, 41.381313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611700, 38.049000, 40.966381>,  <27.896051, 37.941185, 41.111225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611700, 38.049000, 40.966381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.576811, 37.659027, 41.048264>,  <28.555878, 37.425045, 41.097393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.576811, 37.659027, 41.048264>,  <28.611700, 38.049000, 40.966381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576811, 37.659027, 41.048264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864726, -0.176124, -0.470350,
		0.494611, 0.135990, 0.858409,
		-0.087224, -0.974929, 0.204707,
		28.550644, 37.366547, 41.109676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328705, 37.813972, 41.350796>,  <28.611700, 38.049000, 40.966381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328705, 37.813972, 41.350796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158047, 37.495075, 41.179970>,  <29.055653, 37.303738, 41.077473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158047, 37.495075, 41.179970>,  <29.328705, 37.813972, 41.350796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158047, 37.495075, 41.179970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746021, -0.043266, -0.664515,
		0.511299, -0.602112, 0.613216,
		-0.426643, -0.797239, -0.427067,
		29.030054, 37.255905, 41.051849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845745, 37.459637, 41.166801>,  <29.328705, 37.813972, 41.350796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845745, 37.459637, 41.166801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544147, 37.328690, 40.939007>,  <29.363188, 37.250122, 40.802330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544147, 37.328690, 40.939007>,  <29.845745, 37.459637, 41.166801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544147, 37.328690, 40.939007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646652, -0.217536, -0.731108,
		0.115459, -0.919514, 0.375717,
		-0.753996, -0.327371, -0.569489,
		29.317949, 37.230476, 40.768162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166805, 36.828846, 40.829185>,  <29.845745, 37.459637, 41.166801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166805, 36.828846, 40.829185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.841053, 36.880196, 40.602802>,  <29.645601, 36.911003, 40.466972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.841053, 36.880196, 40.602802>,  <30.166805, 36.828846, 40.829185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841053, 36.880196, 40.602802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575236, 0.049622, -0.816481,
		-0.076729, -0.990484, -0.114256,
		-0.814381, 0.128372, -0.565954,
		29.596739, 36.918705, 40.433018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145311, 36.306488, 40.308552>,  <30.166805, 36.828846, 40.829185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145311, 36.306488, 40.308552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.946007, 36.627407, 40.177067>,  <29.826424, 36.819958, 40.098175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.946007, 36.627407, 40.177067>,  <30.145311, 36.306488, 40.308552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946007, 36.627407, 40.177067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468834, -0.069605, -0.880540,
		-0.729337, -0.592849, -0.341464,
		-0.498260, 0.802300, -0.328713,
		29.796528, 36.868095, 40.078453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934261, 36.185577, 39.603283>,  <30.145311, 36.306488, 40.308552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934261, 36.185577, 39.603283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905624, 36.583614, 39.630627>,  <29.888443, 36.822437, 39.647034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.905624, 36.583614, 39.630627>,  <29.934261, 36.185577, 39.603283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905624, 36.583614, 39.630627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244537, 0.083951, -0.965999,
		-0.966994, -0.052441, -0.249346,
		-0.071590, 0.995089, 0.068356,
		29.884148, 36.882141, 39.651134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680292, 36.365852, 39.023113>,  <29.934261, 36.185577, 39.603283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680292, 36.365852, 39.023113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.833149, 36.709312, 39.159748>,  <29.924864, 36.915390, 39.241730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.833149, 36.709312, 39.159748>,  <29.680292, 36.365852, 39.023113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833149, 36.709312, 39.159748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247453, 0.261058, -0.933068,
		-0.890356, 0.441091, -0.112715,
		0.382142, 0.858655, 0.341584,
		29.947792, 36.966908, 39.262222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405468, 36.816940, 38.574184>,  <29.680292, 36.365852, 39.023113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405468, 36.816940, 38.574184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740471, 36.969097, 38.731098>,  <29.941473, 37.060390, 38.825245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740471, 36.969097, 38.731098>,  <29.405468, 36.816940, 38.574184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740471, 36.969097, 38.731098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369575, 0.134465, -0.919420,
		-0.402489, 0.914998, -0.027968,
		0.837506, 0.380392, 0.392281,
		29.991722, 37.083214, 38.848782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648161, 37.272320, 38.024075>,  <29.405468, 36.816940, 38.574184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648161, 37.272320, 38.024075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.952227, 37.217678, 38.278160>,  <30.134666, 37.184895, 38.430611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.952227, 37.217678, 38.278160>,  <29.648161, 37.272320, 38.024075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952227, 37.217678, 38.278160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648006, 0.088155, -0.756516,
		0.047343, 0.986696, 0.155530,
		0.760162, -0.136600, 0.635212,
		30.180275, 37.176697, 38.468723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130289, 37.805573, 37.900585>,  <29.648161, 37.272320, 38.024075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130289, 37.805573, 37.900585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.340963, 37.518700, 38.083122>,  <30.467369, 37.346577, 38.192642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.340963, 37.518700, 38.083122>,  <30.130289, 37.805573, 37.900585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340963, 37.518700, 38.083122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751571, 0.142055, -0.644175,
		0.397167, 0.682250, 0.613835,
		0.526687, -0.717185, 0.456340,
		30.498970, 37.303543, 38.220024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870735, 38.030647, 38.062057>,  <30.130289, 37.805573, 37.900585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870735, 38.030647, 38.062057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889475, 37.632523, 38.095882>,  <30.900719, 37.393646, 38.116177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.889475, 37.632523, 38.095882>,  <30.870735, 38.030647, 38.062057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889475, 37.632523, 38.095882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940392, 0.015400, -0.339743,
		0.336850, 0.095438, 0.936709,
		0.046850, -0.995316, 0.084561,
		30.903530, 37.333927, 38.121250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599197, 37.918453, 38.361435>,  <30.870735, 38.030647, 38.062057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599197, 37.918453, 38.361435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.471079, 37.575233, 38.200859>,  <31.394207, 37.369301, 38.104511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.471079, 37.575233, 38.200859>,  <31.599197, 37.918453, 38.361435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471079, 37.575233, 38.200859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702780, 0.068931, -0.708060,
		0.635224, -0.508916, 0.580943,
		-0.320298, -0.858052, -0.401443,
		31.374989, 37.317818, 38.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224846, 38.328766, 38.492168>,  <31.599197, 37.918453, 38.361435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224846, 38.328766, 38.492168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438709, 38.666283, 38.473598>,  <32.567028, 38.868793, 38.462456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438709, 38.666283, 38.473598>,  <32.224846, 38.328766, 38.492168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438709, 38.666283, 38.473598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478302, 0.347449, 0.806540,
		0.696681, -0.409020, 0.589354,
		0.534661, 0.843790, -0.046426,
		32.599106, 38.919418, 38.459671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699135, 38.473576, 39.160572>,  <32.224846, 38.328766, 38.492168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699135, 38.473576, 39.160572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631474, 38.825081, 38.982059>,  <32.590878, 39.035984, 38.874950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631474, 38.825081, 38.982059>,  <32.699135, 38.473576, 39.160572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631474, 38.825081, 38.982059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400180, 0.352563, 0.845905,
		0.900690, 0.321681, 0.292025,
		-0.169154, 0.878761, -0.446280,
		32.580727, 39.088711, 38.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886971, 39.031334, 39.635696>,  <32.699135, 38.473576, 39.160572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886971, 39.031334, 39.635696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643078, 39.196865, 39.365299>,  <32.496742, 39.296185, 39.203060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.643078, 39.196865, 39.365299>,  <32.886971, 39.031334, 39.635696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643078, 39.196865, 39.365299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549819, 0.393477, 0.736801,
		0.570899, 0.820927, -0.012384,
		-0.609732, 0.413830, -0.675997,
		32.460159, 39.321014, 39.162498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875648, 39.878693, 39.678265>,  <32.886971, 39.031334, 39.635696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875648, 39.878693, 39.678265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539024, 39.741119, 39.511658>,  <32.337051, 39.658577, 39.411694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.539024, 39.741119, 39.511658>,  <32.875648, 39.878693, 39.678265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539024, 39.741119, 39.511658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538926, 0.586759, 0.604378,
		0.036530, 0.733093, -0.679147,
		-0.841561, -0.343932, -0.416516,
		32.286556, 39.637939, 39.386703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463772, 40.473957, 39.737209>,  <32.875648, 39.878693, 39.678265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463772, 40.473957, 39.737209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202671, 40.179462, 39.665802>,  <32.046009, 40.002766, 39.622959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.202671, 40.179462, 39.665802>,  <32.463772, 40.473957, 39.737209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202671, 40.179462, 39.665802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644055, 0.415241, 0.642470,
		-0.398885, 0.534347, -0.745227,
		-0.652751, -0.736239, -0.178516,
		32.006847, 39.958591, 39.612247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832909, 40.839046, 39.644264>,  <32.463772, 40.473957, 39.737209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832909, 40.839046, 39.644264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726469, 40.458511, 39.706421>,  <31.662605, 40.230190, 39.743713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726469, 40.458511, 39.706421>,  <31.832909, 40.839046, 39.644264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726469, 40.458511, 39.706421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742836, 0.305111, 0.595905,
		-0.614319, 0.043140, -0.787878,
		-0.266097, -0.951339, 0.155389,
		31.646639, 40.173111, 39.753036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161898, 40.898663, 39.664986>,  <31.832909, 40.839046, 39.644264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161898, 40.898663, 39.664986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232859, 40.543797, 39.835381>,  <31.275436, 40.330875, 39.937618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232859, 40.543797, 39.835381>,  <31.161898, 40.898663, 39.664986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232859, 40.543797, 39.835381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591661, 0.249744, 0.766528,
		-0.786425, -0.388023, -0.480597,
		0.177404, -0.887167, 0.425983,
		31.286079, 40.277645, 39.963177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493357, 40.529449, 39.843777>,  <31.161898, 40.898663, 39.664986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493357, 40.529449, 39.843777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761124, 40.371994, 40.095787>,  <30.921783, 40.277519, 40.246994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761124, 40.371994, 40.095787>,  <30.493357, 40.529449, 39.843777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761124, 40.371994, 40.095787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629377, 0.150039, 0.762478,
		-0.394671, -0.906937, -0.147311,
		0.669417, -0.393642, 0.630021,
		30.961948, 40.253902, 40.284794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091114, 40.249699, 40.400417>,  <30.493357, 40.529449, 39.843777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091114, 40.249699, 40.400417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453604, 40.232136, 40.568619>,  <30.671099, 40.221600, 40.669540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453604, 40.232136, 40.568619>,  <30.091114, 40.249699, 40.400417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453604, 40.232136, 40.568619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417940, 0.057252, 0.906669,
		-0.063887, -0.997394, 0.033532,
		0.906225, -0.043911, 0.420508,
		30.725471, 40.218964, 40.694771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018110, 39.691746, 40.866859>,  <30.091114, 40.249699, 40.400417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018110, 39.691746, 40.866859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.313866, 39.943050, 40.963684>,  <30.491320, 40.093834, 41.021778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.313866, 39.943050, 40.963684>,  <30.018110, 39.691746, 40.866859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313866, 39.943050, 40.963684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363865, 0.070369, 0.928790,
		0.566485, -0.774817, 0.280631,
		0.739389, 0.628257, 0.242066,
		30.535683, 40.131527, 41.036304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418882, 39.365097, 41.361439>,  <30.018110, 39.691746, 40.866859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418882, 39.365097, 41.361439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.510637, 39.747604, 41.434032>,  <30.565689, 39.977108, 41.477589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.510637, 39.747604, 41.434032>,  <30.418882, 39.365097, 41.361439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510637, 39.747604, 41.434032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378190, -0.084239, 0.921887,
		0.896858, -0.280102, 0.342327,
		0.229385, 0.956267, 0.181482,
		30.579453, 40.034485, 41.488476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829679, 39.420094, 41.994213>,  <30.418882, 39.365097, 41.361439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829679, 39.420094, 41.994213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688976, 39.792778, 41.958015>,  <30.604555, 40.016388, 41.936298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688976, 39.792778, 41.958015>,  <30.829679, 39.420094, 41.994213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688976, 39.792778, 41.958015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235767, 0.005373, 0.971795,
		0.905914, 0.363171, 0.217776,
		-0.351757, 0.931707, -0.090492,
		30.583448, 40.072289, 41.930866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983290, 39.712891, 42.602688>,  <30.829679, 39.420094, 41.994213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983290, 39.712891, 42.602688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.661848, 39.901348, 42.457226>,  <30.468983, 40.014423, 42.369949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.661848, 39.901348, 42.457226>,  <30.983290, 39.712891, 42.602688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661848, 39.901348, 42.457226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420076, -0.016157, 0.907345,
		0.421616, 0.881908, 0.210901,
		-0.803602, 0.471145, -0.363656,
		30.420767, 40.042690, 42.348129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915607, 40.246620, 43.078766>,  <30.983290, 39.712891, 42.602688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915607, 40.246620, 43.078766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.569258, 40.221397, 42.880257>,  <30.361448, 40.206264, 42.761150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.569258, 40.221397, 42.880257>,  <30.915607, 40.246620, 43.078766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569258, 40.221397, 42.880257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474561, -0.210332, 0.854723,
		-0.158280, 0.975594, 0.152195,
		-0.865875, -0.063060, -0.496271,
		30.309496, 40.202480, 42.731377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187744, 40.979061, 43.258884>,  <30.915607, 40.246620, 43.078766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187744, 40.979061, 43.258884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426476, 41.117947, 43.548225>,  <31.569715, 41.201279, 43.721828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426476, 41.117947, 43.548225>,  <31.187744, 40.979061, 43.258884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426476, 41.117947, 43.548225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674635, 0.270867, -0.686657,
		-0.434351, 0.897814, -0.072584,
		0.596830, 0.347218, 0.723349,
		31.605524, 41.222111, 43.765228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475740, 41.621117, 43.015259>,  <31.187744, 40.979061, 43.258884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475740, 41.621117, 43.015259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.718281, 41.480721, 43.300674>,  <31.863806, 41.396484, 43.471924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.718281, 41.480721, 43.300674>,  <31.475740, 41.621117, 43.015259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718281, 41.480721, 43.300674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778938, 0.081640, -0.621763,
		0.159979, 0.932813, 0.322902,
		0.606351, -0.350990, 0.713544,
		31.900187, 41.375423, 43.514736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995880, 42.050480, 42.934147>,  <31.475740, 41.621117, 43.015259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995880, 42.050480, 42.934147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129513, 41.714909, 43.106003>,  <32.209694, 41.513565, 43.209114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129513, 41.714909, 43.106003>,  <31.995880, 42.050480, 42.934147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129513, 41.714909, 43.106003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860740, 0.085803, -0.501762,
		0.384078, 0.537435, 0.750764,
		0.334083, -0.838929, 0.429637,
		32.229736, 41.463230, 43.234894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745670, 42.104233, 42.873352>,  <31.995880, 42.050480, 42.934147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745670, 42.104233, 42.873352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707951, 41.713840, 42.951900>,  <32.685318, 41.479603, 42.999031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.707951, 41.713840, 42.951900>,  <32.745670, 42.104233, 42.873352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707951, 41.713840, 42.951900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714184, -0.203745, -0.669649,
		0.693577, 0.077097, 0.716245,
		-0.094303, -0.975984, 0.196374,
		32.679661, 41.421047, 43.010815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456001, 41.890835, 42.967953>,  <32.745670, 42.104233, 42.873352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456001, 41.890835, 42.967953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228588, 41.565941, 42.915737>,  <33.092140, 41.371006, 42.884407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.228588, 41.565941, 42.915737>,  <33.456001, 41.890835, 42.967953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228588, 41.565941, 42.915737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652577, -0.348659, -0.672740,
		0.500908, -0.467666, 0.728271,
		-0.568536, -0.812235, -0.130543,
		33.058025, 41.322269, 42.876575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854984, 41.341904, 43.120243>,  <33.456001, 41.890835, 42.967953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854984, 41.341904, 43.120243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565323, 41.215435, 42.875088>,  <33.391525, 41.139553, 42.727993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565323, 41.215435, 42.875088>,  <33.854984, 41.341904, 43.120243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565323, 41.215435, 42.875088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689023, -0.369203, -0.623648,
		-0.029103, -0.873914, 0.485207,
		-0.724155, -0.316169, -0.612892,
		33.348076, 41.120586, 42.691219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099152, 40.691952, 42.932755>,  <33.854984, 41.341904, 43.120243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099152, 40.691952, 42.932755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831310, 40.810314, 42.660263>,  <33.670605, 40.881332, 42.496769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831310, 40.810314, 42.660263>,  <34.099152, 40.691952, 42.932755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831310, 40.810314, 42.660263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663261, -0.174545, -0.727749,
		-0.334248, -0.939136, -0.079385,
		-0.669599, 0.295902, -0.681233,
		33.630432, 40.899086, 42.455894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132355, 40.201225, 42.443478>,  <34.099152, 40.691952, 42.932755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132355, 40.201225, 42.443478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964119, 40.505432, 42.245598>,  <33.863178, 40.687954, 42.126869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964119, 40.505432, 42.245598>,  <34.132355, 40.201225, 42.443478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964119, 40.505432, 42.245598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473112, -0.281410, -0.834850,
		-0.774127, -0.585174, -0.241451,
		-0.420585, 0.760513, -0.494699,
		33.837944, 40.733585, 42.097187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599373, 39.976063, 41.877968>,  <34.132355, 40.201225, 42.443478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599373, 39.976063, 41.877968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784653, 40.320751, 41.795132>,  <33.895821, 40.527565, 41.745430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.784653, 40.320751, 41.795132>,  <33.599373, 39.976063, 41.877968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784653, 40.320751, 41.795132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356169, -0.394964, -0.846845,
		-0.811537, 0.318497, -0.489864,
		0.463196, 0.861721, -0.207089,
		33.923611, 40.579269, 41.733006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473576, 40.041027, 41.159313>,  <33.599373, 39.976063, 41.877968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473576, 40.041027, 41.159313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.760300, 40.306221, 41.245701>,  <33.932335, 40.465336, 41.297531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.760300, 40.306221, 41.245701>,  <33.473576, 40.041027, 41.159313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760300, 40.306221, 41.245701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407199, -0.146596, -0.901498,
		-0.566017, 0.734142, -0.375047,
		0.716808, 0.662982, 0.215966,
		33.975342, 40.505116, 41.310490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584358, 40.377872, 40.559921>,  <33.473576, 40.041027, 41.159313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584358, 40.377872, 40.559921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907684, 40.478031, 40.773060>,  <34.101681, 40.538124, 40.900944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907684, 40.478031, 40.773060>,  <33.584358, 40.377872, 40.559921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907684, 40.478031, 40.773060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567056, -0.087730, -0.818994,
		-0.158324, 0.964161, -0.212900,
		0.808320, 0.250393, 0.532844,
		34.150181, 40.553150, 40.932915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849998, 40.919834, 40.274902>,  <33.584358, 40.377872, 40.559921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849998, 40.919834, 40.274902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.167820, 40.783947, 40.476212>,  <34.358513, 40.702415, 40.596996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.167820, 40.783947, 40.476212>,  <33.849998, 40.919834, 40.274902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167820, 40.783947, 40.476212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525757, -0.029725, -0.850115,
		0.303757, 0.940058, 0.154990,
		0.794551, -0.339715, 0.503271,
		34.406185, 40.682034, 40.627193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424938, 41.392246, 40.123775>,  <33.849998, 40.919834, 40.274902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424938, 41.392246, 40.123775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664391, 41.096050, 40.245960>,  <34.808064, 40.918331, 40.319271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664391, 41.096050, 40.245960>,  <34.424938, 41.392246, 40.123775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664391, 41.096050, 40.245960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560403, 0.114686, -0.820242,
		0.572352, 0.662205, 0.483629,
		0.598634, -0.740494, 0.305461,
		34.843979, 40.873901, 40.337597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135086, 41.663338, 40.030220>,  <34.424938, 41.392246, 40.123775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135086, 41.663338, 40.030220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.161900, 41.264297, 40.037220>,  <35.177986, 41.024876, 40.041420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.161900, 41.264297, 40.037220>,  <35.135086, 41.663338, 40.030220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161900, 41.264297, 40.037220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483849, 0.017160, -0.874984,
		0.872581, 0.067122, 0.483836,
		0.067034, -0.997597, 0.017503,
		35.182011, 40.965019, 40.042473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.987494, 31.904972, 27.766914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.799507, 31.769732, 28.093061>,  <25.686716, 31.688587, 28.288750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.799507, 31.769732, 28.093061>,  <25.987494, 31.904972, 27.766914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799507, 31.769732, 28.093061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312054, 0.800443, 0.511775,
		-0.825685, 0.494954, -0.270674,
		-0.469964, -0.338100, 0.815367,
		25.658518, 31.668301, 28.337671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656582, 32.527611, 28.084024>,  <25.987494, 31.904972, 27.766914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656582, 32.527611, 28.084024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.689722, 32.245575, 28.365730>,  <25.709606, 32.076355, 28.534754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.689722, 32.245575, 28.365730>,  <25.656582, 32.527611, 28.084024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689722, 32.245575, 28.365730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239103, 0.700116, 0.672806,
		-0.967453, 0.112648, 0.226594,
		0.082852, -0.705087, 0.704264,
		25.714577, 32.034050, 28.577009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284534, 32.737137, 28.685833>,  <25.656582, 32.527611, 28.084024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284534, 32.737137, 28.685833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.595827, 32.501888, 28.773897>,  <25.782602, 32.360741, 28.826736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.595827, 32.501888, 28.773897>,  <25.284534, 32.737137, 28.685833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595827, 32.501888, 28.773897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314300, 0.668300, 0.674234,
		-0.543661, -0.455515, 0.704939,
		0.778234, -0.588117, 0.220160,
		25.829298, 32.325455, 28.839945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251768, 32.486153, 29.341269>,  <25.284534, 32.737137, 28.685833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251768, 32.486153, 29.341269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632975, 32.506348, 29.221796>,  <25.861698, 32.518463, 29.150112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.632975, 32.506348, 29.221796>,  <25.251768, 32.486153, 29.341269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632975, 32.506348, 29.221796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204414, 0.620478, 0.757114,
		0.223548, -0.782597, 0.581006,
		0.953017, 0.050486, -0.298680,
		25.918880, 32.521492, 29.132193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500326, 32.574181, 29.928856>,  <25.251768, 32.486153, 29.341269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500326, 32.574181, 29.928856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795830, 32.682964, 29.682192>,  <25.973133, 32.748234, 29.534193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.795830, 32.682964, 29.682192>,  <25.500326, 32.574181, 29.928856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795830, 32.682964, 29.682192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342904, 0.636021, 0.691298,
		0.580213, -0.722160, 0.376613,
		0.738762, 0.271958, -0.616660,
		26.017458, 32.764553, 29.497194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107615, 32.463547, 30.197271>,  <25.500326, 32.574181, 29.928856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107615, 32.463547, 30.197271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.212723, 32.745750, 29.933994>,  <26.275787, 32.915073, 29.776028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.212723, 32.745750, 29.933994>,  <26.107615, 32.463547, 30.197271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212723, 32.745750, 29.933994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446151, 0.516011, 0.731220,
		0.855513, -0.485794, -0.179171,
		0.262768, 0.705505, -0.658191,
		26.291553, 32.957401, 29.736536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730736, 32.824837, 30.580469>,  <26.107615, 32.463547, 30.197271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730736, 32.824837, 30.580469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.653748, 33.077011, 30.279669>,  <26.607553, 33.228317, 30.099190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.653748, 33.077011, 30.279669>,  <26.730736, 32.824837, 30.580469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653748, 33.077011, 30.279669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384862, 0.753427, 0.533131,
		0.902682, -0.186803, -0.387646,
		-0.192472, 0.630439, -0.751998,
		26.596006, 33.266144, 30.054070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384663, 33.168755, 30.467432>,  <26.730736, 32.824837, 30.580469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384663, 33.168755, 30.467432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065960, 33.376831, 30.344418>,  <26.874739, 33.501678, 30.270609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065960, 33.376831, 30.344418>,  <27.384663, 33.168755, 30.467432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065960, 33.376831, 30.344418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340373, 0.806818, 0.482898,
		0.499325, 0.280076, -0.819898,
		-0.796756, 0.520194, -0.307535,
		26.826933, 33.532890, 30.252157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694067, 33.739681, 30.350773>,  <27.384663, 33.168755, 30.467432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694067, 33.739681, 30.350773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309523, 33.849731, 30.354538>,  <27.078796, 33.915760, 30.356796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309523, 33.849731, 30.354538>,  <27.694067, 33.739681, 30.350773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309523, 33.849731, 30.354538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231133, 0.788128, 0.570467,
		0.149531, 0.550601, -0.821267,
		-0.961363, 0.275124, 0.009412,
		27.021114, 33.932270, 30.357361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720709, 34.456600, 30.169670>,  <27.694067, 33.739681, 30.350773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720709, 34.456600, 30.169670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373617, 34.388832, 30.356579>,  <27.165363, 34.348171, 30.468725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373617, 34.388832, 30.356579>,  <27.720709, 34.456600, 30.169670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373617, 34.388832, 30.356579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212857, 0.722880, 0.657371,
		-0.449155, 0.669882, -0.591201,
		-0.867728, -0.169421, 0.467274,
		27.113298, 34.338005, 30.496761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578672, 35.089592, 30.461494>,  <27.720709, 34.456600, 30.169670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578672, 35.089592, 30.461494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356695, 34.825893, 30.664444>,  <27.223509, 34.667675, 30.786213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356695, 34.825893, 30.664444>,  <27.578672, 35.089592, 30.461494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356695, 34.825893, 30.664444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049740, 0.635112, 0.770817,
		-0.830399, 0.402524, -0.385243,
		-0.554945, -0.659248, 0.507375,
		27.190212, 34.628120, 30.816656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188385, 35.536751, 30.838184>,  <27.578672, 35.089592, 30.461494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188385, 35.536751, 30.838184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132845, 35.181217, 31.012857>,  <27.099522, 34.967896, 31.117662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.132845, 35.181217, 31.012857>,  <27.188385, 35.536751, 30.838184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132845, 35.181217, 31.012857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141832, 0.418561, 0.897045,
		-0.980104, 0.186491, 0.067948,
		-0.138850, -0.888835, 0.436684,
		27.091190, 34.914566, 31.143862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898319, 35.713547, 31.417830>,  <27.188385, 35.536751, 30.838184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898319, 35.713547, 31.417830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996342, 35.336967, 31.510456>,  <27.055155, 35.111019, 31.566032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996342, 35.336967, 31.510456>,  <26.898319, 35.713547, 31.417830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996342, 35.336967, 31.510456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107883, 0.263846, 0.958513,
		-0.963488, -0.209907, 0.166223,
		0.245056, -0.941448, 0.231567,
		27.069859, 35.054535, 31.579926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400602, 35.546204, 32.014088>,  <26.898319, 35.713547, 31.417830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400602, 35.546204, 32.014088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719839, 35.305882, 32.032307>,  <26.911381, 35.161686, 32.043236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719839, 35.305882, 32.032307>,  <26.400602, 35.546204, 32.014088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719839, 35.305882, 32.032307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211899, 0.350632, 0.912226,
		-0.564044, -0.718391, 0.407148,
		0.798094, -0.600810, 0.045545,
		26.959267, 35.125637, 32.045971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423960, 35.179588, 32.634769>,  <26.400602, 35.546204, 32.014088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423960, 35.179588, 32.634769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818188, 35.166424, 32.568359>,  <27.054726, 35.158524, 32.528515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.818188, 35.166424, 32.568359>,  <26.423960, 35.179588, 32.634769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818188, 35.166424, 32.568359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167413, 0.333937, 0.927609,
		0.024914, -0.942020, 0.334629,
		0.985572, -0.032911, -0.166026,
		27.113859, 35.156551, 32.518551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758492, 34.890339, 33.231899>,  <26.423960, 35.179588, 32.634769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758492, 34.890339, 33.231899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062929, 35.067326, 33.042179>,  <27.245592, 35.173519, 32.928349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062929, 35.067326, 33.042179>,  <26.758492, 34.890339, 33.231899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062929, 35.067326, 33.042179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310577, 0.393359, 0.865339,
		0.569456, -0.805909, 0.161962,
		0.761093, 0.442470, -0.474297,
		27.291258, 35.200066, 32.899891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324322, 34.766388, 33.651081>,  <26.758492, 34.890339, 33.231899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324322, 34.766388, 33.651081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434473, 35.080860, 33.429783>,  <27.500563, 35.269543, 33.297005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434473, 35.080860, 33.429783>,  <27.324322, 34.766388, 33.651081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434473, 35.080860, 33.429783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166055, 0.527948, 0.832885,
		0.946886, -0.321226, 0.014835,
		0.275377, 0.786184, -0.553248,
		27.517086, 35.316715, 33.263809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923172, 34.985958, 33.961819>,  <27.324322, 34.766388, 33.651081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923172, 34.985958, 33.961819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803082, 35.306141, 33.754307>,  <27.731028, 35.498253, 33.629799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.803082, 35.306141, 33.754307>,  <27.923172, 34.985958, 33.961819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803082, 35.306141, 33.754307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108473, 0.568989, 0.815160,
		0.947681, 0.188457, -0.257653,
		-0.300224, 0.800460, -0.518777,
		27.713015, 35.546280, 33.598675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378138, 35.475731, 34.187607>,  <27.923172, 34.985958, 33.961819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378138, 35.475731, 34.187607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054680, 35.651436, 34.031071>,  <27.860605, 35.756859, 33.937149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.054680, 35.651436, 34.031071>,  <28.378138, 35.475731, 34.187607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054680, 35.651436, 34.031071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033394, 0.698405, 0.714923,
		0.587352, 0.565049, -0.579429,
		-0.808643, 0.439261, -0.391340,
		27.812088, 35.783215, 33.913670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792603, 34.779495, 34.363148>,  <28.378138, 35.475731, 34.187607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792603, 34.779495, 34.363148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.613054, 34.924412, 34.036404>,  <28.505325, 35.011360, 33.840359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.613054, 34.924412, 34.036404>,  <28.792603, 34.779495, 34.363148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613054, 34.924412, 34.036404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607861, 0.793839, 0.018056,
		0.654997, -0.488432, -0.576552,
		-0.448870, 0.362290, -0.816861,
		28.478394, 35.033100, 33.791344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336224, 34.314411, 34.679447>,  <28.792603, 34.779495, 34.363148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336224, 34.314411, 34.679447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470934, 34.124001, 35.004402>,  <29.551760, 34.009754, 35.199375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470934, 34.124001, 35.004402>,  <29.336224, 34.314411, 34.679447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470934, 34.124001, 35.004402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685435, -0.467603, -0.558146,
		0.645569, 0.744811, 0.168809,
		0.336778, -0.476029, 0.812390,
		29.571968, 33.981194, 35.248119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150995, 34.328045, 34.603317>,  <29.336224, 34.314411, 34.679447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150995, 34.328045, 34.603317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058678, 34.045105, 34.870567>,  <30.003286, 33.875340, 35.030918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058678, 34.045105, 34.870567>,  <30.150995, 34.328045, 34.603317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058678, 34.045105, 34.870567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643079, -0.626201, -0.440821,
		0.730194, 0.327917, 0.599406,
		-0.230796, -0.707349, 0.668124,
		29.989439, 33.832901, 35.071003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784187, 34.011330, 34.870998>,  <30.150995, 34.328045, 34.603317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784187, 34.011330, 34.870998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496822, 33.734341, 34.897408>,  <30.324404, 33.568146, 34.913254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.496822, 33.734341, 34.897408>,  <30.784187, 34.011330, 34.870998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496822, 33.734341, 34.897408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514670, -0.592992, -0.619254,
		0.467972, -0.410899, 0.782409,
		-0.718413, -0.692476, 0.066027,
		30.281298, 33.526596, 34.917217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146866, 33.405098, 34.983978>,  <30.784187, 34.011330, 34.870998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146866, 33.405098, 34.983978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782127, 33.282619, 34.874596>,  <30.563284, 33.209133, 34.808964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782127, 33.282619, 34.874596>,  <31.146866, 33.405098, 34.983978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782127, 33.282619, 34.874596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406026, -0.771036, -0.490557,
		-0.060641, -0.558345, 0.827390,
		-0.911847, -0.306194, -0.273459,
		30.508574, 33.190762, 34.792557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225452, 32.602974, 34.888031>,  <31.146866, 33.405098, 34.983978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225452, 32.602974, 34.888031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873116, 32.694397, 34.722198>,  <30.661713, 32.749249, 34.622700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873116, 32.694397, 34.722198>,  <31.225452, 32.602974, 34.888031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873116, 32.694397, 34.722198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139290, -0.711852, -0.688378,
		-0.452452, -0.664101, 0.595195,
		-0.880843, 0.228553, -0.414582,
		30.608862, 32.762962, 34.597824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812622, 31.956039, 34.825062>,  <31.225452, 32.602974, 34.888031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812622, 31.956039, 34.825062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.698135, 32.217766, 34.545078>,  <30.629444, 32.374802, 34.377087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.698135, 32.217766, 34.545078>,  <30.812622, 31.956039, 34.825062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698135, 32.217766, 34.545078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082541, -0.744646, -0.662336,
		-0.954604, -0.131795, 0.267137,
		-0.286215, 0.654318, -0.699963,
		30.612270, 32.414062, 34.335091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538918, 31.506285, 34.348274>,  <30.812622, 31.956039, 34.825062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538918, 31.506285, 34.348274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573896, 31.852730, 34.151417>,  <30.594885, 32.060596, 34.033302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.573896, 31.852730, 34.151417>,  <30.538918, 31.506285, 34.348274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573896, 31.852730, 34.151417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005978, -0.493571, -0.869685,
		-0.996151, 0.078996, -0.037985,
		0.087449, 0.866110, -0.492144,
		30.600132, 32.112564, 34.003773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136986, 31.475456, 33.836758>,  <30.538918, 31.506285, 34.348274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136986, 31.475456, 33.836758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381145, 31.756033, 33.689575>,  <30.527641, 31.924379, 33.601265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.381145, 31.756033, 33.689575>,  <30.136986, 31.475456, 33.836758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381145, 31.756033, 33.689575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088575, -0.522069, -0.848291,
		-0.787125, 0.485206, -0.380801,
		0.610400, 0.701441, -0.367957,
		30.564266, 31.966465, 33.579189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958611, 31.519272, 33.160889>,  <30.136986, 31.475456, 33.836758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958611, 31.519272, 33.160889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.312515, 31.702967, 33.129143>,  <30.524858, 31.813185, 33.110096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.312515, 31.702967, 33.129143>,  <29.958611, 31.519272, 33.160889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312515, 31.702967, 33.129143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140590, -0.425371, -0.894032,
		-0.444336, 0.779845, -0.440916,
		0.884760, 0.459239, -0.079369,
		30.577944, 31.840738, 33.105331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979448, 31.951178, 32.436825>,  <29.958611, 31.519272, 33.160889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979448, 31.951178, 32.436825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351906, 31.881004, 32.564697>,  <30.575380, 31.838900, 32.641422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351906, 31.881004, 32.564697>,  <29.979448, 31.951178, 32.436825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351906, 31.881004, 32.564697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246157, -0.344390, -0.905981,
		0.269034, 0.922290, -0.277492,
		0.931143, -0.175433, 0.319681,
		30.631248, 31.828375, 32.660603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376968, 32.303253, 31.954161>,  <29.979448, 31.951178, 32.436825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376968, 32.303253, 31.954161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627556, 32.045975, 32.130268>,  <30.777908, 31.891607, 32.235931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.627556, 32.045975, 32.130268>,  <30.376968, 32.303253, 31.954161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627556, 32.045975, 32.130268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131279, -0.469709, -0.873006,
		0.768313, 0.604708, -0.209819,
		0.626467, -0.643197, 0.440269,
		30.815496, 31.853016, 32.262348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008371, 32.318230, 31.508951>,  <30.376968, 32.303253, 31.954161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008371, 32.318230, 31.508951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.961279, 31.976187, 31.710917>,  <30.933023, 31.770962, 31.832096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.961279, 31.976187, 31.710917>,  <31.008371, 32.318230, 31.508951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961279, 31.976187, 31.710917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051851, -0.502463, -0.863043,
		0.991691, -0.127787, 0.014817,
		-0.117731, -0.855103, 0.504914,
		30.925961, 31.719656, 31.862391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344242, 31.836432, 31.085680>,  <31.008371, 32.318230, 31.508951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344242, 31.836432, 31.085680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135370, 31.600496, 31.332067>,  <31.010046, 31.458935, 31.479900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135370, 31.600496, 31.332067>,  <31.344242, 31.836432, 31.085680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135370, 31.600496, 31.332067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125568, -0.661217, -0.739611,
		0.843540, -0.463557, 0.271211,
		-0.522181, -0.589836, 0.615971,
		30.978716, 31.423546, 31.516859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520700, 31.199966, 30.867460>,  <31.344242, 31.836432, 31.085680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520700, 31.199966, 30.867460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.187157, 31.143909, 31.081015>,  <30.987030, 31.110275, 31.209148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.187157, 31.143909, 31.081015>,  <31.520700, 31.199966, 30.867460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187157, 31.143909, 31.081015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334093, -0.641796, -0.690275,
		0.439383, -0.753961, 0.488349,
		-0.833861, -0.140141, 0.533887,
		30.936998, 31.101868, 31.241180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385933, 30.462261, 30.764389>,  <31.520700, 31.199966, 30.867460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385933, 30.462261, 30.764389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045710, 30.627329, 30.894777>,  <30.841576, 30.726370, 30.973009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.045710, 30.627329, 30.894777>,  <31.385933, 30.462261, 30.764389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045710, 30.627329, 30.894777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523468, -0.605081, -0.599882,
		-0.050314, -0.680869, 0.730675,
		-0.850558, 0.412667, 0.325969,
		30.790543, 30.751129, 30.992567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953032, 29.855541, 30.892757>,  <31.385933, 30.462261, 30.764389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953032, 29.855541, 30.892757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.709518, 30.170809, 30.856600>,  <30.563412, 30.359970, 30.834906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.709518, 30.170809, 30.856600>,  <30.953032, 29.855541, 30.892757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709518, 30.170809, 30.856600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519051, -0.481881, -0.705958,
		-0.599976, -0.382854, 0.702461,
		-0.608782, 0.788171, -0.090396,
		30.526884, 30.407261, 30.829481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247217, 29.564781, 30.837772>,  <30.953032, 29.855541, 30.892757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247217, 29.564781, 30.837772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212688, 29.929668, 30.677568>,  <30.191971, 30.148600, 30.581446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212688, 29.929668, 30.677568>,  <30.247217, 29.564781, 30.837772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212688, 29.929668, 30.677568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586054, -0.371593, -0.720041,
		-0.805661, 0.172567, 0.566684,
		-0.086321, 0.912217, -0.400511,
		30.186792, 30.203333, 30.557415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488018, 29.685354, 30.665861>,  <30.247217, 29.564781, 30.837772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488018, 29.685354, 30.665861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.657497, 29.975885, 30.449369>,  <29.759184, 30.150204, 30.319475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.657497, 29.975885, 30.449369>,  <29.488018, 29.685354, 30.665861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657497, 29.975885, 30.449369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693797, -0.123916, -0.709430,
		-0.582347, 0.676085, 0.451422,
		0.423697, 0.726329, -0.541227,
		29.784607, 30.193785, 30.287001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946247, 30.157028, 30.482412>,  <29.488018, 29.685354, 30.665861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946247, 30.157028, 30.482412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.245888, 30.188189, 30.219269>,  <29.425673, 30.206884, 30.061382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.245888, 30.188189, 30.219269>,  <28.946247, 30.157028, 30.482412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245888, 30.188189, 30.219269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661997, 0.051134, -0.747760,
		-0.024611, 0.995649, 0.089873,
		0.749102, 0.077899, -0.657858,
		29.470619, 30.211557, 30.021912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566757, 30.494202, 29.953568>,  <28.946247, 30.157028, 30.482412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566757, 30.494202, 29.953568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894609, 30.324814, 29.799227>,  <29.091320, 30.223181, 29.706621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.894609, 30.324814, 29.799227>,  <28.566757, 30.494202, 29.953568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894609, 30.324814, 29.799227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507699, -0.224860, -0.831673,
		0.265425, 0.877561, -0.399297,
		0.819629, -0.423469, -0.385853,
		29.140497, 30.197773, 29.683472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635370, 30.839262, 29.384632>,  <28.566757, 30.494202, 29.953568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635370, 30.839262, 29.384632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837717, 30.495962, 29.349981>,  <28.959126, 30.289982, 29.329191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837717, 30.495962, 29.349981>,  <28.635370, 30.839262, 29.384632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837717, 30.495962, 29.349981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420455, -0.157635, -0.893515,
		0.753204, 0.488422, -0.440598,
		0.505867, -0.858251, -0.086628,
		28.989477, 30.238487, 29.323994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965034, 30.940502, 28.762602>,  <28.635370, 30.839262, 29.384632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965034, 30.940502, 28.762602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915829, 30.551935, 28.843813>,  <28.886305, 30.318796, 28.892540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.915829, 30.551935, 28.843813>,  <28.965034, 30.940502, 28.762602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915829, 30.551935, 28.843813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395068, -0.139736, -0.907962,
		0.910378, -0.191902, -0.366586,
		-0.123015, -0.971415, 0.203027,
		28.878923, 30.260511, 28.904720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.638535, 38.351635, 44.227280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327929, 38.126316, 44.114342>,  <31.141565, 37.991127, 44.046577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327929, 38.126316, 44.114342>,  <31.638535, 38.351635, 44.227280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327929, 38.126316, 44.114342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468516, 0.216541, 0.856506,
		-0.421326, 0.797376, -0.432060,
		-0.776516, -0.563295, -0.282349,
		31.094975, 37.957329, 44.029636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979601, 38.721840, 44.420578>,  <31.638535, 38.351635, 44.227280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979601, 38.721840, 44.420578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896839, 38.332951, 44.376816>,  <30.847183, 38.099617, 44.350559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.896839, 38.332951, 44.376816>,  <30.979601, 38.721840, 44.420578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896839, 38.332951, 44.376816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512669, 0.012498, 0.858495,
		-0.833284, 0.233712, -0.501015,
		-0.206903, -0.972225, -0.109402,
		30.834768, 38.041283, 44.343994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301073, 38.749691, 44.621223>,  <30.979601, 38.721840, 44.420578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301073, 38.749691, 44.621223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.464725, 38.387123, 44.663189>,  <30.562918, 38.169582, 44.688366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.464725, 38.387123, 44.663189>,  <30.301073, 38.749691, 44.621223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464725, 38.387123, 44.663189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377348, -0.063389, 0.923900,
		-0.830795, -0.417584, -0.367971,
		0.409131, -0.906424, 0.104911,
		30.587465, 38.115196, 44.694664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811522, 38.419224, 44.754040>,  <30.301073, 38.749691, 44.621223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811522, 38.419224, 44.754040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.129274, 38.223202, 44.897594>,  <30.319927, 38.105587, 44.983727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.129274, 38.223202, 44.897594>,  <29.811522, 38.419224, 44.754040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129274, 38.223202, 44.897594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369686, 0.078741, 0.925814,
		-0.481960, -0.868127, -0.118617,
		0.794384, -0.490057, 0.358884,
		30.367590, 38.076183, 45.005260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471769, 37.915314, 45.201752>,  <29.811522, 38.419224, 44.754040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471769, 37.915314, 45.201752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.859270, 37.908604, 45.300739>,  <30.091770, 37.904579, 45.360130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.859270, 37.908604, 45.300739>,  <29.471769, 37.915314, 45.201752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859270, 37.908604, 45.300739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241496, -0.291304, 0.925647,
		0.056564, -0.956484, -0.286251,
		0.968752, -0.016770, 0.247465,
		30.149895, 37.903572, 45.374977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537207, 37.397480, 45.686577>,  <29.471769, 37.915314, 45.201752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537207, 37.397480, 45.686577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.840622, 37.642284, 45.776073>,  <30.022671, 37.789165, 45.829773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.840622, 37.642284, 45.776073>,  <29.537207, 37.397480, 45.686577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840622, 37.642284, 45.776073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104018, -0.225238, 0.968735,
		0.643272, -0.758097, -0.107192,
		0.758539, 0.612010, 0.223745,
		30.068184, 37.825886, 45.843197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870375, 37.046883, 46.222450>,  <29.537207, 37.397480, 45.686577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870375, 37.046883, 46.222450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.027719, 37.414619, 46.218788>,  <30.122126, 37.635262, 46.216591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.027719, 37.414619, 46.218788>,  <29.870375, 37.046883, 46.222450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027719, 37.414619, 46.218788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018425, 0.017843, 0.999671,
		0.919199, -0.393063, 0.023958,
		0.393361, 0.919339, -0.009159,
		30.145727, 37.690422, 46.216042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363020, 37.037201, 46.811340>,  <29.870375, 37.046883, 46.222450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363020, 37.037201, 46.811340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.304409, 37.423168, 46.724194>,  <30.269241, 37.654747, 46.671906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.304409, 37.423168, 46.724194>,  <30.363020, 37.037201, 46.811340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304409, 37.423168, 46.724194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038866, 0.214461, 0.975959,
		0.988442, 0.151475, 0.006078,
		-0.146530, 0.964915, -0.217870,
		30.260450, 37.712643, 46.658833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889736, 37.442795, 47.150200>,  <30.363020, 37.037201, 46.811340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889736, 37.442795, 47.150200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592850, 37.695568, 47.060959>,  <30.414719, 37.847233, 47.007412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592850, 37.695568, 47.060959>,  <30.889736, 37.442795, 47.150200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592850, 37.695568, 47.060959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075954, 0.410090, 0.908877,
		0.665844, 0.657636, -0.352373,
		-0.742215, 0.631934, -0.223106,
		30.370186, 37.885147, 46.994026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188345, 38.198021, 47.261951>,  <30.889736, 37.442795, 47.150200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188345, 38.198021, 47.261951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789764, 38.186565, 47.293606>,  <30.550615, 38.179691, 47.312599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.789764, 38.186565, 47.293606>,  <31.188345, 38.198021, 47.261951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789764, 38.186565, 47.293606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056270, 0.472481, 0.879543,
		-0.062580, 0.880875, -0.469194,
		-0.996453, -0.028640, 0.079135,
		30.490829, 38.177975, 47.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029655, 38.787464, 47.659233>,  <31.188345, 38.198021, 47.261951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029655, 38.787464, 47.659233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694761, 38.569878, 47.681656>,  <30.493826, 38.439327, 47.695110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694761, 38.569878, 47.681656>,  <31.029655, 38.787464, 47.659233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694761, 38.569878, 47.681656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232562, 0.446965, 0.863793,
		-0.494929, 0.710158, -0.500720,
		-0.837234, -0.543965, 0.056060,
		30.443592, 38.406689, 47.698475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535212, 39.253906, 47.971329>,  <31.029655, 38.787464, 47.659233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535212, 39.253906, 47.971329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401825, 38.880829, 48.026283>,  <30.321793, 38.656982, 48.059258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401825, 38.880829, 48.026283>,  <30.535212, 39.253906, 47.971329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401825, 38.880829, 48.026283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282622, 0.237927, 0.929255,
		-0.899403, 0.271045, -0.342941,
		-0.333465, -0.932698, 0.137390,
		30.301785, 38.601021, 48.067501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787674, 39.140236, 48.115322>,  <30.535212, 39.253906, 47.971329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787674, 39.140236, 48.115322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.023518, 38.873634, 48.297810>,  <30.165024, 38.713673, 48.407303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.023518, 38.873634, 48.297810>,  <29.787674, 39.140236, 48.115322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023518, 38.873634, 48.297810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240096, 0.394674, 0.886897,
		-0.771178, -0.632458, 0.072678,
		0.589609, -0.666506, 0.456214,
		30.200401, 38.673683, 48.434673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555729, 39.125504, 48.713455>,  <29.787674, 39.140236, 48.115322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555729, 39.125504, 48.713455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.913052, 38.961010, 48.785995>,  <30.127445, 38.862312, 48.829521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.913052, 38.961010, 48.785995>,  <29.555729, 39.125504, 48.713455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913052, 38.961010, 48.785995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009722, 0.421090, 0.906967,
		-0.449341, -0.808437, 0.380161,
		0.893307, -0.411233, 0.181353,
		30.181044, 38.837639, 48.840401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381819, 39.826389, 49.041313>,  <29.555729, 39.125504, 48.713455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381819, 39.826389, 49.041313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.181488, 40.165428, 48.971172>,  <29.061291, 40.368851, 48.929089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.181488, 40.165428, 48.971172>,  <29.381819, 39.826389, 49.041313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181488, 40.165428, 48.971172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407625, 0.052255, -0.911653,
		-0.763555, -0.528055, -0.371674,
		-0.500825, 0.847601, -0.175349,
		29.031240, 40.419708, 48.918568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984491, 39.677650, 48.399364>,  <29.381819, 39.826389, 49.041313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984491, 39.677650, 48.399364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.034580, 40.073479, 48.427826>,  <29.064632, 40.310978, 48.444904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.034580, 40.073479, 48.427826>,  <28.984491, 39.677650, 48.399364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034580, 40.073479, 48.427826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272172, 0.034703, -0.961623,
		-0.954066, 0.139781, -0.264989,
		0.125221, 0.989574, 0.071153,
		29.072147, 40.370350, 48.449173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925650, 39.825821, 47.734890>,  <28.984491, 39.677650, 48.399364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925650, 39.825821, 47.734890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060768, 40.168903, 47.889935>,  <29.141840, 40.374752, 47.982960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060768, 40.168903, 47.889935>,  <28.925650, 39.825821, 47.734890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060768, 40.168903, 47.889935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400087, 0.241911, -0.883974,
		-0.851954, 0.453679, -0.261439,
		0.337796, 0.857703, 0.387608,
		29.162107, 40.426216, 48.006218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859112, 40.339043, 47.260601>,  <28.925650, 39.825821, 47.734890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859112, 40.339043, 47.260601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.121319, 40.517090, 47.504623>,  <29.278643, 40.623917, 47.651035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.121319, 40.517090, 47.504623>,  <28.859112, 40.339043, 47.260601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121319, 40.517090, 47.504623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518528, 0.322006, -0.792112,
		-0.549024, 0.835574, -0.019725,
		0.655516, 0.445116, 0.610057,
		29.317974, 40.650623, 47.687641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901936, 41.058300, 47.007526>,  <28.859112, 40.339043, 47.260601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901936, 41.058300, 47.007526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237225, 40.976650, 47.209801>,  <29.438398, 40.927662, 47.331165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237225, 40.976650, 47.209801>,  <28.901936, 41.058300, 47.007526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237225, 40.976650, 47.209801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542674, 0.403632, -0.736605,
		-0.053750, 0.891860, 0.449107,
		0.838222, -0.204126, 0.505684,
		29.488691, 40.915413, 47.361507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298191, 41.663513, 46.787907>,  <28.901936, 41.058300, 47.007526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298191, 41.663513, 46.787907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569475, 41.418697, 46.950607>,  <29.732246, 41.271809, 47.048225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.569475, 41.418697, 46.950607>,  <29.298191, 41.663513, 46.787907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569475, 41.418697, 46.950607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667513, 0.281592, -0.689299,
		0.307338, 0.738999, 0.599520,
		0.678211, -0.612035, 0.406747,
		29.772938, 41.235088, 47.072632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938997, 41.992851, 46.670483>,  <29.298191, 41.663513, 46.787907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938997, 41.992851, 46.670483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035383, 41.608452, 46.724773>,  <30.093216, 41.377811, 46.757347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.035383, 41.608452, 46.724773>,  <29.938997, 41.992851, 46.670483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035383, 41.608452, 46.724773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550492, 0.020158, -0.834597,
		0.799309, 0.275826, 0.533878,
		0.240966, -0.960996, 0.135728,
		30.107674, 41.320152, 46.765491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627695, 42.040840, 46.704384>,  <29.938997, 41.992851, 46.670483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627695, 42.040840, 46.704384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533775, 41.672535, 46.579765>,  <30.477423, 41.451550, 46.504993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.533775, 41.672535, 46.579765>,  <30.627695, 42.040840, 46.704384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533775, 41.672535, 46.579765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719120, 0.051101, -0.693005,
		0.654015, -0.386755, 0.650142,
		-0.234800, -0.920766, -0.311544,
		30.463335, 41.396305, 46.486301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244968, 41.763634, 46.471027>,  <30.627695, 42.040840, 46.704384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244968, 41.763634, 46.471027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.955648, 41.547417, 46.299145>,  <30.782057, 41.417686, 46.196014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.955648, 41.547417, 46.299145>,  <31.244968, 41.763634, 46.471027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955648, 41.547417, 46.299145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589458, -0.159187, -0.791959,
		0.359687, -0.826117, 0.433769,
		-0.723301, -0.540546, -0.429704,
		30.738659, 41.385254, 46.170235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540384, 41.133556, 46.329983>,  <31.244968, 41.763634, 46.471027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540384, 41.133556, 46.329983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222315, 41.152863, 46.088200>,  <31.031473, 41.164448, 45.943130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222315, 41.152863, 46.088200>,  <31.540384, 41.133556, 46.329983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222315, 41.152863, 46.088200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597175, -0.110688, -0.794437,
		-0.105234, -0.992683, 0.059206,
		-0.795177, 0.048245, -0.604454,
		30.983763, 41.167343, 45.906864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645031, 40.647137, 45.796749>,  <31.540384, 41.133556, 46.329983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645031, 40.647137, 45.796749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344864, 40.853325, 45.631260>,  <31.164764, 40.977039, 45.531967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.344864, 40.853325, 45.631260>,  <31.645031, 40.647137, 45.796749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344864, 40.853325, 45.631260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451665, -0.057085, -0.890360,
		-0.482571, -0.855004, -0.189982,
		-0.750416, 0.515470, -0.413723,
		31.119740, 41.007965, 45.507145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493334, 40.287457, 45.220989>,  <31.645031, 40.647137, 45.796749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493334, 40.287457, 45.220989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356728, 40.657600, 45.155159>,  <31.274763, 40.879684, 45.115662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356728, 40.657600, 45.155159>,  <31.493334, 40.287457, 45.220989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356728, 40.657600, 45.155159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365179, -0.030699, -0.930431,
		-0.866031, -0.377856, -0.327436,
		-0.341517, 0.925355, -0.164571,
		31.254272, 40.935207, 45.105789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210148, 40.266926, 44.548820>,  <31.493334, 40.287457, 45.220989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210148, 40.266926, 44.548820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279795, 40.652863, 44.627579>,  <31.321583, 40.884422, 44.674831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279795, 40.652863, 44.627579>,  <31.210148, 40.266926, 44.548820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279795, 40.652863, 44.627579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473736, 0.093214, -0.875720,
		-0.863283, 0.245755, -0.440849,
		0.174119, 0.964840, 0.196893,
		31.332031, 40.942314, 44.686646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060099, 40.569977, 43.909328>,  <31.210148, 40.266926, 44.548820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060099, 40.569977, 43.909328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289284, 40.845051, 44.087681>,  <31.426796, 41.010094, 44.194691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289284, 40.845051, 44.087681>,  <31.060099, 40.569977, 43.909328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289284, 40.845051, 44.087681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530289, 0.103747, -0.841445,
		-0.624905, 0.718562, -0.305227,
		0.572964, 0.687681, 0.445878,
		31.461172, 41.051353, 44.221443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377115, 40.725052, 43.550858>,  <31.060099, 40.569977, 43.909328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377115, 40.725052, 43.550858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159716, 40.492611, 43.308559>,  <30.029276, 40.353146, 43.163181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159716, 40.492611, 43.308559>,  <30.377115, 40.725052, 43.550858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159716, 40.492611, 43.308559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559344, -0.287364, 0.777532,
		-0.625893, 0.761411, -0.168851,
		-0.543500, -0.581098, -0.605750,
		29.996666, 40.318283, 43.126835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736164, 40.931179, 43.611629>,  <30.377115, 40.725052, 43.550858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736164, 40.931179, 43.611629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.686255, 40.557133, 43.478977>,  <29.656309, 40.332703, 43.399384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.686255, 40.557133, 43.478977>,  <29.736164, 40.931179, 43.611629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686255, 40.557133, 43.478977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641965, -0.178765, 0.745603,
		-0.756513, 0.305930, -0.578010,
		-0.124774, -0.935120, -0.331635,
		29.648823, 40.276596, 43.379486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970768, 40.807449, 43.606960>,  <29.736164, 40.931179, 43.611629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970768, 40.807449, 43.606960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132706, 40.441784, 43.598900>,  <29.229868, 40.222385, 43.594063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132706, 40.441784, 43.598900>,  <28.970768, 40.807449, 43.606960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132706, 40.441784, 43.598900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649844, -0.303150, 0.696996,
		-0.643276, -0.269082, -0.716792,
		0.404844, -0.914164, -0.020148,
		29.254160, 40.167534, 43.592857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380070, 40.338299, 43.570316>,  <28.970768, 40.807449, 43.606960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380070, 40.338299, 43.570316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.688700, 40.122917, 43.705811>,  <28.873878, 39.993690, 43.787106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.688700, 40.122917, 43.705811>,  <28.380070, 40.338299, 43.570316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688700, 40.122917, 43.705811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615302, -0.496547, 0.612245,
		-0.161468, -0.680816, -0.714435,
		0.771577, -0.538451, 0.338731,
		28.920174, 39.961380, 43.807430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115511, 39.641071, 43.557678>,  <28.380070, 40.338299, 43.570316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115511, 39.641071, 43.557678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.429462, 39.655174, 43.805138>,  <28.617832, 39.663635, 43.953613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.429462, 39.655174, 43.805138>,  <28.115511, 39.641071, 43.557678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429462, 39.655174, 43.805138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546021, -0.432668, 0.717398,
		0.292964, -0.900864, -0.320338,
		0.784877, 0.035260, 0.618647,
		28.664927, 39.665752, 43.990730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008873, 39.019550, 43.963680>,  <28.115511, 39.641071, 43.557678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008873, 39.019550, 43.963680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.263645, 39.240208, 44.179092>,  <28.416508, 39.372601, 44.308338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.263645, 39.240208, 44.179092>,  <28.008873, 39.019550, 43.963680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263645, 39.240208, 44.179092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500673, -0.235188, 0.833075,
		0.586216, -0.800234, 0.126396,
		0.636928, 0.551645, 0.538526,
		28.454723, 39.405701, 44.340649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173820, 38.596134, 44.520340>,  <28.008873, 39.019550, 43.963680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173820, 38.596134, 44.520340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.296379, 38.960629, 44.630447>,  <28.369913, 39.179325, 44.696510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.296379, 38.960629, 44.630447>,  <28.173820, 38.596134, 44.520340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296379, 38.960629, 44.630447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307872, -0.178767, 0.934482,
		0.900743, -0.371066, 0.225771,
		0.306394, 0.911237, 0.275264,
		28.388298, 39.234001, 44.713028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172226, 37.907272, 44.837925>,  <28.173820, 38.596134, 44.520340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172226, 37.907272, 44.837925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.865675, 37.676632, 44.724648>,  <27.681744, 37.538246, 44.656681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.865675, 37.676632, 44.724648>,  <28.172226, 37.907272, 44.837925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865675, 37.676632, 44.724648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222105, 0.175812, -0.959041,
		0.602771, -0.797886, -0.006673,
		-0.766379, -0.576600, -0.283189,
		27.635761, 37.503651, 44.639690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456203, 37.373726, 44.410999>,  <28.172226, 37.907272, 44.837925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456203, 37.373726, 44.410999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065489, 37.395809, 44.328209>,  <27.831060, 37.409058, 44.278534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.065489, 37.395809, 44.328209>,  <28.456203, 37.373726, 44.410999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065489, 37.395809, 44.328209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200535, -0.104018, -0.974149,
		-0.075299, -0.993043, 0.090534,
		-0.976788, 0.055197, -0.206972,
		27.772453, 37.412373, 44.266117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433346, 37.044800, 43.769939>,  <28.456203, 37.373726, 44.410999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433346, 37.044800, 43.769939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.052113, 37.165630, 43.762093>,  <27.823374, 37.238129, 43.757385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.052113, 37.165630, 43.762093>,  <28.433346, 37.044800, 43.769939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052113, 37.165630, 43.762093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018066, -0.121439, -0.992434,
		-0.302177, -0.945516, 0.121199,
		-0.953081, 0.302081, -0.019615,
		27.766188, 37.256252, 43.756207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013451, 36.547344, 43.425838>,  <28.433346, 37.044800, 43.769939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013451, 36.547344, 43.425838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.850142, 36.911400, 43.397644>,  <27.752155, 37.129833, 43.380726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.850142, 36.911400, 43.397644>,  <28.013451, 36.547344, 43.425838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850142, 36.911400, 43.397644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091122, -0.036198, -0.995182,
		-0.908301, -0.412729, -0.068154,
		-0.408273, 0.910134, -0.070487,
		27.727659, 37.184441, 43.376499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433441, 36.437405, 42.996620>,  <28.013451, 36.547344, 43.425838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433441, 36.437405, 42.996620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.526962, 36.826267, 42.990448>,  <27.583075, 37.059586, 42.986744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.526962, 36.826267, 42.990448>,  <27.433441, 36.437405, 42.996620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526962, 36.826267, 42.990448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039340, -0.025320, -0.998905,
		-0.971488, 0.232941, -0.044165,
		0.233804, 0.972161, -0.015435,
		27.597103, 37.117916, 42.985817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025801, 36.804752, 42.537754>,  <27.433441, 36.437405, 42.996620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025801, 36.804752, 42.537754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.360830, 37.018032, 42.585365>,  <27.561848, 37.146000, 42.613934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.360830, 37.018032, 42.585365>,  <27.025801, 36.804752, 42.537754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360830, 37.018032, 42.585365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205433, -0.105500, -0.972968,
		-0.506225, 0.839388, -0.197900,
		0.837576, 0.533196, 0.119031,
		27.612103, 37.177990, 42.621075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045622, 37.074081, 41.875465>,  <27.025801, 36.804752, 42.537754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045622, 37.074081, 41.875465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.401955, 37.138496, 42.045399>,  <27.615755, 37.177147, 42.147358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.401955, 37.138496, 42.045399>,  <27.045622, 37.074081, 41.875465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401955, 37.138496, 42.045399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416906, 0.081879, -0.905254,
		-0.180565, 0.983546, 0.005803,
		0.890834, 0.161038, 0.424831,
		27.669205, 37.186810, 42.172848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.362305, 35.326366, 48.146984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.355606, 35.724155, 48.105515>,  <30.351587, 35.962830, 48.080635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.355606, 35.724155, 48.105515>,  <30.362305, 35.326366, 48.146984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355606, 35.724155, 48.105515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260321, -0.095771, -0.960760,
		-0.965377, -0.043079, -0.257278,
		-0.016748, 0.994471, -0.103670,
		30.350582, 36.022495, 48.074413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920755, 35.504704, 47.699299>,  <30.362305, 35.326366, 48.146984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920755, 35.504704, 47.699299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.180847, 35.806507, 47.663715>,  <30.336903, 35.987591, 47.642365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.180847, 35.806507, 47.663715>,  <29.920755, 35.504704, 47.699299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180847, 35.806507, 47.663715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111697, -0.210754, -0.971137,
		-0.751482, 0.621526, -0.221315,
		0.650230, 0.754512, -0.088955,
		30.375916, 36.032860, 47.637028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699129, 35.900246, 47.158146>,  <29.920755, 35.504704, 47.699299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699129, 35.900246, 47.158146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091038, 35.972675, 47.192238>,  <30.326183, 36.016132, 47.212692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091038, 35.972675, 47.192238>,  <29.699129, 35.900246, 47.158146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091038, 35.972675, 47.192238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099205, -0.069546, -0.992634,
		-0.173810, 0.981008, -0.086102,
		0.979770, 0.181072, 0.085233,
		30.384968, 36.026997, 47.217808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864828, 36.341881, 46.550488>,  <29.699129, 35.900246, 47.158146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864828, 36.341881, 46.550488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209631, 36.182846, 46.676266>,  <30.416512, 36.087425, 46.751732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209631, 36.182846, 46.676266>,  <29.864828, 36.341881, 46.550488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209631, 36.182846, 46.676266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296841, -0.106904, -0.948924,
		0.410893, 0.911317, 0.025868,
		0.862005, -0.397585, 0.314442,
		30.468233, 36.063572, 46.770599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342180, 36.454918, 46.026436>,  <29.864828, 36.341881, 46.550488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342180, 36.454918, 46.026436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.567364, 36.196026, 46.232025>,  <30.702475, 36.040691, 46.355377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.567364, 36.196026, 46.232025>,  <30.342180, 36.454918, 46.026436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567364, 36.196026, 46.232025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448415, -0.283195, -0.847776,
		0.694264, 0.707735, 0.130802,
		0.562958, -0.647234, 0.513971,
		30.736252, 36.001854, 46.386215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969976, 36.587688, 45.838642>,  <30.342180, 36.454918, 46.026436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969976, 36.587688, 45.838642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993921, 36.213737, 45.978596>,  <31.008287, 35.989368, 46.062569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993921, 36.213737, 45.978596>,  <30.969976, 36.587688, 45.838642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993921, 36.213737, 45.978596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492280, -0.277277, -0.825093,
		0.868376, 0.221635, 0.443623,
		0.059863, -0.934877, 0.349887,
		31.011881, 35.933273, 46.083561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563980, 36.396091, 45.587029>,  <30.969976, 36.587688, 45.838642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563980, 36.396091, 45.587029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398287, 36.049549, 45.698631>,  <31.298870, 35.841625, 45.765594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.398287, 36.049549, 45.698631>,  <31.563980, 36.396091, 45.587029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398287, 36.049549, 45.698631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517978, -0.476452, -0.710417,
		0.748404, -0.149759, 0.646114,
		-0.414234, -0.866352, 0.279007,
		31.274017, 35.789642, 45.782333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062370, 35.922188, 45.541237>,  <31.563980, 36.396091, 45.587029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062370, 35.922188, 45.541237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738512, 35.687420, 45.540756>,  <31.544197, 35.546558, 45.540466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738512, 35.687420, 45.540756>,  <32.062370, 35.922188, 45.541237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738512, 35.687420, 45.540756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473678, -0.652207, -0.591824,
		0.346569, -0.479737, 0.806066,
		-0.809642, -0.586923, -0.001206,
		31.495619, 35.511341, 45.540394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134048, 35.171658, 45.793476>,  <32.062370, 35.922188, 45.541237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134048, 35.171658, 45.793476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813345, 35.138374, 45.556744>,  <31.620924, 35.118404, 45.414703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813345, 35.138374, 45.556744>,  <32.134048, 35.171658, 45.793476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813345, 35.138374, 45.556744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550157, -0.489609, -0.676469,
		-0.233478, -0.867963, 0.438324,
		-0.801757, -0.083207, -0.591829,
		31.572817, 35.113411, 45.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148106, 34.467030, 45.484707>,  <32.134048, 35.171658, 45.793476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148106, 34.467030, 45.484707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.894958, 34.664745, 45.246326>,  <31.743071, 34.783375, 45.103298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.894958, 34.664745, 45.246326>,  <32.148106, 34.467030, 45.484707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894958, 34.664745, 45.246326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364361, -0.489016, -0.792530,
		-0.683167, -0.718709, 0.129384,
		-0.632870, 0.494288, -0.595950,
		31.705097, 34.813030, 45.067543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814053, 34.005608, 45.173187>,  <32.148106, 34.467030, 45.484707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814053, 34.005608, 45.173187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.802588, 34.334473, 44.945778>,  <31.795710, 34.531792, 44.809330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.802588, 34.334473, 44.945778>,  <31.814053, 34.005608, 45.173187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802588, 34.334473, 44.945778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397726, -0.512419, -0.761078,
		-0.917056, -0.247931, -0.312310,
		-0.028661, 0.822165, -0.568526,
		31.793989, 34.581123, 44.775219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575483, 33.840397, 44.385132>,  <31.814053, 34.005608, 45.173187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575483, 33.840397, 44.385132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753860, 34.195240, 44.337502>,  <31.860888, 34.408146, 44.308922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753860, 34.195240, 44.337502>,  <31.575483, 33.840397, 44.385132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753860, 34.195240, 44.337502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536562, -0.371436, -0.757718,
		-0.716405, 0.274007, -0.641626,
		0.445944, 0.887105, -0.119077,
		31.887644, 34.461372, 44.301777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818857, 33.709904, 43.984028>,  <31.575483, 33.840397, 44.385132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818857, 33.709904, 43.984028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.547091, 33.482540, 43.798424>,  <30.384031, 33.346123, 43.687061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.547091, 33.482540, 43.798424>,  <30.818857, 33.709904, 43.984028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547091, 33.482540, 43.798424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663856, 0.206813, 0.718695,
		-0.312553, 0.796327, -0.517856,
		-0.679415, -0.568412, -0.464007,
		30.343266, 33.312016, 43.659222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248774, 34.101357, 43.833008>,  <30.818857, 33.709904, 43.984028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248774, 34.101357, 43.833008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.117197, 33.725609, 43.871742>,  <30.038252, 33.500160, 43.894981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.117197, 33.725609, 43.871742>,  <30.248774, 34.101357, 43.833008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117197, 33.725609, 43.871742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709918, 0.313596, 0.630614,
		-0.622748, 0.138691, -0.770032,
		-0.328939, -0.939373, 0.096832,
		30.018515, 33.443798, 43.900791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613871, 34.189049, 43.829212>,  <30.248774, 34.101357, 43.833008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613871, 34.189049, 43.829212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.579741, 33.808311, 43.947006>,  <29.559261, 33.579868, 44.017681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.579741, 33.808311, 43.947006>,  <29.613871, 34.189049, 43.829212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579741, 33.808311, 43.947006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737942, 0.258963, 0.623202,
		-0.669448, -0.164138, -0.724498,
		-0.085327, -0.951838, 0.294486,
		29.554142, 33.522758, 44.035351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881525, 34.044903, 43.857643>,  <29.613871, 34.189049, 43.829212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881525, 34.044903, 43.857643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.032495, 33.754498, 44.087585>,  <29.123077, 33.580254, 44.225552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.032495, 33.754498, 44.087585>,  <28.881525, 34.044903, 43.857643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032495, 33.754498, 44.087585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769900, 0.098946, 0.630448,
		-0.514591, -0.680528, -0.521610,
		0.377426, -0.726010, 0.574855,
		29.145723, 33.536694, 44.260040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218740, 33.645824, 44.164543>,  <28.881525, 34.044903, 43.857643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218740, 33.645824, 44.164543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.525085, 33.539654, 44.398808>,  <28.708893, 33.475952, 44.539368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.525085, 33.539654, 44.398808>,  <28.218740, 33.645824, 44.164543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525085, 33.539654, 44.398808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604770, 0.012043, 0.796309,
		-0.218419, -0.964054, -0.151302,
		0.765863, -0.265432, 0.585661,
		28.754845, 33.460026, 44.574505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901211, 33.231495, 44.770725>,  <28.218740, 33.645824, 44.164543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901211, 33.231495, 44.770725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262220, 33.359772, 44.885689>,  <28.478827, 33.436737, 44.954666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262220, 33.359772, 44.885689>,  <27.901211, 33.231495, 44.770725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262220, 33.359772, 44.885689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277605, -0.076970, 0.957607,
		0.329223, -0.944050, 0.019559,
		0.902523, 0.320696, 0.287413,
		28.532978, 33.455982, 44.971912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094160, 32.820118, 45.467804>,  <27.901211, 33.231495, 44.770725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094160, 32.820118, 45.467804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.339111, 33.134640, 45.435009>,  <28.486082, 33.323353, 45.415333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.339111, 33.134640, 45.435009>,  <28.094160, 32.820118, 45.467804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339111, 33.134640, 45.435009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245011, 0.287366, 0.925954,
		0.751639, -0.546947, 0.368629,
		0.612380, 0.786302, -0.081988,
		28.522825, 33.370529, 45.410412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351820, 32.910702, 46.156822>,  <28.094160, 32.820118, 45.467804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351820, 32.910702, 46.156822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.421875, 33.270588, 45.996902>,  <28.463907, 33.486519, 45.900951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.421875, 33.270588, 45.996902>,  <28.351820, 32.910702, 46.156822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421875, 33.270588, 45.996902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392334, 0.436220, 0.809806,
		0.902996, 0.015029, 0.429386,
		0.175137, 0.899715, -0.399801,
		28.474417, 33.540501, 45.876961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645203, 33.295242, 46.682198>,  <28.351820, 32.910702, 46.156822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645203, 33.295242, 46.682198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.486935, 33.553570, 46.421009>,  <28.391973, 33.708565, 46.264297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.486935, 33.553570, 46.421009>,  <28.645203, 33.295242, 46.682198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486935, 33.553570, 46.421009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514630, 0.432967, 0.740065,
		0.760659, 0.628858, 0.161045,
		-0.395669, 0.645816, -0.652969,
		28.368235, 33.747314, 46.225117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603918, 33.951942, 47.027554>,  <28.645203, 33.295242, 46.682198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603918, 33.951942, 47.027554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.356073, 34.003967, 46.717930>,  <28.207367, 34.035183, 46.532158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.356073, 34.003967, 46.717930>,  <28.603918, 33.951942, 47.027554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356073, 34.003967, 46.717930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656135, 0.455405, 0.601742,
		0.430773, 0.880733, -0.196836,
		-0.619614, 0.130063, -0.774056,
		28.170189, 34.042988, 46.485714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294930, 34.632278, 47.114449>,  <28.603918, 33.951942, 47.027554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294930, 34.632278, 47.114449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.043056, 34.436241, 46.873348>,  <27.891933, 34.318619, 46.728687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.043056, 34.436241, 46.873348>,  <28.294930, 34.632278, 47.114449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043056, 34.436241, 46.873348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773167, 0.319864, 0.547631,
		-0.075588, 0.810863, -0.580333,
		-0.629681, -0.490089, -0.602755,
		27.854153, 34.289215, 46.692520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805799, 35.156414, 46.981346>,  <28.294930, 34.632278, 47.114449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805799, 35.156414, 46.981346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.656279, 34.793461, 46.904476>,  <27.566566, 34.575687, 46.858353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.656279, 34.793461, 46.904476>,  <27.805799, 35.156414, 46.981346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656279, 34.793461, 46.904476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741557, 0.167920, 0.649536,
		-0.557106, 0.385307, -0.735643,
		-0.373800, -0.907382, -0.192178,
		27.544138, 34.521248, 46.846825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197321, 35.315086, 47.011822>,  <27.805799, 35.156414, 46.981346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197321, 35.315086, 47.011822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200987, 34.915230, 47.021946>,  <27.203186, 34.675316, 47.028019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.200987, 34.915230, 47.021946>,  <27.197321, 35.315086, 47.011822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200987, 34.915230, 47.021946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746608, 0.009995, 0.665189,
		-0.665201, -0.024993, -0.746246,
		0.009166, -0.999637, 0.025309,
		27.203737, 34.615337, 47.029537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525217, 35.095676, 46.940929>,  <27.197321, 35.315086, 47.011822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525217, 35.095676, 46.940929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.709211, 34.802822, 47.141880>,  <26.819607, 34.627110, 47.262451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.709211, 34.802822, 47.141880>,  <26.525217, 35.095676, 46.940929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709211, 34.802822, 47.141880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750453, -0.018147, 0.660675,
		-0.474589, -0.680913, -0.557784,
		0.459984, -0.732140, 0.502381,
		26.847206, 34.583179, 47.292595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588453, 35.787735, 47.186760>,  <26.525217, 35.095676, 46.940929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588453, 35.787735, 47.186760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.491669, 36.175846, 47.187996>,  <26.433598, 36.408714, 47.188736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.491669, 36.175846, 47.187996>,  <26.588453, 35.787735, 47.186760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491669, 36.175846, 47.187996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285960, 0.074349, -0.955353,
		-0.927190, -0.230276, -0.295451,
		-0.241962, 0.970281, 0.003086,
		26.419081, 36.466930, 47.188923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251568, 35.811287, 46.536797>,  <26.588453, 35.787735, 47.186760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251568, 35.811287, 46.536797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.380772, 36.171741, 46.652466>,  <26.458294, 36.388016, 46.721867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.380772, 36.171741, 46.652466>,  <26.251568, 35.811287, 46.536797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380772, 36.171741, 46.652466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381173, 0.155795, -0.911282,
		-0.866240, 0.404578, -0.293164,
		0.323011, 0.901135, 0.289170,
		26.477674, 36.442081, 46.739216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948275, 36.343849, 46.086094>,  <26.251568, 35.811287, 46.536797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948275, 36.343849, 46.086094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.284006, 36.515213, 46.219955>,  <26.485445, 36.618031, 46.300274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.284006, 36.515213, 46.219955>,  <25.948275, 36.343849, 46.086094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284006, 36.515213, 46.219955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213509, 0.306351, -0.927666,
		-0.499939, 0.850069, 0.165661,
		0.839330, 0.428406, 0.334654,
		26.535805, 36.643734, 46.320351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962421, 37.069126, 45.728790>,  <25.948275, 36.343849, 46.086094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962421, 37.069126, 45.728790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.331503, 36.984699, 45.857830>,  <26.552952, 36.934044, 45.935253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.331503, 36.984699, 45.857830>,  <25.962421, 37.069126, 45.728790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331503, 36.984699, 45.857830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376426, 0.312678, -0.872087,
		0.083204, 0.926111, 0.367961,
		0.922703, -0.211071, 0.322596,
		26.608315, 36.921379, 45.954609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421652, 37.620613, 45.509594>,  <25.962421, 37.069126, 45.728790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421652, 37.620613, 45.509594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.670221, 37.314259, 45.575615>,  <26.819363, 37.130444, 45.615227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.670221, 37.314259, 45.575615>,  <26.421652, 37.620613, 45.509594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670221, 37.314259, 45.575615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579246, 0.307272, -0.755022,
		0.527548, 0.564796, 0.634585,
		0.621424, -0.765891, 0.165055,
		26.856649, 37.084492, 45.625130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974747, 37.922333, 45.595051>,  <26.421652, 37.620613, 45.509594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974747, 37.922333, 45.595051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.082682, 37.555389, 45.477997>,  <27.147444, 37.335224, 45.407764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.082682, 37.555389, 45.477997>,  <26.974747, 37.922333, 45.595051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082682, 37.555389, 45.477997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264916, 0.362907, -0.893374,
		0.925746, 0.163544, 0.340950,
		0.269840, -0.917361, -0.292634,
		27.163633, 37.280182, 45.390205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700058, 38.066761, 45.384995>,  <26.974747, 37.922333, 45.595051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700058, 38.066761, 45.384995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.571857, 37.722279, 45.227211>,  <27.494938, 37.515591, 45.132542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.571857, 37.722279, 45.227211>,  <27.700058, 38.066761, 45.384995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571857, 37.722279, 45.227211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183830, 0.351963, -0.917784,
		0.929239, -0.366666, 0.045511,
		-0.320502, -0.861207, -0.394462,
		27.475706, 37.463917, 45.108871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281260, 38.493099, 45.313992>,  <27.700058, 38.066761, 45.384995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281260, 38.493099, 45.313992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.245987, 38.878780, 45.213963>,  <28.224823, 39.110188, 45.153946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.245987, 38.878780, 45.213963>,  <28.281260, 38.493099, 45.313992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245987, 38.878780, 45.213963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296928, 0.214194, 0.930567,
		0.950819, 0.156314, 0.267411,
		-0.088183, 0.964203, -0.250074,
		28.219532, 39.168041, 45.138939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738983, 38.904896, 45.792515>,  <28.281260, 38.493099, 45.313992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738983, 38.904896, 45.792515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.438396, 39.123493, 45.644657>,  <28.258043, 39.254654, 45.555943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.438396, 39.123493, 45.644657>,  <28.738983, 38.904896, 45.792515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438396, 39.123493, 45.644657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281844, 0.240665, 0.928786,
		0.596540, 0.802135, -0.026825,
		-0.751468, 0.546497, -0.369644,
		28.212955, 39.287441, 45.533764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573757, 39.192898, 46.364353>,  <28.738983, 38.904896, 45.792515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573757, 39.192898, 46.364353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.276461, 39.329025, 46.133953>,  <28.098083, 39.410702, 45.995712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.276461, 39.329025, 46.133953>,  <28.573757, 39.192898, 46.364353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276461, 39.329025, 46.133953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437128, 0.404748, 0.803180,
		0.506471, 0.848742, -0.152064,
		-0.743241, 0.340316, -0.576002,
		28.053488, 39.431122, 45.961151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500399, 39.837578, 46.561920>,  <28.573757, 39.192898, 46.364353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500399, 39.837578, 46.561920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.146404, 39.729927, 46.409935>,  <27.934008, 39.665337, 46.318745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.146404, 39.729927, 46.409935>,  <28.500399, 39.837578, 46.561920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146404, 39.729927, 46.409935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460380, 0.383690, 0.800520,
		-0.069651, 0.883377, -0.463460,
		-0.884985, -0.269124, -0.379965,
		27.880909, 39.649189, 46.295944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017786, 40.448994, 46.607708>,  <28.500399, 39.837578, 46.561920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017786, 40.448994, 46.607708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.790825, 40.120892, 46.578758>,  <27.654648, 39.924030, 46.561390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.790825, 40.120892, 46.578758>,  <28.017786, 40.448994, 46.607708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790825, 40.120892, 46.578758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433368, 0.222727, 0.873261,
		-0.700174, 0.526858, -0.481848,
		-0.567405, -0.820252, -0.072376,
		27.620604, 39.874817, 46.557045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347517, 40.705265, 46.904217>,  <28.017786, 40.448994, 46.607708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347517, 40.705265, 46.904217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.306648, 40.307377, 46.900448>,  <27.282127, 40.068642, 46.898186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.306648, 40.307377, 46.900448>,  <27.347517, 40.705265, 46.904217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306648, 40.307377, 46.900448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580331, 0.051905, 0.812725,
		-0.807947, 0.088507, -0.582571,
		-0.102171, -0.994722, -0.009427,
		27.275997, 40.008961, 46.897621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584185, 40.514782, 46.944717>,  <27.347517, 40.705265, 46.904217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584185, 40.514782, 46.944717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.801077, 40.201759, 47.067093>,  <26.931211, 40.013947, 47.140518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.801077, 40.201759, 47.067093>,  <26.584185, 40.514782, 46.944717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801077, 40.201759, 47.067093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495616, -0.003863, 0.868533,
		-0.678492, -0.622571, -0.389941,
		0.542230, -0.782554, 0.305935,
		26.963745, 39.966991, 47.158875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144852, 40.012749, 47.220123>,  <26.584185, 40.514782, 46.944717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144852, 40.012749, 47.220123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.493910, 39.951900, 47.405746>,  <26.703344, 39.915390, 47.517120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.493910, 39.951900, 47.405746>,  <26.144852, 40.012749, 47.220123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493910, 39.951900, 47.405746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475158, -0.045043, 0.878747,
		-0.112770, -0.987336, -0.111587,
		0.872644, -0.152118, 0.464061,
		26.755703, 39.906265, 47.544964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988720, 39.573921, 47.818722>,  <26.144852, 40.012749, 47.220123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988720, 39.573921, 47.818722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.356237, 39.696320, 47.918476>,  <26.576748, 39.769756, 47.978329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.356237, 39.696320, 47.918476>,  <25.988720, 39.573921, 47.818722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356237, 39.696320, 47.918476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334982, 0.270176, 0.902658,
		0.208825, -0.912895, 0.350736,
		0.918792, 0.305988, 0.249384,
		26.631874, 39.788116, 47.993290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.613003, 37.805721, 34.628807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957394, 37.954487, 34.767597>,  <35.164028, 38.043747, 34.850872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957394, 37.954487, 34.767597>,  <34.613003, 37.805721, 34.628807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957394, 37.954487, 34.767597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266379, -0.251424, 0.930499,
		0.433305, -0.893568, -0.117401,
		0.860981, 0.371917, 0.346971,
		35.215687, 38.066063, 34.871689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816772, 37.378338, 35.144360>,  <34.613003, 37.805721, 34.628807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816772, 37.378338, 35.144360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994476, 37.728817, 35.219105>,  <35.101097, 37.939102, 35.263950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994476, 37.728817, 35.219105>,  <34.816772, 37.378338, 35.144360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994476, 37.728817, 35.219105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346627, -0.024224, 0.937690,
		0.826125, -0.481350, 0.292951,
		0.444261, 0.876193, 0.186861,
		35.127754, 37.991676, 35.275162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154423, 37.315575, 35.898693>,  <34.816772, 37.378338, 35.144360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154423, 37.315575, 35.898693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153965, 37.701107, 35.792091>,  <35.153690, 37.932426, 35.728130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153965, 37.701107, 35.792091>,  <35.154423, 37.315575, 35.898693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153965, 37.701107, 35.792091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284326, 0.255190, 0.924141,
		0.958727, 0.076831, 0.273750,
		-0.001145, 0.963833, -0.266503,
		35.153622, 37.990257, 35.712139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374542, 37.679348, 36.504150>,  <35.154423, 37.315575, 35.898693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374542, 37.679348, 36.504150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207241, 37.972202, 36.289101>,  <35.106861, 38.147915, 36.160072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207241, 37.972202, 36.289101>,  <35.374542, 37.679348, 36.504150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207241, 37.972202, 36.289101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435705, 0.357634, 0.825990,
		0.797012, 0.579715, 0.169416,
		-0.418250, 0.732140, -0.537623,
		35.081764, 38.191845, 36.127815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543846, 38.308727, 36.823818>,  <35.374542, 37.679348, 36.504150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543846, 38.308727, 36.823818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212589, 38.365089, 36.606812>,  <35.013836, 38.398907, 36.476608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212589, 38.365089, 36.606812>,  <35.543846, 38.308727, 36.823818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212589, 38.365089, 36.606812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449985, 0.409967, 0.793373,
		0.334202, 0.901151, -0.276107,
		-0.828144, 0.140903, -0.542516,
		34.964146, 38.407360, 36.444057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381840, 38.884251, 36.975273>,  <35.543846, 38.308727, 36.823818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381840, 38.884251, 36.975273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044098, 38.718029, 36.839996>,  <34.841454, 38.618294, 36.758831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044098, 38.718029, 36.839996>,  <35.381840, 38.884251, 36.975273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044098, 38.718029, 36.839996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501562, 0.391116, 0.771663,
		-0.188401, 0.821182, -0.538670,
		-0.844358, -0.415558, -0.338187,
		34.790791, 38.593361, 36.738541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953796, 39.421982, 37.125305>,  <35.381840, 38.884251, 36.975273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953796, 39.421982, 37.125305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730156, 39.096523, 37.061562>,  <34.595974, 38.901249, 37.023315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730156, 39.096523, 37.061562>,  <34.953796, 39.421982, 37.125305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730156, 39.096523, 37.061562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615304, 0.278360, 0.737507,
		-0.555707, 0.510394, -0.656267,
		-0.559098, -0.813642, -0.159361,
		34.562428, 38.852432, 37.013752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265190, 39.420086, 36.745640>,  <34.953796, 39.421982, 37.125305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265190, 39.420086, 36.745640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200718, 39.089775, 36.961830>,  <34.162037, 38.891586, 37.091545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200718, 39.089775, 36.961830>,  <34.265190, 39.420086, 36.745640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200718, 39.089775, 36.961830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795461, 0.432850, 0.424127,
		-0.584178, -0.361564, -0.726641,
		-0.161177, -0.825780, 0.540471,
		34.152367, 38.842041, 37.123970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680923, 39.614494, 37.106071>,  <34.265190, 39.420086, 36.745640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680923, 39.614494, 37.106071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736488, 39.243504, 37.244915>,  <33.769829, 39.020908, 37.328220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736488, 39.243504, 37.244915>,  <33.680923, 39.614494, 37.106071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736488, 39.243504, 37.244915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854353, 0.065009, 0.515610,
		-0.500783, -0.368183, -0.783363,
		0.138913, -0.927478, 0.347113,
		33.778164, 38.965260, 37.349049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085773, 39.258858, 36.891563>,  <33.680923, 39.614494, 37.106071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085773, 39.258858, 36.891563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262890, 39.090057, 37.208008>,  <33.369160, 38.988777, 37.397873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262890, 39.090057, 37.208008>,  <33.085773, 39.258858, 36.891563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262890, 39.090057, 37.208008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811600, 0.186389, 0.553683,
		-0.381110, -0.887227, -0.259967,
		0.442788, -0.422004, 0.791108,
		33.395725, 38.963455, 37.445339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573219, 38.837902, 37.266739>,  <33.085773, 39.258858, 36.891563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573219, 38.837902, 37.266739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863705, 38.886719, 37.537357>,  <33.037994, 38.916008, 37.699730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863705, 38.886719, 37.537357>,  <32.573219, 38.837902, 37.266739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863705, 38.886719, 37.537357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686080, 0.191163, 0.701962,
		-0.043664, -0.973942, 0.222554,
		0.726214, 0.122040, 0.676549,
		33.081570, 38.923332, 37.740322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360111, 38.381821, 37.759701>,  <32.573219, 38.837902, 37.266739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360111, 38.381821, 37.759701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590912, 38.678959, 37.895496>,  <32.729393, 38.857243, 37.976974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590912, 38.678959, 37.895496>,  <32.360111, 38.381821, 37.759701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590912, 38.678959, 37.895496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685587, 0.214609, 0.695639,
		0.443898, -0.634128, 0.633116,
		0.576997, 0.742849, 0.339485,
		32.764011, 38.901814, 37.997341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138096, 37.767239, 37.923378>,  <32.360111, 38.381821, 37.759701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138096, 37.767239, 37.923378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877972, 37.495224, 37.787937>,  <31.721897, 37.332016, 37.706673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877972, 37.495224, 37.787937>,  <32.138096, 37.767239, 37.923378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877972, 37.495224, 37.787937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645839, -0.260220, -0.717759,
		0.399991, -0.685447, 0.608416,
		-0.650308, -0.680036, -0.338602,
		31.682878, 37.291214, 37.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526176, 37.169998, 37.839111>,  <32.138096, 37.767239, 37.923378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526176, 37.169998, 37.839111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202499, 37.103535, 37.613689>,  <32.008293, 37.063656, 37.478436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202499, 37.103535, 37.613689>,  <32.526176, 37.169998, 37.839111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202499, 37.103535, 37.613689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586815, -0.276113, -0.761190,
		-0.029130, -0.946654, 0.320932,
		-0.809197, -0.166154, -0.563554,
		31.959740, 37.053688, 37.444622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542351, 36.514744, 37.651154>,  <32.526176, 37.169998, 37.839111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542351, 36.514744, 37.651154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334541, 36.703568, 37.366268>,  <32.209854, 36.816860, 37.195335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334541, 36.703568, 37.366268>,  <32.542351, 36.514744, 37.651154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334541, 36.703568, 37.366268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508247, -0.499316, -0.701689,
		-0.686861, -0.726528, 0.019484,
		-0.519525, 0.472061, -0.712216,
		32.178684, 36.845184, 37.152603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540096, 35.971058, 37.099014>,  <32.542351, 36.514744, 37.651154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540096, 35.971058, 37.099014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434223, 36.319054, 36.932610>,  <32.370701, 36.527851, 36.832767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434223, 36.319054, 36.932610>,  <32.540096, 35.971058, 37.099014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434223, 36.319054, 36.932610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513010, -0.238259, -0.824654,
		-0.816556, -0.431690, -0.383249,
		-0.264682, 0.869986, -0.416014,
		32.354820, 36.580048, 36.807804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143589, 35.788715, 36.427578>,  <32.540096, 35.971058, 37.099014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143589, 35.788715, 36.427578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281216, 36.162113, 36.387150>,  <32.363792, 36.386150, 36.362892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281216, 36.162113, 36.387150>,  <32.143589, 35.788715, 36.427578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281216, 36.162113, 36.387150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290496, -0.208192, -0.933953,
		-0.892879, 0.291979, -0.342806,
		0.344064, 0.933491, -0.101072,
		32.384434, 36.442162, 36.356827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015415, 35.934666, 35.743179>,  <32.143589, 35.788715, 36.427578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015415, 35.934666, 35.743179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273148, 36.224609, 35.840675>,  <32.427788, 36.398575, 35.899174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273148, 36.224609, 35.840675>,  <32.015415, 35.934666, 35.743179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273148, 36.224609, 35.840675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519346, -0.180798, -0.835220,
		-0.561350, 0.664748, -0.492947,
		0.644334, 0.724860, 0.243743,
		32.466450, 36.442066, 35.913799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131866, 36.299419, 35.147793>,  <32.015415, 35.934666, 35.743179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131866, 36.299419, 35.147793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452999, 36.371300, 35.375187>,  <32.645679, 36.414429, 35.511623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452999, 36.371300, 35.375187>,  <32.131866, 36.299419, 35.147793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452999, 36.371300, 35.375187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595618, -0.284095, -0.751351,
		0.026487, 0.941806, -0.335112,
		0.802831, 0.179698, 0.568482,
		32.693848, 36.425209, 35.545731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543285, 36.735748, 34.817173>,  <32.131866, 36.299419, 35.147793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543285, 36.735748, 34.817173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797123, 36.539856, 35.056324>,  <32.949425, 36.422321, 35.199814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797123, 36.539856, 35.056324>,  <32.543285, 36.735748, 34.817173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797123, 36.539856, 35.056324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657100, -0.065322, -0.750968,
		0.406825, 0.869424, 0.280348,
		0.634597, -0.489730, 0.597873,
		32.987503, 36.392937, 35.235687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217545, 37.058025, 34.576553>,  <32.543285, 36.735748, 34.817173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217545, 37.058025, 34.576553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339161, 36.741711, 34.789051>,  <33.412132, 36.551922, 34.916550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339161, 36.741711, 34.789051>,  <33.217545, 37.058025, 34.576553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339161, 36.741711, 34.789051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640557, -0.243067, -0.728427,
		0.705157, 0.561760, 0.432642,
		0.304040, -0.790787, 0.531240,
		33.430374, 36.504475, 34.948421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935627, 36.962574, 34.385746>,  <33.217545, 37.058025, 34.576553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935627, 36.962574, 34.385746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819176, 36.612331, 34.539913>,  <33.749306, 36.402184, 34.632416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819176, 36.612331, 34.539913>,  <33.935627, 36.962574, 34.385746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819176, 36.612331, 34.539913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639564, -0.477747, -0.602259,
		0.711478, 0.071165, 0.699096,
		-0.291131, -0.875611, 0.385420,
		33.731834, 36.349648, 34.655540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554184, 36.553905, 34.573902>,  <33.935627, 36.962574, 34.385746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554184, 36.553905, 34.573902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260735, 36.287640, 34.519218>,  <34.084667, 36.127880, 34.486408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260735, 36.287640, 34.519218>,  <34.554184, 36.553905, 34.573902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260735, 36.287640, 34.519218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630395, -0.591505, -0.502717,
		0.253779, -0.454983, 0.853573,
		-0.733620, -0.665667, -0.136708,
		34.040649, 36.087940, 34.478207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902561, 36.107590, 34.178623>,  <34.554184, 36.553905, 34.573902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902561, 36.107590, 34.178623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531715, 35.957680, 34.179470>,  <34.309208, 35.867733, 34.179977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531715, 35.957680, 34.179470>,  <34.902561, 36.107590, 34.178623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531715, 35.957680, 34.179470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179624, -0.449295, -0.875140,
		0.328927, -0.810975, 0.483866,
		-0.927115, -0.374771, 0.002115,
		34.253582, 35.845249, 34.180103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981396, 35.381554, 34.101719>,  <34.902561, 36.107590, 34.178623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981396, 35.381554, 34.101719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630531, 35.524197, 33.973080>,  <34.420013, 35.609783, 33.895897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630531, 35.524197, 33.973080>,  <34.981396, 35.381554, 34.101719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630531, 35.524197, 33.973080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170662, -0.394480, -0.902918,
		-0.448855, -0.846884, 0.285160,
		-0.877156, 0.356613, -0.321596,
		34.367386, 35.631180, 33.876602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816658, 34.857952, 33.668350>,  <34.981396, 35.381554, 34.101719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816658, 34.857952, 33.668350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604679, 35.188103, 33.590462>,  <34.477493, 35.386192, 33.543728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604679, 35.188103, 33.590462>,  <34.816658, 34.857952, 33.668350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604679, 35.188103, 33.590462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183033, -0.112876, -0.976605,
		-0.828042, -0.553190, -0.091252,
		-0.529948, 0.825373, -0.194718,
		34.445694, 35.435715, 33.532047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419701, 34.738785, 33.091881>,  <34.816658, 34.857952, 33.668350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419701, 34.738785, 33.091881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512321, 35.127857, 33.098499>,  <34.567894, 35.361301, 33.102470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512321, 35.127857, 33.098499>,  <34.419701, 34.738785, 33.091881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512321, 35.127857, 33.098499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351021, -0.067674, -0.933919,
		-0.907286, 0.222060, -0.357102,
		0.231553, 0.972682, 0.016548,
		34.581787, 35.419662, 33.103462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417736, 34.264057, 33.700550>,  <34.419701, 34.738785, 33.091881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417736, 34.264057, 33.700550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762791, 34.122948, 33.845554>,  <34.969822, 34.038280, 33.932556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762791, 34.122948, 33.845554>,  <34.417736, 34.264057, 33.700550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762791, 34.122948, 33.845554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473162, -0.309397, 0.824858,
		-0.178825, -0.883078, -0.433814,
		0.862635, -0.352770, 0.362511,
		35.021580, 34.017117, 33.954308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395218, 33.569469, 33.809341>,  <34.417736, 34.264057, 33.700550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395218, 33.569469, 33.809341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673019, 33.709339, 34.060863>,  <34.839699, 33.793262, 34.211777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673019, 33.709339, 34.060863>,  <34.395218, 33.569469, 33.809341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673019, 33.709339, 34.060863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452339, -0.467433, 0.759537,
		0.559515, -0.811932, -0.166461,
		0.694502, 0.349675, 0.628804,
		34.881371, 33.814243, 34.249504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531879, 32.986496, 34.271004>,  <34.395218, 33.569469, 33.809341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531879, 32.986496, 34.271004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637344, 33.316566, 34.470829>,  <34.700623, 33.514610, 34.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637344, 33.316566, 34.470829>,  <34.531879, 32.986496, 34.271004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637344, 33.316566, 34.470829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405863, -0.374917, 0.833494,
		0.875076, -0.422515, 0.236058,
		0.263662, 0.825178, 0.499564,
		34.716442, 33.564121, 34.620697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615009, 32.701855, 34.858418>,  <34.531879, 32.986496, 34.271004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615009, 32.701855, 34.858418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582092, 33.080940, 34.981743>,  <34.562344, 33.308392, 35.055740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582092, 33.080940, 34.981743>,  <34.615009, 32.701855, 34.858418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582092, 33.080940, 34.981743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648655, -0.285803, 0.705382,
		0.756620, -0.141942, 0.638262,
		-0.082294, 0.947718, 0.308316,
		34.557404, 33.365257, 35.074238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676853, 32.650471, 35.536087>,  <34.615009, 32.701855, 34.858418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676853, 32.650471, 35.536087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520313, 33.014942, 35.484547>,  <34.426392, 33.233624, 35.453621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520313, 33.014942, 35.484547>,  <34.676853, 32.650471, 35.536087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520313, 33.014942, 35.484547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427410, -0.055969, 0.902324,
		0.814966, 0.408194, 0.411349,
		-0.391346, 0.911178, -0.128853,
		34.402908, 33.288296, 35.445892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970650, 33.180298, 36.042809>,  <34.676853, 32.650471, 35.536087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970650, 33.180298, 36.042809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604568, 33.302971, 35.938232>,  <34.384918, 33.376575, 35.875488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604568, 33.302971, 35.938232>,  <34.970650, 33.180298, 36.042809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604568, 33.302971, 35.938232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281192, -0.021256, 0.959416,
		0.288676, 0.951576, 0.105689,
		-0.915203, 0.306679, -0.261440,
		34.330006, 33.394974, 35.859802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743267, 33.687302, 36.579845>,  <34.970650, 33.180298, 36.042809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743267, 33.687302, 36.579845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399441, 33.592476, 36.398758>,  <34.193146, 33.535580, 36.290104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399441, 33.592476, 36.398758>,  <34.743267, 33.687302, 36.579845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399441, 33.592476, 36.398758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444395, -0.090655, 0.891232,
		-0.252320, 0.967255, -0.027426,
		-0.859563, -0.237063, -0.452717,
		34.141571, 33.521358, 36.262943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315090, 34.100380, 36.939457>,  <34.743267, 33.687302, 36.579845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315090, 34.100380, 36.939457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109314, 33.789940, 36.793571>,  <33.985847, 33.603676, 36.706039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109314, 33.789940, 36.793571>,  <34.315090, 34.100380, 36.939457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109314, 33.789940, 36.793571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438179, -0.127680, 0.889773,
		-0.737120, 0.617549, -0.274386,
		-0.514444, -0.776100, -0.364713,
		33.954979, 33.557110, 36.684158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693489, 34.248375, 37.113781>,  <34.315090, 34.100380, 36.939457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693489, 34.248375, 37.113781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664570, 33.852879, 37.061390>,  <33.647217, 33.615582, 37.029953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664570, 33.852879, 37.061390>,  <33.693489, 34.248375, 37.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664570, 33.852879, 37.061390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708148, -0.041587, 0.704838,
		-0.702352, 0.143713, -0.697171,
		-0.072301, -0.988745, -0.130979,
		33.642879, 33.556255, 37.022095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974224, 34.106171, 37.195789>,  <33.693489, 34.248375, 37.113781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974224, 34.106171, 37.195789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170177, 33.759995, 37.237804>,  <33.287750, 33.552288, 37.263012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170177, 33.759995, 37.237804>,  <32.974224, 34.106171, 37.195789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170177, 33.759995, 37.237804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460166, -0.154364, 0.874311,
		-0.740446, -0.476647, -0.473865,
		0.489885, -0.865436, 0.105039,
		33.317142, 33.500362, 37.269318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487782, 33.692169, 37.282127>,  <32.974224, 34.106171, 37.195789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487782, 33.692169, 37.282127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804890, 33.492851, 37.422535>,  <32.995155, 33.373260, 37.506779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804890, 33.492851, 37.422535>,  <32.487782, 33.692169, 37.282127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804890, 33.492851, 37.422535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547892, -0.330233, 0.768610,
		-0.267074, -0.801654, -0.534810,
		0.792771, -0.498294, 0.351023,
		33.042721, 33.343361, 37.527840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169945, 33.056335, 37.609245>,  <32.487782, 33.692169, 37.282127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169945, 33.056335, 37.609245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547565, 33.069279, 37.740528>,  <32.774139, 33.077045, 37.819298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547565, 33.069279, 37.740528>,  <32.169945, 33.056335, 37.609245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547565, 33.069279, 37.740528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279217, -0.451197, 0.847620,
		0.175510, -0.891838, -0.416920,
		0.944052, 0.032354, 0.328206,
		32.830780, 33.078983, 37.838989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390064, 32.428478, 37.935848>,  <32.169945, 33.056335, 37.609245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390064, 32.428478, 37.935848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615364, 32.714931, 38.100723>,  <32.750546, 32.886803, 38.199650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615364, 32.714931, 38.100723>,  <32.390064, 32.428478, 37.935848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615364, 32.714931, 38.100723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309568, -0.279619, 0.908835,
		0.766103, -0.639503, 0.064196,
		0.563253, 0.716135, 0.412186,
		32.784340, 32.929771, 38.224380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704258, 32.062508, 38.604172>,  <32.390064, 32.428478, 37.935848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704258, 32.062508, 38.604172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727745, 32.461121, 38.627743>,  <32.741837, 32.700287, 38.641888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727745, 32.461121, 38.627743>,  <32.704258, 32.062508, 38.604172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727745, 32.461121, 38.627743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227312, -0.044136, 0.972821,
		0.972050, -0.070513, 0.223933,
		0.058713, 0.996534, 0.058931,
		32.745358, 32.760082, 38.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999168, 32.140133, 39.174946>,  <32.704258, 32.062508, 38.604172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999168, 32.140133, 39.174946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821545, 32.491161, 39.102638>,  <32.714970, 32.701778, 39.059254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821545, 32.491161, 39.102638>,  <32.999168, 32.140133, 39.174946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821545, 32.491161, 39.102638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442755, -0.039521, 0.895771,
		0.778959, 0.477815, 0.406099,
		-0.444062, 0.877571, -0.180770,
		32.688328, 32.754433, 39.048409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250626, 32.491745, 39.682674>,  <32.999168, 32.140133, 39.174946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250626, 32.491745, 39.682674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914879, 32.658527, 39.543186>,  <32.713428, 32.758598, 39.459492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914879, 32.658527, 39.543186>,  <33.250626, 32.491745, 39.682674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914879, 32.658527, 39.543186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364455, 0.044263, 0.930169,
		0.403274, 0.907848, 0.114808,
		-0.839370, 0.416955, -0.348720,
		32.663067, 32.783615, 39.438572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160519, 33.175819, 40.015656>,  <33.250626, 32.491745, 39.682674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160519, 33.175819, 40.015656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798912, 33.027786, 39.930065>,  <32.581947, 32.938965, 39.878712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798912, 33.027786, 39.930065>,  <33.160519, 33.175819, 40.015656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798912, 33.027786, 39.930065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292473, 0.170392, 0.940971,
		-0.311781, 0.913238, -0.262278,
		-0.904020, -0.370086, -0.213972,
		32.527706, 32.916759, 39.865875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692524, 33.580109, 40.549252>,  <33.160519, 33.175819, 40.015656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692524, 33.580109, 40.549252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457016, 33.295250, 40.396301>,  <32.315712, 33.124336, 40.304531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457016, 33.295250, 40.396301>,  <32.692524, 33.580109, 40.549252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457016, 33.295250, 40.396301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408676, -0.145873, 0.900947,
		-0.697380, 0.686713, -0.205150,
		-0.588766, -0.712142, -0.382372,
		32.280388, 33.081608, 40.281590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009350, 33.776440, 40.712410>,  <32.692524, 33.580109, 40.549252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009350, 33.776440, 40.712410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955414, 33.390968, 40.620205>,  <31.923052, 33.159683, 40.564880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955414, 33.390968, 40.620205>,  <32.009350, 33.776440, 40.712410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955414, 33.390968, 40.620205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697192, -0.073034, 0.713154,
		-0.704088, 0.256876, -0.662023,
		-0.134843, -0.963681, -0.230514,
		31.914961, 33.101864, 40.551052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255613, 33.653976, 40.733299>,  <32.009350, 33.776440, 40.712410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255613, 33.653976, 40.733299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431023, 33.295467, 40.759792>,  <31.536268, 33.080360, 40.775688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431023, 33.295467, 40.759792>,  <31.255613, 33.653976, 40.733299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431023, 33.295467, 40.759792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683698, -0.284862, 0.671871,
		-0.583314, -0.339915, -0.737701,
		0.438522, -0.896276, 0.066235,
		31.562580, 33.026585, 40.779663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803673, 33.144936, 40.737858>,  <31.255613, 33.653976, 40.733299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803673, 33.144936, 40.737858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118803, 32.982033, 40.922668>,  <31.307880, 32.884293, 41.033554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118803, 32.982033, 40.922668>,  <30.803673, 33.144936, 40.737858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118803, 32.982033, 40.922668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604190, -0.365465, 0.708089,
		-0.119518, -0.837005, -0.533983,
		0.787826, -0.407257, 0.462030,
		31.355150, 32.859856, 41.061279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540230, 32.511246, 41.023418>,  <30.803673, 33.144936, 40.737858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540230, 32.511246, 41.023418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879480, 32.571911, 41.226467>,  <31.083031, 32.608311, 41.348297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879480, 32.571911, 41.226467>,  <30.540230, 32.511246, 41.023418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879480, 32.571911, 41.226467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482305, -0.175470, 0.858250,
		0.219241, -0.972732, -0.075670,
		0.848125, 0.151667, 0.507623,
		31.133919, 32.617409, 41.378754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306749, 32.160313, 41.641541>,  <30.540230, 32.511246, 41.023418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306749, 32.160313, 41.641541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649166, 32.332352, 41.756229>,  <30.854616, 32.435574, 41.825043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649166, 32.332352, 41.756229>,  <30.306749, 32.160313, 41.641541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649166, 32.332352, 41.756229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339132, 0.048690, 0.939478,
		0.390106, -0.901469, 0.187540,
		0.856041, 0.430097, 0.286723,
		30.905979, 32.461380, 41.842247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598724, 31.869452, 42.326519>,  <30.306749, 32.160313, 41.641541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598724, 31.869452, 42.326519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749851, 32.235584, 42.270771>,  <30.840527, 32.455265, 42.237324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749851, 32.235584, 42.270771>,  <30.598724, 31.869452, 42.326519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749851, 32.235584, 42.270771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254826, 0.247510, 0.934774,
		0.890123, -0.317658, 0.326763,
		0.377816, 0.915331, -0.139367,
		30.863195, 32.510185, 42.228962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982605, 32.061611, 42.914585>,  <30.598724, 31.869452, 42.326519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982605, 32.061611, 42.914585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896255, 32.411934, 42.741901>,  <30.844446, 32.622128, 42.638290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896255, 32.411934, 42.741901>,  <30.982605, 32.061611, 42.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896255, 32.411934, 42.741901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315593, 0.355817, 0.879656,
		0.924013, 0.326137, 0.199586,
		-0.215872, 0.875802, -0.431706,
		30.831493, 32.674675, 42.612389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196520, 32.512455, 43.336155>,  <30.982605, 32.061611, 42.914585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196520, 32.512455, 43.336155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952913, 32.746380, 43.121830>,  <30.806749, 32.886734, 42.993233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952913, 32.746380, 43.121830>,  <31.196520, 32.512455, 43.336155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952913, 32.746380, 43.121830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341324, 0.416557, 0.842602,
		0.715958, 0.696046, -0.054081,
		-0.609018, 0.584809, -0.535814,
		30.770208, 32.921822, 42.961086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225229, 33.232277, 43.586823>,  <31.196520, 32.512455, 43.336155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225229, 33.232277, 43.586823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873411, 33.153522, 43.413555>,  <30.662321, 33.106270, 43.309593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873411, 33.153522, 43.413555>,  <31.225229, 33.232277, 43.586823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873411, 33.153522, 43.413555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475361, 0.323783, 0.818045,
		-0.020808, 0.925419, -0.378373,
		-0.879545, -0.196885, -0.433171,
		30.609549, 33.094456, 43.283604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583435, 33.888821, 43.671124>,  <31.225229, 33.232277, 43.586823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583435, 33.888821, 43.671124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851784, 34.168274, 43.770596>,  <32.012794, 34.335945, 43.830280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851784, 34.168274, 43.770596>,  <31.583435, 33.888821, 43.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851784, 34.168274, 43.770596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533812, -0.222183, -0.815892,
		-0.514757, 0.680107, -0.521996,
		0.670873, 0.698633, 0.248679,
		32.053047, 34.377865, 43.845200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631104, 34.352657, 43.196861>,  <31.583435, 33.888821, 43.671124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631104, 34.352657, 43.196861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974390, 34.416054, 43.392143>,  <32.180363, 34.454090, 43.509312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974390, 34.416054, 43.392143>,  <31.631104, 34.352657, 43.196861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974390, 34.416054, 43.392143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507715, -0.122380, -0.852789,
		-0.075411, 0.979747, -0.185496,
		0.858218, 0.158489, 0.488203,
		32.231857, 34.463600, 43.538605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066933, 34.801426, 42.819748>,  <31.631104, 34.352657, 43.196861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066933, 34.801426, 42.819748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332775, 34.616337, 43.054417>,  <32.492279, 34.505283, 43.195217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332775, 34.616337, 43.054417>,  <32.066933, 34.801426, 42.819748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332775, 34.616337, 43.054417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634391, -0.065396, -0.770241,
		0.394777, 0.884086, 0.250087,
		0.664605, -0.462727, 0.586673,
		32.532158, 34.477520, 43.230419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742393, 35.116741, 42.893574>,  <32.066933, 34.801426, 42.819748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742393, 35.116741, 42.893574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839558, 34.750469, 43.021656>,  <32.897858, 34.530708, 43.098503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839558, 34.750469, 43.021656>,  <32.742393, 35.116741, 42.893574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839558, 34.750469, 43.021656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750654, -0.031638, -0.659938,
		0.614420, 0.400668, 0.679671,
		0.242913, -0.915677, 0.320202,
		32.912430, 34.475765, 43.117718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425964, 35.178596, 42.806511>,  <32.742393, 35.116741, 42.893574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425964, 35.178596, 42.806511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348381, 34.786961, 42.831043>,  <33.301830, 34.551979, 42.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348381, 34.786961, 42.831043>,  <33.425964, 35.178596, 42.806511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348381, 34.786961, 42.831043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694228, -0.181155, -0.696584,
		0.693130, -0.092531, 0.714849,
		-0.193955, -0.979092, 0.061326,
		33.290195, 34.493233, 42.849442>
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
