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
	<3.452768, 0.043957, 5.287563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.361862, 0.432297, 5.318026>,  <3.307319, 0.665301, 5.336303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.361862, 0.432297, 5.318026>,  <3.452768, 0.043957, 5.287563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.361862, 0.432297, 5.318026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605952, 0.202198, -0.769375,
		-0.762347, -0.128704, -0.634241,
		-0.227264, 0.970851, 0.076157,
		3.293683, 0.723552, 5.340873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.429034, 0.289452, 4.637589>,  <3.452768, 0.043957, 5.287563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.429034, 0.289452, 4.637589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.478889, 0.626355, 4.847376>,  <3.508802, 0.828497, 4.973248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.478889, 0.626355, 4.847376>,  <3.429034, 0.289452, 4.637589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.478889, 0.626355, 4.847376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492365, 0.406413, -0.769679,
		-0.861419, 0.354160, -0.364044,
		0.124638, 0.842258, 0.524468,
		3.516281, 0.879033, 5.004716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.290276, 0.928025, 4.239311>,  <3.429034, 0.289452, 4.637589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.290276, 0.928025, 4.239311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.548851, 1.007070, 4.534084>,  <3.703996, 1.054496, 4.710948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.548851, 1.007070, 4.534084>,  <3.290276, 0.928025, 4.239311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.548851, 1.007070, 4.534084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658822, 0.342564, -0.669778,
		-0.384801, 0.918477, 0.091256,
		0.646437, 0.197610, 0.736932,
		3.742782, 1.066353, 4.755164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.552915, 1.635805, 4.149599>,  <3.290276, 0.928025, 4.239311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.552915, 1.635805, 4.149599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.819016, 1.454100, 4.386608>,  <3.978676, 1.345077, 4.528814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.819016, 1.454100, 4.386608>,  <3.552915, 1.635805, 4.149599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.819016, 1.454100, 4.386608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746574, 0.413377, -0.521293,
		-0.008131, 0.789154, 0.614141,
		0.665252, -0.454263, 0.592524,
		4.018591, 1.317821, 4.564365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.077257, 2.125556, 4.281811>,  <3.552915, 1.635805, 4.149599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.077257, 2.125556, 4.281811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247513, 1.773963, 4.367809>,  <4.349666, 1.563008, 4.419408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.247513, 1.773963, 4.367809>,  <4.077257, 2.125556, 4.281811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.247513, 1.773963, 4.367809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831411, 0.286092, -0.476347,
		0.357192, 0.381501, 0.852567,
		0.425639, -0.878981, 0.214995,
		4.375205, 1.510269, 4.432308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.721664, 2.278772, 4.638330>,  <4.077257, 2.125556, 4.281811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.721664, 2.278772, 4.638330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.758293, 1.906947, 4.495485>,  <4.780271, 1.683852, 4.409779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.758293, 1.906947, 4.495485>,  <4.721664, 2.278772, 4.638330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.758293, 1.906947, 4.495485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861210, 0.253969, -0.440246,
		0.499931, -0.267233, 0.823805,
		0.091572, -0.929562, -0.357111,
		4.785765, 1.628078, 4.388352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.442650, 1.948121, 4.898357>,  <4.721664, 2.278772, 4.638330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.442650, 1.948121, 4.898357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.325462, 1.773039, 4.558338>,  <5.255150, 1.667989, 4.354327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.325462, 1.773039, 4.558338>,  <5.442650, 1.948121, 4.898357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.325462, 1.773039, 4.558338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774499, 0.412676, -0.479427,
		0.560643, -0.798819, 0.218103,
		-0.292969, -0.437707, -0.850048,
		5.237572, 1.641726, 4.303324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.965744, 1.514605, 4.653862>,  <5.442650, 1.948121, 4.898357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.965744, 1.514605, 4.653862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.742691, 1.665685, 4.358189>,  <5.608860, 1.756333, 4.180785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.742691, 1.665685, 4.358189>,  <5.965744, 1.514605, 4.653862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.742691, 1.665685, 4.358189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788727, 0.518675, -0.329980,
		0.258762, -0.767020, -0.587130,
		-0.557631, 0.377699, -0.739183,
		5.575402, 1.778995, 4.136434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.901945, 1.707213, 2.977428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.976463, 1.939598, 3.294357>,  <3.021174, 2.079029, 3.484515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.976463, 1.939598, 3.294357>,  <2.901945, 1.707213, 2.977428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.976463, 1.939598, 3.294357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902421, -0.420063, 0.095825,
		0.388497, 0.697158, -0.602528,
		0.186295, 0.580962, 0.792324,
		3.032352, 2.113887, 3.532054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.501897, 2.089693, 2.834842>,  <2.901945, 1.707213, 2.977428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.501897, 2.089693, 2.834842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.444633, 1.980463, 3.215355>,  <3.410275, 1.914925, 3.443662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.444633, 1.980463, 3.215355>,  <3.501897, 2.089693, 2.834842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.444633, 1.980463, 3.215355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937615, -0.345125, 0.042030,
		0.316834, 0.897952, 0.305447,
		-0.143158, -0.273075, 0.951281,
		3.401686, 1.898540, 3.500739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.116745, 2.295598, 3.199737>,  <3.501897, 2.089693, 2.834842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.116745, 2.295598, 3.199737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.974251, 1.993879, 3.420330>,  <3.888754, 1.812848, 3.552686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.974251, 1.993879, 3.420330>,  <4.116745, 2.295598, 3.199737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.974251, 1.993879, 3.420330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932321, -0.326248, 0.156015,
		0.062239, 0.569737, 0.819467,
		-0.356236, -0.754296, 0.551483,
		3.867380, 1.767591, 3.585775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.751688, 1.731640, 3.160204>,  <4.116745, 2.295598, 3.199737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.751688, 1.731640, 3.160204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.042763, 1.557573, 3.372280>,  <5.217408, 1.453133, 3.499526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.042763, 1.557573, 3.372280>,  <4.751688, 1.731640, 3.160204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.042763, 1.557573, 3.372280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672024, -0.297579, 0.678108,
		-0.137316, -0.849751, -0.508987,
		0.727687, -0.435167, 0.530190,
		5.261069, 1.427024, 3.531337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.718278, 0.939567, 3.332967>,  <4.751688, 1.731640, 3.160204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.718278, 0.939567, 3.332967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.909378, 1.128641, 3.629162>,  <5.024038, 1.242086, 3.806879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.909378, 1.128641, 3.629162>,  <4.718278, 0.939567, 3.332967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.909378, 1.128641, 3.629162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669029, -0.350513, 0.655394,
		0.569345, -0.808523, 0.148783,
		0.477751, 0.472685, 0.740488,
		5.052703, 1.270447, 3.851308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.838782, 0.407151, 3.859026>,  <4.718278, 0.939567, 3.332967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.838782, 0.407151, 3.859026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.834953, 0.778540, 4.007538>,  <4.832656, 1.001373, 4.096645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.834953, 0.778540, 4.007538>,  <4.838782, 0.407151, 3.859026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.834953, 0.778540, 4.007538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597538, -0.303024, 0.742378,
		0.801784, -0.214747, 0.557698,
		-0.009573, 0.928472, 0.371279,
		4.832081, 1.057081, 4.118922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.987601, 0.394947, 4.605673>,  <4.838782, 0.407151, 3.859026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.987601, 0.394947, 4.605673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.811592, 0.752172, 4.568115>,  <4.705986, 0.966508, 4.545581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.811592, 0.752172, 4.568115>,  <4.987601, 0.394947, 4.605673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.811592, 0.752172, 4.568115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654204, -0.247184, 0.714785,
		0.615140, 0.375948, 0.693012,
		-0.440023, 0.893064, -0.093894,
		4.679585, 1.020092, 4.539947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.940062, 0.715578, 5.328527>,  <4.987601, 0.394947, 4.605673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.940062, 0.715578, 5.328527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.660942, 0.893307, 5.103794>,  <4.493471, 0.999944, 4.968954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.660942, 0.893307, 5.103794>,  <4.940062, 0.715578, 5.328527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.660942, 0.893307, 5.103794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703496, -0.277502, 0.654283,
		0.134802, 0.851805, 0.506219,
		-0.697798, 0.444321, -0.561833,
		4.451602, 1.026603, 4.935244>
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
