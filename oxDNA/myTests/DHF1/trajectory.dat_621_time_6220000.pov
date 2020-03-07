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
	<4.966355, 3.667151, 4.234909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.910221, 3.317120, 4.049634>,  <4.876541, 3.107101, 3.938469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.910221, 3.317120, 4.049634>,  <4.966355, 3.667151, 4.234909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.910221, 3.317120, 4.049634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989989, 0.116905, 0.079081,
		-0.015053, 0.469649, -0.882725,
		-0.140336, -0.875079, -0.463188,
		4.868120, 3.054596, 3.910678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.661690, 3.586383, 3.453389>,  <4.966355, 3.667151, 4.234909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.661690, 3.586383, 3.453389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.557270, 3.313858, 3.726933>,  <4.494618, 3.150343, 3.891060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.557270, 3.313858, 3.726933>,  <4.661690, 3.586383, 3.453389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.557270, 3.313858, 3.726933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965314, 0.187673, -0.181516,
		-0.004673, -0.707525, -0.706673,
		-0.261050, -0.681313, 0.683861,
		4.478955, 3.109464, 3.932092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.285750, 2.968660, 3.166732>,  <4.661690, 3.586383, 3.453389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.285750, 2.968660, 3.166732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192427, 3.119434, 3.525282>,  <4.136433, 3.209899, 3.740412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192427, 3.119434, 3.525282>,  <4.285750, 2.968660, 3.166732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192427, 3.119434, 3.525282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926104, 0.194922, -0.323013,
		-0.296478, -0.905497, 0.303604,
		-0.233309, 0.376935, 0.896374,
		4.122434, 3.232515, 3.794194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.762359, 2.597790, 3.357086>,  <4.285750, 2.968660, 3.166732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.762359, 2.597790, 3.357086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.771646, 2.962198, 3.521768>,  <3.777219, 3.180843, 3.620577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.771646, 2.962198, 3.521768>,  <3.762359, 2.597790, 3.357086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.771646, 2.962198, 3.521768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962284, 0.132020, -0.237867,
		-0.271056, -0.390654, 0.879726,
		0.023218, 0.911021, 0.411705,
		3.778612, 3.235505, 3.645279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.133035, 2.635431, 3.583558>,  <3.762359, 2.597790, 3.357086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.133035, 2.635431, 3.583558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.240910, 3.019466, 3.613225>,  <3.305634, 3.249887, 3.631026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.240910, 3.019466, 3.613225>,  <3.133035, 2.635431, 3.583558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.240910, 3.019466, 3.613225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937360, 0.279377, -0.208096,
		-0.220512, -0.013402, 0.975292,
		0.269686, 0.960088, 0.074169,
		3.321815, 3.307493, 3.635476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.689609, 2.893371, 4.013956>,  <3.133035, 2.635431, 3.583558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.689609, 2.893371, 4.013956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.817400, 3.206493, 3.800359>,  <2.894075, 3.394367, 3.672201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.817400, 3.206493, 3.800359>,  <2.689609, 2.893371, 4.013956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.817400, 3.206493, 3.800359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921649, 0.387657, 0.016880,
		0.220219, 0.486760, 0.845321,
		0.319479, 0.782806, -0.533992,
		2.913244, 3.441335, 3.640161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.296138, 3.372503, 4.338149>,  <2.689609, 2.893371, 4.013956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.296138, 3.372503, 4.338149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.426027, 3.537889, 3.997890>,  <2.503961, 3.637122, 3.793735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.426027, 3.537889, 3.997890>,  <2.296138, 3.372503, 4.338149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.426027, 3.537889, 3.997890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869631, 0.484150, -0.096644,
		0.371881, 0.771131, 0.516779,
		0.324723, 0.413467, -0.850646,
		2.523444, 3.661930, 3.742697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.123378, 4.129299, 4.401022>,  <2.296138, 3.372503, 4.338149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.123378, 4.129299, 4.401022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.165031, 4.027863, 4.016346>,  <2.190024, 3.967001, 3.785540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.165031, 4.027863, 4.016346>,  <2.123378, 4.129299, 4.401022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.165031, 4.027863, 4.016346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929544, 0.319065, -0.184788,
		0.353702, 0.913175, -0.202499,
		0.104134, -0.253591, -0.961690,
		2.196272, 3.951785, 3.727839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.229777, 3.632234, 3.989310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.155586, 3.715545, 3.605181>,  <1.111072, 3.765532, 3.374703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.155586, 3.715545, 3.605181>,  <1.229777, 3.632234, 3.989310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.155586, 3.715545, 3.605181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982558, 0.026009, -0.184131,
		-0.013373, -0.977724, -0.209469,
		-0.185477, 0.208278, -0.960322,
		1.099943, 3.778029, 3.317084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.665536, 3.131430, 3.428538>,  <1.229777, 3.632234, 3.989310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.665536, 3.131430, 3.428538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.575882, 3.492440, 3.281454>,  <1.522090, 3.709046, 3.193203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.575882, 3.492440, 3.281454>,  <1.665536, 3.131430, 3.428538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.575882, 3.492440, 3.281454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974039, 0.219766, -0.054312,
		0.031792, -0.370338, -0.928353,
		-0.224134, 0.902526, -0.367711,
		1.508642, 3.763198, 3.171141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.986377, 3.241430, 2.663862>,  <1.665536, 3.131430, 3.428538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.986377, 3.241430, 2.663862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.940918, 3.544052, 2.921453>,  <1.913643, 3.725625, 3.076009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.940918, 3.544052, 2.921453>,  <1.986377, 3.241430, 2.663862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.940918, 3.544052, 2.921453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993520, 0.085526, 0.074855,
		0.001555, 0.648314, -0.761371,
		-0.113647, 0.756554, 0.643980,
		1.906824, 3.771019, 3.114647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.389575, 3.771786, 2.416800>,  <1.986377, 3.241430, 2.663862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.389575, 3.771786, 2.416800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328163, 3.833913, 2.807144>,  <2.291316, 3.871189, 3.041351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328163, 3.833913, 2.807144>,  <2.389575, 3.771786, 2.416800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.328163, 3.833913, 2.807144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988070, 0.012069, 0.153529,
		0.012069, 0.987791, -0.155318,
		-0.153529, 0.155318, 0.975861,
		2.282104, 3.880508, 3.099903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.951172, 4.071704, 2.569830>,  <2.389575, 3.771786, 2.416800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.951172, 4.071704, 2.569830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809219, 3.960715, 2.926945>,  <2.724048, 3.894121, 3.141213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.809219, 3.960715, 2.926945>,  <2.951172, 4.071704, 2.569830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.809219, 3.960715, 2.926945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934906, -0.102190, 0.339864,
		-0.003070, 0.955283, 0.295676,
		-0.354882, -0.277473, 0.892787,
		2.702755, 3.877473, 3.194781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.311430, 4.469378, 2.994999>,  <2.951172, 4.071704, 2.569830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.311430, 4.469378, 2.994999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.169617, 4.161556, 3.207449>,  <3.084529, 3.976863, 3.334919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.169617, 4.161556, 3.207449>,  <3.311430, 4.469378, 2.994999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.169617, 4.161556, 3.207449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921692, -0.191971, 0.337092,
		-0.157449, 0.609044, 0.777351,
		-0.354533, -0.769553, 0.531125,
		3.063257, 3.930690, 3.366786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.697631, 4.617293, 3.602428>,  <3.311430, 4.469378, 2.994999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.697631, 4.617293, 3.602428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592072, 4.232146, 3.625217>,  <3.528736, 4.001058, 3.638891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.592072, 4.232146, 3.625217>,  <3.697631, 4.617293, 3.602428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.592072, 4.232146, 3.625217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859036, -0.207757, 0.467861,
		-0.438651, 0.172409, 0.881964,
		-0.263898, -0.962867, 0.056973,
		3.512902, 3.943286, 3.642309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.689196, 4.349573, 4.271815>,  <3.697631, 4.617293, 3.602428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.689196, 4.349573, 4.271815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.752338, 4.020511, 4.053341>,  <3.790224, 3.823074, 3.922256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.752338, 4.020511, 4.053341>,  <3.689196, 4.349573, 4.271815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.752338, 4.020511, 4.053341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876217, -0.138356, 0.461629,
		-0.455329, -0.551449, 0.698984,
		0.157856, -0.822655, -0.546187,
		3.799695, 3.773715, 3.889485>
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
