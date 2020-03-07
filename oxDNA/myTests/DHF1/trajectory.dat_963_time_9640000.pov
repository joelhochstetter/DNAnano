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
	<1.015239, 1.716261, 1.297151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.171387, 1.461605, 1.563173>,  <1.265075, 1.308811, 1.722787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.171387, 1.461605, 1.563173>,  <1.015239, 1.716261, 1.297151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.171387, 1.461605, 1.563173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611953, -0.360268, -0.704074,
		0.687841, 0.681833, 0.248956,
		0.390370, -0.636640, 0.665057,
		1.288498, 1.270613, 1.762690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.599370, 1.960961, 1.269221>,  <1.015239, 1.716261, 1.297151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.599370, 1.960961, 1.269221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599670, 1.583740, 1.402278>,  <1.599851, 1.357408, 1.482112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599670, 1.583740, 1.402278>,  <1.599370, 1.960961, 1.269221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.599670, 1.583740, 1.402278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531189, -0.281456, -0.799138,
		0.847253, 0.177297, 0.500727,
		0.000752, -0.943053, 0.332642,
		1.599896, 1.300824, 1.502071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.330226, 1.777641, 1.242544>,  <1.599370, 1.960961, 1.269221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.330226, 1.777641, 1.242544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.090561, 1.457447, 1.236516>,  <1.946762, 1.265330, 1.232899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.090561, 1.457447, 1.236516>,  <2.330226, 1.777641, 1.242544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.090561, 1.457447, 1.236516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471674, -0.337714, -0.814538,
		0.646937, -0.495148, 0.579914,
		-0.599162, -0.800486, -0.015069,
		1.910812, 1.217301, 1.231995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.747250, 1.189319, 1.142701>,  <2.330226, 1.777641, 1.242544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.747250, 1.189319, 1.142701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.385376, 1.080349, 1.011658>,  <2.168251, 1.014967, 0.933032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.385376, 1.080349, 1.011658>,  <2.747250, 1.189319, 1.142701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.385376, 1.080349, 1.011658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420101, -0.441965, -0.792579,
		0.071128, -0.854664, 0.514286,
		-0.904686, -0.272426, -0.327609,
		2.113970, 0.998621, 0.913375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.738005, 0.489910, 0.849227>,  <2.747250, 1.189319, 1.142701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.738005, 0.489910, 0.849227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.412247, 0.657520, 0.688639>,  <2.216792, 0.758086, 0.592286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.412247, 0.657520, 0.688639>,  <2.738005, 0.489910, 0.849227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.412247, 0.657520, 0.688639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164217, -0.497136, -0.851991,
		-0.556592, -0.759785, 0.336054,
		-0.814394, 0.419026, -0.401471,
		2.167928, 0.783228, 0.568197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.264522, -0.100146, 0.529772>,  <2.738005, 0.489910, 0.849227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.264522, -0.100146, 0.529772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.159187, 0.240547, 0.348574>,  <2.095987, 0.444963, 0.239854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.159187, 0.240547, 0.348574>,  <2.264522, -0.100146, 0.529772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.159187, 0.240547, 0.348574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076659, -0.486561, -0.870277,
		-0.961654, -0.194449, 0.193422,
		-0.263336, 0.851732, -0.452997,
		2.080187, 0.496067, 0.212675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.750665, -0.318393, 0.105980>,  <2.264522, -0.100146, 0.529772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.750665, -0.318393, 0.105980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.891342, 0.027573, -0.037259>,  <1.975748, 0.235152, -0.123203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.891342, 0.027573, -0.037259>,  <1.750665, -0.318393, 0.105980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.891342, 0.027573, -0.037259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004961, -0.380808, -0.924641,
		-0.936102, 0.326966, -0.129637,
		0.351693, 0.864915, -0.358098,
		1.996850, 0.287047, -0.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.257516, -0.081200, -0.417458>,  <1.750665, -0.318393, 0.105980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.257516, -0.081200, -0.417458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626984, 0.053761, -0.490115>,  <1.848665, 0.134737, -0.533709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.626984, 0.053761, -0.490115>,  <1.257516, -0.081200, -0.417458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.626984, 0.053761, -0.490115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039230, -0.554802, -0.831057,
		-0.381175, 0.760497, -0.525690,
		0.923670, 0.337401, -0.181642,
		1.904085, 0.154981, -0.544608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.032648, 3.038893, 4.871089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.762161, 2.744514, 4.884430>,  <2.599869, 2.567887, 4.892435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.762161, 2.744514, 4.884430>,  <3.032648, 3.038893, 4.871089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.762161, 2.744514, 4.884430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574583, -0.555201, -0.601337,
		0.461070, -0.387470, 0.798299,
		-0.676217, -0.735948, 0.033353,
		2.559296, 2.523730, 4.894435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.352495, 2.493423, 5.149692>,  <3.032648, 3.038893, 4.871089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.352495, 2.493423, 5.149692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054321, 2.337563, 4.933359>,  <2.875417, 2.244046, 4.803559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.054321, 2.337563, 4.933359>,  <3.352495, 2.493423, 5.149692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.054321, 2.337563, 4.933359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622873, -0.696133, -0.356971,
		-0.237396, -0.602968, 0.761625,
		-0.745434, -0.389652, -0.540832,
		2.830691, 2.220667, 4.771110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.184778, 1.764829, 5.229162>,  <3.352495, 2.493423, 5.149692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.184778, 1.764829, 5.229162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108887, 1.857845, 4.847601>,  <3.063352, 1.913655, 4.618665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.108887, 1.857845, 4.847601>,  <3.184778, 1.764829, 5.229162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.108887, 1.857845, 4.847601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731441, -0.614639, -0.295317,
		-0.654978, -0.753753, -0.053474,
		-0.189729, 0.232540, -0.953901,
		3.051968, 1.927607, 4.561430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.947281, 1.193409, 4.703069>,  <3.184778, 1.764829, 5.229162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.947281, 1.193409, 4.703069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.155014, 1.495605, 4.543304>,  <3.279654, 1.676923, 4.447446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.155014, 1.495605, 4.543304>,  <2.947281, 1.193409, 4.703069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.155014, 1.495605, 4.543304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753912, -0.625109, -0.202129,
		-0.402382, -0.196148, -0.894212,
		0.519332, 0.755490, -0.399410,
		3.310814, 1.722252, 4.423481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.465666, 1.400278, 4.283816>,  <2.947281, 1.193409, 4.703069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.465666, 1.400278, 4.283816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.307724, 1.074123, 4.453159>,  <2.212959, 0.878430, 4.554766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.307724, 1.074123, 4.453159>,  <2.465666, 1.400278, 4.283816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.307724, 1.074123, 4.453159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281289, 0.545965, 0.789176,
		-0.874623, 0.192524, -0.444936,
		-0.394855, -0.815387, 0.423359,
		2.189268, 0.829507, 4.580167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.766826, 1.509377, 4.507824>,  <2.465666, 1.400278, 4.283816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.766826, 1.509377, 4.507824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.871185, 1.209740, 4.751394>,  <1.933801, 1.029957, 4.897536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.871185, 1.209740, 4.751394>,  <1.766826, 1.509377, 4.507824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.871185, 1.209740, 4.751394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313432, 0.530869, 0.787362,
		-0.913068, -0.396278, -0.096287,
		0.260898, -0.749094, 0.608925,
		1.949455, 0.985011, 4.934072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.209636, 1.389911, 4.958654>,  <1.766826, 1.509377, 4.507824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.209636, 1.389911, 4.958654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.516068, 1.213234, 5.145430>,  <1.699926, 1.107228, 5.257495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.516068, 1.213234, 5.145430>,  <1.209636, 1.389911, 4.958654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.516068, 1.213234, 5.145430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239259, 0.478300, 0.844976,
		-0.596556, -0.759037, 0.260736,
		0.766078, -0.441692, 0.466940,
		1.745891, 1.080727, 5.285511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.899374, 0.953666, 5.387538>,  <1.209636, 1.389911, 4.958654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.899374, 0.953666, 5.387538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.272003, 0.983810, 5.529800>,  <1.495581, 1.001897, 5.615158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.272003, 0.983810, 5.529800>,  <0.899374, 0.953666, 5.387538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.272003, 0.983810, 5.529800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362387, 0.270757, 0.891833,
		-0.029086, -0.959693, 0.279540,
		0.931574, 0.075362, 0.355655,
		1.551475, 1.006419, 5.636497>
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
