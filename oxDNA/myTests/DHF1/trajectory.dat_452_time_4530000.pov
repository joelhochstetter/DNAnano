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
	<2.060186, 3.109142, 3.962487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.413577, 3.296524, 3.960892>,  <2.625612, 3.408953, 3.959935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.413577, 3.296524, 3.960892>,  <2.060186, 3.109142, 3.962487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.413577, 3.296524, 3.960892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366638, 0.686109, -0.628356,
		-0.291621, 0.556600, 0.777916,
		0.883478, 0.468456, -0.003987,
		2.678621, 3.437061, 3.959696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.974340, 3.825868, 4.185565>,  <2.060186, 3.109142, 3.962487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.974340, 3.825868, 4.185565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287120, 3.742142, 3.950706>,  <2.474788, 3.691906, 3.809791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.287120, 3.742142, 3.950706>,  <1.974340, 3.825868, 4.185565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.287120, 3.742142, 3.950706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328561, 0.662057, -0.673593,
		0.529718, 0.719630, 0.448923,
		0.781950, -0.209316, -0.587146,
		2.521705, 3.679347, 3.774563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.341182, 4.478367, 4.051856>,  <1.974340, 3.825868, 4.185565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.341182, 4.478367, 4.051856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.348725, 4.209091, 3.756165>,  <2.353251, 4.047525, 3.578749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.348725, 4.209091, 3.756165>,  <2.341182, 4.478367, 4.051856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.348725, 4.209091, 3.756165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537377, 0.616665, -0.575283,
		0.843131, 0.408093, -0.350128,
		0.018857, -0.673190, -0.739229,
		2.354382, 4.007134, 3.534396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.548499, 4.753381, 3.363206>,  <2.341182, 4.478367, 4.051856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.548499, 4.753381, 3.363206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281425, 4.465919, 3.285507>,  <2.121180, 4.293443, 3.238888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281425, 4.465919, 3.285507>,  <2.548499, 4.753381, 3.363206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.281425, 4.465919, 3.285507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604330, 0.675614, -0.422293,
		0.434718, -0.164569, -0.885402,
		-0.667686, -0.718654, -0.194247,
		2.081119, 4.250323, 3.227233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.505849, 4.608214, 2.615135>,  <2.548499, 4.753381, 3.363206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.505849, 4.608214, 2.615135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166284, 4.492325, 2.791954>,  <1.962544, 4.422791, 2.898046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.166284, 4.492325, 2.791954>,  <2.505849, 4.608214, 2.615135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.166284, 4.492325, 2.791954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528275, 0.491163, -0.692593,
		-0.016458, -0.821474, -0.570008,
		-0.848913, -0.289722, 0.442048,
		1.911610, 4.405408, 2.924568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.085095, 4.679373, 2.025330>,  <2.505849, 4.608214, 2.615135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.085095, 4.679373, 2.025330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.838410, 4.644669, 2.338287>,  <1.690400, 4.623846, 2.526062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.838410, 4.644669, 2.338287>,  <2.085095, 4.679373, 2.025330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.838410, 4.644669, 2.338287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751825, 0.359477, -0.552752,
		-0.233295, -0.929112, -0.286922,
		-0.616711, -0.086761, 0.782394,
		1.653397, 4.618640, 2.573006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.435684, 4.434588, 1.832111>,  <2.085095, 4.679373, 2.025330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.435684, 4.434588, 1.832111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.333590, 4.597450, 2.182899>,  <1.272333, 4.695168, 2.393373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.333590, 4.597450, 2.182899>,  <1.435684, 4.434588, 1.832111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333590, 4.597450, 2.182899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750574, 0.488329, -0.445168,
		-0.609503, -0.771854, 0.180961,
		-0.255236, 0.407156, 0.876971,
		1.257019, 4.719597, 2.445991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.785766, 4.328055, 1.854483>,  <1.435684, 4.434588, 1.832111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.785766, 4.328055, 1.854483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.895554, 4.643829, 2.074104>,  <0.961426, 4.833294, 2.205877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.895554, 4.643829, 2.074104>,  <0.785766, 4.328055, 1.854483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.895554, 4.643829, 2.074104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568963, 0.593631, -0.569107,
		-0.775208, -0.156190, 0.612092,
		0.274468, 0.789435, 0.549053,
		0.977894, 4.880660, 2.238820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.260169, 1.255864, 1.533960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.550268, 1.476311, 1.368896>,  <0.724327, 1.608579, 1.269858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.550268, 1.476311, 1.368896>,  <0.260169, 1.255864, 1.533960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.550268, 1.476311, 1.368896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077563, 0.530152, 0.844348,
		0.684106, -0.644367, 0.341744,
		0.725247, 0.551117, -0.412660,
		0.767842, 1.641646, 1.245099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.923186, 1.036251, 1.852558>,  <0.260169, 1.255864, 1.533960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.923186, 1.036251, 1.852558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.671631, 0.902382, 2.133270>,  <0.520698, 0.822060, 2.301697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.671631, 0.902382, 2.133270>,  <0.923186, 1.036251, 1.852558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.671631, 0.902382, 2.133270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742876, -0.524997, 0.415347,
		0.229427, 0.782542, 0.578785,
		-0.628887, -0.334674, 0.701780,
		0.482965, 0.801980, 2.343804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.229549, 1.181297, 2.528979>,  <0.923186, 1.036251, 1.852558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.229549, 1.181297, 2.528979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.969566, 0.877327, 2.532295>,  <0.813577, 0.694945, 2.534285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.969566, 0.877327, 2.532295>,  <1.229549, 1.181297, 2.528979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.969566, 0.877327, 2.532295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678951, -0.575729, 0.455590,
		-0.341442, 0.301742, 0.890151,
		-0.649957, -0.759926, 0.008290,
		0.774579, 0.649349, 2.534782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.117070, 0.892560, 3.181638>,  <1.229549, 1.181297, 2.528979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.117070, 0.892560, 3.181638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068584, 0.606476, 2.906311>,  <1.039493, 0.434825, 2.741115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.068584, 0.606476, 2.906311>,  <1.117070, 0.892560, 3.181638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.068584, 0.606476, 2.906311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561838, -0.621097, 0.546422,
		-0.818318, -0.320490, 0.477118,
		-0.121214, -0.715210, -0.688318,
		1.032220, 0.391913, 2.699816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.958058, 0.311373, 3.539327>,  <1.117070, 0.892560, 3.181638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.958058, 0.311373, 3.539327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059191, 0.129768, 3.197578>,  <1.119870, 0.020806, 2.992529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059191, 0.129768, 3.197578>,  <0.958058, 0.311373, 3.539327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.059191, 0.129768, 3.197578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397050, -0.756587, 0.519546,
		-0.882286, -0.470585, -0.011024,
		0.252831, -0.454011, -0.854371,
		1.135040, -0.006435, 2.941267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.921731, -0.393121, 3.700219>,  <0.958058, 0.311372, 3.539327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.921731, -0.393121, 3.700219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.130104, -0.375290, 3.359245>,  <1.255128, -0.364591, 3.154661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.130104, -0.375290, 3.359245>,  <0.921731, -0.393121, 3.700219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.130104, -0.375290, 3.359245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420634, -0.882374, 0.210910,
		-0.742763, -0.468433, -0.478408,
		0.520932, 0.044579, -0.852433,
		1.286384, -0.361916, 3.103515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.779557, -1.045298, 3.411431>,  <0.921731, -0.393121, 3.700219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.779557, -1.045298, 3.411431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.127163, -0.897606, 3.279686>,  <1.335727, -0.808990, 3.200639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.127163, -0.897606, 3.279686>,  <0.779557, -1.045298, 3.411431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.127163, -0.897606, 3.279686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471093, -0.820964, 0.322630,
		-0.151270, -0.435531, -0.887372,
		0.869016, 0.369231, -0.329363,
		1.387868, -0.786837, 3.180877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.107936, -1.611471, 2.935767>,  <0.779557, -1.045298, 3.411431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.107936, -1.611471, 2.935767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.383034, -1.357178, 3.075966>,  <1.548093, -1.204602, 3.160085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.383034, -1.357178, 3.075966>,  <1.107936, -1.611471, 2.935767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.383034, -1.357178, 3.075966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553854, -0.771622, 0.312801,
		0.469310, -0.021003, -0.882784,
		0.687745, 0.635734, 0.350497,
		1.589357, -1.166457, 3.181115>
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
