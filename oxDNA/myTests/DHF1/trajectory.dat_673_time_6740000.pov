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
	<2.675195, 3.890026, 2.391932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.451047, 3.899828, 2.723083>,  <2.316558, 3.905709, 2.921775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.451047, 3.899828, 2.723083>,  <2.675195, 3.890026, 2.391932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.451047, 3.899828, 2.723083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149268, -0.986183, -0.071846,
		0.814681, -0.163836, 0.556285,
		-0.560370, 0.024504, 0.827880,
		2.282936, 3.907179, 2.971447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.014462, 3.459745, 2.928602>,  <2.675195, 3.890026, 2.391932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.014462, 3.459745, 2.928602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.617384, 3.501640, 2.904638>,  <2.379138, 3.526778, 2.890260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.617384, 3.501640, 2.904638>,  <3.014462, 3.459745, 2.928602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.617384, 3.501640, 2.904638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098443, -0.990124, -0.099815,
		-0.069771, -0.093188, 0.993201,
		-0.992694, 0.104738, -0.059909,
		2.319576, 3.533062, 2.886666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.616466, 3.051730, 3.385265>,  <3.014462, 3.459745, 2.928602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.616466, 3.051730, 3.385265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.355891, 3.137661, 3.094204>,  <2.199546, 3.189220, 2.919567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.355891, 3.137661, 3.094204>,  <2.616466, 3.051730, 3.385265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.355891, 3.137661, 3.094204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010843, -0.956341, -0.292052,
		-0.758625, -0.198143, 0.620667,
		-0.651438, 0.214828, -0.727652,
		2.160460, 3.202109, 2.875908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.037015, 2.616848, 3.388367>,  <2.616466, 3.051730, 3.385265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.037015, 2.616848, 3.388367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100026, 2.724449, 3.008299>,  <2.137833, 2.789010, 2.780258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.100026, 2.724449, 3.008299>,  <2.037015, 2.616848, 3.388367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.100026, 2.724449, 3.008299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067782, -0.956968, -0.282166,
		-0.985186, 0.108854, -0.132515,
		0.157527, 0.269004, -0.950170,
		2.147284, 2.805150, 2.723248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.556851, 2.324393, 3.035958>,  <2.037015, 2.616848, 3.388367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.556851, 2.324393, 3.035958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.855990, 2.377327, 2.775740>,  <2.035474, 2.409088, 2.619608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.855990, 2.377327, 2.775740>,  <1.556851, 2.324393, 3.035958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.855990, 2.377327, 2.775740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021651, -0.974547, -0.223135,
		-0.663517, 0.180956, -0.725948,
		0.747848, 0.132336, -0.650546,
		2.080345, 2.417028, 2.580576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.380182, 2.061013, 2.426576>,  <1.556851, 2.324393, 3.035958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.380182, 2.061013, 2.426576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778287, 2.076393, 2.390860>,  <2.017150, 2.085621, 2.369430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778287, 2.076393, 2.390860>,  <1.380182, 2.061013, 2.426576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778287, 2.076393, 2.390860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019910, -0.979612, -0.199911,
		-0.095158, 0.197187, -0.975737,
		0.995263, 0.038450, -0.089292,
		2.076866, 2.087928, 2.364072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.457787, 1.663753, 1.905934>,  <1.380182, 2.061013, 2.426576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.457787, 1.663753, 1.905934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.836783, 1.663067, 2.033844>,  <2.064182, 1.662655, 2.110590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.836783, 1.663067, 2.033844>,  <1.457787, 1.663753, 1.905934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.836783, 1.663067, 2.033844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046885, -0.988434, -0.144223,
		0.316324, 0.151643, -0.936453,
		0.947492, -0.001715, 0.319775,
		2.121031, 1.662552, 2.129776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.903091, 1.297839, 1.446796>,  <1.457787, 1.663753, 1.905934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.903091, 1.297839, 1.446796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.036529, 1.282452, 1.823568>,  <2.116591, 1.273219, 2.049632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.036529, 1.282452, 1.823568>,  <1.903091, 1.297839, 1.446796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.036529, 1.282452, 1.823568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142832, -0.985570, -0.090835,
		0.931834, 0.164840, -0.323285,
		0.333593, -0.038468, 0.941932,
		2.136606, 1.270911, 2.106148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.889922, 0.038964, 2.113906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.209106, 0.089918, 2.349545>,  <2.400617, 0.120490, 2.490927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.209106, 0.089918, 2.349545>,  <1.889922, 0.038964, 2.113906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.209106, 0.089918, 2.349545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081502, 0.991238, -0.103944,
		-0.597175, 0.034931, 0.801351,
		0.797960, 0.127384, 0.589095,
		2.448494, 0.128133, 2.526273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.807650, 0.544184, 2.559800>,  <1.889922, 0.038965, 2.113906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.807650, 0.544184, 2.559800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.206764, 0.539394, 2.585972>,  <2.446233, 0.536520, 2.601675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.206764, 0.539394, 2.585972>,  <1.807650, 0.544184, 2.559800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.206764, 0.539394, 2.585972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025418, 0.977651, -0.208693,
		-0.061467, 0.209894, 0.975790,
		0.997785, -0.011974, 0.065429,
		2.506100, 0.535802, 2.605600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.094710, 1.094367, 2.889074>,  <1.807650, 0.544184, 2.559800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.094710, 1.094367, 2.889074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.389977, 1.002075, 2.635499>,  <2.567136, 0.946700, 2.483354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.389977, 1.002075, 2.635499>,  <2.094710, 1.094367, 2.889074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.389977, 1.002075, 2.635499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177821, 0.973009, -0.147081,
		0.650763, -0.004157, 0.759270,
		0.738165, -0.230730, -0.633937,
		2.611426, 0.932856, 2.445318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.660211, 1.374666, 3.102662>,  <2.094710, 1.094367, 2.889074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.660211, 1.374666, 3.102662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.634808, 1.337566, 2.705197>,  <2.619565, 1.315307, 2.466718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.634808, 1.337566, 2.705197>,  <2.660211, 1.374666, 3.102662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.634808, 1.337566, 2.705197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026379, 0.995168, -0.094575,
		0.997633, -0.032218, -0.060756,
		-0.063509, -0.092748, -0.993662,
		2.615755, 1.309742, 2.407099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.261884, 1.726698, 2.697170>,  <2.660211, 1.374666, 3.102662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.261884, 1.726698, 2.697170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.916615, 1.717913, 2.495399>,  <2.709453, 1.712642, 2.374337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.916615, 1.717913, 2.495399>,  <3.261884, 1.726698, 2.697170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.916615, 1.717913, 2.495399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042342, 0.992386, -0.115661,
		0.503127, -0.121194, -0.855672,
		-0.863175, -0.021962, -0.504427,
		2.657662, 1.711325, 2.344071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.344223, 2.195361, 2.120853>,  <3.261884, 1.726698, 2.697170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.344223, 2.195361, 2.120853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.952053, 2.156629, 2.189428>,  <2.716751, 2.133389, 2.230573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.952053, 2.156629, 2.189428>,  <3.344223, 2.195361, 2.120853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.952053, 2.156629, 2.189428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097885, 0.995195, 0.002311,
		-0.170838, -0.014515, -0.985192,
		-0.980425, -0.096830, 0.171438,
		2.657926, 2.127580, 2.240860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.021891, 2.723431, 1.750487>,  <3.344223, 2.195361, 2.120853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.021891, 2.723431, 1.750487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.725864, 2.629880, 2.002710>,  <2.548248, 2.573750, 2.154044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.725864, 2.629880, 2.002710>,  <3.021891, 2.723431, 1.750487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.725864, 2.629880, 2.002710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362926, 0.928232, -0.081672,
		-0.566203, -0.289288, -0.771833,
		-0.740067, -0.233875, 0.630558,
		2.503844, 2.559718, 2.191878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.445825, 3.069599, 1.502176>,  <3.021891, 2.723431, 1.750487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.445825, 3.069599, 1.502176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.363358, 3.009741, 1.888978>,  <2.313877, 2.973826, 2.121059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.363358, 3.009741, 1.888978>,  <2.445825, 3.069599, 1.502176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.363358, 3.009741, 1.888978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379936, 0.922944, 0.061825,
		-0.901745, -0.354654, -0.247138,
		-0.206169, -0.149647, 0.967006,
		2.301507, 2.964847, 2.179080>
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
