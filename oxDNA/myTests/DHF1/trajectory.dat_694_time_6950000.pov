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
	<2.888841, 4.322972, 2.248127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.621824, 4.058474, 2.385031>,  <2.461614, 3.899775, 2.467173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.621824, 4.058474, 2.385031>,  <2.888841, 4.322972, 2.248127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.621824, 4.058474, 2.385031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600753, -0.206766, 0.772233,
		-0.439868, 0.721111, 0.535271,
		-0.667541, -0.661246, 0.342260,
		2.421562, 3.860100, 2.487709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.816506, 4.353586, 2.962374>,  <2.888841, 4.322972, 2.248127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.816506, 4.353586, 2.962374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722387, 3.977613, 2.863449>,  <2.665916, 3.752030, 2.804094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.722387, 3.977613, 2.863449>,  <2.816506, 4.353586, 2.962374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.722387, 3.977613, 2.863449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761982, -0.336357, 0.553396,
		-0.603340, -0.058236, 0.795355,
		-0.235296, -0.939932, -0.247313,
		2.651798, 3.695634, 2.789255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.721510, 3.949335, 3.483080>,  <2.816506, 4.353586, 2.962374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.721510, 3.949335, 3.483080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.870247, 3.728655, 3.184454>,  <2.959489, 3.596247, 3.005278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.870247, 3.728655, 3.184454>,  <2.721510, 3.949335, 3.483080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.870247, 3.728655, 3.184454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758830, -0.282597, 0.586785,
		-0.534707, -0.784707, 0.313565,
		0.371842, -0.551700, -0.746566,
		2.981800, 3.563145, 2.960484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.856410, 3.319033, 3.719437>,  <2.721510, 3.949335, 3.483080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.856410, 3.319033, 3.719437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.111389, 3.417166, 3.427280>,  <3.264377, 3.476046, 3.251986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.111389, 3.417166, 3.427280>,  <2.856410, 3.319033, 3.719437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.111389, 3.417166, 3.427280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770063, -0.171140, 0.614585,
		0.025778, -0.954214, -0.298014,
		0.637448, 0.245332, -0.730392,
		3.302624, 3.490766, 3.208163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.293112, 2.802436, 3.712201>,  <2.856410, 3.319033, 3.719437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.293112, 2.802436, 3.712201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479748, 3.115038, 3.546530>,  <3.591729, 3.302599, 3.447127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479748, 3.115038, 3.546530>,  <3.293112, 2.802436, 3.712201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.479748, 3.115038, 3.546530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751186, -0.102935, 0.652015,
		0.466920, -0.615348, -0.635085,
		0.466589, 0.781506, -0.414178,
		3.619725, 3.349490, 3.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.000706, 2.579163, 3.545061>,  <3.293112, 2.802436, 3.712201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.000706, 2.579163, 3.545061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027002, 2.977957, 3.528576>,  <4.042780, 3.217233, 3.518685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027002, 2.977957, 3.528576>,  <4.000706, 2.579163, 3.545061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.027002, 2.977957, 3.528576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966217, -0.053287, 0.252162,
		0.249206, -0.056397, -0.966807,
		0.065740, 0.996985, -0.041212,
		4.046724, 3.277052, 3.516212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.748587, 2.786584, 3.352390>,  <4.000706, 2.579163, 3.545061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.748587, 2.786584, 3.352390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.607244, 3.128950, 3.503412>,  <4.522439, 3.334370, 3.594025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.607244, 3.128950, 3.503412>,  <4.748587, 2.786584, 3.352390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.607244, 3.128950, 3.503412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889915, 0.183115, 0.417757,
		0.288429, 0.483609, -0.826397,
		-0.353356, 0.855916, 0.377555,
		4.501237, 3.385725, 3.616679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.175709, 3.345909, 3.150747>,  <4.748587, 2.786584, 3.352390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.175709, 3.345909, 3.150747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.996048, 3.400465, 3.503941>,  <4.888251, 3.433198, 3.715857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.996048, 3.400465, 3.503941>,  <5.175709, 3.345909, 3.150747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.996048, 3.400465, 3.503941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892862, 0.032533, 0.449153,
		0.032533, 0.990121, -0.136389,
		-0.449153, 0.136389, 0.882983,
		4.861302, 3.441382, 3.768836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.043023, 2.422131, 4.446111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.070240, 2.728777, 4.701508>,  <5.086571, 2.912765, 4.854745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.070240, 2.728777, 4.701508>,  <5.043023, 2.422131, 4.446111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.070240, 2.728777, 4.701508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248326, 0.632847, -0.733375,
		-0.966284, -0.108652, 0.233432,
		0.068044, 0.766616, 0.638491,
		5.090653, 2.958762, 4.893055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.345767, 2.732806, 4.457579>,  <5.043023, 2.422131, 4.446111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.345767, 2.732806, 4.457579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.669239, 2.950256, 4.547477>,  <4.863322, 3.080726, 4.601416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.669239, 2.950256, 4.547477>,  <4.345767, 2.732806, 4.457579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.669239, 2.950256, 4.547477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249830, 0.663280, -0.705439,
		-0.532563, 0.514326, 0.672195,
		0.808679, 0.543626, 0.224745,
		4.911843, 3.113344, 4.614900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.205936, 3.284815, 4.850044>,  <4.345767, 2.732806, 4.457579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.205936, 3.284815, 4.850044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.518761, 3.332758, 4.605416>,  <4.706455, 3.361524, 4.458640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.518761, 3.332758, 4.605416>,  <4.205936, 3.284815, 4.850044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.518761, 3.332758, 4.605416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571703, 0.528600, -0.627485,
		0.248066, 0.840367, 0.481920,
		0.782060, 0.119857, -0.611568,
		4.753379, 3.368715, 4.421946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.203030, 3.985759, 4.748760>,  <4.205936, 3.284815, 4.850044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.203030, 3.985759, 4.748760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396828, 3.798686, 4.453047>,  <4.513106, 3.686442, 4.275619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396828, 3.798686, 4.453047>,  <4.203030, 3.985759, 4.748760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.396828, 3.798686, 4.453047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530817, 0.514561, -0.673395,
		0.695341, 0.718679, 0.001048,
		0.484495, -0.467683, -0.739282,
		4.542176, 3.658381, 4.231262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.181532, 4.430304, 4.225366>,  <4.203030, 3.985759, 4.748760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.181532, 4.430304, 4.225366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.248230, 4.087646, 4.030079>,  <4.288249, 3.882051, 3.912907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.248230, 4.087646, 4.030079>,  <4.181532, 4.430304, 4.225366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248230, 4.087646, 4.030079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695268, 0.248941, -0.674263,
		0.699141, 0.451872, -0.554088,
		0.166745, -0.856645, -0.488218,
		4.298254, 3.830652, 3.883614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.025680, 4.607119, 3.544096>,  <4.181532, 4.430304, 4.225366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.025680, 4.607119, 3.544096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.052460, 4.208241, 3.530731>,  <4.068528, 3.968913, 3.522712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.052460, 4.208241, 3.530731>,  <4.025680, 4.607119, 3.544096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.052460, 4.208241, 3.530731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687221, -0.021810, -0.726121,
		0.723357, 0.071575, -0.686754,
		0.066950, -0.997197, -0.033411,
		4.072545, 3.909081, 3.520708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.194543, 4.402810, 2.820777>,  <4.025680, 4.607119, 3.544096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.194543, 4.402810, 2.820777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.026501, 4.084764, 2.995729>,  <3.925675, 3.893936, 3.100701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.026501, 4.084764, 2.995729>,  <4.194543, 4.402810, 2.820777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.026501, 4.084764, 2.995729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613876, -0.105961, -0.782258,
		0.668331, -0.597129, -0.443588,
		-0.420106, -0.795116, 0.437380,
		3.900469, 3.846229, 3.126944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.246092, 3.718168, 2.339753>,  <4.194543, 4.402810, 2.820777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.246092, 3.718168, 2.339753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.949123, 3.687504, 2.605966>,  <3.770942, 3.669105, 2.765693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.949123, 3.687504, 2.605966>,  <4.246092, 3.718168, 2.339753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.949123, 3.687504, 2.605966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639626, -0.214303, -0.738209,
		0.199218, -0.973754, 0.110068,
		-0.742422, -0.076662, 0.665532,
		3.726397, 3.664505, 2.805625>
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
