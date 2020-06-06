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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.196105, 14.664694, 14.568166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.321422, 14.889507, 14.874360>,  <4.396612, 15.024395, 15.058077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.321422, 14.889507, 14.874360>,  <4.196105, 14.664694, 14.568166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321422, 14.889507, 14.874360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812477, -0.575949, 0.090348,
		0.491659, 0.593634, -0.637079,
		0.313292, 0.562033, 0.765485,
		4.415409, 15.058117, 15.104006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.928991, 14.796609, 14.469908>,  <4.196105, 14.664694, 14.568166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.928991, 14.796609, 14.469908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860998, 14.825765, 14.863007>,  <4.820201, 14.843258, 15.098866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860998, 14.825765, 14.863007>,  <4.928991, 14.796609, 14.469908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.860998, 14.825765, 14.863007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800396, -0.571547, 0.180834,
		0.574867, 0.817326, 0.038815,
		-0.169985, 0.072888, 0.982747,
		4.810002, 14.847631, 15.157831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.517710, 14.315512, 14.307019>,  <4.928991, 14.796609, 14.469908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.517710, 14.315512, 14.307019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.587803, 14.403252, 13.923107>,  <5.629859, 14.455895, 13.692760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.587803, 14.403252, 13.923107>,  <5.517710, 14.315512, 14.307019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.587803, 14.403252, 13.923107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639483, -0.715863, -0.280359,
		-0.748569, 0.662892, 0.014829,
		0.175233, 0.219351, -0.959781,
		5.640373, 14.469057, 13.635173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.430502, 14.974385, 13.878626>,  <5.517710, 14.315512, 14.307019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.430502, 14.974385, 13.878626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.764062, 15.006941, 14.096977>,  <5.964199, 15.026474, 14.227988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.764062, 15.006941, 14.096977>,  <5.430502, 14.974385, 13.878626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.764062, 15.006941, 14.096977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524171, 0.192843, -0.829491,
		-0.172780, 0.977848, 0.118151,
		0.833901, 0.081388, 0.545879,
		6.014233, 15.031357, 14.260741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.862443, 15.572498, 13.815377>,  <5.430502, 14.974385, 13.878626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.862443, 15.572498, 13.815377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114254, 15.272573, 13.896840>,  <6.265340, 15.092617, 13.945718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114254, 15.272573, 13.896840>,  <5.862443, 15.572498, 13.815377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.114254, 15.272573, 13.896840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384937, 0.073295, -0.920028,
		0.674923, 0.657576, 0.334772,
		0.629526, -0.749814, 0.203657,
		6.303111, 15.047628, 13.957937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.474316, 15.793287, 13.582315>,  <5.862443, 15.572498, 13.815377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.474316, 15.793287, 13.582315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.499937, 15.394229, 13.592114>,  <6.515310, 15.154794, 13.597994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.499937, 15.394229, 13.592114>,  <6.474316, 15.793287, 13.582315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.499937, 15.394229, 13.592114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460464, 0.007767, -0.887644,
		0.885364, 0.068138, 0.459878,
		0.064054, -0.997646, 0.024499,
		6.519153, 15.094935, 13.599464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.129952, 15.605128, 13.370333>,  <6.474316, 15.793287, 13.582315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.129952, 15.605128, 13.370333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.933892, 15.263090, 13.302729>,  <6.816256, 15.057867, 13.262166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.933892, 15.263090, 13.302729>,  <7.129952, 15.605128, 13.370333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.933892, 15.263090, 13.302729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445195, -0.078896, -0.891951,
		0.749369, -0.512432, 0.419355,
		-0.490150, -0.855096, -0.169010,
		6.786847, 15.006561, 13.252026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.564144, 15.086162, 13.265640>,  <7.129952, 15.605128, 13.370333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.564144, 15.086162, 13.265640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.248389, 14.921353, 13.083605>,  <7.058936, 14.822469, 12.974383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.248389, 14.921353, 13.083605>,  <7.564144, 15.086162, 13.265640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.248389, 14.921353, 13.083605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531403, -0.087441, -0.842594,
		0.307373, -0.906969, 0.287974,
		-0.789388, -0.412021, -0.455089,
		7.011572, 14.797748, 12.947078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.861830, 14.567927, 12.839704>,  <7.564144, 15.086162, 13.265640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.861830, 14.567927, 12.839704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.495053, 14.623180, 12.689965>,  <7.274987, 14.656332, 12.600122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.495053, 14.623180, 12.689965>,  <7.861830, 14.567927, 12.839704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.495053, 14.623180, 12.689965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386009, 0.069473, -0.919875,
		-0.101058, -0.987974, -0.117023,
		-0.916943, 0.138133, -0.374346,
		7.219970, 14.664620, 12.577662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.711498, 14.057192, 12.329540>,  <7.861830, 14.567927, 12.839704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.711498, 14.057192, 12.329540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.463748, 14.362811, 12.257312>,  <7.315098, 14.546183, 12.213975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.463748, 14.362811, 12.257312>,  <7.711498, 14.057192, 12.329540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.463748, 14.362811, 12.257312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429429, 0.137160, -0.892624,
		-0.657241, -0.630411, -0.413058,
		-0.619375, 0.764048, -0.180570,
		7.277936, 14.592026, 12.203141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.416678, 13.913596, 11.629848>,  <7.711498, 14.057192, 12.329540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.416678, 13.913596, 11.629848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.369934, 14.305219, 11.696529>,  <7.341887, 14.540193, 11.736538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.369934, 14.305219, 11.696529>,  <7.416678, 13.913596, 11.629848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.369934, 14.305219, 11.696529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559064, 0.203583, -0.803743,
		-0.820848, -0.000729, -0.571146,
		-0.116862, 0.979058, 0.166703,
		7.334875, 14.598936, 11.746540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.276170, 14.232423, 10.949586>,  <7.416678, 13.913596, 11.629848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.276170, 14.232423, 10.949586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.371020, 14.549875, 11.173700>,  <7.427930, 14.740347, 11.308169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.371020, 14.549875, 11.173700>,  <7.276170, 14.232423, 10.949586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.371020, 14.549875, 11.173700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499785, 0.394901, -0.770888,
		-0.833059, 0.462820, -0.303004,
		0.237126, 0.793631, 0.560286,
		7.442158, 14.787965, 11.341786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.175075, 14.890607, 10.552576>,  <7.276170, 14.232423, 10.949586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.175075, 14.890607, 10.552576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.441910, 14.967530, 10.840468>,  <7.602011, 15.013684, 11.013204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.441910, 14.967530, 10.840468>,  <7.175075, 14.890607, 10.552576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.441910, 14.967530, 10.840468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496839, 0.605034, -0.622162,
		-0.555108, 0.772626, 0.308065,
		0.667088, 0.192308, 0.719730,
		7.642036, 15.025223, 11.056387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.182089, 15.559858, 10.647260>,  <7.175075, 14.890607, 10.552576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.182089, 15.559858, 10.647260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.543958, 15.453360, 10.780335>,  <7.761079, 15.389461, 10.860181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.543958, 15.453360, 10.780335>,  <7.182089, 15.559858, 10.647260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.543958, 15.453360, 10.780335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424582, 0.629270, -0.650960,
		-0.036036, 0.730159, 0.682326,
		0.904672, -0.266246, 0.332689,
		7.815360, 15.373486, 10.880142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.526628, 16.114796, 10.545533>,  <7.182089, 15.559858, 10.647260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.526628, 16.114796, 10.545533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.822433, 15.851752, 10.603044>,  <7.999917, 15.693927, 10.637549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.822433, 15.851752, 10.603044>,  <7.526628, 16.114796, 10.545533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.822433, 15.851752, 10.603044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527545, 0.433521, -0.730586,
		0.418109, 0.616127, 0.667512,
		0.739514, -0.657608, 0.143776,
		8.044288, 15.654469, 10.646176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.141797, 16.527002, 10.712512>,  <7.526628, 16.114796, 10.545533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.141797, 16.527002, 10.712512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.265684, 16.174313, 10.570166>,  <8.340016, 15.962699, 10.484758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.265684, 16.174313, 10.570166>,  <8.141797, 16.527002, 10.712512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.265684, 16.174313, 10.570166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635599, 0.470348, -0.612198,
		0.707169, -0.036578, 0.706097,
		0.309718, -0.881723, -0.355865,
		8.358600, 15.909796, 10.463407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.822608, 16.665462, 10.499104>,  <8.141797, 16.527002, 10.712512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.822608, 16.665462, 10.499104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.766194, 16.313597, 10.317422>,  <8.732346, 16.102478, 10.208413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.766194, 16.313597, 10.317422>,  <8.822608, 16.665462, 10.499104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.766194, 16.313597, 10.317422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600316, 0.288831, -0.745786,
		0.787229, -0.377848, 0.487340,
		-0.141035, -0.879663, -0.454205,
		8.723884, 16.049698, 10.181161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.500003, 16.399761, 10.403809>,  <8.822608, 16.665462, 10.499104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.500003, 16.399761, 10.403809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.276535, 16.211500, 10.130642>,  <9.142454, 16.098543, 9.966743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.276535, 16.211500, 10.130642>,  <9.500003, 16.399761, 10.403809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.276535, 16.211500, 10.130642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696303, 0.181197, -0.694499,
		0.450611, -0.863512, 0.226489,
		-0.558669, -0.470654, -0.682915,
		9.108934, 16.070305, 9.925767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.045169, 15.796185, 10.107832>,  <9.500003, 16.399761, 10.403809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.045169, 15.796185, 10.107832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.761843, 15.843851, 9.829526>,  <9.591847, 15.872451, 9.662542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.761843, 15.843851, 9.829526>,  <10.045169, 15.796185, 10.107832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.761843, 15.843851, 9.829526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699713, 0.248700, -0.669739,
		0.093226, -0.961222, -0.259540,
		-0.708315, 0.119166, -0.695765,
		9.549348, 15.879601, 9.620796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.317311, 15.431273, 9.407982>,  <10.045169, 15.796185, 10.107832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.317311, 15.431273, 9.407982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.027604, 15.689307, 9.310575>,  <9.853780, 15.844128, 9.252131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.027604, 15.689307, 9.310575>,  <10.317311, 15.431273, 9.407982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.027604, 15.689307, 9.310575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528548, 0.292605, -0.796881,
		-0.442803, -0.705865, -0.552883,
		-0.724267, 0.645086, -0.243517,
		9.810324, 15.882833, 9.237519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.245202, 15.408786, 8.660491>,  <10.317311, 15.431273, 9.407982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.245202, 15.408786, 8.660491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.074631, 15.747876, 8.786677>,  <9.972288, 15.951330, 8.862390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.074631, 15.747876, 8.786677>,  <10.245202, 15.408786, 8.660491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.074631, 15.747876, 8.786677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455249, 0.502518, -0.734999,
		-0.781606, -0.169808, -0.600215,
		-0.426428, 0.847727, 0.315466,
		9.946702, 16.002193, 8.881317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.960078, 15.770339, 8.025673>,  <10.245202, 15.408786, 8.660491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.960078, 15.770339, 8.025673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.978151, 16.079540, 8.278789>,  <9.988996, 16.265060, 8.430658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.978151, 16.079540, 8.278789>,  <9.960078, 15.770339, 8.025673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978151, 16.079540, 8.278789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409734, 0.563365, -0.717452,
		-0.911085, 0.291692, -0.291271,
		0.045183, 0.773004, 0.632790,
		9.991706, 16.311441, 8.468626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.835216, 16.368999, 7.597789>,  <9.960078, 15.770339, 8.025673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.835216, 16.368999, 7.597789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.040920, 16.508596, 7.911155>,  <10.164343, 16.592354, 8.099174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.040920, 16.508596, 7.911155>,  <9.835216, 16.368999, 7.597789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.040920, 16.508596, 7.911155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471249, 0.648219, -0.598111,
		-0.716560, 0.676769, 0.168892,
		0.514262, 0.348992, 0.783415,
		10.195199, 16.613295, 8.146179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.894581, 17.069542, 7.385666>,  <9.835216, 16.368999, 7.597789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.894581, 17.069542, 7.385666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.158368, 17.023569, 7.682825>,  <10.316640, 16.995985, 7.861119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.158368, 17.023569, 7.682825>,  <9.894581, 17.069542, 7.385666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.158368, 17.023569, 7.682825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403571, 0.887885, -0.220888,
		-0.634219, 0.445479, 0.631914,
		0.659468, -0.114931, 0.742895,
		10.356209, 16.989090, 7.905693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.883054, 17.621050, 7.812737>,  <9.894581, 17.069542, 7.385666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.883054, 17.621050, 7.812737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.249412, 17.461462, 7.830440>,  <10.469227, 17.365709, 7.841062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.249412, 17.461462, 7.830440>,  <9.883054, 17.621050, 7.812737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.249412, 17.461462, 7.830440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389200, 0.855611, -0.341253,
		0.098281, 0.329778, 0.938929,
		0.915895, -0.398970, 0.044259,
		10.524180, 17.341770, 7.843718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.412540, 18.085384, 8.155166>,  <9.883054, 17.621050, 7.812737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.412540, 18.085384, 8.155166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564386, 17.837393, 7.880496>,  <10.655494, 17.688599, 7.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.564386, 17.837393, 7.880496>,  <10.412540, 18.085384, 8.155166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.564386, 17.837393, 7.880496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466380, 0.769264, -0.436717,
		0.798988, -0.154466, 0.581169,
		0.379615, -0.619978, -0.686673,
		10.678270, 17.651400, 7.674494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.045475, 18.347616, 8.063809>,  <10.412540, 18.085384, 8.155166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.045475, 18.347616, 8.063809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.968361, 18.128197, 7.738374>,  <10.922092, 17.996544, 7.543113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.968361, 18.128197, 7.738374>,  <11.045475, 18.347616, 8.063809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.968361, 18.128197, 7.738374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616792, 0.577113, -0.535264,
		0.763152, -0.605006, 0.227083,
		-0.192785, -0.548551, -0.813588,
		10.910525, 17.963631, 7.494297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724431, 18.185774, 7.761921>,  <11.045475, 18.347616, 8.063809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724431, 18.185774, 7.761921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.410630, 18.173042, 7.514197>,  <11.222350, 18.165403, 7.365562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.410630, 18.173042, 7.514197>,  <11.724431, 18.185774, 7.761921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.410630, 18.173042, 7.514197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527431, 0.491003, -0.693349,
		0.326151, -0.870576, -0.368405,
		-0.784501, -0.031828, -0.619310,
		11.175280, 18.163494, 7.328404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.948997, 18.012175, 7.098130>,  <11.724431, 18.185774, 7.761921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.948997, 18.012175, 7.098130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597137, 18.194414, 7.043510>,  <11.386022, 18.303759, 7.010739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597137, 18.194414, 7.043510>,  <11.948997, 18.012175, 7.098130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.597137, 18.194414, 7.043510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355447, 0.438956, -0.825212,
		-0.316027, -0.774433, -0.548070,
		-0.879650, 0.455599, -0.136548,
		11.333242, 18.331095, 7.002546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718513, 17.791187, 7.353720>,  <11.948997, 18.012175, 7.098130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718513, 17.791187, 7.353720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054389, 18.007988, 7.340100>,  <13.255915, 18.138067, 7.331928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.054389, 18.007988, 7.340100>,  <12.718513, 17.791187, 7.353720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.054389, 18.007988, 7.340100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358732, 0.600649, 0.714516,
		0.407718, -0.587757, 0.698790,
		0.839689, 0.541999, -0.034049,
		13.306295, 18.170588, 7.329885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.060290, 17.831139, 8.098783>,  <12.718513, 17.791187, 7.353720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.060290, 17.831139, 8.098783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146228, 18.134346, 7.852448>,  <13.197790, 18.316271, 7.704648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.146228, 18.134346, 7.852448>,  <13.060290, 17.831139, 8.098783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.146228, 18.134346, 7.852448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026847, 0.634906, 0.772123,
		0.976279, -0.149353, 0.156756,
		0.214844, 0.758016, -0.615835,
		13.210681, 18.361752, 7.667697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.545139, 18.321325, 8.542722>,  <13.060290, 17.831139, 8.098783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.545139, 18.321325, 8.542722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.335425, 18.535069, 8.277515>,  <13.209597, 18.663315, 8.118392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.335425, 18.535069, 8.277515>,  <13.545139, 18.321325, 8.542722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.335425, 18.535069, 8.277515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083688, 0.742502, 0.664595,
		0.847420, 0.403924, -0.344564,
		-0.524285, 0.534356, -0.663015,
		13.178140, 18.695375, 8.078611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.825158, 17.638920, 8.392040>,  <13.545139, 18.321325, 8.542722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.825158, 17.638920, 8.392040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091208, 17.725023, 8.678053>,  <14.250838, 17.776686, 8.849661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.091208, 17.725023, 8.678053>,  <13.825158, 17.638920, 8.392040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091208, 17.725023, 8.678053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564780, -0.481396, 0.670284,
		0.488499, -0.849659, -0.198615,
		0.665126, 0.215259, 0.715032,
		14.290747, 17.789600, 8.892563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.084479, 17.030212, 8.750015>,  <13.825158, 17.638920, 8.392040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.084479, 17.030212, 8.750015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.084745, 17.336077, 9.007789>,  <14.084905, 17.519596, 9.162453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.084745, 17.336077, 9.007789>,  <14.084479, 17.030212, 8.750015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.084745, 17.336077, 9.007789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450133, -0.575225, 0.683006,
		0.892961, -0.290535, 0.343817,
		0.000665, 0.764661, 0.644433,
		14.084945, 17.565475, 9.201118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232460, 16.803455, 9.414250>,  <14.084479, 17.030212, 8.750015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232460, 16.803455, 9.414250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018489, 17.140839, 9.433958>,  <13.890106, 17.343269, 9.445783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.018489, 17.140839, 9.433958>,  <14.232460, 16.803455, 9.414250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018489, 17.140839, 9.433958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459590, -0.339415, 0.820716,
		0.708963, 0.416381, 0.569208,
		-0.534928, 0.843460, 0.049268,
		13.858010, 17.393877, 9.448738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230669, 17.077639, 10.143307>,  <14.232460, 16.803455, 9.414250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230669, 17.077639, 10.143307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907322, 17.187580, 9.935078>,  <13.713314, 17.253546, 9.810140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907322, 17.187580, 9.935078>,  <14.230669, 17.077639, 10.143307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907322, 17.187580, 9.935078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568672, -0.136018, 0.811241,
		0.152165, 0.951816, 0.266255,
		-0.808368, 0.274854, -0.520574,
		13.664812, 17.270037, 9.778906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.876511, 17.442720, 10.585440>,  <14.230669, 17.077639, 10.143307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.876511, 17.442720, 10.585440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615779, 17.322161, 10.307079>,  <13.459340, 17.249825, 10.140063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615779, 17.322161, 10.307079>,  <13.876511, 17.442720, 10.585440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615779, 17.322161, 10.307079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714216, -0.064553, 0.696942,
		-0.254981, 0.951310, -0.173187,
		-0.651828, -0.301400, -0.695901,
		13.420231, 17.231741, 10.098309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251865, 17.802359, 10.770576>,  <13.876511, 17.442720, 10.585440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251865, 17.802359, 10.770576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147651, 17.484461, 10.551303>,  <13.085122, 17.293722, 10.419740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147651, 17.484461, 10.551303>,  <13.251865, 17.802359, 10.770576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.147651, 17.484461, 10.551303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696755, -0.238264, 0.676581,
		-0.668321, 0.558223, -0.491665,
		-0.260537, -0.794744, -0.548182,
		13.069489, 17.246038, 10.386848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.555996, 17.764292, 10.824045>,  <13.251865, 17.802359, 10.770576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.555996, 17.764292, 10.824045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632448, 17.388287, 10.711020>,  <12.678320, 17.162683, 10.643206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632448, 17.388287, 10.711020>,  <12.555996, 17.764292, 10.824045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632448, 17.388287, 10.711020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779449, -0.320318, 0.538383,
		-0.596597, 0.117340, -0.793916,
		0.191132, -0.940015, -0.282562,
		12.689788, 17.106281, 10.626252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928417, 17.508547, 10.817239>,  <12.555996, 17.764292, 10.824045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928417, 17.508547, 10.817239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144657, 17.174629, 10.775540>,  <12.274402, 16.974277, 10.750521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144657, 17.174629, 10.775540>,  <11.928417, 17.508547, 10.817239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.144657, 17.174629, 10.775540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727474, -0.526103, 0.440452,
		-0.422532, -0.162271, -0.891703,
		0.540600, -0.834795, -0.104247,
		12.306837, 16.924191, 10.744267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.504983, 17.060133, 10.617383>,  <11.928417, 17.508547, 10.817239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.504983, 17.060133, 10.617383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.794714, 16.846424, 10.791695>,  <11.968553, 16.718199, 10.896281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.794714, 16.846424, 10.791695>,  <11.504983, 17.060133, 10.617383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.794714, 16.846424, 10.791695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689366, -0.571407, 0.445274,
		0.011110, -0.622936, -0.782194,
		0.724328, -0.534271, 0.435778,
		12.012012, 16.686142, 10.922428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.448450, 16.342236, 10.480915>,  <11.504983, 17.060133, 10.617383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.448450, 16.342236, 10.480915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663336, 16.357306, 10.817957>,  <11.792267, 16.366346, 11.020182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.663336, 16.357306, 10.817957>,  <11.448450, 16.342236, 10.480915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.663336, 16.357306, 10.817957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654012, -0.612228, 0.444348,
		0.532606, -0.789783, -0.304258,
		0.537214, 0.037674, 0.842604,
		11.824500, 16.368608, 11.070738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.457211, 15.662281, 10.817078>,  <11.448450, 16.342236, 10.480915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.457211, 15.662281, 10.817078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558666, 15.901884, 11.120882>,  <11.619539, 16.045647, 11.303164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558666, 15.901884, 11.120882>,  <11.457211, 15.662281, 10.817078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558666, 15.901884, 11.120882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615337, -0.505915, 0.604493,
		0.746344, -0.620676, 0.240274,
		0.253636, 0.599009, 0.759511,
		11.634757, 16.081587, 11.348736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.602900, 15.231886, 11.415851>,  <11.457211, 15.662281, 10.817078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.602900, 15.231886, 11.415851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527026, 15.593053, 11.570128>,  <11.481503, 15.809753, 11.662695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.527026, 15.593053, 11.570128>,  <11.602900, 15.231886, 11.415851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.527026, 15.593053, 11.570128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645866, -0.410616, 0.643624,
		0.739512, -0.127023, 0.661050,
		-0.189683, 0.902917, 0.385695,
		11.470121, 15.863928, 11.685837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704605, 15.220271, 12.182178>,  <11.602900, 15.231886, 11.415851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704605, 15.220271, 12.182178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469183, 15.535196, 12.108703>,  <11.327929, 15.724152, 12.064618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469183, 15.535196, 12.108703>,  <11.704605, 15.220271, 12.182178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.469183, 15.535196, 12.108703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574623, -0.247561, 0.780078,
		0.568693, 0.564669, 0.598112,
		-0.588555, 0.787314, -0.183686,
		11.292617, 15.771390, 12.053596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574219, 15.504252, 12.825324>,  <11.704605, 15.220271, 12.182178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574219, 15.504252, 12.825324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.279871, 15.639246, 12.590513>,  <11.103263, 15.720243, 12.449627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.279871, 15.639246, 12.590513>,  <11.574219, 15.504252, 12.825324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.279871, 15.639246, 12.590513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662125, -0.177179, 0.728147,
		0.141729, 0.924507, 0.353837,
		-0.735869, 0.337484, -0.587028,
		11.059111, 15.740491, 12.414405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108261, 15.933625, 13.341939>,  <11.574219, 15.504252, 12.825324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108261, 15.933625, 13.341939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892736, 15.836706, 13.019207>,  <10.763422, 15.778555, 12.825568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892736, 15.836706, 13.019207>,  <11.108261, 15.933625, 13.341939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892736, 15.836706, 13.019207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794847, -0.171093, 0.582191,
		-0.279106, 0.954997, -0.100403,
		-0.538812, -0.242298, -0.806829,
		10.731092, 15.764017, 12.777158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.398963, 16.203249, 13.406741>,  <11.108261, 15.933625, 13.341939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.398963, 16.203249, 13.406741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.345141, 15.910573, 13.139452>,  <10.312848, 15.734967, 12.979078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.345141, 15.910573, 13.139452>,  <10.398963, 16.203249, 13.406741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.345141, 15.910573, 13.139452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829060, -0.286223, 0.480350,
		-0.542729, 0.618630, -0.568104,
		-0.134555, -0.731692, -0.668223,
		10.304775, 15.691066, 12.938985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.603082, 16.265369, 13.318005>,  <10.398963, 16.203249, 13.406741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.603082, 16.265369, 13.318005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.708171, 15.899857, 13.194080>,  <9.771224, 15.680550, 13.119725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.708171, 15.899857, 13.194080>,  <9.603082, 16.265369, 13.318005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.708171, 15.899857, 13.194080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631520, -0.405611, 0.660804,
		-0.729492, 0.022044, -0.683634,
		0.262722, -0.913780, -0.309812,
		9.786987, 15.625723, 13.101137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.024124, 15.817726, 13.130458>,  <9.603082, 16.265369, 13.318005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.024124, 15.817726, 13.130458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.319769, 15.561481, 13.213722>,  <9.497156, 15.407735, 13.263680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.319769, 15.561481, 13.213722>,  <9.024124, 15.817726, 13.130458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.319769, 15.561481, 13.213722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648854, -0.594159, 0.475356,
		-0.180839, -0.486407, -0.854813,
		0.739112, -0.640612, 0.208160,
		9.541503, 15.369298, 13.276170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.745639, 15.203613, 12.949654>,  <9.024124, 15.817726, 13.130458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.745639, 15.203613, 12.949654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.048486, 15.123461, 13.198369>,  <9.230194, 15.075369, 13.347598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.048486, 15.123461, 13.198369>,  <8.745639, 15.203613, 12.949654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.048486, 15.123461, 13.198369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610172, -0.556928, 0.563491,
		0.233379, -0.806027, -0.543926,
		0.757116, -0.200381, 0.621790,
		9.275620, 15.063346, 13.384906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.834598, 14.478703, 12.923488>,  <8.745639, 15.203613, 12.949654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.834598, 14.478703, 12.923488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.976282, 14.619905, 13.269879>,  <9.061293, 14.704627, 13.477715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.976282, 14.619905, 13.269879>,  <8.834598, 14.478703, 12.923488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.976282, 14.619905, 13.269879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559552, -0.661958, 0.498712,
		0.749290, -0.661210, -0.036947,
		0.354211, 0.353006, 0.865980,
		9.082545, 14.725807, 13.529674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881557, 13.836957, 13.316477>,  <8.834598, 14.478703, 12.923488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881557, 13.836957, 13.316477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.955769, 14.122169, 13.586933>,  <9.000296, 14.293297, 13.749207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.955769, 14.122169, 13.586933>,  <8.881557, 13.836957, 13.316477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.955769, 14.122169, 13.586933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310683, -0.610225, 0.728767,
		0.932231, -0.345272, 0.108313,
		0.185528, 0.713031, 0.676141,
		9.011427, 14.336079, 13.789776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.401163, 13.599761, 13.853953>,  <8.881557, 13.836957, 13.316477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.401163, 13.599761, 13.853953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.206580, 13.906423, 14.021572>,  <9.089830, 14.090420, 14.122144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.206580, 13.906423, 14.021572>,  <9.401163, 13.599761, 13.853953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.206580, 13.906423, 14.021572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252932, -0.582656, 0.772358,
		0.836292, 0.269728, 0.477349,
		-0.486457, 0.766654, 0.419048,
		9.060643, 14.136419, 14.147286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.625820, 13.523073, 14.498682>,  <9.401163, 13.599761, 13.853953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.625820, 13.523073, 14.498682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.302894, 13.755427, 14.540275>,  <9.109138, 13.894840, 14.565230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.302894, 13.755427, 14.540275>,  <9.625820, 13.523073, 14.498682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.302894, 13.755427, 14.540275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252499, -0.499287, 0.828828,
		0.533370, 0.642872, 0.549756,
		-0.807317, 0.580885, 0.103981,
		9.060699, 13.929693, 14.571468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.555137, 13.791852, 15.190388>,  <9.625820, 13.523073, 14.498682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.555137, 13.791852, 15.190388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.183754, 13.826823, 15.045986>,  <8.960924, 13.847806, 14.959345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.183754, 13.826823, 15.045986>,  <9.555137, 13.791852, 15.190388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.183754, 13.826823, 15.045986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366719, -0.370209, 0.853500,
		-0.059027, 0.924825, 0.375784,
		-0.928457, 0.087427, -0.361003,
		8.905217, 13.853051, 14.937685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.986259, 14.323513, 15.521111>,  <9.555137, 13.791852, 15.190388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.986259, 14.323513, 15.521111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.760745, 14.047030, 15.340278>,  <8.625436, 13.881141, 15.231778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.760745, 14.047030, 15.340278>,  <8.986259, 14.323513, 15.521111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.760745, 14.047030, 15.340278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519429, -0.128828, 0.844747,
		-0.642135, 0.711082, -0.286401,
		-0.563787, -0.691206, -0.452082,
		8.591609, 13.839668, 15.204653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.496137, 13.915925, 15.904456>,  <8.986259, 14.323513, 15.521111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.496137, 13.915925, 15.904456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.836564, 13.712608, 15.851814>,  <10.040821, 13.590618, 15.820230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.836564, 13.712608, 15.851814>,  <9.496137, 13.915925, 15.904456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.836564, 13.712608, 15.851814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181990, 0.050463, 0.982005,
		-0.492505, -0.859705, 0.135452,
		0.851069, -0.508293, -0.131604,
		10.091885, 13.560121, 15.812333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.575373, 13.276053, 16.300129>,  <9.496137, 13.915925, 15.904456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.575373, 13.276053, 16.300129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936951, 13.431283, 16.228258>,  <10.153897, 13.524421, 16.185137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936951, 13.431283, 16.228258>,  <9.575373, 13.276053, 16.300129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936951, 13.431283, 16.228258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133310, 0.143504, 0.980630,
		0.406341, -0.910388, 0.077985,
		0.903944, 0.388074, -0.179675,
		10.208134, 13.547705, 16.174356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.279197, 12.987783, 16.675035>,  <9.575373, 13.276053, 16.300129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.279197, 12.987783, 16.675035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.275548, 13.379004, 16.591774>,  <10.273358, 13.613737, 16.541817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.275548, 13.379004, 16.591774>,  <10.279197, 12.987783, 16.675035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.275548, 13.379004, 16.591774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286046, 0.202018, 0.936678,
		0.958173, -0.050997, -0.281611,
		-0.009123, 0.978053, -0.208156,
		10.272811, 13.672421, 16.529327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.921514, 13.320830, 16.889090>,  <10.279197, 12.987783, 16.675035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.921514, 13.320830, 16.889090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.669787, 13.629319, 16.850767>,  <10.518752, 13.814412, 16.827774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.669787, 13.629319, 16.850767>,  <10.921514, 13.320830, 16.889090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.669787, 13.629319, 16.850767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419687, 0.441017, 0.793326,
		0.654084, 0.459043, -0.601211,
		-0.629315, 0.771222, -0.095808,
		10.480993, 13.860686, 16.822025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.275894, 13.915093, 16.633213>,  <10.921514, 13.320830, 16.889090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.275894, 13.915093, 16.633213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.970637, 13.980961, 16.883173>,  <10.787483, 14.020481, 17.033148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.970637, 13.980961, 16.883173>,  <11.275894, 13.915093, 16.633213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.970637, 13.980961, 16.883173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629901, 0.405550, 0.662385,
		-0.144354, 0.899118, -0.413217,
		-0.763143, 0.164668, 0.624898,
		10.741694, 14.030361, 17.070642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.561886, 14.390902, 16.928108>,  <11.275894, 13.915093, 16.633213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.561886, 14.390902, 16.928108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292139, 14.248146, 17.186676>,  <11.130291, 14.162493, 17.341816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292139, 14.248146, 17.186676>,  <11.561886, 14.390902, 16.928108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.292139, 14.248146, 17.186676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583664, 0.278588, 0.762709,
		-0.452287, 0.891638, 0.020433,
		-0.674368, -0.356890, 0.646419,
		11.089828, 14.141079, 17.380602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.149364, 14.971055, 17.421469>,  <11.561886, 14.390902, 16.928108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.149364, 14.971055, 17.421469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215464, 14.609812, 17.580008>,  <11.255124, 14.393066, 17.675131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215464, 14.609812, 17.580008>,  <11.149364, 14.971055, 17.421469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.215464, 14.609812, 17.580008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619673, 0.407715, 0.670651,
		-0.767266, 0.134779, 0.627007,
		0.165251, -0.903107, 0.396345,
		11.265038, 14.338880, 17.698912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.036720, 15.040350, 18.066170>,  <11.149364, 14.971055, 17.421469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.036720, 15.040350, 18.066170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289071, 14.732799, 18.024565>,  <11.440482, 14.548267, 17.999601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289071, 14.732799, 18.024565>,  <11.036720, 15.040350, 18.066170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289071, 14.732799, 18.024565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635003, 0.434634, 0.638643,
		-0.445830, -0.468955, 0.762441,
		0.630878, -0.768879, -0.104014,
		11.478334, 14.502135, 17.993361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204045, 14.843809, 18.698494>,  <11.036720, 15.040350, 18.066170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204045, 14.843809, 18.698494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486910, 14.689266, 18.461630>,  <11.656629, 14.596540, 18.319511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.486910, 14.689266, 18.461630>,  <11.204045, 14.843809, 18.698494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.486910, 14.689266, 18.461630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706649, 0.414509, 0.573437,
		0.023902, -0.823960, 0.566144,
		0.707160, -0.386359, -0.592158,
		11.699058, 14.573359, 18.283983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.759607, 14.464232, 19.101429>,  <11.204045, 14.843809, 18.698494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.759607, 14.464232, 19.101429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942768, 14.543598, 18.754797>,  <12.052665, 14.591218, 18.546818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942768, 14.543598, 18.754797>,  <11.759607, 14.464232, 19.101429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942768, 14.543598, 18.754797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827018, 0.262534, 0.497109,
		0.326141, -0.944302, -0.043879,
		0.457901, 0.198416, -0.866578,
		12.080138, 14.603123, 18.494823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503628, 14.218762, 19.182365>,  <11.759607, 14.464232, 19.101429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503628, 14.218762, 19.182365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499536, 14.469905, 18.871061>,  <12.497080, 14.620590, 18.684278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499536, 14.469905, 18.871061>,  <12.503628, 14.218762, 19.182365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.499536, 14.469905, 18.871061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832727, 0.436232, 0.340980,
		0.553589, -0.644591, -0.527296,
		-0.010231, 0.627857, -0.778262,
		12.496467, 14.658262, 18.637583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.198608, 14.285101, 19.005939>,  <12.503628, 14.218762, 19.182365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.198608, 14.285101, 19.005939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.042917, 14.605626, 18.824213>,  <12.949503, 14.797941, 18.715178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.042917, 14.605626, 18.824213>,  <13.198608, 14.285101, 19.005939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.042917, 14.605626, 18.824213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790535, 0.543746, 0.281770,
		0.472817, -0.249479, -0.845106,
		-0.389228, 0.801312, -0.454314,
		12.926149, 14.846020, 18.687920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752932, 14.764905, 18.757010>,  <13.198608, 14.285101, 19.005939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752932, 14.764905, 18.757010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431038, 15.001487, 18.777349>,  <13.237902, 15.143435, 18.789553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431038, 15.001487, 18.777349>,  <13.752932, 14.764905, 18.757010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431038, 15.001487, 18.777349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572220, 0.750049, 0.331648,
		0.158014, 0.295986, -0.942032,
		-0.804734, 0.591454, 0.050851,
		13.189618, 15.178923, 18.792604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.951138, 15.397119, 18.353924>,  <13.752932, 14.764905, 18.757010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.951138, 15.397119, 18.353924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645301, 15.496790, 18.591682>,  <13.461799, 15.556593, 18.734339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.645301, 15.496790, 18.591682>,  <13.951138, 15.397119, 18.353924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645301, 15.496790, 18.591682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542504, 0.746740, 0.384797,
		-0.347977, 0.616676, -0.706132,
		-0.764592, 0.249179, 0.594397,
		13.415923, 15.571544, 18.770002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.884336, 16.137650, 18.443270>,  <13.951138, 15.397119, 18.353924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.884336, 16.137650, 18.443270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.712867, 15.998490, 18.776787>,  <13.609985, 15.914995, 18.976896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.712867, 15.998490, 18.776787>,  <13.884336, 16.137650, 18.443270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.712867, 15.998490, 18.776787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432030, 0.731594, 0.527371,
		-0.793468, 0.586292, -0.163311,
		-0.428671, -0.347897, 0.833792,
		13.584266, 15.894121, 19.026924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.576237, 16.743986, 18.761499>,  <13.884336, 16.137650, 18.443270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.576237, 16.743986, 18.761499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.582794, 16.489029, 19.069645>,  <13.586729, 16.336054, 19.254532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.582794, 16.489029, 19.069645>,  <13.576237, 16.743986, 18.761499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.582794, 16.489029, 19.069645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256394, 0.747386, 0.612924,
		-0.966433, 0.187469, 0.175677,
		0.016394, -0.637393, 0.770364,
		13.587712, 16.297812, 19.300755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355736, 17.064564, 19.354084>,  <13.576237, 16.743986, 18.761499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355736, 17.064564, 19.354084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497836, 16.743919, 19.546425>,  <13.583097, 16.551533, 19.661829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497836, 16.743919, 19.546425>,  <13.355736, 17.064564, 19.354084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497836, 16.743919, 19.546425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321786, 0.587835, 0.742229,
		-0.877640, -0.108946, 0.466775,
		0.355250, -0.801611, 0.480850,
		13.604411, 16.503435, 19.690680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.425520, 17.426765, 19.940935>,  <13.355736, 17.064564, 19.354084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.425520, 17.426765, 19.940935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.642875, 17.094650, 19.990499>,  <13.773288, 16.895382, 20.020239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.642875, 17.094650, 19.990499>,  <13.425520, 17.426765, 19.940935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642875, 17.094650, 19.990499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514339, 0.445937, 0.732528,
		-0.663465, -0.334313, 0.669365,
		0.543388, -0.830287, 0.123913,
		13.805891, 16.845564, 20.027674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347726, 17.141893, 20.616024>,  <13.425520, 17.426765, 19.940935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347726, 17.141893, 20.616024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.695827, 16.994001, 20.485821>,  <13.904689, 16.905266, 20.407698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.695827, 16.994001, 20.485821>,  <13.347726, 17.141893, 20.616024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.695827, 16.994001, 20.485821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475831, 0.459984, 0.749666,
		-0.127444, -0.807288, 0.576232,
		0.870255, -0.369729, -0.325510,
		13.956903, 16.883083, 20.388168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588486, 16.886284, 21.171862>,  <13.347726, 17.141893, 20.616024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588486, 16.886284, 21.171862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.893973, 16.941551, 20.919626>,  <14.077266, 16.974712, 20.768284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.893973, 16.941551, 20.919626>,  <13.588486, 16.886284, 21.171862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.893973, 16.941551, 20.919626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548953, 0.374995, 0.747014,
		0.339678, -0.916673, 0.210545,
		0.763721, 0.138165, -0.630588,
		14.123089, 16.983002, 20.730450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121441, 16.615932, 21.436560>,  <13.588486, 16.886284, 21.171862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121441, 16.615932, 21.436560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315269, 16.869711, 21.195673>,  <14.431565, 17.021978, 21.051140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315269, 16.869711, 21.195673>,  <14.121441, 16.615932, 21.436560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315269, 16.869711, 21.195673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434737, 0.422739, 0.795170,
		0.759076, -0.647122, -0.070972,
		0.484570, 0.634448, -0.602219,
		14.460639, 17.060045, 21.015007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928049, 16.567574, 21.631931>,  <14.121441, 16.615932, 21.436560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928049, 16.567574, 21.631931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.809585, 16.918528, 21.480944>,  <14.738506, 17.129101, 21.390352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.809585, 16.918528, 21.480944>,  <14.928049, 16.567574, 21.631931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.809585, 16.918528, 21.480944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437743, 0.475932, 0.762804,
		0.848923, 0.060679, -0.525022,
		-0.296160, 0.877387, -0.377468,
		14.720737, 17.181744, 21.367702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.471556, 17.098183, 21.652779>,  <14.928049, 16.567574, 21.631931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.471556, 17.098183, 21.652779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140585, 17.313393, 21.588413>,  <14.942002, 17.442518, 21.549793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.140585, 17.313393, 21.588413>,  <15.471556, 17.098183, 21.652779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.140585, 17.313393, 21.588413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286670, 0.651065, 0.702805,
		0.482892, 0.535391, -0.692945,
		-0.827427, 0.538025, -0.160913,
		14.892357, 17.474800, 21.540140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768131, 17.741344, 21.621101>,  <15.471556, 17.098183, 21.652779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768131, 17.741344, 21.621101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374506, 17.775518, 21.683483>,  <15.138331, 17.796022, 21.720913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374506, 17.775518, 21.683483>,  <15.768131, 17.741344, 21.621101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374506, 17.775518, 21.683483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172758, 0.667177, 0.724589,
		-0.042146, 0.739983, -0.671303,
		-0.984062, 0.085435, 0.155957,
		15.079288, 17.801149, 21.730270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634947, 18.428370, 21.680990>,  <15.768131, 17.741344, 21.621101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634947, 18.428370, 21.680990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324238, 18.254635, 21.863409>,  <15.137813, 18.150394, 21.972860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324238, 18.254635, 21.863409>,  <15.634947, 18.428370, 21.680990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.324238, 18.254635, 21.863409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131839, 0.595942, 0.792131,
		-0.615828, 0.675430, -0.405649,
		-0.776772, -0.434336, 0.456045,
		15.091207, 18.124334, 22.000223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279673, 18.974020, 21.788191>,  <15.634947, 18.428370, 21.680990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279673, 18.974020, 21.788191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.131293, 18.707575, 22.047016>,  <15.042266, 18.547707, 22.202311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.131293, 18.707575, 22.047016>,  <15.279673, 18.974020, 21.788191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.131293, 18.707575, 22.047016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177690, 0.632988, 0.753494,
		-0.911495, 0.394484, -0.116444,
		-0.370949, -0.666115, 0.647061,
		15.020009, 18.507740, 22.241135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760297, 19.370588, 21.958738>,  <15.279673, 18.974020, 21.788191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760297, 19.370588, 21.958738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877211, 19.116465, 22.244661>,  <14.947359, 18.963989, 22.416216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877211, 19.116465, 22.244661>,  <14.760297, 19.370588, 21.958738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877211, 19.116465, 22.244661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117012, 0.718074, 0.686060,
		-0.949146, -0.284166, 0.135544,
		0.292285, -0.635311, 0.714808,
		14.964896, 18.925871, 22.459105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.353281, 19.698668, 22.482878>,  <14.760297, 19.370588, 21.958738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.353281, 19.698668, 22.482878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612500, 19.441828, 22.646704>,  <14.768032, 19.287724, 22.744999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612500, 19.441828, 22.646704>,  <14.353281, 19.698668, 22.482878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612500, 19.441828, 22.646704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049191, 0.571935, 0.818823,
		-0.760008, -0.510490, 0.402227,
		0.648049, -0.642098, 0.409564,
		14.806915, 19.249199, 22.769573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123018, 19.447739, 23.208586>,  <14.353281, 19.698668, 22.482878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123018, 19.447739, 23.208586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514878, 19.376446, 23.171663>,  <14.749994, 19.333670, 23.149509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.514878, 19.376446, 23.171663>,  <14.123018, 19.447739, 23.208586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514878, 19.376446, 23.171663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179533, 0.572466, 0.800031,
		-0.089748, -0.800323, 0.592815,
		0.979650, -0.178231, -0.092307,
		14.808773, 19.322977, 23.143970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371217, 19.545139, 23.873285>,  <14.123018, 19.447739, 23.208586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371217, 19.545139, 23.873285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.696192, 19.561901, 23.640669>,  <14.891177, 19.571959, 23.501099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.696192, 19.561901, 23.640669>,  <14.371217, 19.545139, 23.873285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.696192, 19.561901, 23.640669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403691, 0.679235, 0.612922,
		0.420686, -0.732723, 0.534920,
		0.812439, 0.041905, -0.581539,
		14.939923, 19.574472, 23.466208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032958, 19.424816, 24.401588>,  <14.371217, 19.545139, 23.873285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032958, 19.424816, 24.401588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152424, 19.614109, 24.070084>,  <15.224104, 19.727686, 23.871180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152424, 19.614109, 24.070084>,  <15.032958, 19.424816, 24.401588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152424, 19.614109, 24.070084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518347, 0.648708, 0.557220,
		0.801321, -0.596009, -0.051554,
		0.298665, 0.473235, -0.828763,
		15.242023, 19.756079, 23.821455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694919, 19.648960, 24.575039>,  <15.032958, 19.424816, 24.401588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694919, 19.648960, 24.575039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607521, 19.863811, 24.249155>,  <15.555082, 19.992722, 24.053625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.607521, 19.863811, 24.249155>,  <15.694919, 19.648960, 24.575039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.607521, 19.863811, 24.249155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467133, 0.790581, 0.395940,
		0.856765, -0.294069, -0.423647,
		-0.218493, 0.537127, -0.814711,
		15.541973, 20.024950, 24.004742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351198, 20.005743, 24.360586>,  <15.694919, 19.648960, 24.575039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351198, 20.005743, 24.360586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.051022, 20.212107, 24.195335>,  <15.870915, 20.335926, 24.096186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.051022, 20.212107, 24.195335>,  <16.351198, 20.005743, 24.360586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.051022, 20.212107, 24.195335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311691, 0.827437, 0.467115,
		0.582826, 0.221775, -0.781748,
		-0.750442, 0.515910, -0.413126,
		15.825889, 20.366880, 24.071398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710602, 20.623674, 24.033867>,  <16.351198, 20.005743, 24.360586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710602, 20.623674, 24.033867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320837, 20.703539, 24.075163>,  <16.086979, 20.751457, 24.099939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320837, 20.703539, 24.075163>,  <16.710602, 20.623674, 24.033867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320837, 20.703539, 24.075163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224339, 0.835372, 0.501822,
		0.013952, 0.512141, -0.858788,
		-0.974411, 0.199661, 0.103239,
		16.028513, 20.763437, 24.106134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519186, 21.288651, 23.725159>,  <16.710602, 20.623674, 24.033867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519186, 21.288651, 23.725159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239357, 21.198145, 23.996275>,  <16.071459, 21.143841, 24.158945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.239357, 21.198145, 23.996275>,  <16.519186, 21.288651, 23.725159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239357, 21.198145, 23.996275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212075, 0.840059, 0.499325,
		-0.682366, 0.493056, -0.539696,
		-0.699572, -0.226266, 0.677792,
		16.029486, 21.130264, 24.199614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131113, 21.919622, 23.917990>,  <16.519186, 21.288651, 23.725159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.131113, 21.919622, 23.917990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027351, 21.677410, 24.218933>,  <15.965095, 21.532084, 24.399500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027351, 21.677410, 24.218933>,  <16.131113, 21.919622, 23.917990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027351, 21.677410, 24.218933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203185, 0.727371, 0.655475,
		-0.944153, 0.322900, -0.065648,
		-0.259403, -0.605530, 0.752358,
		15.949531, 21.495750, 24.444641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.744483, 22.312389, 24.326956>,  <16.131113, 21.919622, 23.917990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.744483, 22.312389, 24.326956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870609, 22.017061, 24.565439>,  <15.946285, 21.839865, 24.708529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870609, 22.017061, 24.565439>,  <15.744483, 22.312389, 24.326956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870609, 22.017061, 24.565439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266144, 0.671843, 0.691227,
		-0.910903, -0.059277, 0.408341,
		0.315315, -0.738318, 0.596207,
		15.965203, 21.795567, 24.744301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552686, 22.642458, 25.060551>,  <15.744483, 22.312389, 24.326956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552686, 22.642458, 25.060551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820588, 22.345425, 25.060696>,  <15.981329, 22.167206, 25.060781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820588, 22.345425, 25.060696>,  <15.552686, 22.642458, 25.060551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820588, 22.345425, 25.060696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617770, 0.557454, 0.554623,
		-0.412054, -0.371238, 0.832102,
		0.669755, -0.742582, 0.000361,
		16.021515, 22.122650, 25.060804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780892, 22.532818, 25.742390>,  <15.552686, 22.642458, 25.060551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780892, 22.532818, 25.742390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.085577, 22.338089, 25.571369>,  <16.268389, 22.221252, 25.468758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.085577, 22.338089, 25.571369>,  <15.780892, 22.532818, 25.742390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085577, 22.338089, 25.571369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554879, 0.149442, 0.818398,
		-0.334520, -0.860623, 0.383959,
		0.761712, -0.486822, -0.427550,
		16.314091, 22.192043, 25.443104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969883, 22.020391, 26.168272>,  <15.780892, 22.532818, 25.742390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969883, 22.020391, 26.168272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.283661, 22.129730, 25.945587>,  <16.471928, 22.195333, 25.811977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.283661, 22.129730, 25.945587>,  <15.969883, 22.020391, 26.168272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.283661, 22.129730, 25.945587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471632, 0.319997, 0.821684,
		0.402752, -0.907129, 0.122100,
		0.784445, 0.273349, -0.556710,
		16.518995, 22.211735, 25.778574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.524927, 21.747663, 26.506733>,  <15.969883, 22.020391, 26.168272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.524927, 21.747663, 26.506733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679565, 22.042347, 26.284813>,  <16.772348, 22.219156, 26.151661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679565, 22.042347, 26.284813>,  <16.524927, 21.747663, 26.506733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679565, 22.042347, 26.284813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451204, 0.373573, 0.810468,
		0.804338, -0.563652, -0.187984,
		0.386596, 0.736709, -0.554801,
		16.795544, 22.263359, 26.118372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302742, 21.769791, 26.618582>,  <16.524927, 21.747663, 26.506733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302742, 21.769791, 26.618582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210981, 22.140877, 26.500790>,  <17.155926, 22.363529, 26.430115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210981, 22.140877, 26.500790>,  <17.302742, 21.769791, 26.618582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210981, 22.140877, 26.500790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532510, 0.372877, 0.759866,
		0.814744, 0.017500, -0.579556,
		-0.229401, 0.927716, -0.294481,
		17.142160, 22.419191, 26.412445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889444, 22.179605, 26.705866>,  <17.302742, 21.769791, 26.618582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889444, 22.179605, 26.705866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593426, 22.442829, 26.650312>,  <17.415813, 22.600763, 26.616982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.593426, 22.442829, 26.650312>,  <17.889444, 22.179605, 26.705866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593426, 22.442829, 26.650312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303190, 0.510750, 0.804494,
		0.600338, 0.553256, -0.577496,
		-0.740048, 0.658059, -0.138881,
		17.371412, 22.640247, 26.608648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218845, 22.760895, 26.944529>,  <17.889444, 22.179605, 26.705866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.218845, 22.760895, 26.944529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823879, 22.822145, 26.960340>,  <17.586899, 22.858896, 26.969828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823879, 22.822145, 26.960340>,  <18.218845, 22.760895, 26.944529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823879, 22.822145, 26.960340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119235, 0.556616, 0.822169,
		0.103892, 0.816536, -0.567870,
		-0.987416, 0.153127, 0.039532,
		17.527655, 22.868084, 26.972200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.060587, 23.570818, 26.912401>,  <18.218845, 22.760895, 26.944529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.060587, 23.570818, 26.912401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780262, 23.362946, 27.107866>,  <17.612066, 23.238222, 27.225145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.780262, 23.362946, 27.107866>,  <18.060587, 23.570818, 26.912401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780262, 23.362946, 27.107866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025836, 0.703071, 0.710650,
		-0.712877, 0.485408, -0.506148,
		-0.700813, -0.519683, 0.488662,
		17.570019, 23.207041, 27.254465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802521, 24.042248, 27.351053>,  <18.060587, 23.570818, 26.912401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802521, 24.042248, 27.351053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665222, 23.709322, 27.525150>,  <17.582844, 23.509567, 27.629608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.665222, 23.709322, 27.525150>,  <17.802521, 24.042248, 27.351053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665222, 23.709322, 27.525150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015114, 0.458440, 0.888597,
		-0.939123, 0.311587, -0.144778,
		-0.343247, -0.832314, 0.435241,
		17.562248, 23.459627, 27.655724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523201, 24.325678, 27.809723>,  <17.802521, 24.042248, 27.351053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523201, 24.325678, 27.809723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513138, 23.944794, 27.931484>,  <17.507099, 23.716263, 28.004541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513138, 23.944794, 27.931484>,  <17.523201, 24.325678, 27.809723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513138, 23.944794, 27.931484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091493, 0.305417, 0.947813,
		-0.995488, -0.004005, -0.094805,
		-0.025159, -0.952210, 0.304405,
		17.505590, 23.659130, 28.022806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.831478, 24.227566, 28.292339>,  <17.523201, 24.325678, 27.809723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.831478, 24.227566, 28.292339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.144156, 23.988380, 28.363209>,  <17.331762, 23.844870, 28.405731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.144156, 23.988380, 28.363209>,  <16.831478, 24.227566, 28.292339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144156, 23.988380, 28.363209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057455, 0.213833, 0.975179,
		-0.621008, -0.772473, 0.132796,
		0.781695, -0.597964, 0.177174,
		17.378664, 23.808990, 28.416361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.618618, 23.751045, 28.795073>,  <16.831478, 24.227566, 28.292339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.618618, 23.751045, 28.795073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999557, 23.864733, 28.839340>,  <17.228121, 23.932945, 28.865900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999557, 23.864733, 28.839340>,  <16.618618, 23.751045, 28.795073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999557, 23.864733, 28.839340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179631, 0.229424, 0.956607,
		0.246493, -0.930906, 0.269547,
		0.952352, 0.284216, 0.110668,
		17.285263, 23.949999, 28.872540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.049685, 23.449118, 29.446741>,  <16.618618, 23.751045, 28.795073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.049685, 23.449118, 29.446741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207088, 23.800402, 29.338005>,  <17.301531, 24.011171, 29.272764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207088, 23.800402, 29.338005>,  <17.049685, 23.449118, 29.446741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207088, 23.800402, 29.338005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170320, 0.360221, 0.917187,
		0.903405, -0.314622, 0.291328,
		0.393510, 0.878211, -0.271839,
		17.325142, 24.063866, 29.256453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647850, 23.596643, 29.782650>,  <17.049685, 23.449118, 29.446741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647850, 23.596643, 29.782650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434441, 23.919493, 29.681530>,  <17.306395, 24.113203, 29.620859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434441, 23.919493, 29.681530>,  <17.647850, 23.596643, 29.782650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.434441, 23.919493, 29.681530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093980, 0.240469, 0.966096,
		0.840549, 0.539192, -0.052442,
		-0.533522, 0.807123, -0.252799,
		17.274384, 24.161629, 29.605690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938580, 24.285309, 29.897758>,  <17.647850, 23.596643, 29.782650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938580, 24.285309, 29.897758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312115, 24.311077, 29.757019>,  <18.536236, 24.326538, 29.672575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312115, 24.311077, 29.757019>,  <17.938580, 24.285309, 29.897758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.312115, 24.311077, 29.757019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008028, 0.987175, 0.159441,
		0.357607, -0.146067, 0.922378,
		0.933837, 0.064422, -0.351848,
		18.592266, 24.330404, 29.651464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316645, 24.684238, 30.342892>,  <17.938580, 24.285309, 29.897758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316645, 24.684238, 30.342892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479681, 24.686363, 29.977633>,  <18.577503, 24.687639, 29.758476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.479681, 24.686363, 29.977633>,  <18.316645, 24.684238, 30.342892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.479681, 24.686363, 29.977633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085963, 0.995319, 0.044161,
		0.909109, -0.096497, 0.405228,
		0.407592, 0.005313, -0.913149,
		18.601959, 24.687958, 29.703688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179943, 23.946829, 30.682875>,  <18.316645, 24.684238, 30.342892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179943, 23.946829, 30.682875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572725, 23.948866, 30.758488>,  <18.808395, 23.950089, 30.803856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.572725, 23.948866, 30.758488>,  <18.179943, 23.946829, 30.682875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.572725, 23.948866, 30.758488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058847, -0.958233, -0.279868,
		0.179714, 0.285943, -0.941244,
		0.981957, 0.005093, 0.189034,
		18.867313, 23.950394, 30.815199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648893, 23.852594, 30.061211>,  <18.179943, 23.946829, 30.682875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648893, 23.852594, 30.061211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.776936, 23.702623, 30.409224>,  <18.853762, 23.612640, 30.618032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.776936, 23.702623, 30.409224>,  <18.648893, 23.852594, 30.061211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.776936, 23.702623, 30.409224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157383, -0.926641, -0.341418,
		0.934217, -0.027638, -0.355632,
		0.320108, -0.374930, 0.870034,
		18.872969, 23.590145, 30.670235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.228659, 23.448524, 29.944569>,  <18.648893, 23.852594, 30.061211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.228659, 23.448524, 29.944569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060205, 23.315018, 30.281910>,  <18.959133, 23.234913, 30.484314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060205, 23.315018, 30.281910>,  <19.228659, 23.448524, 29.944569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060205, 23.315018, 30.281910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033838, -0.923400, -0.382344,
		0.906366, -0.189556, 0.377582,
		-0.421135, -0.333767, 0.843353,
		18.933865, 23.214888, 30.534916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.465055, 22.791965, 30.048683>,  <19.228659, 23.448524, 29.944569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.465055, 22.791965, 30.048683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.105980, 22.832926, 30.220110>,  <18.890535, 22.857502, 30.322966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.105980, 22.832926, 30.220110>,  <19.465055, 22.791965, 30.048683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.105980, 22.832926, 30.220110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317073, -0.825513, -0.466897,
		0.305978, -0.555015, 0.773521,
		-0.897687, 0.102403, 0.428569,
		18.836674, 22.863647, 30.348680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316521, 22.187235, 30.481724>,  <19.465055, 22.791965, 30.048683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.316521, 22.187235, 30.481724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.012901, 22.364058, 30.290546>,  <18.830729, 22.470152, 30.175840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.012901, 22.364058, 30.290546>,  <19.316521, 22.187235, 30.481724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012901, 22.364058, 30.290546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097754, -0.803195, -0.587641,
		-0.643651, -0.399328, 0.652878,
		-0.759050, 0.442057, -0.477941,
		18.785187, 22.496675, 30.147163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541679, 21.972939, 30.517948>,  <19.316521, 22.187235, 30.481724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.541679, 21.972939, 30.517948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630144, 22.124907, 30.158672>,  <18.683224, 22.216087, 29.943106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.630144, 22.124907, 30.158672>,  <18.541679, 21.972939, 30.517948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630144, 22.124907, 30.158672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223414, -0.876767, -0.425871,
		-0.949302, 0.294855, -0.109027,
		0.221162, 0.379922, -0.898191,
		18.696493, 22.238884, 29.889215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.962744, 22.037043, 30.134436>,  <18.541679, 21.972939, 30.517948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.962744, 22.037043, 30.134436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.273806, 21.999378, 29.885796>,  <18.460443, 21.976780, 29.736612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.273806, 21.999378, 29.885796>,  <17.962744, 22.037043, 30.134436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273806, 21.999378, 29.885796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387020, -0.850871, -0.355294,
		-0.495446, 0.516868, -0.698127,
		0.777656, -0.094161, -0.621599,
		18.507103, 21.971130, 29.699316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580648, 21.772812, 29.622355>,  <17.962744, 22.037043, 30.134436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580648, 21.772812, 29.622355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.965601, 21.741508, 29.518276>,  <18.196571, 21.722727, 29.455830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.965601, 21.741508, 29.518276>,  <17.580648, 21.772812, 29.622355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.965601, 21.741508, 29.518276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241070, -0.687704, -0.684798,
		-0.125344, 0.721760, -0.680699,
		0.962379, -0.078260, -0.260194,
		18.254314, 21.718031, 29.440218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592232, 21.604052, 28.924177>,  <17.580648, 21.772812, 29.622355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592232, 21.604052, 28.924177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.970543, 21.507839, 29.011494>,  <18.197529, 21.450111, 29.063883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.970543, 21.507839, 29.011494>,  <17.592232, 21.604052, 28.924177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970543, 21.507839, 29.011494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052427, -0.776271, -0.628216,
		0.320559, 0.582707, -0.746789,
		0.945776, -0.240532, 0.218291,
		18.254276, 21.435680, 29.076981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040012, 21.502615, 28.206806>,  <17.592232, 21.604052, 28.924177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040012, 21.502615, 28.206806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.198750, 21.284689, 28.502291>,  <18.293991, 21.153934, 28.679581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.198750, 21.284689, 28.502291>,  <18.040012, 21.502615, 28.206806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.198750, 21.284689, 28.502291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094418, -0.776297, -0.623256,
		0.913017, 0.317083, -0.256628,
		0.396843, -0.544813, 0.738711,
		18.317802, 21.121244, 28.723904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625330, 21.161720, 27.860561>,  <18.040012, 21.502615, 28.206806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625330, 21.161720, 27.860561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582785, 20.954609, 28.200113>,  <18.557257, 20.830343, 28.403845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582785, 20.954609, 28.200113>,  <18.625330, 21.161720, 27.860561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582785, 20.954609, 28.200113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085849, -0.855315, -0.510946,
		0.990614, 0.018529, 0.135425,
		-0.106364, -0.517777, 0.848878,
		18.550875, 20.799276, 28.454777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.210497, 20.718979, 27.937088>,  <18.625330, 21.161720, 27.860561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.210497, 20.718979, 27.937088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921125, 20.536133, 28.144045>,  <18.747503, 20.426426, 28.268219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921125, 20.536133, 28.144045>,  <19.210497, 20.718979, 27.937088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.921125, 20.536133, 28.144045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062143, -0.789484, -0.610617,
		0.687597, -0.409586, 0.599542,
		-0.723429, -0.457115, 0.517394,
		18.704098, 20.398998, 28.299263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398891, 20.057989, 27.915846>,  <19.210497, 20.718979, 27.937088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398891, 20.057989, 27.915846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.019310, 20.012510, 28.033529>,  <18.791561, 19.985222, 28.104139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.019310, 20.012510, 28.033529>,  <19.398891, 20.057989, 27.915846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.019310, 20.012510, 28.033529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035521, -0.888311, -0.457867,
		0.313406, -0.444945, 0.838928,
		-0.948955, -0.113698, 0.294207,
		18.734623, 19.978401, 28.121792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365337, 19.362984, 27.927656>,  <19.398891, 20.057989, 27.915846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365337, 19.362984, 27.927656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980011, 19.459846, 27.973936>,  <18.748816, 19.517963, 28.001703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980011, 19.459846, 27.973936>,  <19.365337, 19.362984, 27.927656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980011, 19.459846, 27.973936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268084, -0.888384, -0.372700,
		0.012532, -0.390044, 0.920711,
		-0.963314, 0.242157, 0.115698,
		18.691017, 19.532494, 28.008646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125677, 18.827045, 28.162323>,  <19.365337, 19.362984, 27.927656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125677, 18.827045, 28.162323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.809635, 19.005846, 27.994549>,  <18.620010, 19.113127, 27.893885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.809635, 19.005846, 27.994549>,  <19.125677, 18.827045, 28.162323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809635, 19.005846, 27.994549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235464, -0.853093, -0.465605,
		-0.565943, -0.269115, 0.779285,
		-0.790105, 0.446999, -0.419435,
		18.572603, 19.139946, 27.868719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479719, 18.449312, 28.373217>,  <19.125677, 18.827045, 28.162323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479719, 18.449312, 28.373217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366667, 18.657505, 28.050920>,  <18.298836, 18.782421, 27.857542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366667, 18.657505, 28.050920>,  <18.479719, 18.449312, 28.373217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366667, 18.657505, 28.050920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502042, -0.796016, -0.338100,
		-0.817359, 0.308961, 0.486280,
		-0.282627, 0.520482, -0.805742,
		18.281878, 18.813650, 27.809198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796665, 18.387821, 28.449003>,  <18.479719, 18.449312, 28.373217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796665, 18.387821, 28.449003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.878162, 18.467724, 28.065632>,  <17.927061, 18.515665, 27.835609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.878162, 18.467724, 28.065632>,  <17.796665, 18.387821, 28.449003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.878162, 18.467724, 28.065632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552264, -0.784889, -0.280987,
		-0.808389, 0.586555, -0.049600,
		0.203745, 0.199755, -0.958429,
		17.939285, 18.527651, 27.778103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075466, 18.370600, 28.026796>,  <17.796665, 18.387821, 28.449003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075466, 18.370600, 28.026796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361490, 18.290922, 27.758762>,  <17.533104, 18.243116, 27.597942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361490, 18.290922, 27.758762>,  <17.075466, 18.370600, 28.026796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361490, 18.290922, 27.758762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583986, -0.697093, -0.415958,
		-0.384256, 0.688755, -0.614788,
		0.715058, -0.199193, -0.670085,
		17.576008, 18.231165, 27.557737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712082, 18.105253, 27.479454>,  <17.075466, 18.370600, 28.026796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.712082, 18.105253, 27.479454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.087942, 17.991991, 27.402639>,  <17.313459, 17.924034, 27.356550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.087942, 17.991991, 27.402639>,  <16.712082, 18.105253, 27.479454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.087942, 17.991991, 27.402639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339963, -0.835862, -0.430999,
		-0.038477, 0.470274, -0.881681,
		0.939651, -0.283155, -0.192037,
		17.369837, 17.907045, 27.345028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866287, 18.041965, 26.809366>,  <16.712082, 18.105253, 27.479454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866287, 18.041965, 26.809366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083719, 17.776888, 27.015415>,  <17.214178, 17.617842, 27.139046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083719, 17.776888, 27.015415>,  <16.866287, 18.041965, 26.809366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083719, 17.776888, 27.015415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273740, -0.720125, -0.637563,
		0.793464, 0.205558, -0.572853,
		0.543582, -0.662696, 0.515124,
		17.246794, 17.578079, 27.169952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.433678, 17.748365, 26.388704>,  <16.866287, 18.041965, 26.809366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.433678, 17.748365, 26.388704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303591, 17.474285, 26.649391>,  <17.225538, 17.309837, 26.805803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303591, 17.474285, 26.649391>,  <17.433678, 17.748365, 26.388704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303591, 17.474285, 26.649391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274060, -0.591311, -0.758447,
		0.905056, -0.425269, 0.004518,
		-0.325216, -0.685199, 0.651719,
		17.206026, 17.268726, 26.844908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813068, 17.094130, 26.277750>,  <17.433678, 17.748365, 26.388704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813068, 17.094130, 26.277750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461180, 16.987671, 26.435358>,  <17.250046, 16.923796, 26.529922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.461180, 16.987671, 26.435358>,  <17.813068, 17.094130, 26.277750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.461180, 16.987671, 26.435358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137346, -0.651112, -0.746451,
		0.455218, -0.710787, 0.536244,
		-0.879723, -0.266147, 0.394022,
		17.197262, 16.907827, 26.553564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730791, 16.441118, 25.967161>,  <17.813068, 17.094130, 26.277750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730791, 16.441118, 25.967161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365294, 16.495865, 26.120178>,  <17.145994, 16.528713, 26.211988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.365294, 16.495865, 26.120178>,  <17.730791, 16.441118, 25.967161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365294, 16.495865, 26.120178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399017, -0.479639, -0.781493,
		0.076524, -0.866726, 0.492879,
		-0.913745, 0.136865, 0.382542,
		17.091169, 16.536924, 26.234941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.387352, 15.792384, 25.969013>,  <17.730791, 16.441118, 25.967161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.387352, 15.792384, 25.969013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096996, 16.066341, 25.994337>,  <16.922783, 16.230715, 26.009531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096996, 16.066341, 25.994337>,  <17.387352, 15.792384, 25.969013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096996, 16.066341, 25.994337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544923, -0.516480, -0.660536,
		-0.419695, -0.513977, 0.748120,
		-0.725889, 0.684891, 0.063313,
		16.879230, 16.271809, 26.013330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710505, 15.402887, 26.147579>,  <17.387352, 15.792384, 25.969013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710505, 15.402887, 26.147579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.593504, 15.750510, 25.987989>,  <16.523304, 15.959085, 25.892235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.593504, 15.750510, 25.987989>,  <16.710505, 15.402887, 26.147579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.593504, 15.750510, 25.987989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737716, -0.470546, -0.484109,
		-0.608455, 0.152726, 0.778754,
		-0.292503, 0.869058, -0.398975,
		16.505753, 16.011227, 25.868298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928328, 15.450532, 26.255358>,  <16.710505, 15.402887, 26.147579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.928328, 15.450532, 26.255358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030325, 15.703370, 25.962664>,  <16.091524, 15.855073, 25.787048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030325, 15.703370, 25.962664>,  <15.928328, 15.450532, 26.255358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030325, 15.703370, 25.962664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827851, -0.248316, -0.502992,
		-0.499640, 0.734027, 0.459961,
		0.254994, 0.632094, -0.731734,
		16.106823, 15.892999, 25.743143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351465, 15.708772, 26.064819>,  <15.928328, 15.450532, 26.255358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351465, 15.708772, 26.064819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574248, 15.802794, 25.746185>,  <15.707918, 15.859206, 25.555004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574248, 15.802794, 25.746185>,  <15.351465, 15.708772, 26.064819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574248, 15.802794, 25.746185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784428, -0.166265, -0.597519,
		-0.272894, 0.957656, 0.091781,
		0.556958, 0.235055, -0.796585,
		15.741336, 15.873310, 25.507210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907096, 16.207155, 25.665289>,  <15.351465, 15.708772, 26.064819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.907096, 16.207155, 25.665289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178165, 16.082111, 25.399046>,  <15.340807, 16.007084, 25.239300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178165, 16.082111, 25.399046>,  <14.907096, 16.207155, 25.665289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178165, 16.082111, 25.399046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710815, -0.046546, -0.701838,
		0.188420, 0.948740, -0.253751,
		0.677673, -0.312611, -0.665608,
		15.381467, 15.988328, 25.199364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.775688, 16.558578, 24.992193>,  <14.907096, 16.207155, 25.665289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.775688, 16.558578, 24.992193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980129, 16.234999, 24.876005>,  <15.102794, 16.040852, 24.806292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980129, 16.234999, 24.876005>,  <14.775688, 16.558578, 24.992193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980129, 16.234999, 24.876005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697951, -0.193378, -0.689543,
		0.501635, 0.555163, -0.663443,
		0.511104, -0.808950, -0.290472,
		15.133460, 15.992313, 24.788864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.615316, 16.474892, 24.313438>,  <14.775688, 16.558578, 24.992193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.615316, 16.474892, 24.313438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733083, 16.107004, 24.417315>,  <14.803742, 15.886272, 24.479641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.733083, 16.107004, 24.417315>,  <14.615316, 16.474892, 24.313438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.733083, 16.107004, 24.417315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796109, -0.386361, -0.465763,
		0.528705, -0.069615, -0.845946,
		0.294417, -0.919716, 0.259692,
		14.821408, 15.831089, 24.495222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829397, 16.081884, 23.697189>,  <14.615316, 16.474892, 24.313438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829397, 16.081884, 23.697189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707557, 15.820488, 23.974367>,  <14.634452, 15.663651, 24.140673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.707557, 15.820488, 23.974367>,  <14.829397, 16.081884, 23.697189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.707557, 15.820488, 23.974367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577799, -0.451588, -0.679865,
		0.757209, -0.607470, -0.240031,
		-0.304602, -0.653489, 0.692943,
		14.616176, 15.624441, 24.182249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.047421, 15.536357, 23.440418>,  <14.829397, 16.081884, 23.697189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.047421, 15.536357, 23.440418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.750596, 15.434738, 23.688549>,  <14.572501, 15.373767, 23.837427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.750596, 15.434738, 23.688549>,  <15.047421, 15.536357, 23.440418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750596, 15.434738, 23.688549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342256, -0.652102, -0.676479,
		0.576375, -0.714299, 0.396950,
		-0.742060, -0.254047, 0.620328,
		14.527978, 15.358524, 23.874647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968780, 14.834729, 23.287785>,  <15.047421, 15.536357, 23.440418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.968780, 14.834729, 23.287785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.622046, 14.908029, 23.473263>,  <14.414005, 14.952008, 23.584551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.622046, 14.908029, 23.473263>,  <14.968780, 14.834729, 23.287785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.622046, 14.908029, 23.473263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458323, -0.659021, -0.596349,
		0.196305, -0.729460, 0.655250,
		-0.866836, 0.183250, 0.463697,
		14.361995, 14.963003, 23.612371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675174, 14.124584, 23.453547>,  <14.968780, 14.834729, 23.287785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675174, 14.124584, 23.453547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370260, 14.380953, 23.489637>,  <14.187312, 14.534774, 23.511292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370260, 14.380953, 23.489637>,  <14.675174, 14.124584, 23.453547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370260, 14.380953, 23.489637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600220, -0.647837, -0.469088,
		-0.242195, -0.411736, 0.878530,
		-0.762285, 0.640922, 0.090230,
		14.141575, 14.573230, 23.516706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058201, 13.742905, 23.690592>,  <14.675174, 14.124584, 23.453547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058201, 13.742905, 23.690592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931252, 14.073734, 23.505024>,  <13.855083, 14.272232, 23.393682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931252, 14.073734, 23.505024>,  <14.058201, 13.742905, 23.690592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931252, 14.073734, 23.505024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658174, -0.544310, -0.520130,
		-0.682703, 0.140266, 0.717107,
		-0.317372, 0.827075, -0.463921,
		13.836040, 14.321856, 23.365849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.391634, 13.598090, 23.698118>,  <14.058201, 13.742905, 23.690592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.391634, 13.598090, 23.698118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429583, 13.876490, 23.413420>,  <13.452352, 14.043530, 23.242599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429583, 13.876490, 23.413420>,  <13.391634, 13.598090, 23.698118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429583, 13.876490, 23.413420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639713, -0.505183, -0.579273,
		-0.762737, 0.510271, 0.397312,
		0.094871, 0.695998, -0.711748,
		13.458044, 14.085289, 23.199896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718720, 13.623601, 23.445679>,  <13.391634, 13.598090, 23.698118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718720, 13.623601, 23.445679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.949001, 13.778051, 23.157381>,  <13.087170, 13.870722, 22.984402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.949001, 13.778051, 23.157381>,  <12.718720, 13.623601, 23.445679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.949001, 13.778051, 23.157381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494910, -0.537113, -0.683062,
		-0.650869, 0.749944, -0.118120,
		0.575702, 0.386125, -0.720745,
		13.121712, 13.893889, 22.941158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.207333, 13.964501, 22.888054>,  <12.718720, 13.623601, 23.445679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.207333, 13.964501, 22.888054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561566, 13.918895, 22.707947>,  <12.774107, 13.891531, 22.599882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561566, 13.918895, 22.707947>,  <12.207333, 13.964501, 22.888054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561566, 13.918895, 22.707947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464478, -0.218150, -0.858295,
		-0.000366, 0.969232, -0.246148,
		0.885584, -0.114017, -0.450267,
		12.827242, 13.884689, 22.572866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.254836, 14.334861, 22.252754>,  <12.207333, 13.964501, 22.888054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.254836, 14.334861, 22.252754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.530169, 14.053381, 22.182318>,  <12.695368, 13.884493, 22.140057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.530169, 14.053381, 22.182318>,  <12.254836, 14.334861, 22.252754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.530169, 14.053381, 22.182318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422170, -0.191214, -0.886120,
		0.589892, 0.684284, -0.428699,
		0.688331, -0.703699, -0.176089,
		12.736668, 13.842271, 22.129492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.349435, 14.357883, 21.552353>,  <12.254836, 14.334861, 22.252754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.349435, 14.357883, 21.552353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519307, 14.011525, 21.658085>,  <12.621231, 13.803710, 21.721525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519307, 14.011525, 21.658085>,  <12.349435, 14.357883, 21.552353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519307, 14.011525, 21.658085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275782, -0.401822, -0.873203,
		0.862316, 0.297935, -0.409445,
		0.424682, -0.865895, 0.264332,
		12.646711, 13.751757, 21.737385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.698540, 14.137102, 20.969307>,  <12.349435, 14.357883, 21.552353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.698540, 14.137102, 20.969307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687661, 13.796159, 21.178207>,  <12.681134, 13.591593, 21.303547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687661, 13.796159, 21.178207>,  <12.698540, 14.137102, 20.969307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.687661, 13.796159, 21.178207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171731, -0.510691, -0.842439,
		0.984768, -0.112598, -0.132487,
		-0.027196, -0.852359, 0.522249,
		12.679502, 13.540451, 21.334883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224451, 13.654777, 20.670069>,  <12.698540, 14.137102, 20.969307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.224451, 13.654777, 20.670069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.933513, 13.436576, 20.836632>,  <12.758949, 13.305655, 20.936569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.933513, 13.436576, 20.836632>,  <13.224451, 13.654777, 20.670069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.933513, 13.436576, 20.836632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206909, -0.404223, -0.890950,
		0.654336, -0.734188, 0.181141,
		-0.727347, -0.545501, 0.416408,
		12.715308, 13.272925, 20.961554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.326136, 13.110242, 20.439821>,  <13.224451, 13.654777, 20.670069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.326136, 13.110242, 20.439821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.954400, 13.049349, 20.574375>,  <12.731359, 13.012813, 20.655107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.954400, 13.049349, 20.574375>,  <13.326136, 13.110242, 20.439821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.954400, 13.049349, 20.574375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221999, -0.497607, -0.838513,
		0.295038, -0.853939, 0.428649,
		-0.929338, -0.152234, 0.336387,
		12.675599, 13.003678, 20.675291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148432, 12.414988, 20.207291>,  <13.326136, 13.110242, 20.439821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148432, 12.414988, 20.207291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798057, 12.564601, 20.329165>,  <12.587831, 12.654369, 20.402288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798057, 12.564601, 20.329165>,  <13.148432, 12.414988, 20.207291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798057, 12.564601, 20.329165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467706, -0.503598, -0.726388,
		-0.118255, -0.778773, 0.616058,
		-0.875937, 0.374033, 0.304684,
		12.535275, 12.676811, 20.420570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768568, 11.874406, 20.192394>,  <13.148432, 12.414988, 20.207291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768568, 11.874406, 20.192394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.550455, 12.208086, 20.159460>,  <12.419587, 12.408294, 20.139700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.550455, 12.208086, 20.159460>,  <12.768568, 11.874406, 20.192394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.550455, 12.208086, 20.159460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460300, -0.380064, -0.802294,
		-0.700566, -0.399578, 0.591224,
		-0.545282, 0.834200, -0.082334,
		12.386870, 12.458345, 20.134760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.226130, 11.307932, 20.180758>,  <12.768568, 11.874406, 20.192394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.226130, 11.307932, 20.180758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.518975, 11.202347, 19.929573>,  <13.694682, 11.138996, 19.778862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.518975, 11.202347, 19.929573>,  <13.226130, 11.307932, 20.180758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.518975, 11.202347, 19.929573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644135, 0.568152, 0.512146,
		0.221591, -0.779441, 0.585978,
		0.732111, -0.263962, -0.627963,
		13.738608, 11.123158, 19.741184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.753534, 11.044608, 20.675634>,  <13.226130, 11.307932, 20.180758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.753534, 11.044608, 20.675634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965013, 11.162483, 20.357229>,  <14.091900, 11.233209, 20.166185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965013, 11.162483, 20.357229>,  <13.753534, 11.044608, 20.675634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965013, 11.162483, 20.357229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636811, 0.482335, 0.601519,
		0.561207, -0.824931, 0.067347,
		0.528696, 0.294689, -0.796015,
		14.123622, 11.250890, 20.118425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468122, 10.854108, 20.815659>,  <13.753534, 11.044608, 20.675634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468122, 10.854108, 20.815659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478087, 11.151562, 20.548410>,  <14.484067, 11.330034, 20.388062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478087, 11.151562, 20.548410>,  <14.468122, 10.854108, 20.815659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478087, 11.151562, 20.548410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590467, 0.528346, 0.610081,
		0.806677, -0.409704, -0.425928,
		0.024915, 0.743635, -0.668121,
		14.485562, 11.374652, 20.347975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192246, 11.060648, 20.772568>,  <14.468122, 10.854108, 20.815659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192246, 11.060648, 20.772568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020265, 11.387020, 20.617960>,  <14.917075, 11.582844, 20.525196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020265, 11.387020, 20.617960>,  <15.192246, 11.060648, 20.772568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020265, 11.387020, 20.617960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646582, 0.577065, 0.498926,
		0.630136, -0.035401, -0.775677,
		-0.429954, 0.815930, -0.386519,
		14.891278, 11.631800, 20.502005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781090, 11.519714, 20.517267>,  <15.192246, 11.060648, 20.772568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781090, 11.519714, 20.517267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.458037, 11.753075, 20.551622>,  <15.264206, 11.893091, 20.572235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.458037, 11.753075, 20.551622>,  <15.781090, 11.519714, 20.517267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458037, 11.753075, 20.551622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550842, 0.694389, 0.463030,
		0.210491, 0.421268, -0.882171,
		-0.807630, 0.583401, 0.085889,
		15.215749, 11.928095, 20.577389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022491, 12.164765, 20.244152>,  <15.781090, 11.519714, 20.517267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.022491, 12.164765, 20.244152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685226, 12.237546, 20.446527>,  <15.482867, 12.281214, 20.567953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685226, 12.237546, 20.446527>,  <16.022491, 12.164765, 20.244152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685226, 12.237546, 20.446527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439196, 0.775875, 0.452908,
		-0.310137, 0.604080, -0.734100,
		-0.843162, 0.181951, 0.505937,
		15.432278, 12.292131, 20.598309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794319, 12.851172, 20.125036>,  <16.022491, 12.164765, 20.244152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794319, 12.851172, 20.125036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637584, 12.764286, 20.482647>,  <15.543543, 12.712154, 20.697212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.637584, 12.764286, 20.482647>,  <15.794319, 12.851172, 20.125036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637584, 12.764286, 20.482647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493732, 0.770308, 0.403552,
		-0.776332, 0.599536, -0.194590,
		-0.391838, -0.217215, 0.894025,
		15.520033, 12.699121, 20.750854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477469, 13.459575, 20.253920>,  <15.794319, 12.851172, 20.125036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477469, 13.459575, 20.253920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543760, 13.275066, 20.602577>,  <15.583535, 13.164361, 20.811771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.543760, 13.275066, 20.602577>,  <15.477469, 13.459575, 20.253920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.543760, 13.275066, 20.602577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624896, 0.732890, 0.269031,
		-0.762915, 0.500101, 0.409706,
		0.165727, -0.461271, 0.871644,
		15.593478, 13.136685, 20.864071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580967, 13.990909, 20.798006>,  <15.477469, 13.459575, 20.253920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580967, 13.990909, 20.798006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740425, 13.695041, 21.014883>,  <15.836100, 13.517520, 21.145008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.740425, 13.695041, 21.014883>,  <15.580967, 13.990909, 20.798006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740425, 13.695041, 21.014883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652112, 0.644310, 0.399519,
		-0.644851, 0.194302, 0.739198,
		0.398645, -0.739670, 0.542190,
		15.860019, 13.473140, 21.177540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551285, 14.147319, 21.507599>,  <15.580967, 13.990909, 20.798006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551285, 14.147319, 21.507599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850215, 13.882466, 21.485378>,  <16.029573, 13.723555, 21.472046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.850215, 13.882466, 21.485378>,  <15.551285, 14.147319, 21.507599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850215, 13.882466, 21.485378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480231, 0.480454, 0.733854,
		-0.459218, -0.575106, 0.677032,
		0.747326, -0.662131, -0.055550,
		16.074413, 13.683827, 21.468714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791929, 14.137971, 22.179899>,  <15.551285, 14.147319, 21.507599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791929, 14.137971, 22.179899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.097733, 13.952982, 22.000278>,  <16.281214, 13.841989, 21.892506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.097733, 13.952982, 22.000278>,  <15.791929, 14.137971, 22.179899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.097733, 13.952982, 22.000278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633746, 0.411866, 0.654777,
		-0.117867, -0.785166, 0.607965,
		0.764509, -0.462472, -0.449050,
		16.327085, 13.814240, 21.865562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228897, 13.665383, 22.718014>,  <15.791929, 14.137971, 22.179899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.228897, 13.665383, 22.718014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462772, 13.775019, 22.412592>,  <16.603098, 13.840799, 22.229340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.462772, 13.775019, 22.412592>,  <16.228897, 13.665383, 22.718014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.462772, 13.775019, 22.412592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723340, 0.250011, 0.643641,
		0.367311, -0.928639, -0.052081,
		0.584689, 0.274089, -0.763554,
		16.638180, 13.857245, 22.183525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879421, 13.473614, 22.901361>,  <16.228897, 13.665383, 22.718014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879421, 13.473614, 22.901361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957258, 13.741904, 22.615072>,  <17.003960, 13.902879, 22.443298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957258, 13.741904, 22.615072>,  <16.879421, 13.473614, 22.901361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957258, 13.741904, 22.615072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611425, 0.487624, 0.623203,
		0.767003, -0.558882, -0.315211,
		0.194592, 0.670726, -0.715723,
		17.015636, 13.943122, 22.400354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562023, 13.484675, 22.891735>,  <16.879421, 13.473614, 22.901361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.562023, 13.484675, 22.891735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.453770, 13.833505, 22.728642>,  <17.388819, 14.042802, 22.630785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.453770, 13.833505, 22.728642>,  <17.562023, 13.484675, 22.891735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.453770, 13.833505, 22.728642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685939, 0.471858, 0.553929,
		0.675459, -0.129770, -0.725889,
		-0.270633, 0.872072, -0.407735,
		17.372580, 14.095126, 22.606321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107933, 13.860671, 22.631798>,  <17.562023, 13.484675, 22.891735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107933, 13.860671, 22.631798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.840258, 14.153193, 22.684532>,  <17.679653, 14.328707, 22.716173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.840258, 14.153193, 22.684532>,  <18.107933, 13.860671, 22.631798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840258, 14.153193, 22.684532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604351, 0.432377, 0.669186,
		0.432377, 0.527486, -0.731306,
		-0.669186, 0.731306, 0.131836,
		17.639502, 14.372585, 22.724083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514437, 14.385962, 22.958040>,  <18.107933, 13.860671, 22.631798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514437, 14.385962, 22.958040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148287, 14.543881, 22.989603>,  <17.928596, 14.638633, 23.008541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.148287, 14.543881, 22.989603>,  <18.514437, 14.385962, 22.958040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148287, 14.543881, 22.989603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330596, 0.625212, 0.706977,
		0.229780, 0.673234, -0.702821,
		-0.915373, 0.394799, 0.078907,
		17.873674, 14.662321, 23.013275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590878, 15.047352, 22.817789>,  <18.514437, 14.385962, 22.958040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590878, 15.047352, 22.817789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265619, 15.015668, 23.048449>,  <18.070465, 14.996657, 23.186844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265619, 15.015668, 23.048449>,  <18.590878, 15.047352, 22.817789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265619, 15.015668, 23.048449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400287, 0.643139, 0.652796,
		-0.422573, 0.761642, -0.491257,
		-0.813143, -0.079210, 0.576649,
		18.021677, 14.991905, 23.221443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.483440, 15.692714, 22.983105>,  <18.590878, 15.047352, 22.817789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.483440, 15.692714, 22.983105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.275835, 15.505593, 23.269262>,  <18.151272, 15.393321, 23.440956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.275835, 15.505593, 23.269262>,  <18.483440, 15.692714, 22.983105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275835, 15.505593, 23.269262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302732, 0.682097, 0.665656,
		-0.799362, 0.562056, -0.212399,
		-0.519012, -0.467800, 0.715395,
		18.120131, 15.365253, 23.483881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272722, 16.180500, 23.366552>,  <18.483440, 15.692714, 22.983105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272722, 16.180500, 23.366552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207035, 15.881433, 23.623932>,  <18.167624, 15.701993, 23.778360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207035, 15.881433, 23.623932>,  <18.272722, 16.180500, 23.366552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207035, 15.881433, 23.623932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375010, 0.556008, 0.741770,
		-0.912360, 0.363111, 0.189076,
		-0.164217, -0.747666, 0.643450,
		18.157770, 15.657132, 23.816967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940752, 16.442629, 23.921221>,  <18.272722, 16.180500, 23.366552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940752, 16.442629, 23.921221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090513, 16.102911, 24.070095>,  <18.180370, 15.899080, 24.159420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090513, 16.102911, 24.070095>,  <17.940752, 16.442629, 23.921221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090513, 16.102911, 24.070095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355275, 0.502138, 0.788440,
		-0.856505, -0.162967, 0.489735,
		0.374405, -0.849293, 0.372186,
		18.202835, 15.848123, 24.181751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886364, 16.459782, 24.721621>,  <17.940752, 16.442629, 23.921221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886364, 16.459782, 24.721621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.177849, 16.200684, 24.632711>,  <18.352739, 16.045225, 24.579367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.177849, 16.200684, 24.632711>,  <17.886364, 16.459782, 24.721621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.177849, 16.200684, 24.632711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521064, 0.313829, 0.793728,
		-0.444379, -0.694216, 0.566208,
		0.728711, -0.647747, -0.222271,
		18.396461, 16.006359, 24.566031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914349, 15.905480, 25.335051>,  <17.886364, 16.459782, 24.721621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.914349, 15.905480, 25.335051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261648, 15.964600, 25.145607>,  <18.470028, 16.000071, 25.031940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261648, 15.964600, 25.145607>,  <17.914349, 15.905480, 25.335051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261648, 15.964600, 25.145607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424161, 0.274054, 0.863124,
		0.257365, -0.950289, 0.175254,
		0.868246, 0.147802, -0.473607,
		18.522121, 16.008940, 25.003525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454613, 15.848524, 25.877098>,  <17.914349, 15.905480, 25.335051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454613, 15.848524, 25.877098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666824, 16.002157, 25.574835>,  <18.794151, 16.094337, 25.393476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666824, 16.002157, 25.574835>,  <18.454613, 15.848524, 25.877098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666824, 16.002157, 25.574835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588830, 0.474283, 0.654473,
		0.609768, -0.792171, 0.025462,
		0.530531, 0.384084, -0.755656,
		18.825983, 16.117382, 25.348139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078049, 15.783648, 26.053925>,  <18.454613, 15.848524, 25.877098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.078049, 15.783648, 26.053925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.125191, 16.061274, 25.769844>,  <19.153477, 16.227850, 25.599396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.125191, 16.061274, 25.769844>,  <19.078049, 15.783648, 26.053925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125191, 16.061274, 25.769844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600195, 0.519982, 0.607770,
		0.791123, -0.497887, -0.355291,
		0.117856, 0.694065, -0.710200,
		19.160547, 16.269493, 25.556784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.799120, 15.926929, 26.028244>,  <19.078049, 15.783648, 26.053925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.799120, 15.926929, 26.028244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.636339, 16.248743, 25.855217>,  <19.538671, 16.441832, 25.751400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.636339, 16.248743, 25.855217>,  <19.799120, 15.926929, 26.028244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636339, 16.248743, 25.855217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629902, 0.590116, 0.504962,
		0.661525, -0.066982, -0.746925,
		-0.406950, 0.804535, -0.432569,
		19.514254, 16.490103, 25.725447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344147, 16.374739, 25.768629>,  <19.799120, 15.926929, 26.028244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344147, 16.374739, 25.768629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020821, 16.607943, 25.801445>,  <19.826826, 16.747864, 25.821135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020821, 16.607943, 25.801445>,  <20.344147, 16.374739, 25.768629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020821, 16.607943, 25.801445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562441, 0.723469, 0.400317,
		0.174036, 0.369723, -0.912697,
		-0.808314, 0.583008, 0.082038,
		19.778326, 16.782845, 25.826056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607668, 17.008715, 25.523386>,  <20.344147, 16.374739, 25.768629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607668, 17.008715, 25.523386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.288343, 17.122232, 25.735861>,  <20.096748, 17.190344, 25.863346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.288343, 17.122232, 25.735861>,  <20.607668, 17.008715, 25.523386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288343, 17.122232, 25.735861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497680, 0.807547, 0.316515,
		-0.339132, 0.517038, -0.785914,
		-0.798313, 0.283794, 0.531185,
		20.048849, 17.207371, 25.895216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520329, 17.729771, 25.370131>,  <20.607668, 17.008715, 25.523386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520329, 17.729771, 25.370131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321817, 17.670797, 25.712351>,  <20.202711, 17.635412, 25.917683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321817, 17.670797, 25.712351>,  <20.520329, 17.729771, 25.370131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321817, 17.670797, 25.712351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372747, 0.853833, 0.363357,
		-0.784071, 0.499231, -0.368784,
		-0.496279, -0.147434, 0.855553,
		20.172934, 17.626568, 25.969017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162994, 18.438478, 25.608843>,  <20.520329, 17.729771, 25.370131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162994, 18.438478, 25.608843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.256754, 18.201780, 25.917360>,  <20.313009, 18.059761, 26.102470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.256754, 18.201780, 25.917360>,  <20.162994, 18.438478, 25.608843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.256754, 18.201780, 25.917360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461499, 0.766029, 0.447458,
		-0.855615, 0.251068, 0.452645,
		0.234397, -0.591747, 0.771293,
		20.327072, 18.024256, 26.148748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.055861, 18.894470, 26.088276>,  <20.162994, 18.438478, 25.608843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.055861, 18.894470, 26.088276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.248682, 18.600014, 26.278316>,  <20.364376, 18.423340, 26.392340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.248682, 18.600014, 26.278316>,  <20.055861, 18.894470, 26.088276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.248682, 18.600014, 26.278316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466362, 0.674652, 0.572146,
		-0.741707, -0.054237, 0.668527,
		0.482055, -0.736141, 0.475100,
		20.393299, 18.379171, 26.420847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.933907, 19.059011, 26.871746>,  <20.055861, 18.894470, 26.088276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.933907, 19.059011, 26.871746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.249546, 18.818155, 26.823164>,  <20.438931, 18.673641, 26.794014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.249546, 18.818155, 26.823164>,  <19.933907, 19.059011, 26.871746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249546, 18.818155, 26.823164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568615, 0.641235, 0.515262,
		-0.232379, -0.475654, 0.848383,
		0.789099, -0.602139, -0.121454,
		20.486277, 18.637514, 26.786728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.121861, 18.871552, 27.557835>,  <19.933907, 19.059011, 26.871746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.121861, 18.871552, 27.557835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429668, 18.859310, 27.302679>,  <20.614353, 18.851965, 27.149586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.429668, 18.859310, 27.302679>,  <20.121861, 18.871552, 27.557835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429668, 18.859310, 27.302679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446862, 0.739391, 0.503602,
		0.456237, -0.672580, 0.582653,
		0.769521, -0.030603, -0.637888,
		20.660524, 18.850130, 27.111313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.765768, 18.553995, 27.866192>,  <20.121861, 18.871552, 27.557835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.765768, 18.553995, 27.866192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.788378, 18.835140, 27.582561>,  <20.801945, 19.003826, 27.412382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.788378, 18.835140, 27.582561>,  <20.765768, 18.553995, 27.866192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788378, 18.835140, 27.582561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519430, 0.585824, 0.622095,
		0.852641, -0.403480, -0.331973,
		0.056525, 0.702861, -0.709078,
		20.805336, 19.045998, 27.369839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.455103, 18.702469, 27.867134>,  <20.765768, 18.553995, 27.866192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.455103, 18.702469, 27.867134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242439, 19.014212, 27.734505>,  <21.114841, 19.201258, 27.654926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.242439, 19.014212, 27.734505>,  <21.455103, 18.702469, 27.867134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242439, 19.014212, 27.734505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333270, 0.552413, 0.764050,
		0.778633, 0.295711, -0.553431,
		-0.531660, 0.779356, -0.331575,
		21.082941, 19.248018, 27.635033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.848911, 19.277872, 27.764332>,  <21.455103, 18.702469, 27.867134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.848911, 19.277872, 27.764332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.481256, 19.427965, 27.812313>,  <21.260664, 19.518021, 27.841101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.481256, 19.427965, 27.812313>,  <21.848911, 19.277872, 27.764332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.481256, 19.427965, 27.812313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334228, 0.581620, 0.741626,
		0.208516, 0.721747, -0.660001,
		-0.919137, 0.375232, 0.119951,
		21.205515, 19.540535, 27.848299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106962, 19.929827, 27.613922>,  <21.848911, 19.277872, 27.764332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106962, 19.929827, 27.613922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.934216, 20.034079, 27.268538>,  <21.830568, 20.096630, 27.061306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.934216, 20.034079, 27.268538>,  <22.106962, 19.929827, 27.613922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.934216, 20.034079, 27.268538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323195, 0.849048, 0.417927,
		0.842044, 0.459554, -0.282440,
		-0.431865, 0.260629, -0.863461,
		21.804657, 20.112267, 27.009499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.249456, 20.607380, 27.533819>,  <22.106962, 19.929827, 27.613922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.249456, 20.607380, 27.533819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891293, 20.557302, 27.362906>,  <21.676395, 20.527256, 27.260357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891293, 20.557302, 27.362906>,  <22.249456, 20.607380, 27.533819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891293, 20.557302, 27.362906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287243, 0.895672, 0.339505,
		0.340202, 0.426729, -0.837953,
		-0.895407, -0.125196, -0.427284,
		21.622671, 20.519743, 27.234720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.037498, 21.127842, 27.033167>,  <22.249456, 20.607380, 27.533819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.037498, 21.127842, 27.033167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753857, 21.000677, 27.284914>,  <21.583672, 20.924377, 27.435963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753857, 21.000677, 27.284914>,  <22.037498, 21.127842, 27.033167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753857, 21.000677, 27.284914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172742, 0.943714, 0.282070,
		-0.683617, 0.091298, -0.724108,
		-0.709103, -0.317912, 0.629369,
		21.541126, 20.905304, 27.473724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518568, 20.640263, 26.699747>,  <22.037498, 21.127842, 27.033167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518568, 20.640263, 26.699747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550552, 20.970957, 26.476995>,  <22.569742, 21.169373, 26.343344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.550552, 20.970957, 26.476995>,  <22.518568, 20.640263, 26.699747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.550552, 20.970957, 26.476995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433918, -0.474090, -0.766129,
		-0.897397, 0.302901, 0.320827,
		0.079960, 0.826734, -0.556881,
		22.574541, 21.218977, 26.309931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.886547, 20.636381, 26.408484>,  <22.518568, 20.640263, 26.699747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.886547, 20.636381, 26.408484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085569, 20.905952, 26.190031>,  <22.204983, 21.067696, 26.058960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.085569, 20.905952, 26.190031>,  <21.886547, 20.636381, 26.408484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.085569, 20.905952, 26.190031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344621, -0.424201, -0.837431,
		-0.796037, 0.604877, 0.021187,
		0.497555, 0.673927, -0.546133,
		22.234837, 21.108131, 26.026192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311831, 20.965565, 25.956841>,  <21.886547, 20.636381, 26.408484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311831, 20.965565, 25.956841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.666773, 21.034302, 25.785694>,  <21.879738, 21.075544, 25.683006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.666773, 21.034302, 25.785694>,  <21.311831, 20.965565, 25.956841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.666773, 21.034302, 25.785694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322164, -0.432792, -0.841963,
		-0.329861, 0.884964, -0.328680,
		0.887357, 0.171842, -0.427865,
		21.932980, 21.085854, 25.657335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.132313, 21.192997, 25.230450>,  <21.311831, 20.965565, 25.956841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.132313, 21.192997, 25.230450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.506868, 21.054569, 25.253798>,  <21.731602, 20.971512, 25.267807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.506868, 21.054569, 25.253798>,  <21.132313, 21.192997, 25.230450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.506868, 21.054569, 25.253798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203166, -0.670134, -0.713893,
		0.286174, 0.656624, -0.697817,
		0.936391, -0.346070, 0.058372,
		21.787786, 20.950748, 25.271309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.315815, 21.145048, 24.545828>,  <21.132313, 21.192997, 25.230450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.315815, 21.145048, 24.545828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.583048, 20.919043, 24.739498>,  <21.743387, 20.783440, 24.855700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.583048, 20.919043, 24.739498>,  <21.315815, 21.145048, 24.545828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583048, 20.919043, 24.739498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060203, -0.689607, -0.721677,
		0.741648, 0.452991, -0.494730,
		0.668082, -0.565014, 0.484174,
		21.783472, 20.749538, 24.884750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840366, 20.907539, 24.041119>,  <21.315815, 21.145048, 24.545828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840366, 20.907539, 24.041119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816940, 20.659101, 24.353735>,  <21.802885, 20.510038, 24.541306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816940, 20.659101, 24.353735>,  <21.840366, 20.907539, 24.041119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816940, 20.659101, 24.353735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128321, -0.771709, -0.622896,
		0.990002, -0.136768, -0.034505,
		-0.058565, -0.621096, 0.781543,
		21.799372, 20.472773, 24.588198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406193, 20.403496, 23.924330>,  <21.840366, 20.907539, 24.041119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406193, 20.403496, 23.924330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146982, 20.244143, 24.183975>,  <21.991455, 20.148531, 24.339762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.146982, 20.244143, 24.183975>,  <22.406193, 20.403496, 23.924330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.146982, 20.244143, 24.183975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139984, -0.775464, -0.615678,
		0.748641, -0.489843, 0.446756,
		-0.648029, -0.398384, 0.649114,
		21.952574, 20.124628, 24.378710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.480988, 19.679790, 23.776588>,  <22.406193, 20.403496, 23.924330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.480988, 19.679790, 23.776588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.156916, 19.681232, 24.011057>,  <21.962473, 19.682098, 24.151739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.156916, 19.681232, 24.011057>,  <22.480988, 19.679790, 23.776588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.156916, 19.681232, 24.011057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409694, -0.718672, -0.561837,
		0.419239, -0.695340, 0.583730,
		-0.810178, 0.003607, 0.586172,
		21.913862, 19.682314, 24.186909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.400805, 19.036718, 23.940731>,  <22.480988, 19.679790, 23.776588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.400805, 19.036718, 23.940731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047789, 19.219244, 23.986168>,  <21.835979, 19.328758, 24.013430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047789, 19.219244, 23.986168>,  <22.400805, 19.036718, 23.940731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047789, 19.219244, 23.986168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438392, -0.711020, -0.549785,
		-0.170108, -0.535004, 0.827547,
		-0.882540, 0.456313, 0.113591,
		21.783028, 19.356138, 24.020245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928852, 18.524155, 24.121656>,  <22.400805, 19.036718, 23.940731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.928852, 18.524155, 24.121656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.691952, 18.816442, 23.985838>,  <21.549812, 18.991816, 23.904346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.691952, 18.816442, 23.985838>,  <21.928852, 18.524155, 24.121656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.691952, 18.816442, 23.985838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575619, -0.678570, -0.456295,
		-0.563830, -0.074790, 0.822497,
		-0.592249, 0.730718, -0.339547,
		21.514277, 19.035658, 23.883974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.187433, 18.230024, 24.102057>,  <21.928852, 18.524155, 24.121656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.187433, 18.230024, 24.102057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180391, 18.548285, 23.859856>,  <21.176167, 18.739241, 23.714535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180391, 18.548285, 23.859856>,  <21.187433, 18.230024, 24.102057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180391, 18.548285, 23.859856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526062, -0.522368, -0.671111,
		-0.850264, 0.306717, 0.427756,
		-0.017605, 0.795648, -0.605503,
		21.175110, 18.786980, 23.678205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.468050, 18.267614, 23.922848>,  <21.187433, 18.230024, 24.102057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.468050, 18.267614, 23.922848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.674795, 18.453850, 23.635492>,  <20.798841, 18.565592, 23.463079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.674795, 18.453850, 23.635492>,  <20.468050, 18.267614, 23.922848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.674795, 18.453850, 23.635492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494010, -0.523129, -0.694471,
		-0.699148, 0.713836, -0.040379,
		0.516862, 0.465590, -0.718387,
		20.829853, 18.593527, 23.419977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998285, 18.593182, 23.528940>,  <20.468050, 18.267614, 23.922848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998285, 18.593182, 23.528940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.323513, 18.572241, 23.297016>,  <20.518650, 18.559677, 23.157862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.323513, 18.572241, 23.297016>,  <19.998285, 18.593182, 23.528940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.323513, 18.572241, 23.297016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532300, -0.470154, -0.703997,
		-0.235744, 0.881030, -0.410135,
		0.813069, -0.052352, -0.579808,
		20.567434, 18.556536, 23.123074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.738625, 18.672153, 22.878529>,  <19.998285, 18.593182, 23.528940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.738625, 18.672153, 22.878529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099094, 18.524479, 22.787676>,  <20.315376, 18.435875, 22.733164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099094, 18.524479, 22.787676>,  <19.738625, 18.672153, 22.878529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099094, 18.524479, 22.787676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408814, -0.549739, -0.728463,
		0.144075, 0.749326, -0.646338,
		0.901173, -0.369185, -0.227132,
		20.369446, 18.413723, 22.719536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.851194, 18.735571, 22.154844>,  <19.738625, 18.672153, 22.878529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.851194, 18.735571, 22.154844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.077562, 18.424597, 22.264627>,  <20.213383, 18.238012, 22.330498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.077562, 18.424597, 22.264627>,  <19.851194, 18.735571, 22.154844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077562, 18.424597, 22.264627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463357, -0.575258, -0.674075,
		0.681935, 0.254301, -0.685781,
		0.565919, -0.777437, 0.274457,
		20.247337, 18.191366, 22.346964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921974, 18.350069, 21.571499>,  <19.851194, 18.735571, 22.154844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921974, 18.350069, 21.571499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002846, 18.088135, 21.862791>,  <20.051369, 17.930975, 22.037565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002846, 18.088135, 21.862791>,  <19.921974, 18.350069, 21.571499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002846, 18.088135, 21.862791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485859, -0.712692, -0.505975,
		0.850332, -0.251520, -0.462247,
		0.202177, -0.654834, 0.728229,
		20.063499, 17.891685, 22.081259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.086361, 17.616314, 21.252335>,  <19.921974, 18.350069, 21.571499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.086361, 17.616314, 21.252335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022480, 17.526155, 21.636770>,  <19.984152, 17.472061, 21.867432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022480, 17.526155, 21.636770>,  <20.086361, 17.616314, 21.252335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022480, 17.526155, 21.636770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462203, -0.843202, -0.274551,
		0.872275, -0.488065, 0.030483,
		-0.159702, -0.225394, 0.961089,
		19.974569, 17.458538, 21.925097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165644, 16.960882, 21.329683>,  <20.086361, 17.616314, 21.252335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.165644, 16.960882, 21.329683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952068, 17.054665, 21.654629>,  <19.823923, 17.110935, 21.849596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952068, 17.054665, 21.654629>,  <20.165644, 16.960882, 21.329683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952068, 17.054665, 21.654629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639542, -0.740463, -0.206643,
		0.553077, -0.629877, 0.545308,
		-0.533940, 0.234458, 0.812366,
		19.791887, 17.125002, 21.898338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094402, 16.394072, 21.715124>,  <20.165644, 16.960882, 21.329683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094402, 16.394072, 21.715124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788586, 16.625721, 21.828327>,  <19.605097, 16.764711, 21.896248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788586, 16.625721, 21.828327>,  <20.094402, 16.394072, 21.715124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788586, 16.625721, 21.828327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642900, -0.716761, -0.270060,
		0.046449, -0.388416, 0.920313,
		-0.764540, 0.579125, 0.283006,
		19.559223, 16.799459, 21.913229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.652916, 15.922559, 21.764927>,  <20.094402, 16.394072, 21.715124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.652916, 15.922559, 21.764927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.434624, 16.254126, 21.814037>,  <19.303648, 16.453066, 21.843504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.434624, 16.254126, 21.814037>,  <19.652916, 15.922559, 21.764927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.434624, 16.254126, 21.814037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801014, -0.473012, -0.366927,
		-0.246077, -0.298591, 0.922111,
		-0.545731, 0.828917, 0.122778,
		19.270905, 16.502800, 21.850870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.082542, 15.751224, 22.060394>,  <19.652916, 15.922559, 21.764927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.082542, 15.751224, 22.060394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978750, 16.089132, 21.873192>,  <18.916475, 16.291878, 21.760870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.978750, 16.089132, 21.873192>,  <19.082542, 15.751224, 22.060394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978750, 16.089132, 21.873192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808923, -0.454842, -0.372508,
		-0.527554, 0.281925, 0.801377,
		-0.259480, 0.844770, -0.468009,
		18.900906, 16.342564, 21.732790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266916, 15.924115, 22.184786>,  <19.082542, 15.751224, 22.060394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266916, 15.924115, 22.184786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432119, 16.089352, 21.860125>,  <18.531242, 16.188494, 21.665327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432119, 16.089352, 21.860125>,  <18.266916, 15.924115, 22.184786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.432119, 16.089352, 21.860125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611959, -0.534155, -0.583253,
		-0.674485, 0.737587, 0.032184,
		0.413009, 0.413091, -0.811652,
		18.556023, 16.213280, 21.616629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713673, 16.254337, 21.698666>,  <18.266916, 15.924115, 22.184786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713673, 16.254337, 21.698666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036785, 16.195942, 21.470217>,  <18.230652, 16.160904, 21.333147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036785, 16.195942, 21.470217>,  <17.713673, 16.254337, 21.698666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036785, 16.195942, 21.470217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557381, -0.504524, -0.659380,
		-0.191883, 0.850966, -0.488915,
		0.807779, -0.145989, -0.571122,
		18.279119, 16.152145, 21.298880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482914, 16.379936, 21.119205>,  <17.713673, 16.254337, 21.698666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482914, 16.379936, 21.119205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806585, 16.151632, 21.063406>,  <18.000788, 16.014650, 21.029926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.806585, 16.151632, 21.063406>,  <17.482914, 16.379936, 21.119205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806585, 16.151632, 21.063406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456506, -0.461250, -0.760822,
		0.369905, 0.679323, -0.633790,
		0.809180, -0.570761, -0.139497,
		18.049339, 15.980404, 21.021557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528107, 16.390261, 20.494617>,  <17.482914, 16.379936, 21.119205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528107, 16.390261, 20.494617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751429, 16.075157, 20.598719>,  <17.885422, 15.886095, 20.661179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.751429, 16.075157, 20.598719>,  <17.528107, 16.390261, 20.494617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751429, 16.075157, 20.598719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281591, -0.475004, -0.833713,
		0.780387, 0.392180, -0.487022,
		0.558303, -0.787760, 0.260252,
		17.918921, 15.838829, 20.676794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898960, 16.216066, 19.787657>,  <17.528107, 16.390261, 20.494617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898960, 16.216066, 19.787657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924377, 15.905632, 20.038624>,  <17.939627, 15.719372, 20.189205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924377, 15.905632, 20.038624>,  <17.898960, 16.216066, 19.787657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924377, 15.905632, 20.038624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083783, -0.630618, -0.771557,
		0.994456, -0.003541, -0.105093,
		0.063541, -0.776085, 0.627419,
		17.943439, 15.672807, 20.226849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.376284, 15.707345, 19.441919>,  <17.898960, 16.216066, 19.787657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.376284, 15.707345, 19.441919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182535, 15.477371, 19.705688>,  <18.066286, 15.339387, 19.863949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182535, 15.477371, 19.705688>,  <18.376284, 15.707345, 19.441919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182535, 15.477371, 19.705688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179989, -0.672130, -0.718223,
		0.856148, -0.466574, 0.222077,
		-0.484369, -0.574934, 0.659422,
		18.037224, 15.304891, 19.903515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685480, 15.128395, 19.458128>,  <18.376284, 15.707345, 19.441919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685480, 15.128395, 19.458128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.327320, 15.006453, 19.587940>,  <18.112423, 14.933288, 19.665827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.327320, 15.006453, 19.587940>,  <18.685480, 15.128395, 19.458128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.327320, 15.006453, 19.587940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043540, -0.665415, -0.745203,
		0.443127, -0.681385, 0.582540,
		-0.895401, -0.304856, 0.324531,
		18.058701, 14.914996, 19.685299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.645382, 14.378397, 19.523476>,  <18.685480, 15.128395, 19.458128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.645382, 14.378397, 19.523476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265093, 14.500956, 19.504513>,  <18.036919, 14.574491, 19.493135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265093, 14.500956, 19.504513>,  <18.645382, 14.378397, 19.523476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265093, 14.500956, 19.504513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189669, -0.695717, -0.692823,
		-0.245259, -0.649692, 0.719548,
		-0.950723, 0.306397, -0.047405,
		17.979876, 14.592875, 19.490292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.244507, 13.760109, 19.635378>,  <18.645382, 14.378397, 19.523476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.244507, 13.760109, 19.635378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.992046, 14.021050, 19.467529>,  <17.840570, 14.177615, 19.366819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.992046, 14.021050, 19.467529>,  <18.244507, 13.760109, 19.635378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992046, 14.021050, 19.467529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162233, -0.640045, -0.751015,
		-0.758507, -0.405925, 0.509797,
		-0.631148, 0.652356, -0.419623,
		17.802702, 14.216757, 19.341642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627357, 13.402024, 19.496876>,  <18.244507, 13.760109, 19.635378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627357, 13.402024, 19.496876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630976, 13.722705, 19.257814>,  <17.633146, 13.915113, 19.114378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.630976, 13.722705, 19.257814>,  <17.627357, 13.402024, 19.496876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.630976, 13.722705, 19.257814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108821, -0.593341, -0.797561,
		-0.994020, 0.072252, 0.081875,
		0.009046, 0.801702, -0.597656,
		17.633690, 13.963216, 19.078518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221874, 13.160939, 18.899963>,  <17.627357, 13.402024, 19.496876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221874, 13.160939, 18.899963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.419044, 13.477224, 18.754747>,  <17.537346, 13.666995, 18.667618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.419044, 13.477224, 18.754747>,  <17.221874, 13.160939, 18.899963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419044, 13.477224, 18.754747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053511, -0.444016, -0.894420,
		-0.868425, 0.421455, -0.261178,
		0.492925, 0.790712, -0.363041,
		17.566921, 13.714438, 18.645836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845877, 13.453135, 18.299318>,  <17.221874, 13.160939, 18.899963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845877, 13.453135, 18.299318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.216810, 13.598370, 18.263046>,  <17.439369, 13.685511, 18.241283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.216810, 13.598370, 18.263046>,  <16.845877, 13.453135, 18.299318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216810, 13.598370, 18.263046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090825, -0.453409, -0.886663,
		-0.363049, 0.813995, -0.453439,
		0.927333, 0.363086, -0.090679,
		17.495010, 13.707295, 18.235842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840372, 13.704529, 17.705101>,  <16.845877, 13.453135, 18.299318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840372, 13.704529, 17.705101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229389, 13.666637, 17.790134>,  <17.462799, 13.643903, 17.841154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.229389, 13.666637, 17.790134>,  <16.840372, 13.704529, 17.705101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229389, 13.666637, 17.790134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159782, -0.392363, -0.905826,
		0.169217, 0.914919, -0.366453,
		0.972540, -0.094728, 0.212583,
		17.521151, 13.638219, 17.853909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116163, 13.655817, 17.066067>,  <16.840372, 13.704529, 17.705101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116163, 13.655817, 17.066067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.423866, 13.535704, 17.291658>,  <17.608488, 13.463635, 17.427013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.423866, 13.535704, 17.291658>,  <17.116163, 13.655817, 17.066067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423866, 13.535704, 17.291658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330913, -0.567836, -0.753697,
		0.546570, 0.766416, -0.337445,
		0.769258, -0.300283, 0.563979,
		17.654644, 13.445619, 17.460852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646553, 13.818089, 16.628002>,  <17.116163, 13.655817, 17.066067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.646553, 13.818089, 16.628002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772474, 13.555379, 16.902096>,  <17.848026, 13.397753, 17.066551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772474, 13.555379, 16.902096>,  <17.646553, 13.818089, 16.628002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772474, 13.555379, 16.902096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485877, -0.508669, -0.710760,
		0.815367, 0.556689, 0.158981,
		0.314804, -0.656775, 0.685234,
		17.866915, 13.358347, 17.107666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383863, 13.862701, 16.678345>,  <17.646553, 13.818089, 16.628002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383863, 13.862701, 16.678345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296991, 13.501710, 16.827133>,  <18.244867, 13.285115, 16.916407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296991, 13.501710, 16.827133>,  <18.383863, 13.862701, 16.678345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296991, 13.501710, 16.827133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604094, -0.423592, -0.675012,
		0.766748, 0.078105, 0.637179,
		-0.217182, -0.902480, 0.371971,
		18.231836, 13.230966, 16.938725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979467, 13.528074, 16.824112>,  <18.383863, 13.862701, 16.678345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979467, 13.528074, 16.824112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696554, 13.250428, 16.770515>,  <18.526806, 13.083840, 16.738358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.696554, 13.250428, 16.770515>,  <18.979467, 13.528074, 16.824112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.696554, 13.250428, 16.770515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554284, -0.426868, -0.714531,
		0.438772, -0.579643, 0.686654,
		-0.707283, -0.694116, -0.133990,
		18.484369, 13.042193, 16.730318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.332783, 12.976840, 16.748209>,  <18.979467, 13.528074, 16.824112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.332783, 12.976840, 16.748209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.972042, 12.877116, 16.607065>,  <18.755598, 12.817282, 16.522379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.972042, 12.877116, 16.607065>,  <19.332783, 12.976840, 16.748209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972042, 12.877116, 16.607065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428621, -0.618936, -0.658181,
		-0.054305, -0.744824, 0.665048,
		-0.901851, -0.249311, -0.352858,
		18.701487, 12.802323, 16.501207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393911, 12.318275, 16.522032>,  <19.332783, 12.976840, 16.748209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.393911, 12.318275, 16.522032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072987, 12.411495, 16.302221>,  <18.880432, 12.467427, 16.170334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072987, 12.411495, 16.302221>,  <19.393911, 12.318275, 16.522032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072987, 12.411495, 16.302221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323696, -0.603633, -0.728593,
		-0.501509, -0.762441, 0.408867,
		-0.802315, 0.233047, -0.549527,
		18.832293, 12.481410, 16.137363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.835455, 11.808493, 16.334467>,  <19.393911, 12.318275, 16.522032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.835455, 11.808493, 16.334467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.954409, 12.068447, 16.054693>,  <19.025782, 12.224420, 15.886829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.954409, 12.068447, 16.054693>,  <18.835455, 11.808493, 16.334467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.954409, 12.068447, 16.054693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467754, -0.737810, -0.486665,
		-0.832327, -0.182436, -0.523401,
		0.297386, 0.649887, -0.699434,
		19.043625, 12.263413, 15.844863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.673794, 11.588226, 15.619429>,  <18.835455, 11.808493, 16.334467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.673794, 11.588226, 15.619429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001139, 11.817390, 15.601289>,  <19.197546, 11.954889, 15.590405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.001139, 11.817390, 15.601289>,  <18.673794, 11.588226, 15.619429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.001139, 11.817390, 15.601289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436854, -0.671403, -0.598646,
		-0.373419, 0.470098, -0.799729,
		0.818362, 0.572911, -0.045350,
		19.246647, 11.989264, 15.587684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871548, 11.677070, 14.851311>,  <18.673794, 11.588226, 15.619429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871548, 11.677070, 14.851311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.157440, 11.685227, 15.130951>,  <19.328976, 11.690122, 15.298735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.157440, 11.685227, 15.130951>,  <18.871548, 11.677070, 14.851311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.157440, 11.685227, 15.130951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609795, -0.507672, -0.608620,
		0.342502, 0.861309, -0.375286,
		0.714732, 0.020394, 0.699101,
		19.371861, 11.691345, 15.340681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.516783, 11.362541, 15.008918>,  <18.871548, 11.677070, 14.851311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.516783, 11.362541, 15.008918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744188, 11.679742, 14.921338>,  <19.880632, 11.870063, 14.868791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.744188, 11.679742, 14.921338>,  <19.516783, 11.362541, 15.008918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.744188, 11.679742, 14.921338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516119, -0.551056, -0.655712,
		-0.640634, 0.259779, -0.722567,
		0.568515, 0.793002, -0.218949,
		19.914743, 11.917643, 14.855654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462036, 11.704367, 14.324073>,  <19.516783, 11.362541, 15.008918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462036, 11.704367, 14.324073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829664, 11.696283, 14.481502>,  <20.050241, 11.691434, 14.575959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829664, 11.696283, 14.481502>,  <19.462036, 11.704367, 14.324073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829664, 11.696283, 14.481502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252217, -0.737205, -0.626829,
		0.302810, 0.675367, -0.672448,
		0.919072, -0.020207, 0.393572,
		20.105387, 11.690221, 14.599573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848494, 11.566507, 13.761001>,  <19.462036, 11.704367, 14.324073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848494, 11.566507, 13.761001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111706, 11.492376, 14.052932>,  <20.269632, 11.447898, 14.228090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111706, 11.492376, 14.052932>,  <19.848494, 11.566507, 13.761001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.111706, 11.492376, 14.052932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255220, -0.856975, -0.447725,
		0.708420, 0.480883, -0.516616,
		0.658030, -0.185327, 0.729829,
		20.309114, 11.436778, 14.271880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.544901, 11.492259, 13.568001>,  <19.848494, 11.566507, 13.761001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.544901, 11.492259, 13.568001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.451685, 11.265452, 13.884023>,  <20.395756, 11.129369, 14.073636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.451685, 11.265452, 13.884023>,  <20.544901, 11.492259, 13.568001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.451685, 11.265452, 13.884023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214854, -0.822366, -0.526832,
		0.948436, 0.046973, 0.313469,
		-0.233039, -0.567017, 0.790054,
		20.381773, 11.095347, 14.121038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.123018, 10.933579, 13.908121>,  <20.544901, 11.492259, 13.568001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.123018, 10.933579, 13.908121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729792, 10.860469, 13.902847>,  <20.493856, 10.816603, 13.899683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729792, 10.860469, 13.902847>,  <21.123018, 10.933579, 13.908121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.729792, 10.860469, 13.902847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151150, -0.768081, -0.622259,
		0.103607, -0.613714, 0.782701,
		-0.983066, -0.182775, -0.013185,
		20.434872, 10.805636, 13.898891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.571537, 11.177954, 14.418007>,  <21.123018, 10.933579, 13.908121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.571537, 11.177954, 14.418007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.846821, 10.887863, 14.426121>,  <22.011992, 10.713809, 14.430989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.846821, 10.887863, 14.426121>,  <21.571537, 11.177954, 14.418007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.846821, 10.887863, 14.426121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492399, 0.446369, -0.747194,
		0.532830, 0.524215, 0.664297,
		0.688211, -0.725227, 0.020284,
		22.053284, 10.670295, 14.432206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.314621, 11.456637, 14.503552>,  <21.571537, 11.177954, 14.418007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.314621, 11.456637, 14.503552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.306921, 11.124113, 14.281363>,  <22.302301, 10.924599, 14.148050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.306921, 11.124113, 14.281363>,  <22.314621, 11.456637, 14.503552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.306921, 11.124113, 14.281363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336574, 0.517761, -0.786537,
		0.941460, -0.202101, 0.269830,
		-0.019252, -0.831311, -0.555473,
		22.301146, 10.874720, 14.114721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922365, 11.574087, 14.034057>,  <22.314621, 11.456637, 14.503552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922365, 11.574087, 14.034057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693748, 11.293624, 13.863542>,  <22.556580, 11.125346, 13.761232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693748, 11.293624, 13.863542>,  <22.922365, 11.574087, 14.034057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693748, 11.293624, 13.863542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232870, 0.359548, -0.903602,
		0.786838, -0.615714, -0.042217,
		-0.571540, -0.701158, -0.426287,
		22.522285, 11.083277, 13.735656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.323811, 11.308024, 13.471806>,  <22.922365, 11.574087, 14.034057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.323811, 11.308024, 13.471806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.951992, 11.187924, 13.386209>,  <22.728901, 11.115864, 13.334850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.951992, 11.187924, 13.386209>,  <23.323811, 11.308024, 13.471806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.951992, 11.187924, 13.386209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080732, 0.400562, -0.912706,
		0.359757, -0.865679, -0.348102,
		-0.929547, -0.300249, -0.213993,
		22.673128, 11.097849, 13.322010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.347309, 11.015514, 12.800090>,  <23.323811, 11.308024, 13.471806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.347309, 11.015514, 12.800090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956091, 11.097071, 12.817320>,  <22.721359, 11.146005, 12.827658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956091, 11.097071, 12.817320>,  <23.347309, 11.015514, 12.800090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956091, 11.097071, 12.817320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039586, 0.384717, -0.922185,
		-0.204598, -0.900234, -0.384342,
		-0.978045, 0.203892, 0.043076,
		22.662678, 11.158238, 12.830242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.013288, 10.858624, 12.063931>,  <23.347309, 11.015514, 12.800090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.013288, 10.858624, 12.063931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.735004, 11.082461, 12.244083>,  <22.568035, 11.216763, 12.352176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.735004, 11.082461, 12.244083>,  <23.013288, 10.858624, 12.063931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.735004, 11.082461, 12.244083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083134, 0.560053, -0.824275,
		-0.713497, -0.610897, -0.343112,
		-0.695709, 0.559594, 0.450383,
		22.526291, 11.250340, 12.379198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.415810, 10.913002, 11.588329>,  <23.013288, 10.858624, 12.063931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.415810, 10.913002, 11.588329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.408449, 11.232432, 11.828974>,  <22.404034, 11.424090, 11.973361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.408449, 11.232432, 11.828974>,  <22.415810, 10.913002, 11.588329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.408449, 11.232432, 11.828974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123586, 0.595283, -0.793955,
		-0.992163, -0.088960, 0.087739,
		-0.018401, 0.798577, 0.601612,
		22.402929, 11.472005, 12.009458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.813173, 11.355067, 11.388453>,  <22.415810, 10.913002, 11.588329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.813173, 11.355067, 11.388453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049971, 11.612301, 11.582767>,  <22.192049, 11.766641, 11.699354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.049971, 11.612301, 11.582767>,  <21.813173, 11.355067, 11.388453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.049971, 11.612301, 11.582767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018608, 0.613498, -0.789477,
		-0.805727, 0.458326, 0.375154,
		0.591994, 0.643084, 0.485784,
		22.227570, 11.805226, 11.728501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535566, 11.989017, 11.343823>,  <21.813173, 11.355067, 11.388453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535566, 11.989017, 11.343823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.921328, 12.070031, 11.411828>,  <22.152784, 12.118639, 11.452631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.921328, 12.070031, 11.411828>,  <21.535566, 11.989017, 11.343823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.921328, 12.070031, 11.411828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013910, 0.603189, -0.797477,
		-0.264065, 0.771455, 0.578901,
		0.964404, 0.202533, 0.170012,
		22.210649, 12.130791, 11.462831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559107, 12.663819, 11.336546>,  <21.535566, 11.989017, 11.343823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559107, 12.663819, 11.336546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932621, 12.545264, 11.256345>,  <22.156729, 12.474132, 11.208224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932621, 12.545264, 11.256345>,  <21.559107, 12.663819, 11.336546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.932621, 12.545264, 11.256345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030806, 0.624824, -0.780158,
		0.356507, 0.722323, 0.592581,
		0.933785, -0.296387, -0.200503,
		22.212757, 12.456348, 11.196194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013971, 13.279442, 11.204854>,  <21.559107, 12.663819, 11.336546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013971, 13.279442, 11.204854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.222460, 12.982301, 11.036807>,  <22.347553, 12.804016, 10.935979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.222460, 12.982301, 11.036807>,  <22.013971, 13.279442, 11.204854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222460, 12.982301, 11.036807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009107, 0.497088, -0.867652,
		0.853374, 0.448411, 0.265857,
		0.521219, -0.742853, -0.420118,
		22.378826, 12.759445, 10.910771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.320679, 13.665109, 10.715469>,  <22.013971, 13.279442, 11.204854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.320679, 13.665109, 10.715469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411114, 13.290203, 10.609324>,  <22.465376, 13.065260, 10.545636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.411114, 13.290203, 10.609324>,  <22.320679, 13.665109, 10.715469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.411114, 13.290203, 10.609324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166185, 0.305538, -0.937565,
		0.959826, 0.167873, 0.224838,
		0.226088, -0.937265, -0.265365,
		22.478941, 13.009024, 10.529714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.964746, 13.587633, 10.438218>,  <22.320679, 13.665109, 10.715469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.964746, 13.587633, 10.438218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755526, 13.286551, 10.278294>,  <22.629993, 13.105901, 10.182339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755526, 13.286551, 10.278294>,  <22.964746, 13.587633, 10.438218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.755526, 13.286551, 10.278294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142200, 0.385453, -0.911705,
		0.840355, -0.533722, -0.094576,
		-0.523051, -0.752706, -0.399812,
		22.598610, 13.060739, 10.158350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.342667, 13.443574, 9.748511>,  <22.964746, 13.587633, 10.438218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.342667, 13.443574, 9.748511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.995546, 13.245206, 9.735964>,  <22.787273, 13.126184, 9.728436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.995546, 13.245206, 9.735964>,  <23.342667, 13.443574, 9.748511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995546, 13.245206, 9.735964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154601, 0.329448, -0.931430,
		0.472252, -0.803445, -0.362566,
		-0.867800, -0.495923, -0.031369,
		22.735207, 13.096430, 9.726553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.321234, 13.075459, 9.027594>,  <23.342667, 13.443574, 9.748511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.321234, 13.075459, 9.027594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.949402, 13.095379, 9.173691>,  <22.726303, 13.107331, 9.261350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.949402, 13.095379, 9.173691>,  <23.321234, 13.075459, 9.027594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.949402, 13.095379, 9.173691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309068, 0.434707, -0.845877,
		-0.200899, -0.899194, -0.388702,
		-0.929579, 0.049801, 0.365244,
		22.670528, 13.110319, 9.283264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.776964, 12.628675, 8.583473>,  <23.321234, 13.075459, 9.027594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.776964, 12.628675, 8.583473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599731, 12.927689, 8.781411>,  <22.493391, 13.107097, 8.900174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599731, 12.927689, 8.781411>,  <22.776964, 12.628675, 8.583473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599731, 12.927689, 8.781411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174534, 0.469494, -0.865513,
		-0.879327, -0.469860, -0.077554,
		-0.443081, 0.747534, 0.494846,
		22.466806, 13.151949, 8.929865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301977, 12.769118, 8.133873>,  <22.776964, 12.628675, 8.583473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301977, 12.769118, 8.133873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318136, 13.093288, 8.367652>,  <22.327831, 13.287790, 8.507919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.318136, 13.093288, 8.367652>,  <22.301977, 12.769118, 8.133873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318136, 13.093288, 8.367652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162638, 0.582459, -0.796424,
		-0.985858, -0.062879, 0.155336,
		0.040398, 0.810424, 0.584448,
		22.330256, 13.336416, 8.542987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.963413, 13.215381, 7.744254>,  <22.301977, 12.769118, 8.133873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.963413, 13.215381, 7.744254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.129911, 13.464846, 8.008914>,  <22.229811, 13.614525, 8.167710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.129911, 13.464846, 8.008914>,  <21.963413, 13.215381, 7.744254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.129911, 13.464846, 8.008914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064366, 0.746073, -0.662746,
		-0.906970, 0.233279, 0.350694,
		0.416248, 0.623663, 0.661651,
		22.254786, 13.651945, 8.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547010, 13.866979, 7.723035>,  <21.963413, 13.215381, 7.744254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547010, 13.866979, 7.723035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.902983, 13.964390, 7.877290>,  <22.116566, 14.022837, 7.969843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.902983, 13.964390, 7.877290>,  <21.547010, 13.866979, 7.723035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.902983, 13.964390, 7.877290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087066, 0.739264, -0.667764,
		-0.447707, 0.627840, 0.636691,
		0.889931, 0.243528, 0.385638,
		22.169962, 14.037448, 7.992981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620056, 14.552711, 7.589534>,  <21.547010, 13.866979, 7.723035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620056, 14.552711, 7.589534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993586, 14.449501, 7.688650>,  <22.217703, 14.387575, 7.748119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993586, 14.449501, 7.688650>,  <21.620056, 14.552711, 7.589534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.993586, 14.449501, 7.688650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356285, 0.608462, -0.709108,
		0.032196, 0.750465, 0.660126,
		0.933822, -0.258024, 0.247790,
		22.273733, 14.372094, 7.762987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.943016, 15.206986, 7.796951>,  <21.620056, 14.552711, 7.589534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.943016, 15.206986, 7.796951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.179813, 14.915778, 7.658660>,  <22.321892, 14.741054, 7.575685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.179813, 14.915778, 7.658660>,  <21.943016, 15.206986, 7.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.179813, 14.915778, 7.658660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219385, 0.558341, -0.800078,
		0.775508, 0.397795, 0.490252,
		0.591995, -0.728021, -0.345728,
		22.357412, 14.697372, 7.554942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.825867, 15.375757, 8.551538>,  <21.943016, 15.206986, 7.796951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.825867, 15.375757, 8.551538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.864281, 15.313056, 8.944721>,  <21.887329, 15.275435, 9.180631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.864281, 15.313056, 8.944721>,  <21.825867, 15.375757, 8.551538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864281, 15.313056, 8.944721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482569, 0.871038, 0.091759,
		-0.870577, 0.465533, 0.159295,
		0.096035, -0.156754, 0.982957,
		21.893091, 15.266029, 9.239609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.698839, 16.009325, 8.840811>,  <21.825867, 15.375757, 8.551538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.698839, 16.009325, 8.840811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928896, 15.792359, 9.085758>,  <22.066931, 15.662180, 9.232727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928896, 15.792359, 9.085758>,  <21.698839, 16.009325, 8.840811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928896, 15.792359, 9.085758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562061, 0.805920, 0.185960,
		-0.594388, 0.237235, 0.768390,
		0.575144, -0.542414, 0.612369,
		22.101439, 15.629635, 9.269469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.007778, 16.446321, 9.379560>,  <21.698839, 16.009325, 8.840811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.007778, 16.446321, 9.379560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260471, 16.139355, 9.423347>,  <22.412086, 15.955174, 9.449620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260471, 16.139355, 9.423347>,  <22.007778, 16.446321, 9.379560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.260471, 16.139355, 9.423347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747149, 0.640419, 0.177856,
		-0.206596, -0.030567, 0.977949,
		0.631733, -0.767417, 0.109471,
		22.449991, 15.909129, 9.456188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.473377, 16.591261, 9.866379>,  <22.007778, 16.446321, 9.379560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.473377, 16.591261, 9.866379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708921, 16.313744, 9.700539>,  <22.850248, 16.147234, 9.601034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.708921, 16.313744, 9.700539>,  <22.473377, 16.591261, 9.866379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.708921, 16.313744, 9.700539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804879, 0.456702, 0.378936,
		-0.073554, -0.556844, 0.827354,
		0.588863, -0.693792, -0.414600,
		22.885580, 16.105606, 9.576159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.905554, 16.171524, 10.439463>,  <22.473377, 16.591261, 9.866379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.905554, 16.171524, 10.439463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065430, 16.218132, 10.075777>,  <23.161356, 16.246098, 9.857566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.065430, 16.218132, 10.075777>,  <22.905554, 16.171524, 10.439463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.065430, 16.218132, 10.075777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711192, 0.586369, 0.387786,
		0.578320, -0.801620, 0.151497,
		0.399690, 0.116521, -0.909214,
		23.185337, 16.253088, 9.803013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.634907, 15.829369, 10.156106>,  <22.905554, 16.171524, 10.439463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.634907, 15.829369, 10.156106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.530024, 16.198719, 10.043945>,  <23.467093, 16.420328, 9.976649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.530024, 16.198719, 10.043945>,  <23.634907, 15.829369, 10.156106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.530024, 16.198719, 10.043945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777771, 0.374218, 0.505007,
		0.571243, -0.085670, -0.816298,
		-0.262209, 0.923375, -0.280401,
		23.451361, 16.475731, 9.959825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195370, 16.223959, 9.839849>,  <23.634907, 15.829369, 10.156106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195370, 16.223959, 9.839849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.954721, 16.499765, 10.001156>,  <23.810333, 16.665249, 10.097939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.954721, 16.499765, 10.001156>,  <24.195370, 16.223959, 9.839849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.954721, 16.499765, 10.001156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765569, 0.353665, 0.537424,
		0.227941, 0.632052, -0.740644,
		-0.601620, 0.689515, 0.403265,
		23.774235, 16.706619, 10.122135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.420982, 16.938028, 9.596863>,  <24.195370, 16.223959, 9.839849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.420982, 16.938028, 9.596863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267565, 16.898355, 9.964135>,  <24.175514, 16.874552, 10.184499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267565, 16.898355, 9.964135>,  <24.420982, 16.938028, 9.596863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267565, 16.898355, 9.964135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866058, 0.306601, 0.394890,
		-0.320682, 0.946656, -0.031696,
		-0.383544, -0.099184, 0.918181,
		24.152502, 16.868601, 10.239590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.721962, 16.726906, 10.152094>,  <24.420982, 16.938028, 9.596863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.721962, 16.726906, 10.152094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045355, 16.947449, 10.234423>,  <25.239389, 17.079775, 10.283820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045355, 16.947449, 10.234423>,  <24.721962, 16.726906, 10.152094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045355, 16.947449, 10.234423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502733, -0.828838, 0.245534,
		0.305971, -0.095036, -0.947286,
		0.808481, 0.551358, 0.205823,
		25.287899, 17.112856, 10.296169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350069, 16.416138, 9.827712>,  <24.721962, 16.726906, 10.152094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350069, 16.416138, 9.827712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443626, 16.615133, 10.161849>,  <25.499762, 16.734531, 10.362331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443626, 16.615133, 10.161849>,  <25.350069, 16.416138, 9.827712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443626, 16.615133, 10.161849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568221, -0.767115, 0.297757,
		0.788934, 0.405015, -0.462110,
		0.233896, 0.497491, 0.835342,
		25.513796, 16.764381, 10.412452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141264, 16.512844, 9.864035>,  <25.350069, 16.416138, 9.827712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141264, 16.512844, 9.864035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967873, 16.554457, 10.222091>,  <25.863838, 16.579424, 10.436924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967873, 16.554457, 10.222091>,  <26.141264, 16.512844, 9.864035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967873, 16.554457, 10.222091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403609, -0.865707, 0.296059,
		0.805728, 0.489621, 0.333277,
		-0.433477, 0.104030, 0.895140,
		25.837830, 16.585665, 10.490633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635517, 16.357069, 10.401885>,  <26.141264, 16.512844, 9.864035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635517, 16.357069, 10.401885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273891, 16.317955, 10.568309>,  <26.056915, 16.294487, 10.668163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273891, 16.317955, 10.568309>,  <26.635517, 16.357069, 10.401885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273891, 16.317955, 10.568309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305283, -0.829036, 0.468510,
		0.299116, 0.550580, 0.779353,
		-0.904064, -0.097784, 0.416061,
		26.002672, 16.288620, 10.693127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.721554, 16.251244, 11.156896>,  <26.635517, 16.357069, 10.401885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.721554, 16.251244, 11.156896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368694, 16.072844, 11.096367>,  <26.156979, 15.965803, 11.060049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368694, 16.072844, 11.096367>,  <26.721554, 16.251244, 11.156896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368694, 16.072844, 11.096367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310794, -0.792671, 0.524481,
		-0.353868, 0.415639, 0.837867,
		-0.882148, -0.446001, -0.151323,
		26.104050, 15.939043, 11.050970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536949, 15.922496, 11.816319>,  <26.721554, 16.251244, 11.156896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536949, 15.922496, 11.816319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296289, 15.741357, 11.553123>,  <26.151894, 15.632673, 11.395206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296289, 15.741357, 11.553123>,  <26.536949, 15.922496, 11.816319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296289, 15.741357, 11.553123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127413, -0.867623, 0.480620,
		-0.788533, 0.205328, 0.579703,
		-0.601649, -0.452847, -0.657988,
		26.115795, 15.605503, 11.355727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174709, 15.413611, 12.256691>,  <26.536949, 15.922496, 11.816319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174709, 15.413611, 12.256691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106180, 15.282701, 11.884984>,  <26.065062, 15.204156, 11.661960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106180, 15.282701, 11.884984>,  <26.174709, 15.413611, 12.256691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106180, 15.282701, 11.884984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112683, -0.930515, 0.348489,
		-0.978750, 0.164417, 0.122542,
		-0.171325, -0.327275, -0.929268,
		26.054783, 15.184519, 11.606204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433756, 15.220504, 12.212403>,  <26.174709, 15.413611, 12.256691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433756, 15.220504, 12.212403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682295, 15.043479, 11.953771>,  <25.831417, 14.937264, 11.798591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682295, 15.043479, 11.953771>,  <25.433756, 15.220504, 12.212403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682295, 15.043479, 11.953771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087189, -0.859138, 0.504262,
		-0.778670, -0.256947, -0.572409,
		0.621347, -0.442561, -0.646582,
		25.868698, 14.910710, 11.759796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254433, 14.468481, 12.291044>,  <25.433756, 15.220504, 12.212403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254433, 14.468481, 12.291044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586979, 14.433749, 12.071485>,  <25.786507, 14.412910, 11.939749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586979, 14.433749, 12.071485>,  <25.254433, 14.468481, 12.291044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586979, 14.433749, 12.071485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055808, -0.969681, 0.237919,
		-0.552914, -0.228430, -0.801315,
		0.831367, -0.086829, -0.548898,
		25.836390, 14.407701, 11.906816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154497, 13.990392, 11.714455>,  <25.254433, 14.468481, 12.291044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154497, 13.990392, 11.714455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546665, 13.997866, 11.792870>,  <25.781965, 14.002350, 11.839919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546665, 13.997866, 11.792870>,  <25.154497, 13.990392, 11.714455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546665, 13.997866, 11.792870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012136, -0.999329, 0.034551,
		0.196552, -0.031496, -0.979987,
		0.980418, 0.018684, 0.196038,
		25.840790, 14.003470, 11.851681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380632, 13.562894, 11.260807>,  <25.154497, 13.990392, 11.714455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380632, 13.562894, 11.260807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662632, 13.584805, 11.543643>,  <25.831831, 13.597951, 11.713345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662632, 13.584805, 11.543643>,  <25.380632, 13.562894, 11.260807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662632, 13.584805, 11.543643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036916, -0.992827, 0.113719,
		0.708248, -0.106275, -0.697919,
		0.704998, 0.054777, 0.707091,
		25.874132, 13.601237, 11.755770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624088, 12.812148, 11.280654>,  <25.380632, 13.562894, 11.260807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624088, 12.812148, 11.280654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805891, 12.973989, 11.598073>,  <25.914972, 13.071095, 11.788525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805891, 12.973989, 11.598073>,  <25.624088, 12.812148, 11.280654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805891, 12.973989, 11.598073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041988, -0.880161, 0.472815,
		0.889752, -0.248218, -0.383052,
		0.454509, 0.404604, 0.793548,
		25.942244, 13.095371, 11.836137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259724, 12.397068, 11.405748>,  <25.624088, 12.812148, 11.280654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259724, 12.397068, 11.405748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134890, 12.584146, 11.736532>,  <26.059988, 12.696392, 11.935003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134890, 12.584146, 11.736532>,  <26.259724, 12.397068, 11.405748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134890, 12.584146, 11.736532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052995, -0.877650, 0.476362,
		0.948574, 0.104842, 0.298688,
		-0.312087, 0.467694, 0.826961,
		26.041264, 12.724454, 11.984620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637350, 12.010329, 11.902400>,  <26.259724, 12.397068, 11.405748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637350, 12.010329, 11.902400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339285, 12.185582, 12.103507>,  <26.160446, 12.290734, 12.224172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339285, 12.185582, 12.103507>,  <26.637350, 12.010329, 11.902400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339285, 12.185582, 12.103507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057061, -0.793029, 0.606506,
		0.664439, 0.423256, 0.615935,
		-0.745161, 0.438132, 0.502767,
		26.115736, 12.317021, 12.254337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769939, 11.768019, 12.551056>,  <26.637350, 12.010329, 11.902400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769939, 11.768019, 12.551056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390141, 11.891793, 12.571873>,  <26.162262, 11.966058, 12.584363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390141, 11.891793, 12.571873>,  <26.769939, 11.768019, 12.551056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390141, 11.891793, 12.571873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223981, -0.784527, 0.578229,
		0.219753, 0.537369, 0.814213,
		-0.949495, 0.309436, 0.052042,
		26.105291, 11.984624, 12.587485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663465, 11.923623, 13.330653>,  <26.769939, 11.768019, 12.551056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663465, 11.923623, 13.330653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323277, 11.838524, 13.138224>,  <26.119164, 11.787464, 13.022766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323277, 11.838524, 13.138224>,  <26.663465, 11.923623, 13.330653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323277, 11.838524, 13.138224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110307, -0.822093, 0.558566,
		-0.514321, 0.528112, 0.675701,
		-0.850475, -0.212748, -0.481073,
		26.068134, 11.774699, 12.993901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348259, 11.456474, 13.862689>,  <26.663465, 11.923623, 13.330653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348259, 11.456474, 13.862689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125454, 11.424378, 13.532041>,  <25.991772, 11.405121, 13.333652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125454, 11.424378, 13.532041>,  <26.348259, 11.456474, 13.862689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125454, 11.424378, 13.532041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544528, -0.716241, 0.436450,
		-0.627079, 0.693225, 0.355262,
		-0.557011, -0.080239, -0.826620,
		25.958351, 11.400307, 13.284055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664951, 11.348231, 14.032326>,  <26.348259, 11.456474, 13.862689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664951, 11.348231, 14.032326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701515, 11.183909, 13.669475>,  <25.723454, 11.085316, 13.451764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701515, 11.183909, 13.669475>,  <25.664951, 11.348231, 14.032326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701515, 11.183909, 13.669475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441445, -0.833261, 0.332870,
		-0.892620, 0.370019, -0.257517,
		0.091411, -0.410806, -0.907129,
		25.728939, 11.060668, 13.397336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515596, 12.042155, 13.810828>,  <25.664951, 11.348231, 14.032326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515596, 12.042155, 13.810828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142756, 12.180933, 13.852421>,  <24.919050, 12.264199, 13.877377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.142756, 12.180933, 13.852421>,  <25.515596, 12.042155, 13.810828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.142756, 12.180933, 13.852421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359615, -0.852342, -0.379722,
		-0.043115, -0.391333, 0.919238,
		-0.932104, 0.346944, 0.103980,
		24.863125, 12.285016, 13.883615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090923, 12.648723, 13.972116>,  <25.515596, 12.042155, 13.810828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090923, 12.648723, 13.972116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431602, 12.460602, 14.064570>,  <26.636011, 12.347730, 14.120043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431602, 12.460602, 14.064570>,  <26.090923, 12.648723, 13.972116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431602, 12.460602, 14.064570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149936, 0.641339, 0.752465,
		-0.502123, -0.606219, 0.616743,
		0.851700, -0.470302, 0.231137,
		26.687113, 12.319511, 14.133911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162777, 12.327514, 14.745269>,  <26.090923, 12.648723, 13.972116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162777, 12.327514, 14.745269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519217, 12.417260, 14.587483>,  <26.733080, 12.471108, 14.492812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519217, 12.417260, 14.587483>,  <26.162777, 12.327514, 14.745269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519217, 12.417260, 14.587483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089011, 0.765932, 0.636730,
		0.444993, -0.602501, 0.662551,
		0.891099, 0.224366, -0.394464,
		26.786547, 12.484571, 14.469144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742521, 12.489181, 15.325708>,  <26.162777, 12.327514, 14.745269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742521, 12.489181, 15.325708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797636, 12.684424, 14.980973>,  <26.830706, 12.801571, 14.774133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797636, 12.684424, 14.980973>,  <26.742521, 12.489181, 15.325708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797636, 12.684424, 14.980973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176354, 0.844142, 0.506284,
		0.974635, -0.221749, 0.030233,
		0.137789, 0.488110, -0.861837,
		26.838972, 12.830857, 14.722423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347656, 12.818281, 15.356471>,  <26.742521, 12.489181, 15.325708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347656, 12.818281, 15.356471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086180, 13.023072, 15.133557>,  <26.929293, 13.145947, 14.999809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086180, 13.023072, 15.133557>,  <27.347656, 12.818281, 15.356471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086180, 13.023072, 15.133557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023516, 0.749796, 0.661251,
		0.756395, 0.419150, -0.502176,
		-0.653692, 0.511976, -0.557285,
		26.890072, 13.176665, 14.966372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487833, 13.637462, 15.320759>,  <27.347656, 12.818281, 15.356471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487833, 13.637462, 15.320759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099901, 13.576921, 15.244315>,  <26.867142, 13.540598, 15.198449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099901, 13.576921, 15.244315>,  <27.487833, 13.637462, 15.320759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099901, 13.576921, 15.244315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233918, 0.798489, 0.554705,
		0.068645, 0.582674, -0.809802,
		-0.969830, -0.151350, -0.191110,
		26.808952, 13.531517, 15.186982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207314, 14.281753, 15.095737>,  <27.487833, 13.637462, 15.320759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207314, 14.281753, 15.095737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911736, 14.074072, 15.267501>,  <26.734388, 13.949464, 15.370560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911736, 14.074072, 15.267501>,  <27.207314, 14.281753, 15.095737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911736, 14.074072, 15.267501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184343, 0.768803, 0.612339,
		-0.648060, 0.373325, -0.663813,
		-0.738943, -0.519201, 0.429411,
		26.690052, 13.918311, 15.396324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036619, 15.116426, 15.015882>,  <27.207314, 14.281753, 15.095737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036619, 15.116426, 15.015882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743710, 14.851834, 14.951108>,  <26.567965, 14.693080, 14.912244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743710, 14.851834, 14.951108>,  <27.036619, 15.116426, 15.015882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743710, 14.851834, 14.951108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200422, 0.436582, -0.877056,
		0.650850, -0.609790, -0.452272,
		-0.732274, -0.661477, -0.161934,
		26.524027, 14.653391, 14.902528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.438334, 21.336157, 20.997900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.097975, 21.360771, 21.206587>,  <16.893759, 21.375540, 21.331799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.097975, 21.360771, 21.206587>,  <17.438334, 21.336157, 20.997900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097975, 21.360771, 21.206587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306392, -0.864844, -0.397704,
		0.426731, -0.498255, 0.754747,
		-0.850896, 0.061536, 0.521717,
		16.842707, 21.379232, 21.363102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.305025, 20.759386, 21.381950>,  <17.438334, 21.336157, 20.997900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.305025, 20.759386, 21.381950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.946985, 20.916798, 21.298113>,  <16.732161, 21.011244, 21.247810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.946985, 20.916798, 21.298113>,  <17.305025, 20.759386, 21.381950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946985, 20.916798, 21.298113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298492, -0.878102, -0.373951,
		-0.331205, -0.272162, 0.903455,
		-0.895101, 0.393528, -0.209593,
		16.678455, 21.034857, 21.235235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940176, 20.244787, 21.638603>,  <17.305025, 20.759386, 21.381950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940176, 20.244787, 21.638603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.669422, 20.428473, 21.408491>,  <16.506969, 20.538685, 21.270424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.669422, 20.428473, 21.408491>,  <16.940176, 20.244787, 21.638603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669422, 20.428473, 21.408491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391303, -0.886443, -0.247184,
		-0.623465, 0.057794, 0.779712,
		-0.676885, 0.459215, -0.575281,
		16.466356, 20.566236, 21.235907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.291758, 19.809256, 21.654362>,  <16.940176, 20.244787, 21.638603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.291758, 19.809256, 21.654362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.236975, 20.042345, 21.333942>,  <16.204105, 20.182199, 21.141691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.236975, 20.042345, 21.333942>,  <16.291758, 19.809256, 21.654362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.236975, 20.042345, 21.333942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255809, -0.802043, -0.539712,
		-0.956977, 0.130998, 0.258911,
		-0.136957, 0.582724, -0.801047,
		16.195889, 20.217163, 21.093628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490331, 19.747265, 21.372292>,  <16.291758, 19.809256, 21.654362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490331, 19.747265, 21.372292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.721107, 19.849926, 21.062126>,  <15.859573, 19.911524, 20.876026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.721107, 19.849926, 21.062126>,  <15.490331, 19.747265, 21.372292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721107, 19.849926, 21.062126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365128, -0.768168, -0.525927,
		-0.730630, 0.586554, -0.349476,
		0.576941, 0.256655, -0.775414,
		15.894190, 19.926922, 20.829502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064867, 19.810375, 20.883268>,  <15.490331, 19.747265, 21.372292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064867, 19.810375, 20.883268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.413018, 19.772520, 20.689987>,  <15.621909, 19.749807, 20.574018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.413018, 19.772520, 20.689987>,  <15.064867, 19.810375, 20.883268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.413018, 19.772520, 20.689987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399227, -0.710048, -0.580043,
		-0.288202, 0.697765, -0.655793,
		0.870378, -0.094640, -0.483204,
		15.674131, 19.744127, 20.545027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831596, 19.736748, 20.255222>,  <15.064867, 19.810375, 20.883268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.831596, 19.736748, 20.255222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.214679, 19.623474, 20.234797>,  <15.444529, 19.555511, 20.222540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.214679, 19.623474, 20.234797>,  <14.831596, 19.736748, 20.255222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.214679, 19.623474, 20.234797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220312, -0.607455, -0.763191,
		0.185101, 0.742163, -0.644152,
		0.957706, -0.283182, -0.051066,
		15.501990, 19.538519, 20.219477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077168, 19.719570, 19.580439>,  <14.831596, 19.736748, 20.255222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077168, 19.719570, 19.580439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.344581, 19.473272, 19.747253>,  <15.505029, 19.325493, 19.847342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.344581, 19.473272, 19.747253>,  <15.077168, 19.719570, 19.580439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344581, 19.473272, 19.747253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060543, -0.513849, -0.855742,
		0.741213, 0.597341, -0.306246,
		0.668534, -0.615746, 0.417037,
		15.545141, 19.288549, 19.872364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.399055, 19.447851, 18.982513>,  <15.077168, 19.719570, 19.580439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.399055, 19.447851, 18.982513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.547032, 19.222979, 19.278376>,  <15.635818, 19.088055, 19.455893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.547032, 19.222979, 19.278376>,  <15.399055, 19.447851, 18.982513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547032, 19.222979, 19.278376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212717, -0.723737, -0.656473,
		0.904375, 0.400194, -0.148154,
		0.369941, -0.562183, 0.739658,
		15.658014, 19.054323, 19.500273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.959892, 19.222075, 18.633749>,  <15.399055, 19.447851, 18.982513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.959892, 19.222075, 18.633749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.898694, 18.958305, 18.928165>,  <15.861975, 18.800043, 19.104815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.898694, 18.958305, 18.928165>,  <15.959892, 19.222075, 18.633749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898694, 18.958305, 18.928165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190766, -0.750507, -0.632731,
		0.969639, 0.043606, 0.240620,
		-0.152996, -0.659423, 0.736039,
		15.852795, 18.760479, 19.148977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.478895, 18.710491, 18.564634>,  <15.959892, 19.222075, 18.633749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.478895, 18.710491, 18.564634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.193604, 18.519934, 18.770296>,  <16.022429, 18.405600, 18.893692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.193604, 18.519934, 18.770296>,  <16.478895, 18.710491, 18.564634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193604, 18.519934, 18.770296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020654, -0.718927, -0.694778,
		0.700625, -0.506157, 0.502922,
		-0.713231, -0.476392, 0.514152,
		15.979634, 18.377016, 18.924541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663792, 18.072350, 18.783381>,  <16.478895, 18.710491, 18.564634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.663792, 18.072350, 18.783381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.267010, 18.047739, 18.739128>,  <16.028940, 18.032972, 18.712576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.267010, 18.047739, 18.739128>,  <16.663792, 18.072350, 18.783381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267010, 18.047739, 18.739128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115329, -0.799548, -0.589425,
		-0.052190, -0.597443, 0.800212,
		-0.991955, -0.061526, -0.110631,
		15.969423, 18.029282, 18.705938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564180, 17.374405, 18.693245>,  <16.663792, 18.072350, 18.783381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564180, 17.374405, 18.693245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.207375, 17.505280, 18.568502>,  <15.993291, 17.583803, 18.493656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.207375, 17.505280, 18.568502>,  <16.564180, 17.374405, 18.693245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.207375, 17.505280, 18.568502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018229, -0.663347, -0.748090,
		-0.451634, -0.672994, 0.585753,
		-0.892017, 0.327185, -0.311858,
		15.939770, 17.603436, 18.474945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180578, 16.764326, 18.646891>,  <16.564180, 17.374405, 18.693245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180578, 16.764326, 18.646891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.978951, 17.028461, 18.424227>,  <15.857975, 17.186943, 18.290628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.978951, 17.028461, 18.424227>,  <16.180578, 16.764326, 18.646891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978951, 17.028461, 18.424227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116846, -0.690748, -0.713593,
		-0.855724, -0.294655, 0.425340,
		-0.504067, 0.660338, -0.556660,
		15.827731, 17.226562, 18.257229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447859, 16.644064, 18.581978>,  <16.180578, 16.764326, 18.646891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447859, 16.644064, 18.581978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.546817, 16.847822, 18.252296>,  <15.606192, 16.970078, 18.054487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.546817, 16.847822, 18.252296>,  <15.447859, 16.644064, 18.581978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546817, 16.847822, 18.252296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206752, -0.803301, -0.558535,
		-0.946599, 0.308584, -0.093414,
		0.247395, 0.509395, -0.824204,
		15.621036, 17.000641, 18.005035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972677, 16.402674, 18.160192>,  <15.447859, 16.644064, 18.581978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972677, 16.402674, 18.160192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.234402, 16.578257, 17.913877>,  <15.391437, 16.683607, 17.766088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.234402, 16.578257, 17.913877>,  <14.972677, 16.402674, 18.160192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234402, 16.578257, 17.913877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182852, -0.698293, -0.692064,
		-0.733787, 0.565422, -0.376636,
		0.654310, 0.438959, -0.615787,
		15.430695, 16.709944, 17.729141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701687, 16.306656, 17.527107>,  <14.972677, 16.402674, 18.160192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701687, 16.306656, 17.527107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.080085, 16.393387, 17.430710>,  <15.307124, 16.445425, 17.372871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.080085, 16.393387, 17.430710>,  <14.701687, 16.306656, 17.527107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080085, 16.393387, 17.430710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067283, -0.595893, -0.800241,
		-0.317120, 0.773239, -0.549123,
		0.945996, 0.216826, -0.240995,
		15.363884, 16.458435, 17.358412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772967, 16.222042, 16.746166>,  <14.701687, 16.306656, 17.527107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772967, 16.222042, 16.746166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.154532, 16.225607, 16.866146>,  <15.383471, 16.227745, 16.938135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.154532, 16.225607, 16.866146>,  <14.772967, 16.222042, 16.746166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154532, 16.225607, 16.866146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233793, -0.648704, -0.724240,
		0.188125, 0.760988, -0.620891,
		0.953913, 0.008912, 0.299951,
		15.440706, 16.228281, 16.956131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277368, 16.522821, 16.187595>,  <14.772967, 16.222042, 16.746166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277368, 16.522821, 16.187595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.459185, 16.273724, 16.442335>,  <15.568275, 16.124266, 16.595181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.459185, 16.273724, 16.442335>,  <15.277368, 16.522821, 16.187595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.459185, 16.273724, 16.442335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241018, -0.602320, -0.761000,
		0.857497, 0.499400, -0.123688,
		0.454543, -0.622744, 0.636852,
		15.595548, 16.086901, 16.633390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.924464, 16.404406, 15.850972>,  <15.277368, 16.522821, 16.187595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.924464, 16.404406, 15.850972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.895149, 16.102816, 16.112093>,  <15.877561, 15.921862, 16.268764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.895149, 16.102816, 16.112093>,  <15.924464, 16.404406, 15.850972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.895149, 16.102816, 16.112093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169132, -0.654476, -0.736923,
		0.982865, 0.056402, 0.175486,
		-0.073287, -0.753976, 0.652801,
		15.873163, 15.876623, 16.307934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389275, 15.957924, 15.683504>,  <15.924464, 16.404406, 15.850972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389275, 15.957924, 15.683504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.157860, 15.728122, 15.915103>,  <16.019011, 15.590240, 16.054062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.157860, 15.728122, 15.915103>,  <16.389275, 15.957924, 15.683504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157860, 15.728122, 15.915103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083509, -0.747846, -0.658599,
		0.811369, -0.332673, 0.480634,
		-0.578539, -0.574504, 0.578997,
		15.984298, 15.555771, 16.088802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807510, 15.345210, 15.820249>,  <16.389275, 15.957924, 15.683504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807510, 15.345210, 15.820249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.411894, 15.296010, 15.852913>,  <16.174524, 15.266490, 15.872512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.411894, 15.296010, 15.852913>,  <16.807510, 15.345210, 15.820249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.411894, 15.296010, 15.852913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063133, -0.852335, -0.519171,
		0.133460, -0.508326, 0.850760,
		-0.989041, -0.123000, 0.081661,
		16.115181, 15.259110, 15.877411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163555, 14.705592, 15.486547>,  <16.807510, 15.345210, 15.820249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.163555, 14.705592, 15.486547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.558292, 14.642043, 15.474541>,  <17.795135, 14.603913, 15.467338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.558292, 14.642043, 15.474541>,  <17.163555, 14.705592, 15.486547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.558292, 14.642043, 15.474541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137245, 0.724984, 0.674953,
		-0.085473, -0.670192, 0.737250,
		0.986842, -0.158874, -0.030014,
		17.854345, 14.594381, 15.465536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.441425, 14.797080, 16.182117>,  <17.163555, 14.705592, 15.486547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.441425, 14.797080, 16.182117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.778217, 14.826136, 15.968278>,  <17.980291, 14.843569, 15.839973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.778217, 14.826136, 15.968278>,  <17.441425, 14.797080, 16.182117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778217, 14.826136, 15.968278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359674, 0.662996, 0.656560,
		0.402130, -0.745091, 0.532101,
		0.841978, 0.072639, -0.534600,
		18.030811, 14.847928, 15.807898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949579, 14.912671, 16.716621>,  <17.441425, 14.797080, 16.182117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.949579, 14.912671, 16.716621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.153152, 15.013850, 16.387501>,  <18.275297, 15.074557, 16.190029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.153152, 15.013850, 16.387501>,  <17.949579, 14.912671, 16.716621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.153152, 15.013850, 16.387501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617310, 0.558922, 0.553655,
		0.599928, -0.789698, 0.128308,
		0.508935, 0.252947, -0.822802,
		18.305832, 15.089734, 16.140659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642803, 14.735956, 16.874481>,  <17.949579, 14.912671, 16.716621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642803, 14.735956, 16.874481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.608725, 15.024777, 16.599854>,  <18.588278, 15.198071, 16.435076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.608725, 15.024777, 16.599854>,  <18.642803, 14.735956, 16.874481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.608725, 15.024777, 16.599854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474460, 0.635335, 0.609293,
		0.876144, -0.273839, -0.396716,
		-0.085199, 0.722054, -0.686571,
		18.583164, 15.241394, 16.393883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308348, 15.047020, 16.866293>,  <18.642803, 14.735956, 16.874481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308348, 15.047020, 16.866293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.050837, 15.304473, 16.700745>,  <18.896330, 15.458944, 16.601416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.050837, 15.304473, 16.700745>,  <19.308348, 15.047020, 16.866293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050837, 15.304473, 16.700745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421615, 0.749706, 0.510080,
		0.638587, 0.153882, -0.754007,
		-0.643776, 0.643632, -0.413873,
		18.857704, 15.497562, 16.576582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.682617, 15.657396, 16.609940>,  <19.308348, 15.047020, 16.866293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.682617, 15.657396, 16.609940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.317032, 15.815395, 16.647142>,  <19.097681, 15.910194, 16.669464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.317032, 15.815395, 16.647142>,  <19.682617, 15.657396, 16.609940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317032, 15.815395, 16.647142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390351, 0.793130, 0.467515,
		0.110901, 0.463597, -0.879079,
		-0.913962, 0.394997, 0.093007,
		19.042843, 15.933894, 16.675045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.779978, 16.323141, 16.587063>,  <19.682617, 15.657396, 16.609940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.779978, 16.323141, 16.587063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.422543, 16.283842, 16.762262>,  <19.208080, 16.260263, 16.867382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.422543, 16.283842, 16.762262>,  <19.779978, 16.323141, 16.587063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.422543, 16.283842, 16.762262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113575, 0.894521, 0.432358,
		-0.434278, 0.436097, -0.788176,
		-0.893590, -0.098247, 0.438000,
		19.154465, 16.254368, 16.893661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464159, 17.000957, 16.584303>,  <19.779978, 16.323141, 16.587063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464159, 17.000957, 16.584303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.238344, 16.803421, 16.848854>,  <19.102856, 16.684900, 17.007586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.238344, 16.803421, 16.848854>,  <19.464159, 17.000957, 16.584303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238344, 16.803421, 16.848854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066090, 0.825746, 0.560157,
		-0.822758, 0.272518, -0.498801,
		-0.564536, -0.493840, 0.661378,
		19.068983, 16.655270, 17.047268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.910570, 17.376682, 16.688890>,  <19.464159, 17.000957, 16.584303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.910570, 17.376682, 16.688890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.947519, 17.156902, 17.021053>,  <18.969688, 17.025034, 17.220350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.947519, 17.156902, 17.021053>,  <18.910570, 17.376682, 16.688890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.947519, 17.156902, 17.021053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016885, 0.834716, 0.550422,
		-0.995581, -0.036823, 0.086384,
		0.092374, -0.549448, 0.830406,
		18.975231, 16.992067, 17.270176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729519, 17.795618, 17.184708>,  <18.910570, 17.376682, 16.688890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729519, 17.795618, 17.184708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.837032, 17.486959, 17.415295>,  <18.901541, 17.301764, 17.553646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.837032, 17.486959, 17.415295>,  <18.729519, 17.795618, 17.184708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837032, 17.486959, 17.415295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032674, 0.605452, 0.795211,
		-0.962647, -0.194902, 0.187947,
		0.268781, -0.771649, 0.576468,
		18.917667, 17.255465, 17.588236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253679, 17.787249, 17.831697>,  <18.729519, 17.795618, 17.184708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253679, 17.787249, 17.831697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.599880, 17.614674, 17.933493>,  <18.807602, 17.511129, 17.994570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.599880, 17.614674, 17.933493>,  <18.253679, 17.787249, 17.831697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.599880, 17.614674, 17.933493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023853, 0.542988, 0.839401,
		-0.500333, -0.720436, 0.480250,
		0.865504, -0.431435, 0.254490,
		18.859531, 17.485243, 18.009840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.156538, 17.492369, 18.501947>,  <18.253679, 17.787249, 17.831697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.156538, 17.492369, 18.501947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.545120, 17.562450, 18.437975>,  <18.778269, 17.604500, 18.399591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.545120, 17.562450, 18.437975>,  <18.156538, 17.492369, 18.501947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545120, 17.562450, 18.437975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081240, 0.387700, 0.918199,
		0.222877, -0.904982, 0.362400,
		0.971456, 0.175204, -0.159930,
		18.836557, 17.615011, 18.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.550222, 17.381329, 19.167377>,  <18.156538, 17.492369, 18.501947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.550222, 17.381329, 19.167377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.770506, 17.615229, 18.929121>,  <18.902676, 17.755568, 18.786167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.770506, 17.615229, 18.929121>,  <18.550222, 17.381329, 19.167377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770506, 17.615229, 18.929121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295532, 0.530780, 0.794313,
		0.780628, -0.613467, 0.119493,
		0.550709, 0.584749, -0.595640,
		18.935719, 17.790653, 18.750429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310631, 17.500219, 19.403584>,  <18.550222, 17.381329, 19.167377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310631, 17.500219, 19.403584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.297850, 17.796282, 19.134912>,  <19.290180, 17.973919, 18.973709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.297850, 17.796282, 19.134912>,  <19.310631, 17.500219, 19.403584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.297850, 17.796282, 19.134912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207706, 0.662267, 0.719903,
		0.977669, -0.116509, -0.174896,
		-0.031953, 0.740154, -0.671678,
		19.288263, 18.018328, 18.933409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964981, 17.937489, 19.412642>,  <19.310631, 17.500219, 19.403584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964981, 17.937489, 19.412642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.649452, 18.161482, 19.311306>,  <19.460135, 18.295877, 19.250505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.649452, 18.161482, 19.311306>,  <19.964981, 17.937489, 19.412642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.649452, 18.161482, 19.311306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288769, 0.701526, 0.651517,
		0.542561, 0.440775, -0.715084,
		-0.788822, 0.559982, -0.253338,
		19.412806, 18.329477, 19.235304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154701, 18.626451, 19.540430>,  <19.964981, 17.937489, 19.412642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154701, 18.626451, 19.540430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.763136, 18.685268, 19.483706>,  <19.528196, 18.720558, 19.449671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.763136, 18.685268, 19.483706>,  <20.154701, 18.626451, 19.540430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.763136, 18.685268, 19.483706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029048, 0.787329, 0.615849,
		0.202205, 0.598743, -0.774997,
		-0.978912, 0.147040, -0.141809,
		19.469461, 18.729380, 19.441162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.108288, 19.249933, 19.262587>,  <20.154701, 18.626451, 19.540430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.108288, 19.249933, 19.262587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.750826, 19.160408, 19.418171>,  <19.536348, 19.106693, 19.511522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.750826, 19.160408, 19.418171>,  <20.108288, 19.249933, 19.262587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750826, 19.160408, 19.418171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102485, 0.742060, 0.662453,
		-0.436897, 0.631867, -0.640207,
		-0.893654, -0.223812, 0.388961,
		19.482729, 19.093264, 19.534859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654703, 19.967684, 19.199152>,  <20.108288, 19.249933, 19.262587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654703, 19.967684, 19.199152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.495729, 19.733814, 19.482052>,  <19.400345, 19.593493, 19.651793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.495729, 19.733814, 19.482052>,  <19.654703, 19.967684, 19.199152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495729, 19.733814, 19.482052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045336, 0.782305, 0.621243,
		-0.916510, 0.214839, -0.337422,
		-0.397434, -0.584673, 0.707251,
		19.376499, 19.558413, 19.694227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.014727, 20.431631, 19.552931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.051798, 20.131008, 19.814180>,  <19.074041, 19.950634, 19.970930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.051798, 20.131008, 19.814180>,  <19.014727, 20.431631, 19.552931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051798, 20.131008, 19.814180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076055, 0.659374, 0.747958,
		-0.992787, -0.019648, 0.118271,
		0.092680, -0.751558, 0.653124,
		19.079601, 19.905540, 20.010118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535877, 20.619413, 20.115456>,  <19.014727, 20.431631, 19.552931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535877, 20.619413, 20.115456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.800730, 20.372454, 20.285349>,  <18.959641, 20.224277, 20.387285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.800730, 20.372454, 20.285349>,  <18.535877, 20.619413, 20.115456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800730, 20.372454, 20.285349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003553, 0.564182, 0.825642,
		-0.749379, -0.548193, 0.371369,
		0.662131, -0.617400, 0.424735,
		18.999369, 20.187233, 20.412769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366257, 20.522747, 20.858786>,  <18.535877, 20.619413, 20.115456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366257, 20.522747, 20.858786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.737194, 20.373425, 20.848392>,  <18.959757, 20.283831, 20.842157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.737194, 20.373425, 20.848392>,  <18.366257, 20.522747, 20.858786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.737194, 20.373425, 20.848392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147682, 0.301299, 0.942024,
		-0.343837, -0.877417, 0.334539,
		0.927343, -0.373308, -0.025981,
		19.015398, 20.261433, 20.840599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535698, 20.273264, 21.470676>,  <18.366257, 20.522747, 20.858786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535698, 20.273264, 21.470676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.886307, 20.350410, 21.294262>,  <19.096672, 20.396698, 21.188414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.886307, 20.350410, 21.294262>,  <18.535698, 20.273264, 21.470676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886307, 20.350410, 21.294262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251769, 0.597223, 0.761536,
		0.410272, -0.778542, 0.474920,
		0.876521, 0.192867, -0.441037,
		19.149263, 20.408270, 21.161951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.064308, 20.141823, 21.949526>,  <18.535698, 20.273264, 21.470676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.064308, 20.141823, 21.949526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.250957, 20.382961, 21.690655>,  <19.362947, 20.527645, 21.535332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.250957, 20.382961, 21.690655>,  <19.064308, 20.141823, 21.949526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250957, 20.382961, 21.690655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318969, 0.567780, 0.758870,
		0.824938, -0.560535, 0.072649,
		0.466622, 0.602848, -0.647177,
		19.390944, 20.563816, 21.496502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750368, 20.218044, 22.205765>,  <19.064308, 20.141823, 21.949526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750368, 20.218044, 22.205765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.687391, 20.536556, 21.972132>,  <19.649605, 20.727663, 21.831951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.687391, 20.536556, 21.972132>,  <19.750368, 20.218044, 22.205765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687391, 20.536556, 21.972132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108627, 0.601833, 0.791200,
		0.981536, 0.061120, -0.181250,
		-0.157441, 0.796280, -0.584082,
		19.640160, 20.775440, 21.796907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257524, 20.734856, 22.422680>,  <19.750368, 20.218044, 22.205765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257524, 20.734856, 22.422680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.998493, 20.958546, 22.215637>,  <19.843075, 21.092760, 22.091412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.998493, 20.958546, 22.215637>,  <20.257524, 20.734856, 22.422680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998493, 20.958546, 22.215637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063451, 0.716485, 0.694711,
		0.759354, 0.417036, -0.499462,
		-0.647576, 0.559223, -0.517605,
		19.804220, 21.126312, 22.060356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579933, 21.279102, 22.327791>,  <20.257524, 20.734856, 22.422680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.579933, 21.279102, 22.327791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.207066, 21.414362, 22.276072>,  <19.983345, 21.495518, 22.245039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.207066, 21.414362, 22.276072>,  <20.579933, 21.279102, 22.327791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207066, 21.414362, 22.276072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186697, 0.755016, 0.628566,
		0.310170, 0.561790, -0.766933,
		-0.932169, 0.338147, -0.129299,
		19.927416, 21.515806, 22.237282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.624828, 21.955873, 22.088009>,  <20.579933, 21.279102, 22.327791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.624828, 21.955873, 22.088009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.270111, 21.910957, 22.267334>,  <20.057280, 21.884008, 22.374929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.270111, 21.910957, 22.267334>,  <20.624828, 21.955873, 22.088009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.270111, 21.910957, 22.267334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233827, 0.727712, 0.644795,
		-0.398647, 0.676629, -0.619075,
		-0.886795, -0.112289, 0.448314,
		20.004072, 21.877270, 22.401829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436380, 22.590399, 22.179489>,  <20.624828, 21.955873, 22.088009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436380, 22.590399, 22.179489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.205185, 22.406700, 22.449312>,  <20.066467, 22.296482, 22.611206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.205185, 22.406700, 22.449312>,  <20.436380, 22.590399, 22.179489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.205185, 22.406700, 22.449312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158909, 0.747450, 0.645032,
		-0.800424, 0.480013, -0.359039,
		-0.577987, -0.459245, 0.674555,
		20.031788, 22.268927, 22.651678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.161325, 23.184620, 22.550455>,  <20.436380, 22.590399, 22.179489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.161325, 23.184620, 22.550455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.086884, 22.867338, 22.782383>,  <20.042217, 22.676970, 22.921539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.086884, 22.867338, 22.782383>,  <20.161325, 23.184620, 22.550455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086884, 22.867338, 22.782383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059648, 0.579919, 0.812488,
		-0.980717, 0.185794, -0.060613,
		-0.186106, -0.793205, 0.579819,
		20.031052, 22.629377, 22.956329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695694, 23.440952, 23.154318>,  <20.161325, 23.184620, 22.550455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695694, 23.440952, 23.154318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.835247, 23.084890, 23.271559>,  <19.918980, 22.871254, 23.341904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.835247, 23.084890, 23.271559>,  <19.695694, 23.440952, 23.154318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.835247, 23.084890, 23.271559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300117, 0.402404, 0.864870,
		-0.887812, -0.213774, 0.407542,
		0.348883, -0.890153, 0.293102,
		19.939913, 22.817844, 23.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415882, 23.239525, 23.793179>,  <19.695694, 23.440952, 23.154318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415882, 23.239525, 23.793179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.765722, 23.048450, 23.759972>,  <19.975626, 22.933805, 23.740047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.765722, 23.048450, 23.759972>,  <19.415882, 23.239525, 23.793179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.765722, 23.048450, 23.759972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286711, 0.371471, 0.883066,
		-0.390988, -0.796132, 0.461846,
		0.874600, -0.477685, -0.083019,
		20.028103, 22.905146, 23.735065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515057, 22.792055, 24.484131>,  <19.415882, 23.239525, 23.793179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515057, 22.792055, 24.484131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.866447, 22.852631, 24.302872>,  <20.077282, 22.888977, 24.194117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.866447, 22.852631, 24.302872>,  <19.515057, 22.792055, 24.484131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.866447, 22.852631, 24.302872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360871, 0.411277, 0.837032,
		0.313129, -0.898842, 0.306648,
		0.878477, 0.151439, -0.453149,
		20.129990, 22.898064, 24.166927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.012650, 22.546333, 24.911808>,  <19.515057, 22.792055, 24.484131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.012650, 22.546333, 24.911808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.226170, 22.806229, 24.695328>,  <20.354280, 22.962166, 24.565439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.226170, 22.806229, 24.695328>,  <20.012650, 22.546333, 24.911808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.226170, 22.806229, 24.695328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384398, 0.383614, 0.839689,
		0.753191, -0.656262, -0.044986,
		0.533799, 0.649739, -0.541201,
		20.386309, 23.001150, 24.532967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.550264, 22.736418, 25.359232>,  <20.012650, 22.546333, 24.911808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.550264, 22.736418, 25.359232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.621763, 23.000164, 25.067125>,  <20.664661, 23.158411, 24.891861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.621763, 23.000164, 25.067125>,  <20.550264, 22.736418, 25.359232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.621763, 23.000164, 25.067125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551209, 0.547699, 0.629440,
		0.814996, -0.515039, -0.265548,
		0.178746, 0.659364, -0.730266,
		20.675386, 23.197973, 24.848045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371454, 22.786215, 25.222075>,  <20.550264, 22.736418, 25.359232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371454, 22.786215, 25.222075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.203234, 23.126350, 25.095545>,  <21.102303, 23.330431, 25.019627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.203234, 23.126350, 25.095545>,  <21.371454, 22.786215, 25.222075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.203234, 23.126350, 25.095545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514748, 0.510738, 0.688609,
		0.747110, 0.126768, -0.652501,
		-0.420550, 0.850339, -0.316323,
		21.077068, 23.381453, 25.000648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974930, 23.263412, 25.043179>,  <21.371454, 22.786215, 25.222075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974930, 23.263412, 25.043179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.639807, 23.468384, 25.118536>,  <21.438732, 23.591368, 25.163752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.639807, 23.468384, 25.118536>,  <21.974930, 23.263412, 25.043179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.639807, 23.468384, 25.118536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462428, 0.482590, 0.743820,
		0.290238, 0.710298, -0.641279,
		-0.837808, 0.512430, 0.188395,
		21.388464, 23.622112, 25.175055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.126816, 23.902172, 25.171045>,  <21.974930, 23.263412, 25.043179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.126816, 23.902172, 25.171045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.763000, 23.930359, 25.334888>,  <21.544712, 23.947271, 25.433195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.763000, 23.930359, 25.334888>,  <22.126816, 23.902172, 25.171045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763000, 23.930359, 25.334888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370670, 0.583336, 0.722719,
		-0.188012, 0.809168, -0.556685,
		-0.909536, 0.070467, 0.409608,
		21.490139, 23.951498, 25.457771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850172, 24.692665, 25.195723>,  <22.126816, 23.902172, 25.171045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850172, 24.692665, 25.195723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.677773, 24.459810, 25.471506>,  <21.574333, 24.320097, 25.636976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.677773, 24.459810, 25.471506>,  <21.850172, 24.692665, 25.195723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.677773, 24.459810, 25.471506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381006, 0.575214, 0.723854,
		-0.817969, 0.574670, -0.026120,
		-0.431001, -0.582138, 0.689459,
		21.548471, 24.285170, 25.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731335, 25.137346, 25.679779>,  <21.850172, 24.692665, 25.195723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731335, 25.137346, 25.679779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.673723, 24.788162, 25.866198>,  <21.639156, 24.578651, 25.978048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.673723, 24.788162, 25.866198>,  <21.731335, 25.137346, 25.679779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.673723, 24.788162, 25.866198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354603, 0.394150, 0.847881,
		-0.923857, 0.287382, 0.252784,
		-0.144031, -0.872959, 0.466045,
		21.630514, 24.526274, 26.006012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348726, 25.328386, 26.379587>,  <21.731335, 25.137346, 25.679779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348726, 25.328386, 26.379587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.551350, 24.984550, 26.406422>,  <21.672924, 24.778248, 26.422523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.551350, 24.984550, 26.406422>,  <21.348726, 25.328386, 26.379587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551350, 24.984550, 26.406422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495730, 0.354029, 0.793042,
		-0.705443, -0.368465, 0.605462,
		0.506559, -0.859591, 0.067088,
		21.703318, 24.726673, 26.426548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368376, 25.073336, 27.121044>,  <21.348726, 25.328386, 26.379587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368376, 25.073336, 27.121044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.678028, 24.947580, 26.901270>,  <21.863819, 24.872128, 26.769405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.678028, 24.947580, 26.901270>,  <21.368376, 25.073336, 27.121044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678028, 24.947580, 26.901270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630003, 0.467309, 0.620257,
		0.061755, -0.826307, 0.559824,
		0.774133, -0.314387, -0.549435,
		21.910269, 24.853264, 26.736439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745327, 25.598326, 27.199104>,  <21.368376, 25.073336, 27.121044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745327, 25.598326, 27.199104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.662512, 25.283962, 27.432165>,  <20.612823, 25.095345, 27.572002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.662512, 25.283962, 27.432165>,  <20.745327, 25.598326, 27.199104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.662512, 25.283962, 27.432165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815984, -0.467273, -0.340331,
		0.539727, 0.404974, 0.738032,
		-0.207037, -0.785908, 0.582652,
		20.600401, 25.048189, 27.606960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074713, 25.845123, 27.341326>,  <20.745327, 25.598326, 27.199104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074713, 25.845123, 27.341326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.724901, 26.039083, 27.344719>,  <19.515015, 26.155458, 27.346754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.724901, 26.039083, 27.344719>,  <20.074713, 25.845123, 27.341326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.724901, 26.039083, 27.344719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402697, -0.716308, -0.569857,
		-0.270248, -0.501772, 0.821700,
		-0.874529, 0.484899, 0.008481,
		19.462543, 26.184553, 27.347263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670345, 25.330393, 27.343157>,  <20.074713, 25.845123, 27.341326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.670345, 25.330393, 27.343157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.427217, 25.634598, 27.251789>,  <19.281342, 25.817122, 27.196968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.427217, 25.634598, 27.251789>,  <19.670345, 25.330393, 27.343157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427217, 25.634598, 27.251789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526214, -0.601192, -0.601388,
		-0.594663, -0.245368, 0.765618,
		-0.607844, 0.760502, -0.228391,
		19.244871, 25.862751, 27.183262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.006187, 25.017128, 27.399509>,  <19.670345, 25.330393, 27.343157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.006187, 25.017128, 27.399509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.940626, 25.337553, 27.169228>,  <18.901289, 25.529808, 27.031059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.940626, 25.337553, 27.169228>,  <19.006187, 25.017128, 27.399509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.940626, 25.337553, 27.169228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542807, -0.560540, -0.625424,
		-0.823709, 0.209988, 0.526696,
		-0.163903, 0.801062, -0.575705,
		18.891455, 25.577871, 26.996515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275064, 25.001497, 27.239838>,  <19.006187, 25.017128, 27.399509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275064, 25.001497, 27.239838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.452951, 25.218309, 26.954620>,  <18.559683, 25.348396, 26.783489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.452951, 25.218309, 26.954620>,  <18.275064, 25.001497, 27.239838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452951, 25.218309, 26.954620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504921, -0.505828, -0.699423,
		-0.739785, 0.671076, 0.048732,
		0.444716, 0.542029, -0.713045,
		18.586367, 25.380919, 26.740707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707249, 25.275866, 26.786646>,  <18.275064, 25.001497, 27.239838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707249, 25.275866, 26.786646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.047195, 25.289766, 26.576305>,  <18.251163, 25.298107, 26.450102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.047195, 25.289766, 26.576305>,  <17.707249, 25.275866, 26.786646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047195, 25.289766, 26.576305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455456, -0.453533, -0.766073,
		-0.265113, 0.890562, -0.369615,
		0.849867, 0.034753, -0.525849,
		18.302156, 25.300192, 26.418550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508535, 25.518347, 26.082554>,  <17.707249, 25.275866, 26.786646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508535, 25.518347, 26.082554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.864859, 25.338575, 26.055798>,  <18.078653, 25.230713, 26.039743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.864859, 25.338575, 26.055798>,  <17.508535, 25.518347, 26.082554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.864859, 25.338575, 26.055798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286978, -0.442358, -0.849684,
		0.352282, 0.776102, -0.523033,
		0.890809, -0.449428, -0.066889,
		18.132101, 25.203747, 26.035730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635080, 25.483734, 25.394314>,  <17.508535, 25.518347, 26.082554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635080, 25.483734, 25.394314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.907742, 25.225288, 25.531651>,  <18.071339, 25.070221, 25.614054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.907742, 25.225288, 25.531651>,  <17.635080, 25.483734, 25.394314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.907742, 25.225288, 25.531651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015343, -0.481777, -0.876160,
		0.731513, 0.591970, -0.338319,
		0.681655, -0.646113, 0.343343,
		18.112238, 25.031454, 25.634653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107517, 25.345507, 24.817411>,  <17.635080, 25.483734, 25.394314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107517, 25.345507, 24.817411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.134144, 25.054565, 25.090622>,  <18.150120, 24.880001, 25.254549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.134144, 25.054565, 25.090622>,  <18.107517, 25.345507, 24.817411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.134144, 25.054565, 25.090622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056236, -0.686192, -0.725243,
		0.996196, 0.009864, -0.086580,
		0.066564, -0.727353, 0.683027,
		18.154114, 24.836359, 25.295530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.684305, 24.897678, 24.577364>,  <18.107517, 25.345507, 24.817411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.684305, 24.897678, 24.577364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.428394, 24.692902, 24.806658>,  <18.274847, 24.570036, 24.944233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.428394, 24.692902, 24.806658>,  <18.684305, 24.897678, 24.577364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.428394, 24.692902, 24.806658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039633, -0.766838, -0.640616,
		0.767536, -0.387134, 0.510897,
		-0.639779, -0.511944, 0.573233,
		18.236460, 24.539318, 24.978628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045572, 24.331264, 24.708773>,  <18.684305, 24.897678, 24.577364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045572, 24.331264, 24.708773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.659615, 24.244555, 24.768089>,  <18.428040, 24.192530, 24.803679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.659615, 24.244555, 24.768089>,  <19.045572, 24.331264, 24.708773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659615, 24.244555, 24.768089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050145, -0.706277, -0.706157,
		0.257812, -0.673930, 0.692352,
		-0.964893, -0.216774, 0.148292,
		18.370146, 24.179522, 24.812576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.044321, 23.629702, 24.550121>,  <19.045572, 24.331264, 24.708773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.044321, 23.629702, 24.550121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.658184, 23.733757, 24.541718>,  <18.426502, 23.796190, 24.536676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.658184, 23.733757, 24.541718>,  <19.044321, 23.629702, 24.550121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.658184, 23.733757, 24.541718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203850, -0.801828, -0.561709,
		-0.162966, -0.537959, 0.827068,
		-0.965343, 0.260137, -0.021008,
		18.368582, 23.811798, 24.535416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647505, 22.999296, 24.568081>,  <19.044321, 23.629702, 24.550121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647505, 22.999296, 24.568081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.387362, 23.272686, 24.435476>,  <18.231276, 23.436720, 24.355913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.387362, 23.272686, 24.435476>,  <18.647505, 22.999296, 24.568081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387362, 23.272686, 24.435476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383404, -0.672092, -0.633478,
		-0.655763, -0.284893, 0.699150,
		-0.650366, 0.683468, -0.331504,
		18.192255, 23.477728, 24.336023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.050404, 22.689270, 24.603302>,  <18.647505, 22.999296, 24.568081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.050404, 22.689270, 24.603302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.995190, 22.958843, 24.312988>,  <17.962061, 23.120586, 24.138800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.995190, 22.958843, 24.312988>,  <18.050404, 22.689270, 24.603302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.995190, 22.958843, 24.312988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375982, -0.713599, -0.591112,
		-0.916288, 0.191287, 0.351888,
		-0.138035, 0.673933, -0.725783,
		17.953779, 23.161022, 24.095253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365431, 22.617250, 24.283751>,  <18.050404, 22.689270, 24.603302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.365431, 22.617250, 24.283751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.544010, 22.828838, 23.995064>,  <17.651157, 22.955791, 23.821852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.544010, 22.828838, 23.995064>,  <17.365431, 22.617250, 24.283751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.544010, 22.828838, 23.995064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375521, -0.621338, -0.687693,
		-0.812198, 0.578041, -0.078758,
		0.446450, 0.528968, -0.721717,
		17.677946, 22.987530, 23.778549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855507, 22.711498, 23.794701>,  <17.365431, 22.617250, 24.283751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855507, 22.711498, 23.794701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.196693, 22.753059, 23.590094>,  <17.401405, 22.777996, 23.467329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.196693, 22.753059, 23.590094>,  <16.855507, 22.711498, 23.794701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196693, 22.753059, 23.590094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352014, -0.609079, -0.710711,
		-0.385402, 0.786274, -0.482948,
		0.852966, 0.103905, -0.511519,
		17.452583, 22.784231, 23.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.541452, 22.936947, 23.201603>,  <16.855507, 22.711498, 23.794701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.541452, 22.936947, 23.201603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.909349, 22.843092, 23.075731>,  <17.130087, 22.786779, 23.000208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.909349, 22.843092, 23.075731>,  <16.541452, 22.936947, 23.201603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909349, 22.843092, 23.075731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387800, -0.419131, -0.820939,
		0.060734, 0.877082, -0.476485,
		0.919741, -0.234639, -0.314677,
		17.185272, 22.772699, 22.981329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557825, 23.090105, 22.488544>,  <16.541452, 22.936947, 23.201603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557825, 23.090105, 22.488544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.859066, 22.827566, 22.506641>,  <17.039810, 22.670042, 22.517500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.859066, 22.827566, 22.506641>,  <16.557825, 23.090105, 22.488544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859066, 22.827566, 22.506641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206233, -0.300817, -0.931116,
		0.624745, 0.691894, -0.361906,
		0.753102, -0.656347, 0.045243,
		17.084997, 22.630663, 22.520214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744398, 23.003365, 21.759825>,  <16.557825, 23.090105, 22.488544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744398, 23.003365, 21.759825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.909494, 22.693644, 21.951698>,  <17.008553, 22.507811, 22.066822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.909494, 22.693644, 21.951698>,  <16.744398, 23.003365, 21.759825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.909494, 22.693644, 21.951698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126702, -0.570321, -0.811591,
		0.901992, 0.274202, -0.333502,
		0.412743, -0.774304, 0.479683,
		17.033318, 22.461351, 22.095604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174448, 22.679131, 21.270950>,  <16.744398, 23.003365, 21.759825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174448, 22.679131, 21.270950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.131351, 22.374153, 21.526159>,  <17.105494, 22.191166, 21.679285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.131351, 22.374153, 21.526159>,  <17.174448, 22.679131, 21.270950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131351, 22.374153, 21.526159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260968, -0.597562, -0.758166,
		0.959316, -0.248189, -0.134591,
		-0.107742, -0.762444, 0.638020,
		17.099030, 22.145420, 21.717566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.494343, 22.058430, 20.986790>,  <17.174448, 22.679131, 21.270950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.494343, 22.058430, 20.986790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.254025, 21.901062, 21.265148>,  <17.109835, 21.806641, 21.432163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.254025, 21.901062, 21.265148>,  <17.494343, 22.058430, 20.986790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254025, 21.901062, 21.265148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282911, -0.709538, -0.645381,
		0.747669, -0.584617, 0.314983,
		-0.600793, -0.393419, 0.695894,
		17.073786, 21.783035, 21.473917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.800236, 15.954592, 6.561976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.965540, 15.744603, 6.264354>,  <22.064722, 15.618609, 6.085780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.965540, 15.744603, 6.264354>,  <21.800236, 15.954592, 6.561976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965540, 15.744603, 6.264354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675518, 0.371197, -0.637093,
		0.610648, 0.765909, -0.201227,
		0.413261, -0.524972, -0.744057,
		22.089518, 15.587111, 6.041137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932106, 16.455050, 5.883072>,  <21.800236, 15.954592, 6.561976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932106, 16.455050, 5.883072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.858246, 16.071754, 5.795727>,  <21.813929, 15.841777, 5.743320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.858246, 16.071754, 5.795727>,  <21.932106, 16.455050, 5.883072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858246, 16.071754, 5.795727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564420, 0.285282, -0.774625,
		0.804570, -0.019788, -0.593528,
		-0.184651, -0.958239, -0.218361,
		21.802851, 15.784283, 5.730219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.260254, 16.903921, 6.355140>,  <21.932106, 16.455050, 5.883072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.260254, 16.903921, 6.355140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318224, 17.274105, 6.495152>,  <22.353006, 17.496216, 6.579158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318224, 17.274105, 6.495152>,  <22.260254, 16.903921, 6.355140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318224, 17.274105, 6.495152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967958, -0.205932, 0.143699,
		0.205070, 0.317987, -0.925651,
		0.144927, 0.925460, 0.350029,
		22.361702, 17.551743, 6.600160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.909607, 16.696014, 6.371268>,  <22.260254, 16.903921, 6.355140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.909607, 16.696014, 6.371268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936544, 16.413015, 6.652669>,  <22.952707, 16.243216, 6.821509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936544, 16.413015, 6.652669>,  <22.909607, 16.696014, 6.371268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.936544, 16.413015, 6.652669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555457, -0.612313, -0.562618,
		0.828814, -0.352876, -0.434220,
		0.067344, -0.707496, 0.703501,
		22.956747, 16.200766, 6.863719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.047384, 16.017708, 5.974743>,  <22.909607, 16.696014, 6.371268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.047384, 16.017708, 5.974743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.912209, 15.908672, 6.335074>,  <22.831102, 15.843251, 6.551273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.912209, 15.908672, 6.335074>,  <23.047384, 16.017708, 5.974743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.912209, 15.908672, 6.335074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647615, -0.627169, -0.432729,
		0.682929, -0.729626, 0.035412,
		-0.337939, -0.272590, 0.900828,
		22.810827, 15.826896, 6.605323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.739975, 15.340293, 5.758169>,  <23.047384, 16.017708, 5.974743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.739975, 15.340293, 5.758169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.567577, 15.492336, 6.085525>,  <22.464138, 15.583562, 6.281938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.567577, 15.492336, 6.085525>,  <22.739975, 15.340293, 5.758169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.567577, 15.492336, 6.085525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845990, -0.485727, -0.219931,
		0.313916, -0.787138, 0.530914,
		-0.430996, 0.380108, 0.818389,
		22.438278, 15.606369, 6.331041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.355972, 14.791064, 6.066036>,  <22.739975, 15.340293, 5.758169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.355972, 14.791064, 6.066036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.180704, 15.092106, 6.262645>,  <22.075544, 15.272731, 6.380610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.180704, 15.092106, 6.262645>,  <22.355972, 14.791064, 6.066036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.180704, 15.092106, 6.262645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883074, -0.462538, -0.078993,
		0.167897, -0.468663, 0.867275,
		-0.438168, 0.752605, 0.491522,
		22.049253, 15.317887, 6.410102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.298368, 14.560715, 6.841538>,  <22.355972, 14.791064, 6.066036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.298368, 14.560715, 6.841538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.020754, 14.800466, 6.682008>,  <21.854185, 14.944316, 6.586290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.020754, 14.800466, 6.682008>,  <22.298368, 14.560715, 6.841538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.020754, 14.800466, 6.682008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659187, -0.751780, 0.017302,
		-0.289457, 0.274907, 0.916865,
		-0.694036, 0.599377, -0.398824,
		21.812544, 14.980279, 6.562361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.729500, 13.935879, 6.686526>,  <22.298368, 14.560715, 6.841538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.729500, 13.935879, 6.686526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.781164, 14.274311, 6.893394>,  <22.812162, 14.477370, 7.017515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.781164, 14.274311, 6.893394>,  <22.729500, 13.935879, 6.686526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.781164, 14.274311, 6.893394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054768, -0.526829, 0.848205,
		0.990110, -0.081232, -0.114385,
		0.129163, 0.846080, 0.517170,
		22.819914, 14.528135, 7.048545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.296089, 13.823009, 7.260526>,  <22.729500, 13.935879, 6.686526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.296089, 13.823009, 7.260526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.025122, 14.103874, 7.348226>,  <22.862541, 14.272394, 7.400846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.025122, 14.103874, 7.348226>,  <23.296089, 13.823009, 7.260526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.025122, 14.103874, 7.348226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198877, -0.461780, 0.864412,
		0.708205, 0.541963, 0.452462,
		-0.677417, 0.702165, 0.219251,
		22.821898, 14.314524, 7.414001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.476648, 14.042779, 7.927767>,  <23.296089, 13.823009, 7.260526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.476648, 14.042779, 7.927767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.100294, 14.173121, 7.890772>,  <22.874481, 14.251327, 7.868576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.100294, 14.173121, 7.890772>,  <23.476648, 14.042779, 7.927767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.100294, 14.173121, 7.890772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247224, -0.473974, 0.845121,
		0.231551, 0.818026, 0.526514,
		-0.940885, 0.325855, -0.092486,
		22.818029, 14.270878, 7.863027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.301661, 14.387186, 8.526959>,  <23.476648, 14.042779, 7.927767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.301661, 14.387186, 8.526959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.960705, 14.262749, 8.358837>,  <22.756132, 14.188087, 8.257964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.960705, 14.262749, 8.358837>,  <23.301661, 14.387186, 8.526959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.960705, 14.262749, 8.358837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224443, -0.508315, 0.831409,
		-0.472294, 0.803017, 0.363458,
		-0.852387, -0.311094, -0.420305,
		22.704988, 14.169420, 8.232745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.812445, 14.515847, 9.035800>,  <23.301661, 14.387186, 8.526959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.812445, 14.515847, 9.035800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.642826, 14.251323, 8.788300>,  <22.541056, 14.092608, 8.639799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.642826, 14.251323, 8.788300>,  <22.812445, 14.515847, 9.035800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642826, 14.251323, 8.788300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025466, -0.674242, 0.738071,
		-0.905283, 0.328733, 0.269068,
		-0.424045, -0.661311, -0.618752,
		22.515612, 14.052930, 8.602674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.031990, 14.429340, 9.144132>,  <22.812445, 14.515847, 9.035800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.031990, 14.429340, 9.144132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.181404, 14.085386, 9.004951>,  <22.271051, 13.879014, 8.921442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.181404, 14.085386, 9.004951>,  <22.031990, 14.429340, 9.144132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.181404, 14.085386, 9.004951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338206, -0.475528, 0.812089,
		-0.863765, -0.185663, -0.468444,
		0.373533, -0.859885, -0.347953,
		22.293465, 13.827421, 8.900565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.548485, 13.842999, 9.460484>,  <22.031990, 14.429340, 9.144132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.548485, 13.842999, 9.460484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.883162, 13.680354, 9.313724>,  <22.083967, 13.582767, 9.225668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.883162, 13.680354, 9.313724>,  <21.548485, 13.842999, 9.460484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.883162, 13.680354, 9.313724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120599, -0.790264, 0.600782,
		-0.534231, -0.458422, -0.710244,
		0.836692, -0.406611, -0.366898,
		22.134169, 13.558371, 9.203654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471308, 13.149669, 9.736191>,  <21.548485, 13.842999, 9.460484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471308, 13.149669, 9.736191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.846769, 13.159155, 9.598576>,  <22.072046, 13.164846, 9.516006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.846769, 13.159155, 9.598576>,  <21.471308, 13.149669, 9.736191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.846769, 13.159155, 9.598576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273318, -0.659508, 0.700248,
		-0.210289, -0.751324, -0.625533,
		0.938657, 0.023715, -0.344038,
		22.128366, 13.166269, 9.495364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.650719, 12.513902, 9.529422>,  <21.471308, 13.149669, 9.736191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.650719, 12.513902, 9.529422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.986200, 12.712764, 9.618340>,  <22.187489, 12.832081, 9.671690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.986200, 12.712764, 9.618340>,  <21.650719, 12.513902, 9.529422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.986200, 12.712764, 9.618340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123872, -0.571643, 0.811098,
		0.530314, -0.652734, -0.541022,
		0.838703, 0.497154, 0.222294,
		22.237812, 12.861910, 9.685028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060463, 11.994145, 9.750004>,  <21.650719, 12.513902, 9.529422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060463, 11.994145, 9.750004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.221241, 12.338801, 9.873952>,  <22.317707, 12.545595, 9.948320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.221241, 12.338801, 9.873952>,  <22.060463, 11.994145, 9.750004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221241, 12.338801, 9.873952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186088, -0.408215, 0.893718,
		0.896556, -0.301561, -0.324420,
		0.401943, 0.861639, 0.309870,
		22.341824, 12.597293, 9.966913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.672045, 11.762538, 10.018384>,  <22.060463, 11.994145, 9.750004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.672045, 11.762538, 10.018384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.621145, 12.116436, 10.197731>,  <22.590607, 12.328775, 10.305339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.621145, 12.116436, 10.197731>,  <22.672045, 11.762538, 10.018384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.621145, 12.116436, 10.197731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288420, -0.399504, 0.870179,
		0.949011, 0.240045, -0.204342,
		-0.127247, 0.884745, 0.448368,
		22.582972, 12.381860, 10.332241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.127211, 11.762252, 10.479033>,  <22.672045, 11.762538, 10.018384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.127211, 11.762252, 10.479033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.906601, 12.072708, 10.601297>,  <22.774235, 12.258982, 10.674656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.906601, 12.072708, 10.601297>,  <23.127211, 11.762252, 10.479033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.906601, 12.072708, 10.601297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049902, -0.335072, 0.940870,
		0.832666, 0.534164, 0.146068,
		-0.551522, 0.776142, 0.305659,
		22.741144, 12.305551, 10.692995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.439545, 12.128851, 11.053680>,  <23.127211, 11.762252, 10.479033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.439545, 12.128851, 11.053680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.053892, 12.226718, 11.094847>,  <22.822500, 12.285439, 11.119547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.053892, 12.226718, 11.094847>,  <23.439545, 12.128851, 11.053680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.053892, 12.226718, 11.094847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013117, -0.343343, 0.939119,
		0.265108, 0.906782, 0.327818,
		-0.964130, 0.244668, 0.102917,
		22.764654, 12.300118, 11.125722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.333876, 12.612576, 11.746788>,  <23.439545, 12.128851, 11.053680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.333876, 12.612576, 11.746788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.991528, 12.425550, 11.658365>,  <22.786119, 12.313334, 11.605311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.991528, 12.425550, 11.658365>,  <23.333876, 12.612576, 11.746788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.991528, 12.425550, 11.658365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109626, -0.253697, 0.961051,
		-0.505438, 0.846769, 0.165874,
		-0.855871, -0.467568, -0.221056,
		22.734766, 12.285279, 11.592049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075464, 12.597724, 12.377264>,  <23.333876, 12.612576, 11.746788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075464, 12.597724, 12.377264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.816673, 12.362309, 12.183339>,  <22.661398, 12.221061, 12.066984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.816673, 12.362309, 12.183339>,  <23.075464, 12.597724, 12.377264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.816673, 12.362309, 12.183339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187697, -0.493325, 0.849353,
		-0.739045, 0.640511, 0.208705,
		-0.646979, -0.588537, -0.484811,
		22.622580, 12.185748, 12.037896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295944, 12.488760, 12.755807>,  <23.075464, 12.597724, 12.377264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295944, 12.488760, 12.755807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.327391, 12.167743, 12.519251>,  <22.346258, 11.975132, 12.377317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.327391, 12.167743, 12.519251>,  <22.295944, 12.488760, 12.755807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.327391, 12.167743, 12.519251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040114, -0.590200, 0.806260,
		-0.996098, -0.087108, -0.014205,
		0.078615, -0.802544, -0.591391,
		22.350975, 11.926980, 12.341833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722841, 12.078351, 12.890228>,  <22.295944, 12.488760, 12.755807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722841, 12.078351, 12.890228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.991320, 11.821638, 12.741845>,  <22.152407, 11.667610, 12.652816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.991320, 11.821638, 12.741845>,  <21.722841, 12.078351, 12.890228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991320, 11.821638, 12.741845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169873, -0.620279, 0.765766,
		-0.721554, -0.450962, -0.525350,
		0.671195, -0.641784, -0.370958,
		22.192678, 11.629103, 12.630558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370291, 11.430834, 12.919345>,  <21.722841, 12.078351, 12.890228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370291, 11.430834, 12.919345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.756834, 11.332601, 12.888764>,  <21.988760, 11.273661, 12.870416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.756834, 11.332601, 12.888764>,  <21.370291, 11.430834, 12.919345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.756834, 11.332601, 12.888764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157541, -0.800105, 0.578803,
		-0.203313, -0.547285, -0.811876,
		0.966356, -0.245582, -0.076452,
		22.046741, 11.258925, 12.865829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.484035, 10.724895, 13.092248>,  <21.370291, 11.430834, 12.919345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.484035, 10.724895, 13.092248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864487, 10.832808, 13.152341>,  <22.092758, 10.897555, 13.188396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864487, 10.832808, 13.152341>,  <21.484035, 10.724895, 13.092248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864487, 10.832808, 13.152341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051924, -0.619321, 0.783419,
		0.304395, -0.737332, -0.603063,
		0.951130, 0.269782, 0.150233,
		22.149826, 10.913742, 13.197411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.819210, 10.107950, 13.243789>,  <21.484035, 10.724895, 13.092248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.819210, 10.107950, 13.243789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.043346, 10.401728, 13.396949>,  <22.177828, 10.577994, 13.488845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.043346, 10.401728, 13.396949>,  <21.819210, 10.107950, 13.243789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.043346, 10.401728, 13.396949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129617, -0.534353, 0.835264,
		0.818059, -0.418400, -0.394615,
		0.560338, 0.734444, 0.382900,
		22.211449, 10.622061, 13.511819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.353674, 9.721203, 13.604360>,  <21.819210, 10.107950, 13.243789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.353674, 9.721203, 13.604360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.324842, 10.084402, 13.769451>,  <22.307545, 10.302321, 13.868506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.324842, 10.084402, 13.769451>,  <22.353674, 9.721203, 13.604360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.324842, 10.084402, 13.769451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097177, -0.405444, 0.908940,
		0.992654, 0.105621, -0.059014,
		-0.072077, 0.907997, 0.412730,
		22.303219, 10.356801, 13.893270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.749811, 9.640785, 14.221703>,  <22.353674, 9.721203, 13.604360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.749811, 9.640785, 14.221703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.538574, 9.971838, 14.297751>,  <22.411833, 10.170469, 14.343381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.538574, 9.971838, 14.297751>,  <22.749811, 9.640785, 14.221703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.538574, 9.971838, 14.297751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164961, -0.319603, 0.933082,
		0.833011, 0.461390, 0.305306,
		-0.528091, 0.827631, 0.190122,
		22.380146, 10.220127, 14.354788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.035114, 10.094071, 14.750832>,  <22.749811, 9.640785, 14.221703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.035114, 10.094071, 14.750832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.637838, 10.065479, 14.714029>,  <22.399473, 10.048324, 14.691948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.637838, 10.065479, 14.714029>,  <23.035114, 10.094071, 14.750832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.637838, 10.065479, 14.714029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050193, -0.450143, 0.891545,
		-0.105143, 0.890091, 0.443489,
		-0.993190, -0.071480, -0.092006,
		22.339882, 10.044035, 14.686427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623381, 10.572186, 15.260324>,  <23.035114, 10.094071, 14.750832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623381, 10.572186, 15.260324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.452982, 10.221854, 15.169594>,  <22.350742, 10.011655, 15.115155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.452982, 10.221854, 15.169594>,  <22.623381, 10.572186, 15.260324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.452982, 10.221854, 15.169594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097668, -0.293767, 0.950874,
		-0.899437, 0.382916, 0.210685,
		-0.425997, -0.875829, -0.226826,
		22.325184, 9.959105, 15.101546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.202442, 10.885156, 14.882147>,  <22.623381, 10.572186, 15.260324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.202442, 10.885156, 14.882147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.175411, 10.967338, 14.491614>,  <23.159193, 11.016646, 14.257295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.175411, 10.967338, 14.491614>,  <23.202442, 10.885156, 14.882147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.175411, 10.967338, 14.491614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987231, 0.155252, -0.035664,
		0.144251, -0.966274, -0.213323,
		-0.067580, 0.205454, -0.976331,
		23.155138, 11.028974, 14.198715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639189, 10.437131, 14.396904>,  <23.202442, 10.885156, 14.882147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639189, 10.437131, 14.396904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.576210, 10.778495, 14.198148>,  <23.538424, 10.983314, 14.078894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.576210, 10.778495, 14.198148>,  <23.639189, 10.437131, 14.396904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.576210, 10.778495, 14.198148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959481, 0.013134, -0.281468,
		-0.233682, -0.521074, -0.820899,
		-0.157448, 0.853411, -0.496891,
		23.528976, 11.034518, 14.049081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.759731, 10.305446, 13.737178>,  <23.639189, 10.437131, 14.396904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.759731, 10.305446, 13.737178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.848721, 10.688564, 13.809984>,  <23.902115, 10.918436, 13.853668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.848721, 10.688564, 13.809984>,  <23.759731, 10.305446, 13.737178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.848721, 10.688564, 13.809984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948904, -0.169869, -0.265944,
		-0.223801, 0.231881, -0.946649,
		0.222474, 0.957797, 0.182016,
		23.915462, 10.975904, 13.864589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.964457, 10.760469, 13.063659>,  <23.759731, 10.305446, 13.737178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.964457, 10.760469, 13.063659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149252, 10.894042, 13.392306>,  <24.260128, 10.974186, 13.589495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.149252, 10.894042, 13.392306>,  <23.964457, 10.760469, 13.063659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.149252, 10.894042, 13.392306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884801, -0.237043, -0.401172,
		0.060795, 0.912305, -0.404973,
		0.461987, 0.333931, 0.821619,
		24.287848, 10.994222, 13.638792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548529, 11.162302, 12.828566>,  <23.964457, 10.760469, 13.063659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548529, 11.162302, 12.828566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.597010, 11.006885, 13.193935>,  <24.626099, 10.913634, 13.413157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.597010, 11.006885, 13.193935>,  <24.548529, 11.162302, 12.828566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597010, 11.006885, 13.193935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867175, -0.406343, -0.287910,
		0.483029, 0.826995, 0.287685,
		0.121201, -0.388542, 0.913425,
		24.633369, 10.890322, 13.467963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993841, 11.581859, 12.383589>,  <24.548529, 11.162302, 12.828566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993841, 11.581859, 12.383589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.337296, 11.644026, 12.578973>,  <25.543367, 11.681326, 12.696203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.337296, 11.644026, 12.578973>,  <24.993841, 11.581859, 12.383589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337296, 11.644026, 12.578973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030079, 0.966561, -0.254667,
		-0.511706, 0.203973, 0.834597,
		0.858634, 0.155418, 0.488460,
		25.594885, 11.690651, 12.725511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842075, 12.336288, 12.638964>,  <24.993841, 11.581859, 12.383589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842075, 12.336288, 12.638964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.227406, 12.228960, 12.637805>,  <25.458603, 12.164563, 12.637110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.227406, 12.228960, 12.637805>,  <24.842075, 12.336288, 12.638964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227406, 12.228960, 12.637805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261464, 0.941021, -0.214746,
		0.060346, 0.206113, 0.976666,
		0.963325, -0.268322, -0.002896,
		25.516403, 12.148463, 12.636936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125547, 12.917832, 12.870410>,  <24.842075, 12.336288, 12.638964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125547, 12.917832, 12.870410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415319, 12.716413, 12.682096>,  <25.589184, 12.595561, 12.569109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415319, 12.716413, 12.682096>,  <25.125547, 12.917832, 12.870410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415319, 12.716413, 12.682096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372870, 0.860645, -0.346782,
		0.579799, 0.075679, 0.811237,
		0.724432, -0.503550, -0.470783,
		25.632648, 12.565348, 12.540862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648159, 13.368668, 13.035184>,  <25.125547, 12.917832, 12.870410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648159, 13.368668, 13.035184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.765636, 13.153857, 12.718868>,  <25.836123, 13.024971, 12.529078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.765636, 13.153857, 12.718868>,  <25.648159, 13.368668, 13.035184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765636, 13.153857, 12.718868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243268, 0.842025, -0.481471,
		0.924426, -0.050968, 0.377939,
		0.293695, -0.537025, -0.790789,
		25.853745, 12.992749, 12.481631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332155, 13.536561, 12.945239>,  <25.648159, 13.368668, 13.035184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332155, 13.536561, 12.945239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.184256, 13.402802, 12.598491>,  <26.095516, 13.322547, 12.390442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.184256, 13.402802, 12.598491>,  <26.332155, 13.536561, 12.945239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184256, 13.402802, 12.598491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092067, 0.915212, -0.392314,
		0.924561, -0.224866, -0.307608,
		-0.369744, -0.334398, -0.866872,
		26.073332, 13.302484, 12.338429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879269, 13.734358, 12.573537>,  <26.332155, 13.536561, 12.945239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879269, 13.734358, 12.573537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.542408, 13.689476, 12.362560>,  <26.340292, 13.662547, 12.235974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.542408, 13.689476, 12.362560>,  <26.879269, 13.734358, 12.573537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542408, 13.689476, 12.362560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150853, 0.890038, -0.430204,
		0.517713, -0.441862, -0.732619,
		-0.842150, -0.112204, -0.527441,
		26.289762, 13.655814, 12.204328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118830, 13.926279, 11.936158>,  <26.879269, 13.734358, 12.573537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118830, 13.926279, 11.936158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.720585, 13.958648, 11.917375>,  <26.481638, 13.978069, 11.906104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.720585, 13.958648, 11.917375>,  <27.118830, 13.926279, 11.936158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720585, 13.958648, 11.917375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092585, 0.924409, -0.369994,
		0.013469, -0.372719, -0.927847,
		-0.995614, 0.080921, -0.046959,
		26.421902, 13.982924, 11.903287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997444, 14.254898, 11.302608>,  <27.118830, 13.926279, 11.936158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997444, 14.254898, 11.302608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.643738, 14.298481, 11.484247>,  <26.431515, 14.324631, 11.593231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.643738, 14.298481, 11.484247>,  <26.997444, 14.254898, 11.302608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643738, 14.298481, 11.484247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052799, 0.942839, -0.329040,
		-0.463993, -0.314934, -0.827965,
		-0.884264, 0.108957, 0.454099,
		26.378458, 14.331168, 11.620477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593639, 14.473994, 10.773343>,  <26.997444, 14.254898, 11.302608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593639, 14.473994, 10.773343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.372578, 14.585945, 11.087348>,  <26.239941, 14.653115, 11.275751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.372578, 14.585945, 11.087348>,  <26.593639, 14.473994, 10.773343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372578, 14.585945, 11.087348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214584, 0.862383, -0.458529,
		-0.805312, -0.421859, -0.416542,
		-0.552653, 0.279876, 0.785012,
		26.206781, 14.669908, 11.322851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018047, 14.715398, 10.396324>,  <26.593639, 14.473994, 10.773343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018047, 14.715398, 10.396324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.014297, 14.866060, 10.766847>,  <26.012049, 14.956457, 10.989161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.014297, 14.866060, 10.766847>,  <26.018047, 14.715398, 10.396324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014297, 14.866060, 10.766847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187665, 0.909224, -0.371609,
		-0.982188, -0.177318, 0.062164,
		-0.009372, 0.376655, 0.926306,
		26.011486, 14.979057, 11.044739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412182, 15.029299, 10.510873>,  <26.018047, 14.715398, 10.396324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412182, 15.029299, 10.510873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.601789, 15.230301, 10.800091>,  <25.715555, 15.350902, 10.973621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.601789, 15.230301, 10.800091>,  <25.412182, 15.029299, 10.510873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601789, 15.230301, 10.800091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391613, 0.855792, -0.338024,
		-0.788635, -0.122923, 0.602449,
		0.474020, 0.502504, 0.723045,
		25.743996, 15.381052, 11.017004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.981293, 15.416656, 10.771142>,  <25.412182, 15.029299, 10.510873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.981293, 15.416656, 10.771142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.327194, 15.598360, 10.856792>,  <25.534735, 15.707382, 10.908183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.327194, 15.598360, 10.856792>,  <24.981293, 15.416656, 10.771142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327194, 15.598360, 10.856792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419776, 0.887877, -0.188315,
		-0.275661, 0.072962, 0.958482,
		0.864754, 0.454259, 0.214126,
		25.586620, 15.734637, 10.921030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863146, 16.017786, 11.243787>,  <24.981293, 15.416656, 10.771142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863146, 16.017786, 11.243787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.212206, 16.103310, 11.068166>,  <25.421642, 16.154623, 10.962793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.212206, 16.103310, 11.068166>,  <24.863146, 16.017786, 11.243787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212206, 16.103310, 11.068166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281097, 0.955105, -0.093586,
		0.399332, 0.205084, 0.893574,
		0.872650, 0.213809, -0.439053,
		25.474001, 16.167452, 10.936450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091816, 16.585011, 11.637657>,  <24.863146, 16.017786, 11.243787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091816, 16.585011, 11.637657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.309429, 16.577885, 11.302107>,  <25.439997, 16.573608, 11.100777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.309429, 16.577885, 11.302107>,  <25.091816, 16.585011, 11.637657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309429, 16.577885, 11.302107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143469, 0.983076, -0.113922,
		0.826708, 0.182330, 0.532269,
		0.544032, -0.017816, -0.838876,
		25.472639, 16.572540, 11.050445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372440, 17.183849, 11.680737>,  <25.091816, 16.585011, 11.637657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372440, 17.183849, 11.680737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.429493, 17.055439, 11.306231>,  <25.463724, 16.978394, 11.081526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.429493, 17.055439, 11.306231>,  <25.372440, 17.183849, 11.680737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429493, 17.055439, 11.306231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080624, 0.946564, -0.312274,
		0.986487, -0.030946, 0.160893,
		0.142632, -0.321026, -0.936268,
		25.472282, 16.959131, 11.025350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<20.132013, 17.798929, 18.132210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742653, 17.753368, 18.211725>,  <19.509037, 17.726032, 18.259434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742653, 17.753368, 18.211725>,  <20.132013, 17.798929, 18.132210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.742653, 17.753368, 18.211725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046771, -0.750593, -0.659107,
		0.224284, -0.650873, 0.725300,
		-0.973401, -0.113904, 0.198788,
		19.450632, 17.719196, 18.271362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018160, 17.093578, 18.176901>,  <20.132013, 17.798929, 18.132210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018160, 17.093578, 18.176901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653883, 17.245422, 18.111744>,  <19.435316, 17.336529, 18.072649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653883, 17.245422, 18.111744>,  <20.018160, 17.093578, 18.176901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653883, 17.245422, 18.111744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281359, -0.858747, -0.428241,
		-0.302447, -0.344166, 0.888862,
		-0.910694, 0.379609, -0.162892,
		19.380674, 17.359304, 18.062876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625452, 16.516197, 18.408663>,  <20.018160, 17.093578, 18.176901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625452, 16.516197, 18.408663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.414598, 16.750723, 18.162617>,  <19.288086, 16.891438, 18.014990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.414598, 16.750723, 18.162617>,  <19.625452, 16.516197, 18.408663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.414598, 16.750723, 18.162617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266472, -0.801390, -0.535506,
		-0.806924, -0.118369, 0.578672,
		-0.527130, 0.586313, -0.615119,
		19.256458, 16.926617, 17.978083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991272, 16.224430, 18.309160>,  <19.625452, 16.516197, 18.408663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.991272, 16.224430, 18.309160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991455, 16.473164, 17.995901>,  <18.991564, 16.622404, 17.807945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991455, 16.473164, 17.995901>,  <18.991272, 16.224430, 18.309160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.991455, 16.473164, 17.995901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386835, -0.722069, -0.573563,
		-0.922149, 0.303211, 0.240218,
		0.000457, 0.621836, -0.783148,
		18.991592, 16.659714, 17.760958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398598, 16.023998, 17.996080>,  <18.991272, 16.224430, 18.309160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398598, 16.023998, 17.996080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610773, 16.218874, 17.718582>,  <18.738079, 16.335800, 17.552084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610773, 16.218874, 17.718582>,  <18.398598, 16.023998, 17.996080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610773, 16.218874, 17.718582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149892, -0.751566, -0.642402,
		-0.834367, 0.444741, -0.325633,
		0.530438, 0.487190, -0.693745,
		18.769905, 16.365030, 17.510458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961065, 16.274078, 17.432751>,  <18.398598, 16.023998, 17.996080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961065, 16.274078, 17.432751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.329367, 16.252327, 17.278217>,  <18.550348, 16.239277, 17.185497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.329367, 16.252327, 17.278217>,  <17.961065, 16.274078, 17.432751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.329367, 16.252327, 17.278217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295289, -0.744313, -0.599001,
		-0.254980, 0.665613, -0.701387,
		0.920755, -0.054379, -0.386334,
		18.605593, 16.236013, 17.162317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819658, 16.267834, 16.773598>,  <17.961065, 16.274078, 17.432751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819658, 16.267834, 16.773598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209934, 16.187286, 16.739010>,  <18.444099, 16.138958, 16.718256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209934, 16.187286, 16.739010>,  <17.819658, 16.267834, 16.773598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209934, 16.187286, 16.739010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212416, -0.771919, -0.599183,
		0.053907, 0.602986, -0.795929,
		0.975691, -0.201368, -0.086472,
		18.502642, 16.126875, 16.713068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037645, 16.349808, 16.025705>,  <17.819658, 16.267834, 16.773598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037645, 16.349808, 16.025705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293188, 16.094685, 16.197781>,  <18.446514, 15.941610, 16.301025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293188, 16.094685, 16.197781>,  <18.037645, 16.349808, 16.025705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293188, 16.094685, 16.197781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202510, -0.678876, -0.705774,
		0.742194, 0.363771, -0.562866,
		0.638856, -0.637808, 0.430190,
		18.484844, 15.903342, 16.326838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518873, 16.166407, 15.441524>,  <18.037645, 16.349808, 16.025705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518873, 16.166407, 15.441524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540728, 15.896291, 15.735735>,  <18.553841, 15.734221, 15.912262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540728, 15.896291, 15.735735>,  <18.518873, 16.166407, 15.441524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.540728, 15.896291, 15.735735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286536, -0.716250, -0.636305,
		0.956510, -0.175990, -0.232627,
		0.054636, -0.675288, 0.735527,
		18.557119, 15.693705, 15.956393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717093, 15.605873, 15.067207>,  <18.518873, 16.166407, 15.441524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717093, 15.605873, 15.067207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612226, 15.438565, 15.415073>,  <18.549307, 15.338181, 15.623794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612226, 15.438565, 15.415073>,  <18.717093, 15.605873, 15.067207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612226, 15.438565, 15.415073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263024, -0.836097, -0.481415,
		0.928487, -0.354954, 0.109181,
		-0.262166, -0.418270, 0.869666,
		18.533577, 15.313085, 15.675973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184441, 14.928353, 15.203359>,  <18.717093, 15.605873, 15.067207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184441, 14.928353, 15.203359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832148, 14.924785, 15.392771>,  <18.620771, 14.922644, 15.506418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832148, 14.924785, 15.392771>,  <19.184441, 14.928353, 15.203359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.832148, 14.924785, 15.392771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242164, -0.850761, -0.466436,
		0.407023, -0.525477, 0.747132,
		-0.880732, -0.008922, 0.473531,
		18.567928, 14.922109, 15.534830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078190, 14.223751, 15.342885>,  <19.184441, 14.928353, 15.203359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.078190, 14.223751, 15.342885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707571, 14.372295, 15.366884>,  <18.485199, 14.461422, 15.381284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707571, 14.372295, 15.366884>,  <19.078190, 14.223751, 15.342885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707571, 14.372295, 15.366884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369329, -0.867743, -0.332594,
		-0.071450, -0.330323, 0.941160,
		-0.926548, 0.371361, 0.059997,
		18.429607, 14.483704, 15.384883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.678438, 13.711305, 15.503128>,  <19.078190, 14.223751, 15.342885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.678438, 13.711305, 15.503128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435123, 13.969628, 15.318557>,  <18.289135, 14.124622, 15.207814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435123, 13.969628, 15.318557>,  <18.678438, 13.711305, 15.503128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.435123, 13.969628, 15.318557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478565, -0.762212, -0.435900,
		-0.633214, -0.044330, 0.772706,
		-0.608289, 0.645808, -0.461428,
		18.252636, 14.163371, 15.180128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026518, 13.464046, 15.591701>,  <18.678438, 13.711305, 15.503128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026518, 13.464046, 15.591701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035620, 13.719444, 15.283984>,  <18.041080, 13.872683, 15.099355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035620, 13.719444, 15.283984>,  <18.026518, 13.464046, 15.591701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035620, 13.719444, 15.283984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454350, -0.678828, -0.576852,
		-0.890532, 0.362653, 0.274654,
		0.022754, 0.638494, -0.769290,
		18.042446, 13.910993, 15.053197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763458, 12.837546, 15.564412>,  <18.026518, 13.464046, 15.591701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.763458, 12.837546, 15.564412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.097292, 12.694975, 15.732424>,  <18.297592, 12.609432, 15.833231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.097292, 12.694975, 15.732424>,  <17.763458, 12.837546, 15.564412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097292, 12.694975, 15.732424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462606, -0.039480, 0.885684,
		-0.299101, -0.933488, -0.197835,
		0.834586, -0.356429, 0.420029,
		18.347668, 12.588047, 15.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.613810, 12.257857, 16.002474>,  <17.763458, 12.837546, 15.564412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.613810, 12.257857, 16.002474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932596, 12.446599, 16.153311>,  <18.123869, 12.559844, 16.243813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.932596, 12.446599, 16.153311>,  <17.613810, 12.257857, 16.002474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.932596, 12.446599, 16.153311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460325, 0.070257, 0.884966,
		0.391083, -0.878872, 0.273199,
		0.796966, 0.471856, 0.377091,
		18.171686, 12.588156, 16.266438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569132, 12.073123, 16.668159>,  <17.613810, 12.257857, 16.002474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569132, 12.073123, 16.668159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855640, 12.351886, 16.682455>,  <18.027546, 12.519143, 16.691032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855640, 12.351886, 16.682455>,  <17.569132, 12.073123, 16.668159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.855640, 12.351886, 16.682455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272500, 0.232191, 0.933719,
		0.642417, -0.678534, 0.356219,
		0.716271, 0.696907, 0.035737,
		18.070522, 12.560958, 16.693176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851505, 12.065455, 17.349985>,  <17.569132, 12.073123, 16.668159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851505, 12.065455, 17.349985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975636, 12.418853, 17.209623>,  <18.050114, 12.630892, 17.125406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975636, 12.418853, 17.209623>,  <17.851505, 12.065455, 17.349985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975636, 12.418853, 17.209623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206223, 0.422906, 0.882396,
		0.927992, -0.201467, 0.313436,
		0.310328, 0.883494, -0.350906,
		18.068733, 12.683901, 17.104351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253929, 12.358377, 17.870722>,  <17.851505, 12.065455, 17.349985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253929, 12.358377, 17.870722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168810, 12.671159, 17.636366>,  <18.117739, 12.858828, 17.495752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168810, 12.671159, 17.636366>,  <18.253929, 12.358377, 17.870722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.168810, 12.671159, 17.636366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010674, 0.601447, 0.798841,
		0.977038, 0.163738, -0.136333,
		-0.212798, 0.781953, -0.585889,
		18.104971, 12.905745, 17.460600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656952, 12.943703, 18.071583>,  <18.253929, 12.358377, 17.870722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656952, 12.943703, 18.071583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339073, 13.107271, 17.892145>,  <18.148346, 13.205413, 17.784483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339073, 13.107271, 17.892145>,  <18.656952, 12.943703, 18.071583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.339073, 13.107271, 17.892145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083652, 0.805759, 0.586306,
		0.601213, 0.428410, -0.674542,
		-0.794698, 0.408922, -0.448596,
		18.100664, 13.229948, 17.757566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823847, 13.542021, 18.038616>,  <18.656952, 12.943703, 18.071583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823847, 13.542021, 18.038616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.431046, 13.590508, 17.980679>,  <18.195366, 13.619601, 17.945917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.431046, 13.590508, 17.980679>,  <18.823847, 13.542021, 18.038616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431046, 13.590508, 17.980679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023301, 0.683263, 0.729800,
		0.187431, 0.720040, -0.668141,
		-0.982002, 0.121219, -0.144842,
		18.136446, 13.626874, 17.937225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680988, 14.245031, 18.048609>,  <18.823847, 13.542021, 18.038616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.680988, 14.245031, 18.048609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311071, 14.103971, 18.105738>,  <18.089121, 14.019334, 18.140015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311071, 14.103971, 18.105738>,  <18.680988, 14.245031, 18.048609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311071, 14.103971, 18.105738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135228, 0.655518, 0.742974,
		-0.355633, 0.667782, -0.653905,
		-0.924791, -0.352653, 0.142821,
		18.033634, 13.998175, 18.148584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214003, 14.813996, 18.242331>,  <18.680988, 14.245031, 18.048609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214003, 14.813996, 18.242331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.005800, 14.486380, 18.338865>,  <17.880878, 14.289809, 18.396786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.005800, 14.486380, 18.338865>,  <18.214003, 14.813996, 18.242331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.005800, 14.486380, 18.338865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374638, 0.473050, 0.797414,
		-0.767281, 0.324644, -0.553070,
		-0.520506, -0.819042, 0.241339,
		17.849649, 14.240667, 18.411266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521967, 14.991517, 18.301645>,  <18.214003, 14.813996, 18.242331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521967, 14.991517, 18.301645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566422, 14.662798, 18.525179>,  <17.593094, 14.465567, 18.659300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566422, 14.662798, 18.525179>,  <17.521967, 14.991517, 18.301645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.566422, 14.662798, 18.525179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190947, 0.534184, 0.823521,
		-0.975288, -0.198233, -0.097551,
		0.111139, -0.821797, 0.558835,
		17.599764, 14.416259, 18.692829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020157, 15.022867, 18.724566>,  <17.521967, 14.991517, 18.301645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.020157, 15.022867, 18.724566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.255442, 14.771340, 18.927975>,  <17.396612, 14.620424, 19.050020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.255442, 14.771340, 18.927975>,  <17.020157, 15.022867, 18.724566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255442, 14.771340, 18.927975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124327, 0.551019, 0.825179,
		-0.799093, -0.548603, 0.245937,
		0.588212, -0.628818, 0.508522,
		17.431906, 14.582695, 19.080532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.706249, 14.939473, 19.358809>,  <17.020157, 15.022867, 18.724566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.706249, 14.939473, 19.358809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092373, 14.842439, 19.397440>,  <17.324047, 14.784218, 19.420618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092373, 14.842439, 19.397440>,  <16.706249, 14.939473, 19.358809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092373, 14.842439, 19.397440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052412, 0.542386, 0.838493,
		-0.255789, -0.804344, 0.536286,
		0.965311, -0.242585, 0.096579,
		17.381966, 14.769663, 19.426414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842632, 14.745800, 20.056110>,  <16.706249, 14.939473, 19.358809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842632, 14.745800, 20.056110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.214617, 14.803985, 19.921045>,  <17.437807, 14.838896, 19.840006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.214617, 14.803985, 19.921045>,  <16.842632, 14.745800, 20.056110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.214617, 14.803985, 19.921045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248591, 0.427885, 0.868975,
		0.270882, -0.892052, 0.361755,
		0.929960, 0.145461, -0.337663,
		17.493605, 14.847623, 19.819746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235041, 14.619971, 20.625563>,  <16.842632, 14.745800, 20.056110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235041, 14.619971, 20.625563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503290, 14.819580, 20.406021>,  <17.664240, 14.939345, 20.274296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503290, 14.819580, 20.406021>,  <17.235041, 14.619971, 20.625563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503290, 14.819580, 20.406021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344318, 0.445960, 0.826175,
		0.657048, -0.743032, 0.127247,
		0.670622, 0.499023, -0.548856,
		17.704477, 14.969287, 20.241364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421038, 14.067191, 21.221718>,  <17.235041, 14.619971, 20.625563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421038, 14.067191, 21.221718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178898, 13.990248, 21.530664>,  <17.033613, 13.944081, 21.716032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178898, 13.990248, 21.530664>,  <17.421038, 14.067191, 21.221718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.178898, 13.990248, 21.530664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594337, -0.536216, -0.599363,
		0.529448, -0.821870, 0.210272,
		-0.605350, -0.192359, 0.772366,
		16.997293, 13.932540, 21.762375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376375, 13.358696, 21.285288>,  <17.421038, 14.067191, 21.221718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376375, 13.358696, 21.285288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055672, 13.510843, 21.469679>,  <16.863249, 13.602132, 21.580315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055672, 13.510843, 21.469679>,  <17.376375, 13.358696, 21.285288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.055672, 13.510843, 21.469679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591780, -0.613086, -0.523376,
		0.083544, -0.692420, 0.716642,
		-0.801759, 0.380369, 0.460979,
		16.815144, 13.624954, 21.607973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906801, 12.734498, 21.403063>,  <17.376375, 13.358696, 21.285288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906801, 12.734498, 21.403063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656847, 13.044294, 21.442417>,  <16.506874, 13.230172, 21.466030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656847, 13.044294, 21.442417>,  <16.906801, 12.734498, 21.403063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656847, 13.044294, 21.442417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704887, -0.505518, -0.497581,
		-0.335634, -0.380285, 0.861820,
		-0.624887, 0.774490, 0.098388,
		16.469381, 13.276642, 21.471933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371767, 12.471932, 21.757479>,  <16.906801, 12.734498, 21.403063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371767, 12.471932, 21.757479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192511, 12.782340, 21.579956>,  <16.084957, 12.968585, 21.473442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192511, 12.782340, 21.579956>,  <16.371767, 12.471932, 21.757479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192511, 12.782340, 21.579956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761498, -0.591427, -0.265206,
		-0.468283, 0.219108, 0.855980,
		-0.448142, 0.776019, -0.443806,
		16.058067, 13.015145, 21.446814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705400, 12.409726, 21.981604>,  <16.371767, 12.471932, 21.757479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705400, 12.409726, 21.981604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682788, 12.637337, 21.653454>,  <15.669220, 12.773903, 21.456564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682788, 12.637337, 21.653454>,  <15.705400, 12.409726, 21.981604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682788, 12.637337, 21.653454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740165, -0.575336, -0.348060,
		-0.670045, 0.587534, 0.453699,
		-0.056532, 0.569028, -0.820373,
		15.665829, 12.808045, 21.407341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977010, 12.340638, 21.859629>,  <15.705400, 12.409726, 21.981604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.977010, 12.340638, 21.859629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169988, 12.450741, 21.527008>,  <15.285774, 12.516802, 21.327435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.169988, 12.450741, 21.527008>,  <14.977010, 12.340638, 21.859629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169988, 12.450741, 21.527008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663433, -0.505037, -0.552082,
		-0.571928, 0.818030, -0.061039,
		0.482446, 0.275256, -0.831553,
		15.314721, 12.533318, 21.277542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.385889, 12.449672, 21.443373>,  <14.977010, 12.340638, 21.859629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.385889, 12.449672, 21.443373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678960, 12.433154, 21.171644>,  <14.854802, 12.423244, 21.008606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678960, 12.433154, 21.171644>,  <14.385889, 12.449672, 21.443373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.678960, 12.433154, 21.171644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603449, -0.500964, -0.620391,
		-0.314698, 0.864483, -0.391964,
		0.732677, -0.041294, -0.679323,
		14.898763, 12.420766, 20.967848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215828, 12.725780, 20.737404>,  <14.385889, 12.449672, 21.443373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215828, 12.725780, 20.737404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527294, 12.485802, 20.663923>,  <14.714174, 12.341815, 20.619835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527294, 12.485802, 20.663923>,  <14.215828, 12.725780, 20.737404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527294, 12.485802, 20.663923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527384, -0.467201, -0.709640,
		0.339919, 0.649454, -0.680194,
		0.778666, -0.599943, -0.183701,
		14.760894, 12.305819, 20.608812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.290257, 12.649886, 19.969740>,  <14.215828, 12.725780, 20.737404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.290257, 12.649886, 19.969740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467223, 12.338184, 20.147293>,  <14.573402, 12.151163, 20.253824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.467223, 12.338184, 20.147293>,  <14.290257, 12.649886, 19.969740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.467223, 12.338184, 20.147293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488535, -0.624483, -0.609388,
		0.752066, 0.052750, -0.656973,
		0.442414, -0.779255, 0.443883,
		14.599947, 12.104408, 20.280458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599861, 12.317080, 19.467493>,  <14.290257, 12.649886, 19.969740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599861, 12.317080, 19.467493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549031, 12.033420, 19.744896>,  <14.518534, 11.863223, 19.911339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549031, 12.033420, 19.744896>,  <14.599861, 12.317080, 19.467493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.549031, 12.033420, 19.744896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421865, -0.594148, -0.684849,
		0.897709, -0.379595, -0.223666,
		-0.127074, -0.709152, 0.693509,
		14.510909, 11.820674, 19.952950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671599, 11.694591, 19.064327>,  <14.599861, 12.317080, 19.467493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671599, 11.694591, 19.064327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490456, 11.564982, 19.396576>,  <14.381769, 11.487218, 19.595924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490456, 11.564982, 19.396576>,  <14.671599, 11.694591, 19.064327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490456, 11.564982, 19.396576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423388, -0.741726, -0.520178,
		0.784640, -0.587242, 0.198711,
		-0.452860, -0.324020, 0.830620,
		14.354598, 11.467776, 19.645761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894680, 11.061678, 19.154297>,  <14.671599, 11.694591, 19.064327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894680, 11.061678, 19.154297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529421, 11.085649, 19.315577>,  <14.310266, 11.100031, 19.412344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529421, 11.085649, 19.315577>,  <14.894680, 11.061678, 19.154297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.529421, 11.085649, 19.315577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305211, -0.756165, -0.578844,
		0.270196, -0.651632, 0.708781,
		-0.913149, 0.059927, 0.403198,
		14.255476, 11.103626, 19.436535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<18.732357, 17.514387, 25.890596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.069382, 17.302422, 25.852057>,  <19.271597, 17.175243, 25.828932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.069382, 17.302422, 25.852057>,  <18.732357, 17.514387, 25.890596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.069382, 17.302422, 25.852057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466861, -0.629351, -0.621256,
		0.268572, 0.568428, -0.777662,
		0.842562, -0.529912, -0.096351,
		19.322149, 17.143448, 25.823151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744179, 17.478514, 25.187822>,  <18.732357, 17.514387, 25.890596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744179, 17.478514, 25.187822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.973001, 17.203333, 25.366470>,  <19.110296, 17.038223, 25.473660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.973001, 17.203333, 25.366470>,  <18.744179, 17.478514, 25.187822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973001, 17.203333, 25.366470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329813, -0.691491, -0.642700,
		0.750982, 0.220361, -0.622469,
		0.572058, -0.687954, 0.446620,
		19.144619, 16.996946, 25.500456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148726, 17.153788, 24.665607>,  <18.744179, 17.478514, 25.187822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148726, 17.153788, 24.665607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.215763, 16.871445, 24.940905>,  <19.255985, 16.702040, 25.106083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.215763, 16.871445, 24.940905>,  <19.148726, 17.153788, 24.665607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.215763, 16.871445, 24.940905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207068, -0.707747, -0.675439,
		0.963864, -0.029312, -0.264776,
		0.167596, -0.705858, 0.688241,
		19.266043, 16.659687, 25.147377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.599140, 16.619255, 24.433561>,  <19.148726, 17.153788, 24.665607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.599140, 16.619255, 24.433561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.360104, 16.466537, 24.715588>,  <19.216681, 16.374907, 24.884804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.360104, 16.466537, 24.715588>,  <19.599140, 16.619255, 24.433561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.360104, 16.466537, 24.715588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301970, -0.707439, -0.639018,
		0.742764, -0.594781, 0.307470,
		-0.597592, -0.381792, 0.705066,
		19.180826, 16.351999, 24.927107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604158, 15.942206, 24.193008>,  <19.599140, 16.619255, 24.433561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604158, 15.942206, 24.193008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.312067, 15.958115, 24.465826>,  <19.136812, 15.967660, 24.629517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.312067, 15.958115, 24.465826>,  <19.604158, 15.942206, 24.193008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.312067, 15.958115, 24.465826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477621, -0.743538, -0.468007,
		0.488512, -0.667510, 0.561948,
		-0.730229, 0.039771, 0.682044,
		19.092999, 15.970046, 24.670439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427044, 15.194229, 24.387632>,  <19.604158, 15.942206, 24.193008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427044, 15.194229, 24.387632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097366, 15.406381, 24.467033>,  <18.899559, 15.533671, 24.514673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.097366, 15.406381, 24.467033>,  <19.427044, 15.194229, 24.387632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.097366, 15.406381, 24.467033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548280, -0.659595, -0.514124,
		-0.141750, -0.532572, 0.834430,
		-0.824194, 0.530378, 0.198501,
		18.850107, 15.565495, 24.526585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.904737, 14.829069, 24.446098>,  <19.427044, 15.194229, 24.387632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.904737, 14.829069, 24.446098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.669151, 15.144951, 24.377409>,  <18.527800, 15.334480, 24.336195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.669151, 15.144951, 24.377409>,  <18.904737, 14.829069, 24.446098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669151, 15.144951, 24.377409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556794, -0.550518, -0.622021,
		-0.585749, -0.270734, 0.763938,
		-0.588964, 0.789704, -0.171722,
		18.492462, 15.381863, 24.325891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162611, 14.516409, 24.428402>,  <18.904737, 14.829069, 24.446098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162611, 14.516409, 24.428402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.136644, 14.873689, 24.250422>,  <18.121065, 15.088057, 24.143633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.136644, 14.873689, 24.250422>,  <18.162611, 14.516409, 24.428402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.136644, 14.873689, 24.250422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567799, -0.399735, -0.719595,
		-0.820604, 0.205928, 0.533107,
		-0.064917, 0.893200, -0.444949,
		18.117168, 15.141648, 24.116938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394205, 14.726078, 24.341785>,  <18.162611, 14.516409, 24.428402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394205, 14.726078, 24.341785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.622051, 14.918364, 24.075117>,  <17.758759, 15.033734, 23.915115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.622051, 14.918364, 24.075117>,  <17.394205, 14.726078, 24.341785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.622051, 14.918364, 24.075117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585972, -0.331265, -0.739527,
		-0.576346, 0.811898, 0.092990,
		0.569616, 0.480713, -0.666673,
		17.792936, 15.062577, 23.875114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879507, 14.915135, 23.895243>,  <17.394205, 14.726078, 24.341785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879507, 14.915135, 23.895243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.235294, 14.921346, 23.712547>,  <17.448767, 14.925072, 23.602930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.235294, 14.921346, 23.712547>,  <16.879507, 14.915135, 23.895243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.235294, 14.921346, 23.712547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405375, -0.434634, -0.804216,
		-0.210999, 0.900473, -0.380299,
		0.889466, 0.015525, -0.456737,
		17.502134, 14.926003, 23.575525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.653805, 15.133050, 23.160618>,  <16.879507, 14.915135, 23.895243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.653805, 15.133050, 23.160618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.027874, 14.995246, 23.127729>,  <17.252316, 14.912563, 23.107996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.027874, 14.995246, 23.127729>,  <16.653805, 15.133050, 23.160618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027874, 14.995246, 23.127729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158890, -0.200596, -0.966703,
		0.316546, 0.917101, -0.242331,
		0.935175, -0.344510, -0.082220,
		17.308426, 14.891893, 23.103064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056473, 15.459774, 22.641825>,  <16.653805, 15.133050, 23.160618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056473, 15.459774, 22.641825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.214090, 15.093034, 22.667490>,  <17.308661, 14.872990, 22.682888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.214090, 15.093034, 22.667490>,  <17.056473, 15.459774, 22.641825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.214090, 15.093034, 22.667490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357684, -0.217281, -0.908213,
		0.846636, 0.334925, -0.413560,
		0.394042, -0.916850, 0.064161,
		17.332302, 14.817979, 22.686739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116652, 15.222166, 21.970673>,  <17.056473, 15.459774, 22.641825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116652, 15.222166, 21.970673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.177221, 14.880676, 22.169962>,  <17.213562, 14.675782, 22.289536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.177221, 14.880676, 22.169962>,  <17.116652, 15.222166, 21.970673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177221, 14.880676, 22.169962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386121, -0.515074, -0.765251,
		0.909935, -0.076497, -0.407635,
		0.151423, -0.853725, 0.498221,
		17.222649, 14.624558, 22.319427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.354095, 14.788086, 21.423800>,  <17.116652, 15.222166, 21.970673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.354095, 14.788086, 21.423800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.236757, 14.540602, 21.715319>,  <17.166353, 14.392112, 21.890230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.236757, 14.540602, 21.715319>,  <17.354095, 14.788086, 21.423800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236757, 14.540602, 21.715319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293445, -0.667261, -0.684583,
		0.909856, -0.414682, 0.014181,
		-0.293347, -0.618710, 0.728797,
		17.148754, 14.354989, 21.933958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889194, 14.610382, 20.956882>,  <17.354095, 14.788086, 21.423800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889194, 14.610382, 20.956882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.900141, 14.942990, 20.734955>,  <17.906710, 15.142555, 20.601797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.900141, 14.942990, 20.734955>,  <17.889194, 14.610382, 20.956882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900141, 14.942990, 20.734955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596139, 0.431954, 0.676783,
		0.802415, -0.349272, -0.483880,
		0.027368, 0.831520, -0.554820,
		17.908352, 15.192447, 20.568508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656340, 14.804595, 20.760908>,  <17.889194, 14.610382, 20.956882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656340, 14.804595, 20.760908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.430719, 15.134748, 20.751202>,  <18.295347, 15.332840, 20.745378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.430719, 15.134748, 20.751202>,  <18.656340, 14.804595, 20.760908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430719, 15.134748, 20.751202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731768, 0.513260, 0.448420,
		0.382572, 0.235175, -0.893494,
		-0.564051, 0.825383, -0.024266,
		18.261503, 15.382363, 20.743921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107763, 15.359324, 20.709713>,  <18.656340, 14.804595, 20.760908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.107763, 15.359324, 20.709713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.767775, 15.547722, 20.804127>,  <18.563782, 15.660760, 20.860775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.767775, 15.547722, 20.804127>,  <19.107763, 15.359324, 20.709713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767775, 15.547722, 20.804127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526431, 0.741942, 0.415202,
		0.020432, 0.477167, -0.878575,
		-0.849972, 0.470992, 0.236036,
		18.512783, 15.689019, 20.874937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233191, 16.022415, 20.427834>,  <19.107763, 15.359324, 20.709713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233191, 16.022415, 20.427834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.950411, 16.032566, 20.710556>,  <18.780743, 16.038656, 20.880190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.950411, 16.032566, 20.710556>,  <19.233191, 16.022415, 20.427834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950411, 16.032566, 20.710556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437930, 0.800444, 0.409277,
		-0.555372, 0.598871, -0.576988,
		-0.706951, 0.025379, 0.706808,
		18.738325, 16.040180, 20.922598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.250830, 16.787191, 20.633698>,  <19.233191, 16.022415, 20.427834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.250830, 16.787191, 20.633698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.014576, 16.630705, 20.916002>,  <18.872824, 16.536814, 21.085386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.014576, 16.630705, 20.916002>,  <19.250830, 16.787191, 20.633698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014576, 16.630705, 20.916002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323658, 0.686330, 0.651303,
		-0.739186, 0.613108, -0.278750,
		-0.590634, -0.391215, 0.705764,
		18.837385, 16.513340, 21.127731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816238, 17.274954, 20.948629>,  <19.250830, 16.787191, 20.633698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816238, 17.274954, 20.948629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.856354, 16.986191, 21.222502>,  <18.880423, 16.812933, 21.386826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.856354, 16.986191, 21.222502>,  <18.816238, 17.274954, 20.948629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.856354, 16.986191, 21.222502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437035, 0.650175, 0.621508,
		-0.893835, 0.236899, 0.380706,
		0.100291, -0.721908, 0.684683,
		18.886440, 16.769619, 21.427906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484964, 17.547495, 21.652958>,  <18.816238, 17.274954, 20.948629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484964, 17.547495, 21.652958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.747259, 17.251425, 21.712492>,  <18.904636, 17.073784, 21.748213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.747259, 17.251425, 21.712492>,  <18.484964, 17.547495, 21.652958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747259, 17.251425, 21.712492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592115, 0.626489, 0.506864,
		-0.468412, -0.244241, 0.849079,
		0.655736, -0.740174, 0.148837,
		18.943979, 17.029373, 21.757143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597633, 17.548979, 22.408989>,  <18.484964, 17.547495, 21.652958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597633, 17.548979, 22.408989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896259, 17.339409, 22.244967>,  <19.075436, 17.213667, 22.146553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.896259, 17.339409, 22.244967>,  <18.597633, 17.548979, 22.408989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896259, 17.339409, 22.244967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664205, 0.551375, 0.504795,
		-0.038379, -0.649223, 0.759629,
		0.746565, -0.523923, -0.410056,
		19.120228, 17.182232, 22.121950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062307, 17.420048, 22.912830>,  <18.597633, 17.548979, 22.408989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062307, 17.420048, 22.912830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.294336, 17.343840, 22.596043>,  <19.433554, 17.298115, 22.405970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.294336, 17.343840, 22.596043>,  <19.062307, 17.420048, 22.912830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.294336, 17.343840, 22.596043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739278, 0.531377, 0.413650,
		0.342026, -0.825434, 0.449084,
		0.580074, -0.190519, -0.791970,
		19.468359, 17.286684, 22.358452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.693871, 17.245211, 23.161232>,  <19.062307, 17.420048, 22.912830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.693871, 17.245211, 23.161232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.777872, 17.327637, 22.778936>,  <19.828274, 17.377092, 22.549559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.777872, 17.327637, 22.778936>,  <19.693871, 17.245211, 23.161232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.777872, 17.327637, 22.778936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857075, 0.431568, 0.281375,
		0.470448, -0.878229, -0.085984,
		0.210004, 0.206067, -0.955738,
		19.840874, 17.389456, 22.492214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449289, 17.045403, 23.008480>,  <19.693871, 17.245211, 23.161232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449289, 17.045403, 23.008480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.359541, 17.296423, 22.710262>,  <20.305693, 17.447035, 22.531332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.359541, 17.296423, 22.710262>,  <20.449289, 17.045403, 23.008480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359541, 17.296423, 22.710262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779907, 0.574347, 0.248739,
		0.584298, -0.525646, -0.618298,
		-0.224369, 0.627552, -0.745545,
		20.292231, 17.484688, 22.486599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019339, 17.224634, 22.762821>,  <20.449289, 17.045403, 23.008480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019339, 17.224634, 22.762821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.786825, 17.525618, 22.638941>,  <20.647318, 17.706207, 22.564611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.786825, 17.525618, 22.638941>,  <21.019339, 17.224634, 22.762821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786825, 17.525618, 22.638941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696003, 0.656954, 0.289814,
		0.421534, -0.047089, -0.905589,
		-0.581283, 0.752459, -0.309702,
		20.612440, 17.751356, 22.546030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512276, 17.742054, 22.569687>,  <21.019339, 17.224634, 22.762821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512276, 17.742054, 22.569687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.170593, 17.942999, 22.623297>,  <20.965584, 18.063566, 22.655462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.170593, 17.942999, 22.623297>,  <21.512276, 17.742054, 22.569687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170593, 17.942999, 22.623297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516834, 0.792333, 0.324177,
		0.056661, 0.346183, -0.936454,
		-0.854208, 0.502360, 0.134025,
		20.914331, 18.093706, 22.663504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.616528, 18.496687, 22.316183>,  <21.512276, 17.742054, 22.569687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.616528, 18.496687, 22.316183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.310894, 18.513605, 22.573673>,  <21.127514, 18.523756, 22.728168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.310894, 18.513605, 22.573673>,  <21.616528, 18.496687, 22.316183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.310894, 18.513605, 22.573673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455295, 0.742284, 0.491651,
		-0.457033, 0.668749, -0.586426,
		-0.764086, 0.042296, 0.643726,
		21.081669, 18.526295, 22.766790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.734606, 20.884352, 24.321350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.123761, 20.871044, 24.229803>,  <15.357255, 20.863060, 24.174875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.123761, 20.871044, 24.229803>,  <14.734606, 20.884352, 24.321350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123761, 20.871044, 24.229803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193046, -0.661763, -0.724433,
		-0.127355, 0.748975, -0.650244,
		0.972890, -0.033267, -0.228865,
		15.415628, 20.861065, 24.161144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.787530, 20.912884, 23.573797>,  <14.734606, 20.884352, 24.321350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.787530, 20.912884, 23.573797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.136566, 20.758249, 23.693220>,  <15.345988, 20.665468, 23.764874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.136566, 20.758249, 23.693220>,  <14.787530, 20.912884, 23.573797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136566, 20.758249, 23.693220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190636, -0.832291, -0.520529,
		0.449715, 0.397294, -0.799947,
		0.872591, -0.386588, 0.298555,
		15.398343, 20.642273, 23.782787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147137, 20.660900, 22.939077>,  <14.787530, 20.912884, 23.573797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147137, 20.660900, 22.939077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.301590, 20.466881, 23.252926>,  <15.394262, 20.350470, 23.441235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.301590, 20.466881, 23.252926>,  <15.147137, 20.660900, 22.939077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.301590, 20.466881, 23.252926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184679, -0.874020, -0.449426,
		0.903767, 0.028635, -0.427067,
		0.386134, -0.485046, 0.784621,
		15.417430, 20.321367, 23.488312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649292, 20.334036, 22.679502>,  <15.147137, 20.660900, 22.939077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649292, 20.334036, 22.679502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.534117, 20.151684, 23.016375>,  <15.465012, 20.042273, 23.218498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.534117, 20.151684, 23.016375>,  <15.649292, 20.334036, 22.679502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534117, 20.151684, 23.016375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041410, -0.872673, -0.486545,
		0.956753, -0.174970, 0.232399,
		-0.287939, -0.455880, 0.842178,
		15.447735, 20.014919, 23.269028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036972, 19.729975, 22.898605>,  <15.649292, 20.334036, 22.679502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036972, 19.729975, 22.898605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.682298, 19.661537, 23.070427>,  <15.469493, 19.620474, 23.173519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.682298, 19.661537, 23.070427>,  <16.036972, 19.729975, 22.898605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682298, 19.661537, 23.070427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106994, -0.827878, -0.550609,
		0.449824, -0.534176, 0.715761,
		-0.886685, -0.171095, 0.429553,
		15.416292, 19.610209, 23.199293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.080263, 19.097504, 23.155632>,  <16.036972, 19.729975, 22.898605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.080263, 19.097504, 23.155632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.690317, 19.172607, 23.107651>,  <15.456350, 19.217669, 23.078861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.690317, 19.172607, 23.107651>,  <16.080263, 19.097504, 23.155632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690317, 19.172607, 23.107651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111968, -0.878307, -0.464801,
		-0.192626, -0.439686, 0.877252,
		-0.974864, 0.187757, -0.119954,
		15.397859, 19.228935, 23.071665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791327, 18.496031, 23.290020>,  <16.080263, 19.097504, 23.155632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791327, 18.496031, 23.290020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.489678, 18.697287, 23.121189>,  <15.308689, 18.818041, 23.019890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.489678, 18.697287, 23.121189>,  <15.791327, 18.496031, 23.290020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489678, 18.697287, 23.121189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216688, -0.797328, -0.563307,
		-0.619956, -0.333343, 0.710307,
		-0.754123, 0.503141, -0.422077,
		15.263442, 18.848228, 22.994566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.202715, 17.989677, 23.317438>,  <15.791327, 18.496031, 23.290020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.202715, 17.989677, 23.317438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.103052, 18.277632, 23.058306>,  <15.043255, 18.450405, 22.902826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.103052, 18.277632, 23.058306>,  <15.202715, 17.989677, 23.317438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103052, 18.277632, 23.058306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371913, -0.688759, -0.622328,
		-0.894204, 0.085879, 0.439344,
		-0.249157, 0.719886, -0.647831,
		15.028305, 18.493597, 22.863956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.446229, 17.831001, 23.163740>,  <15.202715, 17.989677, 23.317438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.446229, 17.831001, 23.163740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.632701, 18.027065, 22.869144>,  <14.744584, 18.144705, 22.692387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.632701, 18.027065, 22.869144>,  <14.446229, 17.831001, 23.163740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632701, 18.027065, 22.869144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463920, -0.573402, -0.675269,
		-0.753296, 0.656469, -0.039913,
		0.466180, 0.490161, -0.736491,
		14.772554, 18.174114, 22.648197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.029459, 17.643740, 22.534559>,  <14.446229, 17.831001, 23.163740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.029459, 17.643740, 22.534559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.357700, 17.806646, 22.374187>,  <14.554645, 17.904390, 22.277964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.357700, 17.806646, 22.374187>,  <14.029459, 17.643740, 22.534559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.357700, 17.806646, 22.374187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238926, -0.392808, -0.888041,
		-0.519158, 0.824521, -0.225032,
		0.820603, 0.407268, -0.400929,
		14.603881, 17.928827, 22.253908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785907, 17.985647, 21.874151>,  <14.029459, 17.643740, 22.534559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785907, 17.985647, 21.874151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.178239, 17.913673, 21.844233>,  <14.413638, 17.870489, 21.826281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.178239, 17.913673, 21.844233>,  <13.785907, 17.985647, 21.874151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.178239, 17.913673, 21.844233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139165, -0.378144, -0.915227,
		0.136397, 0.908092, -0.395936,
		0.980831, -0.179935, -0.074797,
		14.472488, 17.859694, 21.821795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.956585, 18.252638, 21.155499>,  <13.785907, 17.985647, 21.874151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.956585, 18.252638, 21.155499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.246087, 18.008989, 21.285206>,  <14.419788, 17.862801, 21.363031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.246087, 18.008989, 21.285206>,  <13.956585, 18.252638, 21.155499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.246087, 18.008989, 21.285206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049803, -0.422584, -0.904954,
		0.688258, 0.671114, -0.275512,
		0.723755, -0.609120, 0.324270,
		14.463214, 17.826254, 21.382486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479427, 18.255699, 20.690777>,  <13.956585, 18.252638, 21.155499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479427, 18.255699, 20.690777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.546366, 17.912806, 20.885565>,  <14.586529, 17.707069, 21.002438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.546366, 17.912806, 20.885565>,  <14.479427, 18.255699, 20.690777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.546366, 17.912806, 20.885565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075420, -0.481358, -0.873273,
		0.983009, 0.182866, -0.015901,
		0.167346, -0.857236, 0.486972,
		14.596569, 17.655634, 21.031656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997433, 17.961983, 20.317226>,  <14.479427, 18.255699, 20.690777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.997433, 17.961983, 20.317226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.796397, 17.691702, 20.532942>,  <14.675776, 17.529533, 20.662371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.796397, 17.691702, 20.532942>,  <14.997433, 17.961983, 20.317226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.796397, 17.691702, 20.532942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098369, -0.575048, -0.812184,
		0.858911, -0.461244, 0.222545,
		-0.502589, -0.675702, 0.539287,
		14.645620, 17.488991, 20.694729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.601252, 17.770962, 19.906950>,  <14.997433, 17.961983, 20.317226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.601252, 17.770962, 19.906950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.665331, 18.092279, 19.677496>,  <15.703778, 18.285070, 19.539824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.665331, 18.092279, 19.677496>,  <15.601252, 17.770962, 19.906950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.665331, 18.092279, 19.677496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280269, 0.520205, 0.806744,
		0.946460, -0.290010, -0.141802,
		0.160198, 0.803294, -0.573634,
		15.713390, 18.333267, 19.505405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.984107, 18.203350, 20.387396>,  <15.601252, 17.770962, 19.906950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.984107, 18.203350, 20.387396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.862117, 18.476282, 20.121639>,  <15.788922, 18.640041, 19.962185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.862117, 18.476282, 20.121639>,  <15.984107, 18.203350, 20.387396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862117, 18.476282, 20.121639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372411, 0.727519, 0.576217,
		0.876527, -0.071694, -0.475984,
		-0.304976, 0.682331, -0.664390,
		15.770624, 18.680981, 19.922323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496292, 18.573570, 20.354511>,  <15.984107, 18.203350, 20.387396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496292, 18.573570, 20.354511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.205738, 18.804335, 20.205091>,  <16.031406, 18.942793, 20.115440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.205738, 18.804335, 20.205091>,  <16.496292, 18.573570, 20.354511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205738, 18.804335, 20.205091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277285, 0.743306, 0.608776,
		0.628872, 0.338625, -0.699895,
		-0.726383, 0.576913, -0.373549,
		15.987823, 18.977409, 20.093027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792269, 19.176361, 20.325043>,  <16.496292, 18.573570, 20.354511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792269, 19.176361, 20.325043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.409306, 19.274542, 20.264212>,  <16.179527, 19.333450, 20.227713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.409306, 19.274542, 20.264212>,  <16.792269, 19.176361, 20.325043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.409306, 19.274542, 20.264212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173580, 0.910140, 0.376186,
		0.230746, 0.333765, -0.913979,
		-0.957406, 0.245451, -0.152076,
		16.122084, 19.348177, 20.218590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704126, 19.712463, 19.798834>,  <16.792269, 19.176361, 20.325043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704126, 19.712463, 19.798834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.405167, 19.728449, 20.064102>,  <16.225790, 19.738041, 20.223263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.405167, 19.728449, 20.064102>,  <16.704126, 19.712463, 19.798834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.405167, 19.728449, 20.064102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209397, 0.961483, 0.178052,
		-0.630511, 0.271942, -0.726982,
		-0.747401, 0.039964, 0.663170,
		16.180946, 19.740438, 20.263054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.456638, 20.394903, 19.748075>,  <16.704126, 19.712463, 19.798834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.456638, 20.394903, 19.748075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.290283, 20.275801, 20.091791>,  <16.190470, 20.204340, 20.298021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.290283, 20.275801, 20.091791>,  <16.456638, 20.394903, 19.748075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290283, 20.275801, 20.091791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228684, 0.880278, 0.415710,
		-0.880194, 0.369394, -0.298004,
		-0.415887, -0.297757, 0.859290,
		16.165518, 20.186474, 20.349579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137224, 20.960609, 20.025589>,  <16.456638, 20.394903, 19.748075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137224, 20.960609, 20.025589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.156729, 20.714441, 20.340265>,  <16.168432, 20.566740, 20.529070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.156729, 20.714441, 20.340265>,  <16.137224, 20.960609, 20.025589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.156729, 20.714441, 20.340265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021074, 0.788084, 0.615207,
		-0.998588, -0.013421, 0.051399,
		0.048764, -0.615422, 0.786688,
		16.171358, 20.529816, 20.576271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596317, 21.128174, 20.461945>,  <16.137224, 20.960609, 20.025589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596317, 21.128174, 20.461945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.866581, 20.969702, 20.710629>,  <16.028740, 20.874619, 20.859838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.866581, 20.969702, 20.710629>,  <15.596317, 21.128174, 20.461945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866581, 20.969702, 20.710629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090145, 0.792599, 0.603043,
		-0.731681, -0.463497, 0.499813,
		0.675660, -0.396180, 0.621712,
		16.069279, 20.850847, 20.897142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.441367, 21.339626, 21.182777>,  <15.596317, 21.128174, 20.461945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.441367, 21.339626, 21.182777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.831416, 21.252798, 21.200737>,  <16.065445, 21.200701, 21.211512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.831416, 21.252798, 21.200737>,  <15.441367, 21.339626, 21.182777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831416, 21.252798, 21.200737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121637, 0.693331, 0.710279,
		-0.185310, -0.687148, 0.702487,
		0.975123, -0.217070, 0.044898,
		16.123953, 21.187677, 21.214207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.669634, 21.402222, 21.864422>,  <15.441367, 21.339626, 21.182777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.669634, 21.402222, 21.864422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.041265, 21.423910, 21.718067>,  <16.264244, 21.436924, 21.630255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.041265, 21.423910, 21.718067>,  <15.669634, 21.402222, 21.864422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041265, 21.423910, 21.718067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269692, 0.577681, 0.770422,
		0.253139, -0.814460, 0.522088,
		0.929078, 0.054221, -0.365887,
		16.319988, 21.440176, 21.608301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160118, 21.473686, 22.419903>,  <15.669634, 21.402222, 21.864422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160118, 21.473686, 22.419903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.424894, 21.560057, 22.132790>,  <16.583759, 21.611879, 21.960522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.424894, 21.560057, 22.132790>,  <16.160118, 21.473686, 22.419903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424894, 21.560057, 22.132790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493901, 0.594679, 0.634365,
		0.563826, -0.774425, 0.286996,
		0.661938, 0.215924, -0.717785,
		16.623476, 21.624834, 21.917454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782412, 21.243225, 22.618597>,  <16.160118, 21.473686, 22.419903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782412, 21.243225, 22.618597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.846592, 21.538799, 22.356840>,  <16.885099, 21.716145, 22.199785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.846592, 21.538799, 22.356840>,  <16.782412, 21.243225, 22.618597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.846592, 21.538799, 22.356840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637402, 0.428641, 0.640301,
		0.753641, -0.519848, -0.402224,
		0.160449, 0.738935, -0.654394,
		16.894726, 21.760479, 22.160522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.502932, 21.348137, 22.622183>,  <16.782412, 21.243225, 22.618597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.502932, 21.348137, 22.622183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.348152, 21.691286, 22.486937>,  <17.255283, 21.897177, 22.405788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.348152, 21.691286, 22.486937>,  <17.502932, 21.348137, 22.622183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348152, 21.691286, 22.486937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607844, 0.513041, 0.606065,
		0.693394, 0.028997, -0.719975,
		-0.386951, 0.857874, -0.338114,
		17.232067, 21.948648, 22.385502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999907, 21.774649, 22.588167>,  <17.502932, 21.348137, 22.622183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.999907, 21.774649, 22.588167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.708134, 22.047552, 22.568356>,  <17.533070, 22.211294, 22.556469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.708134, 22.047552, 22.568356>,  <17.999907, 21.774649, 22.588167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.708134, 22.047552, 22.568356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465350, 0.547987, 0.695097,
		0.501376, 0.483978, -0.717208,
		-0.729432, 0.682258, -0.049529,
		17.489304, 22.252230, 22.553497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663130, 21.921684, 22.085072>,  <17.999907, 21.774649, 22.588167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663130, 21.921684, 22.085072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.037920, 21.796543, 22.147297>,  <19.262794, 21.721458, 22.184631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.037920, 21.796543, 22.147297>,  <18.663130, 21.921684, 22.085072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037920, 21.796543, 22.147297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027481, -0.509843, -0.859829,
		0.348310, 0.801364, -0.486308,
		0.936977, -0.312851, 0.155561,
		19.319014, 21.702688, 22.193966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923758, 21.829060, 21.424311>,  <18.663130, 21.921684, 22.085072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923758, 21.829060, 21.424311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.207205, 21.609722, 21.601931>,  <19.377274, 21.478119, 21.708504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.207205, 21.609722, 21.601931>,  <18.923758, 21.829060, 21.424311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.207205, 21.609722, 21.601931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034674, -0.601506, -0.798115,
		0.704742, 0.580954, -0.407224,
		0.708616, -0.548345, 0.444051,
		19.419790, 21.445219, 21.735146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.504688, 21.805851, 21.014339>,  <18.923758, 21.829060, 21.424311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.504688, 21.805851, 21.014339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.526783, 21.485483, 21.252827>,  <19.540041, 21.293262, 21.395918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.526783, 21.485483, 21.252827>,  <19.504688, 21.805851, 21.014339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.526783, 21.485483, 21.252827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187833, -0.578132, -0.794029,
		0.980647, 0.155850, 0.118504,
		0.055239, -0.800921, 0.596217,
		19.543354, 21.245207, 21.431692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023607, 21.396494, 20.695305>,  <19.504688, 21.805851, 21.014339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023607, 21.396494, 20.695305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.819637, 21.150934, 20.936338>,  <19.697256, 21.003599, 21.080959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.819637, 21.150934, 20.936338>,  <20.023607, 21.396494, 20.695305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819637, 21.150934, 20.936338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129090, -0.637959, -0.759174,
		0.850479, -0.464907, 0.246062,
		-0.509922, -0.613897, 0.602585,
		19.666660, 20.966764, 21.117113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.244501, 20.705339, 20.586494>,  <20.023607, 21.396494, 20.695305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.244501, 20.705339, 20.586494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.896156, 20.631958, 20.768896>,  <19.687149, 20.587929, 20.878338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.896156, 20.631958, 20.768896>,  <20.244501, 20.705339, 20.586494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.896156, 20.631958, 20.768896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092310, -0.850187, -0.518324,
		0.482778, -0.493484, 0.723463,
		-0.870864, -0.183453, 0.456006,
		19.634897, 20.576921, 20.905697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242651, 20.026600, 20.863600>,  <20.244501, 20.705339, 20.586494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242651, 20.026600, 20.863600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.852600, 20.110868, 20.836050>,  <19.618570, 20.161430, 20.819519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.852600, 20.110868, 20.836050>,  <20.242651, 20.026600, 20.863600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852600, 20.110868, 20.836050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143459, -0.836784, -0.528405,
		-0.168954, -0.505382, 0.846194,
		-0.975128, 0.210671, -0.068877,
		19.560062, 20.174070, 20.815388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970825, 19.436159, 20.753725>,  <20.242651, 20.026600, 20.863600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970825, 19.436159, 20.753725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.667921, 19.676409, 20.651115>,  <19.486177, 19.820559, 20.589550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.667921, 19.676409, 20.651115>,  <19.970825, 19.436159, 20.753725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.667921, 19.676409, 20.651115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393525, -0.733078, -0.554739,
		-0.521240, -0.319135, 0.791493,
		-0.757263, 0.600625, -0.256522,
		19.440742, 19.856596, 20.574160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474258, 19.029673, 20.839951>,  <19.970825, 19.436159, 20.753725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474258, 19.029673, 20.839951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.338884, 19.311956, 20.590973>,  <19.257660, 19.481327, 20.441586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.338884, 19.311956, 20.590973>,  <19.474258, 19.029673, 20.839951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.338884, 19.311956, 20.590973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276848, -0.706876, -0.650909,
		-0.899343, -0.047967, 0.434605,
		-0.338434, 0.705710, -0.622444,
		19.237354, 19.523670, 20.404240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923510, 18.741907, 20.624775>,  <19.474258, 19.029673, 20.839951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923510, 18.741907, 20.624775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.040972, 19.001898, 20.344404>,  <19.111450, 19.157892, 20.176182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.040972, 19.001898, 20.344404>,  <18.923510, 18.741907, 20.624775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040972, 19.001898, 20.344404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179273, -0.682798, -0.708271,
		-0.938950, 0.333646, -0.083985,
		0.293656, 0.649975, -0.700927,
		19.129068, 19.196890, 20.134127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355078, 18.791136, 20.053322>,  <18.923510, 18.741907, 20.624775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355078, 18.791136, 20.053322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.700001, 18.908258, 19.888063>,  <18.906954, 18.978533, 19.788908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.700001, 18.908258, 19.888063>,  <18.355078, 18.791136, 20.053322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700001, 18.908258, 19.888063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164045, -0.610348, -0.774961,
		-0.479078, 0.736029, -0.478273,
		0.862307, 0.292808, -0.413147,
		18.958693, 18.996101, 19.764120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.216896, 18.884750, 19.332342>,  <18.355078, 18.791136, 20.053322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.216896, 18.884750, 19.332342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.611919, 18.834646, 19.370363>,  <18.848934, 18.804585, 19.393177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.611919, 18.834646, 19.370363>,  <18.216896, 18.884750, 19.332342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611919, 18.834646, 19.370363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020762, -0.703085, -0.710803,
		0.155867, 0.699987, -0.696939,
		0.987560, -0.125261, 0.095054,
		18.908188, 18.797068, 19.398880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.430849, 19.011059, 18.707125>,  <18.216896, 18.884750, 19.332342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.430849, 19.011059, 18.707125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.713688, 18.785286, 18.877502>,  <18.883390, 18.649822, 18.979729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.713688, 18.785286, 18.877502>,  <18.430849, 19.011059, 18.707125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.713688, 18.785286, 18.877502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104510, -0.679170, -0.726502,
		0.699351, 0.469192, -0.539228,
		0.707097, -0.564434, 0.425943,
		18.925817, 18.615955, 19.005285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.942364, 18.947004, 18.182524>,  <18.430849, 19.011059, 18.707125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.942364, 18.947004, 18.182524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.010307, 18.652905, 18.444990>,  <19.051073, 18.476444, 18.602470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.010307, 18.652905, 18.444990>,  <18.942364, 18.947004, 18.182524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010307, 18.652905, 18.444990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239628, -0.615043, -0.751199,
		0.955890, 0.284834, 0.071715,
		0.169859, -0.735249, 0.656168,
		19.061266, 18.432329, 18.641840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.708553, 18.690290, 18.089935>,  <18.942364, 18.947004, 18.182524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.708553, 18.690290, 18.089935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.473940, 18.418222, 18.265820>,  <19.333172, 18.254982, 18.371349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.473940, 18.418222, 18.265820>,  <19.708553, 18.690290, 18.089935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.473940, 18.418222, 18.265820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258942, -0.671888, -0.693914,
		0.767415, -0.293146, 0.570211,
		-0.586535, -0.680171, 0.439709,
		19.297979, 18.214170, 18.397732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<11.565290, 13.726225, 9.213194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.451136, 14.109345, 9.199512>,  <11.382643, 14.339218, 9.191303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.451136, 14.109345, 9.199512>,  <11.565290, 13.726225, 9.213194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.451136, 14.109345, 9.199512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747994, -0.244901, -0.616869,
		-0.599215, -0.150462, 0.786322,
		-0.285387, 0.957802, -0.034204,
		11.365520, 14.396686, 9.189251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.799297, 13.374270, 8.569069>,  <11.565290, 13.726225, 9.213194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.799297, 13.374270, 8.569069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.577140, 13.258069, 8.257390>,  <11.443846, 13.188349, 8.070383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.577140, 13.258069, 8.257390>,  <11.799297, 13.374270, 8.569069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577140, 13.258069, 8.257390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432900, 0.901026, -0.027363,
		0.710025, 0.322117, -0.626182,
		-0.555393, -0.290503, -0.779196,
		11.410522, 13.170918, 8.023631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.820890, 13.966011, 8.119226>,  <11.799297, 13.374270, 8.569069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.820890, 13.966011, 8.119226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.518410, 14.062489, 8.362532>,  <11.336921, 14.120375, 8.508514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.518410, 14.062489, 8.362532>,  <11.820890, 13.966011, 8.119226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.518410, 14.062489, 8.362532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490184, 0.406964, -0.770779,
		-0.433447, -0.881026, -0.189518,
		-0.756203, 0.241194, 0.608262,
		11.291549, 14.134847, 8.545011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.121485, 13.656414, 7.923928>,  <11.820890, 13.966011, 8.119226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.121485, 13.656414, 7.923928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.143014, 14.019502, 8.090372>,  <11.155931, 14.237354, 8.190239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.143014, 14.019502, 8.090372>,  <11.121485, 13.656414, 7.923928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.143014, 14.019502, 8.090372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426952, 0.397622, -0.812163,
		-0.902671, -0.133947, 0.408954,
		0.053822, 0.907720, 0.416111,
		11.159161, 14.291818, 8.215205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.460485, 14.084530, 7.923991>,  <11.121485, 13.656414, 7.923928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.460485, 14.084530, 7.923991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.778935, 14.323648, 7.886425>,  <10.970006, 14.467119, 7.863885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.778935, 14.323648, 7.886425>,  <10.460485, 14.084530, 7.923991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.778935, 14.323648, 7.886425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326541, 0.293741, -0.898381,
		-0.509462, 0.745893, 0.429060,
		0.796128, 0.597796, -0.093915,
		11.017774, 14.502987, 7.858251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.145547, 14.766949, 7.776576>,  <10.460485, 14.084530, 7.923991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.145547, 14.766949, 7.776576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.514210, 14.716226, 7.629897>,  <10.735408, 14.685792, 7.541889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.514210, 14.716226, 7.629897>,  <10.145547, 14.766949, 7.776576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.514210, 14.716226, 7.629897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341305, 0.184547, -0.921658,
		0.184547, 0.974608, 0.126809,
		0.921658, -0.126809, -0.366697,
		10.790707, 14.678183, 7.519887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.350854, 15.317997, 7.322978>,  <10.145547, 14.766949, 7.776576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.350854, 15.317997, 7.322978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.508866, 14.960884, 7.236362>,  <10.603674, 14.746616, 7.184393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.508866, 14.960884, 7.236362>,  <10.350854, 15.317997, 7.322978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.508866, 14.960884, 7.236362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396177, 0.047108, -0.916965,
		0.828851, 0.448018, -0.335091,
		0.395031, -0.892783, -0.216540,
		10.627376, 14.693049, 7.171401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.673297, 15.934802, 7.612431>,  <10.350854, 15.317997, 7.322978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.673297, 15.934802, 7.612431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.693652, 16.294052, 7.787145>,  <10.705865, 16.509602, 7.891973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.693652, 16.294052, 7.787145>,  <10.673297, 15.934802, 7.612431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.693652, 16.294052, 7.787145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695620, -0.281940, 0.660774,
		0.716605, -0.337461, 0.610407,
		0.050887, 0.898126, 0.436785,
		10.708919, 16.563490, 7.918180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.625969, 16.526342, 7.094906>,  <10.673297, 15.934802, 7.612431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.625969, 16.526342, 7.094906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.360048, 16.243921, 6.997312>,  <10.200496, 16.074469, 6.938755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.360048, 16.243921, 6.997312>,  <10.625969, 16.526342, 7.094906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.360048, 16.243921, 6.997312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704117, 0.701349, -0.111037,
		0.249516, 0.097977, -0.963401,
		-0.664802, -0.706053, -0.243985,
		10.160608, 16.032106, 6.924116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.316381, 16.509888, 7.370841>,  <10.625969, 16.526342, 7.094906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.316381, 16.509888, 7.370841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.248154, 16.880836, 7.504042>,  <11.207217, 17.103405, 7.583963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.248154, 16.880836, 7.504042>,  <11.316381, 16.509888, 7.370841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.248154, 16.880836, 7.504042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403122, -0.374056, 0.835209,
		0.899110, 0.008220, 0.437645,
		-0.170569, 0.927369, 0.333004,
		11.196983, 17.159048, 7.603943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.636225, 16.571703, 8.067576>,  <11.316381, 16.509888, 7.370841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.636225, 16.571703, 8.067576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.331107, 16.823959, 8.010392>,  <11.148037, 16.975313, 7.976081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.331107, 16.823959, 8.010392>,  <11.636225, 16.571703, 8.067576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.331107, 16.823959, 8.010392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457673, -0.370339, 0.808322,
		0.456816, 0.682013, 0.571119,
		-0.762794, 0.630640, -0.142962,
		11.102269, 17.013151, 7.967504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.373356, 16.807426, 8.787430>,  <11.636225, 16.571703, 8.067576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.373356, 16.807426, 8.787430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.068780, 16.845356, 8.530925>,  <10.886034, 16.868114, 8.377022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.068780, 16.845356, 8.530925>,  <11.373356, 16.807426, 8.787430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.068780, 16.845356, 8.530925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586236, -0.522916, 0.618778,
		-0.276650, 0.847093, 0.453760,
		-0.761441, 0.094825, -0.641262,
		10.840347, 16.873804, 8.338547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792102, 17.059597, 9.185336>,  <11.373356, 16.807426, 8.787430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792102, 17.059597, 9.185336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673648, 16.865265, 8.856393>,  <10.602575, 16.748665, 8.659027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673648, 16.865265, 8.856393>,  <10.792102, 17.059597, 9.185336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673648, 16.865265, 8.856393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608229, -0.567924, 0.554545,
		-0.736452, 0.664401, -0.127314,
		-0.296135, -0.485832, -0.822357,
		10.584807, 16.719515, 8.609686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.028961, 17.114460, 9.462438>,  <10.792102, 17.059597, 9.185336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.028961, 17.114460, 9.462438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.042085, 16.868921, 9.146941>,  <10.049958, 16.721598, 8.957644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.042085, 16.868921, 9.146941>,  <10.028961, 17.114460, 9.462438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.042085, 16.868921, 9.146941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636995, -0.620961, 0.456775,
		-0.770169, 0.487439, -0.411391,
		0.032808, -0.613849, -0.788741,
		10.051928, 16.684767, 8.910318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.406656, 17.185570, 9.037452>,  <10.028961, 17.114460, 9.462438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.406656, 17.185570, 9.037452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.556968, 16.816540, 9.002473>,  <9.647155, 16.595121, 8.981485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.556968, 16.816540, 9.002473>,  <9.406656, 17.185570, 9.037452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556968, 16.816540, 9.002473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823911, -0.375799, 0.424200,
		-0.424219, -0.087354, -0.901336,
		0.375777, -0.922575, -0.087449,
		9.669702, 16.539768, 8.976239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.915780, 16.629679, 8.678694>,  <9.406656, 17.185570, 9.037452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.915780, 16.629679, 8.678694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.190663, 16.442072, 8.900601>,  <9.355593, 16.329508, 9.033746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.190663, 16.442072, 8.900601>,  <8.915780, 16.629679, 8.678694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.190663, 16.442072, 8.900601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726420, -0.435572, 0.531592,
		-0.007683, -0.768310, -0.640032,
		0.687207, -0.469016, 0.554769,
		9.396826, 16.301367, 9.067032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.539119, 16.051233, 8.815244>,  <8.915780, 16.629679, 8.678694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.539119, 16.051233, 8.815244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.851058, 16.017702, 9.063375>,  <9.038221, 15.997583, 9.212255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.851058, 16.017702, 9.063375>,  <8.539119, 16.051233, 8.815244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.851058, 16.017702, 9.063375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568545, -0.509482, 0.645898,
		0.261902, -0.856388, -0.444979,
		0.779849, -0.083829, 0.620329,
		9.085012, 15.992554, 9.249475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.544395, 15.412727, 9.036901>,  <8.539119, 16.051233, 8.815244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.544395, 15.412727, 9.036901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.728808, 15.609105, 9.332583>,  <8.839456, 15.726932, 9.509993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.728808, 15.609105, 9.332583>,  <8.544395, 15.412727, 9.036901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.728808, 15.609105, 9.332583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543243, -0.502532, 0.672569,
		0.701668, -0.711643, 0.035018,
		0.461032, 0.490944, 0.739205,
		8.867118, 15.756388, 9.554345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.437210, 14.985511, 9.528184>,  <8.544395, 15.412727, 9.036901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.437210, 14.985511, 9.528184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.553172, 15.297180, 9.750479>,  <8.622749, 15.484181, 9.883856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.553172, 15.297180, 9.750479>,  <8.437210, 14.985511, 9.528184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.553172, 15.297180, 9.750479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475534, -0.386650, 0.790170,
		0.830555, -0.493346, 0.258432,
		0.289905, 0.779174, 0.555737,
		8.640143, 15.530932, 9.917200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.805634, 14.748075, 10.067420>,  <8.437210, 14.985511, 9.528184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.805634, 14.748075, 10.067420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.676240, 15.108131, 10.184112>,  <8.598603, 15.324164, 10.254127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.676240, 15.108131, 10.184112>,  <8.805634, 14.748075, 10.067420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.676240, 15.108131, 10.184112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381707, -0.406244, 0.830220,
		0.865827, 0.157211, 0.475005,
		-0.323487, 0.900139, 0.291729,
		8.579194, 15.378173, 10.271630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.059855, 14.807305, 10.780925>,  <8.805634, 14.748075, 10.067420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.059855, 14.807305, 10.780925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.759604, 15.069965, 10.751622>,  <8.579453, 15.227562, 10.734041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.759604, 15.069965, 10.751622>,  <9.059855, 14.807305, 10.780925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.759604, 15.069965, 10.751622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479434, -0.465021, 0.744243,
		0.454643, 0.593771, 0.663879,
		-0.750628, 0.656651, -0.073256,
		8.534416, 15.266961, 10.729646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.926838, 15.232352, 11.430611>,  <9.059855, 14.807305, 10.780925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.926838, 15.232352, 11.430611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.575474, 15.228808, 11.239481>,  <8.364655, 15.226682, 11.124803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.575474, 15.228808, 11.239481>,  <8.926838, 15.232352, 11.430611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.575474, 15.228808, 11.239481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467292, -0.193637, 0.862637,
		-0.100167, 0.981033, 0.165953,
		-0.878410, -0.008860, -0.477825,
		8.311951, 15.226151, 11.096133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.478161, 15.435637, 11.951388>,  <8.926838, 15.232352, 11.430611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.478161, 15.435637, 11.951388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.228064, 15.291500, 11.674484>,  <8.078005, 15.205018, 11.508342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.228064, 15.291500, 11.674484>,  <8.478161, 15.435637, 11.951388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.228064, 15.291500, 11.674484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539694, -0.441097, 0.717053,
		-0.563738, 0.821941, 0.081318,
		-0.625244, -0.360343, -0.692260,
		8.040490, 15.183397, 11.466806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.862665, 15.837154, 12.024384>,  <8.478161, 15.435637, 11.951388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.862665, 15.837154, 12.024384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.729867, 15.509755, 11.836835>,  <7.650187, 15.313315, 11.724306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.729867, 15.509755, 11.836835>,  <7.862665, 15.837154, 12.024384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.729867, 15.509755, 11.836835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708619, -0.111671, 0.696698,
		-0.622605, 0.563552, -0.542929,
		-0.331997, -0.818498, -0.468871,
		7.630268, 15.264206, 11.696174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.141791, 15.844565, 12.130875>,  <7.862665, 15.837154, 12.024384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.141791, 15.844565, 12.130875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.193507, 15.470713, 11.998363>,  <7.224537, 15.246401, 11.918856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.193507, 15.470713, 11.998363>,  <7.141791, 15.844565, 12.130875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.193507, 15.470713, 11.998363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654653, -0.331381, 0.679423,
		-0.744791, 0.129031, -0.654704,
		0.129290, -0.934632, -0.331280,
		7.232294, 15.190323, 11.898978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.491765, 15.619798, 11.957138>,  <7.141791, 15.844565, 12.130875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.491765, 15.619798, 11.957138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.730327, 15.308090, 12.034121>,  <6.873464, 15.121065, 12.080310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.730327, 15.308090, 12.034121>,  <6.491765, 15.619798, 11.957138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.730327, 15.308090, 12.034121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632454, -0.308574, 0.710482,
		-0.494270, -0.545455, -0.676887,
		0.596406, -0.779270, 0.192457,
		6.909248, 15.074309, 12.091858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.032269, 15.096283, 12.167039>,  <6.491765, 15.619798, 11.957138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.032269, 15.096283, 12.167039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.389448, 14.982858, 12.306887>,  <6.603756, 14.914803, 12.390796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.389448, 14.982858, 12.306887>,  <6.032269, 15.096283, 12.167039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.389448, 14.982858, 12.306887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436959, -0.359302, 0.824602,
		-0.108208, -0.889097, -0.444744,
		0.892949, -0.283564, 0.349620,
		6.657333, 14.897788, 12.411773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.895143, 14.433455, 12.574969>,  <6.032269, 15.096283, 12.167039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.895143, 14.433455, 12.574969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.251513, 14.575835, 12.687790>,  <6.465334, 14.661263, 12.755483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.251513, 14.575835, 12.687790>,  <5.895143, 14.433455, 12.574969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.251513, 14.575835, 12.687790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235458, -0.169035, 0.957072,
		0.388349, -0.919089, -0.066785,
		0.890923, 0.355952, 0.282052,
		6.518790, 14.682621, 12.772406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.143754, 13.942822, 13.115908>,  <5.895143, 14.433455, 12.574969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.143754, 13.942822, 13.115908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.370643, 14.265952, 13.180003>,  <6.506775, 14.459830, 13.218460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.370643, 14.265952, 13.180003>,  <6.143754, 13.942822, 13.115908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.370643, 14.265952, 13.180003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177583, -0.070019, 0.981612,
		0.804192, -0.585246, 0.103740,
		0.567221, 0.807827, 0.160238,
		6.540809, 14.508300, 13.228075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.561970, 13.800291, 13.716327>,  <6.143754, 13.942822, 13.115908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.561970, 13.800291, 13.716327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545209, 14.197769, 13.674733>,  <6.535152, 14.436256, 13.649776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.545209, 14.197769, 13.674733>,  <6.561970, 13.800291, 13.716327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.545209, 14.197769, 13.674733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284526, 0.087899, 0.954630,
		0.957752, 0.069587, 0.279049,
		-0.041902, 0.993696, -0.103985,
		6.532639, 14.495878, 13.643538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.106313, 14.068392, 14.159447>,  <6.561970, 13.800291, 13.716327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.106313, 14.068392, 14.159447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.824810, 14.343618, 14.088693>,  <6.655908, 14.508755, 14.046241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.824810, 14.343618, 14.088693>,  <7.106313, 14.068392, 14.159447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.824810, 14.343618, 14.088693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177289, 0.071010, 0.981594,
		0.687962, 0.722165, 0.072012,
		-0.703759, 0.688066, -0.176884,
		6.613682, 14.550038, 14.035627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.680950, 13.841228, 14.520044>,  <7.106313, 14.068392, 14.159447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.680950, 13.841228, 14.520044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.055672, 13.854079, 14.659393>,  <8.280505, 13.861791, 14.743003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.055672, 13.854079, 14.659393>,  <7.680950, 13.841228, 14.520044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.055672, 13.854079, 14.659393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203809, 0.759236, -0.618080,
		-0.284356, 0.650022, 0.704708,
		0.936805, 0.032129, 0.348373,
		8.336713, 13.863718, 14.763906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.856760, 14.548735, 14.609658>,  <7.680950, 13.841228, 14.520044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.856760, 14.548735, 14.609658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.213542, 14.371811, 14.572186>,  <8.427611, 14.265656, 14.549702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.213542, 14.371811, 14.572186>,  <7.856760, 14.548735, 14.609658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.213542, 14.371811, 14.572186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311381, 0.751198, -0.582017,
		0.327805, 0.489963, 0.807762,
		0.891956, -0.442310, -0.093682,
		8.481129, 14.239118, 14.544081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.339759, 15.069020, 14.615269>,  <7.856760, 14.548735, 14.609658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.339759, 15.069020, 14.615269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.570536, 14.780368, 14.462227>,  <8.709002, 14.607177, 14.370401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.570536, 14.780368, 14.462227>,  <8.339759, 15.069020, 14.615269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.570536, 14.780368, 14.462227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543369, 0.688836, -0.479849,
		0.609826, 0.068950, 0.789531,
		0.576942, -0.721631, -0.382605,
		8.743618, 14.563879, 14.347445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.051641, 15.204526, 14.709181>,  <8.339759, 15.069020, 14.615269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.051641, 15.204526, 14.709181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.041819, 14.946718, 14.403503>,  <9.035926, 14.792033, 14.220097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.041819, 14.946718, 14.403503>,  <9.051641, 15.204526, 14.709181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.041819, 14.946718, 14.403503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651320, 0.569605, -0.501331,
		0.758406, -0.510045, 0.405802,
		-0.024554, -0.644519, -0.764194,
		9.034452, 14.753363, 14.174245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.735293, 15.057878, 14.589355>,  <9.051641, 15.204526, 14.709181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.735293, 15.057878, 14.589355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.539771, 14.939516, 14.261086>,  <9.422458, 14.868499, 14.064123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.539771, 14.939516, 14.261086>,  <9.735293, 15.057878, 14.589355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.539771, 14.939516, 14.261086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732628, 0.371490, -0.570309,
		0.473629, -0.880020, 0.035200,
		-0.488806, -0.295903, -0.820676,
		9.393129, 14.850745, 14.014883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.237439, 14.744596, 14.163589>,  <9.735293, 15.057878, 14.589355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.237439, 14.744596, 14.163589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.946651, 14.866122, 13.917270>,  <9.772178, 14.939038, 13.769478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.946651, 14.866122, 13.917270>,  <10.237439, 14.744596, 14.163589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.946651, 14.866122, 13.917270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686597, 0.308755, -0.658221,
		-0.009846, -0.901314, -0.433055,
		-0.726972, 0.303815, -0.615799,
		9.728559, 14.957267, 13.732530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.506866, 14.587568, 13.511653>,  <10.237439, 14.744596, 14.163589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.506866, 14.587568, 13.511653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.202573, 14.830104, 13.419012>,  <10.019997, 14.975625, 13.363428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.202573, 14.830104, 13.419012>,  <10.506866, 14.587568, 13.511653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.202573, 14.830104, 13.419012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556908, 0.426481, -0.712718,
		-0.333376, -0.671168, -0.662113,
		-0.760732, 0.606339, -0.231601,
		9.974353, 15.012006, 13.349532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.430279, 14.551053, 12.745136>,  <10.506866, 14.587568, 13.511653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.430279, 14.551053, 12.745136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.219904, 14.874596, 12.850316>,  <10.093679, 15.068721, 12.913424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.219904, 14.874596, 12.850316>,  <10.430279, 14.551053, 12.745136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.219904, 14.874596, 12.850316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392279, 0.505004, -0.768822,
		-0.754657, -0.301202, -0.582898,
		-0.525937, 0.808856, 0.262950,
		10.062122, 15.117252, 12.929201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.045332, 14.731281, 12.167805>,  <10.430279, 14.551053, 12.745136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.045332, 14.731281, 12.167805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.129704, 15.038021, 12.410275>,  <10.180328, 15.222065, 12.555758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.129704, 15.038021, 12.410275>,  <10.045332, 14.731281, 12.167805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.129704, 15.038021, 12.410275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355861, 0.517332, -0.778287,
		-0.910423, 0.379879, -0.163771,
		0.210931, 0.766850, 0.606176,
		10.192984, 15.268076, 12.592128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.980481, 15.439488, 11.791779>,  <10.045332, 14.731281, 12.167805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.980481, 15.439488, 11.791779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.192771, 15.572972, 12.103412>,  <10.320145, 15.653063, 12.290392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.192771, 15.572972, 12.103412>,  <9.980481, 15.439488, 11.791779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192771, 15.572972, 12.103412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487265, 0.631984, -0.602635,
		-0.693473, 0.699452, 0.172804,
		0.530724, 0.333710, 0.779083,
		10.351988, 15.673085, 12.337136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.024018, 16.141071, 11.659334>,  <9.980481, 15.439488, 11.791779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.024018, 16.141071, 11.659334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.337829, 16.027658, 11.879925>,  <10.526115, 15.959611, 12.012280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.337829, 16.027658, 11.879925>,  <10.024018, 16.141071, 11.659334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337829, 16.027658, 11.879925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615692, 0.461957, -0.638372,
		-0.073760, 0.840360, 0.536987,
		0.784527, -0.283532, 0.551477,
		10.573187, 15.942598, 12.045368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.520478, 16.801414, 11.811639>,  <10.024018, 16.141071, 11.659334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.520478, 16.801414, 11.811639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.738209, 16.473751, 11.883963>,  <10.868847, 16.277153, 11.927357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.738209, 16.473751, 11.883963>,  <10.520478, 16.801414, 11.811639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.738209, 16.473751, 11.883963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827175, 0.488246, -0.278204,
		0.139613, 0.300994, 0.943351,
		0.544325, -0.819157, 0.180809,
		10.901506, 16.228004, 11.938206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.207973, 17.102974, 12.062320>,  <10.520478, 16.801414, 11.811639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.207973, 17.102974, 12.062320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.254446, 16.720856, 11.953574>,  <11.282330, 16.491585, 11.888327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.254446, 16.720856, 11.953574>,  <11.207973, 17.102974, 12.062320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.254446, 16.720856, 11.953574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807802, 0.250141, -0.533746,
		0.577890, -0.157599, 0.800753,
		0.116183, -0.955297, -0.271863,
		11.289301, 16.434267, 11.872015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.802987, 16.871256, 12.351313>,  <11.207973, 17.102974, 12.062320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.802987, 16.871256, 12.351313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.759318, 16.643360, 12.025496>,  <11.733117, 16.506622, 11.830007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.759318, 16.643360, 12.025496>,  <11.802987, 16.871256, 12.351313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759318, 16.643360, 12.025496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807338, 0.427229, -0.407038,
		0.579902, -0.702047, 0.413331,
		-0.109173, -0.569740, -0.814541,
		11.726566, 16.472439, 11.781134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.495581, 16.517769, 12.198587>,  <11.802987, 16.871256, 12.351313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.495581, 16.517769, 12.198587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.283964, 16.497526, 11.859753>,  <12.156995, 16.485380, 11.656452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.283964, 16.497526, 11.859753>,  <12.495581, 16.517769, 12.198587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283964, 16.497526, 11.859753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804439, 0.287903, -0.519605,
		0.270171, -0.956322, -0.111608,
		-0.529042, -0.050601, -0.847086,
		12.125252, 16.482344, 11.605627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999898, 16.343060, 11.649544>,  <12.495581, 16.517769, 12.198587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999898, 16.343060, 11.649544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.695243, 16.405060, 11.397867>,  <12.512450, 16.442261, 11.246861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.695243, 16.405060, 11.397867>,  <12.999898, 16.343060, 11.649544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.695243, 16.405060, 11.397867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644648, 0.082573, -0.760007,
		-0.065849, -0.984457, -0.162813,
		-0.761638, 0.155002, -0.629191,
		12.466751, 16.451561, 11.209109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.968966, 15.841947, 10.966231>,  <12.999898, 16.343060, 11.649544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.968966, 15.841947, 10.966231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.781078, 16.187767, 10.894773>,  <12.668345, 16.395260, 10.851898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.781078, 16.187767, 10.894773>,  <12.968966, 15.841947, 10.966231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781078, 16.187767, 10.894773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677488, 0.223271, -0.700828,
		-0.566016, -0.450222, -0.690598,
		-0.469719, 0.864552, -0.178646,
		12.640162, 16.447132, 10.841180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986393, 15.869757, 10.286893>,  <12.968966, 15.841947, 10.966231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986393, 15.869757, 10.286893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.887181, 16.246632, 10.377017>,  <12.827654, 16.472757, 10.431091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.887181, 16.246632, 10.377017>,  <12.986393, 15.869757, 10.286893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.887181, 16.246632, 10.377017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569852, 0.329982, -0.752582,
		-0.783422, -0.058270, -0.618753,
		-0.248030, 0.942187, 0.225310,
		12.812772, 16.529287, 10.444611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679659, 16.229534, 9.649433>,  <12.986393, 15.869757, 10.286893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.679659, 16.229534, 9.649433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.821524, 16.520929, 9.883875>,  <12.906643, 16.695766, 10.024540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.821524, 16.520929, 9.883875>,  <12.679659, 16.229534, 9.649433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.821524, 16.520929, 9.883875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555365, 0.340159, -0.758856,
		-0.752187, 0.594639, -0.283936,
		0.354662, 0.728489, 0.586105,
		12.927922, 16.739475, 10.059707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648005, 16.761848, 9.196516>,  <12.679659, 16.229534, 9.649433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648005, 16.761848, 9.196516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.883523, 16.910675, 9.483539>,  <13.024834, 16.999971, 9.655752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.883523, 16.910675, 9.483539>,  <12.648005, 16.761848, 9.196516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883523, 16.910675, 9.483539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608838, 0.379755, -0.696493,
		-0.531638, 0.846967, -0.002931,
		0.588793, 0.372067, 0.717558,
		13.060161, 17.022295, 9.698806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.678609, 17.426226, 9.154475>,  <12.648005, 16.761848, 9.196516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.678609, 17.426226, 9.154475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.020647, 17.271574, 9.292653>,  <13.225870, 17.178783, 9.375560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.020647, 17.271574, 9.292653>,  <12.678609, 17.426226, 9.154475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.020647, 17.271574, 9.292653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495236, 0.411852, -0.764931,
		0.153472, 0.825165, 0.543645,
		0.855095, -0.386628, 0.345444,
		13.277176, 17.155586, 9.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<21.563906, 19.237875, 22.538656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.355240, 19.025064, 22.805433>,  <21.230040, 18.897377, 22.965500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.355240, 19.025064, 22.805433>,  <21.563906, 19.237875, 22.538656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.355240, 19.025064, 22.805433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309920, 0.610162, 0.729144,
		-0.794868, 0.587068, -0.153414,
		-0.521665, -0.532028, 0.666943,
		21.198740, 18.865456, 23.005516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.208330, 19.835459, 22.921221>,  <21.563906, 19.237875, 22.538656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.208330, 19.835459, 22.921221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.205112, 19.502550, 23.142946>,  <21.203182, 19.302805, 23.275982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.205112, 19.502550, 23.142946>,  <21.208330, 19.835459, 22.921221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.205112, 19.502550, 23.142946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305508, 0.525781, 0.793863,
		-0.952155, 0.175734, 0.250035,
		-0.008045, -0.832269, 0.554313,
		21.202700, 19.252869, 23.309240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683512, 19.997936, 23.525574>,  <21.208330, 19.835459, 22.921221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683512, 19.997936, 23.525574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.945086, 19.713137, 23.627886>,  <21.102030, 19.542257, 23.689274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.945086, 19.713137, 23.627886>,  <20.683512, 19.997936, 23.525574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.945086, 19.713137, 23.627886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299089, 0.553848, 0.777045,
		-0.694920, -0.431635, 0.575132,
		0.653935, -0.712000, 0.255783,
		21.141266, 19.499537, 23.704620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.680542, 20.040537, 24.240385>,  <20.683512, 19.997936, 23.525574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.680542, 20.040537, 24.240385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.001196, 19.813900, 24.164118>,  <21.193588, 19.677917, 24.118357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.001196, 19.813900, 24.164118>,  <20.680542, 20.040537, 24.240385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001196, 19.813900, 24.164118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485954, 0.431844, 0.759842,
		-0.348180, -0.701773, 0.621519,
		0.801635, -0.566591, -0.190670,
		21.241686, 19.643923, 24.106916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.825554, 19.587885, 24.876787>,  <20.680542, 20.040537, 24.240385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.825554, 19.587885, 24.876787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.163778, 19.662281, 24.676615>,  <21.366713, 19.706919, 24.556511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.163778, 19.662281, 24.676615>,  <20.825554, 19.587885, 24.876787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.163778, 19.662281, 24.676615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387302, 0.431457, 0.814765,
		0.367449, -0.882754, 0.292792,
		0.845564, 0.185985, -0.500431,
		21.417446, 19.718079, 24.526485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.243990, 19.619034, 25.376436>,  <20.825554, 19.587885, 24.876787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.243990, 19.619034, 25.376436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.455177, 19.767675, 25.070976>,  <21.581890, 19.856861, 24.887701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.455177, 19.767675, 25.070976>,  <21.243990, 19.619034, 25.376436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455177, 19.767675, 25.070976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388692, 0.693751, 0.606324,
		0.755094, -0.616945, 0.221840,
		0.527970, 0.371604, -0.763649,
		21.613567, 19.879156, 24.841883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.981247, 19.606321, 25.572958>,  <21.243990, 19.619034, 25.376436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.981247, 19.606321, 25.572958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.928602, 19.883091, 25.289009>,  <21.897015, 20.049152, 25.118639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.928602, 19.883091, 25.289009>,  <21.981247, 19.606321, 25.572958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928602, 19.883091, 25.289009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582351, 0.633476, 0.509486,
		0.802213, -0.346341, -0.486315,
		-0.131613, 0.691922, -0.709874,
		21.889118, 20.090668, 25.076046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623287, 19.908504, 25.559299>,  <21.981247, 19.606321, 25.572958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623287, 19.908504, 25.559299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.405926, 20.164125, 25.341558>,  <22.275509, 20.317499, 25.210913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.405926, 20.164125, 25.341558>,  <22.623287, 19.908504, 25.559299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405926, 20.164125, 25.341558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505036, 0.766843, 0.396094,
		0.670560, -0.059679, -0.739451,
		-0.543404, 0.639055, -0.544354,
		22.242905, 20.355843, 25.178251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.997982, 20.463428, 25.352125>,  <22.623287, 19.908504, 25.559299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.997982, 20.463428, 25.352125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.646063, 20.641146, 25.284525>,  <22.434912, 20.747776, 25.243965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.646063, 20.641146, 25.284525>,  <22.997982, 20.463428, 25.352125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.646063, 20.641146, 25.284525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277644, 0.768881, 0.575964,
		0.385838, 0.459810, -0.799815,
		-0.879797, 0.444293, -0.169000,
		22.382124, 20.774433, 25.233826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.062536, 21.141397, 25.021297>,  <22.997982, 20.463428, 25.352125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.062536, 21.141397, 25.021297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.720984, 21.109728, 25.227062>,  <22.516052, 21.090727, 25.350521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.720984, 21.109728, 25.227062>,  <23.062536, 21.141397, 25.021297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.720984, 21.109728, 25.227062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335416, 0.672042, 0.660193,
		-0.397977, 0.736268, -0.547287,
		-0.853879, -0.079173, 0.514414,
		22.464819, 21.085976, 25.381386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.004625, 21.799856, 25.190578>,  <23.062536, 21.141397, 25.021297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.004625, 21.799856, 25.190578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.750425, 21.618618, 25.440649>,  <22.597906, 21.509874, 25.590691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.750425, 21.618618, 25.440649>,  <23.004625, 21.799856, 25.190578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.750425, 21.618618, 25.440649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337592, 0.565147, 0.752756,
		-0.694388, 0.689429, -0.206188,
		-0.635498, -0.453097, 0.625176,
		22.559776, 21.482689, 25.628202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.673550, 22.349293, 25.581356>,  <23.004625, 21.799856, 25.190578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.673550, 22.349293, 25.581356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.646591, 22.024519, 25.813293>,  <22.630417, 21.829655, 25.952456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.646591, 22.024519, 25.813293>,  <22.673550, 22.349293, 25.581356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.646591, 22.024519, 25.813293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371870, 0.518848, 0.769746,
		-0.925835, 0.267503, 0.266967,
		-0.067395, -0.811935, 0.579844,
		22.626373, 21.780939, 25.987247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.510859, 22.646765, 26.238878>,  <22.673550, 22.349293, 25.581356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.510859, 22.646765, 26.238878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.680571, 22.286154, 26.272896>,  <22.782398, 22.069786, 26.293306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.680571, 22.286154, 26.272896>,  <22.510859, 22.646765, 26.238878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.680571, 22.286154, 26.272896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426038, 0.281608, 0.859761,
		-0.799049, -0.328546, 0.503566,
		0.424279, -0.901529, 0.085045,
		22.807854, 22.015696, 26.298409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.868198, 23.183567, 26.580639>,  <22.510859, 22.646765, 26.238878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.868198, 23.183567, 26.580639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.107269, 23.301773, 26.878754>,  <23.250711, 23.372696, 27.057623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.107269, 23.301773, 26.878754>,  <22.868198, 23.183567, 26.580639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.107269, 23.301773, 26.878754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401620, 0.914902, -0.040691,
		-0.693890, -0.275002, 0.665500,
		0.597677, 0.295513, 0.745288,
		23.286573, 23.390427, 27.102341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.115656, 23.546387, 26.668592>,  <22.868198, 23.183567, 26.580639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.115656, 23.546387, 26.668592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.957727, 23.912771, 26.639946>,  <21.862970, 24.132603, 26.622759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.957727, 23.912771, 26.639946>,  <22.115656, 23.546387, 26.668592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957727, 23.912771, 26.639946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532393, -0.291620, -0.794680,
		-0.748781, -0.275629, 0.602790,
		-0.394822, 0.915962, -0.071616,
		21.839281, 24.187559, 26.618462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367470, 23.406250, 26.582268>,  <22.115656, 23.546387, 26.668592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367470, 23.406250, 26.582268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.472116, 23.760700, 26.429249>,  <21.534904, 23.973370, 26.337439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.472116, 23.760700, 26.429249>,  <21.367470, 23.406250, 26.582268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.472116, 23.760700, 26.429249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582780, -0.170912, -0.794454,
		-0.769365, 0.430784, 0.471702,
		0.261618, 0.886124, -0.382546,
		21.550602, 24.026537, 26.314486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.746334, 23.660257, 26.431326>,  <21.367470, 23.406250, 26.582268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.746334, 23.660257, 26.431326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.003675, 23.867474, 26.205854>,  <21.158081, 23.991802, 26.070572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.003675, 23.867474, 26.205854>,  <20.746334, 23.660257, 26.431326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.003675, 23.867474, 26.205854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571834, -0.164379, -0.803732,
		-0.509022, 0.839413, 0.190478,
		0.643353, 0.518039, -0.563677,
		21.196682, 24.022886, 26.036751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.323488, 24.137030, 25.990841>,  <20.746334, 23.660257, 26.431326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.323488, 24.137030, 25.990841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.685204, 24.062540, 25.837175>,  <20.902233, 24.017845, 25.744976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.685204, 24.062540, 25.837175>,  <20.323488, 24.137030, 25.990841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.685204, 24.062540, 25.837175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416414, -0.186321, -0.889879,
		0.094140, 0.964679, -0.246035,
		0.904288, -0.186225, -0.384165,
		20.956490, 24.006672, 25.721926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.306280, 24.360334, 25.297094>,  <20.323488, 24.137030, 25.990841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.306280, 24.360334, 25.297094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.633137, 24.130817, 25.275028>,  <20.829250, 23.993107, 25.261787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.633137, 24.130817, 25.275028>,  <20.306280, 24.360334, 25.297094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633137, 24.130817, 25.275028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325455, -0.380247, -0.865731,
		0.475773, 0.725378, -0.497459,
		0.817140, -0.573793, -0.055167,
		20.878279, 23.958679, 25.258478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513084, 24.484278, 24.631432>,  <20.306280, 24.360334, 25.297094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513084, 24.484278, 24.631432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.682629, 24.145964, 24.761042>,  <20.784355, 23.942976, 24.838808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.682629, 24.145964, 24.761042>,  <20.513084, 24.484278, 24.631432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682629, 24.145964, 24.761042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283245, -0.463588, -0.839558,
		0.860298, 0.264078, -0.436061,
		0.423862, -0.845783, 0.324025,
		20.809788, 23.892229, 24.858250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.813929, 24.228247, 24.047026>,  <20.513084, 24.484278, 24.631432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.813929, 24.228247, 24.047026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.762562, 23.910362, 24.284325>,  <20.731743, 23.719631, 24.426704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.762562, 23.910362, 24.284325>,  <20.813929, 24.228247, 24.047026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.762562, 23.910362, 24.284325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293420, -0.540970, -0.788198,
		0.947320, -0.275287, -0.163716,
		-0.128415, -0.794713, 0.593246,
		20.724037, 23.671947, 24.462297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.245708, 23.683525, 23.800686>,  <20.813929, 24.228247, 24.047026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.245708, 23.683525, 23.800686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.973156, 23.489180, 24.019650>,  <20.809624, 23.372572, 24.151028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.973156, 23.489180, 24.019650>,  <21.245708, 23.683525, 23.800686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.973156, 23.489180, 24.019650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236357, -0.561769, -0.792812,
		0.692714, -0.669593, 0.267943,
		-0.681383, -0.485862, 0.547408,
		20.768742, 23.343422, 24.183872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.339504, 22.975378, 23.702713>,  <21.245708, 23.683525, 23.800686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.339504, 22.975378, 23.702713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.962952, 22.959486, 23.836710>,  <20.737020, 22.949951, 23.917109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.962952, 22.959486, 23.836710>,  <21.339504, 22.975378, 23.702713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962952, 22.959486, 23.836710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201315, -0.730658, -0.652388,
		0.270683, -0.681586, 0.679832,
		-0.941383, -0.039730, 0.334990,
		20.680536, 22.947567, 23.937206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.132645, 22.230869, 23.599792>,  <21.339504, 22.975378, 23.702713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.132645, 22.230869, 23.599792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.791889, 22.437687, 23.633135>,  <20.587435, 22.561777, 23.653139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.791889, 22.437687, 23.633135>,  <21.132645, 22.230869, 23.599792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791889, 22.437687, 23.633135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421481, -0.582378, -0.695118,
		-0.310862, -0.627298, 0.714046,
		-0.851891, 0.517043, 0.083355,
		20.536322, 22.592800, 23.658140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.606577, 21.727962, 23.619415>,  <21.132645, 22.230869, 23.599792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.606577, 21.727962, 23.619415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.419987, 22.072948, 23.540874>,  <20.308033, 22.279940, 23.493750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.419987, 22.072948, 23.540874>,  <20.606577, 21.727962, 23.619415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419987, 22.072948, 23.540874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573139, -0.463792, -0.675580,
		-0.673731, -0.202604, 0.710660,
		-0.466474, 0.862466, -0.196351,
		20.280045, 22.331688, 23.481970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936785, 21.543697, 23.698729>,  <20.606577, 21.727962, 23.619415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.936785, 21.543697, 23.698729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.956560, 21.870970, 23.469595>,  <19.968426, 22.067333, 23.332115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.956560, 21.870970, 23.469595>,  <19.936785, 21.543697, 23.698729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956560, 21.870970, 23.469595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482351, -0.482660, -0.731011,
		-0.874582, 0.312446, 0.370788,
		0.049437, 0.818179, -0.572835,
		19.971392, 22.116423, 23.297745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208572, 21.679859, 23.407051>,  <19.936785, 21.543697, 23.698729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208572, 21.679859, 23.407051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.483982, 21.841681, 23.166296>,  <19.649227, 21.938774, 23.021843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.483982, 21.841681, 23.166296>,  <19.208572, 21.679859, 23.407051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483982, 21.841681, 23.166296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371960, -0.515471, -0.771968,
		-0.622561, 0.755397, -0.204436,
		0.688523, 0.404555, -0.601890,
		19.690538, 21.963047, 22.985729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.814924, 21.892059, 22.837753>,  <19.208572, 21.679859, 23.407051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.814924, 21.892059, 22.837753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.196503, 21.857059, 22.722979>,  <19.425449, 21.836060, 22.654114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.196503, 21.857059, 22.722979>,  <18.814924, 21.892059, 22.837753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.196503, 21.857059, 22.722979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289285, -0.521481, -0.802728,
		-0.079394, 0.848765, -0.522776,
		0.953945, -0.087500, -0.286937,
		19.482687, 21.830809, 22.636898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406607, 22.383673, 22.673580>,  <18.814924, 21.892059, 22.837753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406607, 22.383673, 22.673580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040472, 22.508001, 22.775990>,  <17.820791, 22.582598, 22.837435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040472, 22.508001, 22.775990>,  <18.406607, 22.383673, 22.673580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.040472, 22.508001, 22.775990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400203, 0.631664, 0.663956,
		0.044651, 0.710205, -0.702577,
		-0.915338, 0.310820, 0.256022,
		17.765871, 22.601248, 22.852797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516928, 23.037933, 22.777260>,  <18.406607, 22.383673, 22.673580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516928, 23.037933, 22.777260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.174309, 22.964046, 22.970013>,  <17.968739, 22.919714, 23.085665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.174309, 22.964046, 22.970013>,  <18.516928, 23.037933, 22.777260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174309, 22.964046, 22.970013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233062, 0.694650, 0.680546,
		-0.460447, 0.695227, -0.551949,
		-0.856546, -0.184717, 0.481880,
		17.917345, 22.908630, 23.114576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231134, 23.741203, 22.932274>,  <18.516928, 23.037933, 22.777260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.231134, 23.741203, 22.932274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.034910, 23.505020, 23.188620>,  <17.917175, 23.363310, 23.342426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.034910, 23.505020, 23.188620>,  <18.231134, 23.741203, 22.932274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034910, 23.505020, 23.188620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157809, 0.663080, 0.731725,
		-0.856998, 0.460090, -0.232101,
		-0.490561, -0.590459, 0.640865,
		17.887741, 23.327883, 23.380878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701166, 24.129293, 23.290255>,  <18.231134, 23.741203, 22.932274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701166, 24.129293, 23.290255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.740639, 23.818420, 23.538851>,  <17.764322, 23.631897, 23.688009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.740639, 23.818420, 23.538851>,  <17.701166, 24.129293, 23.290255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740639, 23.818420, 23.538851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105118, 0.629187, 0.770113,
		-0.989551, -0.010666, 0.143786,
		0.098682, -0.777181, 0.621491,
		17.770243, 23.585266, 23.725298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260057, 24.238096, 23.842854>,  <17.701166, 24.129293, 23.290255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260057, 24.238096, 23.842854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.552183, 24.002501, 23.981262>,  <17.727459, 23.861143, 24.064308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.552183, 24.002501, 23.981262>,  <17.260057, 24.238096, 23.842854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552183, 24.002501, 23.981262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162148, 0.641529, 0.749766,
		-0.663588, -0.491457, 0.564021,
		0.730314, -0.588990, 0.346023,
		17.771276, 23.825804, 24.085070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083612, 24.167398, 24.461508>,  <17.260057, 24.238096, 23.842854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083612, 24.167398, 24.461508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.466974, 24.054340, 24.477365>,  <17.696991, 23.986506, 24.486879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.466974, 24.054340, 24.477365>,  <17.083612, 24.167398, 24.461508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466974, 24.054340, 24.477365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127372, 0.547867, 0.826812,
		-0.255415, -0.787371, 0.561080,
		0.958405, -0.282646, 0.039645,
		17.754496, 23.969547, 24.489260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163408, 23.842737, 25.104671>,  <17.083612, 24.167398, 24.461508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.163408, 23.842737, 25.104671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.538523, 23.948509, 25.014666>,  <17.763592, 24.011972, 24.960663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.538523, 23.948509, 25.014666>,  <17.163408, 23.842737, 25.104671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538523, 23.948509, 25.014666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046664, 0.546198, 0.836355,
		0.344059, -0.794824, 0.499879,
		0.937788, 0.264429, -0.225014,
		17.819859, 24.027838, 24.947161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345362, 23.149891, 25.358936>,  <17.163408, 23.842737, 25.104671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.345362, 23.149891, 25.358936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.177801, 22.872995, 25.593996>,  <17.077265, 22.706858, 25.735031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.177801, 22.872995, 25.593996>,  <17.345362, 23.149891, 25.358936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.177801, 22.872995, 25.593996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214024, -0.553661, -0.804769,
		0.882448, -0.462891, 0.083774,
		-0.418903, -0.692237, 0.587647,
		17.052130, 22.665325, 25.770290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.520506, 22.423201, 24.976755>,  <17.345362, 23.149891, 25.358936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.520506, 22.423201, 24.976755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211344, 22.374485, 25.225843>,  <17.025846, 22.345255, 25.375298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.211344, 22.374485, 25.225843>,  <17.520506, 22.423201, 24.976755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.211344, 22.374485, 25.225843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482580, -0.524386, -0.701524,
		0.411986, -0.842725, 0.346527,
		-0.772906, -0.121791, 0.622723,
		16.979471, 22.337948, 25.412661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291895, 21.794527, 24.800535>,  <17.520506, 22.423201, 24.976755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.291895, 21.794527, 24.800535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.964800, 21.925385, 24.989969>,  <16.768543, 22.003899, 25.103630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.964800, 21.925385, 24.989969>,  <17.291895, 21.794527, 24.800535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964800, 21.925385, 24.989969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543983, -0.708151, -0.450118,
		0.188118, -0.625701, 0.757040,
		-0.817737, 0.327141, 0.473586,
		16.719479, 22.023527, 25.132046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014170, 21.233606, 25.244232>,  <17.291895, 21.794527, 24.800535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.014170, 21.233606, 25.244232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.720474, 21.488029, 25.149305>,  <16.544256, 21.640684, 25.092348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.720474, 21.488029, 25.149305>,  <17.014170, 21.233606, 25.244232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.720474, 21.488029, 25.149305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503117, -0.744511, -0.438835,
		-0.455812, -0.202811, 0.866662,
		-0.734240, 0.636059, -0.237319,
		16.500202, 21.678846, 25.078110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474886, 20.713930, 25.341373>,  <17.014170, 21.233606, 25.244232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474886, 20.713930, 25.341373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.307564, 21.038076, 25.177263>,  <16.207170, 21.232565, 25.078796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.307564, 21.038076, 25.177263>,  <16.474886, 20.713930, 25.341373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307564, 21.038076, 25.177263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669066, -0.580391, -0.464216,
		-0.614307, 0.080319, 0.784969,
		-0.418303, 0.810367, -0.410277,
		16.182072, 21.281187, 25.054180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788086, 20.576647, 25.362051>,  <16.474886, 20.713930, 25.341373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788086, 20.576647, 25.362051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.827625, 20.877052, 25.100912>,  <15.851349, 21.057295, 24.944229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.827625, 20.877052, 25.100912>,  <15.788086, 20.576647, 25.362051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.827625, 20.877052, 25.100912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587672, -0.485376, -0.647342,
		-0.803038, 0.447648, 0.393370,
		0.098849, 0.751013, -0.652846,
		15.857280, 21.102356, 24.905058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.104044, 20.823914, 25.098726>,  <15.788086, 20.576647, 25.362051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.104044, 20.823914, 25.098726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.370763, 20.929003, 24.819769>,  <15.530794, 20.992056, 24.652395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.370763, 20.929003, 24.819769>,  <15.104044, 20.823914, 25.098726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.370763, 20.929003, 24.819769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514716, -0.514383, -0.685914,
		-0.538934, 0.816325, -0.207760,
		0.666797, 0.262725, -0.697393,
		15.570802, 21.007820, 24.610550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<22.553331, 17.282108, 23.748074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.700760, 17.652128, 23.784815>,  <22.789217, 17.874140, 23.806860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.700760, 17.652128, 23.784815>,  <22.553331, 17.282108, 23.748074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.700760, 17.652128, 23.784815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483882, 0.275283, -0.830709,
		-0.793733, 0.261730, 0.549077,
		0.368573, 0.925050, 0.091855,
		22.811331, 17.929644, 23.812370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106903, 17.055161, 24.314123>,  <22.553331, 17.282108, 23.748074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106903, 17.055161, 24.314123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.234453, 16.988314, 24.687302>,  <22.310984, 16.948206, 24.911209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.234453, 16.988314, 24.687302>,  <22.106903, 17.055161, 24.314123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.234453, 16.988314, 24.687302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815436, 0.453347, 0.359918,
		-0.483097, -0.875527, 0.008288,
		0.318875, -0.167117, 0.932947,
		22.330116, 16.938179, 24.967186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.448202, 16.914454, 24.742990>,  <22.106903, 17.055161, 24.314123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.448202, 16.914454, 24.742990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.758575, 17.042135, 24.960627>,  <21.944799, 17.118744, 25.091209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.758575, 17.042135, 24.960627>,  <21.448202, 16.914454, 24.742990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758575, 17.042135, 24.960627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608665, 0.605402, 0.512850,
		-0.165692, -0.729107, 0.664039,
		0.775934, 0.319202, 0.544092,
		21.991356, 17.137896, 25.123854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564369, 17.097330, 25.461367>,  <21.448202, 16.914454, 24.742990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564369, 17.097330, 25.461367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.721237, 17.452290, 25.364433>,  <21.815357, 17.665266, 25.306274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.721237, 17.452290, 25.364433>,  <21.564369, 17.097330, 25.461367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.721237, 17.452290, 25.364433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736500, 0.460730, 0.495272,
		0.551155, -0.015752, 0.834254,
		0.392168, 0.887400, -0.242332,
		21.838888, 17.718510, 25.291733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840267, 17.438116, 26.023006>,  <21.564369, 17.097330, 25.461367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840267, 17.438116, 26.023006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.687782, 17.707649, 25.769825>,  <21.596291, 17.869370, 25.617916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.687782, 17.707649, 25.769825>,  <21.840267, 17.438116, 26.023006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687782, 17.707649, 25.769825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577527, 0.361044, 0.732195,
		0.721900, 0.644669, 0.251522,
		-0.381213, 0.673832, -0.632952,
		21.573418, 17.909800, 25.579939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.279755, 18.204638, 26.102409>,  <21.840267, 17.438116, 26.023006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.279755, 18.204638, 26.102409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.536333, 18.207470, 25.795555>,  <22.690281, 18.209169, 25.611443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.536333, 18.207470, 25.795555>,  <22.279755, 18.204638, 26.102409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536333, 18.207470, 25.795555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119418, -0.988690, 0.090725,
		-0.757816, -0.149805, -0.635038,
		0.641447, 0.007082, -0.767135,
		22.728767, 18.209595, 25.565414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590689, 18.529581, 26.224327>,  <22.279755, 18.204638, 26.102409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590689, 18.529581, 26.224327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.375095, 18.582218, 26.557116>,  <21.245739, 18.613800, 26.756788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.375095, 18.582218, 26.557116>,  <21.590689, 18.529581, 26.224327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.375095, 18.582218, 26.557116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518701, -0.830078, -0.204743,
		0.663660, -0.541899, 0.515656,
		-0.538985, 0.131592, 0.831973,
		21.213400, 18.621696, 26.806707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.522825, 17.862198, 26.726591>,  <21.590689, 18.529581, 26.224327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.522825, 17.862198, 26.726591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.201807, 18.098347, 26.760965>,  <21.009197, 18.240036, 26.781590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.201807, 18.098347, 26.760965>,  <21.522825, 17.862198, 26.726591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.201807, 18.098347, 26.760965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596550, -0.795829, -0.103847,
		0.007084, -0.134608, 0.990874,
		-0.802544, 0.590370, 0.085938,
		20.961044, 18.275457, 26.786747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.015238, 17.426056, 27.010130>,  <21.522825, 17.862198, 26.726591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.015238, 17.426056, 27.010130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.804834, 17.721935, 26.842243>,  <20.678593, 17.899462, 26.741510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.804834, 17.721935, 26.842243>,  <21.015238, 17.426056, 27.010130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.804834, 17.721935, 26.842243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679591, -0.662284, -0.315493,
		-0.511341, 0.119284, 0.851059,
		-0.526010, 0.739696, -0.419718,
		20.647032, 17.943844, 26.716328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.360178, 17.301514, 27.211031>,  <21.015238, 17.426056, 27.010130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.360178, 17.301514, 27.211031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.318972, 17.529682, 26.885084>,  <20.294247, 17.666582, 26.689516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.318972, 17.529682, 26.885084>,  <20.360178, 17.301514, 27.211031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318972, 17.529682, 26.885084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662417, -0.650475, -0.371599,
		-0.742019, 0.501500, 0.444866,
		-0.103017, 0.570420, -0.814867,
		20.288067, 17.700808, 26.640625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.568903, 17.329327, 27.067533>,  <20.360178, 17.301514, 27.211031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.568903, 17.329327, 27.067533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.762608, 17.424784, 26.730835>,  <19.878830, 17.482058, 26.528816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.762608, 17.424784, 26.730835>,  <19.568903, 17.329327, 27.067533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.762608, 17.424784, 26.730835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641258, -0.557697, -0.527031,
		-0.595212, 0.794999, -0.117042,
		0.484264, 0.238641, -0.841748,
		19.907887, 17.496376, 26.478312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094900, 17.511900, 26.635544>,  <19.568903, 17.329327, 27.067533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094900, 17.511900, 26.635544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.391048, 17.404163, 26.389191>,  <19.568737, 17.339521, 26.241379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.391048, 17.404163, 26.389191>,  <19.094900, 17.511900, 26.635544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391048, 17.404163, 26.389191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655519, -0.492139, -0.572795,
		-0.148822, 0.827802, -0.540922,
		0.740369, -0.269340, -0.615881,
		19.613159, 17.323362, 26.204426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.495127, 17.411287, 27.094660>,  <19.094900, 17.511900, 26.635544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.495127, 17.411287, 27.094660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.131718, 17.577190, 27.114893>,  <17.913671, 17.676733, 27.127033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.131718, 17.577190, 27.114893>,  <18.495127, 17.411287, 27.094660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131718, 17.577190, 27.114893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409293, 0.859068, 0.307380,
		0.084036, 0.299965, -0.950242,
		-0.908525, 0.414758, 0.050581,
		17.859159, 17.701618, 27.130068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.485582, 17.995951, 26.632135>,  <18.495127, 17.411287, 27.094660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.485582, 17.995951, 26.632135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.211634, 18.050657, 26.918421>,  <18.047264, 18.083481, 27.090191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.211634, 18.050657, 26.918421>,  <18.485582, 17.995951, 26.632135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211634, 18.050657, 26.918421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371138, 0.910745, 0.181108,
		-0.627061, 0.389664, -0.674505,
		-0.684873, 0.136768, 0.715712,
		18.006172, 18.091688, 27.133135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332026, 18.705408, 26.523857>,  <18.485582, 17.995951, 26.632135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332026, 18.705408, 26.523857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.181314, 18.663710, 26.892025>,  <18.090887, 18.638691, 27.112926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.181314, 18.663710, 26.892025>,  <18.332026, 18.705408, 26.523857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.181314, 18.663710, 26.892025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263223, 0.940636, 0.214285,
		-0.888117, 0.323014, -0.326971,
		-0.376777, -0.104244, 0.920419,
		18.068281, 18.632437, 27.168150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835369, 19.321804, 26.701124>,  <18.332026, 18.705408, 26.523857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835369, 19.321804, 26.701124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.967951, 19.184223, 27.052542>,  <18.047499, 19.101675, 27.263391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.967951, 19.184223, 27.052542>,  <17.835369, 19.321804, 26.701124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.967951, 19.184223, 27.052542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244837, 0.930636, 0.271976,
		-0.911150, 0.124953, 0.392673,
		0.331452, -0.343952, 0.878542,
		18.067387, 19.081038, 27.316105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597969, 19.802774, 27.315746>,  <17.835369, 19.321804, 26.701124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597969, 19.802774, 27.315746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.856295, 19.584736, 27.529585>,  <18.011290, 19.453913, 27.657888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.856295, 19.584736, 27.529585>,  <17.597969, 19.802774, 27.315746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.856295, 19.584736, 27.529585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338767, 0.832080, 0.439180,
		-0.684222, -0.102526, 0.722031,
		0.645815, -0.545097, 0.534595,
		18.050039, 19.421207, 27.689962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432405, 19.721209, 28.060057>,  <17.597969, 19.802774, 27.315746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432405, 19.721209, 28.060057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.830528, 19.682686, 28.056362>,  <18.069403, 19.659573, 28.054146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.830528, 19.682686, 28.056362>,  <17.432405, 19.721209, 28.060057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.830528, 19.682686, 28.056362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076864, 0.729173, 0.679999,
		-0.058753, -0.677519, 0.733155,
		0.995309, -0.096305, -0.009236,
		18.129122, 19.653795, 28.053591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549252, 20.060295, 28.675186>,  <17.432405, 19.721209, 28.060057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549252, 20.060295, 28.675186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.915545, 20.001844, 28.525475>,  <18.135321, 19.966774, 28.435648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.915545, 20.001844, 28.525475>,  <17.549252, 20.060295, 28.675186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915545, 20.001844, 28.525475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384965, 0.585854, 0.713146,
		0.115062, -0.797133, 0.592739,
		0.915730, -0.146128, -0.374278,
		18.190264, 19.958006, 28.413191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.951090, 19.775240, 29.217527>,  <17.549252, 20.060295, 28.675186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.951090, 19.775240, 29.217527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.161188, 19.980320, 28.945866>,  <18.287247, 20.103369, 28.782867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.161188, 19.980320, 28.945866>,  <17.951090, 19.775240, 29.217527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.161188, 19.980320, 28.945866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176206, 0.715287, 0.676251,
		0.832507, -0.474870, 0.285361,
		0.525246, 0.512701, -0.679157,
		18.318762, 20.134130, 28.742119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514872, 20.053143, 29.558218>,  <17.951090, 19.775240, 29.217527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514872, 20.053143, 29.558218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.477970, 20.271196, 29.224915>,  <18.455830, 20.402029, 29.024933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.477970, 20.271196, 29.224915>,  <18.514872, 20.053143, 29.558218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477970, 20.271196, 29.224915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348603, 0.801549, 0.485793,
		0.932719, -0.245661, -0.263980,
		-0.092253, 0.545133, -0.833258,
		18.450294, 20.434736, 28.974937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.078119, 20.421530, 29.552698>,  <18.514872, 20.053143, 29.558218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.078119, 20.421530, 29.552698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.823603, 20.619659, 29.316128>,  <18.670893, 20.738537, 29.174185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.823603, 20.619659, 29.316128>,  <19.078119, 20.421530, 29.552698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823603, 20.619659, 29.316128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361153, 0.868705, 0.338998,
		0.681689, 0.002107, -0.731639,
		-0.636293, 0.495325, -0.591426,
		18.632715, 20.768257, 29.138700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382229, 21.000221, 29.559282>,  <19.078119, 20.421530, 29.552698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382229, 21.000221, 29.559282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.031866, 21.120739, 29.408543>,  <18.821650, 21.193048, 29.318100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.031866, 21.120739, 29.408543>,  <19.382229, 21.000221, 29.559282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.031866, 21.120739, 29.408543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157570, 0.916860, 0.366797,
		0.456029, 0.261900, -0.850556,
		-0.875905, 0.301292, -0.376847,
		18.769094, 21.211126, 29.295488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508945, 21.494947, 29.063375>,  <19.382229, 21.000221, 29.559282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508945, 21.494947, 29.063375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.141178, 21.574221, 29.199251>,  <18.920517, 21.621784, 29.280777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.141178, 21.574221, 29.199251>,  <19.508945, 21.494947, 29.063375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.141178, 21.574221, 29.199251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254238, 0.958512, 0.128910,
		-0.300049, 0.204885, -0.931661,
		-0.919420, 0.198185, 0.339690,
		18.865353, 21.633677, 29.301159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450644, 22.098516, 28.762726>,  <19.508945, 21.494947, 29.063375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450644, 22.098516, 28.762726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.167801, 22.048079, 29.041035>,  <18.998095, 22.017817, 29.208019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.167801, 22.048079, 29.041035>,  <19.450644, 22.098516, 28.762726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.167801, 22.048079, 29.041035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045665, 0.973774, 0.222885,
		-0.705630, 0.189376, -0.682805,
		-0.707107, -0.126094, 0.695772,
		18.955669, 22.010250, 29.249767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.957157, 22.538525, 28.720648>,  <19.450644, 22.098516, 28.762726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.957157, 22.538525, 28.720648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.918924, 22.467581, 29.112446>,  <18.895985, 22.425014, 29.347525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.918924, 22.467581, 29.112446>,  <18.957157, 22.538525, 28.720648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918924, 22.467581, 29.112446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061843, 0.981040, 0.183674,
		-0.993499, 0.078131, -0.082802,
		-0.095582, -0.177359, 0.979494,
		18.890249, 22.414373, 29.406294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261904, 22.836960, 28.671255>,  <18.957157, 22.538525, 28.720648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261904, 22.836960, 28.671255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.969910, 23.099630, 28.595467>,  <17.794714, 23.257233, 28.549994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.969910, 23.099630, 28.595467>,  <18.261904, 22.836960, 28.671255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.969910, 23.099630, 28.595467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212245, -0.481323, -0.850459,
		-0.649673, -0.580608, 0.490734,
		-0.729985, 0.656676, -0.189471,
		17.750914, 23.296633, 28.538626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559372, 22.456406, 28.503662>,  <18.261904, 22.836960, 28.671255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559372, 22.456406, 28.503662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.555931, 22.826597, 28.352180>,  <17.553867, 23.048712, 28.261292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.555931, 22.826597, 28.352180>,  <17.559372, 22.456406, 28.503662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.555931, 22.826597, 28.352180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348838, -0.357703, -0.866234,
		-0.937144, 0.124656, 0.325918,
		-0.008601, 0.925478, -0.378703,
		17.553350, 23.104240, 28.238569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939640, 22.492140, 28.271059>,  <17.559372, 22.456406, 28.503662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939640, 22.492140, 28.271059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.128195, 22.785208, 28.074696>,  <17.241327, 22.961048, 27.956877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.128195, 22.785208, 28.074696>,  <16.939640, 22.492140, 28.271059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.128195, 22.785208, 28.074696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522527, -0.216389, -0.824706,
		-0.710464, 0.645270, 0.280836,
		0.471388, 0.732668, -0.490908,
		17.269611, 23.005009, 27.927423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.496607, 22.590282, 27.745234>,  <16.939640, 22.492140, 28.271059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.496607, 22.590282, 27.745234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.830904, 22.767876, 27.615980>,  <17.031483, 22.874432, 27.538429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.830904, 22.767876, 27.615980>,  <16.496607, 22.590282, 27.745234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.830904, 22.767876, 27.615980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212786, -0.280632, -0.935932,
		-0.506218, 0.850956, -0.140063,
		0.835743, 0.443981, -0.323133,
		17.081627, 22.901070, 27.519041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.268862, 23.068396, 27.140106>,  <16.496607, 22.590282, 27.745234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.268862, 23.068396, 27.140106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.658758, 23.006430, 27.075758>,  <16.892696, 22.969250, 27.037149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.658758, 23.006430, 27.075758>,  <16.268862, 23.068396, 27.140106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658758, 23.006430, 27.075758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201597, -0.300330, -0.932288,
		0.096111, 0.941171, -0.323975,
		0.974742, -0.154916, -0.160872,
		16.951181, 22.959955, 27.027496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565922, 23.590584, 26.566542>,  <16.268862, 23.068396, 27.140106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.565922, 23.590584, 26.566542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.801182, 23.267357, 26.579863>,  <16.942339, 23.073421, 26.587854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.801182, 23.267357, 26.579863>,  <16.565922, 23.590584, 26.566542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801182, 23.267357, 26.579863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243299, -0.216053, -0.945583,
		0.771287, 0.548044, -0.323673,
		0.588151, -0.808065, 0.033300,
		16.977627, 23.024937, 26.589853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798893, 23.602083, 25.898640>,  <16.565922, 23.590584, 26.566542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798893, 23.602083, 25.898640> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.896198, 23.248232, 26.057766>,  <16.954582, 23.035921, 26.153242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.896198, 23.248232, 26.057766>,  <16.798893, 23.602083, 25.898640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896198, 23.248232, 26.057766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203181, -0.447509, -0.870892,
		0.948441, 0.131029, -0.288603,
		0.243264, -0.884628, 0.397813,
		16.969177, 22.982843, 26.177111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498608, 23.867926, 25.801214>,  <16.798893, 23.602083, 25.898640>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.498608, 23.867926, 25.801214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.727901, 24.077383, 25.549120>,  <17.865479, 24.203058, 25.397863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.727901, 24.077383, 25.549120>,  <17.498608, 23.867926, 25.801214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727901, 24.077383, 25.549120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274114, 0.602286, 0.749742,
		0.772180, -0.602535, 0.201715,
		0.573236, 0.523642, -0.630237,
		17.899872, 24.234476, 25.360048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179110, 23.906878, 26.190144>,  <17.498608, 23.867926, 25.801214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179110, 23.906878, 26.190144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.225401, 24.171392, 25.893682>,  <18.253176, 24.330101, 25.715805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.225401, 24.171392, 25.893682>,  <18.179110, 23.906878, 26.190144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.225401, 24.171392, 25.893682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328592, 0.678666, 0.656841,
		0.937355, -0.319551, -0.138753,
		0.115728, 0.661286, -0.741153,
		18.260118, 24.369778, 25.671337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913332, 24.197269, 26.139809>,  <18.179110, 23.906878, 26.190144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913332, 24.197269, 26.139809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.669863, 24.464632, 25.968813>,  <18.523781, 24.625050, 25.866215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.669863, 24.464632, 25.968813>,  <18.913332, 24.197269, 26.139809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669863, 24.464632, 25.968813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439157, 0.732552, 0.520104,
		0.660801, 0.128838, -0.739421,
		-0.608674, 0.668407, -0.427491,
		18.487261, 24.665154, 25.840565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290796, 24.657497, 25.780771>,  <18.913332, 24.197269, 26.139809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.290796, 24.657497, 25.780771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.944597, 24.818050, 25.900640>,  <18.736877, 24.914381, 25.972563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.944597, 24.818050, 25.900640>,  <19.290796, 24.657497, 25.780771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.944597, 24.818050, 25.900640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500355, 0.720943, 0.479464,
		-0.023601, 0.564919, -0.824808,
		-0.865499, 0.401381, 0.299675,
		18.684948, 24.938465, 25.990543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385027, 25.291037, 25.725687>,  <19.290796, 24.657497, 25.780771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.385027, 25.291037, 25.725687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.061523, 25.278008, 25.960583>,  <18.867422, 25.270191, 26.101521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.061523, 25.278008, 25.960583>,  <19.385027, 25.291037, 25.725687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.061523, 25.278008, 25.960583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333947, 0.796471, 0.504097,
		-0.484136, 0.603799, -0.633276,
		-0.808759, -0.032570, 0.587237,
		18.818895, 25.268236, 26.136753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113909, 25.988876, 25.730589>,  <19.385027, 25.291037, 25.725687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113909, 25.988876, 25.730589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.970188, 25.805559, 26.055765>,  <18.883955, 25.695570, 26.250872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.970188, 25.805559, 26.055765>,  <19.113909, 25.988876, 25.730589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.970188, 25.805559, 26.055765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281962, 0.777088, 0.562701,
		-0.889606, 0.431398, -0.149988,
		-0.359302, -0.458291, 0.812940,
		18.862398, 25.668072, 26.299646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.813644, 26.477285, 26.112265>,  <19.113909, 25.988876, 25.730589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.813644, 26.477285, 26.112265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.817554, 26.187654, 26.388124>,  <18.819901, 26.013876, 26.553640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.817554, 26.187654, 26.388124>,  <18.813644, 26.477285, 26.112265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.817554, 26.187654, 26.388124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260852, 0.667651, 0.697280,
		-0.965330, 0.173080, 0.195403,
		0.009776, -0.724076, 0.689651,
		18.820488, 25.970432, 26.595020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440176, 26.798887, 26.621403>,  <18.813644, 26.477285, 26.112265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440176, 26.798887, 26.621403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.669460, 26.521057, 26.795298>,  <18.807032, 26.354359, 26.899635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.669460, 26.521057, 26.795298>,  <18.440176, 26.798887, 26.621403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.669460, 26.521057, 26.795298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221369, 0.642088, 0.733975,
		-0.788940, -0.324485, 0.521808,
		0.573210, -0.694574, 0.434737,
		18.841423, 26.312685, 26.925718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237175, 26.565968, 27.355921>,  <18.440176, 26.798887, 26.621403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.237175, 26.565968, 27.355921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.630978, 26.499119, 27.334698>,  <18.867260, 26.459009, 27.321964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.630978, 26.499119, 27.334698>,  <18.237175, 26.565968, 27.355921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630978, 26.499119, 27.334698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130321, 0.494985, 0.859073,
		-0.117307, -0.852678, 0.509096,
		0.984508, -0.167121, -0.053056,
		18.926331, 26.448982, 27.318781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.927487, 14.875079, 16.113405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322396, 14.900219, 16.054970>,  <15.559341, 14.915303, 16.019909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322396, 14.900219, 16.054970>,  <14.927487, 14.875079, 16.113405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322396, 14.900219, 16.054970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075386, 0.623879, 0.777877,
		0.140030, -0.778990, 0.611201,
		0.987274, 0.062851, -0.146087,
		15.618578, 14.919074, 16.011145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113413, 14.936956, 16.784914>,  <14.927487, 14.875079, 16.113405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113413, 14.936956, 16.784914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431169, 15.084124, 16.591593>,  <15.621822, 15.172424, 16.475599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431169, 15.084124, 16.591593>,  <15.113413, 14.936956, 16.784914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431169, 15.084124, 16.591593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124655, 0.679995, 0.722543,
		0.594477, -0.634228, 0.494320,
		0.794392, 0.367915, -0.483301,
		15.669485, 15.194499, 16.446602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661045, 15.038288, 17.321081>,  <15.113413, 14.936956, 16.784914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661045, 15.038288, 17.321081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.724304, 15.266235, 16.998531>,  <15.762259, 15.403004, 16.805002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.724304, 15.266235, 16.998531>,  <15.661045, 15.038288, 17.321081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724304, 15.266235, 16.998531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164169, 0.790111, 0.590570,
		0.973672, -0.225779, 0.031399,
		0.158147, 0.569867, -0.806375,
		15.771749, 15.437196, 16.756618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290054, 15.372258, 17.445917>,  <15.661045, 15.038288, 17.321081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290054, 15.372258, 17.445917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065283, 15.582462, 17.190393>,  <15.930420, 15.708585, 17.037079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065283, 15.582462, 17.190393>,  <16.290054, 15.372258, 17.445917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065283, 15.582462, 17.190393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030566, 0.784930, 0.618830,
		0.826621, 0.328212, -0.457138,
		-0.561929, 0.525511, -0.638807,
		15.896704, 15.740115, 16.998751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595474, 16.014433, 17.446802>,  <16.290054, 15.372258, 17.445917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.595474, 16.014433, 17.446802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235382, 16.088854, 17.289337>,  <16.019327, 16.133507, 17.194859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235382, 16.088854, 17.289337>,  <16.595474, 16.014433, 17.446802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235382, 16.088854, 17.289337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006365, 0.898389, 0.439156,
		0.435368, 0.397847, -0.807572,
		-0.900230, 0.186054, -0.393662,
		15.965313, 16.144670, 17.171238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635798, 16.683767, 17.236477>,  <16.595474, 16.014433, 17.446802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635798, 16.683767, 17.236477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242620, 16.612806, 17.255869>,  <16.006714, 16.570230, 17.267504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242620, 16.612806, 17.255869>,  <16.635798, 16.683767, 17.236477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242620, 16.612806, 17.255869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128415, 0.850772, 0.509604,
		-0.131649, 0.494686, -0.859043,
		-0.982944, -0.177403, 0.048478,
		15.947738, 16.559586, 17.270412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270519, 17.170715, 16.862144>,  <16.635798, 16.683767, 17.236477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270519, 17.170715, 16.862144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041468, 17.043512, 17.164394>,  <15.904037, 16.967190, 17.345743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.041468, 17.043512, 17.164394>,  <16.270519, 17.170715, 16.862144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041468, 17.043512, 17.164394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097675, 0.941599, 0.322258,
		-0.813975, 0.110729, -0.570249,
		-0.572629, -0.318010, 0.755623,
		15.869679, 16.948109, 17.391081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839874, 17.797537, 17.041697>,  <16.270519, 17.170715, 16.862144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839874, 17.797537, 17.041697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.785148, 17.531101, 17.334984>,  <15.752312, 17.371241, 17.510956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.785148, 17.531101, 17.334984>,  <15.839874, 17.797537, 17.041697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.785148, 17.531101, 17.334984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187852, 0.744194, 0.641005,
		-0.972622, -0.050037, -0.226943,
		-0.136816, -0.666087, 0.733219,
		15.744102, 17.331276, 17.554949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286012, 18.141090, 17.485878>,  <15.839874, 17.797537, 17.041697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286012, 18.141090, 17.485878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442122, 17.856625, 17.719778>,  <15.535788, 17.685946, 17.860119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442122, 17.856625, 17.719778>,  <15.286012, 18.141090, 17.485878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442122, 17.856625, 17.719778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073764, 0.657226, 0.750075,
		-0.917739, -0.249602, 0.308957,
		0.390275, -0.711163, 0.584750,
		15.559204, 17.643276, 17.895203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.838363, 18.041849, 18.025169>,  <15.286012, 18.141090, 17.485878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.838363, 18.041849, 18.025169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184790, 17.902657, 18.168745>,  <15.392646, 17.819141, 18.254890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184790, 17.902657, 18.168745>,  <14.838363, 18.041849, 18.025169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184790, 17.902657, 18.168745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248846, 0.322643, 0.913223,
		-0.433594, -0.880233, 0.192837,
		0.866067, -0.347982, 0.358939,
		15.444610, 17.798262, 18.276426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707073, 18.020548, 18.788141>,  <14.838363, 18.041849, 18.025169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707073, 18.020548, 18.788141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102685, 17.962490, 18.777136>,  <15.340052, 17.927656, 18.770533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102685, 17.962490, 18.777136>,  <14.707073, 18.020548, 18.788141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.102685, 17.962490, 18.777136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076699, 0.345351, 0.935334,
		-0.126256, -0.927182, 0.352694,
		0.989028, -0.145142, -0.027511,
		15.399393, 17.918947, 18.768883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003580, 17.776194, 19.462318>,  <14.707073, 18.020548, 18.788141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.003580, 17.776194, 19.462318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306951, 17.975351, 19.294085>,  <15.488973, 18.094845, 19.193144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306951, 17.975351, 19.294085>,  <15.003580, 17.776194, 19.462318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306951, 17.975351, 19.294085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180578, 0.459522, 0.869615,
		0.626243, -0.735488, 0.258606,
		0.758427, 0.497892, -0.420586,
		15.534478, 18.124720, 19.167910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110160, 17.249842, 19.970833>,  <15.003580, 17.776194, 19.462318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110160, 17.249842, 19.970833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798079, 17.173378, 20.209074>,  <14.610830, 17.127501, 20.352018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.798079, 17.173378, 20.209074>,  <15.110160, 17.249842, 19.970833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.798079, 17.173378, 20.209074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322733, -0.692633, -0.645060,
		0.535843, -0.695498, 0.478701,
		-0.780202, -0.191159, 0.595603,
		14.564018, 17.116030, 20.387754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091228, 16.624826, 19.908466>,  <15.110160, 17.249842, 19.970833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091228, 16.624826, 19.908466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.724157, 16.708700, 20.043465>,  <14.503915, 16.759024, 20.124464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.724157, 16.708700, 20.043465>,  <15.091228, 16.624826, 19.908466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.724157, 16.708700, 20.043465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382248, -0.697710, -0.605878,
		0.108431, -0.685006, 0.720423,
		-0.917676, 0.209684, 0.337495,
		14.448854, 16.771606, 20.144712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.748215, 16.030811, 19.980978>,  <15.091228, 16.624826, 19.908466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.748215, 16.030811, 19.980978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420608, 16.255243, 20.028975>,  <14.224044, 16.389902, 20.057774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.420608, 16.255243, 20.028975>,  <14.748215, 16.030811, 19.980978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420608, 16.255243, 20.028975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531447, -0.663002, -0.527250,
		-0.216275, -0.495596, 0.841195,
		-0.819017, 0.561082, 0.119993,
		14.174902, 16.423567, 20.064972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.287036, 15.591964, 20.254066>,  <14.748215, 16.030811, 19.980978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.287036, 15.591964, 20.254066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079971, 15.883703, 20.075146>,  <13.955732, 16.058746, 19.967794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079971, 15.883703, 20.075146>,  <14.287036, 15.591964, 20.254066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079971, 15.883703, 20.075146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506914, -0.682610, -0.526385,
		-0.689262, -0.045729, 0.723067,
		-0.517644, 0.729351, -0.447317,
		13.924673, 16.102509, 19.940956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.538171, 15.530327, 20.390144>,  <14.287036, 15.591964, 20.254066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.538171, 15.530327, 20.390144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570035, 15.736913, 20.049107>,  <13.589153, 15.860865, 19.844484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570035, 15.736913, 20.049107>,  <13.538171, 15.530327, 20.390144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.570035, 15.736913, 20.049107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629204, -0.637339, -0.444861,
		-0.773147, 0.571894, 0.274190,
		0.079662, 0.516465, -0.852595,
		13.593933, 15.891852, 19.793327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.907022, 15.540778, 20.063313>,  <13.538171, 15.530327, 20.390144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.907022, 15.540778, 20.063313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100792, 15.656303, 19.733000>,  <13.217053, 15.725618, 19.534811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100792, 15.656303, 19.733000>,  <12.907022, 15.540778, 20.063313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.100792, 15.656303, 19.733000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684484, -0.462710, -0.563365,
		-0.544807, 0.838144, -0.026460,
		0.484425, 0.288814, -0.825784,
		13.246119, 15.742948, 19.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.427966, 15.919404, 19.540524>,  <12.907022, 15.540778, 20.063313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.427966, 15.919404, 19.540524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.727952, 15.814823, 19.297478>,  <12.907944, 15.752075, 19.151649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.727952, 15.814823, 19.297478>,  <12.427966, 15.919404, 19.540524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.727952, 15.814823, 19.297478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651139, -0.453563, -0.608521,
		-0.116493, 0.852012, -0.510397,
		0.749964, -0.261451, -0.607615,
		12.952941, 15.736387, 19.115192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202259, 15.981736, 18.855522>,  <12.427966, 15.919404, 19.540524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202259, 15.981736, 18.855522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519320, 15.744411, 18.799406>,  <12.709558, 15.602016, 18.765736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519320, 15.744411, 18.799406>,  <12.202259, 15.981736, 18.855522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519320, 15.744411, 18.799406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541340, -0.579076, -0.609608,
		0.280449, 0.559152, -0.780190,
		0.792653, -0.593313, -0.140290,
		12.757116, 15.566418, 18.757318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197881, 15.797842, 18.121401>,  <12.202259, 15.981736, 18.855522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197881, 15.797842, 18.121401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.439474, 15.522600, 18.282255>,  <12.584431, 15.357455, 18.378769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.439474, 15.522600, 18.282255>,  <12.197881, 15.797842, 18.121401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.439474, 15.522600, 18.282255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455116, -0.711986, -0.534738,
		0.654272, 0.139954, -0.743196,
		0.603984, -0.688105, 0.402138,
		12.620669, 15.316169, 18.402897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.525901, 15.368481, 17.597502>,  <12.197881, 15.797842, 18.121401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.525901, 15.368481, 17.597502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.500415, 15.158605, 17.937063>,  <12.485124, 15.032679, 18.140800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.500415, 15.158605, 17.937063>,  <12.525901, 15.368481, 17.597502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.500415, 15.158605, 17.937063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440532, -0.748483, -0.495687,
		0.895473, -0.405553, -0.183454,
		-0.063715, -0.524691, 0.848905,
		12.481300, 15.001197, 18.191734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754616, 14.727750, 17.376488>,  <12.525901, 15.368481, 17.597502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754616, 14.727750, 17.376488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.552691, 14.672728, 17.717367>,  <12.431535, 14.639714, 17.921894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.552691, 14.672728, 17.717367>,  <12.754616, 14.727750, 17.376488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.552691, 14.672728, 17.717367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571073, -0.687098, -0.449191,
		0.647332, -0.713425, 0.268302,
		-0.504813, -0.137556, 0.852198,
		12.401246, 14.631461, 17.973026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.582593, 14.020138, 17.490921>,  <12.754616, 14.727750, 17.376488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.582593, 14.020138, 17.490921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331323, 14.182804, 17.756256>,  <12.180560, 14.280404, 17.915457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331323, 14.182804, 17.756256>,  <12.582593, 14.020138, 17.490921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.331323, 14.182804, 17.756256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719823, -0.627395, -0.297037,
		0.295381, -0.664078, 0.686841,
		-0.628176, 0.406665, 0.663339,
		12.142870, 14.304804, 17.955257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.256507, 13.493020, 17.975281>,  <12.582593, 14.020138, 17.490921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.256507, 13.493020, 17.975281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015783, 13.812320, 17.965271>,  <11.871349, 14.003900, 17.959265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015783, 13.812320, 17.965271>,  <12.256507, 13.493020, 17.975281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015783, 13.812320, 17.965271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754216, -0.578358, -0.310903,
		-0.262649, -0.168232, 0.950112,
		-0.601809, 0.798248, -0.025022,
		11.835240, 14.051794, 17.957764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.571518, 13.327328, 18.464706>,  <12.256507, 13.493020, 17.975281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.571518, 13.327328, 18.464706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501815, 13.611753, 18.192228>,  <11.459992, 13.782408, 18.028742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501815, 13.611753, 18.192228>,  <11.571518, 13.327328, 18.464706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.501815, 13.611753, 18.192228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756713, -0.539358, -0.369430,
		-0.630095, 0.451091, 0.632058,
		-0.174259, 0.711063, -0.681193,
		11.449537, 13.825071, 17.987871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.400322, 12.855100, 19.082794>,  <11.571518, 13.327328, 18.464706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.400322, 12.855100, 19.082794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642023, 12.559911, 19.202978>,  <11.787044, 12.382797, 19.275087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.642023, 12.559911, 19.202978>,  <11.400322, 12.855100, 19.082794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.642023, 12.559911, 19.202978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420516, 0.615652, 0.666437,
		-0.676791, -0.276349, 0.682339,
		0.604253, -0.737972, 0.300459,
		11.823298, 12.338519, 19.293116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.090695, 13.360075, 19.339848>,  <11.400322, 12.855100, 19.082794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.090695, 13.360075, 19.339848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.002975, 13.032329, 19.551714>,  <11.950343, 12.835681, 19.678835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.002975, 13.032329, 19.551714>,  <12.090695, 13.360075, 19.339848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.002975, 13.032329, 19.551714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251027, 0.477220, 0.842168,
		-0.942811, 0.317648, 0.101028,
		-0.219300, -0.819366, 0.529667,
		11.937185, 12.786519, 19.710613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614084, 13.402638, 19.900070>,  <12.090695, 13.360075, 19.339848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614084, 13.402638, 19.900070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829720, 13.081994, 20.003456>,  <11.959101, 12.889607, 20.065489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.829720, 13.081994, 20.003456>,  <11.614084, 13.402638, 19.900070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.829720, 13.081994, 20.003456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106364, 0.369214, 0.923238,
		-0.835506, -0.470215, 0.284302,
		0.539088, -0.801610, 0.258467,
		11.991446, 12.841511, 20.080996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.423650, 13.266034, 20.543232>,  <11.614084, 13.402638, 19.900070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.423650, 13.266034, 20.543232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.779083, 13.084519, 20.516403>,  <11.992343, 12.975611, 20.500307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.779083, 13.084519, 20.516403>,  <11.423650, 13.266034, 20.543232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.779083, 13.084519, 20.516403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200683, 0.253088, 0.946400,
		-0.412489, -0.854414, 0.315958,
		0.888582, -0.453787, -0.067071,
		12.045658, 12.948383, 20.496283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.463268, 12.881358, 21.195992>,  <11.423650, 13.266034, 20.543232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.463268, 12.881358, 21.195992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.828127, 12.921467, 21.037027>,  <12.047042, 12.945532, 20.941648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.828127, 12.921467, 21.037027>,  <11.463268, 12.881358, 21.195992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.828127, 12.921467, 21.037027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374586, 0.189607, 0.907598,
		0.166346, -0.976728, 0.135394,
		0.912148, 0.100259, -0.397409,
		12.101770, 12.951548, 20.917805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.855184, 12.512553, 21.593264>,  <11.463268, 12.881358, 21.195992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.855184, 12.512553, 21.593264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.124044, 12.747254, 21.412628>,  <12.285361, 12.888075, 21.304247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.124044, 12.747254, 21.412628>,  <11.855184, 12.512553, 21.593264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.124044, 12.747254, 21.412628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446464, 0.165371, 0.879388,
		0.590663, -0.792700, -0.150809,
		0.672151, 0.586752, -0.451590,
		12.325690, 12.923280, 21.277151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.558209, 12.371053, 21.912470>,  <11.855184, 12.512553, 21.593264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.558209, 12.371053, 21.912470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.594834, 12.731864, 21.743729>,  <12.616809, 12.948351, 21.642485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.594834, 12.731864, 21.743729>,  <12.558209, 12.371053, 21.912470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.594834, 12.731864, 21.743729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522489, 0.317117, 0.791481,
		0.847716, -0.292883, -0.442264,
		0.091562, 0.902029, -0.421853,
		12.622303, 13.002473, 21.617172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.218318, 12.606492, 22.049152>,  <12.558209, 12.371053, 21.912470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.218318, 12.606492, 22.049152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034899, 12.952476, 21.967587>,  <12.924847, 13.160066, 21.918648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034899, 12.952476, 21.967587>,  <13.218318, 12.606492, 22.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034899, 12.952476, 21.967587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505287, 0.442528, 0.740847,
		0.731039, 0.236679, -0.639972,
		-0.458549, 0.864958, -0.203914,
		12.897334, 13.211963, 21.906412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.781962, 13.139017, 21.947330>,  <13.218318, 12.606492, 22.049152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.781962, 13.139017, 21.947330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438757, 13.331222, 22.019905>,  <13.232834, 13.446545, 22.063450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438757, 13.331222, 22.019905>,  <13.781962, 13.139017, 21.947330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.438757, 13.331222, 22.019905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494958, 0.679151, 0.542005,
		0.137216, 0.554853, -0.820555,
		-0.858014, 0.480512, 0.181438,
		13.181353, 13.475375, 22.074337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.996698, 13.732251, 22.044725>,  <13.781962, 13.139017, 21.947330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.996698, 13.732251, 22.044725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.629529, 13.785319, 22.194292>,  <13.409227, 13.817161, 22.284033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.629529, 13.785319, 22.194292>,  <13.996698, 13.732251, 22.044725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.629529, 13.785319, 22.194292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368279, 0.635515, 0.678595,
		-0.147600, 0.760605, -0.632214,
		-0.917924, 0.132670, 0.373917,
		13.354152, 13.825120, 22.306467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826304, 14.496170, 22.032181>,  <13.996698, 13.732251, 22.044725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826304, 14.496170, 22.032181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612367, 14.318643, 22.319782>,  <13.484004, 14.212126, 22.492344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612367, 14.318643, 22.319782>,  <13.826304, 14.496170, 22.032181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.612367, 14.318643, 22.319782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358307, 0.651513, 0.668690,
		-0.765218, 0.615269, -0.189434,
		-0.534843, -0.443818, 0.719005,
		13.451914, 14.185497, 22.535484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.555322, 15.054322, 22.354837>,  <13.826304, 14.496170, 22.032181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.555322, 15.054322, 22.354837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513459, 14.754692, 22.616505>,  <13.488341, 14.574914, 22.773504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.513459, 14.754692, 22.616505>,  <13.555322, 15.054322, 22.354837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513459, 14.754692, 22.616505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371210, 0.580816, 0.724469,
		-0.922632, 0.318653, 0.217278,
		-0.104656, -0.749074, 0.654167,
		13.482062, 14.529970, 22.812756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.165184, 15.300684, 22.911066>,  <13.555322, 15.054322, 22.354837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.165184, 15.300684, 22.911066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.393223, 15.002131, 23.048414>,  <13.530046, 14.822999, 23.130823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.393223, 15.002131, 23.048414>,  <13.165184, 15.300684, 22.911066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.393223, 15.002131, 23.048414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308370, 0.581778, 0.752624,
		-0.761510, -0.323183, 0.561832,
		0.570096, -0.746383, 0.343370,
		13.564252, 14.778215, 23.151424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117458, 15.376266, 23.645370>,  <13.165184, 15.300684, 22.911066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117458, 15.376266, 23.645370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431283, 15.132535, 23.599440>,  <13.619577, 14.986297, 23.571880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.431283, 15.132535, 23.599440>,  <13.117458, 15.376266, 23.645370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431283, 15.132535, 23.599440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448889, 0.430409, 0.783101,
		-0.427742, -0.665934, 0.611202,
		0.784560, -0.609327, -0.114827,
		13.666651, 14.949737, 23.564991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282454, 15.229918, 24.289234>,  <13.117458, 15.376266, 23.645370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282454, 15.229918, 24.289234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614296, 15.114865, 24.097807>,  <13.813400, 15.045834, 23.982950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614296, 15.114865, 24.097807>,  <13.282454, 15.229918, 24.289234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.614296, 15.114865, 24.097807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555806, 0.343617, 0.756972,
		-0.053286, -0.893977, 0.444933,
		0.829603, -0.287632, -0.478568,
		13.863176, 15.028576, 23.954237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708106, 14.934019, 24.772434>,  <13.282454, 15.229918, 24.289234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708106, 14.934019, 24.772434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.975662, 15.030874, 24.491306>,  <14.136196, 15.088987, 24.322630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.975662, 15.030874, 24.491306>,  <13.708106, 14.934019, 24.772434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.975662, 15.030874, 24.491306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633678, 0.308562, 0.709395,
		0.388636, -0.919868, 0.052956,
		0.668890, 0.242139, -0.702819,
		14.176330, 15.103516, 24.280460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317832, 14.779779, 25.107533>,  <13.708106, 14.934019, 24.772434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317832, 14.779779, 25.107533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.429812, 15.005855, 24.797129>,  <14.497001, 15.141500, 24.610886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.429812, 15.005855, 24.797129>,  <14.317832, 14.779779, 25.107533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429812, 15.005855, 24.797129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799686, 0.309944, 0.514234,
		0.531158, -0.764524, -0.365204,
		0.279952, 0.565188, -0.776009,
		14.513798, 15.175411, 24.564325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023319, 14.629115, 24.812946>,  <14.317832, 14.779779, 25.107533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023319, 14.629115, 24.812946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937857, 15.014863, 24.750538>,  <14.886580, 15.246312, 24.713093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937857, 15.014863, 24.750538>,  <15.023319, 14.629115, 24.812946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937857, 15.014863, 24.750538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888195, 0.258260, 0.380015,
		0.406769, -0.057383, -0.911727,
		-0.213656, 0.964370, -0.156020,
		14.873760, 15.304173, 24.703732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718326, 14.900640, 24.493385>,  <15.023319, 14.629115, 24.812946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718326, 14.900640, 24.493385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528700, 15.235392, 24.602854>,  <15.414925, 15.436242, 24.668535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.528700, 15.235392, 24.602854>,  <15.718326, 14.900640, 24.493385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.528700, 15.235392, 24.602854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841346, 0.338907, 0.421046,
		0.259615, 0.429857, -0.864768,
		-0.474065, 0.836878, 0.273673,
		15.386480, 15.486455, 24.684956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183720, 15.473791, 24.352896>,  <15.718326, 14.900640, 24.493385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183720, 15.473791, 24.352896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.934315, 15.623426, 24.627499>,  <15.784672, 15.713207, 24.792259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.934315, 15.623426, 24.627499>,  <16.183720, 15.473791, 24.352896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934315, 15.623426, 24.627499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764314, 0.476406, 0.434582,
		-0.164484, 0.795673, -0.582966,
		-0.623513, 0.374087, 0.686505,
		15.747261, 15.735653, 24.833450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.419859, 16.137514, 24.430593>,  <16.183720, 15.473791, 24.352896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.419859, 16.137514, 24.430593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210752, 16.065784, 24.763954>,  <16.085289, 16.022747, 24.963970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.210752, 16.065784, 24.763954>,  <16.419859, 16.137514, 24.430593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210752, 16.065784, 24.763954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631078, 0.575838, 0.519760,
		-0.573111, 0.797654, -0.187861,
		-0.522766, -0.179325, 0.833401,
		16.053923, 16.011988, 25.013975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281498, 16.750214, 24.749342>,  <16.419859, 16.137514, 24.430593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281498, 16.750214, 24.749342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241056, 16.482302, 25.043598>,  <16.216791, 16.321554, 25.220152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.241056, 16.482302, 25.043598>,  <16.281498, 16.750214, 24.749342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241056, 16.482302, 25.043598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529159, 0.589959, 0.609868,
		-0.842478, 0.450933, 0.294773,
		-0.101106, -0.669782, 0.735643,
		16.210724, 16.281366, 25.264292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.085083, 17.105480, 25.352034>,  <16.281498, 16.750214, 24.749342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.085083, 17.105480, 25.352034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.248484, 16.765476, 25.485069>,  <16.346523, 16.561474, 25.564890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.248484, 16.765476, 25.485069>,  <16.085083, 17.105480, 25.352034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248484, 16.765476, 25.485069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367817, 0.486780, 0.792311,
		-0.835367, -0.201327, 0.511497,
		0.408500, -0.850008, 0.332588,
		16.371035, 16.510473, 25.584846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916949, 17.095129, 26.082092>,  <16.085083, 17.105480, 25.352034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916949, 17.095129, 26.082092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.226057, 16.841433, 26.072550>,  <16.411522, 16.689215, 26.066824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.226057, 16.841433, 26.072550>,  <15.916949, 17.095129, 26.082092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.226057, 16.841433, 26.072550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289171, 0.318375, 0.902783,
		-0.564986, -0.704540, 0.429434,
		0.772768, -0.634239, -0.023855,
		16.457888, 16.651161, 26.065393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.949228, 16.814526, 26.723576>,  <15.916949, 17.095129, 26.082092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.949228, 16.814526, 26.723576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.310040, 16.746054, 26.565062>,  <16.526527, 16.704969, 26.469954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.310040, 16.746054, 26.565062>,  <15.949228, 16.814526, 26.723576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.310040, 16.746054, 26.565062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428196, 0.238500, 0.871645,
		-0.054697, -0.955936, 0.288433,
		0.902029, -0.171182, -0.396283,
		16.580648, 16.694698, 26.446177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.307339, 16.543303, 27.347204>,  <15.949228, 16.814526, 26.723576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.307339, 16.543303, 27.347204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579721, 16.649246, 27.074104>,  <16.743151, 16.712812, 26.910244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579721, 16.649246, 27.074104>,  <16.307339, 16.543303, 27.347204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579721, 16.649246, 27.074104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619949, 0.287788, 0.729960,
		0.389823, -0.920342, 0.031772,
		0.680956, 0.264858, -0.682751,
		16.784008, 16.728703, 26.869280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793499, 16.568525, 27.828716>,  <16.307339, 16.543303, 27.347204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793499, 16.568525, 27.828716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946011, 16.767065, 27.516752>,  <17.037518, 16.886189, 27.329573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946011, 16.767065, 27.516752>,  <16.793499, 16.568525, 27.828716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946011, 16.767065, 27.516752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690121, 0.408514, 0.597369,
		0.615108, -0.765999, -0.186782,
		0.381281, 0.496349, -0.779912,
		17.060394, 16.915970, 27.282778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522263, 16.478565, 27.802992>,  <16.793499, 16.568525, 27.828716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522263, 16.478565, 27.802992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446262, 16.834391, 27.636824>,  <17.400661, 17.047886, 27.537123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446262, 16.834391, 27.636824>,  <17.522263, 16.478565, 27.802992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446262, 16.834391, 27.636824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643810, 0.432340, 0.631341,
		0.741221, -0.147496, -0.654856,
		-0.190000, 0.889566, -0.415419,
		17.389263, 17.101261, 27.512197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
