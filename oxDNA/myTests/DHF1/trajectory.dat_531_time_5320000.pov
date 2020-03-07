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
	<1.688375, 1.376096, 3.501456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.571583, 0.994167, 3.523594>,  <1.501508, 0.765010, 3.536876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.571583, 0.994167, 3.523594>,  <1.688375, 1.376096, 3.501456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.571583, 0.994167, 3.523594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622610, 0.145828, -0.768824,
		0.726020, -0.258938, -0.637060,
		-0.291979, -0.954822, 0.055343,
		1.483989, 0.707721, 3.540197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.696046, 0.967200, 2.796873>,  <1.688375, 1.376096, 3.501456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.696046, 0.967200, 2.796873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.390322, 0.871201, 3.036282>,  <1.206887, 0.813601, 3.179927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.390322, 0.871201, 3.036282>,  <1.696046, 0.967200, 2.796873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.390322, 0.871201, 3.036282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644793, 0.272457, -0.714149,
		0.008323, -0.931755, -0.362992,
		-0.764312, -0.239999, 0.598522,
		1.161028, 0.799201, 3.215838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.388309, 0.318657, 2.546771>,  <1.696046, 0.967200, 2.796873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.388309, 0.318657, 2.546771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.215769, 0.640114, 2.710770>,  <1.112245, 0.832988, 2.809169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.215769, 0.640114, 2.710770>,  <1.388309, 0.318657, 2.546771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.215769, 0.640114, 2.710770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479178, 0.180972, -0.858858,
		-0.764412, -0.566930, 0.307025,
		-0.431349, 0.803641, 0.409997,
		1.086364, 0.881206, 2.833769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.678670, 0.385961, 2.518416>,  <1.388309, 0.318657, 2.546771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.678670, 0.385961, 2.518416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.787863, 0.770649, 2.508808>,  <0.853379, 1.001462, 2.503043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.787863, 0.770649, 2.508808>,  <0.678670, 0.385961, 2.518416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.787863, 0.770649, 2.508808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556633, 0.137537, -0.819294,
		-0.784627, 0.237023, 0.572870,
		0.272983, 0.961719, -0.024020,
		0.869758, 1.059165, 2.501602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.128799, 0.731841, 2.500572>,  <0.678670, 0.385961, 2.518416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.128799, 0.731841, 2.500572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.411053, 0.945751, 2.314629>,  <0.580405, 1.074097, 2.203062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.411053, 0.945751, 2.314629>,  <0.128799, 0.731841, 2.500572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.411053, 0.945751, 2.314629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644172, 0.210870, -0.735239,
		-0.295163, 0.818260, 0.493285,
		0.705635, 0.534776, -0.464859,
		0.622743, 1.106184, 2.175171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.243477, 1.218325, 2.256981>,  <0.128799, 0.731841, 2.500572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.243477, 1.218325, 2.256981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.092619, 1.256924, 2.043556>,  <0.294276, 1.280083, 1.915502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.092619, 1.256924, 2.043556>,  <-0.243477, 1.218325, 2.256981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.092619, 1.256924, 2.043556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537124, 0.282678, -0.794727,
		0.074137, 0.954349, 0.289347,
		0.840239, 0.096497, -0.533561,
		0.344691, 1.285873, 1.883488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.165126, 1.898056, 2.055280>,  <-0.243477, 1.218325, 2.256981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.165126, 1.898056, 2.055280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.031628, 1.660946, 1.800198>,  <0.149680, 1.518680, 1.647148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.031628, 1.660946, 1.800198>,  <-0.165126, 1.898056, 2.055280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.031628, 1.660946, 1.800198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646823, 0.241493, -0.723396,
		0.582812, 0.768309, -0.264633,
		0.491885, -0.592775, -0.637705,
		0.179193, 1.483114, 1.608886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.012786, 2.284511, 1.435818>,  <-0.165126, 1.898056, 2.055280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.012786, 2.284511, 1.435818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.007565, 1.905533, 1.309479>,  <0.019775, 1.678146, 1.233675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.007565, 1.905533, 1.309479>,  <-0.012786, 2.284511, 1.435818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.007565, 1.905533, 1.309479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561269, 0.234464, -0.793728,
		0.826068, 0.217658, -0.519843,
		0.050877, -0.947445, -0.315848,
		0.022827, 1.621299, 1.214724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.488117, 1.323159, 0.511091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.192898, 1.172783, 0.286964>,  <-1.015766, 1.082557, 0.152489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.192898, 1.172783, 0.286964>,  <-1.488117, 1.323159, 0.511091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.192898, 1.172783, 0.286964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640476, 0.129037, 0.757060,
		-0.212309, -0.917615, 0.336017,
		0.738048, -0.375942, -0.560315,
		-0.971483, 1.060001, 0.118870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.108601, 0.710611, 0.812817>,  <-1.488117, 1.323159, 0.511091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.108601, 0.710611, 0.812817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.850647, 0.911797, 0.582634>,  <-0.695875, 1.032508, 0.444524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.850647, 0.911797, 0.582634>,  <-1.108601, 0.710611, 0.812817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.850647, 0.911797, 0.582634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689121, -0.057054, 0.722397,
		0.330507, -0.862423, -0.383396,
		0.644885, 0.502963, -0.575457,
		-0.657181, 1.062686, 0.409997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.436338, 0.553109, 1.065558>,  <-1.108601, 0.710611, 0.812817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.436338, 0.553109, 1.065558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.263733, 0.866928, 0.887444>,  <-0.160170, 1.055220, 0.780575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.263733, 0.866928, 0.887444>,  <-0.436338, 0.553109, 1.065558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.263733, 0.866928, 0.887444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737420, -0.022447, 0.675061,
		0.519623, -0.619661, -0.588228,
		0.431513, 0.784549, -0.445286,
		-0.134279, 1.102293, 0.753858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.229614, 0.420578, 0.821328>,  <-0.436338, 0.553109, 1.065558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.229614, 0.420578, 0.821328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.178890, 0.801270, 0.933136>,  <0.148456, 1.029685, 1.000221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.178890, 0.801270, 0.933136>,  <0.229614, 0.420578, 0.821328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.178890, 0.801270, 0.933136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714709, -0.107737, 0.691074,
		0.687830, 0.287410, -0.666548,
		-0.126810, 0.951729, 0.279519,
		0.140847, 1.086788, 1.016992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918121, 0.713268, 0.832452>,  <0.229614, 0.420578, 0.821328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918121, 0.713268, 0.832452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.689919, 0.958031, 1.051575>,  <0.552997, 1.104888, 1.183048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.689919, 0.958031, 1.051575>,  <0.918121, 0.713268, 0.832452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.689919, 0.958031, 1.051575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685457, -0.012661, 0.728003,
		0.452405, 0.790829, -0.412212,
		-0.570507, 0.611906, 0.547807,
		0.518766, 1.141603, 1.215917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.381535, 1.247086, 1.100328>,  <0.918121, 0.713268, 0.832452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.381535, 1.247086, 1.100328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069336, 1.266464, 1.349640>,  <0.882017, 1.278091, 1.499227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069336, 1.266464, 1.349640>,  <1.381535, 1.247086, 1.100328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.069336, 1.266464, 1.349640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624860, 0.091310, 0.775379,
		-0.019348, 0.994643, -0.101540,
		-0.780497, 0.048446, 0.623279,
		0.835187, 1.280998, 1.536624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.527048, 1.808079, 1.576910>,  <1.381535, 1.247086, 1.100328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.527048, 1.808079, 1.576910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265381, 1.566925, 1.759598>,  <1.108380, 1.422233, 1.869211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265381, 1.566925, 1.759598>,  <1.527048, 1.808079, 1.576910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.265381, 1.566925, 1.759598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511507, 0.092180, 0.854321,
		-0.557157, 0.792486, 0.248079,
		-0.654169, -0.602884, 0.456720,
		1.069130, 1.386060, 1.896614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.449506, 2.015899, 2.261310>,  <1.527048, 1.808079, 1.576910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.449506, 2.015899, 2.261310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.357941, 1.627129, 2.239548>,  <1.303001, 1.393867, 2.226490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.357941, 1.627129, 2.239548>,  <1.449506, 2.015899, 2.261310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.357941, 1.627129, 2.239548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455893, -0.156421, 0.876181,
		-0.860093, 0.175767, 0.478900,
		-0.228914, -0.971925, -0.054406,
		1.289266, 1.335551, 2.223226>
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
