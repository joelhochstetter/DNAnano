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
	<4.361291, 1.254060, 1.588674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.760239, 1.282978, 1.590822>,  <4.999607, 1.300329, 1.592111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.760239, 1.282978, 1.590822>,  <4.361291, 1.254060, 1.588674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.760239, 1.282978, 1.590822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007361, -0.174708, 0.984593,
		0.072120, -0.981963, -0.174780,
		0.997369, 0.072296, 0.005372,
		5.059449, 1.304667, 1.592434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.695379, 0.575665, 1.799353>,  <4.361291, 1.254060, 1.588674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.695379, 0.575665, 1.799353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.893692, 0.912815, 1.883028>,  <5.012680, 1.115105, 1.933233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.893692, 0.912815, 1.883028>,  <4.695379, 0.575665, 1.799353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.893692, 0.912815, 1.883028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061857, -0.205989, 0.976597,
		0.866241, -0.497120, -0.049988,
		0.495782, 0.842876, 0.209187,
		5.042427, 1.165678, 1.945784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.270580, 0.552949, 2.272027>,  <4.695379, 0.575665, 1.799353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.270580, 0.552949, 2.272027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.105976, 0.915642, 2.308903>,  <5.007214, 1.133257, 2.331028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.105976, 0.915642, 2.308903>,  <5.270580, 0.552949, 2.272027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.105976, 0.915642, 2.308903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073141, -0.133681, 0.988322,
		0.908466, 0.399960, 0.121330,
		-0.411509, 0.906731, 0.092191,
		4.982523, 1.187661, 2.336560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.609297, 1.014978, 2.817928>,  <5.270580, 0.552949, 2.272027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.609297, 1.014978, 2.817928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.219990, 1.094589, 2.772078>,  <4.986406, 1.142356, 2.744567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.219990, 1.094589, 2.772078>,  <5.609297, 1.014978, 2.817928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.219990, 1.094589, 2.772078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147533, -0.159261, 0.976150,
		0.176025, 0.966966, 0.184367,
		-0.973267, 0.199027, -0.114626,
		4.928010, 1.154297, 2.737690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455454, 1.337932, 3.325849>,  <5.609297, 1.014978, 2.817928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455454, 1.337932, 3.325849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085194, 1.221436, 3.229229>,  <4.863037, 1.151538, 3.171257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085194, 1.221436, 3.229229>,  <5.455454, 1.337932, 3.325849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.085194, 1.221436, 3.229229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164364, -0.265508, 0.949995,
		-0.340811, 0.919067, 0.197898,
		-0.925652, -0.291242, -0.241549,
		4.807498, 1.134063, 3.156764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.002838, 1.772114, 3.717788>,  <5.455454, 1.337932, 3.325849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.002838, 1.772114, 3.717788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.808258, 1.436119, 3.621632>,  <4.691510, 1.234522, 3.563938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.808258, 1.436119, 3.621632>,  <5.002838, 1.772114, 3.717788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.808258, 1.436119, 3.621632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091644, -0.224566, 0.970140,
		-0.868889, 0.493954, 0.032260,
		-0.486449, -0.839988, -0.240391,
		4.662323, 1.184123, 3.549514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.400913, 1.807750, 3.915295>,  <5.002838, 1.772114, 3.717788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.400913, 1.807750, 3.915295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.462555, 1.412529, 3.916166>,  <4.499540, 1.175396, 3.916689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.462555, 1.412529, 3.916166>,  <4.400913, 1.807750, 3.915295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.462555, 1.412529, 3.916166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178876, -0.025732, 0.983535,
		-0.971728, -0.151957, -0.180704,
		0.154105, -0.988052, 0.002177,
		4.508786, 1.116113, 3.916820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.921530, 1.532054, 4.344800>,  <4.400913, 1.807750, 3.915295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.921530, 1.532054, 4.344800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.183640, 1.232330, 4.306528>,  <4.340905, 1.052496, 4.283565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.183640, 1.232330, 4.306528>,  <3.921530, 1.532054, 4.344800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.183640, 1.232330, 4.306528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039426, -0.160414, 0.986262,
		-0.754363, -0.642498, -0.134657,
		0.655272, -0.749308, -0.095679,
		4.380221, 1.007538, 4.277824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.293870, 1.097855, 5.599645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.251785, 0.733078, 5.441006>,  <5.226534, 0.514212, 5.345822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.251785, 0.733078, 5.441006>,  <5.293870, 1.097855, 5.599645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.251785, 0.733078, 5.441006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413918, 0.402782, -0.816357,
		0.904214, 0.078269, -0.419847,
		-0.105211, -0.911943, -0.396598,
		5.220222, 0.459495, 5.322026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.452748, 1.037852, 4.847345>,  <5.293870, 1.097855, 5.599645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.452748, 1.037852, 4.847345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.205750, 0.726746, 4.894299>,  <5.057550, 0.540082, 4.922471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.205750, 0.726746, 4.894299>,  <5.452748, 1.037852, 4.847345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.205750, 0.726746, 4.894299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444313, 0.221755, -0.867993,
		0.649065, -0.588137, -0.482504,
		-0.617496, -0.777766, 0.117383,
		5.020501, 0.493416, 4.929513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.548828, 0.468517, 4.318591>,  <5.452748, 1.037852, 4.847345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.548828, 0.468517, 4.318591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184029, 0.540253, 4.466156>,  <4.965149, 0.583294, 4.554695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184029, 0.540253, 4.466156>,  <5.548828, 0.468517, 4.318591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.184029, 0.540253, 4.466156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365107, 0.055020, -0.929338,
		-0.186965, -0.982247, 0.015300,
		-0.911998, 0.179340, 0.368912,
		4.910429, 0.594054, 4.576830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.159805, -0.015111, 4.067430>,  <5.548828, 0.468517, 4.318591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.159805, -0.015111, 4.067430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.935852, 0.309914, 4.132267>,  <4.801480, 0.504928, 4.171170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.935852, 0.309914, 4.132267>,  <5.159805, -0.015111, 4.067430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.935852, 0.309914, 4.132267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402193, -0.095482, -0.910562,
		-0.724411, -0.575002, 0.380265,
		-0.559884, 0.812561, 0.162094,
		4.767887, 0.553682, 4.180895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.490418, -0.141840, 3.800681>,  <5.159805, -0.015111, 4.067430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.490418, -0.141840, 3.800681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521904, 0.255562, 3.833553>,  <4.540795, 0.494003, 3.853276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.521904, 0.255562, 3.833553>,  <4.490418, -0.141840, 3.800681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.521904, 0.255562, 3.833553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239617, 0.098875, -0.965820,
		-0.967671, 0.056333, 0.245843,
		0.078715, 0.993504, 0.082180,
		4.545518, 0.553613, 3.858207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.911809, 0.138697, 3.290995>,  <4.490418, -0.141840, 3.800681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.911809, 0.138697, 3.290995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.141037, 0.458344, 3.363663>,  <4.278574, 0.650132, 3.407263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.141037, 0.458344, 3.363663>,  <3.911809, 0.138697, 3.290995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.141037, 0.458344, 3.363663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188499, 0.344271, -0.919753,
		-0.797534, 0.492837, 0.347924,
		0.573069, 0.799117, 0.181669,
		4.312958, 0.698079, 3.418163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.626476, 0.661912, 2.920479>,  <3.911809, 0.138696, 3.290995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.626476, 0.661912, 2.920479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.983101, 0.831139, 2.985138>,  <4.197076, 0.932675, 3.023934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.983101, 0.831139, 2.985138>,  <3.626476, 0.661912, 2.920479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.983101, 0.831139, 2.985138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070045, 0.481433, -0.873679,
		-0.447447, 0.767618, 0.458862,
		0.891563, 0.423066, 0.161648,
		4.250570, 0.958059, 3.033633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.654109, 1.317316, 2.557645>,  <3.626476, 0.661912, 2.920479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.654109, 1.317316, 2.557645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.041870, 1.226925, 2.595997>,  <4.274527, 1.172690, 2.619008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.041870, 1.226925, 2.595997>,  <3.654109, 1.317316, 2.557645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.041870, 1.226925, 2.595997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176301, 0.369133, -0.912502,
		0.170812, 0.901485, 0.397678,
		0.969403, -0.225977, 0.095880,
		4.332691, 1.159132, 2.624761>
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
