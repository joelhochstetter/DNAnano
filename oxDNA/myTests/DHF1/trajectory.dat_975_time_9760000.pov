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
	<1.958766, 1.398342, 0.550639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.093689, 1.325674, 0.920118>,  <2.174643, 1.282073, 1.141806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.093689, 1.325674, 0.920118>,  <1.958766, 1.398342, 0.550639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.093689, 1.325674, 0.920118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898726, 0.354198, -0.258526,
		-0.280206, 0.917355, 0.282745,
		0.337308, -0.181670, 0.923699,
		2.194881, 1.271173, 1.197228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.156476, 2.087206, 0.971888>,  <1.958766, 1.398342, 0.550639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.156476, 2.087206, 0.971888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.365906, 1.750285, 1.023108>,  <2.491563, 1.548132, 1.053840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.365906, 1.750285, 1.023108>,  <2.156476, 2.087206, 0.971888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.365906, 1.750285, 1.023108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799277, 0.433564, -0.416147,
		0.295004, 0.320231, 0.900236,
		0.523574, -0.842303, 0.128050,
		2.522978, 1.497594, 1.061522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.791580, 2.270897, 1.301159>,  <2.156476, 2.087206, 0.971888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.791580, 2.270897, 1.301159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.837135, 1.937799, 1.084433>,  <2.864469, 1.737939, 0.954397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.837135, 1.937799, 1.084433>,  <2.791580, 2.270897, 1.301159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.837135, 1.937799, 1.084433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812648, 0.391811, -0.431378,
		0.571518, -0.391176, 0.721352,
		0.113889, -0.832746, -0.541815,
		2.871302, 1.687975, 0.921888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.373211, 1.979357, 1.476979>,  <2.791580, 2.270897, 1.301159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.373211, 1.979357, 1.476979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.286896, 1.907391, 1.093090>,  <3.235107, 1.864211, 0.862757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.286896, 1.907391, 1.093090>,  <3.373211, 1.979357, 1.476979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.286896, 1.907391, 1.093090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889936, 0.368219, -0.269126,
		0.401808, -0.912165, 0.080658,
		-0.215788, -0.179917, -0.959721,
		3.222159, 1.853416, 0.805174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.055385, 1.692920, 1.183003>,  <3.373211, 1.979357, 1.476979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.055385, 1.692920, 1.183003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816139, 1.802873, 0.881886>,  <3.672592, 1.868844, 0.701215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.816139, 1.802873, 0.881886>,  <4.055385, 1.692920, 1.183003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.816139, 1.802873, 0.881886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735686, 0.560872, -0.379721,
		0.317843, -0.780937, -0.537692,
		-0.598115, 0.274881, -0.752794,
		3.636705, 1.885337, 0.656047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.491535, 1.674145, 0.575327>,  <4.055385, 1.692920, 1.183003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.491535, 1.674145, 0.575327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.182175, 1.895617, 0.451851>,  <3.996559, 2.028501, 0.377765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.182175, 1.895617, 0.451851>,  <4.491535, 1.674145, 0.575327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.182175, 1.895617, 0.451851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629655, 0.614588, -0.475200,
		-0.073392, -0.561888, -0.823951,
		-0.773400, 0.553681, -0.308690,
		3.950155, 2.061722, 0.359244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.620198, 1.766410, -0.071064>,  <4.491535, 1.674145, 0.575327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.620198, 1.766410, -0.071064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.356262, 2.055490, 0.011219>,  <4.197901, 2.228939, 0.060589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.356262, 2.055490, 0.011219>,  <4.620198, 1.766410, -0.071064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.356262, 2.055490, 0.011219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654658, 0.687295, -0.314719,
		-0.368830, -0.072996, -0.926626,
		-0.659839, 0.722701, 0.205708,
		4.158310, 2.272301, 0.072931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.568054, 2.217319, -0.654135>,  <4.620198, 1.766410, -0.071064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.568054, 2.217319, -0.654135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.413864, 2.466929, -0.382252>,  <4.321350, 2.616695, -0.219122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.413864, 2.466929, -0.382252>,  <4.568054, 2.217319, -0.654135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.413864, 2.466929, -0.382252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612339, 0.724054, -0.317470,
		-0.690254, 0.293835, -0.661219,
		-0.385474, 0.624025, 0.679708,
		4.298222, 2.654137, -0.178339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.205247, 3.668998, -0.576507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.990036, 3.861582, -0.299747>,  <4.860909, 3.977132, -0.133692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.990036, 3.861582, -0.299747>,  <5.205247, 3.668998, -0.576507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.990036, 3.861582, -0.299747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450239, -0.858070, 0.246982,
		0.712609, -0.178637, 0.678437,
		-0.538027, 0.481461, 0.691898,
		4.828628, 4.006020, -0.092178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.228425, 3.371390, 0.149878>,  <5.205247, 3.668998, -0.576507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.228425, 3.371390, 0.149878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.882210, 3.557354, 0.075363>,  <4.674480, 3.668932, 0.030654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.882210, 3.557354, 0.075363>,  <5.228425, 3.371390, 0.149878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.882210, 3.557354, 0.075363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499372, -0.829563, 0.249906,
		-0.038353, 0.309329, 0.950181,
		-0.865539, 0.464909, -0.186286,
		4.622548, 3.696827, 0.019477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.648033, 3.483576, 0.684318>,  <5.228425, 3.371390, 0.149878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.648033, 3.483576, 0.684318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.439987, 3.390341, 0.355648>,  <4.315160, 3.334400, 0.158446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.439987, 3.390341, 0.355648>,  <4.648033, 3.483576, 0.684318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.439987, 3.390341, 0.355648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474039, -0.721482, 0.504728,
		-0.710471, 0.652022, 0.264760,
		-0.520114, -0.233088, -0.821676,
		4.283953, 3.320414, 0.109145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.987762, 3.319187, 0.844902>,  <4.648033, 3.483576, 0.684318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.987762, 3.319187, 0.844902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037643, 3.131315, 0.495308>,  <4.067572, 3.018592, 0.285552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037643, 3.131315, 0.495308>,  <3.987762, 3.319187, 0.844902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.037643, 3.131315, 0.495308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639440, -0.711576, 0.291163,
		-0.758661, 0.522552, -0.389068,
		0.124703, -0.469680, -0.873985,
		4.075055, 2.990411, 0.233112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.319233, 3.181353, 0.607038>,  <3.987762, 3.319187, 0.844902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.319233, 3.181353, 0.607038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.575813, 2.937777, 0.420391>,  <3.729762, 2.791631, 0.308403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.575813, 2.937777, 0.420391>,  <3.319233, 3.181353, 0.607038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.575813, 2.937777, 0.420391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657860, -0.749517, 0.073779,
		-0.394664, 0.259643, -0.881377,
		0.641451, -0.608941, -0.466616,
		3.768249, 2.755094, 0.280406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.037992, 2.894654, -0.046964>,  <3.319233, 3.181353, 0.607038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.037992, 2.894654, -0.046964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.309067, 2.639446, 0.099281>,  <3.471711, 2.486321, 0.187028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.309067, 2.639446, 0.099281>,  <3.037992, 2.894654, -0.046964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.309067, 2.639446, 0.099281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697553, -0.715117, 0.045028,
		0.232727, -0.285549, -0.929677,
		0.677685, -0.638020, 0.365613,
		3.512372, 2.448040, 0.208965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.923550, 2.244102, -0.388743>,  <3.037992, 2.894654, -0.046964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.923550, 2.244102, -0.388743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.136070, 2.152515, -0.062481>,  <3.263582, 2.097564, 0.133276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.136070, 2.152515, -0.062481>,  <2.923550, 2.244102, -0.388743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.136070, 2.152515, -0.062481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622097, -0.758992, 0.192160,
		0.575078, -0.609512, -0.545692,
		0.531300, -0.228966, 0.815656,
		3.295460, 2.083825, 0.182216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.872892, 1.480670, -0.377846>,  <2.923550, 2.244102, -0.388743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.872892, 1.480670, -0.377846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.987076, 1.609627, -0.016830>,  <3.055586, 1.687001, 0.199779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.987076, 1.609627, -0.016830>,  <2.872892, 1.480670, -0.377846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.987076, 1.609627, -0.016830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555317, -0.711888, 0.429928,
		0.781112, -0.623923, -0.024186,
		0.285460, 0.322391, 0.902539,
		3.072714, 1.706344, 0.253931>
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
