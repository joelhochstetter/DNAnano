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
	<0.703013, -0.710347, 2.077925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802286, -0.404610, 2.315979>,  <0.861850, -0.221168, 2.458812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802286, -0.404610, 2.315979>,  <0.703013, -0.710347, 2.077925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.802286, -0.404610, 2.315979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773536, 0.213456, -0.596723,
		-0.583136, 0.608455, -0.538270,
		0.248182, 0.764342, 0.595136,
		0.876741, -0.175307, 2.494520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.784231, -0.092473, 1.672346>,  <0.703013, -0.710347, 2.077925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.784231, -0.092473, 1.672346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030413, -0.087715, 1.987579>,  <1.178122, -0.084860, 2.176719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030413, -0.087715, 1.987579>,  <0.784231, -0.092473, 1.672346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.030413, -0.087715, 1.987579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762409, 0.244572, -0.599097,
		-0.199869, 0.969558, 0.141454,
		0.615455, 0.011895, 0.788082,
		1.215049, -0.084147, 2.224004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.291681, 0.407910, 1.596391>,  <0.784231, -0.092473, 1.672346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.291681, 0.407910, 1.596391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.499817, 0.192543, 1.861526>,  <1.624698, 0.063323, 2.020607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.499817, 0.192543, 1.861526>,  <1.291681, 0.407910, 1.596391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.499817, 0.192543, 1.861526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851819, 0.272330, -0.447482,
		0.060421, 0.797461, 0.600338,
		0.520339, -0.538417, 0.662838,
		1.655919, 0.031018, 2.060378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.810829, 0.745383, 1.780034>,  <1.291681, 0.407910, 1.596391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.810829, 0.745383, 1.780034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.912489, 0.360748, 1.821526>,  <1.973485, 0.129968, 1.846421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.912489, 0.360748, 1.821526>,  <1.810829, 0.745383, 1.780034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.912489, 0.360748, 1.821526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829930, 0.161759, -0.533901,
		0.496613, 0.221779, 0.839160,
		0.254150, -0.961586, 0.103730,
		1.988734, 0.072272, 1.852644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.442630, 0.618716, 2.058843>,  <1.810829, 0.745383, 1.780034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.442630, 0.618716, 2.058843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.360487, 0.343552, 1.780388>,  <2.311201, 0.178453, 1.613315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.360487, 0.343552, 1.780388>,  <2.442630, 0.618716, 2.058843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.360487, 0.343552, 1.780388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816617, 0.271596, -0.509285,
		0.539411, -0.673063, 0.505986,
		-0.205357, -0.687911, -0.696137,
		2.298880, 0.137178, 1.571547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.068480, 0.198739, 1.947941>,  <2.442630, 0.618716, 2.058843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.068480, 0.198739, 1.947941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.849796, 0.116310, 1.623314>,  <2.718586, 0.066853, 1.428538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.849796, 0.116310, 1.623314>,  <3.068480, 0.198739, 1.947941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.849796, 0.116310, 1.623314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816706, 0.082514, -0.571123,
		0.184659, -0.975051, 0.123189,
		-0.546710, -0.206073, -0.811568,
		2.685783, 0.054488, 1.379843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.518624, -0.220523, 1.591349>,  <3.068480, 0.198739, 1.947941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.518624, -0.220523, 1.591349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.275517, -0.063080, 1.315468>,  <3.129652, 0.031386, 1.149939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.275517, -0.063080, 1.315468>,  <3.518624, -0.220523, 1.591349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.275517, -0.063080, 1.315468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760473, 0.038373, -0.648234,
		-0.228685, -0.918477, -0.322651,
		-0.607769, 0.393609, -0.689702,
		3.093186, 0.055003, 1.108557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.609290, -0.548759, 0.948268>,  <3.518624, -0.220523, 1.591349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.609290, -0.548759, 0.948268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.455050, -0.188820, 0.866699>,  <3.362505, 0.027144, 0.817758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.455050, -0.188820, 0.866699>,  <3.609290, -0.548759, 0.948268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.455050, -0.188820, 0.866699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819794, 0.232719, -0.523239,
		-0.423380, -0.368936, -0.827427,
		-0.385600, 0.899849, -0.203923,
		3.339369, 0.081135, 0.805522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.393341, 0.704535, 0.421644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.159590, 0.998810, 0.284668>,  <4.019339, 1.175375, 0.202483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.159590, 0.998810, 0.284668>,  <4.393341, 0.704535, 0.421644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.159590, 0.998810, 0.284668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773219, -0.376766, 0.510077,
		0.246238, 0.562859, 0.789022,
		-0.584379, 0.735688, -0.342439,
		3.984276, 1.219516, 0.181936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.021242, 1.078113, 1.011746>,  <4.393341, 0.704535, 0.421644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.021242, 1.078113, 1.011746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.831905, 1.061584, 0.659782>,  <3.718302, 1.051667, 0.448604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.831905, 1.061584, 0.659782>,  <4.021242, 1.078113, 1.011746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.831905, 1.061584, 0.659782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732615, -0.536166, 0.419286,
		-0.489103, 0.843100, 0.223517,
		-0.473343, -0.041323, -0.879909,
		3.689902, 1.049188, 0.395810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.286980, 1.423053, 0.887304>,  <4.021242, 1.078113, 1.011746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.286980, 1.423053, 0.887304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.317960, 1.105888, 0.645546>,  <3.336547, 0.915590, 0.500491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.317960, 1.105888, 0.645546>,  <3.286980, 1.423053, 0.887304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.317960, 1.105888, 0.645546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738581, -0.452837, 0.499436,
		-0.669701, 0.407713, -0.620702,
		0.077450, -0.792912, -0.604395,
		3.341194, 0.868015, 0.464228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.655220, 1.210867, 0.627466>,  <3.286980, 1.423053, 0.887304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.655220, 1.210867, 0.627466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.875837, 0.877533, 0.642181>,  <3.008208, 0.677533, 0.651011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.875837, 0.877533, 0.642181>,  <2.655220, 1.210867, 0.627466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.875837, 0.877533, 0.642181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775679, -0.496164, 0.390055,
		-0.306793, -0.243669, -0.920056,
		0.551543, -0.833335, 0.036789,
		3.041300, 0.627532, 0.653218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.360193, 0.585212, 0.183660>,  <2.655220, 1.210867, 0.627466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.360193, 0.585212, 0.183660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.579527, 0.460014, 0.493851>,  <2.711128, 0.384896, 0.679965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.579527, 0.460014, 0.493851>,  <2.360193, 0.585212, 0.183660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.579527, 0.460014, 0.493851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774955, -0.538688, 0.330545,
		0.314281, -0.782209, -0.537938,
		0.548335, -0.312994, 0.775476,
		2.744028, 0.366116, 0.726494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.020429, -0.066444, 0.270806>,  <2.360193, 0.585212, 0.183660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.020429, -0.066444, 0.270806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.230465, 0.001411, 0.604393>,  <2.356487, 0.042125, 0.804545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.230465, 0.001411, 0.604393>,  <2.020429, -0.066444, 0.270806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.230465, 0.001411, 0.604393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656299, -0.543142, 0.523706,
		0.541804, -0.822326, -0.173864,
		0.525090, 0.169639, 0.833968,
		2.387992, 0.052303, 0.854584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.980754, -0.742556, 0.627117>,  <2.020429, -0.066444, 0.270806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.980754, -0.742556, 0.627117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066054, -0.475212, 0.912163>,  <2.117234, -0.314806, 1.083190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.066054, -0.475212, 0.912163>,  <1.980754, -0.742556, 0.627117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.066054, -0.475212, 0.912163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606559, -0.481228, 0.632856,
		0.765906, -0.567198, 0.302778,
		0.213249, 0.668360, 0.712614,
		2.130029, -0.274704, 1.125947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.247684, -1.095883, 1.272278>,  <1.980754, -0.742556, 0.627117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.247684, -1.095883, 1.272278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.078647, -0.753387, 1.391121>,  <1.977225, -0.547890, 1.462426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.078647, -0.753387, 1.391121>,  <2.247684, -1.095883, 1.272278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.078647, -0.753387, 1.391121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670063, -0.515903, 0.533722,
		0.610271, 0.026467, 0.791750,
		-0.422592, 0.856238, 0.297106,
		1.951870, -0.496516, 1.480253>
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
