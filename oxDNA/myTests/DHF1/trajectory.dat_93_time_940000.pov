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
	<2.522284, 5.265307, 0.969230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.242632, 5.032818, 0.802666>,  <2.074841, 4.893324, 0.702727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.242632, 5.032818, 0.802666>,  <2.522284, 5.265307, 0.969230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.242632, 5.032818, 0.802666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037391, -0.611319, 0.790500,
		-0.714017, 0.537092, 0.449124,
		-0.699129, -0.581224, -0.416410,
		2.032893, 4.858451, 0.677743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.945266, 5.374674, 1.345323>,  <2.522284, 5.265307, 0.969230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.945266, 5.374674, 1.345323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.975983, 5.007545, 1.189524>,  <1.994413, 4.787269, 1.096044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.975983, 5.007545, 1.189524>,  <1.945266, 5.374674, 1.345323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.975983, 5.007545, 1.189524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005495, -0.391035, 0.920359,
		-0.997032, -0.068537, -0.035072,
		0.076793, -0.917821, -0.389498,
		1.999021, 4.732199, 1.072674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.365729, 4.956052, 1.570763>,  <1.945266, 5.374674, 1.345323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.365729, 4.956052, 1.570763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.679270, 4.724049, 1.482071>,  <1.867394, 4.584846, 1.428855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.679270, 4.724049, 1.482071>,  <1.365729, 4.956052, 1.570763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.679270, 4.724049, 1.482071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103129, -0.473728, 0.874612,
		-0.612324, -0.662699, -0.431149,
		0.783852, -0.580010, -0.221731,
		1.914425, 4.550046, 1.415552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.162458, 4.141552, 1.523889>,  <1.365729, 4.956052, 1.570763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.162458, 4.141552, 1.523889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.536596, 4.226353, 1.637157>,  <1.761079, 4.277233, 1.705118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.536596, 4.226353, 1.637157>,  <1.162458, 4.141552, 1.523889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.536596, 4.226353, 1.637157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187940, -0.380353, 0.905544,
		0.299680, -0.900215, -0.315918,
		0.935345, 0.212000, 0.283171,
		1.817200, 4.289953, 1.722109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.410590, 3.574024, 1.919737>,  <1.162458, 4.141552, 1.523889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.410590, 3.574024, 1.919737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.605904, 3.907436, 2.023123>,  <1.723092, 4.107484, 2.085155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.605904, 3.907436, 2.023123>,  <1.410590, 3.574024, 1.919737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.605904, 3.907436, 2.023123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028855, -0.311432, 0.949830,
		0.872208, -0.456329, -0.176119,
		0.488284, 0.833531, 0.258466,
		1.752389, 4.157495, 2.100662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.944646, 3.341048, 2.400573>,  <1.410590, 3.574024, 1.919737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.944646, 3.341048, 2.400573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.886383, 3.726536, 2.490042>,  <1.851425, 3.957828, 2.543723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.886383, 3.726536, 2.490042>,  <1.944646, 3.341048, 2.400573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.886383, 3.726536, 2.490042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047971, -0.218938, 0.974559,
		0.988171, 0.152683, -0.014341,
		-0.145658, 0.963719, 0.223672,
		1.842685, 4.015652, 2.557143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.372347, 3.521208, 2.958519>,  <1.944646, 3.341048, 2.400573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.372347, 3.521208, 2.958519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.092770, 3.806850, 2.974161>,  <1.925023, 3.978236, 2.983546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.092770, 3.806850, 2.974161>,  <2.372347, 3.521208, 2.958519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.092770, 3.806850, 2.974161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016072, -0.070348, 0.997393,
		0.714997, 0.696493, 0.060647,
		-0.698943, 0.714107, 0.039105,
		1.883087, 4.021082, 2.985893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.644077, 4.038967, 3.471204>,  <2.372347, 3.521208, 2.958519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.644077, 4.038967, 3.471204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.246712, 4.062504, 3.431875>,  <2.008292, 4.076626, 3.408278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.246712, 4.062504, 3.431875>,  <2.644077, 4.038967, 3.471204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.246712, 4.062504, 3.431875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100495, -0.035201, 0.994315,
		0.055048, 0.997646, 0.040882,
		-0.993414, 0.058843, -0.098321,
		1.948688, 4.080157, 3.402379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.847166, 3.463147, 4.771699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.545578, 3.250633, 4.617159>,  <1.364625, 3.123125, 4.524435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.545578, 3.250633, 4.617159>,  <1.847166, 3.463147, 4.771699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.545578, 3.250633, 4.617159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114490, 0.472856, -0.873670,
		0.646857, -0.702953, -0.295692,
		-0.753969, -0.531285, -0.386351,
		1.319387, 3.091248, 4.501254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.010853, 2.991790, 4.090090>,  <1.847166, 3.463147, 4.771699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.010853, 2.991790, 4.090090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.669273, 3.186844, 4.162737>,  <1.464326, 3.303876, 4.206325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.669273, 3.186844, 4.162737>,  <2.010853, 2.991790, 4.090090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.669273, 3.186844, 4.162737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174923, 0.597723, -0.782387,
		-0.490076, -0.636348, -0.595723,
		-0.853948, 0.487635, 0.181617,
		1.413089, 3.333134, 4.217222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.528994, 3.032871, 3.494802>,  <2.010853, 2.991790, 4.090090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.528994, 3.032871, 3.494802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.417000, 3.348198, 3.713951>,  <1.349803, 3.537394, 3.845441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.417000, 3.348198, 3.713951>,  <1.528994, 3.032871, 3.494802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.417000, 3.348198, 3.713951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013045, 0.573770, -0.818913,
		-0.959915, -0.222137, -0.170931,
		-0.279986, 0.788317, 0.547873,
		1.333004, 3.584693, 3.878313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.906857, 3.455353, 3.216621>,  <1.528994, 3.032871, 3.494802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.906857, 3.455353, 3.216621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.153629, 3.677811, 3.439367>,  <1.301693, 3.811285, 3.573015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.153629, 3.677811, 3.439367>,  <0.906857, 3.455353, 3.216621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.153629, 3.677811, 3.439367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170464, 0.596343, -0.784421,
		-0.768335, 0.578859, 0.273100,
		0.616931, 0.556145, 0.556866,
		1.338709, 3.844654, 3.606427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.660791, 4.238475, 3.310585>,  <0.906857, 3.455353, 3.216621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.660791, 4.238475, 3.310585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.055878, 4.176399, 3.317883>,  <1.292930, 4.139153, 3.322261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.055878, 4.176399, 3.317883>,  <0.660791, 4.238475, 3.310585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.055878, 4.176399, 3.317883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109525, 0.604303, -0.789191,
		0.111450, 0.781495, 0.613877,
		0.987716, -0.155190, 0.018244,
		1.352193, 4.129842, 3.323356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.886896, 4.833246, 2.955276>,  <0.660791, 4.238475, 3.310585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.886896, 4.833246, 2.955276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192226, 4.575226, 2.969372>,  <1.375425, 4.420413, 2.977829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192226, 4.575226, 2.969372>,  <0.886896, 4.833246, 2.955276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.192226, 4.575226, 2.969372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309727, 0.317555, -0.896230,
		0.566923, 0.695031, 0.442188,
		0.763327, -0.645051, 0.035241,
		1.421224, 4.381711, 2.979944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.521870, 5.193834, 2.937343>,  <0.886896, 4.833246, 2.955276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.521870, 5.193834, 2.937343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.621502, 4.831421, 2.800486>,  <1.681281, 4.613973, 2.718371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.621502, 4.831421, 2.800486>,  <1.521870, 5.193834, 2.937343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.621502, 4.831421, 2.800486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358198, 0.414409, -0.836636,
		0.899807, 0.085834, 0.427761,
		0.249080, -0.906034, -0.342143,
		1.696226, 4.559611, 2.697843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.227478, 5.250429, 2.619222>,  <1.521870, 5.193834, 2.937343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.227478, 5.250429, 2.619222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.069817, 4.922447, 2.453176>,  <1.975220, 4.725658, 2.353549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.069817, 4.922447, 2.453176>,  <2.227478, 5.250429, 2.619222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.069817, 4.922447, 2.453176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203072, 0.362813, -0.909466,
		0.896329, -0.442767, 0.023506,
		-0.394153, -0.819954, -0.415113,
		1.951571, 4.676461, 2.328643>
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
