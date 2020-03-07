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
	<4.180847, 0.145511, 1.520996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293253, 0.528969, 1.539022>,  <4.360696, 0.759044, 1.549838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293253, 0.528969, 1.539022>,  <4.180847, 0.145511, 1.520996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293253, 0.528969, 1.539022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467086, 0.177639, -0.866184,
		-0.838369, 0.222361, 0.497688,
		0.281014, 0.958645, 0.045065,
		4.377557, 0.816562, 1.552542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.689883, 0.595925, 1.248086>,  <4.180847, 0.145511, 1.520996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.689883, 0.595925, 1.248086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009226, 0.836700, 1.241199>,  <4.200831, 0.981166, 1.237068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.009226, 0.836700, 1.241199>,  <3.689883, 0.595925, 1.248086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.009226, 0.836700, 1.241199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372248, 0.470841, -0.799838,
		-0.473347, 0.644965, 0.599969,
		0.798357, 0.601938, -0.017216,
		4.248733, 1.017282, 1.236035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.510165, 1.378333, 1.252795>,  <3.689883, 0.595925, 1.248086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.510165, 1.378333, 1.252795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.841221, 1.277739, 1.052090>,  <4.039855, 1.217382, 0.931666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.841221, 1.277739, 1.052090>,  <3.510165, 1.378333, 1.252795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.841221, 1.277739, 1.052090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354026, 0.459798, -0.814403,
		0.435521, 0.851669, 0.291514,
		0.827640, -0.251486, -0.501764,
		4.089513, 1.202293, 0.901560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.763204, 1.976816, 0.922536>,  <3.510165, 1.378333, 1.252795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.763204, 1.976816, 0.922536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894667, 1.671005, 0.700731>,  <3.973544, 1.487519, 0.567648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.894667, 1.671005, 0.700731>,  <3.763204, 1.976816, 0.922536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.894667, 1.671005, 0.700731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353231, 0.445014, -0.822916,
		0.875907, 0.466328, -0.123797,
		0.328657, -0.764526, -0.554513,
		3.993264, 1.441647, 0.534378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.054395, 2.298151, 0.293382>,  <3.763204, 1.976816, 0.922536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.054395, 2.298151, 0.293382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.004725, 1.921526, 0.168139>,  <3.974922, 1.695551, 0.092992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.004725, 1.921526, 0.168139>,  <4.054395, 2.298151, 0.293382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.004725, 1.921526, 0.168139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215629, 0.333616, -0.917716,
		0.968547, -0.046443, -0.244456,
		-0.124176, -0.941564, -0.313109,
		3.967472, 1.639057, 0.074206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.308835, 2.245546, -0.348782>,  <4.054395, 2.298151, 0.293382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.308835, 2.245546, -0.348782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.072912, 1.923052, -0.330404>,  <3.931359, 1.729555, -0.319378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.072912, 1.923052, -0.330404>,  <4.308835, 2.245546, -0.348782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.072912, 1.923052, -0.330404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368829, 0.218333, -0.903491,
		0.718396, -0.549831, -0.426137,
		-0.589807, -0.806236, 0.045944,
		3.895970, 1.681181, -0.316621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.418133, 1.780883, -0.969487>,  <4.308835, 2.245546, -0.348782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.418133, 1.780883, -0.969487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046612, 1.730581, -0.830053>,  <3.823699, 1.700400, -0.746393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046612, 1.730581, -0.830053>,  <4.418133, 1.780883, -0.969487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.046612, 1.730581, -0.830053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355488, 0.036705, -0.933960,
		0.104655, -0.991382, -0.078796,
		-0.928803, -0.125755, 0.348583,
		3.767971, 1.692855, -0.725478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.140210, 1.375570, -1.510935>,  <4.418133, 1.780883, -0.969487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.140210, 1.375570, -1.510935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826590, 1.505121, -1.299135>,  <3.638417, 1.582852, -1.172055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826590, 1.505121, -1.299135>,  <4.140210, 1.375570, -1.510935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826590, 1.505121, -1.299135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493920, 0.191089, -0.848250,
		-0.375911, -0.926600, 0.010147,
		-0.784050, 0.323878, 0.529499,
		3.591375, 1.602285, -1.140286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.925841, 2.462932, 2.779099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.635624, 2.238541, 2.938542>,  <2.461493, 2.103906, 3.034209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.635624, 2.238541, 2.938542>,  <2.925841, 2.462932, 2.779099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.635624, 2.238541, 2.938542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585162, -0.198068, 0.786355,
		-0.362177, 0.803786, 0.471970,
		-0.725543, -0.560979, 0.398609,
		2.417961, 2.070247, 3.058125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.944175, 2.719378, 3.454701>,  <2.925841, 2.462932, 2.779099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.944175, 2.719378, 3.454701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.808624, 2.344204, 3.425196>,  <2.727294, 2.119099, 3.407493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.808624, 2.344204, 3.425196>,  <2.944175, 2.719378, 3.454701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.808624, 2.344204, 3.425196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558666, -0.263689, 0.786359,
		-0.757003, 0.225271, 0.613351,
		-0.338878, -0.937934, -0.073763,
		2.706961, 2.062823, 3.403067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.779688, 2.615084, 4.091152>,  <2.944175, 2.719378, 3.454701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.779688, 2.615084, 4.091152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885685, 2.262189, 3.935493>,  <2.949283, 2.050452, 3.842098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885685, 2.262189, 3.935493>,  <2.779688, 2.615084, 4.091152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.885685, 2.262189, 3.935493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394524, -0.269048, 0.878615,
		-0.879846, -0.386355, 0.276769,
		0.264993, -0.882238, -0.389147,
		2.965183, 1.997518, 3.818749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.690968, 2.038397, 4.597500>,  <2.779688, 2.615084, 4.091152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.690968, 2.038397, 4.597500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.969692, 1.877074, 4.360250>,  <3.136927, 1.780280, 4.217899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.969692, 1.877074, 4.360250>,  <2.690968, 2.038397, 4.597500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.969692, 1.877074, 4.360250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401325, -0.466146, 0.788445,
		-0.594469, -0.787433, -0.162959,
		0.696811, -0.403307, -0.593126,
		3.178735, 1.756082, 4.182312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.606149, 1.343934, 4.717190>,  <2.690968, 2.038397, 4.597500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.606149, 1.343934, 4.717190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.974995, 1.433477, 4.590957>,  <3.196302, 1.487203, 4.515217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.974995, 1.433477, 4.590957>,  <2.606149, 1.343934, 4.717190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.974995, 1.433477, 4.590957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385408, -0.459451, 0.800228,
		0.034142, -0.859530, -0.509943,
		0.922115, 0.223858, -0.315583,
		3.251629, 1.500635, 4.496282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.945699, 0.786313, 4.737740>,  <2.606149, 1.343934, 4.717190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.945699, 0.786313, 4.737740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.245407, 1.051154, 4.731858>,  <3.425232, 1.210059, 4.728330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.245407, 1.051154, 4.731858>,  <2.945699, 0.786313, 4.737740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.245407, 1.051154, 4.731858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442837, -0.484383, 0.754499,
		0.492434, -0.571833, -0.656137,
		0.749269, 0.662102, -0.014703,
		3.470188, 1.249785, 4.727448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619837, 0.488294, 4.678453>,  <2.945699, 0.786313, 4.737740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619837, 0.488294, 4.678453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.723114, 0.843797, 4.829951>,  <3.785080, 1.057099, 4.920850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.723114, 0.843797, 4.829951>,  <3.619837, 0.488294, 4.678453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.723114, 0.843797, 4.829951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547775, -0.457605, 0.700386,
		0.795788, 0.026632, -0.604989,
		0.258193, 0.888757, 0.378745,
		3.800572, 1.110424, 4.943574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.349529, 0.431374, 4.835737>,  <3.619837, 0.488294, 4.678453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.349529, 0.431374, 4.835737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.199104, 0.721667, 5.066175>,  <4.108850, 0.895843, 5.204439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.199104, 0.721667, 5.066175>,  <4.349529, 0.431374, 4.835737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.199104, 0.721667, 5.066175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501549, -0.363351, 0.785127,
		0.779118, 0.584198, -0.227349,
		-0.376062, 0.725734, 0.576097,
		4.086286, 0.939388, 5.239005>
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
