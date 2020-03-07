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
	<4.002785, 3.447564, 5.312721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.606548, 3.501825, 5.319926>,  <3.368806, 3.534382, 5.324250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.606548, 3.501825, 5.319926>,  <4.002785, 3.447564, 5.312721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.606548, 3.501825, 5.319926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132337, -0.916125, -0.378422,
		-0.034831, -0.377245, 0.925458,
		-0.990593, 0.135653, 0.018014,
		3.309371, 3.542521, 5.325330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.626077, 2.924890, 5.699388>,  <4.002785, 3.447564, 5.312721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.626077, 2.924890, 5.699388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.428864, 3.111673, 5.405757>,  <3.310535, 3.223743, 5.229579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.428864, 3.111673, 5.405757>,  <3.626077, 2.924890, 5.699388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.428864, 3.111673, 5.405757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041035, -0.830335, -0.555752,
		-0.869043, -0.304126, 0.390221,
		-0.493033, 0.466959, -0.734076,
		3.280953, 3.251761, 5.185534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.082260, 2.444873, 5.326243>,  <3.626077, 2.924890, 5.699388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.082260, 2.444873, 5.326243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203041, 2.754915, 5.104240>,  <3.275510, 2.940941, 4.971038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203041, 2.754915, 5.104240>,  <3.082260, 2.444873, 5.326243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.203041, 2.754915, 5.104240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259302, -0.627011, -0.734588,
		-0.917380, 0.077896, -0.390314,
		0.301953, 0.775106, -0.555009,
		3.293627, 2.987447, 4.937737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.707554, 2.374495, 4.637725>,  <3.082260, 2.444873, 5.326243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.707554, 2.374495, 4.637725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.054836, 2.572699, 4.627223>,  <3.263206, 2.691621, 4.620922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.054836, 2.572699, 4.627223>,  <2.707554, 2.374495, 4.637725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.054836, 2.572699, 4.627223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268610, -0.513813, -0.814767,
		-0.417215, 0.700333, -0.579194,
		0.868205, 0.495510, -0.026254,
		3.315298, 2.721352, 4.619347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.752162, 2.614759, 3.938167>,  <2.707554, 2.374495, 4.637725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.752162, 2.614759, 3.938167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.120945, 2.624758, 4.092760>,  <3.342215, 2.630757, 4.185516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.120945, 2.624758, 4.092760>,  <2.752162, 2.614759, 3.938167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.120945, 2.624758, 4.092760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335105, -0.551772, -0.763710,
		0.194160, 0.833620, -0.517087,
		0.921958, 0.024997, 0.386482,
		3.397532, 2.632257, 4.208704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.204102, 2.882470, 3.375230>,  <2.752162, 2.614759, 3.938167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.204102, 2.882470, 3.375230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.421570, 2.669710, 3.634924>,  <3.552051, 2.542054, 3.790740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.421570, 2.669710, 3.634924>,  <3.204102, 2.882470, 3.375230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.421570, 2.669710, 3.634924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399353, -0.516426, -0.757510,
		0.738201, 0.671109, -0.068350,
		0.543670, -0.531899, 0.649236,
		3.584671, 2.510140, 3.829695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.793974, 2.781577, 3.034461>,  <3.204102, 2.882470, 3.375230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.793974, 2.781577, 3.034461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.819626, 2.491621, 3.308811>,  <3.835017, 2.317648, 3.473420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.819626, 2.491621, 3.308811>,  <3.793974, 2.781577, 3.034461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.819626, 2.491621, 3.308811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288837, -0.644389, -0.708051,
		0.955228, 0.243513, 0.168051,
		0.064130, -0.724889, 0.685874,
		3.838865, 2.274154, 3.514573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.348039, 2.469375, 2.861700>,  <3.793974, 2.781577, 3.034461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.348039, 2.469375, 2.861700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.180233, 2.189234, 3.092703>,  <4.079549, 2.021149, 3.231305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.180233, 2.189234, 3.092703>,  <4.348039, 2.469375, 2.861700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.180233, 2.189234, 3.092703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367580, -0.712768, -0.597366,
		0.829995, -0.038324, 0.556452,
		-0.419514, -0.700352, 0.577507,
		4.054379, 1.979128, 3.265955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.829978, 1.054783, 2.074795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.779381, 0.858985, 2.419909>,  <3.749023, 0.741506, 2.626976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.779381, 0.858985, 2.419909>,  <3.829978, 1.054783, 2.074795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.779381, 0.858985, 2.419909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157508, 0.848825, 0.504666,
		-0.979383, 0.199731, -0.030270,
		-0.126492, -0.489494, 0.862783,
		3.741433, 0.712137, 2.678744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.312989, 1.373990, 2.500200>,  <3.829978, 1.054783, 2.074795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.312989, 1.373990, 2.500200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519638, 1.158116, 2.766085>,  <3.643627, 1.028592, 2.925617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.519638, 1.158116, 2.766085>,  <3.312989, 1.373990, 2.500200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.519638, 1.158116, 2.766085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105254, 0.810483, 0.576229,
		-0.849720, -0.227728, 0.475517,
		0.516622, -0.539683, 0.664714,
		3.674625, 0.996211, 2.965499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.069298, 1.394922, 3.249377>,  <3.312989, 1.373990, 2.500200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.069298, 1.394922, 3.249377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.467728, 1.373766, 3.220989>,  <3.706786, 1.361072, 3.203955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.467728, 1.373766, 3.220989>,  <3.069298, 1.394922, 3.249377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.467728, 1.373766, 3.220989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086082, 0.765449, 0.637712,
		0.020597, -0.641319, 0.766998,
		0.996075, -0.052889, -0.070972,
		3.766550, 1.357899, 3.199697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.318653, 1.134744, 3.931893>,  <3.069298, 1.394922, 3.249377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.318653, 1.134744, 3.931893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567429, 1.377820, 3.734346>,  <3.716694, 1.523665, 3.615818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567429, 1.377820, 3.734346>,  <3.318653, 1.134744, 3.931893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567429, 1.377820, 3.734346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152726, 0.524439, 0.837639,
		0.768027, -0.596387, 0.233359,
		0.621939, 0.607689, -0.493867,
		3.754010, 1.560127, 3.586186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.847331, 1.340474, 4.428822>,  <3.318653, 1.134744, 3.931893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.847331, 1.340474, 4.428822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.850471, 1.615752, 4.138629>,  <3.852356, 1.780919, 3.964514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.850471, 1.615752, 4.138629>,  <3.847331, 1.340474, 4.428822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.850471, 1.615752, 4.138629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099747, 0.721347, 0.685353,
		0.994982, -0.077745, -0.062982,
		0.007851, 0.688196, -0.725482,
		3.852827, 1.822211, 3.920985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.357684, 1.874272, 4.669269>,  <3.847331, 1.340474, 4.428822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.357684, 1.874272, 4.669269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.107491, 2.055500, 4.415183>,  <3.957374, 2.164237, 4.262732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.107491, 2.055500, 4.415183>,  <4.357684, 1.874272, 4.669269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107491, 2.055500, 4.415183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088174, 0.767869, 0.634509,
		0.775239, 0.452885, -0.440341,
		-0.625484, 0.453069, -0.635215,
		3.919845, 2.191421, 4.224618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606324, 2.589921, 4.587119>,  <4.357684, 1.874272, 4.669269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606324, 2.589921, 4.587119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.214783, 2.579415, 4.505972>,  <3.979858, 2.573112, 4.457284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.214783, 2.579415, 4.505972>,  <4.606324, 2.589921, 4.587119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.214783, 2.579415, 4.505972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133099, 0.834858, 0.534132,
		0.155336, 0.549838, -0.820700,
		-0.978854, -0.026265, -0.202866,
		3.921126, 2.571536, 4.445113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.513944, 3.292631, 4.605924>,  <4.606324, 2.589921, 4.587119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.513944, 3.292631, 4.605924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154579, 3.117068, 4.611837>,  <3.938961, 3.011731, 4.615385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154579, 3.117068, 4.611837>,  <4.513944, 3.292631, 4.605924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154579, 3.117068, 4.611837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383086, 0.799721, 0.462267,
		-0.214714, 0.409643, -0.886617,
		-0.898411, -0.438906, 0.014783,
		3.885056, 2.985396, 4.616272>
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
