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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<44.052563, 43.461758, 44.989536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306709, 43.758606, 45.074917>,  <44.459198, 43.936714, 45.126144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306709, 43.758606, 45.074917>,  <44.052563, 43.461758, 44.989536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306709, 43.758606, 45.074917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186387, -0.415626, 0.890233,
		0.749379, -0.525840, -0.402397,
		0.635366, 0.742124, 0.213452,
		44.497318, 43.981243, 45.138954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779610, 43.346485, 45.133514>,  <44.052563, 43.461758, 44.989536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779610, 43.346485, 45.133514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632637, 43.646698, 45.353222>,  <44.544453, 43.826824, 45.485046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632637, 43.646698, 45.353222>,  <44.779610, 43.346485, 45.133514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632637, 43.646698, 45.353222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207093, -0.509730, 0.835038,
		0.906702, 0.420567, 0.031860,
		-0.367429, 0.750532, 0.549270,
		44.522408, 43.871857, 45.518002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236340, 43.438709, 45.622593>,  <44.779610, 43.346485, 45.133514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236340, 43.438709, 45.622593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897598, 43.590118, 45.772022>,  <44.694355, 43.680965, 45.861679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.897598, 43.590118, 45.772022>,  <45.236340, 43.438709, 45.622593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897598, 43.590118, 45.772022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153188, -0.499056, 0.852923,
		0.509286, 0.779528, 0.364642,
		-0.846854, 0.378523, 0.373576,
		44.643543, 43.703674, 45.884094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349163, 43.664227, 46.369450>,  <45.236340, 43.438709, 45.622593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349163, 43.664227, 46.369450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953453, 43.612434, 46.342426>,  <44.716026, 43.581360, 46.326210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953453, 43.612434, 46.342426>,  <45.349163, 43.664227, 46.369450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953453, 43.612434, 46.342426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005165, -0.493326, 0.869829,
		-0.145958, 0.860153, 0.488705,
		-0.989277, -0.129482, -0.067562,
		44.656670, 43.573589, 46.322159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931652, 43.946968, 47.037922>,  <45.349163, 43.664227, 46.369450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931652, 43.946968, 47.037922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689838, 43.672264, 46.876480>,  <44.544750, 43.507442, 46.779613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689838, 43.672264, 46.876480>,  <44.931652, 43.946968, 47.037922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689838, 43.672264, 46.876480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131562, -0.413638, 0.900886,
		-0.785636, 0.597719, 0.159709,
		-0.604538, -0.686757, -0.403607,
		44.508476, 43.466236, 46.755398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333817, 44.021381, 47.564075>,  <44.931652, 43.946968, 47.037922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333817, 44.021381, 47.564075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318111, 43.670685, 47.372330>,  <44.308689, 43.460266, 47.257282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318111, 43.670685, 47.372330>,  <44.333817, 44.021381, 47.564075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318111, 43.670685, 47.372330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285726, -0.449853, 0.846164,
		-0.957507, 0.170187, -0.232845,
		-0.039260, -0.876738, -0.479364,
		44.306332, 43.407665, 47.228519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801319, 43.770504, 47.803692>,  <44.333817, 44.021381, 47.564075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801319, 43.770504, 47.803692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982521, 43.448647, 47.650154>,  <44.091244, 43.255531, 47.558033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.982521, 43.448647, 47.650154>,  <43.801319, 43.770504, 47.803692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982521, 43.448647, 47.650154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210445, -0.514898, 0.831019,
		-0.866315, -0.295677, -0.402584,
		0.453003, -0.804646, -0.383841,
		44.118423, 43.207253, 47.535004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267818, 43.237835, 47.883907>,  <43.801319, 43.770504, 47.803692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267818, 43.237835, 47.883907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633751, 43.079468, 47.852062>,  <43.853310, 42.984447, 47.832954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633751, 43.079468, 47.852062>,  <43.267818, 43.237835, 47.883907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633751, 43.079468, 47.852062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190475, -0.596853, 0.779414,
		-0.356105, -0.697864, -0.621430,
		0.914827, -0.395920, -0.079617,
		43.908199, 42.960693, 47.828178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142010, 42.452579, 47.993713>,  <43.267818, 43.237835, 47.883907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142010, 42.452579, 47.993713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533798, 42.512199, 48.048004>,  <43.768871, 42.547974, 48.080578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533798, 42.512199, 48.048004>,  <43.142010, 42.452579, 47.993713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533798, 42.512199, 48.048004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076349, -0.348839, 0.934068,
		0.186573, -0.925254, -0.330297,
		0.979470, 0.149054, 0.135726,
		43.827641, 42.556915, 48.088722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299923, 41.876102, 48.287174>,  <43.142010, 42.452579, 47.993713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299923, 41.876102, 48.287174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599915, 42.123520, 48.380924>,  <43.779907, 42.271973, 48.437176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599915, 42.123520, 48.380924>,  <43.299923, 41.876102, 48.287174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599915, 42.123520, 48.380924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093432, -0.449839, 0.888209,
		0.654832, -0.644238, -0.395161,
		0.749977, 0.618548, 0.234376,
		43.824909, 42.309086, 48.451237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875332, 41.467522, 48.717392>,  <43.299923, 41.876102, 48.287174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875332, 41.467522, 48.717392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903824, 41.856995, 48.803997>,  <43.920921, 42.090679, 48.855961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903824, 41.856995, 48.803997>,  <43.875332, 41.467522, 48.717392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903824, 41.856995, 48.803997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104497, -0.223152, 0.969167,
		0.991971, -0.046413, -0.117642,
		0.071234, 0.973678, 0.216511,
		43.925194, 42.149097, 48.868950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343891, 41.468189, 49.256161>,  <43.875332, 41.467522, 48.717392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343891, 41.468189, 49.256161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142002, 41.813126, 49.272285>,  <44.020866, 42.020088, 49.281960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142002, 41.813126, 49.272285>,  <44.343891, 41.468189, 49.256161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142002, 41.813126, 49.272285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115242, 0.021029, 0.993115,
		0.855554, 0.505895, -0.109991,
		-0.504725, 0.862338, 0.040309,
		43.990585, 42.071827, 49.284378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673523, 41.911602, 49.775696>,  <44.343891, 41.468189, 49.256161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673523, 41.911602, 49.775696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321243, 42.094124, 49.724857>,  <44.109875, 42.203636, 49.694355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321243, 42.094124, 49.724857>,  <44.673523, 41.911602, 49.775696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321243, 42.094124, 49.724857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058480, 0.161522, 0.985135,
		0.470050, 0.875041, -0.115568,
		-0.880700, 0.456304, -0.127096,
		44.057034, 42.231014, 49.686729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669079, 42.374626, 50.344864>,  <44.673523, 41.911602, 49.775696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669079, 42.374626, 50.344864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286800, 42.396744, 50.229214>,  <44.057434, 42.410015, 50.159824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286800, 42.396744, 50.229214>,  <44.669079, 42.374626, 50.344864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286800, 42.396744, 50.229214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276741, 0.165953, 0.946506,
		0.100313, 0.984582, -0.143299,
		-0.955694, 0.055290, -0.289121,
		44.000092, 42.413330, 50.142479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449802, 43.037655, 50.524738>,  <44.669079, 42.374626, 50.344864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449802, 43.037655, 50.524738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147186, 42.776085, 50.522617>,  <43.965618, 42.619141, 50.521347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147186, 42.776085, 50.522617>,  <44.449802, 43.037655, 50.524738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147186, 42.776085, 50.522617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187035, 0.208606, 0.959949,
		-0.626633, 0.727228, -0.280125,
		-0.756538, -0.653929, -0.005298,
		43.920223, 42.579906, 50.521027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867603, 43.393833, 50.812611>,  <44.449802, 43.037655, 50.524738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867603, 43.393833, 50.812611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761528, 43.008720, 50.833485>,  <43.697884, 42.777653, 50.846008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.761528, 43.008720, 50.833485>,  <43.867603, 43.393833, 50.812611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761528, 43.008720, 50.833485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308473, 0.135999, 0.941461,
		-0.913520, 0.233567, -0.333058,
		-0.265190, -0.962783, 0.052189,
		43.681973, 42.719887, 50.849140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199921, 43.436596, 51.142750>,  <43.867603, 43.393833, 50.812611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199921, 43.436596, 51.142750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342094, 43.068329, 51.207298>,  <43.427399, 42.847370, 51.246025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342094, 43.068329, 51.207298>,  <43.199921, 43.436596, 51.142750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342094, 43.068329, 51.207298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404798, 0.003990, 0.914397,
		-0.842498, -0.390331, -0.371266,
		0.355437, -0.920666, 0.161367,
		43.448727, 42.792130, 51.255707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740887, 43.100502, 51.615997>,  <43.199921, 43.436596, 51.142750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740887, 43.100502, 51.615997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046680, 42.846794, 51.662064>,  <43.230156, 42.694569, 51.689705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046680, 42.846794, 51.662064>,  <42.740887, 43.100502, 51.615997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046680, 42.846794, 51.662064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352741, -0.262061, 0.898275,
		-0.539565, -0.727345, -0.424074,
		0.764489, -0.634266, 0.115165,
		43.276028, 42.656513, 51.696613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454479, 42.399254, 51.800915>,  <42.740887, 43.100502, 51.615997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454479, 42.399254, 51.800915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836792, 42.408943, 51.918148>,  <43.066177, 42.414757, 51.988487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836792, 42.408943, 51.918148>,  <42.454479, 42.399254, 51.800915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836792, 42.408943, 51.918148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282697, -0.198928, 0.938355,
		0.081036, -0.979715, -0.183282,
		0.955780, 0.024227, 0.293083,
		43.123528, 42.416210, 52.006073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371567, 41.942657, 52.300297>,  <42.454479, 42.399254, 51.800915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371567, 41.942657, 52.300297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716919, 42.132393, 52.369099>,  <42.924129, 42.246235, 52.410381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716919, 42.132393, 52.369099>,  <42.371567, 41.942657, 52.300297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716919, 42.132393, 52.369099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134655, -0.111924, 0.984551,
		0.486260, -0.873200, -0.032761,
		0.863376, 0.474337, 0.172005,
		42.975933, 42.274693, 52.420700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741417, 41.414448, 52.698750>,  <42.371567, 41.942657, 52.300297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741417, 41.414448, 52.698750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868397, 41.790642, 52.747261>,  <42.944584, 42.016357, 52.776367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868397, 41.790642, 52.747261>,  <42.741417, 41.414448, 52.698750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868397, 41.790642, 52.747261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147267, -0.077449, 0.986060,
		0.936770, -0.330886, 0.113916,
		0.317451, 0.940487, 0.121281,
		42.963631, 42.072788, 52.783646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197269, 41.361046, 53.276558>,  <42.741417, 41.414448, 52.698750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197269, 41.361046, 53.276558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138924, 41.755951, 53.251144>,  <43.103916, 41.992893, 53.235897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138924, 41.755951, 53.251144>,  <43.197269, 41.361046, 53.276558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138924, 41.755951, 53.251144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290987, 0.018560, 0.956547,
		0.945542, 0.158015, 0.284573,
		-0.145867, 0.987262, -0.063530,
		43.095165, 42.052128, 53.232086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497181, 41.568367, 53.844822>,  <43.197269, 41.361046, 53.276558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497181, 41.568367, 53.844822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270256, 41.890511, 53.776058>,  <43.134102, 42.083797, 53.734798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270256, 41.890511, 53.776058>,  <43.497181, 41.568367, 53.844822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270256, 41.890511, 53.776058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015138, 0.198521, 0.979980,
		0.823364, 0.558557, -0.100432,
		-0.567312, 0.805360, -0.171910,
		43.100063, 42.132118, 53.724483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792572, 42.145805, 54.257618>,  <43.497181, 41.568367, 53.844822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792572, 42.145805, 54.257618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414467, 42.243881, 54.171486>,  <43.187603, 42.302727, 54.119808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414467, 42.243881, 54.171486>,  <43.792572, 42.145805, 54.257618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414467, 42.243881, 54.171486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102890, 0.402261, 0.909725,
		0.309671, 0.882082, -0.355014,
		-0.945261, 0.245188, -0.215326,
		43.130890, 42.317436, 54.106888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765633, 42.922222, 54.481407>,  <43.792572, 42.145805, 54.257618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765633, 42.922222, 54.481407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402855, 42.758156, 54.443001>,  <43.185188, 42.659714, 54.419956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402855, 42.758156, 54.443001>,  <43.765633, 42.922222, 54.481407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402855, 42.758156, 54.443001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177783, 0.166053, 0.969959,
		-0.381904, 0.896765, -0.223521,
		-0.906941, -0.410169, -0.096013,
		43.130772, 42.635105, 54.414196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194328, 43.460361, 54.723080>,  <43.765633, 42.922222, 54.481407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194328, 43.460361, 54.723080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023438, 43.099243, 54.742851>,  <42.920902, 42.882572, 54.754715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023438, 43.099243, 54.742851>,  <43.194328, 43.460361, 54.723080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023438, 43.099243, 54.742851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356156, 0.218285, 0.908573,
		-0.831043, 0.370561, -0.414792,
		-0.427225, -0.902793, 0.049427,
		42.895271, 42.828403, 54.757679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504539, 43.653980, 54.832783>,  <43.194328, 43.460361, 54.723080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504539, 43.653980, 54.832783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600159, 43.291458, 54.972191>,  <42.657532, 43.073944, 55.055836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600159, 43.291458, 54.972191>,  <42.504539, 43.653980, 54.832783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600159, 43.291458, 54.972191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336320, 0.259431, 0.905309,
		-0.910903, -0.333629, -0.242791,
		0.239050, -0.906304, 0.348523,
		42.671875, 43.019566, 55.076748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996071, 43.614063, 55.415638>,  <42.504539, 43.653980, 54.832783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996071, 43.614063, 55.415638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243679, 43.302917, 55.458977>,  <42.392242, 43.116230, 55.484982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243679, 43.302917, 55.458977>,  <41.996071, 43.614063, 55.415638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243679, 43.302917, 55.458977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212457, -0.033038, 0.976612,
		-0.756092, -0.627563, -0.185715,
		0.619021, -0.777864, 0.108350,
		42.429386, 43.069557, 55.491482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619911, 43.079609, 55.666073>,  <41.996071, 43.614063, 55.415638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619911, 43.079609, 55.666073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996933, 42.997353, 55.771378>,  <42.223145, 42.947998, 55.834560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996933, 42.997353, 55.771378>,  <41.619911, 43.079609, 55.666073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996933, 42.997353, 55.771378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275855, -0.034663, 0.960574,
		-0.188407, -0.978014, -0.089399,
		0.942553, -0.205640, 0.263259,
		42.279697, 42.935661, 55.850357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541508, 42.429806, 56.091255>,  <41.619911, 43.079609, 55.666073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541508, 42.429806, 56.091255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897526, 42.586792, 56.184021>,  <42.111137, 42.680984, 56.239681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897526, 42.586792, 56.184021>,  <41.541508, 42.429806, 56.091255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897526, 42.586792, 56.184021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260288, 0.019861, 0.965327,
		0.374254, -0.919551, 0.119832,
		0.890047, 0.392468, 0.231915,
		42.164539, 42.704533, 56.253597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652996, 42.009174, 56.606483>,  <41.541508, 42.429806, 56.091255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652996, 42.009174, 56.606483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852623, 42.355057, 56.629143>,  <41.972401, 42.562588, 56.642738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852623, 42.355057, 56.629143>,  <41.652996, 42.009174, 56.606483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852623, 42.355057, 56.629143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436853, 0.194595, 0.878232,
		0.748389, -0.463049, 0.474867,
		0.499072, 0.864707, 0.056652,
		42.002346, 42.614468, 56.646137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984005, 41.983482, 57.347256>,  <41.652996, 42.009174, 56.606483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984005, 41.983482, 57.347256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961037, 42.352654, 57.194992>,  <41.947254, 42.574158, 57.103634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961037, 42.352654, 57.194992>,  <41.984005, 41.983482, 57.347256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961037, 42.352654, 57.194992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543136, 0.291045, 0.787589,
		0.837679, 0.251976, 0.484564,
		-0.057423, 0.922931, -0.380659,
		41.943810, 42.629532, 57.080795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138317, 42.430378, 57.876553>,  <41.984005, 41.983482, 57.347256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138317, 42.430378, 57.876553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954117, 42.692108, 57.636620>,  <41.843597, 42.849148, 57.492661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954117, 42.692108, 57.636620>,  <42.138317, 42.430378, 57.876553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954117, 42.692108, 57.636620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459795, 0.402192, 0.791726,
		0.759296, 0.640387, 0.115648,
		-0.460499, 0.654329, -0.599829,
		41.815968, 42.888409, 57.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217831, 43.151096, 58.108208>,  <42.138317, 42.430378, 57.876553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217831, 43.151096, 58.108208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886787, 43.152107, 57.883690>,  <41.688160, 43.152714, 57.748978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886787, 43.152107, 57.883690>,  <42.217831, 43.151096, 58.108208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886787, 43.152107, 57.883690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507622, 0.423378, 0.750380,
		0.239539, 0.905950, -0.349108,
		-0.827612, 0.002530, -0.561296,
		41.638504, 43.152866, 57.715302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829224, 43.849747, 58.251808>,  <42.217831, 43.151096, 58.108208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829224, 43.849747, 58.251808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545753, 43.629524, 58.075325>,  <41.375671, 43.497391, 57.969437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545753, 43.629524, 58.075325>,  <41.829224, 43.849747, 58.251808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545753, 43.629524, 58.075325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662614, 0.304581, 0.684232,
		-0.242328, 0.777247, -0.580658,
		-0.708675, -0.550561, -0.441206,
		41.333153, 43.464355, 57.942963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297489, 44.268387, 58.237835>,  <41.829224, 43.849747, 58.251808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297489, 44.268387, 58.237835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099552, 43.923721, 58.192818>,  <40.980789, 43.716923, 58.165810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099552, 43.923721, 58.192818>,  <41.297489, 44.268387, 58.237835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099552, 43.923721, 58.192818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631915, 0.267914, 0.727259,
		-0.596502, 0.430993, -0.677074,
		-0.494841, -0.861665, -0.112540,
		40.951099, 43.665222, 58.159054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657089, 44.438335, 58.172768>,  <41.297489, 44.268387, 58.237835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657089, 44.438335, 58.172768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572899, 44.068298, 58.299194>,  <40.522385, 43.846275, 58.375050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572899, 44.068298, 58.299194>,  <40.657089, 44.438335, 58.172768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572899, 44.068298, 58.299194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890488, 0.314837, 0.328494,
		-0.403397, -0.212308, -0.890054,
		-0.210480, -0.925096, 0.316063,
		40.509754, 43.790768, 58.394012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910500, 44.149181, 57.897575>,  <40.657089, 44.438335, 58.172768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910500, 44.149181, 57.897575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016575, 43.968513, 58.238319>,  <40.080219, 43.860111, 58.442768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016575, 43.968513, 58.238319>,  <39.910500, 44.149181, 57.897575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016575, 43.968513, 58.238319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880680, 0.246210, 0.404702,
		-0.392530, -0.857539, -0.332486,
		0.265186, -0.451671, 0.851862,
		40.096130, 43.833012, 58.493877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311569, 43.983162, 58.159733>,  <39.910500, 44.149181, 57.897575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311569, 43.983162, 58.159733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554665, 43.924850, 58.471989>,  <39.700523, 43.889862, 58.659344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554665, 43.924850, 58.471989>,  <39.311569, 43.983162, 58.159733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554665, 43.924850, 58.471989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774467, 0.108617, 0.623220,
		-0.175643, -0.983337, -0.046889,
		0.607743, -0.145778, 0.780639,
		39.736988, 43.881119, 58.706181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795208, 43.904560, 58.725872>,  <39.311569, 43.983162, 58.159733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795208, 43.904560, 58.725872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135445, 43.923828, 58.935318>,  <39.339584, 43.935387, 59.060986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135445, 43.923828, 58.935318>,  <38.795208, 43.904560, 58.725872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135445, 43.923828, 58.935318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525805, 0.087619, 0.846080,
		-0.005124, -0.994989, 0.099856,
		0.850590, 0.048170, 0.523619,
		39.390621, 43.938278, 59.092403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722755, 43.338085, 59.331528>,  <38.795208, 43.904560, 58.725872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722755, 43.338085, 59.331528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987015, 43.618210, 59.439682>,  <39.145569, 43.786285, 59.504574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987015, 43.618210, 59.439682>,  <38.722755, 43.338085, 59.331528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987015, 43.618210, 59.439682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451126, 0.082475, 0.888641,
		0.600027, -0.709055, 0.370416,
		0.660646, 0.700313, 0.270387,
		39.185207, 43.828304, 59.520798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958611, 43.115780, 60.030914>,  <38.722755, 43.338085, 59.331528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958611, 43.115780, 60.030914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023273, 43.509575, 60.003628>,  <39.062073, 43.745850, 59.987255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023273, 43.509575, 60.003628>,  <38.958611, 43.115780, 60.030914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023273, 43.509575, 60.003628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333048, 0.119500, 0.935307,
		0.928949, -0.128482, 0.347199,
		0.161660, 0.984486, -0.068219,
		39.071770, 43.804920, 59.983162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418346, 43.173000, 60.510887>,  <38.958611, 43.115780, 60.030914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418346, 43.173000, 60.510887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244888, 43.528664, 60.452431>,  <39.140812, 43.742062, 60.417358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244888, 43.528664, 60.452431>,  <39.418346, 43.173000, 60.510887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244888, 43.528664, 60.452431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263485, 0.029968, 0.964198,
		0.861700, 0.456625, 0.221283,
		-0.433646, 0.889154, -0.146137,
		39.114796, 43.795410, 60.408588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548698, 43.711040, 61.001686>,  <39.418346, 43.173000, 60.510887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548698, 43.711040, 61.001686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183681, 43.817497, 60.877468>,  <38.964672, 43.881371, 60.802937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183681, 43.817497, 60.877468>,  <39.548698, 43.711040, 61.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183681, 43.817497, 60.877468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289174, 0.117076, 0.950090,
		0.289219, 0.956797, -0.029874,
		-0.912541, 0.266145, -0.310542,
		38.909920, 43.897339, 60.784306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439411, 44.367565, 61.284492>,  <39.548698, 43.711040, 61.001686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439411, 44.367565, 61.284492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077080, 44.220154, 61.200909>,  <38.859680, 44.131706, 61.150757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077080, 44.220154, 61.200909>,  <39.439411, 44.367565, 61.284492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077080, 44.220154, 61.200909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221816, -0.007665, 0.975058,
		-0.360942, 0.929583, -0.074803,
		-0.905825, -0.368532, -0.208963,
		38.805332, 44.109592, 61.138218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497303, 45.054016, 60.957573>,  <39.439411, 44.367565, 61.284492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497303, 45.054016, 60.957573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244801, 45.356277, 61.027435>,  <39.093300, 45.537636, 61.069351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244801, 45.356277, 61.027435>,  <39.497303, 45.054016, 60.957573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244801, 45.356277, 61.027435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063438, -0.274743, 0.959423,
		0.772977, 0.594560, 0.221370,
		-0.631254, 0.755656, 0.174652,
		39.055424, 45.582973, 61.079830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715492, 45.452343, 61.520828>,  <39.497303, 45.054016, 60.957573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715492, 45.452343, 61.520828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319336, 45.480911, 61.473450>,  <39.081642, 45.498051, 61.445023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319336, 45.480911, 61.473450>,  <39.715492, 45.452343, 61.520828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319336, 45.480911, 61.473450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137651, -0.425119, 0.894610,
		0.013539, 0.902315, 0.430864,
		-0.990388, 0.071421, -0.118448,
		39.022221, 45.502338, 61.437916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444469, 45.204281, 62.163235>,  <39.715492, 45.452343, 61.520828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444469, 45.204281, 62.163235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347839, 45.540955, 62.356400>,  <39.289860, 45.742958, 62.472298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347839, 45.540955, 62.356400>,  <39.444469, 45.204281, 62.163235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347839, 45.540955, 62.356400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747528, 0.155901, -0.645676,
		-0.618744, -0.516968, 0.591524,
		-0.241575, 0.841688, 0.482910,
		39.275368, 45.793461, 62.501274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669117, 45.156734, 62.361359>,  <39.444469, 45.204281, 62.163235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669117, 45.156734, 62.361359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842484, 45.512039, 62.300514>,  <38.946503, 45.725224, 62.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842484, 45.512039, 62.300514>,  <38.669117, 45.156734, 62.361359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842484, 45.512039, 62.300514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618938, 0.170717, -0.766662,
		-0.655030, 0.426432, 0.623771,
		0.433418, 0.888263, -0.152110,
		38.972507, 45.778519, 62.254883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169399, 45.540165, 62.117123>,  <38.669117, 45.156734, 62.361359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169399, 45.540165, 62.117123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514351, 45.719231, 62.022560>,  <38.721321, 45.826672, 61.965824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514351, 45.719231, 62.022560>,  <38.169399, 45.540165, 62.117123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514351, 45.719231, 62.022560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366944, 0.231020, -0.901100,
		-0.348778, 0.863842, 0.363497,
		0.862384, 0.447667, -0.236407,
		38.773067, 45.853531, 61.951637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035870, 46.174995, 61.782616>,  <38.169399, 45.540165, 62.117123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035870, 46.174995, 61.782616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409866, 46.079552, 61.677650>,  <38.634266, 46.022285, 61.614674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409866, 46.079552, 61.677650>,  <38.035870, 46.174995, 61.782616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409866, 46.079552, 61.677650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211981, 0.217222, -0.952827,
		0.284352, 0.946510, 0.152521,
		0.934991, -0.238607, -0.262410,
		38.690365, 46.007969, 61.598927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333736, 46.625519, 61.230675>,  <38.035870, 46.174995, 61.782616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333736, 46.625519, 61.230675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571663, 46.304855, 61.206905>,  <38.714420, 46.112457, 61.192642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571663, 46.304855, 61.206905>,  <38.333736, 46.625519, 61.230675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571663, 46.304855, 61.206905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152296, 0.184970, -0.970872,
		0.789300, 0.568445, 0.232114,
		0.594821, -0.801659, -0.059425,
		38.750111, 46.064358, 61.189079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922325, 46.876560, 61.058075>,  <38.333736, 46.625519, 61.230675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922325, 46.876560, 61.058075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908878, 46.499466, 60.925339>,  <38.900810, 46.273209, 60.845695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908878, 46.499466, 60.925339>,  <38.922325, 46.876560, 61.058075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908878, 46.499466, 60.925339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293191, 0.308121, -0.905042,
		0.955463, -0.127719, 0.266043,
		-0.033617, -0.942735, -0.331844,
		38.898792, 46.216644, 60.825787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621193, 46.746571, 60.820362>,  <38.922325, 46.876560, 61.058075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621193, 46.746571, 60.820362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382931, 46.491249, 60.625320>,  <39.239971, 46.338055, 60.508297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382931, 46.491249, 60.625320>,  <39.621193, 46.746571, 60.820362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382931, 46.491249, 60.625320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424866, 0.264804, -0.865660,
		0.681675, -0.722804, 0.113461,
		-0.595658, -0.638305, -0.487605,
		39.204235, 46.299759, 60.479038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934273, 46.568542, 60.250450>,  <39.621193, 46.746571, 60.820362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934273, 46.568542, 60.250450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570099, 46.451378, 60.133621>,  <39.351593, 46.381081, 60.063522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570099, 46.451378, 60.133621>,  <39.934273, 46.568542, 60.250450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570099, 46.451378, 60.133621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253073, 0.164095, -0.953429,
		0.327200, -0.941952, -0.075270,
		-0.910436, -0.292913, -0.292075,
		39.296967, 46.363503, 60.045998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007885, 46.060375, 59.760220>,  <39.934273, 46.568542, 60.250450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007885, 46.060375, 59.760220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655964, 46.237228, 59.690399>,  <39.444813, 46.343338, 59.648506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655964, 46.237228, 59.690399>,  <40.007885, 46.060375, 59.760220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655964, 46.237228, 59.690399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179674, -0.030641, -0.983249,
		-0.440073, -0.896427, -0.052481,
		-0.879803, 0.442131, -0.174549,
		39.392021, 46.369869, 59.638035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968811, 45.941277, 59.035667>,  <40.007885, 46.060375, 59.760220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968811, 45.941277, 59.035667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658047, 46.186806, 59.091713>,  <39.471588, 46.334126, 59.125340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658047, 46.186806, 59.091713>,  <39.968811, 45.941277, 59.035667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658047, 46.186806, 59.091713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065071, 0.143062, -0.987572,
		-0.626241, -0.776371, -0.071204,
		-0.776909, 0.613825, 0.140111,
		39.424973, 46.370953, 59.133747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503036, 45.759106, 58.414322>,  <39.968811, 45.941277, 59.035667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503036, 45.759106, 58.414322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341675, 46.097488, 58.553818>,  <39.244858, 46.300518, 58.637516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341675, 46.097488, 58.553818>,  <39.503036, 45.759106, 58.414322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341675, 46.097488, 58.553818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254047, 0.262594, -0.930862,
		-0.879049, -0.464107, 0.108983,
		-0.403402, 0.845960, 0.348738,
		39.220654, 46.351276, 58.658440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889072, 45.829037, 58.036926>,  <39.503036, 45.759106, 58.414322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889072, 45.829037, 58.036926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019814, 46.184761, 58.164864>,  <39.098259, 46.398193, 58.241627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019814, 46.184761, 58.164864>,  <38.889072, 45.829037, 58.036926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019814, 46.184761, 58.164864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188028, 0.392855, -0.900172,
		-0.926182, 0.234084, 0.295620,
		0.326852, 0.889309, 0.319841,
		39.117870, 46.451553, 58.260815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478020, 46.277660, 57.683464>,  <38.889072, 45.829037, 58.036926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478020, 46.277660, 57.683464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807564, 46.472755, 57.798958>,  <39.005291, 46.589813, 57.868256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807564, 46.472755, 57.798958>,  <38.478020, 46.277660, 57.683464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807564, 46.472755, 57.798958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141839, 0.315798, -0.938165,
		-0.548765, 0.813867, 0.190991,
		0.823856, 0.487742, 0.288737,
		39.054722, 46.619080, 57.885578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422501, 46.788029, 57.216518>,  <38.478020, 46.277660, 57.683464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422501, 46.788029, 57.216518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799019, 46.831360, 57.344414>,  <39.024929, 46.857357, 57.421150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799019, 46.831360, 57.344414>,  <38.422501, 46.788029, 57.216518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799019, 46.831360, 57.344414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282735, 0.264573, -0.921988,
		-0.184471, 0.958262, 0.218413,
		0.941292, 0.108327, 0.319741,
		39.081406, 46.863857, 57.440334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579067, 47.293461, 56.820683>,  <38.422501, 46.788029, 57.216518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579067, 47.293461, 56.820683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920963, 47.121010, 56.936302>,  <39.126099, 47.017540, 57.005672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920963, 47.121010, 56.936302>,  <38.579067, 47.293461, 56.820683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920963, 47.121010, 56.936302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391204, 0.169070, -0.904641,
		0.341150, 0.886308, 0.313170,
		0.854738, -0.431132, 0.289049,
		39.177383, 46.991669, 57.023018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207191, 47.728745, 56.623035>,  <38.579067, 47.293461, 56.820683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207191, 47.728745, 56.623035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337326, 47.357254, 56.694168>,  <39.415405, 47.134357, 56.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337326, 47.357254, 56.694168>,  <39.207191, 47.728745, 56.623035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337326, 47.357254, 56.694168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203841, -0.114758, -0.972255,
		0.923368, 0.352555, 0.151978,
		0.325333, -0.928728, 0.177829,
		39.434925, 47.078636, 56.747517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838669, 47.664822, 56.291859>,  <39.207191, 47.728745, 56.623035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838669, 47.664822, 56.291859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733681, 47.286575, 56.368713>,  <39.670689, 47.059628, 56.414825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733681, 47.286575, 56.368713>,  <39.838669, 47.664822, 56.291859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733681, 47.286575, 56.368713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343823, -0.277704, -0.897032,
		0.901606, -0.169385, 0.398015,
		-0.262474, -0.945616, 0.192141,
		39.654938, 47.002892, 56.426357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475746, 47.230148, 56.288616>,  <39.838669, 47.664822, 56.291859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475746, 47.230148, 56.288616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158813, 46.998131, 56.212975>,  <39.968655, 46.858921, 56.167591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158813, 46.998131, 56.212975>,  <40.475746, 47.230148, 56.288616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158813, 46.998131, 56.212975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435756, -0.321114, -0.840834,
		0.426999, -0.748621, 0.507187,
		-0.792331, -0.580045, -0.189101,
		39.921116, 46.824116, 56.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728401, 46.566704, 56.122005>,  <40.475746, 47.230148, 56.288616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728401, 46.566704, 56.122005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357513, 46.553513, 55.972782>,  <40.134979, 46.545597, 55.883247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357513, 46.553513, 55.972782>,  <40.728401, 46.566704, 56.122005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357513, 46.553513, 55.972782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370777, -0.221157, -0.902005,
		-0.052759, -0.974681, 0.217288,
		-0.927222, -0.032976, -0.373058,
		40.079346, 46.543621, 55.860867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625549, 45.898354, 55.785324>,  <40.728401, 46.566704, 56.122005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625549, 45.898354, 55.785324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358170, 46.135109, 55.605171>,  <40.197742, 46.277161, 55.497082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358170, 46.135109, 55.605171>,  <40.625549, 45.898354, 55.785324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358170, 46.135109, 55.605171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389427, -0.237372, -0.889944,
		-0.633656, -0.770274, -0.071826,
		-0.668451, 0.591889, -0.450378,
		40.157635, 46.312675, 55.470058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533119, 45.529423, 55.184982>,  <40.625549, 45.898354, 55.785324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533119, 45.529423, 55.184982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373405, 45.888901, 55.112404>,  <40.277576, 46.104588, 55.068855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373405, 45.888901, 55.112404>,  <40.533119, 45.529423, 55.184982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373405, 45.888901, 55.112404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183666, -0.115493, -0.976180,
		-0.898242, -0.423099, -0.118945,
		-0.399283, 0.898693, -0.181450,
		40.253620, 46.158508, 55.057968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231621, 45.369835, 54.610146>,  <40.533119, 45.529423, 55.184982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231621, 45.369835, 54.610146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272865, 45.767693, 54.613094>,  <40.297611, 46.006409, 54.614864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272865, 45.767693, 54.613094>,  <40.231621, 45.369835, 54.610146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272865, 45.767693, 54.613094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356926, -0.030084, -0.933648,
		-0.928425, 0.098896, -0.358115,
		0.103107, 0.994643, 0.007368,
		40.303799, 46.066086, 54.615303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958580, 45.599403, 54.022240>,  <40.231621, 45.369835, 54.610146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958580, 45.599403, 54.022240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202290, 45.906372, 54.102097>,  <40.348515, 46.090553, 54.150009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202290, 45.906372, 54.102097>,  <39.958580, 45.599403, 54.022240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202290, 45.906372, 54.102097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386483, -0.067548, -0.919820,
		-0.692400, 0.637580, -0.337749,
		0.609273, 0.767417, 0.199643,
		40.385071, 46.136597, 54.161991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894997, 46.021080, 53.452679>,  <39.958580, 45.599403, 54.022240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894997, 46.021080, 53.452679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259384, 46.121262, 53.583767>,  <40.478016, 46.181370, 53.662422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259384, 46.121262, 53.583767>,  <39.894997, 46.021080, 53.452679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259384, 46.121262, 53.583767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338075, 0.001791, -0.941118,
		-0.236291, 0.968128, -0.083040,
		0.910973, 0.250451, 0.327723,
		40.532677, 46.196396, 53.682083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156300, 46.353584, 52.953243>,  <39.894997, 46.021080, 53.452679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156300, 46.353584, 52.953243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491791, 46.330917, 53.169880>,  <40.693085, 46.317318, 53.299862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491791, 46.330917, 53.169880>,  <40.156300, 46.353584, 52.953243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491791, 46.330917, 53.169880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542810, 0.007691, -0.839821,
		0.043425, 0.998363, 0.037210,
		0.838732, -0.056667, 0.541587,
		40.743412, 46.313919, 53.332355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670071, 46.933441, 52.772858>,  <40.156300, 46.353584, 52.953243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670071, 46.933441, 52.772858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861691, 46.605263, 52.897675>,  <40.976662, 46.408356, 52.972565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861691, 46.605263, 52.897675>,  <40.670071, 46.933441, 52.772858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861691, 46.605263, 52.897675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630420, 0.074218, -0.772698,
		0.610802, 0.566879, 0.552783,
		0.479053, -0.820451, 0.312039,
		41.005405, 46.359127, 52.991287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428017, 47.037384, 52.566101>,  <40.670071, 46.933441, 52.772858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428017, 47.037384, 52.566101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398197, 46.648109, 52.653149>,  <41.380306, 46.414547, 52.705376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398197, 46.648109, 52.653149>,  <41.428017, 47.037384, 52.566101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398197, 46.648109, 52.653149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593793, -0.218638, -0.774343,
		0.801157, 0.071494, 0.594169,
		-0.074547, -0.973183, 0.217616,
		41.375832, 46.356155, 52.718433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093731, 46.799042, 52.540592>,  <41.428017, 47.037384, 52.566101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093731, 46.799042, 52.540592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873451, 46.469765, 52.485348>,  <41.741283, 46.272198, 52.452202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873451, 46.469765, 52.485348>,  <42.093731, 46.799042, 52.540592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873451, 46.469765, 52.485348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578663, -0.257273, -0.773925,
		0.601562, -0.506120, 0.618034,
		-0.550702, -0.823197, -0.138107,
		41.708241, 46.222805, 52.443916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598564, 46.316387, 52.430977>,  <42.093731, 46.799042, 52.540592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598564, 46.316387, 52.430977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253464, 46.152245, 52.312805>,  <42.046406, 46.053761, 52.241901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253464, 46.152245, 52.312805>,  <42.598564, 46.316387, 52.430977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253464, 46.152245, 52.312805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455587, -0.377424, -0.806221,
		0.219337, -0.830155, 0.512574,
		-0.862747, -0.410357, -0.295425,
		41.994640, 46.029137, 52.224178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777512, 45.660717, 52.245094>,  <42.598564, 46.316387, 52.430977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777512, 45.660717, 52.245094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444527, 45.756744, 52.045345>,  <42.244736, 45.814362, 51.925495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444527, 45.756744, 52.045345>,  <42.777512, 45.660717, 52.245094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444527, 45.756744, 52.045345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446194, -0.243905, -0.861058,
		-0.328511, -0.939616, 0.095926,
		-0.832461, 0.240065, -0.499377,
		42.194790, 45.828766, 51.895531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772129, 45.169098, 51.705635>,  <42.777512, 45.660717, 52.245094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772129, 45.169098, 51.705635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505783, 45.425095, 51.552254>,  <42.345974, 45.578693, 51.460224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505783, 45.425095, 51.552254>,  <42.772129, 45.169098, 51.705635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505783, 45.425095, 51.552254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374057, -0.158321, -0.913792,
		-0.645525, -0.751897, -0.133972,
		-0.665867, 0.639989, -0.383452,
		42.306023, 45.617092, 51.437218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382774, 44.872108, 51.134148>,  <42.772129, 45.169098, 51.705635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382774, 44.872108, 51.134148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341587, 45.265251, 51.072968>,  <42.316875, 45.501137, 51.036259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341587, 45.265251, 51.072968>,  <42.382774, 44.872108, 51.134148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341587, 45.265251, 51.072968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363371, -0.105972, -0.925598,
		-0.925936, -0.150890, -0.346229,
		-0.102973, 0.982854, -0.152952,
		42.310696, 45.560108, 51.027081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247601, 44.944778, 50.498177>,  <42.382774, 44.872108, 51.134148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247601, 44.944778, 50.498177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361137, 45.321877, 50.568218>,  <42.429260, 45.548138, 50.610241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.361137, 45.321877, 50.568218>,  <42.247601, 44.944778, 50.498177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361137, 45.321877, 50.568218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186935, 0.124704, -0.974425,
		-0.940473, 0.309316, -0.140836,
		0.283843, 0.942747, 0.175102,
		42.446289, 45.604702, 50.620750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012039, 45.332935, 49.922287>,  <42.247601, 44.944778, 50.498177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012039, 45.332935, 49.922287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290401, 45.578545, 50.071255>,  <42.457420, 45.725910, 50.160633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290401, 45.578545, 50.071255>,  <42.012039, 45.332935, 49.922287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290401, 45.578545, 50.071255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288312, 0.236079, -0.927978,
		-0.657717, 0.753157, -0.012741,
		0.695906, 0.614020, 0.372417,
		42.499172, 45.762753, 50.182980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938278, 45.910336, 49.558441>,  <42.012039, 45.332935, 49.922287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938278, 45.910336, 49.558441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311115, 45.901665, 49.703072>,  <42.534817, 45.896461, 49.789848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311115, 45.901665, 49.703072>,  <41.938278, 45.910336, 49.558441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311115, 45.901665, 49.703072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359473, 0.178192, -0.915984,
		-0.044571, 0.983757, 0.173884,
		0.932091, -0.021680, 0.361576,
		42.590744, 45.895161, 49.811543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294422, 46.476089, 49.240063>,  <41.938278, 45.910336, 49.558441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294422, 46.476089, 49.240063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614895, 46.272690, 49.366261>,  <42.807178, 46.150650, 49.441978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614895, 46.272690, 49.366261>,  <42.294422, 46.476089, 49.240063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614895, 46.272690, 49.366261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430406, 0.123371, -0.894164,
		0.415757, 0.852180, 0.317703,
		0.801185, -0.508496, 0.315491,
		42.855251, 46.120140, 49.460907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820656, 46.890373, 49.136841>,  <42.294422, 46.476089, 49.240063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820656, 46.890373, 49.136841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971840, 46.520302, 49.150673>,  <43.062550, 46.298260, 49.158974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971840, 46.520302, 49.150673>,  <42.820656, 46.890373, 49.136841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971840, 46.520302, 49.150673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318076, 0.094682, -0.943326,
		0.869469, 0.367536, 0.330062,
		0.377956, -0.925177, 0.034581,
		43.085228, 46.242748, 49.161049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564869, 46.890888, 48.872303>,  <42.820656, 46.890373, 49.136841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564869, 46.890888, 48.872303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482471, 46.499504, 48.877781>,  <43.433033, 46.264675, 48.881069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482471, 46.499504, 48.877781>,  <43.564869, 46.890888, 48.872303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482471, 46.499504, 48.877781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360485, -0.088889, -0.928520,
		0.909735, -0.186330, 0.371030,
		-0.205992, -0.978458, 0.013696,
		43.420673, 46.205967, 48.881889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238003, 46.520031, 48.726486>,  <43.564869, 46.890888, 48.872303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238003, 46.520031, 48.726486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930462, 46.296204, 48.602711>,  <43.745937, 46.161907, 48.528446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930462, 46.296204, 48.602711>,  <44.238003, 46.520031, 48.726486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930462, 46.296204, 48.602711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389545, -0.026135, -0.920636,
		0.507075, -0.828370, 0.238072,
		-0.768850, -0.559571, -0.309435,
		43.699806, 46.128334, 48.509880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585182, 45.864666, 48.408352>,  <44.238003, 46.520031, 48.726486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585182, 45.864666, 48.408352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211868, 45.926720, 48.278786>,  <43.987881, 45.963951, 48.201046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211868, 45.926720, 48.278786>,  <44.585182, 45.864666, 48.408352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211868, 45.926720, 48.278786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320428, -0.047696, -0.946072,
		-0.162217, -0.986741, -0.005196,
		-0.933280, 0.155134, -0.323916,
		43.931885, 45.973259, 48.181610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537090, 45.455334, 47.802864>,  <44.585182, 45.864666, 48.408352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537090, 45.455334, 47.802864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220680, 45.695892, 47.757965>,  <44.030834, 45.840229, 47.731026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220680, 45.695892, 47.757965>,  <44.537090, 45.455334, 47.802864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220680, 45.695892, 47.757965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086055, -0.072281, -0.993665,
		-0.605705, -0.795671, 0.005422,
		-0.791022, 0.601401, -0.112252,
		43.983372, 45.876312, 47.724289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259377, 45.177261, 47.203094>,  <44.537090, 45.455334, 47.802864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259377, 45.177261, 47.203094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080933, 45.530182, 47.263130>,  <43.973866, 45.741936, 47.299152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080933, 45.530182, 47.263130>,  <44.259377, 45.177261, 47.203094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080933, 45.530182, 47.263130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018340, 0.176678, -0.984098,
		-0.894791, -0.436261, -0.094999,
		-0.446108, 0.882304, 0.150089,
		43.947102, 45.794872, 47.308155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739983, 45.196365, 46.740986>,  <44.259377, 45.177261, 47.203094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739983, 45.196365, 46.740986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843468, 45.569557, 46.841076>,  <43.905560, 45.793472, 46.901131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843468, 45.569557, 46.841076>,  <43.739983, 45.196365, 46.740986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843468, 45.569557, 46.841076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018736, 0.254152, -0.966983,
		-0.965772, 0.254863, 0.048273,
		0.258717, 0.932980, 0.250228,
		43.921082, 45.849453, 46.916145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332043, 45.600189, 46.375237>,  <43.739983, 45.196365, 46.740986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332043, 45.600189, 46.375237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658520, 45.820023, 46.446560>,  <43.854404, 45.951923, 46.489353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658520, 45.820023, 46.446560>,  <43.332043, 45.600189, 46.375237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658520, 45.820023, 46.446560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076375, 0.203284, -0.976137,
		-0.572716, 0.810330, 0.123944,
		0.816188, 0.549583, 0.178312,
		43.903378, 45.984898, 46.500053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208450, 46.173435, 45.941509>,  <43.332043, 45.600189, 46.375237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208450, 46.173435, 45.941509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595055, 46.181313, 46.043858>,  <43.827019, 46.186039, 46.105267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595055, 46.181313, 46.043858>,  <43.208450, 46.173435, 45.941509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595055, 46.181313, 46.043858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239787, 0.285890, -0.927777,
		-0.091423, 0.958060, 0.271593,
		0.966511, 0.019696, 0.255867,
		43.885010, 46.187222, 46.120617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634239, 46.461514, 46.358410>,  <43.208450, 46.173435, 45.941509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634239, 46.461514, 46.358410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430035, 46.335648, 46.038319>,  <42.307510, 46.260128, 45.846264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430035, 46.335648, 46.038319>,  <42.634239, 46.461514, 46.358410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430035, 46.335648, 46.038319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818201, -0.108423, 0.564616,
		-0.264429, 0.942989, -0.202109,
		-0.510513, -0.314667, -0.800225,
		42.276882, 46.241249, 45.798252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165031, 46.846737, 46.479664>,  <42.634239, 46.461514, 46.358410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165031, 46.846737, 46.479664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045406, 46.555809, 46.232578>,  <41.973633, 46.381252, 46.084328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045406, 46.555809, 46.232578>,  <42.165031, 46.846737, 46.479664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045406, 46.555809, 46.232578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902083, 0.004413, 0.431541,
		-0.311143, 0.686284, -0.657422,
		-0.299061, -0.727320, -0.617712,
		41.955688, 46.337612, 46.047264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484882, 47.067268, 46.187634>,  <42.165031, 46.846737, 46.479664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484882, 47.067268, 46.187634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554447, 46.673393, 46.192513>,  <41.596184, 46.437069, 46.195438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554447, 46.673393, 46.192513>,  <41.484882, 47.067268, 46.187634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554447, 46.673393, 46.192513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751418, -0.124688, 0.647939,
		-0.636496, -0.121845, -0.761595,
		0.173910, -0.984686, 0.012193,
		41.606621, 46.377987, 46.196171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813332, 46.811562, 46.045940>,  <41.484882, 47.067268, 46.187634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813332, 46.811562, 46.045940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016514, 46.490753, 46.171635>,  <41.138424, 46.298267, 46.247051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016514, 46.490753, 46.171635>,  <40.813332, 46.811562, 46.045940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016514, 46.490753, 46.171635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788928, -0.286719, 0.543493,
		-0.345794, -0.523981, -0.778377,
		0.507956, -0.802020, 0.314238,
		41.168900, 46.250149, 46.265907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339241, 46.212921, 45.972256>,  <40.813332, 46.811562, 46.045940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339241, 46.212921, 45.972256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619286, 46.107574, 46.237732>,  <40.787312, 46.044365, 46.397018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619286, 46.107574, 46.237732>,  <40.339241, 46.212921, 45.972256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619286, 46.107574, 46.237732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710304, -0.351765, 0.609696,
		0.072888, -0.898275, -0.433346,
		0.700111, -0.263368, 0.663688,
		40.829319, 46.028564, 46.436840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119282, 45.674454, 46.379715>,  <40.339241, 46.212921, 45.972256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119282, 45.674454, 46.379715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438335, 45.771172, 46.600735>,  <40.629768, 45.829201, 46.733349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438335, 45.771172, 46.600735>,  <40.119282, 45.674454, 46.379715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438335, 45.771172, 46.600735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492248, -0.268410, 0.828039,
		0.348526, -0.932465, -0.095070,
		0.797635, 0.241796, 0.552552,
		40.677628, 45.843712, 46.766499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182278, 45.143654, 46.890690>,  <40.119282, 45.674454, 46.379715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182278, 45.143654, 46.890690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379456, 45.458931, 47.038074>,  <40.497761, 45.648098, 47.126503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379456, 45.458931, 47.038074>,  <40.182278, 45.143654, 46.890690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379456, 45.458931, 47.038074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341672, -0.214105, 0.915106,
		0.800169, -0.576985, 0.163763,
		0.492940, 0.788193, 0.368460,
		40.527336, 45.695389, 47.148613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631695, 44.900387, 47.383053>,  <40.182278, 45.143654, 46.890690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631695, 44.900387, 47.383053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552708, 45.285049, 47.459187>,  <40.505314, 45.515846, 47.504868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552708, 45.285049, 47.459187>,  <40.631695, 44.900387, 47.383053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552708, 45.285049, 47.459187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171520, -0.225057, 0.959130,
		0.965188, 0.156750, 0.209384,
		-0.197467, 0.961654, 0.190337,
		40.493469, 45.573547, 47.516289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959175, 44.945530, 47.984642>,  <40.631695, 44.900387, 47.383053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959175, 44.945530, 47.984642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736847, 45.277809, 47.997314>,  <40.603451, 45.477177, 48.004917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736847, 45.277809, 47.997314>,  <40.959175, 44.945530, 47.984642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736847, 45.277809, 47.997314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140479, -0.131426, 0.981322,
		0.819344, 0.540991, 0.189745,
		-0.555824, 0.830696, 0.031686,
		40.570099, 45.527020, 48.006821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045227, 45.125847, 48.640411>,  <40.959175, 44.945530, 47.984642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045227, 45.125847, 48.640411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726051, 45.323242, 48.501984>,  <40.534546, 45.441681, 48.418926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726051, 45.323242, 48.501984>,  <41.045227, 45.125847, 48.640411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726051, 45.323242, 48.501984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361258, 0.068044, 0.929980,
		0.482486, 0.867085, 0.123984,
		-0.797935, 0.493492, -0.346071,
		40.486671, 45.471291, 48.398163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886227, 45.613197, 49.194065>,  <41.045227, 45.125847, 48.640411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886227, 45.613197, 49.194065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547791, 45.591843, 48.981918>,  <40.344730, 45.579029, 48.854630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547791, 45.591843, 48.981918>,  <40.886227, 45.613197, 49.194065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547791, 45.591843, 48.981918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531458, 0.161253, 0.831595,
		0.041129, 0.985468, -0.164806,
		-0.846086, -0.053385, -0.530367,
		40.293964, 45.575829, 48.822807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463024, 46.165291, 49.429592>,  <40.886227, 45.613197, 49.194065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463024, 46.165291, 49.429592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208027, 45.909927, 49.257057>,  <40.055031, 45.756710, 49.153538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208027, 45.909927, 49.257057>,  <40.463024, 46.165291, 49.429592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208027, 45.909927, 49.257057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661169, 0.165874, 0.731670,
		-0.395554, 0.751615, -0.527836,
		-0.637489, -0.638404, -0.431333,
		40.016781, 45.718407, 49.127659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940304, 46.543877, 49.517235>,  <40.463024, 46.165291, 49.429592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940304, 46.543877, 49.517235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804268, 46.178474, 49.427933>,  <39.722645, 45.959232, 49.374352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804268, 46.178474, 49.427933>,  <39.940304, 46.543877, 49.517235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804268, 46.178474, 49.427933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747958, 0.118864, 0.653016,
		-0.569997, 0.389071, -0.723690,
		-0.340090, -0.913507, -0.223256,
		39.702240, 45.904423, 49.360954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245499, 46.572044, 49.318798>,  <39.940304, 46.543877, 49.517235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245499, 46.572044, 49.318798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314331, 46.205521, 49.463440>,  <39.355629, 45.985607, 49.550224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314331, 46.205521, 49.463440>,  <39.245499, 46.572044, 49.318798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314331, 46.205521, 49.463440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668327, 0.161082, 0.726217,
		-0.723690, -0.366639, -0.584678,
		0.172078, -0.916312, 0.361608,
		39.365955, 45.930626, 49.571922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576115, 46.275311, 49.554352>,  <39.245499, 46.572044, 49.318798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576115, 46.275311, 49.554352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853348, 46.066368, 49.753059>,  <39.019688, 45.941002, 49.872284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853348, 46.066368, 49.753059>,  <38.576115, 46.275311, 49.554352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853348, 46.066368, 49.753059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482269, 0.176199, 0.858120,
		-0.535775, -0.834325, -0.129796,
		0.693082, -0.522356, 0.496772,
		39.061272, 45.909660, 49.902092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163898, 45.785904, 50.056919>,  <38.576115, 46.275311, 49.554352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163898, 45.785904, 50.056919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535927, 45.773575, 50.203354>,  <38.759144, 45.766178, 50.291214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535927, 45.773575, 50.203354>,  <38.163898, 45.785904, 50.056919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535927, 45.773575, 50.203354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348967, 0.237404, 0.906566,
		-0.114852, -0.970922, 0.210047,
		0.930071, -0.030821, 0.366086,
		38.814949, 45.764328, 50.313179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021587, 45.480099, 50.698143>,  <38.163898, 45.785904, 50.056919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021587, 45.480099, 50.698143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379028, 45.652351, 50.748787>,  <38.593494, 45.755703, 50.779175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379028, 45.652351, 50.748787>,  <38.021587, 45.480099, 50.698143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379028, 45.652351, 50.748787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239697, 0.219331, 0.945748,
		0.379500, -0.875471, 0.299216,
		0.893602, 0.430632, 0.126612,
		38.647110, 45.781540, 50.786770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294353, 45.141495, 51.327724>,  <38.021587, 45.480099, 50.698143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294353, 45.141495, 51.327724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485085, 45.488327, 51.270020>,  <38.599525, 45.696426, 51.235397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485085, 45.488327, 51.270020>,  <38.294353, 45.141495, 51.327724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485085, 45.488327, 51.270020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179990, 0.256961, 0.949513,
		0.860370, -0.426790, 0.278592,
		0.476830, 0.867077, -0.144264,
		38.628132, 45.748451, 51.226742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726192, 45.248150, 52.041294>,  <38.294353, 45.141495, 51.327724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726192, 45.248150, 52.041294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691711, 45.605667, 51.865246>,  <38.671024, 45.820175, 51.759617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691711, 45.605667, 51.865246>,  <38.726192, 45.248150, 52.041294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691711, 45.605667, 51.865246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151113, 0.424928, 0.892525,
		0.984751, 0.143446, 0.098434,
		-0.086201, 0.893790, -0.440124,
		38.665852, 45.873802, 51.733208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186008, 45.729473, 52.442505>,  <38.726192, 45.248150, 52.041294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186008, 45.729473, 52.442505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917057, 45.945427, 52.239952>,  <38.755684, 46.075001, 52.118420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917057, 45.945427, 52.239952>,  <39.186008, 45.729473, 52.442505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917057, 45.945427, 52.239952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222855, 0.504723, 0.834021,
		0.705861, 0.673630, -0.219049,
		-0.672380, 0.539887, -0.506386,
		38.715343, 46.107391, 52.088036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319538, 46.427879, 52.567120>,  <39.186008, 45.729473, 52.442505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319538, 46.427879, 52.567120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931870, 46.395668, 52.473980>,  <38.699268, 46.376343, 52.418095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931870, 46.395668, 52.473980>,  <39.319538, 46.427879, 52.567120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931870, 46.395668, 52.473980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243521, 0.456737, 0.855622,
		0.037453, 0.885950, -0.462267,
		-0.969172, -0.080526, -0.232853,
		38.641117, 46.371510, 52.404125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025738, 47.095596, 52.758076>,  <39.319538, 46.427879, 52.567120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025738, 47.095596, 52.758076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706985, 46.858345, 52.712158>,  <38.515732, 46.715996, 52.684608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706985, 46.858345, 52.712158>,  <39.025738, 47.095596, 52.758076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706985, 46.858345, 52.712158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334138, 0.274408, 0.901694,
		-0.503317, 0.756904, -0.416857,
		-0.796884, -0.593125, -0.114796,
		38.467918, 46.680408, 52.677719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455700, 47.482258, 53.029213>,  <39.025738, 47.095596, 52.758076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455700, 47.482258, 53.029213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350365, 47.096535, 53.040237>,  <38.287163, 46.865101, 53.046852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350365, 47.096535, 53.040237>,  <38.455700, 47.482258, 53.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350365, 47.096535, 53.040237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373125, 0.128159, 0.918887,
		-0.889625, 0.231691, -0.393557,
		-0.263335, -0.964310, 0.027564,
		38.271362, 46.807243, 53.048508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922676, 47.541481, 53.440613>,  <38.455700, 47.482258, 53.029213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922676, 47.541481, 53.440613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977470, 47.145584, 53.424366>,  <38.010345, 46.908047, 53.414616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977470, 47.145584, 53.424366>,  <37.922676, 47.541481, 53.440613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977470, 47.145584, 53.424366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385669, -0.091059, 0.918133,
		-0.912411, -0.110106, -0.394186,
		0.136986, -0.989740, -0.040619,
		38.018566, 46.848663, 53.412182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320908, 47.272053, 53.710285>,  <37.922676, 47.541481, 53.440613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320908, 47.272053, 53.710285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599213, 46.986076, 53.737930>,  <37.766197, 46.814491, 53.754517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599213, 46.986076, 53.737930>,  <37.320908, 47.272053, 53.710285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599213, 46.986076, 53.737930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242015, -0.142751, 0.959714,
		-0.676273, -0.684457, -0.272347,
		0.695761, -0.714941, 0.069110,
		37.807941, 46.771595, 53.758663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977394, 46.643963, 53.908367>,  <37.320908, 47.272053, 53.710285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977394, 46.643963, 53.908367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359364, 46.589005, 54.013630>,  <37.588543, 46.556030, 54.076786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359364, 46.589005, 54.013630>,  <36.977394, 46.643963, 53.908367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359364, 46.589005, 54.013630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296864, -0.442488, 0.846213,
		0.000174, -0.886186, -0.463329,
		0.954920, -0.137399, 0.263154,
		37.645840, 46.547787, 54.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082657, 45.930511, 54.009323>,  <36.977394, 46.643963, 53.908367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082657, 45.930511, 54.009323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351799, 46.134171, 54.223999>,  <37.513287, 46.256367, 54.352802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351799, 46.134171, 54.223999>,  <37.082657, 45.930511, 54.009323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351799, 46.134171, 54.223999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330789, -0.441835, 0.833883,
		0.661696, -0.738614, -0.128871,
		0.672857, 0.509148, 0.536686,
		37.553658, 46.286915, 54.385006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182201, 45.502823, 54.529724>,  <37.082657, 45.930511, 54.009323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182201, 45.502823, 54.529724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354073, 45.833061, 54.676018>,  <37.457195, 46.031204, 54.763794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354073, 45.833061, 54.676018>,  <37.182201, 45.502823, 54.529724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354073, 45.833061, 54.676018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040150, -0.387164, 0.921136,
		0.902090, -0.410474, -0.133207,
		0.429676, 0.825599, 0.365737,
		37.482975, 46.080742, 54.785740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644287, 45.294163, 55.055058>,  <37.182201, 45.502823, 54.529724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644287, 45.294163, 55.055058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569550, 45.681084, 55.123657>,  <37.524708, 45.913239, 55.164818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569550, 45.681084, 55.123657>,  <37.644287, 45.294163, 55.055058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569550, 45.681084, 55.123657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417892, -0.236250, 0.877241,
		0.889076, 0.092238, 0.448371,
		-0.186843, 0.967305, 0.171499,
		37.513496, 45.971275, 55.175106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979416, 45.364559, 55.689999>,  <37.644287, 45.294163, 55.055058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979416, 45.364559, 55.689999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705299, 45.643303, 55.605377>,  <37.540829, 45.810551, 55.554604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705299, 45.643303, 55.605377>,  <37.979416, 45.364559, 55.689999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705299, 45.643303, 55.605377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449495, -0.176182, 0.875736,
		0.572998, 0.695227, 0.433973,
		-0.685294, 0.696864, -0.211549,
		37.499710, 45.852364, 55.541912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963043, 45.848701, 56.251431>,  <37.979416, 45.364559, 55.689999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963043, 45.848701, 56.251431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604156, 45.890205, 56.079742>,  <37.388824, 45.915108, 55.976730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604156, 45.890205, 56.079742>,  <37.963043, 45.848701, 56.251431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604156, 45.890205, 56.079742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441209, -0.170431, 0.881072,
		0.018267, 0.979891, 0.198694,
		-0.897218, 0.103760, -0.429224,
		37.334991, 45.921333, 55.950974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676838, 46.259598, 56.729790>,  <37.963043, 45.848701, 56.251431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676838, 46.259598, 56.729790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391987, 46.082214, 56.512085>,  <37.221077, 45.975784, 56.381462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391987, 46.082214, 56.512085>,  <37.676838, 46.259598, 56.729790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391987, 46.082214, 56.512085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494708, -0.233097, 0.837216,
		-0.498137, 0.865453, -0.053389,
		-0.712126, -0.443460, -0.544261,
		37.178349, 45.949177, 56.348808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072582, 46.465084, 57.083874>,  <37.676838, 46.259598, 56.729790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072582, 46.465084, 57.083874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978798, 46.151077, 56.854519>,  <36.922527, 45.962673, 56.716904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978798, 46.151077, 56.854519>,  <37.072582, 46.465084, 57.083874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978798, 46.151077, 56.854519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408670, -0.455586, 0.790841,
		-0.882052, 0.419751, -0.213994,
		-0.234464, -0.785016, -0.573390,
		36.908459, 45.915573, 56.682503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420567, 46.236092, 57.331776>,  <37.072582, 46.465084, 57.083874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420567, 46.236092, 57.331776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540924, 45.917709, 57.121662>,  <36.613140, 45.726681, 56.995594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540924, 45.917709, 57.121662>,  <36.420567, 46.236092, 57.331776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540924, 45.917709, 57.121662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199791, -0.591198, 0.781389,
		-0.932494, -0.130170, -0.336913,
		0.300895, -0.795953, -0.525282,
		36.631191, 45.678925, 56.964077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917194, 45.754433, 57.488415>,  <36.420567, 46.236092, 57.331776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917194, 45.754433, 57.488415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258438, 45.576920, 57.378685>,  <36.463184, 45.470409, 57.312847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258438, 45.576920, 57.378685>,  <35.917194, 45.754433, 57.488415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258438, 45.576920, 57.378685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154904, -0.717543, 0.679070,
		-0.498203, -0.536828, -0.680888,
		0.853111, -0.443787, -0.274326,
		36.514370, 45.443783, 57.296387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679287, 45.045578, 57.338799>,  <35.917194, 45.754433, 57.488415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679287, 45.045578, 57.338799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070320, 45.038956, 57.422760>,  <36.304939, 45.034981, 57.473137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070320, 45.038956, 57.422760>,  <35.679287, 45.045578, 57.338799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070320, 45.038956, 57.422760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119296, -0.865013, 0.487361,
		0.173497, -0.501476, -0.847597,
		0.977583, -0.016559, 0.209901,
		36.363594, 45.033989, 57.485729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771042, 44.370338, 57.389706>,  <35.679287, 45.045578, 57.338799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771042, 44.370338, 57.389706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096107, 44.520065, 57.568352>,  <36.291145, 44.609901, 57.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096107, 44.520065, 57.568352>,  <35.771042, 44.370338, 57.389706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096107, 44.520065, 57.568352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049700, -0.808141, 0.586889,
		0.580610, -0.454747, -0.675350,
		0.812664, 0.374318, 0.446614,
		36.339905, 44.632362, 57.702335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250359, 43.817410, 57.358337>,  <35.771042, 44.370338, 57.389706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250359, 43.817410, 57.358337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349243, 44.087883, 57.635944>,  <36.408573, 44.250168, 57.802509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349243, 44.087883, 57.635944>,  <36.250359, 43.817410, 57.358337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349243, 44.087883, 57.635944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096109, -0.729828, 0.676841,
		0.964184, -0.100620, -0.245408,
		0.247210, 0.676185, 0.694018,
		36.423405, 44.290737, 57.844151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977924, 43.243469, 57.677643>,  <36.250359, 43.817410, 57.358337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977924, 43.243469, 57.677643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913864, 42.849632, 57.705719>,  <35.875427, 42.613331, 57.722565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913864, 42.849632, 57.705719>,  <35.977924, 43.243469, 57.677643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913864, 42.849632, 57.705719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719180, -0.165092, -0.674926,
		0.676116, -0.057608, 0.734540,
		-0.160148, -0.984594, 0.070191,
		35.865818, 42.554253, 57.726776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676937, 42.882500, 57.630383>,  <35.977924, 43.243469, 57.677643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676937, 42.882500, 57.630383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385452, 42.627014, 57.531570>,  <36.210560, 42.473724, 57.472282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385452, 42.627014, 57.531570>,  <36.676937, 42.882500, 57.630383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385452, 42.627014, 57.531570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526113, -0.291234, -0.798992,
		0.438383, -0.712201, 0.548261,
		-0.728715, -0.638712, -0.247026,
		36.166840, 42.435402, 57.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962578, 42.290070, 57.344906>,  <36.676937, 42.882500, 57.630383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962578, 42.290070, 57.344906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594627, 42.293152, 57.188049>,  <36.373859, 42.295002, 57.093933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594627, 42.293152, 57.188049>,  <36.962578, 42.290070, 57.344906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594627, 42.293152, 57.188049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376963, -0.258779, -0.889344,
		-0.108331, -0.965906, 0.235139,
		-0.919872, 0.007705, -0.392144,
		36.318665, 42.295464, 57.070408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962791, 41.738052, 56.922199>,  <36.962578, 42.290070, 57.344906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962791, 41.738052, 56.922199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650642, 41.951965, 56.792564>,  <36.463352, 42.080315, 56.714783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650642, 41.951965, 56.792564>,  <36.962791, 41.738052, 56.922199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650642, 41.951965, 56.792564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332856, -0.083495, -0.939274,
		-0.529367, -0.840854, -0.112849,
		-0.780370, 0.534783, -0.324083,
		36.416531, 42.112400, 56.695339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804344, 41.454323, 56.197910>,  <36.962791, 41.738052, 56.922199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804344, 41.454323, 56.197910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655319, 41.823608, 56.235607>,  <36.565907, 42.045177, 56.258224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655319, 41.823608, 56.235607>,  <36.804344, 41.454323, 56.197910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655319, 41.823608, 56.235607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484437, 0.280092, -0.828776,
		-0.791530, -0.263116, -0.551589,
		-0.372560, 0.923211, 0.094238,
		36.543552, 42.100571, 56.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654728, 41.554138, 55.549648>,  <36.804344, 41.454323, 56.197910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654728, 41.554138, 55.549648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673317, 41.917191, 55.716526>,  <36.684471, 42.135021, 55.816654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673317, 41.917191, 55.716526>,  <36.654728, 41.554138, 55.549648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673317, 41.917191, 55.716526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610837, 0.304638, -0.730804,
		-0.790391, 0.288802, -0.540255,
		0.046476, 0.907628, 0.417194,
		36.687260, 42.189480, 55.841682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524464, 42.086750, 55.037376>,  <36.654728, 41.554138, 55.549648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524464, 42.086750, 55.037376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734150, 42.279732, 55.318073>,  <36.859962, 42.395519, 55.486492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734150, 42.279732, 55.318073>,  <36.524464, 42.086750, 55.037376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734150, 42.279732, 55.318073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601080, 0.374105, -0.706221,
		-0.603242, 0.792014, -0.093880,
		0.524216, 0.482452, 0.701739,
		36.891415, 42.424469, 55.528595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461185, 42.761421, 54.805500>,  <36.524464, 42.086750, 55.037376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461185, 42.761421, 54.805500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753750, 42.772263, 55.078060>,  <36.929287, 42.778767, 55.241596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753750, 42.772263, 55.078060>,  <36.461185, 42.761421, 54.805500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753750, 42.772263, 55.078060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623871, 0.376888, -0.684646,
		-0.275371, 0.925862, 0.258747,
		0.731407, 0.027107, 0.681403,
		36.973171, 42.780396, 55.282482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705624, 43.459244, 54.893341>,  <36.461185, 42.761421, 54.805500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705624, 43.459244, 54.893341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015144, 43.245209, 55.028934>,  <37.200859, 43.116787, 55.110291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015144, 43.245209, 55.028934>,  <36.705624, 43.459244, 54.893341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015144, 43.245209, 55.028934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590979, 0.417274, -0.690381,
		0.227967, 0.734550, 0.639114,
		0.773805, -0.535087, 0.338979,
		37.247288, 43.084682, 55.130627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276459, 43.901325, 54.848969>,  <36.705624, 43.459244, 54.893341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276459, 43.901325, 54.848969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449150, 43.541794, 54.879204>,  <37.552765, 43.326077, 54.897346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449150, 43.541794, 54.879204>,  <37.276459, 43.901325, 54.848969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449150, 43.541794, 54.879204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746360, 0.308920, -0.589505,
		0.506512, 0.310927, 0.804220,
		0.431732, -0.898829, 0.075592,
		37.578671, 43.272144, 54.901882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987778, 44.058983, 54.896023>,  <37.276459, 43.901325, 54.848969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987778, 44.058983, 54.896023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966179, 43.672142, 54.796585>,  <37.953220, 43.440037, 54.736923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966179, 43.672142, 54.796585>,  <37.987778, 44.058983, 54.896023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966179, 43.672142, 54.796585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832313, 0.093953, -0.546285,
		0.551669, -0.236401, 0.799860,
		-0.053994, -0.967102, -0.248591,
		37.949982, 43.382011, 54.722008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695263, 43.674564, 54.973057>,  <37.987778, 44.058983, 54.896023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695263, 43.674564, 54.973057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488380, 43.442612, 54.721272>,  <38.364250, 43.303440, 54.570198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488380, 43.442612, 54.721272>,  <38.695263, 43.674564, 54.973057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488380, 43.442612, 54.721272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771357, 0.002823, -0.636396,
		0.370813, -0.814694, 0.445837,
		-0.517210, -0.579884, -0.629467,
		38.333218, 43.268646, 54.532433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236652, 43.178970, 54.717220>,  <38.695263, 43.674564, 54.973057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236652, 43.178970, 54.717220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930634, 43.216568, 54.462391>,  <38.747021, 43.239128, 54.309494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930634, 43.216568, 54.462391>,  <39.236652, 43.178970, 54.717220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930634, 43.216568, 54.462391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634683, -0.057338, -0.770642,
		-0.108967, -0.993920, -0.015791,
		-0.765051, 0.093997, -0.637072,
		38.701118, 43.244766, 54.271271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467705, 42.730267, 54.056240>,  <39.236652, 43.178970, 54.717220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467705, 42.730267, 54.056240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182938, 42.976814, 53.921619>,  <39.012077, 43.124741, 53.840847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182938, 42.976814, 53.921619>,  <39.467705, 42.730267, 54.056240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182938, 42.976814, 53.921619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315513, -0.147424, -0.937400,
		-0.627398, -0.773536, -0.089518,
		-0.711916, 0.616367, -0.336554,
		38.969364, 43.161724, 53.820652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320244, 42.389015, 53.479607>,  <39.467705, 42.730267, 54.056240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320244, 42.389015, 53.479607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122322, 42.735405, 53.450600>,  <39.003567, 42.943237, 53.433197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122322, 42.735405, 53.450600>,  <39.320244, 42.389015, 53.479607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122322, 42.735405, 53.450600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142734, -0.163302, -0.976196,
		-0.857200, -0.472679, 0.204407,
		-0.494808, 0.865971, -0.072515,
		38.973881, 42.995197, 53.428844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883404, 42.205368, 52.996326>,  <39.320244, 42.389015, 53.479607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883404, 42.205368, 52.996326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894211, 42.605179, 52.990467>,  <38.900696, 42.845066, 52.986950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894211, 42.605179, 52.990467>,  <38.883404, 42.205368, 52.996326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894211, 42.605179, 52.990467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156429, -0.010245, -0.987636,
		-0.987320, 0.028970, 0.156079,
		0.027013, 0.999528, -0.014647,
		38.902313, 42.905037, 52.986073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342384, 42.385571, 52.530235>,  <38.883404, 42.205368, 52.996326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342384, 42.385571, 52.530235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591568, 42.697075, 52.559799>,  <38.741077, 42.883976, 52.577538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591568, 42.697075, 52.559799>,  <38.342384, 42.385571, 52.530235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591568, 42.697075, 52.559799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040674, 0.126605, -0.991119,
		-0.781198, 0.614418, 0.110544,
		0.622956, 0.778757, 0.073913,
		38.778454, 42.930702, 52.581974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108166, 42.974068, 52.217113>,  <38.342384, 42.385571, 52.530235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108166, 42.974068, 52.217113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497215, 43.066658, 52.225384>,  <38.730644, 43.122211, 52.230347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497215, 43.066658, 52.225384>,  <38.108166, 42.974068, 52.217113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497215, 43.066658, 52.225384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022878, 0.183916, -0.982676,
		-0.231265, 0.955299, 0.184176,
		0.972622, 0.231472, 0.020678,
		38.789001, 43.136101, 52.231586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155361, 43.604004, 51.875389>,  <38.108166, 42.974068, 52.217113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155361, 43.604004, 51.875389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521244, 43.442375, 51.872887>,  <38.740772, 43.345398, 51.871384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521244, 43.442375, 51.872887>,  <38.155361, 43.604004, 51.875389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521244, 43.442375, 51.872887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095887, 0.232050, -0.967966,
		0.392584, 0.884803, 0.251002,
		0.914704, -0.404076, -0.006258,
		38.795654, 43.321152, 51.871010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509068, 44.065773, 51.441669>,  <38.155361, 43.604004, 51.875389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509068, 44.065773, 51.441669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734215, 43.735275, 51.450562>,  <38.869305, 43.536976, 51.455894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734215, 43.735275, 51.450562>,  <38.509068, 44.065773, 51.441669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734215, 43.735275, 51.450562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329759, 0.199821, -0.922675,
		0.757916, 0.526675, 0.384936,
		0.562869, -0.826247, 0.022228,
		38.903076, 43.487400, 51.457230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073936, 44.251884, 51.143707>,  <38.509068, 44.065773, 51.441669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073936, 44.251884, 51.143707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058540, 43.853157, 51.115776>,  <39.049305, 43.613922, 51.099018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058540, 43.853157, 51.115776>,  <39.073936, 44.251884, 51.143707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058540, 43.853157, 51.115776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224444, 0.059467, -0.972671,
		0.973727, -0.053105, 0.221441,
		-0.038486, -0.996817, -0.069823,
		39.046993, 43.554111, 51.094830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667919, 44.010963, 50.833801>,  <39.073936, 44.251884, 51.143707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667919, 44.010963, 50.833801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384903, 43.737831, 50.760998>,  <39.215092, 43.573952, 50.717316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384903, 43.737831, 50.760998>,  <39.667919, 44.010963, 50.833801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384903, 43.737831, 50.760998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082861, 0.175612, -0.980966,
		0.701800, -0.709153, -0.067672,
		-0.707539, -0.682834, -0.182005,
		39.172642, 43.532982, 50.706398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820877, 43.699654, 50.194981>,  <39.667919, 44.010963, 50.833801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820877, 43.699654, 50.194981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451473, 43.554192, 50.243782>,  <39.229832, 43.466915, 50.273064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451473, 43.554192, 50.243782>,  <39.820877, 43.699654, 50.194981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451473, 43.554192, 50.243782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097520, -0.085013, -0.991596,
		0.370966, -0.927648, 0.043048,
		-0.923512, -0.363651, 0.122001,
		39.174419, 43.445095, 50.280384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742748, 43.253006, 49.600479>,  <39.820877, 43.699654, 50.194981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742748, 43.253006, 49.600479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378510, 43.341629, 49.740036>,  <39.159966, 43.394802, 49.823769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378510, 43.341629, 49.740036>,  <39.742748, 43.253006, 49.600479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378510, 43.341629, 49.740036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357751, 0.000155, -0.933817,
		-0.206948, -0.975147, 0.079121,
		-0.910597, 0.221558, 0.348892,
		39.105331, 43.408096, 49.844704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376820, 42.834373, 49.245983>,  <39.742748, 43.253006, 49.600479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376820, 42.834373, 49.245983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125172, 43.123062, 49.361450>,  <38.974182, 43.296276, 49.430729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125172, 43.123062, 49.361450>,  <39.376820, 42.834373, 49.245983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125172, 43.123062, 49.361450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400518, 0.017291, -0.916126,
		-0.666179, -0.691968, 0.278184,
		-0.629119, 0.721721, 0.288665,
		38.936436, 43.339577, 49.448051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592567, 42.658447, 49.125763>,  <39.376820, 42.834373, 49.245983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592567, 42.658447, 49.125763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639923, 43.055481, 49.136826>,  <38.668339, 43.293701, 49.143463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639923, 43.055481, 49.136826>,  <38.592567, 42.658447, 49.125763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639923, 43.055481, 49.136826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193197, 0.050342, -0.979868,
		-0.973991, 0.110667, 0.197724,
		0.118393, 0.992581, 0.027653,
		38.675442, 43.353256, 49.145123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129486, 42.930042, 48.637913>,  <38.592567, 42.658447, 49.125763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129486, 42.930042, 48.637913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425613, 43.196915, 48.670902>,  <38.603291, 43.357037, 48.690697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425613, 43.196915, 48.670902>,  <38.129486, 42.930042, 48.637913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425613, 43.196915, 48.670902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011192, 0.134898, -0.990796,
		-0.672164, 0.732581, 0.107334,
		0.740318, 0.667179, 0.082475,
		38.647709, 43.397068, 48.695644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892948, 43.490990, 48.326015>,  <38.129486, 42.930042, 48.637913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892948, 43.490990, 48.326015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291763, 43.520416, 48.317051>,  <38.531052, 43.538071, 48.311672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291763, 43.520416, 48.317051>,  <37.892948, 43.490990, 48.326015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291763, 43.520416, 48.317051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028357, 0.080755, -0.996331,
		-0.071488, 0.994016, 0.082602,
		0.997038, 0.073568, -0.022414,
		38.590874, 43.542488, 48.310326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026600, 44.160774, 47.988365>,  <37.892948, 43.490990, 48.326015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026600, 44.160774, 47.988365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333862, 43.908585, 47.943771>,  <38.518219, 43.757271, 47.917015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333862, 43.908585, 47.943771>,  <38.026600, 44.160774, 47.988365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333862, 43.908585, 47.943771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100127, 0.053686, -0.993525,
		0.632380, 0.774349, -0.021888,
		0.768160, -0.630477, -0.111483,
		38.564312, 43.719440, 47.910328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258091, 44.348137, 47.280579>,  <38.026600, 44.160774, 47.988365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258091, 44.348137, 47.280579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475384, 44.022247, 47.361687>,  <38.605759, 43.826714, 47.410351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475384, 44.022247, 47.361687>,  <38.258091, 44.348137, 47.280579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475384, 44.022247, 47.361687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155628, -0.139610, -0.977900,
		0.825032, 0.562784, 0.050953,
		0.543233, -0.814728, 0.202768,
		38.638355, 43.777828, 47.422516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804852, 44.447388, 46.878731>,  <38.258091, 44.348137, 47.280579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804852, 44.447388, 46.878731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775562, 44.058334, 46.966930>,  <38.757988, 43.824902, 47.019852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775562, 44.058334, 46.966930>,  <38.804852, 44.447388, 46.878731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775562, 44.058334, 46.966930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182679, -0.230436, -0.955787,
		0.980442, -0.029703, 0.194552,
		-0.073221, -0.972634, 0.220503,
		38.753597, 43.766544, 47.033081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391151, 44.080009, 46.566658>,  <38.804852, 44.447388, 46.878731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391151, 44.080009, 46.566658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130608, 43.783844, 46.633011>,  <38.974281, 43.606144, 46.672821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130608, 43.783844, 46.633011>,  <39.391151, 44.080009, 46.566658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130608, 43.783844, 46.633011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019170, -0.234604, -0.971902,
		0.758528, -0.629876, 0.167005,
		-0.651358, -0.740417, 0.165879,
		38.935200, 43.561718, 46.682774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617596, 43.492100, 46.162304>,  <39.391151, 44.080009, 46.566658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617596, 43.492100, 46.162304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236202, 43.417740, 46.257225>,  <39.007366, 43.373123, 46.314178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236202, 43.417740, 46.257225>,  <39.617596, 43.492100, 46.162304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236202, 43.417740, 46.257225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166789, -0.330397, -0.928988,
		0.251102, -0.925354, 0.284022,
		-0.953483, -0.185899, 0.237302,
		38.950157, 43.361969, 46.328415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523975, 42.733829, 45.911598>,  <39.617596, 43.492100, 46.162304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523975, 42.733829, 45.911598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163551, 42.902184, 45.953434>,  <38.947296, 43.003197, 45.978535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163551, 42.902184, 45.953434>,  <39.523975, 42.733829, 45.911598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163551, 42.902184, 45.953434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337167, -0.528167, -0.779332,
		-0.272771, -0.737491, 0.617821,
		-0.901063, 0.420888, 0.104589,
		38.893234, 43.028450, 45.984810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989475, 42.132633, 45.902283>,  <39.523975, 42.733829, 45.911598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989475, 42.132633, 45.902283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803795, 42.473518, 45.805737>,  <38.692387, 42.678051, 45.747810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803795, 42.473518, 45.805737>,  <38.989475, 42.132633, 45.902283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803795, 42.473518, 45.805737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357183, -0.429470, -0.829443,
		-0.810520, -0.298814, 0.503754,
		-0.464196, 0.852213, -0.241363,
		38.664536, 42.729183, 45.733326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360249, 41.915234, 45.736965>,  <38.989475, 42.132633, 45.902283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360249, 41.915234, 45.736965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421040, 42.262657, 45.548279>,  <38.457512, 42.471111, 45.435066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421040, 42.262657, 45.548279>,  <38.360249, 41.915234, 45.736965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421040, 42.262657, 45.548279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262962, -0.424526, -0.866388,
		-0.952762, 0.255712, 0.163880,
		0.151975, 0.868556, -0.471715,
		38.466633, 42.523224, 45.406765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811718, 41.924389, 45.166691>,  <38.360249, 41.915234, 45.736965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811718, 41.924389, 45.166691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066727, 42.210075, 45.051132>,  <38.219730, 42.381489, 44.981796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066727, 42.210075, 45.051132>,  <37.811718, 41.924389, 45.166691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066727, 42.210075, 45.051132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097597, -0.297096, -0.949847,
		-0.764229, 0.633739, -0.119699,
		0.637517, 0.714219, -0.288901,
		38.257980, 42.424339, 44.964462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563080, 42.173927, 44.591618>,  <37.811718, 41.924389, 45.166691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563080, 42.173927, 44.591618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945431, 42.290070, 44.573803>,  <38.174843, 42.359756, 44.563114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945431, 42.290070, 44.573803>,  <37.563080, 42.173927, 44.591618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945431, 42.290070, 44.573803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030892, -0.250143, -0.967716,
		-0.292124, 0.923646, -0.248077,
		0.955882, 0.290356, -0.044540,
		38.232197, 42.377178, 44.560440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676491, 42.612774, 43.905212>,  <37.563080, 42.173927, 44.591618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676491, 42.612774, 43.905212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035297, 42.481316, 44.023438>,  <38.250580, 42.402439, 44.094372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035297, 42.481316, 44.023438>,  <37.676491, 42.612774, 43.905212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035297, 42.481316, 44.023438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261093, -0.145570, -0.954275,
		0.356645, 0.933167, -0.044770,
		0.897014, -0.328648, 0.295560,
		38.304401, 42.382721, 44.112106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117466, 42.822472, 43.383648>,  <37.676491, 42.612774, 43.905212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117466, 42.822472, 43.383648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281639, 42.502991, 43.559654>,  <38.380142, 42.311302, 43.665260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281639, 42.502991, 43.559654>,  <38.117466, 42.822472, 43.383648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281639, 42.502991, 43.559654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304835, -0.334601, -0.891694,
		0.859432, 0.500111, 0.106144,
		0.410430, -0.798706, 0.440018,
		38.404770, 42.263378, 43.691658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.448380, 39.363552, 53.264874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.705536, 39.662964, 53.329857>,  <40.859829, 39.842613, 53.368847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.705536, 39.662964, 53.329857>,  <40.448380, 39.363552, 53.264874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705536, 39.662964, 53.329857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203685, 0.037389, -0.978322,
		-0.738379, 0.662044, -0.128428,
		0.642891, 0.748532, 0.162456,
		40.898403, 39.887524, 53.378593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316170, 39.970539, 52.823532>,  <40.448380, 39.363552, 53.264874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316170, 39.970539, 52.823532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.707588, 40.002525, 52.899490>,  <40.942440, 40.021717, 52.945065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.707588, 40.002525, 52.899490>,  <40.316170, 39.970539, 52.823532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707588, 40.002525, 52.899490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160640, 0.281067, -0.946148,
		-0.129035, 0.956351, 0.262190,
		0.978542, 0.079968, 0.189895,
		41.001152, 40.026516, 52.956459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516640, 40.548584, 52.400284>,  <40.316170, 39.970539, 52.823532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516640, 40.548584, 52.400284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.879276, 40.414803, 52.503223>,  <41.096859, 40.334534, 52.564987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.879276, 40.414803, 52.503223>,  <40.516640, 40.548584, 52.400284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879276, 40.414803, 52.503223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382225, 0.392302, -0.836662,
		0.178862, 0.856879, 0.483494,
		0.906594, -0.334451, 0.257353,
		41.151253, 40.314468, 52.580429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893440, 41.031826, 52.165627>,  <40.516640, 40.548584, 52.400284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893440, 41.031826, 52.165627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.123444, 40.706566, 52.201744>,  <41.261444, 40.511410, 52.223415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.123444, 40.706566, 52.201744>,  <40.893440, 41.031826, 52.165627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123444, 40.706566, 52.201744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487325, 0.251760, -0.836140,
		0.657176, 0.524788, 0.541033,
		0.575007, -0.813151, 0.090292,
		41.295944, 40.462620, 52.228832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579800, 41.318230, 51.963078>,  <40.893440, 41.031826, 52.165627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579800, 41.318230, 51.963078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.579865, 40.921135, 51.914963>,  <41.579903, 40.682877, 51.886093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.579865, 40.921135, 51.914963>,  <41.579800, 41.318230, 51.963078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579865, 40.921135, 51.914963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497542, 0.104419, -0.861132,
		0.867440, -0.059711, 0.493946,
		0.000158, -0.992739, -0.120285,
		41.579910, 40.623314, 51.878876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236721, 41.043327, 51.732941>,  <41.579800, 41.318230, 51.963078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236721, 41.043327, 51.732941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.014969, 40.723969, 51.638947>,  <41.881916, 40.532352, 51.582550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.014969, 40.723969, 51.638947>,  <42.236721, 41.043327, 51.732941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014969, 40.723969, 51.638947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407516, -0.014225, -0.913087,
		0.725668, -0.601957, 0.333247,
		-0.554379, -0.798402, -0.234985,
		41.848656, 40.484447, 51.568451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726257, 40.552742, 51.427330>,  <42.236721, 41.043327, 51.732941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726257, 40.552742, 51.427330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.368439, 40.459824, 51.274582>,  <42.153748, 40.404072, 51.182934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.368439, 40.459824, 51.274582>,  <42.726257, 40.552742, 51.427330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368439, 40.459824, 51.274582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403710, -0.053193, -0.913339,
		0.191855, -0.971189, 0.141366,
		-0.894544, -0.232300, -0.381874,
		42.100075, 40.390133, 51.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819630, 40.022835, 50.909702>,  <42.726257, 40.552742, 51.427330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819630, 40.022835, 50.909702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.448402, 40.147583, 50.828297>,  <42.225666, 40.222431, 50.779453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.448402, 40.147583, 50.828297>,  <42.819630, 40.022835, 50.909702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448402, 40.147583, 50.828297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242248, 0.090528, -0.965982,
		-0.282842, -0.945801, -0.159567,
		-0.928072, 0.311875, -0.203513,
		42.169979, 40.241146, 50.767242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543503, 39.679203, 50.234665>,  <42.819630, 40.022835, 50.909702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543503, 39.679203, 50.234665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.327335, 40.012367, 50.282345>,  <42.197636, 40.212265, 50.310955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.327335, 40.012367, 50.282345>,  <42.543503, 39.679203, 50.234665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327335, 40.012367, 50.282345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056071, 0.105706, -0.992815,
		-0.839526, -0.543220, -0.010424,
		-0.540419, 0.832910, 0.119202,
		42.165211, 40.262241, 50.318104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977081, 39.713955, 49.694672>,  <42.543503, 39.679203, 50.234665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977081, 39.713955, 49.694672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.006424, 40.097870, 49.803059>,  <42.024029, 40.328220, 49.868092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.006424, 40.097870, 49.803059>,  <41.977081, 39.713955, 49.694672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006424, 40.097870, 49.803059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024051, 0.273325, -0.961621,
		-0.997016, 0.064025, 0.043134,
		0.073358, 0.959789, 0.270970,
		42.028431, 40.385807, 49.884350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375610, 39.922813, 49.500259>,  <41.977081, 39.713955, 49.694672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375610, 39.922813, 49.500259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.642948, 40.220322, 49.504501>,  <41.803352, 40.398827, 49.507046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.642948, 40.220322, 49.504501>,  <41.375610, 39.922813, 49.500259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642948, 40.220322, 49.504501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306987, 0.288791, -0.906840,
		-0.677547, 0.602828, 0.421341,
		0.668348, 0.743773, 0.010609,
		41.843452, 40.443455, 49.507683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024185, 40.592739, 49.282330>,  <41.375610, 39.922813, 49.500259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024185, 40.592739, 49.282330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.419655, 40.626686, 49.232822>,  <41.656937, 40.647053, 49.203117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.419655, 40.626686, 49.232822>,  <41.024185, 40.592739, 49.282330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419655, 40.626686, 49.232822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145870, 0.349828, -0.925388,
		-0.035235, 0.932962, 0.358245,
		0.988676, 0.084863, -0.123765,
		41.716259, 40.652145, 49.195694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982391, 41.110867, 48.750359>,  <41.024185, 40.592739, 49.282330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982391, 41.110867, 48.750359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.354530, 40.964737, 48.762985>,  <41.577812, 40.877060, 48.770561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.354530, 40.964737, 48.762985>,  <40.982391, 41.110867, 48.750359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354530, 40.964737, 48.762985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133983, 0.258553, -0.956660,
		0.341329, 0.894254, 0.289490,
		0.930346, -0.365323, 0.031563,
		41.633633, 40.855141, 48.772453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388691, 41.581909, 48.546227>,  <40.982391, 41.110867, 48.750359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388691, 41.581909, 48.546227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.588531, 41.241631, 48.480854>,  <41.708435, 41.037464, 48.441631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.588531, 41.241631, 48.480854>,  <41.388691, 41.581909, 48.546227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588531, 41.241631, 48.480854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059620, 0.221981, -0.973226,
		0.864202, 0.476480, 0.161621,
		0.499600, -0.850700, -0.163429,
		41.738411, 40.986420, 48.431824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750648, 41.729359, 47.973751>,  <41.388691, 41.581909, 48.546227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750648, 41.729359, 47.973751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.779030, 41.330368, 47.975105>,  <41.796059, 41.090973, 47.975918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.779030, 41.330368, 47.975105>,  <41.750648, 41.729359, 47.973751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779030, 41.330368, 47.975105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057759, 0.000716, -0.998330,
		0.995806, 0.071027, 0.057664,
		0.070950, -0.997474, 0.003390,
		41.800316, 41.031124, 47.976124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308849, 41.555107, 47.413765>,  <41.750648, 41.729359, 47.973751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308849, 41.555107, 47.413765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.145332, 41.199341, 47.495583>,  <42.047222, 40.985882, 47.544674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.145332, 41.199341, 47.495583>,  <42.308849, 41.555107, 47.413765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145332, 41.199341, 47.495583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229393, -0.317064, -0.920244,
		0.883330, -0.329265, 0.333637,
		-0.408788, -0.889413, 0.204541,
		42.022697, 40.932518, 47.556946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768028, 41.046890, 47.257526>,  <42.308849, 41.555107, 47.413765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768028, 41.046890, 47.257526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.404751, 40.880363, 47.240234>,  <42.186787, 40.780449, 47.229858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.404751, 40.880363, 47.240234>,  <42.768028, 41.046890, 47.257526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404751, 40.880363, 47.240234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210015, -0.363925, -0.907443,
		0.362053, -0.833210, 0.417947,
		-0.908191, -0.416317, -0.043226,
		42.132294, 40.755466, 47.227268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891468, 40.288841, 46.914913>,  <42.768028, 41.046890, 47.257526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891468, 40.288841, 46.914913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.507118, 40.382790, 46.856178>,  <42.276508, 40.439159, 46.820938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.507118, 40.382790, 46.856178>,  <42.891468, 40.288841, 46.914913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507118, 40.382790, 46.856178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104762, -0.182599, -0.977590,
		-0.256415, -0.954723, 0.150849,
		-0.960873, 0.234865, -0.146840,
		42.218857, 40.453251, 46.812126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694271, 39.917709, 46.385098>,  <42.891468, 40.288841, 46.914913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694271, 39.917709, 46.385098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.406429, 40.195442, 46.381725>,  <42.233723, 40.362083, 46.379700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.406429, 40.195442, 46.381725>,  <42.694271, 39.917709, 46.385098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406429, 40.195442, 46.381725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008581, -0.021037, -0.999742,
		-0.694332, -0.719346, 0.021096,
		-0.719604, 0.694333, -0.008434,
		42.190548, 40.403744, 46.379196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194576, 39.640289, 46.002460>,  <42.694271, 39.917709, 46.385098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194576, 39.640289, 46.002460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.103958, 40.029663, 45.989227>,  <42.049587, 40.263287, 45.981289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.103958, 40.029663, 45.989227>,  <42.194576, 39.640289, 46.002460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103958, 40.029663, 45.989227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144834, -0.067253, -0.987168,
		-0.963171, -0.218849, 0.156223,
		-0.226547, 0.973438, -0.033079,
		42.035995, 40.321693, 45.979305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594379, 39.636147, 45.775242>,  <42.194576, 39.640289, 46.002460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594379, 39.636147, 45.775242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.727760, 40.008339, 45.714561>,  <41.807789, 40.231655, 45.678154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.727760, 40.008339, 45.714561>,  <41.594379, 39.636147, 45.775242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727760, 40.008339, 45.714561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050994, -0.142878, -0.988426,
		-0.941386, 0.337332, -0.000194,
		0.333456, 0.930480, -0.151705,
		41.827797, 40.287483, 45.669048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033676, 40.032185, 45.308456>,  <41.594379, 39.636147, 45.775242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033676, 40.032185, 45.308456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.397476, 40.197769, 45.293251>,  <41.615757, 40.297119, 45.284126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.397476, 40.197769, 45.293251>,  <41.033676, 40.032185, 45.308456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397476, 40.197769, 45.293251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017231, -0.053831, -0.998401,
		-0.415345, 0.908702, -0.041827,
		0.909501, 0.413960, -0.038016,
		41.670326, 40.321957, 45.281845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502430, 40.460613, 45.056519>,  <41.033676, 40.032185, 45.308456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502430, 40.460613, 45.056519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115677, 40.413666, 44.965870>,  <39.883625, 40.385498, 44.911480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115677, 40.413666, 44.965870>,  <40.502430, 40.460613, 45.056519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115677, 40.413666, 44.965870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252617, 0.313837, 0.915255,
		-0.036301, 0.942195, -0.333094,
		-0.966885, -0.117370, -0.226622,
		39.825611, 40.378456, 44.897884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101727, 41.061718, 45.305763>,  <40.502430, 40.460613, 45.056519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101727, 41.061718, 45.305763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857208, 40.745682, 45.287575>,  <39.710495, 40.556061, 45.276661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857208, 40.745682, 45.287575>,  <40.101727, 41.061718, 45.305763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857208, 40.745682, 45.287575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288605, 0.169058, 0.942405,
		-0.736898, 0.589216, -0.331370,
		-0.611300, -0.790091, -0.045472,
		39.673817, 40.508656, 45.273933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432705, 41.322475, 45.448807>,  <40.101727, 41.061718, 45.305763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432705, 41.322475, 45.448807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398716, 40.930634, 45.521629>,  <39.378323, 40.695526, 45.565323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398716, 40.930634, 45.521629>,  <39.432705, 41.322475, 45.448807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398716, 40.930634, 45.521629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365966, 0.200632, 0.908744,
		-0.926741, 0.010595, -0.375552,
		-0.084976, -0.979609, 0.182056,
		39.373222, 40.636749, 45.576244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834816, 41.242641, 45.901028>,  <39.432705, 41.322475, 45.448807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834816, 41.242641, 45.901028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.042984, 40.902382, 45.930843>,  <39.167885, 40.698227, 45.948730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.042984, 40.902382, 45.930843>,  <38.834816, 41.242641, 45.901028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042984, 40.902382, 45.930843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353098, -0.134901, 0.925810,
		-0.777483, -0.508133, -0.370568,
		0.520424, -0.850649, 0.074537,
		39.199112, 40.647186, 45.953205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344490, 40.718761, 46.116203>,  <38.834816, 41.242641, 45.901028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344490, 40.718761, 46.116203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710651, 40.603561, 46.228703>,  <38.930347, 40.534443, 46.296204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.710651, 40.603561, 46.228703>,  <38.344490, 40.718761, 46.116203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710651, 40.603561, 46.228703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333358, -0.150702, 0.930678,
		-0.225648, -0.945699, -0.233959,
		0.915399, -0.287998, 0.281250,
		38.985271, 40.517162, 46.313076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201397, 40.249290, 46.595615>,  <38.344490, 40.718761, 46.116203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201397, 40.249290, 46.595615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592533, 40.310417, 46.652851>,  <38.827213, 40.347092, 46.687191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592533, 40.310417, 46.652851>,  <38.201397, 40.249290, 46.595615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592533, 40.310417, 46.652851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121724, -0.141041, 0.982492,
		0.170322, -0.978138, -0.119315,
		0.977841, 0.152816, 0.143085,
		38.885887, 40.356262, 46.695778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424980, 39.659100, 47.042801>,  <38.201397, 40.249290, 46.595615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424980, 39.659100, 47.042801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674477, 39.968727, 47.086174>,  <38.824173, 40.154503, 47.112198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674477, 39.968727, 47.086174>,  <38.424980, 39.659100, 47.042801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674477, 39.968727, 47.086174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250971, 0.066959, 0.965676,
		0.740243, -0.629546, 0.236035,
		0.623742, 0.774073, 0.108432,
		38.861599, 40.200951, 47.118702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653034, 39.478943, 47.679012>,  <38.424980, 39.659100, 47.042801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653034, 39.478943, 47.679012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.803986, 39.846237, 47.630959>,  <38.894558, 40.066612, 47.602127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.803986, 39.846237, 47.630959>,  <38.653034, 39.478943, 47.679012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803986, 39.846237, 47.630959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051798, 0.150455, 0.987259,
		0.924609, -0.366348, 0.104341,
		0.377379, 0.918233, -0.120136,
		38.917198, 40.121708, 47.594917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313152, 39.550522, 48.100288>,  <38.653034, 39.478943, 47.679012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313152, 39.550522, 48.100288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131760, 39.904793, 48.060425>,  <39.022923, 40.117355, 48.036507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131760, 39.904793, 48.060425>,  <39.313152, 39.550522, 48.100288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131760, 39.904793, 48.060425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184136, 0.202504, 0.961814,
		0.872037, 0.417815, -0.254917,
		-0.453482, 0.885676, -0.099656,
		38.995716, 40.170494, 48.030529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648022, 39.970524, 48.560722>,  <39.313152, 39.550522, 48.100288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648022, 39.970524, 48.560722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317680, 40.186424, 48.495441>,  <39.119476, 40.315964, 48.456272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.317680, 40.186424, 48.495441>,  <39.648022, 39.970524, 48.560722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317680, 40.186424, 48.495441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046829, 0.222777, 0.973744,
		0.561938, 0.811812, -0.158704,
		-0.825853, 0.539752, -0.163203,
		39.069923, 40.348351, 48.446480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721958, 40.561405, 48.863884>,  <39.648022, 39.970524, 48.560722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721958, 40.561405, 48.863884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322643, 40.573120, 48.843655>,  <39.083054, 40.580151, 48.831516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322643, 40.573120, 48.843655>,  <39.721958, 40.561405, 48.863884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322643, 40.573120, 48.843655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045821, 0.144935, 0.988380,
		0.036282, 0.989007, -0.143345,
		-0.998291, 0.029292, -0.050576,
		39.023155, 40.581909, 48.828484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464272, 41.041214, 49.369995>,  <39.721958, 40.561405, 48.863884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464272, 41.041214, 49.369995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146843, 40.810455, 49.292603>,  <38.956387, 40.672001, 49.246166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.146843, 40.810455, 49.292603>,  <39.464272, 41.041214, 49.369995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146843, 40.810455, 49.292603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237790, 0.001344, 0.971316,
		-0.560084, 0.816819, -0.138245,
		-0.793575, -0.576892, -0.193479,
		38.908772, 40.637386, 49.234558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978237, 41.321449, 49.801769>,  <39.464272, 41.041214, 49.369995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978237, 41.321449, 49.801769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843349, 40.954178, 49.718594>,  <38.762417, 40.733814, 49.668690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.843349, 40.954178, 49.718594>,  <38.978237, 41.321449, 49.801769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843349, 40.954178, 49.718594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260596, -0.121204, 0.957810,
		-0.904641, 0.377176, -0.198401,
		-0.337216, -0.918176, -0.207937,
		38.742184, 40.678726, 49.656212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357800, 41.387772, 50.007259>,  <38.978237, 41.321449, 49.801769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357800, 41.387772, 50.007259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431080, 40.994896, 49.990593>,  <38.475048, 40.759171, 49.980595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431080, 40.994896, 49.990593>,  <38.357800, 41.387772, 50.007259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431080, 40.994896, 49.990593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264006, -0.089978, 0.960315,
		-0.946963, -0.164931, -0.275789,
		0.183201, -0.982192, -0.041663,
		38.486042, 40.700237, 49.978096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862263, 41.227089, 50.367455>,  <38.357800, 41.387772, 50.007259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862263, 41.227089, 50.367455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105217, 40.909508, 50.356731>,  <38.250988, 40.718960, 50.350296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.105217, 40.909508, 50.356731>,  <37.862263, 41.227089, 50.367455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105217, 40.909508, 50.356731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353208, -0.300129, 0.886096,
		-0.711568, -0.528731, -0.462725,
		0.607384, -0.793956, -0.026810,
		38.287434, 40.671322, 50.348690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437279, 40.568245, 50.606773>,  <37.862263, 41.227089, 50.367455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437279, 40.568245, 50.606773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824127, 40.487656, 50.668850>,  <38.056236, 40.439301, 50.706097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824127, 40.487656, 50.668850>,  <37.437279, 40.568245, 50.606773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824127, 40.487656, 50.668850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209184, -0.283166, 0.935980,
		-0.144631, -0.937670, -0.316001,
		0.967121, -0.201474, 0.155192,
		38.114265, 40.427212, 50.715408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439159, 39.896782, 50.937344>,  <37.437279, 40.568245, 50.606773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439159, 39.896782, 50.937344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796471, 40.044785, 51.039444>,  <38.010857, 40.133587, 51.100704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796471, 40.044785, 51.039444>,  <37.439159, 39.896782, 50.937344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796471, 40.044785, 51.039444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204596, -0.170940, 0.963805,
		0.400249, -0.913166, -0.076993,
		0.893275, 0.370010, 0.255249,
		38.064453, 40.155788, 51.116020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787426, 39.359188, 51.363857>,  <37.439159, 39.896782, 50.937344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787426, 39.359188, 51.363857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.975140, 39.707344, 51.423443>,  <38.087769, 39.916237, 51.459194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.975140, 39.707344, 51.423443>,  <37.787426, 39.359188, 51.363857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975140, 39.707344, 51.423443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215410, -0.050756, 0.975204,
		0.856371, -0.489735, 0.163673,
		0.469284, 0.870393, 0.148960,
		38.115925, 39.968460, 51.468132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.429962, 39.193352, 51.779213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363312, 39.582268, 51.844807>,  <38.323322, 39.815617, 51.884163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363312, 39.582268, 51.844807>,  <38.429962, 39.193352, 51.779213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363312, 39.582268, 51.844807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100545, -0.148693, 0.983759,
		0.980880, 0.180409, -0.072982,
		-0.166627, 0.972288, 0.163989,
		38.313324, 39.873955, 51.894005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988358, 39.415802, 52.071373>,  <38.429962, 39.193352, 51.779213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988358, 39.415802, 52.071373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721397, 39.690582, 52.186386>,  <38.561222, 39.855450, 52.255394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.721397, 39.690582, 52.186386>,  <38.988358, 39.415802, 52.071373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721397, 39.690582, 52.186386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168710, -0.236599, 0.956848,
		0.725341, 0.687107, 0.042009,
		-0.667396, 0.686953, 0.287537,
		38.521179, 39.896667, 52.272648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369652, 39.812424, 52.582058>,  <38.988358, 39.415802, 52.071373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369652, 39.812424, 52.582058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.974339, 39.855736, 52.625080>,  <38.737148, 39.881721, 52.650894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.974339, 39.855736, 52.625080>,  <39.369652, 39.812424, 52.582058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974339, 39.855736, 52.625080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095684, -0.109414, 0.989380,
		0.118900, 0.988081, 0.097771,
		-0.988285, 0.108282, 0.107553,
		38.677853, 39.888222, 52.657345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467030, 40.340904, 53.056763>,  <39.369652, 39.812424, 52.582058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467030, 40.340904, 53.056763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092175, 40.201790, 53.045357>,  <38.867260, 40.118320, 53.038513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092175, 40.201790, 53.045357>,  <39.467030, 40.340904, 53.056763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092175, 40.201790, 53.045357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007150, -0.100836, 0.994877,
		-0.348876, 0.932137, 0.096984,
		-0.937141, -0.347783, -0.028515,
		38.811031, 40.097454, 53.036804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090656, 40.779278, 53.459293>,  <39.467030, 40.340904, 53.056763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090656, 40.779278, 53.459293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909561, 40.423058, 53.476967>,  <38.800903, 40.209324, 53.487572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909561, 40.423058, 53.476967>,  <39.090656, 40.779278, 53.459293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909561, 40.423058, 53.476967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070943, 0.085376, 0.993820,
		-0.888819, 0.446802, -0.101831,
		-0.452735, -0.890550, 0.044187,
		38.773743, 40.155891, 53.490223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674259, 40.820332, 54.014931>,  <39.090656, 40.779278, 53.459293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674259, 40.820332, 54.014931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708092, 40.423233, 53.980736>,  <38.728394, 40.184975, 53.960220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708092, 40.423233, 53.980736>,  <38.674259, 40.820332, 54.014931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708092, 40.423233, 53.980736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190778, -0.100343, 0.976491,
		-0.977982, -0.066286, -0.197880,
		0.084584, -0.992742, -0.085488,
		38.733467, 40.125412, 53.955090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183468, 40.652653, 54.373325>,  <38.674259, 40.820332, 54.014931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183468, 40.652653, 54.373325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402092, 40.317757, 54.366383>,  <38.533264, 40.116817, 54.362217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402092, 40.317757, 54.366383>,  <38.183468, 40.652653, 54.373325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402092, 40.317757, 54.366383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280463, -0.202544, 0.938252,
		-0.789060, -0.507940, -0.345517,
		0.546558, -0.837242, -0.017361,
		38.566059, 40.066586, 54.361176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666229, 40.218864, 54.673489>,  <38.183468, 40.652653, 54.373325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666229, 40.218864, 54.673489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014435, 40.022560, 54.688232>,  <38.223358, 39.904778, 54.697079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014435, 40.022560, 54.688232>,  <37.666229, 40.218864, 54.673489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014435, 40.022560, 54.688232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184930, -0.256790, 0.948609,
		-0.456073, -0.832595, -0.314296,
		0.870516, -0.490758, 0.036857,
		38.275589, 39.875332, 54.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585339, 39.486599, 54.943535>,  <37.666229, 40.218864, 54.673489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585339, 39.486599, 54.943535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964951, 39.585335, 55.021927>,  <38.192719, 39.644577, 55.068962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964951, 39.585335, 55.021927>,  <37.585339, 39.486599, 54.943535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964951, 39.585335, 55.021927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169835, -0.123318, 0.977726,
		0.265512, -0.961177, -0.075110,
		0.949031, 0.246842, 0.195984,
		38.249660, 39.659386, 55.080723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845016, 38.934582, 55.372437>,  <37.585339, 39.486599, 54.943535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845016, 38.934582, 55.372437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058540, 39.267624, 55.431519>,  <38.186657, 39.467449, 55.466969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058540, 39.267624, 55.431519>,  <37.845016, 38.934582, 55.372437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058540, 39.267624, 55.431519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192288, -0.050578, 0.980034,
		0.823449, -0.551558, 0.133100,
		0.533814, 0.832602, 0.147707,
		38.218685, 39.517403, 55.475830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158371, 38.832424, 55.953808>,  <37.845016, 38.934582, 55.372437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158371, 38.832424, 55.953808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163235, 39.230980, 55.920185>,  <38.166153, 39.470112, 55.900009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163235, 39.230980, 55.920185>,  <38.158371, 38.832424, 55.953808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163235, 39.230980, 55.920185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335101, 0.083265, 0.938495,
		0.942104, 0.016757, 0.334903,
		0.012160, 0.996387, -0.084060,
		38.166882, 39.529896, 55.894966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433247, 38.952198, 56.559902>,  <38.158371, 38.832424, 55.953808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433247, 38.952198, 56.559902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269165, 39.291374, 56.425598>,  <38.170715, 39.494881, 56.345016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269165, 39.291374, 56.425598>,  <38.433247, 38.952198, 56.559902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269165, 39.291374, 56.425598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307058, 0.218261, 0.926325,
		0.858748, 0.483081, 0.170834,
		-0.410203, 0.847936, -0.335765,
		38.146103, 39.545753, 56.324867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628307, 39.544601, 57.093102>,  <38.433247, 38.952198, 56.559902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628307, 39.544601, 57.093102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318176, 39.662666, 56.869762>,  <38.132099, 39.733505, 56.735760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318176, 39.662666, 56.869762>,  <38.628307, 39.544601, 57.093102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318176, 39.662666, 56.869762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411793, 0.434036, 0.801273,
		0.478849, 0.851170, -0.214973,
		-0.775326, 0.295165, -0.558344,
		38.085579, 39.751217, 56.702259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545952, 40.290092, 57.156143>,  <38.628307, 39.544601, 57.093102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545952, 40.290092, 57.156143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189774, 40.139191, 57.054333>,  <37.976067, 40.048649, 56.993248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.189774, 40.139191, 57.054333>,  <38.545952, 40.290092, 57.156143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189774, 40.139191, 57.054333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397288, 0.371627, 0.839080,
		-0.221959, 0.848276, -0.480793,
		-0.890447, -0.377255, -0.254524,
		37.922638, 40.026012, 56.977974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162945, 40.897697, 57.227962>,  <38.545952, 40.290092, 57.156143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162945, 40.897697, 57.227962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901733, 40.595192, 57.244049>,  <37.745007, 40.413689, 57.253700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901733, 40.595192, 57.244049>,  <38.162945, 40.897697, 57.227962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901733, 40.595192, 57.244049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518958, 0.485528, 0.703523,
		-0.551580, 0.438546, -0.709533,
		-0.653026, -0.756267, 0.040221,
		37.705826, 40.368313, 57.256115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546970, 41.215931, 57.387043>,  <38.162945, 40.897697, 57.227962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546970, 41.215931, 57.387043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488075, 40.829819, 57.473351>,  <37.452740, 40.598152, 57.525135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488075, 40.829819, 57.473351>,  <37.546970, 41.215931, 57.387043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488075, 40.829819, 57.473351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650856, 0.258814, 0.713724,
		-0.744788, -0.035352, -0.666364,
		-0.147233, -0.965280, 0.215771,
		37.443905, 40.540234, 57.538082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831017, 41.099873, 57.435452>,  <37.546970, 41.215931, 57.387043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831017, 41.099873, 57.435452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987785, 40.788361, 57.631367>,  <37.081848, 40.601452, 57.748917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987785, 40.788361, 57.631367>,  <36.831017, 41.099873, 57.435452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987785, 40.788361, 57.631367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543954, 0.233200, 0.806060,
		-0.741963, -0.582339, -0.332224,
		0.391925, -0.778781, 0.489791,
		37.105362, 40.554726, 57.778305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290600, 40.857277, 57.853588>,  <36.831017, 41.099873, 57.435452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290600, 40.857277, 57.853588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626801, 40.713882, 58.016090>,  <36.828522, 40.627846, 58.113590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626801, 40.713882, 58.016090>,  <36.290600, 40.857277, 57.853588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626801, 40.713882, 58.016090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300758, 0.314982, 0.900184,
		-0.450670, -0.878790, 0.156924,
		0.840500, -0.358490, 0.406256,
		36.878952, 40.606335, 58.137966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035931, 40.538414, 58.335499>,  <36.290600, 40.857277, 57.853588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035931, 40.538414, 58.335499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421593, 40.578209, 58.433891>,  <36.652988, 40.602085, 58.492928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421593, 40.578209, 58.433891>,  <36.035931, 40.538414, 58.335499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421593, 40.578209, 58.433891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255966, 0.104489, 0.961022,
		0.069903, -0.989538, 0.126208,
		0.964155, 0.099483, 0.245984,
		36.710838, 40.608055, 58.507687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206383, 40.145412, 58.878712>,  <36.035931, 40.538414, 58.335499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206383, 40.145412, 58.878712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485512, 40.429718, 58.914188>,  <36.652988, 40.600300, 58.935474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485512, 40.429718, 58.914188>,  <36.206383, 40.145412, 58.878712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485512, 40.429718, 58.914188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268916, 0.145211, 0.952155,
		0.663877, -0.688281, 0.292467,
		0.697819, 0.710763, 0.088687,
		36.694859, 40.642948, 58.940796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674595, 39.871025, 59.450821>,  <36.206383, 40.145412, 58.878712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674595, 39.871025, 59.450821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753410, 40.262505, 59.427757>,  <36.800701, 40.497391, 59.413918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753410, 40.262505, 59.427757>,  <36.674595, 39.871025, 59.450821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753410, 40.262505, 59.427757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175098, 0.022736, 0.984289,
		0.964633, -0.204038, -0.166889,
		0.197038, 0.978699, -0.057658,
		36.812523, 40.556114, 59.410461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232956, 39.908131, 59.810909>,  <36.674595, 39.871025, 59.450821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232956, 39.908131, 59.810909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072754, 40.274254, 59.793941>,  <36.976631, 40.493927, 59.783760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.072754, 40.274254, 59.793941>,  <37.232956, 39.908131, 59.810909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072754, 40.274254, 59.793941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002047, 0.047183, 0.998884,
		0.916292, 0.399972, -0.020771,
		-0.400506, 0.915312, -0.042415,
		36.952602, 40.548847, 59.781216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715549, 40.431511, 60.265739>,  <37.232956, 39.908131, 59.810909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715549, 40.431511, 60.265739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323635, 40.494034, 60.215790>,  <37.088486, 40.531548, 60.185818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323635, 40.494034, 60.215790>,  <37.715549, 40.431511, 60.265739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323635, 40.494034, 60.215790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149290, -0.155687, 0.976460,
		0.133186, 0.975361, 0.175874,
		-0.979783, 0.156307, -0.124876,
		37.029701, 40.540928, 60.178326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514435, 40.864498, 60.735806>,  <37.715549, 40.431511, 60.265739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514435, 40.864498, 60.735806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210846, 40.624466, 60.634712>,  <37.028694, 40.480446, 60.574055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210846, 40.624466, 60.634712>,  <37.514435, 40.864498, 60.735806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210846, 40.624466, 60.634712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169498, -0.192683, 0.966511,
		-0.628679, 0.776389, 0.044528,
		-0.758968, -0.600078, -0.252732,
		36.983154, 40.444443, 60.558891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110588, 41.395023, 60.705254>,  <37.514435, 40.864498, 60.735806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110588, 41.395023, 60.705254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439861, 41.573776, 60.845348>,  <38.637424, 41.681026, 60.929405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439861, 41.573776, 60.845348>,  <38.110588, 41.395023, 60.705254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439861, 41.573776, 60.845348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404869, -0.029538, -0.913897,
		-0.398058, 0.894105, -0.205244,
		0.823183, 0.446881, 0.350238,
		38.686817, 41.707840, 60.950420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216400, 41.864315, 60.190514>,  <38.110588, 41.395023, 60.705254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216400, 41.864315, 60.190514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567780, 41.824020, 60.377350>,  <38.778606, 41.799843, 60.489452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567780, 41.824020, 60.377350>,  <38.216400, 41.864315, 60.190514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567780, 41.824020, 60.377350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436610, -0.227963, -0.870290,
		0.194151, 0.968445, -0.156271,
		0.878452, -0.100738, 0.467091,
		38.831314, 41.793800, 60.517479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663239, 42.150513, 59.778755>,  <38.216400, 41.864315, 60.190514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663239, 42.150513, 59.778755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911087, 41.924225, 59.996391>,  <39.059795, 41.788452, 60.126972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911087, 41.924225, 59.996391>,  <38.663239, 42.150513, 59.778755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911087, 41.924225, 59.996391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527898, -0.212626, -0.822262,
		0.580855, 0.796714, 0.166893,
		0.619622, -0.565718, 0.544088,
		39.096973, 41.754509, 60.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296978, 42.348705, 59.535172>,  <38.663239, 42.150513, 59.778755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296978, 42.348705, 59.535172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377380, 42.004341, 59.722115>,  <39.425621, 41.797722, 59.834282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377380, 42.004341, 59.722115>,  <39.296978, 42.348705, 59.535172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377380, 42.004341, 59.722115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625813, -0.254189, -0.737391,
		0.753627, 0.440700, 0.487677,
		0.201006, -0.860913, 0.467360,
		39.437683, 41.746067, 59.862324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004810, 42.301975, 59.573086>,  <39.296978, 42.348705, 59.535172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004810, 42.301975, 59.573086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890129, 41.921097, 59.615273>,  <39.821320, 41.692570, 59.640583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890129, 41.921097, 59.615273>,  <40.004810, 42.301975, 59.573086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890129, 41.921097, 59.615273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546781, -0.253034, -0.798126,
		0.786660, -0.171155, 0.593188,
		-0.286700, -0.952197, 0.105468,
		39.804119, 41.635437, 59.646912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599396, 41.991661, 59.507072>,  <40.004810, 42.301975, 59.573086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599396, 41.991661, 59.507072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310692, 41.724869, 59.433105>,  <40.137470, 41.564793, 59.388725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.310692, 41.724869, 59.433105>,  <40.599396, 41.991661, 59.507072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310692, 41.724869, 59.433105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447135, -0.245390, -0.860148,
		0.528330, -0.703502, 0.475345,
		-0.721760, -0.666985, -0.184913,
		40.094162, 41.524773, 59.377632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958836, 41.465153, 59.117023>,  <40.599396, 41.991661, 59.507072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958836, 41.465153, 59.117023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.569550, 41.393105, 59.059891>,  <40.335976, 41.349876, 59.025612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.569550, 41.393105, 59.059891>,  <40.958836, 41.465153, 59.117023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569550, 41.393105, 59.059891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178927, -0.203470, -0.962593,
		0.144324, -0.962369, 0.230250,
		-0.973219, -0.180124, -0.142828,
		40.277584, 41.339069, 59.017044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997334, 41.055904, 58.569195>,  <40.958836, 41.465153, 59.117023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997334, 41.055904, 58.569195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.602009, 41.116852, 58.571266>,  <40.364815, 41.153419, 58.572510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.602009, 41.116852, 58.571266>,  <40.997334, 41.055904, 58.569195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602009, 41.116852, 58.571266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053757, -0.316502, -0.947067,
		-0.142662, -0.936275, 0.320993,
		-0.988311, 0.152366, 0.005179,
		40.305515, 41.162563, 58.572819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587032, 40.424187, 58.443836>,  <40.997334, 41.055904, 58.569195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587032, 40.424187, 58.443836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424446, 40.758179, 58.295464>,  <40.326893, 40.958572, 58.206440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.424446, 40.758179, 58.295464>,  <40.587032, 40.424187, 58.443836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424446, 40.758179, 58.295464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058815, -0.381225, -0.922609,
		-0.911769, -0.396829, 0.105847,
		-0.406470, 0.834981, -0.370929,
		40.302505, 41.008675, 58.184185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049683, 40.230377, 57.985428>,  <40.587032, 40.424187, 58.443836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049683, 40.230377, 57.985428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130035, 40.605988, 57.873795>,  <40.178246, 40.831352, 57.806816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130035, 40.605988, 57.873795>,  <40.049683, 40.230377, 57.985428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130035, 40.605988, 57.873795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052793, -0.274095, -0.960253,
		-0.978192, 0.207631, -0.005487,
		0.200882, 0.939022, -0.279079,
		40.190300, 40.887695, 57.790070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575050, 40.234367, 57.499313>,  <40.049683, 40.230377, 57.985428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575050, 40.234367, 57.499313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.813553, 40.546890, 57.425514>,  <39.956654, 40.734406, 57.381237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.813553, 40.546890, 57.425514>,  <39.575050, 40.234367, 57.499313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813553, 40.546890, 57.425514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038556, -0.257422, -0.965530,
		-0.801869, 0.568589, -0.183614,
		0.596255, 0.781307, -0.184496,
		39.992428, 40.781284, 57.370167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343048, 40.565712, 57.000057>,  <39.575050, 40.234367, 57.499313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343048, 40.565712, 57.000057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715431, 40.703186, 56.950737>,  <39.938862, 40.785671, 56.921143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715431, 40.703186, 56.950737>,  <39.343048, 40.565712, 57.000057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715431, 40.703186, 56.950737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033432, -0.256047, -0.966086,
		-0.363600, 0.903505, -0.226879,
		0.930955, 0.343684, -0.123305,
		39.994717, 40.806290, 56.913746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362152, 41.051250, 56.354393>,  <39.343048, 40.565712, 57.000057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362152, 41.051250, 56.354393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726273, 40.903809, 56.429737>,  <39.944744, 40.815342, 56.474945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.726273, 40.903809, 56.429737>,  <39.362152, 41.051250, 56.354393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726273, 40.903809, 56.429737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061451, -0.329670, -0.942094,
		0.409358, 0.869166, -0.277449,
		0.910302, -0.368604, 0.188364,
		39.999363, 40.793228, 56.486248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860470, 41.510723, 55.899883>,  <39.362152, 41.051250, 56.354393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860470, 41.510723, 55.899883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086613, 41.188683, 55.971642>,  <40.222298, 40.995457, 56.014694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.086613, 41.188683, 55.971642>,  <39.860470, 41.510723, 55.899883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086613, 41.188683, 55.971642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228963, -0.055763, -0.971837,
		0.792432, 0.590508, 0.152812,
		0.565356, -0.805103, 0.179393,
		40.256218, 40.947151, 56.025459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295143, 41.718048, 55.428898>,  <39.860470, 41.510723, 55.899883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295143, 41.718048, 55.428898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358894, 41.334152, 55.521416>,  <40.397144, 41.103813, 55.576927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.358894, 41.334152, 55.521416>,  <40.295143, 41.718048, 55.428898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358894, 41.334152, 55.521416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377701, -0.157186, -0.912488,
		0.912108, 0.232792, 0.337442,
		0.159379, -0.959740, 0.231296,
		40.406708, 41.046230, 55.590805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010719, 41.567822, 55.291439>,  <40.295143, 41.718048, 55.428898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010719, 41.567822, 55.291439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852406, 41.200615, 55.301304>,  <40.757420, 40.980293, 55.307220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.852406, 41.200615, 55.301304>,  <41.010719, 41.567822, 55.291439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852406, 41.200615, 55.301304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572096, -0.267473, -0.775348,
		0.718377, -0.292759, 0.631053,
		-0.395780, -0.918014, 0.024660,
		40.733673, 40.925209, 55.308701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591621, 41.050949, 55.215229>,  <41.010719, 41.567822, 55.291439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591621, 41.050949, 55.215229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.258938, 40.852455, 55.115620>,  <41.059330, 40.733356, 55.055855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.258938, 40.852455, 55.115620>,  <41.591621, 41.050949, 55.215229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258938, 40.852455, 55.115620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450631, -0.341333, -0.824878,
		0.324338, -0.798273, 0.507509,
		-0.831707, -0.496238, -0.249019,
		41.009426, 40.703583, 55.040913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762875, 40.350616, 55.117359>,  <41.591621, 41.050949, 55.215229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762875, 40.350616, 55.117359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409058, 40.367401, 54.931534>,  <41.196766, 40.377472, 54.820038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.409058, 40.367401, 54.931534>,  <41.762875, 40.350616, 55.117359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409058, 40.367401, 54.931534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378976, -0.516016, -0.768182,
		-0.271958, -0.855550, 0.440537,
		-0.884543, 0.041960, -0.464568,
		41.143696, 40.379990, 54.792164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754921, 39.770882, 54.693249>,  <41.762875, 40.350616, 55.117359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754921, 39.770882, 54.693249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453690, 39.986038, 54.541702>,  <41.272949, 40.115131, 54.450775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453690, 39.986038, 54.541702>,  <41.754921, 39.770882, 54.693249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453690, 39.986038, 54.541702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157351, -0.411891, -0.897545,
		-0.638839, -0.735536, 0.225547,
		-0.753077, 0.537896, -0.378870,
		41.227768, 40.147408, 54.428040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309643, 39.275513, 54.362186>,  <41.754921, 39.770882, 54.693249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309643, 39.275513, 54.362186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285751, 39.638260, 54.195320>,  <41.271416, 39.855907, 54.095200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285751, 39.638260, 54.195320>,  <41.309643, 39.275513, 54.362186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285751, 39.638260, 54.195320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091593, -0.411170, -0.906945,
		-0.994004, -0.092381, -0.058503,
		-0.059730, 0.906865, -0.417166,
		41.267834, 39.910320, 54.070171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.764294, 40.096191, 49.097061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133560, 40.247719, 49.123158>,  <38.355122, 40.338634, 49.138817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133560, 40.247719, 49.123158>,  <37.764294, 40.096191, 49.097061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133560, 40.247719, 49.123158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053429, 0.041630, -0.997704,
		-0.380668, 0.924533, 0.018192,
		0.923167, 0.378822, 0.065244,
		38.410511, 40.361366, 49.142731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773350, 40.580360, 48.561745>,  <37.764294, 40.096191, 49.097061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773350, 40.580360, 48.561745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162575, 40.566872, 48.652966>,  <38.396111, 40.558777, 48.707699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162575, 40.566872, 48.652966>,  <37.773350, 40.580360, 48.561745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162575, 40.566872, 48.652966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230037, 0.077362, -0.970102,
		0.015072, 0.996433, 0.083036,
		0.973065, -0.033723, 0.228050,
		38.454494, 40.556755, 48.721382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029949, 41.016857, 48.188309>,  <37.773350, 40.580360, 48.561745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029949, 41.016857, 48.188309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.367111, 40.823174, 48.282162>,  <38.569408, 40.706963, 48.338474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.367111, 40.823174, 48.282162>,  <38.029949, 41.016857, 48.188309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367111, 40.823174, 48.282162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267022, -0.002135, -0.963688,
		0.467127, 0.874950, 0.127495,
		0.842906, -0.484209, 0.234628,
		38.619984, 40.677910, 48.352551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438831, 41.310871, 47.777306>,  <38.029949, 41.016857, 48.188309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438831, 41.310871, 47.777306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.631187, 40.972145, 47.868210>,  <38.746601, 40.768909, 47.922752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.631187, 40.972145, 47.868210>,  <38.438831, 41.310871, 47.777306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631187, 40.972145, 47.868210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270417, -0.103316, -0.957183,
		0.834037, 0.521757, 0.179309,
		0.480892, -0.846815, 0.227262,
		38.775455, 40.718102, 47.936390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159283, 41.383282, 47.484600>,  <38.438831, 41.310871, 47.777306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159283, 41.383282, 47.484600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087811, 40.990723, 47.512711>,  <39.044926, 40.755188, 47.529575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087811, 40.990723, 47.512711>,  <39.159283, 41.383282, 47.484600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087811, 40.990723, 47.512711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251202, -0.114558, -0.961132,
		0.951299, -0.154084, 0.266997,
		-0.178681, -0.981394, 0.070273,
		39.034206, 40.696304, 47.533791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840405, 40.986732, 47.235954>,  <39.159283, 41.383282, 47.484600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840405, 40.986732, 47.235954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508369, 40.767075, 47.197186>,  <39.309147, 40.635281, 47.173923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.508369, 40.767075, 47.197186>,  <39.840405, 40.986732, 47.235954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508369, 40.767075, 47.197186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278716, -0.258043, -0.925057,
		0.482977, -0.794895, 0.367254,
		-0.830091, -0.549141, -0.096921,
		39.259342, 40.602333, 47.168110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130428, 40.491371, 46.840660>,  <39.840405, 40.986732, 47.235954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130428, 40.491371, 46.840660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733727, 40.460251, 46.799934>,  <39.495705, 40.441578, 46.775497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733727, 40.460251, 46.799934>,  <40.130428, 40.491371, 46.840660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733727, 40.460251, 46.799934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114576, -0.182667, -0.976476,
		0.057374, -0.980092, 0.190075,
		-0.991756, -0.077803, -0.101814,
		39.436199, 40.436909, 46.769390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927555, 39.730656, 46.701466>,  <40.130428, 40.491371, 46.840660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927555, 39.730656, 46.701466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670273, 39.996094, 46.548664>,  <39.515903, 40.155357, 46.456982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.670273, 39.996094, 46.548664>,  <39.927555, 39.730656, 46.701466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670273, 39.996094, 46.548664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167882, -0.364539, -0.915929,
		-0.747063, -0.653262, 0.123068,
		-0.643205, 0.663596, -0.382005,
		39.477310, 40.195171, 46.434063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942490, 39.579563, 46.086456>,  <39.927555, 39.730656, 46.701466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942490, 39.579563, 46.086456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678345, 39.877045, 46.044849>,  <39.519855, 40.055534, 46.019886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.678345, 39.877045, 46.044849>,  <39.942490, 39.579563, 46.086456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678345, 39.877045, 46.044849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090164, -0.058991, -0.994178,
		-0.745511, -0.665901, -0.028100,
		-0.660367, 0.743704, -0.104019,
		39.480236, 40.100155, 46.013645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331635, 39.331604, 45.651043>,  <39.942490, 39.579563, 46.086456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331635, 39.331604, 45.651043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348152, 39.730942, 45.635017>,  <39.358063, 39.970543, 45.625401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348152, 39.730942, 45.635017>,  <39.331635, 39.331604, 45.651043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348152, 39.730942, 45.635017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089829, -0.043647, -0.995000,
		-0.995101, 0.037490, -0.091483,
		0.041295, 0.998343, -0.040066,
		39.360542, 40.030445, 45.622997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761951, 39.609390, 45.129780>,  <39.331635, 39.331604, 45.651043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761951, 39.609390, 45.129780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074402, 39.856789, 45.163975>,  <39.261871, 40.005226, 45.184494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074402, 39.856789, 45.163975>,  <38.761951, 39.609390, 45.129780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074402, 39.856789, 45.163975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015757, 0.117349, -0.992966,
		-0.624178, 0.776976, 0.081918,
		0.781123, 0.618497, 0.085490,
		39.308739, 40.042339, 45.189621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570358, 40.108337, 44.631233>,  <38.761951, 39.609390, 45.129780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570358, 40.108337, 44.631233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953789, 40.185707, 44.714867>,  <39.183849, 40.232128, 44.765045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953789, 40.185707, 44.714867>,  <38.570358, 40.108337, 44.631233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953789, 40.185707, 44.714867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182700, 0.145595, -0.972329,
		-0.218510, 0.970253, 0.104226,
		0.958579, 0.193422, 0.209079,
		39.241364, 40.243732, 44.777592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901867, 40.551376, 44.120636>,  <38.570358, 40.108337, 44.631233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901867, 40.551376, 44.120636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249802, 40.412674, 44.261002>,  <39.458561, 40.329453, 44.345219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249802, 40.412674, 44.261002>,  <38.901867, 40.551376, 44.120636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249802, 40.412674, 44.261002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388272, 0.042378, -0.920570,
		0.304346, 0.936996, 0.171499,
		0.869838, -0.346760, 0.350912,
		39.510754, 40.308647, 44.366276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528877, 40.905293, 43.780849>,  <38.901867, 40.551376, 44.120636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528877, 40.905293, 43.780849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.627617, 40.533470, 43.890392>,  <39.686859, 40.310379, 43.956120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.627617, 40.533470, 43.890392>,  <39.528877, 40.905293, 43.780849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627617, 40.533470, 43.890392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368444, -0.171352, -0.913722,
		0.896279, 0.326451, 0.300191,
		0.246847, -0.929553, 0.273858,
		39.701672, 40.254604, 43.972549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014812, 41.268269, 44.295036>,  <39.528877, 40.905293, 43.780849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014812, 41.268269, 44.295036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845806, 41.582207, 44.113712>,  <38.744404, 41.770569, 44.004917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845806, 41.582207, 44.113712>,  <39.014812, 41.268269, 44.295036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845806, 41.582207, 44.113712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069635, 0.526781, 0.847144,
		0.903678, 0.326364, -0.277225,
		-0.422514, 0.784849, -0.453314,
		38.719051, 41.817661, 43.977718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445019, 41.923775, 44.337250>,  <39.014812, 41.268269, 44.295036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445019, 41.923775, 44.337250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076241, 42.066963, 44.278080>,  <38.854973, 42.152874, 44.242580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076241, 42.066963, 44.278080>,  <39.445019, 41.923775, 44.337250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076241, 42.066963, 44.278080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018475, 0.340827, 0.939944,
		0.386886, 0.869307, -0.307610,
		-0.921942, 0.357969, -0.147922,
		38.799660, 42.174355, 44.233704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450146, 42.658287, 44.396355>,  <39.445019, 41.923775, 44.337250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450146, 42.658287, 44.396355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.072361, 42.547066, 44.466423>,  <38.845692, 42.480331, 44.508465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.072361, 42.547066, 44.466423>,  <39.450146, 42.658287, 44.396355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072361, 42.547066, 44.466423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032081, 0.608478, 0.792922,
		-0.327064, 0.743262, -0.583603,
		-0.944458, -0.278058, 0.175167,
		38.789024, 42.463650, 44.518974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028057, 43.284908, 44.450920>,  <39.450146, 42.658287, 44.396355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028057, 43.284908, 44.450920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820045, 43.002151, 44.642704>,  <38.695240, 42.832497, 44.757774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820045, 43.002151, 44.642704>,  <39.028057, 43.284908, 44.450920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820045, 43.002151, 44.642704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101421, 0.608459, 0.787078,
		-0.848106, 0.360676, -0.388110,
		-0.520029, -0.706888, 0.479458,
		38.664036, 42.790085, 44.786541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665775, 43.721668, 44.971199>,  <39.028057, 43.284908, 44.450920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665775, 43.721668, 44.971199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596001, 43.348785, 45.098049>,  <38.554138, 43.125057, 45.174160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596001, 43.348785, 45.098049>,  <38.665775, 43.721668, 44.971199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596001, 43.348785, 45.098049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113597, 0.338968, 0.933915,
		-0.978095, 0.126881, -0.165022,
		-0.174433, -0.932203, 0.317129,
		38.543671, 43.069126, 45.193188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933884, 43.700241, 45.357056>,  <38.665775, 43.721668, 44.971199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933884, 43.700241, 45.357056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.197235, 43.421844, 45.471691>,  <38.355247, 43.254807, 45.540474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.197235, 43.421844, 45.471691>,  <37.933884, 43.700241, 45.357056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197235, 43.421844, 45.471691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001898, 0.379223, 0.925303,
		-0.752681, -0.609748, 0.248353,
		0.658383, -0.695987, 0.286591,
		38.394749, 43.213047, 45.557667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706665, 43.568920, 46.014240>,  <37.933884, 43.700241, 45.357056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706665, 43.568920, 46.014240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.060577, 43.382812, 46.024803>,  <38.272923, 43.271149, 46.031139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.060577, 43.382812, 46.024803>,  <37.706665, 43.568920, 46.014240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060577, 43.382812, 46.024803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097006, 0.239307, 0.966086,
		-0.455808, -0.852208, 0.256867,
		0.884776, -0.465267, 0.026409,
		38.326012, 43.243233, 46.032726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673344, 43.132271, 46.655396>,  <37.706665, 43.568920, 46.014240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673344, 43.132271, 46.655396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057663, 43.159821, 46.547977>,  <38.288254, 43.176350, 46.483528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057663, 43.159821, 46.547977>,  <37.673344, 43.132271, 46.655396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057663, 43.159821, 46.547977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275265, -0.121681, 0.953637,
		0.033007, -0.990176, -0.135871,
		0.960802, 0.068877, -0.268545,
		38.345905, 43.180485, 46.467415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175407, 42.565441, 46.852734>,  <37.673344, 43.132271, 46.655396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175407, 42.565441, 46.852734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399399, 42.893959, 46.809086>,  <38.533794, 43.091068, 46.782898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.399399, 42.893959, 46.809086>,  <38.175407, 42.565441, 46.852734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399399, 42.893959, 46.809086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217157, -0.018397, 0.975963,
		0.799544, -0.570211, -0.188651,
		0.559976, 0.821292, -0.109116,
		38.567390, 43.140347, 46.776352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798061, 42.498459, 47.258209>,  <38.175407, 42.565441, 46.852734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798061, 42.498459, 47.258209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771820, 42.891571, 47.189114>,  <38.756077, 43.127438, 47.147655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.771820, 42.891571, 47.189114>,  <38.798061, 42.498459, 47.258209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771820, 42.891571, 47.189114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223216, 0.183181, 0.957403,
		0.972559, 0.024246, -0.231389,
		-0.065600, 0.982780, -0.172742,
		38.752140, 43.186405, 47.137291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318966, 42.693333, 47.691898>,  <38.798061, 42.498459, 47.258209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318966, 42.693333, 47.691898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134502, 43.037506, 47.605186>,  <39.023827, 43.244011, 47.553162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134502, 43.037506, 47.605186>,  <39.318966, 42.693333, 47.691898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134502, 43.037506, 47.605186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049356, 0.268800, 0.961931,
		0.885945, 0.432902, -0.166427,
		-0.461157, 0.860432, -0.216776,
		38.996155, 43.295635, 47.540154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771404, 43.276447, 47.800671>,  <39.318966, 42.693333, 47.691898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771404, 43.276447, 47.800671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386383, 43.377640, 47.839630>,  <39.155369, 43.438354, 47.863007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386383, 43.377640, 47.839630>,  <39.771404, 43.276447, 47.800671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386383, 43.377640, 47.839630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161432, 0.246307, 0.955653,
		0.217776, 0.935592, -0.277924,
		-0.962556, 0.252984, 0.097395,
		39.097618, 43.453533, 47.868847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838264, 43.549213, 48.463520>,  <39.771404, 43.276447, 47.800671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838264, 43.549213, 48.463520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445610, 43.569275, 48.389904>,  <39.210018, 43.581310, 48.345734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.445610, 43.569275, 48.389904>,  <39.838264, 43.549213, 48.463520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445610, 43.569275, 48.389904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182518, 0.033376, 0.982636,
		0.055424, 0.998184, -0.023609,
		-0.981639, 0.050153, -0.184037,
		39.151119, 43.584320, 48.334694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632687, 44.183060, 48.752556>,  <39.838264, 43.549213, 48.463520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632687, 44.183060, 48.752556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.365665, 43.886101, 48.729820>,  <39.205452, 43.707928, 48.716179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.365665, 43.886101, 48.729820>,  <39.632687, 44.183060, 48.752556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365665, 43.886101, 48.729820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146970, 0.056552, 0.987523,
		-0.729917, 0.667573, -0.146861,
		-0.667549, -0.742394, -0.056835,
		39.165401, 43.663383, 48.712769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198021, 44.872597, 48.626019>,  <39.632687, 44.183060, 48.752556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198021, 44.872597, 48.626019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443359, 45.140495, 48.793468>,  <39.590561, 45.301235, 48.893940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443359, 45.140495, 48.793468>,  <39.198021, 44.872597, 48.626019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443359, 45.140495, 48.793468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549851, 0.018412, -0.835060,
		-0.566986, 0.742361, -0.356968,
		0.613344, 0.669747, 0.418627,
		39.627361, 45.341419, 48.919056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206833, 45.396126, 48.231396>,  <39.198021, 44.872597, 48.626019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206833, 45.396126, 48.231396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.554119, 45.466873, 48.416832>,  <39.762493, 45.509323, 48.528095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.554119, 45.466873, 48.416832>,  <39.206833, 45.396126, 48.231396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554119, 45.466873, 48.416832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420169, 0.234901, -0.876516,
		-0.263926, 0.955792, 0.129631,
		0.868217, 0.176868, 0.463591,
		39.814583, 45.519932, 48.555908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368164, 46.068459, 48.020180>,  <39.206833, 45.396126, 48.231396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368164, 46.068459, 48.020180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.714413, 45.898209, 48.125660>,  <39.922161, 45.796059, 48.188950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.714413, 45.898209, 48.125660>,  <39.368164, 46.068459, 48.020180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714413, 45.898209, 48.125660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427366, 0.353672, -0.832030,
		0.260864, 0.832925, 0.488043,
		0.865626, -0.425620, 0.263703,
		39.974102, 45.770523, 48.204769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880360, 46.594845, 48.008183>,  <39.368164, 46.068459, 48.020180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880360, 46.594845, 48.008183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.083092, 46.250053, 48.003979>,  <40.204731, 46.043179, 48.001457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.083092, 46.250053, 48.003979>,  <39.880360, 46.594845, 48.008183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083092, 46.250053, 48.003979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540483, 0.327241, -0.775107,
		0.671567, 0.387168, 0.631742,
		0.506829, -0.861983, -0.010507,
		40.235142, 45.991459, 48.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571556, 46.820339, 47.871258>,  <39.880360, 46.594845, 48.008183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571556, 46.820339, 47.871258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.560070, 46.438332, 47.753197>,  <40.553177, 46.209126, 47.682362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.560070, 46.438332, 47.753197>,  <40.571556, 46.820339, 47.871258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560070, 46.438332, 47.753197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501528, 0.241653, -0.830707,
		0.864665, -0.171884, 0.472028,
		-0.028718, -0.955018, -0.295153,
		40.551456, 46.151825, 47.664650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178272, 46.764099, 47.574642>,  <40.571556, 46.820339, 47.871258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178272, 46.764099, 47.574642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989525, 46.424225, 47.480515>,  <40.876278, 46.220299, 47.424038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.989525, 46.424225, 47.480515>,  <41.178272, 46.764099, 47.574642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989525, 46.424225, 47.480515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543972, -0.070527, -0.836134,
		0.693858, -0.522546, 0.495486,
		-0.471864, -0.849689, -0.235315,
		40.847965, 46.169319, 47.409920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579044, 46.209137, 47.600197>,  <41.178272, 46.764099, 47.574642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579044, 46.209137, 47.600197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307541, 46.099380, 47.327728>,  <41.144638, 46.033527, 47.164246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.307541, 46.099380, 47.327728>,  <41.579044, 46.209137, 47.600197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307541, 46.099380, 47.327728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727076, -0.120796, -0.675847,
		0.103162, -0.954001, 0.281494,
		-0.678762, -0.274389, -0.681170,
		41.103912, 46.017063, 47.123379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766174, 45.664474, 47.210228>,  <41.579044, 46.209137, 47.600197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766174, 45.664474, 47.210228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475254, 45.801132, 46.972134>,  <41.300701, 45.883125, 46.829277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.475254, 45.801132, 46.972134>,  <41.766174, 45.664474, 47.210228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475254, 45.801132, 46.972134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636648, 0.011922, -0.771062,
		-0.256334, -0.939753, -0.226179,
		-0.727305, 0.341646, -0.595236,
		41.257061, 45.903625, 46.793564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773788, 45.210159, 46.707180>,  <41.766174, 45.664474, 47.210228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773788, 45.210159, 46.707180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.593159, 45.539375, 46.569382>,  <41.484779, 45.736904, 46.486702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.593159, 45.539375, 46.569382>,  <41.773788, 45.210159, 46.707180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593159, 45.539375, 46.569382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628424, 0.019309, -0.777631,
		-0.633372, -0.567650, -0.525940,
		-0.451578, 0.823044, -0.344495,
		41.457684, 45.786289, 46.466034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527515, 45.103111, 46.006252>,  <41.773788, 45.210159, 46.707180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527515, 45.103111, 46.006252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583935, 45.495041, 46.062878>,  <41.617786, 45.730198, 46.096855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583935, 45.495041, 46.062878>,  <41.527515, 45.103111, 46.006252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583935, 45.495041, 46.062878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588537, 0.031997, -0.807837,
		-0.796072, 0.197261, -0.572152,
		0.141048, 0.979829, 0.141568,
		41.626247, 45.788990, 46.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531876, 45.327503, 45.315624>,  <41.527515, 45.103111, 46.006252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531876, 45.327503, 45.315624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658165, 45.631615, 45.542709>,  <41.733940, 45.814083, 45.678959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658165, 45.631615, 45.542709>,  <41.531876, 45.327503, 45.315624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658165, 45.631615, 45.542709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615988, 0.290859, -0.732093,
		-0.721718, 0.580842, -0.376492,
		0.315724, 0.760279, 0.567710,
		41.752884, 45.859699, 45.713024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405540, 45.837269, 44.891418>,  <41.531876, 45.327503, 45.315624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405540, 45.837269, 44.891418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693081, 45.922806, 45.156002>,  <41.865604, 45.974129, 45.314751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693081, 45.922806, 45.156002>,  <41.405540, 45.837269, 44.891418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693081, 45.922806, 45.156002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650155, 0.130004, -0.748597,
		-0.246076, 0.968178, -0.045580,
		0.718850, 0.213846, 0.661457,
		41.908737, 45.986961, 45.354439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.418518, 46.406685, 51.866722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786480, 46.392456, 52.022934>,  <38.007256, 46.383919, 52.116661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786480, 46.392456, 52.022934>,  <37.418518, 46.406685, 51.866722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786480, 46.392456, 52.022934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390365, -0.011692, -0.920586,
		0.037316, 0.999298, 0.003132,
		0.919904, -0.035575, 0.390527,
		38.062450, 46.381783, 52.140091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801815, 46.810116, 51.458202>,  <37.418518, 46.406685, 51.866722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801815, 46.810116, 51.458202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066566, 46.588760, 51.660458>,  <38.225418, 46.455948, 51.781811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066566, 46.588760, 51.660458>,  <37.801815, 46.810116, 51.458202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066566, 46.588760, 51.660458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516702, -0.151882, -0.842586,
		0.543076, 0.818958, 0.185409,
		0.661882, -0.553389, 0.505640,
		38.265133, 46.422745, 51.812149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473930, 47.039314, 51.162025>,  <37.801815, 46.810116, 51.458202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473930, 47.039314, 51.162025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541866, 46.686981, 51.338787>,  <38.582626, 46.475582, 51.444843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541866, 46.686981, 51.338787>,  <38.473930, 47.039314, 51.162025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541866, 46.686981, 51.338787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441008, -0.333081, -0.833408,
		0.881287, 0.336431, 0.331885,
		0.169840, -0.880836, 0.441908,
		38.592819, 46.422729, 51.471359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222069, 46.875996, 51.065456>,  <38.473930, 47.039314, 51.162025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222069, 46.875996, 51.065456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043472, 46.524239, 51.131577>,  <38.936314, 46.313187, 51.171249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043472, 46.524239, 51.131577>,  <39.222069, 46.875996, 51.065456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043472, 46.524239, 51.131577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531402, -0.409230, -0.741716,
		0.719903, -0.243325, 0.650025,
		-0.446488, -0.879388, 0.165302,
		38.909527, 46.260422, 51.181168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726494, 46.394054, 51.057915>,  <39.222069, 46.875996, 51.065456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726494, 46.394054, 51.057915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395058, 46.194374, 50.956535>,  <39.196198, 46.074566, 50.895710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395058, 46.194374, 50.956535>,  <39.726494, 46.394054, 51.057915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395058, 46.194374, 50.956535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438603, -0.297467, -0.848022,
		0.347942, -0.813825, 0.465430,
		-0.828592, -0.499201, -0.253445,
		39.146481, 46.044613, 50.880501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027229, 45.778896, 50.814350>,  <39.726494, 46.394054, 51.057915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027229, 45.778896, 50.814350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659542, 45.797668, 50.657970>,  <39.438931, 45.808933, 50.564144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659542, 45.797668, 50.657970>,  <40.027229, 45.778896, 50.814350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659542, 45.797668, 50.657970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350158, -0.356689, -0.866119,
		-0.180094, -0.933044, 0.311441,
		-0.919214, 0.046929, -0.390951,
		39.383778, 45.811749, 50.540684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798374, 45.114845, 50.587551>,  <40.027229, 45.778896, 50.814350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798374, 45.114845, 50.587551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601532, 45.379784, 50.361584>,  <39.483429, 45.538746, 50.226002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601532, 45.379784, 50.361584>,  <39.798374, 45.114845, 50.587551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601532, 45.379784, 50.361584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436781, -0.373481, -0.818373,
		-0.753032, -0.649470, -0.105508,
		-0.492103, 0.662345, -0.564920,
		39.453899, 45.578487, 50.192108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573872, 44.750267, 50.031601>,  <39.798374, 45.114845, 50.587551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573872, 44.750267, 50.031601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511650, 45.115318, 49.880386>,  <39.474316, 45.334351, 49.789658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511650, 45.115318, 49.880386>,  <39.573872, 44.750267, 50.031601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511650, 45.115318, 49.880386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327039, -0.313535, -0.891483,
		-0.932120, -0.262307, -0.249693,
		-0.155554, 0.912629, -0.378037,
		39.464985, 45.389107, 49.766975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245300, 44.636784, 49.362312>,  <39.573872, 44.750267, 50.031601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245300, 44.636784, 49.362312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383171, 45.011513, 49.338463>,  <39.465893, 45.236351, 49.324154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383171, 45.011513, 49.338463>,  <39.245300, 44.636784, 49.362312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383171, 45.011513, 49.338463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327798, -0.179638, -0.927512,
		-0.879627, 0.300151, -0.369007,
		0.344681, 0.936824, -0.059626,
		39.486576, 45.292561, 49.320576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514931, 44.588142, 49.283772>,  <39.245300, 44.636784, 49.362312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514931, 44.588142, 49.283772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530647, 44.189209, 49.259197>,  <38.540077, 43.949848, 49.244453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530647, 44.189209, 49.259197>,  <38.514931, 44.588142, 49.283772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530647, 44.189209, 49.259197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206882, -0.052035, 0.976981,
		-0.977577, -0.051094, 0.204287,
		0.039288, -0.997337, -0.061439,
		38.542435, 43.890007, 49.240765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084206, 44.272518, 49.843582>,  <38.514931, 44.588142, 49.283772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084206, 44.272518, 49.843582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323837, 43.970032, 49.738327>,  <38.467617, 43.788540, 49.675175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323837, 43.970032, 49.738327>,  <38.084206, 44.272518, 49.843582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323837, 43.970032, 49.738327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110067, -0.247742, 0.962553,
		-0.793085, -0.605613, -0.065184,
		0.599083, -0.756212, -0.263139,
		38.503563, 43.743168, 49.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958080, 43.841434, 50.311256>,  <38.084206, 44.272518, 49.843582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958080, 43.841434, 50.311256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287441, 43.677368, 50.154396>,  <38.485058, 43.578930, 50.060280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287441, 43.677368, 50.154396>,  <37.958080, 43.841434, 50.311256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287441, 43.677368, 50.154396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204052, -0.430820, 0.879066,
		-0.529507, -0.803840, -0.271041,
		0.823398, -0.410165, -0.392147,
		38.534462, 43.554317, 50.036751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907894, 43.060982, 50.459240>,  <37.958080, 43.841434, 50.311256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907894, 43.060982, 50.459240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290115, 43.171127, 50.417099>,  <38.519447, 43.237213, 50.391815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290115, 43.171127, 50.417099>,  <37.907894, 43.060982, 50.459240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290115, 43.171127, 50.417099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216019, -0.410709, 0.885807,
		0.200648, -0.869192, -0.451937,
		0.955550, 0.275362, -0.105354,
		38.576782, 43.253735, 50.385494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321888, 42.510509, 50.607571>,  <37.907894, 43.060982, 50.459240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321888, 42.510509, 50.607571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583897, 42.810005, 50.648232>,  <38.741104, 42.989700, 50.672626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583897, 42.810005, 50.648232>,  <38.321888, 42.510509, 50.607571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583897, 42.810005, 50.648232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068605, -0.192906, 0.978816,
		0.752485, -0.634176, -0.177726,
		0.655026, 0.748737, 0.101652,
		38.780403, 43.034626, 50.678726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908661, 42.277161, 50.941689>,  <38.321888, 42.510509, 50.607571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908661, 42.277161, 50.941689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920330, 42.672905, 50.998699>,  <38.927330, 42.910351, 51.032906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920330, 42.672905, 50.998699>,  <38.908661, 42.277161, 50.941689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920330, 42.672905, 50.998699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261001, -0.145181, 0.954359,
		0.964897, 0.009359, -0.262460,
		0.029172, 0.989361, 0.142528,
		38.929081, 42.969711, 51.041458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469585, 42.332943, 51.380695>,  <38.908661, 42.277161, 50.941689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469585, 42.332943, 51.380695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294655, 42.691383, 51.411018>,  <39.189697, 42.906448, 51.429211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294655, 42.691383, 51.411018>,  <39.469585, 42.332943, 51.380695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294655, 42.691383, 51.411018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183862, 0.006579, 0.982930,
		0.880307, 0.443799, -0.167637,
		-0.437326, 0.896102, 0.075806,
		39.163456, 42.960213, 51.433762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944881, 42.790188, 51.736916>,  <39.469585, 42.332943, 51.380695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944881, 42.790188, 51.736916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563881, 42.898392, 51.792870>,  <39.335281, 42.963314, 51.826443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563881, 42.898392, 51.792870>,  <39.944881, 42.790188, 51.736916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563881, 42.898392, 51.792870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197243, 0.198006, 0.960150,
		0.232032, 0.942135, -0.241957,
		-0.952500, 0.270510, 0.139886,
		39.278130, 42.979546, 51.834835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037960, 43.355240, 52.225819>,  <39.944881, 42.790188, 51.736916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037960, 43.355240, 52.225819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645622, 43.277374, 52.222870>,  <39.410221, 43.230656, 52.221100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645622, 43.277374, 52.222870>,  <40.037960, 43.355240, 52.225819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645622, 43.277374, 52.222870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056343, 0.247265, 0.967308,
		-0.186482, 0.949191, -0.253496,
		-0.980841, -0.194669, -0.007370,
		39.351368, 43.218975, 52.220657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723270, 43.837631, 52.627380>,  <40.037960, 43.355240, 52.225819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723270, 43.837631, 52.627380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441246, 43.554794, 52.605824>,  <39.272030, 43.385090, 52.592888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441246, 43.554794, 52.605824>,  <39.723270, 43.837631, 52.627380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441246, 43.554794, 52.605824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116158, 0.040186, 0.992417,
		-0.699568, 0.705976, -0.110469,
		-0.705062, -0.707095, -0.053892,
		39.229729, 43.342667, 52.589657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186977, 44.138775, 53.031666>,  <39.723270, 43.837631, 52.627380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186977, 44.138775, 53.031666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099579, 43.748940, 53.011906>,  <39.047138, 43.515038, 53.000050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099579, 43.748940, 53.011906>,  <39.186977, 44.138775, 53.031666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099579, 43.748940, 53.011906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376206, 0.037414, 0.925780,
		-0.900404, 0.220868, -0.374820,
		-0.218498, -0.974586, -0.049404,
		39.034031, 43.456562, 52.997086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530891, 44.230293, 53.153286>,  <39.186977, 44.138775, 53.031666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530891, 44.230293, 53.153286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670063, 43.865372, 53.239681>,  <38.753567, 43.646420, 53.291519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670063, 43.865372, 53.239681>,  <38.530891, 44.230293, 53.153286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670063, 43.865372, 53.239681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538536, -0.005902, 0.842582,
		-0.767413, -0.409480, -0.493360,
		0.347932, -0.912300, 0.215991,
		38.774445, 43.591682, 53.304478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027222, 43.862339, 53.295433>,  <38.530891, 44.230293, 53.153286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027222, 43.862339, 53.295433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306908, 43.629196, 53.461021>,  <38.474720, 43.489311, 53.560375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306908, 43.629196, 53.461021>,  <38.027222, 43.862339, 53.295433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306908, 43.629196, 53.461021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604819, -0.173542, 0.777224,
		-0.381169, -0.793826, -0.473867,
		0.699217, -0.582858, 0.413972,
		38.516674, 43.454338, 53.585213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691776, 43.245350, 53.428154>,  <38.027222, 43.862339, 53.295433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691776, 43.245350, 53.428154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001724, 43.218513, 53.679573>,  <38.187695, 43.202412, 53.830425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001724, 43.218513, 53.679573>,  <37.691776, 43.245350, 53.428154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001724, 43.218513, 53.679573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612819, -0.323541, 0.720954,
		0.154995, -0.943833, -0.291815,
		0.774874, -0.067086, 0.628546,
		38.234188, 43.198387, 53.868137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.322170, 42.072193, 55.589127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.045860, 42.360924, 55.572205>,  <42.880074, 42.534164, 55.562050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.045860, 42.360924, 55.572205>,  <43.322170, 42.072193, 55.589127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045860, 42.360924, 55.572205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034354, -0.025682, -0.999080,
		-0.722251, -0.691595, -0.007057,
		-0.690777, 0.721829, -0.042308,
		42.838627, 42.577473, 55.559513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822540, 41.737186, 55.302837>,  <43.322170, 42.072193, 55.589127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822540, 41.737186, 55.302837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.763439, 42.130394, 55.259293>,  <42.727978, 42.366318, 55.233166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.763439, 42.130394, 55.259293>,  <42.822540, 41.737186, 55.302837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763439, 42.130394, 55.259293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169257, -0.133577, -0.976478,
		-0.974434, -0.125853, 0.186119,
		-0.147754, 0.983015, -0.108860,
		42.719112, 42.425297, 55.226635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273029, 41.687099, 54.822975>,  <42.822540, 41.737186, 55.302837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273029, 41.687099, 54.822975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.492325, 42.021477, 54.812927>,  <42.623901, 42.222103, 54.806896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.492325, 42.021477, 54.812927>,  <42.273029, 41.687099, 54.822975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492325, 42.021477, 54.812927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095418, -0.092366, -0.991143,
		-0.830863, 0.540982, -0.130403,
		0.548235, 0.835947, -0.025123,
		42.656796, 42.272263, 54.805389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874420, 42.182137, 54.400974>,  <42.273029, 41.687099, 54.822975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874420, 42.182137, 54.400974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.254669, 42.306252, 54.398670>,  <42.482819, 42.380722, 54.397289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.254669, 42.306252, 54.398670>,  <41.874420, 42.182137, 54.400974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254669, 42.306252, 54.398670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051468, 0.139331, -0.988908,
		-0.306043, 0.940377, 0.148421,
		0.950625, 0.310287, -0.005758,
		42.539856, 42.399338, 54.396942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922028, 42.719318, 53.955750>,  <41.874420, 42.182137, 54.400974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922028, 42.719318, 53.955750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.295509, 42.576927, 53.971115>,  <42.519600, 42.491493, 53.980335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.295509, 42.576927, 53.971115>,  <41.922028, 42.719318, 53.955750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295509, 42.576927, 53.971115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113318, 0.192020, -0.974827,
		0.339637, 0.914555, 0.219628,
		0.933706, -0.355975, 0.038418,
		42.575623, 42.470135, 53.982639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273808, 43.056759, 53.423523>,  <41.922028, 42.719318, 53.955750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273808, 43.056759, 53.423523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.530426, 42.762558, 53.510662>,  <42.684399, 42.586037, 53.562946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.530426, 42.762558, 53.510662>,  <42.273808, 43.056759, 53.423523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530426, 42.762558, 53.510662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382585, 0.060643, -0.921928,
		0.664867, 0.674805, 0.320297,
		0.641545, -0.735500, 0.217851,
		42.722889, 42.541908, 53.576015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871227, 43.312916, 53.283012>,  <42.273808, 43.056759, 53.423523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871227, 43.312916, 53.283012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.948704, 42.921356, 53.256969>,  <42.995190, 42.686420, 53.241344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.948704, 42.921356, 53.256969>,  <42.871227, 43.312916, 53.283012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948704, 42.921356, 53.256969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441507, 0.146243, -0.885260,
		0.876102, 0.142722, 0.460517,
		0.193694, -0.978899, -0.065111,
		43.006813, 42.627686, 53.237434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584644, 43.297272, 52.862637>,  <42.871227, 43.312916, 53.283012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584644, 43.297272, 52.862637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.396034, 42.944534, 52.860748>,  <43.282867, 42.732891, 52.859615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.396034, 42.944534, 52.860748>,  <43.584644, 43.297272, 52.862637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396034, 42.944534, 52.860748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449581, -0.235775, -0.861561,
		0.758646, -0.408369, 0.507632,
		-0.471522, -0.881842, -0.004725,
		43.254578, 42.679981, 52.859329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099300, 42.764320, 52.745369>,  <43.584644, 43.297272, 52.862637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099300, 42.764320, 52.745369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751667, 42.598404, 52.637554>,  <43.543087, 42.498852, 52.572865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751667, 42.598404, 52.637554>,  <44.099300, 42.764320, 52.745369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751667, 42.598404, 52.637554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353842, -0.140506, -0.924691,
		0.345685, -0.899002, 0.268882,
		-0.869079, -0.414794, -0.269534,
		43.490944, 42.473965, 52.556694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291870, 42.180832, 52.376972>,  <44.099300, 42.764320, 52.745369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291870, 42.180832, 52.376972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.927513, 42.287651, 52.251137>,  <43.708900, 42.351742, 52.175636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.927513, 42.287651, 52.251137>,  <44.291870, 42.180832, 52.376972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.927513, 42.287651, 52.251137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274849, -0.176026, -0.945237,
		-0.307798, -0.947471, 0.086943,
		-0.910889, 0.267046, -0.314592,
		43.654247, 42.367764, 52.156757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284569, 41.827858, 51.815998>,  <44.291870, 42.180832, 52.376972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284569, 41.827858, 51.815998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.982346, 42.083992, 51.760696>,  <43.801014, 42.237671, 51.727516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.982346, 42.083992, 51.760696>,  <44.284569, 41.827858, 51.815998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982346, 42.083992, 51.760696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051311, -0.152548, -0.986963,
		-0.653073, -0.752798, 0.082402,
		-0.755554, 0.640331, -0.138252,
		43.755680, 42.276093, 51.719219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864056, 41.545944, 51.273613>,  <44.284569, 41.827858, 51.815998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864056, 41.545944, 51.273613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.752205, 41.929962, 51.278160>,  <43.685097, 42.160374, 51.280888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.752205, 41.929962, 51.278160>,  <43.864056, 41.545944, 51.273613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752205, 41.929962, 51.278160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010292, 0.008842, -0.999908,
		-0.960054, -0.279715, 0.007409,
		-0.279624, 0.960042, 0.011368,
		43.668316, 42.217976, 51.281570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229053, 41.558735, 51.024380>,  <43.864056, 41.545944, 51.273613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229053, 41.558735, 51.024380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.416443, 41.906219, 50.960045>,  <43.528877, 42.114712, 50.921444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.416443, 41.906219, 50.960045>,  <43.229053, 41.558735, 51.024380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416443, 41.906219, 50.960045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019224, -0.192030, -0.981201,
		-0.883266, 0.456579, -0.106661,
		0.468478, 0.868712, -0.160836,
		43.556988, 42.166832, 50.911793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877480, 41.786373, 50.496040>,  <43.229053, 41.558735, 51.024380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877480, 41.786373, 50.496040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.210533, 42.007835, 50.490692>,  <43.410366, 42.140713, 50.487484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.210533, 42.007835, 50.490692>,  <42.877480, 41.786373, 50.496040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210533, 42.007835, 50.490692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069456, 0.080444, -0.994336,
		-0.549445, 0.828851, 0.105435,
		0.832638, 0.553656, -0.013370,
		43.460323, 42.173931, 50.486683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256004, 41.584694, 50.229759>,  <42.877480, 41.786373, 50.496040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256004, 41.584694, 50.229759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.186382, 41.206299, 50.120350>,  <42.144608, 40.979263, 50.054703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.186382, 41.206299, 50.120350>,  <42.256004, 41.584694, 50.229759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186382, 41.206299, 50.120350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264852, -0.222560, 0.938254,
		-0.948450, 0.235753, -0.211808,
		-0.174056, -0.945985, -0.273527,
		42.134167, 40.922504, 50.038292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622452, 41.340496, 50.550274>,  <42.256004, 41.584694, 50.229759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622452, 41.340496, 50.550274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.780796, 40.987671, 50.448090>,  <41.875801, 40.775974, 50.386780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.780796, 40.987671, 50.448090>,  <41.622452, 41.340496, 50.550274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780796, 40.987671, 50.448090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301991, -0.387750, 0.870891,
		-0.867236, -0.267603, -0.419869,
		0.395857, -0.882065, -0.255457,
		41.899551, 40.723053, 50.371452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028996, 40.868385, 50.565327>,  <41.622452, 41.340496, 50.550274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028996, 40.868385, 50.565327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.375622, 40.678078, 50.625607>,  <41.583595, 40.563892, 50.661774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.375622, 40.678078, 50.625607>,  <41.028996, 40.868385, 50.565327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375622, 40.678078, 50.625607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364811, -0.397823, 0.841813,
		-0.340554, -0.784464, -0.518305,
		0.866566, -0.475766, 0.150701,
		41.635590, 40.535347, 50.670815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905926, 40.127193, 50.689259>,  <41.028996, 40.868385, 50.565327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905926, 40.127193, 50.689259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259892, 40.228745, 50.845455>,  <41.472271, 40.289673, 50.939171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.259892, 40.228745, 50.845455>,  <40.905926, 40.127193, 50.689259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259892, 40.228745, 50.845455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295194, -0.342793, 0.891826,
		0.360269, -0.904456, -0.228399,
		0.884911, 0.253875, 0.390488,
		41.525364, 40.304909, 50.962601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061333, 39.547283, 51.220512>,  <40.905926, 40.127193, 50.689259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061333, 39.547283, 51.220512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.313610, 39.843697, 51.312687>,  <41.464977, 40.021545, 51.367992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.313610, 39.843697, 51.312687>,  <41.061333, 39.547283, 51.220512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313610, 39.843697, 51.312687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100271, -0.216641, 0.971088,
		0.769528, -0.635563, -0.062330,
		0.630691, 0.741030, 0.230440,
		41.502819, 40.066006, 51.381821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636578, 39.317760, 51.813374>,  <41.061333, 39.547283, 51.220512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636578, 39.317760, 51.813374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.626553, 39.717583, 51.819805>,  <41.620537, 39.957478, 51.823666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.626553, 39.717583, 51.819805>,  <41.636578, 39.317760, 51.813374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626553, 39.717583, 51.819805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060954, -0.017585, 0.997986,
		0.997826, 0.024037, 0.061368,
		-0.025067, 0.999556, 0.016081,
		41.619034, 40.017448, 51.824631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128368, 39.478275, 52.238998>,  <41.636578, 39.317760, 51.813374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128368, 39.478275, 52.238998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.857269, 39.772392, 52.239799>,  <41.694611, 39.948864, 52.240280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.857269, 39.772392, 52.239799>,  <42.128368, 39.478275, 52.238998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857269, 39.772392, 52.239799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173896, -0.162935, 0.971191,
		0.714435, 0.657875, 0.238293,
		-0.677748, 0.735291, 0.002005,
		41.653946, 39.992981, 52.240402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299274, 39.780022, 52.865959>,  <42.128368, 39.478275, 52.238998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299274, 39.780022, 52.865959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.942078, 39.941582, 52.786533>,  <41.727760, 40.038517, 52.738876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.942078, 39.941582, 52.786533>,  <42.299274, 39.780022, 52.865959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942078, 39.941582, 52.786533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238101, -0.049555, 0.969975,
		0.381932, 0.913460, 0.140421,
		-0.892993, 0.403899, -0.198569,
		41.674179, 40.062752, 52.726963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160736, 40.258198, 53.387341>,  <42.299274, 39.780022, 52.865959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160736, 40.258198, 53.387341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798737, 40.190918, 53.231045>,  <41.581535, 40.150551, 53.137268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.798737, 40.190918, 53.231045>,  <42.160736, 40.258198, 53.387341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798737, 40.190918, 53.231045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419483, 0.200101, 0.885434,
		-0.070739, 0.965230, -0.251647,
		-0.905003, -0.168196, -0.390743,
		41.527237, 40.140461, 53.113823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780403, 40.866013, 53.463261>,  <42.160736, 40.258198, 53.387341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780403, 40.866013, 53.463261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.531853, 40.553238, 53.483143>,  <41.382721, 40.365574, 53.495071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.531853, 40.553238, 53.483143>,  <41.780403, 40.866013, 53.463261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531853, 40.553238, 53.483143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372231, 0.350430, 0.859443,
		-0.689445, 0.515537, -0.508809,
		-0.621377, -0.781934, 0.049704,
		41.345440, 40.318657, 53.498055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012699, 41.039200, 53.494984>,  <41.780403, 40.866013, 53.463261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012699, 41.039200, 53.494984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073936, 40.688873, 53.678070>,  <41.110680, 40.478676, 53.787922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073936, 40.688873, 53.678070>,  <41.012699, 41.039200, 53.494984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073936, 40.688873, 53.678070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434913, 0.356199, 0.827027,
		-0.887363, -0.325680, -0.326372,
		0.153093, -0.875817, 0.457721,
		41.119865, 40.426128, 53.815388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383003, 40.933468, 53.828556>,  <41.012699, 41.039200, 53.494984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383003, 40.933468, 53.828556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637638, 40.691116, 54.019413>,  <40.790421, 40.545704, 54.133926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.637638, 40.691116, 54.019413>,  <40.383003, 40.933468, 53.828556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637638, 40.691116, 54.019413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387815, 0.283278, 0.877128,
		-0.666599, -0.743412, -0.054638,
		0.636589, -0.605882, 0.477139,
		40.828613, 40.509354, 54.162556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936901, 40.623367, 54.249176>,  <40.383003, 40.933468, 53.828556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936901, 40.623367, 54.249176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301044, 40.544098, 54.394485>,  <40.519531, 40.496536, 54.481670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.301044, 40.544098, 54.394485>,  <39.936901, 40.623367, 54.249176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301044, 40.544098, 54.394485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318444, 0.225110, 0.920825,
		-0.264263, -0.953966, 0.141823,
		0.910362, -0.198177, 0.363273,
		40.574154, 40.484646, 54.503468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860825, 40.136208, 54.625866>,  <39.936901, 40.623367, 54.249176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860825, 40.136208, 54.625866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.189796, 40.320557, 54.759258>,  <40.387180, 40.431164, 54.839294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.189796, 40.320557, 54.759258>,  <39.860825, 40.136208, 54.625866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189796, 40.320557, 54.759258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426682, 0.112056, 0.897433,
		0.376232, -0.880365, 0.288803,
		0.822430, 0.460870, 0.333477,
		40.436527, 40.458817, 54.859303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528820, 39.514835, 54.846889>,  <39.860825, 40.136208, 54.625866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528820, 39.514835, 54.846889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141556, 39.603210, 54.799816>,  <38.909199, 39.656235, 54.771572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141556, 39.603210, 54.799816>,  <39.528820, 39.514835, 54.846889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141556, 39.603210, 54.799816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084121, -0.155629, -0.984227,
		-0.235770, -0.962790, 0.132088,
		-0.968161, 0.220940, -0.117683,
		38.851109, 39.669491, 54.764511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278633, 39.029465, 54.382107>,  <39.528820, 39.514835, 54.846889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278633, 39.029465, 54.382107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039894, 39.348785, 54.349880>,  <38.896652, 39.540379, 54.330544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039894, 39.348785, 54.349880>,  <39.278633, 39.029465, 54.382107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039894, 39.348785, 54.349880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027802, -0.120923, -0.992272,
		-0.801872, -0.589996, 0.094367,
		-0.596848, 0.798299, -0.080562,
		38.860840, 39.588276, 54.325710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940666, 38.891533, 53.750057>,  <39.278633, 39.029465, 54.382107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940666, 38.891533, 53.750057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845749, 39.272629, 53.825928>,  <38.788799, 39.501286, 53.871449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.845749, 39.272629, 53.825928>,  <38.940666, 38.891533, 53.750057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845749, 39.272629, 53.825928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227638, 0.135280, -0.964303,
		-0.944391, -0.271998, 0.184780,
		-0.237292, 0.952742, 0.189674,
		38.774563, 39.558453, 53.882832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158092, 39.033276, 53.485020>,  <38.940666, 38.891533, 53.750057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158092, 39.033276, 53.485020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327614, 39.395531, 53.479317>,  <38.429329, 39.612885, 53.475895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327614, 39.395531, 53.479317>,  <38.158092, 39.033276, 53.485020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327614, 39.395531, 53.479317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469365, 0.206131, -0.858607,
		-0.774650, 0.370575, 0.512436,
		0.423808, 0.905640, -0.014255,
		38.454758, 39.667221, 53.475040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588455, 39.464901, 53.137070>,  <38.158092, 39.033276, 53.485020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588455, 39.464901, 53.137070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935394, 39.663345, 53.121132>,  <38.143559, 39.782413, 53.111568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935394, 39.663345, 53.121132>,  <37.588455, 39.464901, 53.137070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935394, 39.663345, 53.121132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184222, 0.245642, -0.951695,
		-0.462359, 0.832787, 0.304450,
		0.867344, 0.496111, -0.039842,
		38.195599, 39.812180, 53.109180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390026, 40.059898, 52.717636>,  <37.588455, 39.464901, 53.137070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390026, 40.059898, 52.717636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789375, 40.037468, 52.713600>,  <38.028984, 40.024010, 52.711178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789375, 40.037468, 52.713600>,  <37.390026, 40.059898, 52.717636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789375, 40.037468, 52.713600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008036, 0.313931, -0.949412,
		0.056411, 0.947788, 0.313871,
		0.998375, -0.056079, -0.010093,
		38.088886, 40.020645, 52.710571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611237, 40.804146, 52.484634>,  <37.390026, 40.059898, 52.717636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611237, 40.804146, 52.484634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888210, 40.522797, 52.420387>,  <38.054394, 40.353985, 52.381840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888210, 40.522797, 52.420387>,  <37.611237, 40.804146, 52.484634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888210, 40.522797, 52.420387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121851, 0.333434, -0.934866,
		0.711118, 0.627762, 0.316588,
		0.692434, -0.703376, -0.160617,
		38.095940, 40.311783, 52.372204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108227, 41.132992, 52.166126>,  <37.611237, 40.804146, 52.484634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108227, 41.132992, 52.166126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156693, 40.745819, 52.078102>,  <38.185772, 40.513515, 52.025288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.156693, 40.745819, 52.078102>,  <38.108227, 41.132992, 52.166126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156693, 40.745819, 52.078102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226947, 0.242833, -0.943147,
		0.966341, 0.064331, 0.249091,
		0.121161, -0.967933, -0.220060,
		38.193043, 40.455441, 52.012085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728855, 41.191628, 51.640381>,  <38.108227, 41.132992, 52.166126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728855, 41.191628, 51.640381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557907, 40.831825, 51.604057>,  <38.455338, 40.615944, 51.582264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557907, 40.831825, 51.604057>,  <38.728855, 41.191628, 51.640381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557907, 40.831825, 51.604057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209989, -0.001061, -0.977703,
		0.879353, -0.436907, 0.189340,
		-0.427366, -0.899506, -0.090813,
		38.429699, 40.561974, 51.576813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175644, 40.573769, 51.470474>,  <38.728855, 41.191628, 51.640381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175644, 40.573769, 51.470474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809158, 40.494873, 51.330963>,  <38.589268, 40.447536, 51.247257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809158, 40.494873, 51.330963>,  <39.175644, 40.573769, 51.470474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809158, 40.494873, 51.330963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356910, -0.006120, -0.934119,
		0.182111, -0.980336, 0.076004,
		-0.916215, -0.197240, -0.348778,
		38.534294, 40.435699, 51.226330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370117, 40.182037, 50.945820>,  <39.175644, 40.573769, 51.470474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370117, 40.182037, 50.945820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982422, 40.245697, 50.870728>,  <38.749805, 40.283894, 50.825672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982422, 40.245697, 50.870728>,  <39.370117, 40.182037, 50.945820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982422, 40.245697, 50.870728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187371, -0.017414, -0.982135,
		-0.159578, -0.987100, -0.012942,
		-0.969240, 0.159153, -0.187733,
		38.691650, 40.293442, 50.814407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216579, 39.713711, 50.518139>,  <39.370117, 40.182037, 50.945820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216579, 39.713711, 50.518139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920349, 39.976875, 50.463436>,  <38.742611, 40.134773, 50.430614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920349, 39.976875, 50.463436>,  <39.216579, 39.713711, 50.518139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920349, 39.976875, 50.463436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036304, -0.164050, -0.985784,
		-0.670993, -0.735011, 0.097606,
		-0.740574, 0.657911, -0.136760,
		38.698177, 40.174248, 50.422409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731743, 39.444515, 49.932949>,  <39.216579, 39.713711, 50.518139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731743, 39.444515, 49.932949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670662, 39.839706, 49.942631>,  <38.634014, 40.076820, 49.948441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.670662, 39.839706, 49.942631>,  <38.731743, 39.444515, 49.932949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670662, 39.839706, 49.942631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142396, 0.002241, -0.989807,
		-0.977961, -0.154588, 0.140342,
		-0.152698, 0.987976, 0.024204,
		38.624851, 40.136101, 49.949890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071201, 39.631752, 49.543972>,  <38.731743, 39.444515, 49.932949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071201, 39.631752, 49.543972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.318359, 39.946228, 49.548176>,  <38.466652, 40.134914, 49.550697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.318359, 39.946228, 49.548176>,  <38.071201, 39.631752, 49.543972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318359, 39.946228, 49.548176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018765, 0.028110, -0.999429,
		-0.786038, 0.617343, 0.032122,
		0.617893, 0.786192, 0.010511,
		38.503727, 40.182087, 49.551331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.584858, 42.581642, 53.770317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.843925, 42.775551, 54.005440>,  <37.999367, 42.891895, 54.146515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.843925, 42.775551, 54.005440>,  <37.584858, 42.581642, 53.770317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843925, 42.775551, 54.005440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541794, -0.249401, 0.802657,
		0.535707, -0.838327, 0.101118,
		0.647670, 0.484774, 0.587807,
		38.038227, 42.920982, 54.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843185, 42.146660, 54.337078>,  <37.584858, 42.581642, 53.770317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843185, 42.146660, 54.337078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918465, 42.517151, 54.467731>,  <37.963634, 42.739445, 54.546124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.918465, 42.517151, 54.467731>,  <37.843185, 42.146660, 54.337078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918465, 42.517151, 54.467731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434132, -0.219867, 0.873606,
		0.880971, -0.306216, 0.360725,
		0.188200, 0.926224, 0.326635,
		37.974926, 42.795017, 54.565723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015240, 42.076279, 55.015923>,  <37.843185, 42.146660, 54.337078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015240, 42.076279, 55.015923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916534, 42.463860, 55.009846>,  <37.857311, 42.696407, 55.006199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.916534, 42.463860, 55.009846>,  <38.015240, 42.076279, 55.015923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916534, 42.463860, 55.009846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469386, -0.105792, 0.876633,
		0.847811, 0.223454, 0.480921,
		-0.246765, 0.968956, -0.015195,
		37.842506, 42.754547, 55.005287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245823, 42.405594, 55.643764>,  <38.015240, 42.076279, 55.015923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245823, 42.405594, 55.643764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938354, 42.603485, 55.481583>,  <37.753876, 42.722221, 55.384274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938354, 42.603485, 55.481583>,  <38.245823, 42.405594, 55.643764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938354, 42.603485, 55.481583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537817, -0.156735, 0.828364,
		0.346268, 0.854796, 0.386552,
		-0.768669, 0.494730, -0.405451,
		37.707752, 42.751904, 55.359947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892380, 42.695812, 56.244751>,  <38.245823, 42.405594, 55.643764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892380, 42.695812, 56.244751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627266, 42.698616, 55.945240>,  <37.468197, 42.700298, 55.765533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627266, 42.698616, 55.945240>,  <37.892380, 42.695812, 56.244751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627266, 42.698616, 55.945240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733728, -0.205766, 0.647537,
		-0.149532, 0.978576, 0.141524,
		-0.662785, 0.007013, -0.748777,
		37.428429, 42.700722, 55.720608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319386, 43.170734, 56.423435>,  <37.892380, 42.695812, 56.244751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319386, 43.170734, 56.423435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.170685, 42.942108, 56.130829>,  <37.081463, 42.804932, 55.955265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.170685, 42.942108, 56.130829>,  <37.319386, 43.170734, 56.423435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170685, 42.942108, 56.130829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878604, -0.037817, 0.476051,
		-0.299757, 0.819686, -0.488120,
		-0.371753, -0.571564, -0.731515,
		37.059158, 42.770638, 55.911373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647316, 43.389370, 56.343170>,  <37.319386, 43.170734, 56.423435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647316, 43.389370, 56.343170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.667797, 43.018341, 56.195126>,  <36.680088, 42.795723, 56.106300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.667797, 43.018341, 56.195126>,  <36.647316, 43.389370, 56.343170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667797, 43.018341, 56.195126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824789, -0.248243, 0.508034,
		-0.563117, 0.279250, -0.777765,
		0.051206, -0.927575, -0.370112,
		36.683159, 42.740070, 56.084091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952538, 43.227779, 56.329529>,  <36.647316, 43.389370, 56.343170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952538, 43.227779, 56.329529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161758, 42.886932, 56.322578>,  <36.287292, 42.682423, 56.318409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.161758, 42.886932, 56.322578>,  <35.952538, 43.227779, 56.329529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161758, 42.886932, 56.322578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687930, -0.434130, 0.581622,
		-0.503156, -0.292267, -0.813274,
		0.523055, -0.852122, -0.017375,
		36.318676, 42.631294, 56.317368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410538, 42.713608, 56.253098>,  <35.952538, 43.227779, 56.329529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410538, 42.713608, 56.253098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.728783, 42.520401, 56.399357>,  <35.919731, 42.404476, 56.487110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.728783, 42.520401, 56.399357>,  <35.410538, 42.713608, 56.253098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728783, 42.520401, 56.399357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503458, -0.191484, 0.842534,
		-0.336943, -0.854418, -0.395525,
		0.795613, -0.483016, 0.365644,
		35.967468, 42.375496, 56.509048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143829, 42.142799, 56.631313>,  <35.410538, 42.713608, 56.253098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143829, 42.142799, 56.631313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511417, 42.200523, 56.778099>,  <35.731972, 42.235157, 56.866173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511417, 42.200523, 56.778099>,  <35.143829, 42.142799, 56.631313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511417, 42.200523, 56.778099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352707, -0.115298, 0.928603,
		0.176315, -0.982793, -0.055057,
		0.918973, 0.144307, 0.366967,
		35.787109, 42.243816, 56.888187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244114, 41.569653, 57.062630>,  <35.143829, 42.142799, 56.631313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244114, 41.569653, 57.062630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506062, 41.846573, 57.183868>,  <35.663231, 42.012726, 57.256611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506062, 41.846573, 57.183868>,  <35.244114, 41.569653, 57.062630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506062, 41.846573, 57.183868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312958, -0.116634, 0.942578,
		0.687898, -0.712122, 0.140280,
		0.654870, 0.692299, 0.303097,
		35.702522, 42.054264, 57.274799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578537, 41.335648, 57.572296>,  <35.244114, 41.569653, 57.062630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578537, 41.335648, 57.572296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654076, 41.719429, 57.655991>,  <35.699398, 41.949699, 57.706207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654076, 41.719429, 57.655991>,  <35.578537, 41.335648, 57.572296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654076, 41.719429, 57.655991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083633, -0.196584, 0.976914,
		0.978439, -0.201984, 0.043118,
		0.188845, 0.959457, 0.209238,
		35.710728, 42.007267, 57.718761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095699, 41.508560, 58.085766>,  <35.578537, 41.335648, 57.572296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095699, 41.508560, 58.085766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875519, 41.841095, 58.116455>,  <35.743408, 42.040615, 58.134869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875519, 41.841095, 58.116455>,  <36.095699, 41.508560, 58.085766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875519, 41.841095, 58.116455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106854, -0.161292, 0.981105,
		0.827999, 0.531856, 0.177615,
		-0.550454, 0.831333, 0.076719,
		35.710384, 42.090496, 58.139469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216255, 41.883232, 58.808590>,  <36.095699, 41.508560, 58.085766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216255, 41.883232, 58.808590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861023, 42.027122, 58.694115>,  <35.647881, 42.113457, 58.625431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.861023, 42.027122, 58.694115>,  <36.216255, 41.883232, 58.808590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861023, 42.027122, 58.694115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285735, 0.055703, 0.956688,
		0.360084, 0.931395, 0.053316,
		-0.888085, 0.359722, -0.286190,
		35.594597, 42.135040, 58.608257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454437, 41.737129, 59.592228>,  <36.216255, 41.883232, 58.808590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454437, 41.737129, 59.592228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621475, 41.382446, 59.671600>,  <36.721699, 41.169636, 59.719223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621475, 41.382446, 59.671600>,  <36.454437, 41.737129, 59.592228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621475, 41.382446, 59.671600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332246, -0.054252, -0.941631,
		0.845712, 0.459145, 0.271949,
		0.417592, -0.886703, 0.198431,
		36.746754, 41.116436, 59.731129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152267, 41.817574, 59.396301>,  <36.454437, 41.737129, 59.592228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152267, 41.817574, 59.396301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046730, 41.431892, 59.385750>,  <36.983406, 41.200481, 59.379421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.046730, 41.431892, 59.385750>,  <37.152267, 41.817574, 59.396301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046730, 41.431892, 59.385750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407003, -0.086498, -0.909322,
		0.874492, -0.250652, 0.415256,
		-0.263842, -0.964205, -0.026374,
		36.967579, 41.142632, 59.377838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691357, 41.470135, 58.918232>,  <37.152267, 41.817574, 59.396301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691357, 41.470135, 58.918232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392963, 41.204842, 58.942337>,  <37.213928, 41.045666, 58.956802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392963, 41.204842, 58.942337>,  <37.691357, 41.470135, 58.918232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392963, 41.204842, 58.942337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309101, -0.424981, -0.850793,
		0.589883, -0.616051, 0.522034,
		-0.745986, -0.663229, 0.060267,
		37.169167, 41.005875, 58.960419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964073, 40.838112, 58.830276>,  <37.691357, 41.470135, 58.918232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964073, 40.838112, 58.830276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583748, 40.748932, 58.744247>,  <37.355553, 40.695423, 58.692631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583748, 40.748932, 58.744247>,  <37.964073, 40.838112, 58.830276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583748, 40.748932, 58.744247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306633, -0.578649, -0.755739,
		0.044038, -0.784512, 0.618547,
		-0.950809, -0.222948, -0.215075,
		37.298504, 40.682049, 58.679726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994961, 40.145771, 58.566936>,  <37.964073, 40.838112, 58.830276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994961, 40.145771, 58.566936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641548, 40.285583, 58.442230>,  <37.429501, 40.369473, 58.367405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.641548, 40.285583, 58.442230>,  <37.994961, 40.145771, 58.566936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641548, 40.285583, 58.442230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168274, -0.384303, -0.907742,
		-0.437097, -0.854482, 0.280727,
		-0.883533, 0.349533, -0.311765,
		37.376488, 40.390442, 58.348701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589314, 39.494781, 58.382999>,  <37.994961, 40.145771, 58.566936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589314, 39.494781, 58.382999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424957, 39.813049, 58.204971>,  <37.326344, 40.004009, 58.098156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424957, 39.813049, 58.204971>,  <37.589314, 39.494781, 58.382999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424957, 39.813049, 58.204971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092086, -0.449464, -0.888539,
		-0.907023, -0.406075, 0.111409,
		-0.410888, 0.795667, -0.445068,
		37.301689, 40.051750, 58.071449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095142, 39.317284, 57.917625>,  <37.589314, 39.494781, 58.382999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095142, 39.317284, 57.917625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229900, 39.675117, 57.800179>,  <37.310757, 39.889820, 57.729710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229900, 39.675117, 57.800179>,  <37.095142, 39.317284, 57.917625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229900, 39.675117, 57.800179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188935, -0.369734, -0.909725,
		-0.922390, 0.251011, -0.293582,
		0.336898, 0.894589, -0.293614,
		37.330971, 39.943493, 57.712093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801651, 39.378197, 57.208836>,  <37.095142, 39.317284, 57.917625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801651, 39.378197, 57.208836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.077892, 39.666687, 57.230362>,  <37.243637, 39.839783, 57.243279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.077892, 39.666687, 57.230362>,  <36.801651, 39.378197, 57.208836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077892, 39.666687, 57.230362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173759, -0.093222, -0.980366,
		-0.702052, 0.686394, -0.189699,
		0.690602, 0.721230, 0.053821,
		37.285072, 39.883057, 57.246510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785000, 39.762623, 56.537762>,  <36.801651, 39.378197, 57.208836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785000, 39.762623, 56.537762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145958, 39.820412, 56.700150>,  <37.362534, 39.855087, 56.797585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145958, 39.820412, 56.700150>,  <36.785000, 39.762623, 56.537762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145958, 39.820412, 56.700150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417449, -0.059431, -0.906755,
		-0.106875, 0.987722, -0.113940,
		0.902394, 0.144474, 0.405972,
		37.416676, 39.863754, 56.821941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081497, 40.131279, 56.012115>,  <36.785000, 39.762623, 56.537762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081497, 40.131279, 56.012115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388226, 40.008682, 56.237701>,  <37.572262, 39.935123, 56.373055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388226, 40.008682, 56.237701>,  <37.081497, 40.131279, 56.012115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388226, 40.008682, 56.237701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576893, -0.056116, -0.814890,
		0.281402, 0.950219, 0.133780,
		0.766816, -0.306489, 0.563966,
		37.618271, 39.916737, 56.406891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646797, 40.660450, 55.849918>,  <37.081497, 40.131279, 56.012115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646797, 40.660450, 55.849918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.797958, 40.326920, 56.010880>,  <37.888653, 40.126801, 56.107456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.797958, 40.326920, 56.010880>,  <37.646797, 40.660450, 55.849918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797958, 40.326920, 56.010880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673630, -0.050537, -0.737339,
		0.635148, 0.549709, 0.542592,
		0.377901, -0.833826, 0.402399,
		37.911327, 40.076771, 56.131599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358494, 40.784779, 55.740425>,  <37.646797, 40.660450, 55.849918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358494, 40.784779, 55.740425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310341, 40.393120, 55.805878>,  <38.281448, 40.158123, 55.845150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310341, 40.393120, 55.805878>,  <38.358494, 40.784779, 55.740425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310341, 40.393120, 55.805878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667816, -0.201835, -0.716439,
		0.734526, 0.023024, 0.678190,
		-0.120387, -0.979149, 0.163629,
		38.274223, 40.099377, 55.854965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004265, 40.592865, 55.732006>,  <38.358494, 40.784779, 55.740425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004265, 40.592865, 55.732006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774677, 40.274826, 55.653648>,  <38.636925, 40.084003, 55.606632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774677, 40.274826, 55.653648>,  <39.004265, 40.592865, 55.732006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774677, 40.274826, 55.653648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510979, -0.160823, -0.844415,
		0.639887, -0.584770, 0.498586,
		-0.573973, -0.795097, -0.195896,
		38.602486, 40.036297, 55.594879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408535, 40.133961, 55.351463>,  <39.004265, 40.592865, 55.732006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408535, 40.133961, 55.351463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.051292, 39.981087, 55.256561>,  <38.836945, 39.889362, 55.199619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.051292, 39.981087, 55.256561>,  <39.408535, 40.133961, 55.351463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051292, 39.981087, 55.256561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274970, -0.046402, -0.960333,
		0.356016, -0.922920, 0.146531,
		-0.893109, -0.382186, -0.237255,
		38.783360, 39.866432, 55.185383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133560, 39.791145, 55.297272>,  <39.408535, 40.133961, 55.351463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133560, 39.791145, 55.297272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353668, 40.125038, 55.305435>,  <40.485733, 40.325375, 55.310333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353668, 40.125038, 55.305435>,  <40.133560, 39.791145, 55.297272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353668, 40.125038, 55.305435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251665, 0.142504, 0.957266,
		0.796155, -0.531893, 0.288490,
		0.550274, 0.834735, 0.020404,
		40.518749, 40.375458, 55.311558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621700, 39.740154, 55.819717>,  <40.133560, 39.791145, 55.297272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621700, 39.740154, 55.819717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540665, 40.126686, 55.756275>,  <40.492043, 40.358604, 55.718208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540665, 40.126686, 55.756275>,  <40.621700, 39.740154, 55.819717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540665, 40.126686, 55.756275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148177, 0.129850, 0.980399,
		0.967988, 0.222124, 0.116882,
		-0.202593, 0.966334, -0.158607,
		40.479885, 40.416588, 55.708694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003056, 39.936489, 56.364990>,  <40.621700, 39.740154, 55.819717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003056, 39.936489, 56.364990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748642, 40.226959, 56.260590>,  <40.595993, 40.401241, 56.197948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.748642, 40.226959, 56.260590>,  <41.003056, 39.936489, 56.364990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748642, 40.226959, 56.260590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077028, 0.276800, 0.957835,
		0.767803, 0.629324, -0.120120,
		-0.636038, 0.726177, -0.261003,
		40.557831, 40.444813, 56.182289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218395, 40.599888, 56.715649>,  <41.003056, 39.936489, 56.364990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218395, 40.599888, 56.715649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.833885, 40.668991, 56.629768>,  <40.603180, 40.710453, 56.578239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.833885, 40.668991, 56.629768>,  <41.218395, 40.599888, 56.715649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833885, 40.668991, 56.629768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118285, 0.445033, 0.887668,
		0.248898, 0.878693, -0.407367,
		-0.961279, 0.172754, -0.214704,
		40.545502, 40.720818, 56.565357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112167, 41.368671, 56.810474>,  <41.218395, 40.599888, 56.715649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112167, 41.368671, 56.810474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.771507, 41.162788, 56.849995>,  <40.567112, 41.039257, 56.873707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.771507, 41.162788, 56.849995>,  <41.112167, 41.368671, 56.810474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771507, 41.162788, 56.849995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119098, 0.373642, 0.919895,
		-0.510392, 0.771666, -0.379514,
		-0.851655, -0.514707, 0.098800,
		40.516010, 41.008377, 56.879635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791519, 41.811722, 57.189484>,  <41.112167, 41.368671, 56.810474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791519, 41.811722, 57.189484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.545071, 41.499222, 57.229561>,  <40.397202, 41.311722, 57.253605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.545071, 41.499222, 57.229561>,  <40.791519, 41.811722, 57.189484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545071, 41.499222, 57.229561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244464, 0.310594, 0.918569,
		-0.748752, 0.541459, -0.382352,
		-0.616124, -0.781251, 0.100190,
		40.360233, 41.264847, 57.259617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187248, 42.108528, 57.399254>,  <40.791519, 41.811722, 57.189484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187248, 42.108528, 57.399254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178356, 41.726425, 57.517227>,  <40.173023, 41.497162, 57.588013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178356, 41.726425, 57.517227>,  <40.187248, 42.108528, 57.399254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178356, 41.726425, 57.517227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240532, 0.291452, 0.925851,
		-0.970387, -0.050362, -0.236249,
		-0.022228, -0.955259, 0.294935,
		40.171688, 41.439846, 57.605709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417908, 42.734638, 57.354149>,  <40.187248, 42.108528, 57.399254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417908, 42.734638, 57.354149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695778, 42.969650, 57.520157>,  <40.862499, 43.110657, 57.619762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.695778, 42.969650, 57.520157>,  <40.417908, 42.734638, 57.354149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695778, 42.969650, 57.520157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598280, -0.151585, -0.786818,
		-0.399365, 0.794881, -0.456807,
		0.694672, 0.587526, 0.415024,
		40.904179, 43.145908, 57.644665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710960, 43.188580, 56.784145>,  <40.417908, 42.734638, 57.354149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710960, 43.188580, 56.784145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.990742, 43.218979, 57.068398>,  <41.158611, 43.237217, 57.238949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.990742, 43.218979, 57.068398>,  <40.710960, 43.188580, 56.784145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990742, 43.218979, 57.068398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713895, -0.120957, -0.689727,
		0.033538, 0.989744, -0.138857,
		0.699449, 0.075997, 0.710631,
		41.200577, 43.241779, 57.281586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269703, 43.692814, 56.594059>,  <40.710960, 43.188580, 56.784145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269703, 43.692814, 56.594059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.436031, 43.442154, 56.857697>,  <41.535828, 43.291759, 57.015881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.436031, 43.442154, 56.857697>,  <41.269703, 43.692814, 56.594059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436031, 43.442154, 56.857697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764371, -0.151871, -0.626635,
		0.492776, 0.764362, 0.415839,
		0.415822, -0.626647, 0.659095,
		41.560780, 43.254158, 57.055424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017254, 43.878269, 56.655773>,  <41.269703, 43.692814, 56.594059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017254, 43.878269, 56.655773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981785, 43.504433, 56.793571>,  <41.960503, 43.280132, 56.876251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.981785, 43.504433, 56.793571>,  <42.017254, 43.878269, 56.655773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981785, 43.504433, 56.793571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779256, -0.280507, -0.560425,
		0.620402, 0.218759, 0.753158,
		-0.088668, -0.934591, 0.344496,
		41.955185, 43.224056, 56.896919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743793, 43.684532, 56.733856>,  <42.017254, 43.878269, 56.655773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743793, 43.684532, 56.733856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.523964, 43.352928, 56.692467>,  <42.392067, 43.153965, 56.667633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.523964, 43.352928, 56.692467>,  <42.743793, 43.684532, 56.733856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523964, 43.352928, 56.692467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630383, -0.330208, -0.702553,
		0.548253, -0.451339, 0.704068,
		-0.549578, -0.829009, -0.103478,
		42.359089, 43.104225, 56.661423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277363, 43.240818, 56.624905>,  <42.743793, 43.684532, 56.733856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277363, 43.240818, 56.624905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.932709, 43.085960, 56.493637>,  <42.725914, 42.993046, 56.414875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.932709, 43.085960, 56.493637>,  <43.277363, 43.240818, 56.624905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932709, 43.085960, 56.493637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425810, -0.199607, -0.882520,
		0.276156, -0.900154, 0.336839,
		-0.861640, -0.387143, -0.328172,
		42.674217, 42.969818, 56.395184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444973, 42.601673, 56.277489>,  <43.277363, 43.240818, 56.624905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444973, 42.601673, 56.277489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.084633, 42.704643, 56.137657>,  <42.868431, 42.766426, 56.053757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.084633, 42.704643, 56.137657>,  <43.444973, 42.601673, 56.277489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084633, 42.704643, 56.137657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271037, -0.295538, -0.916076,
		-0.339142, -0.919992, 0.196461,
		-0.900845, 0.257432, -0.349581,
		42.814381, 42.781872, 56.032784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.842930, 45.124855, 58.845387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.717709, 44.884392, 58.551285>,  <36.642574, 44.740112, 58.374825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.717709, 44.884392, 58.551285>,  <36.842930, 45.124855, 58.845387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717709, 44.884392, 58.551285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230635, 0.702878, -0.672882,
		0.921305, -0.380226, -0.081393,
		-0.313056, -0.601158, -0.735258,
		36.623791, 44.704044, 58.330708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372456, 45.212341, 58.343075>,  <36.842930, 45.124855, 58.845387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372456, 45.212341, 58.343075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.062904, 45.045433, 58.152496>,  <36.877174, 44.945290, 58.038147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.062904, 45.045433, 58.152496>,  <37.372456, 45.212341, 58.343075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062904, 45.045433, 58.152496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140228, 0.620719, -0.771391,
		0.617615, -0.663774, -0.421848,
		-0.773878, -0.417268, -0.476445,
		36.830742, 44.920250, 58.009563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648754, 45.003639, 57.612679>,  <37.372456, 45.212341, 58.343075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648754, 45.003639, 57.612679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.249775, 45.015495, 57.586693>,  <37.010387, 45.022610, 57.571102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.249775, 45.015495, 57.586693>,  <37.648754, 45.003639, 57.612679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249775, 45.015495, 57.586693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070037, 0.583373, -0.809179,
		0.013918, -0.811664, -0.583959,
		-0.997448, 0.029636, -0.064966,
		36.950542, 45.024387, 57.567204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574615, 44.795139, 56.910362>,  <37.648754, 45.003639, 57.612679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574615, 44.795139, 56.910362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251419, 44.997269, 57.031563>,  <37.057503, 45.118546, 57.104282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.251419, 44.997269, 57.031563>,  <37.574615, 44.795139, 56.910362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251419, 44.997269, 57.031563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064223, 0.435657, -0.897819,
		-0.585689, -0.744886, -0.319552,
		-0.807988, 0.505320, 0.302998,
		37.009022, 45.148865, 57.122463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098763, 44.568829, 56.371029>,  <37.574615, 44.795139, 56.910362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098763, 44.568829, 56.371029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.956413, 44.907242, 56.529812>,  <36.871002, 45.110291, 56.625084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.956413, 44.907242, 56.529812>,  <37.098763, 44.568829, 56.371029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956413, 44.907242, 56.529812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121086, 0.462933, -0.878084,
		-0.926656, -0.264421, -0.267189,
		-0.355874, 0.846035, 0.396962,
		36.849651, 45.161053, 56.648899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680172, 44.896931, 55.881569>,  <37.098763, 44.568829, 56.371029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680172, 44.896931, 55.881569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753128, 45.202339, 56.129368>,  <36.796902, 45.385586, 56.278046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.753128, 45.202339, 56.129368>,  <36.680172, 44.896931, 55.881569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753128, 45.202339, 56.129368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192567, 0.590121, -0.784012,
		-0.964185, 0.262287, -0.039398,
		0.182386, 0.763520, 0.619494,
		36.807842, 45.431396, 56.315216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250755, 45.372879, 55.601421>,  <36.680172, 44.896931, 55.881569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250755, 45.372879, 55.601421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.527328, 45.560760, 55.820984>,  <36.693272, 45.673489, 55.952721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.527328, 45.560760, 55.820984>,  <36.250755, 45.372879, 55.601421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527328, 45.560760, 55.820984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306854, 0.496913, -0.811738,
		-0.654040, 0.729694, 0.199448,
		0.691428, 0.469707, 0.548910,
		36.734756, 45.701672, 55.985657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163239, 46.163322, 55.469090>,  <36.250755, 45.372879, 55.601421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163239, 46.163322, 55.469090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.527550, 46.077370, 55.610119>,  <36.746136, 46.025799, 55.694736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.527550, 46.077370, 55.610119>,  <36.163239, 46.163322, 55.469090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527550, 46.077370, 55.610119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407847, 0.601327, -0.687071,
		-0.064376, 0.769566, 0.635314,
		0.910778, -0.214880, 0.352577,
		36.800781, 46.012905, 55.715893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550533, 46.745487, 55.408550>,  <36.163239, 46.163322, 55.469090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550533, 46.745487, 55.408550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839344, 46.479042, 55.483356>,  <37.012630, 46.319176, 55.528240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.839344, 46.479042, 55.483356>,  <36.550533, 46.745487, 55.408550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839344, 46.479042, 55.483356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605688, 0.477925, -0.636184,
		0.334391, 0.572613, 0.748530,
		0.722028, -0.666110, 0.187011,
		37.055954, 46.279209, 55.539459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144558, 47.187588, 55.481228>,  <36.550533, 46.745487, 55.408550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144558, 47.187588, 55.481228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276943, 46.821281, 55.390152>,  <37.356377, 46.601498, 55.335506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.276943, 46.821281, 55.390152>,  <37.144558, 47.187588, 55.481228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276943, 46.821281, 55.390152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510622, 0.376708, -0.772889,
		0.793553, 0.139539, 0.592286,
		0.330966, -0.915762, -0.227686,
		37.376232, 46.546555, 55.321846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820843, 47.212734, 55.331882>,  <37.144558, 47.187588, 55.481228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820843, 47.212734, 55.331882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726364, 46.873650, 55.141891>,  <37.669678, 46.670200, 55.027897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.726364, 46.873650, 55.141891>,  <37.820843, 47.212734, 55.331882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726364, 46.873650, 55.141891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437784, 0.343551, -0.830854,
		0.867500, -0.404183, 0.289966,
		-0.236199, -0.847708, -0.474975,
		37.655506, 46.619339, 54.999397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426037, 46.955395, 55.018894>,  <37.820843, 47.212734, 55.331882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426037, 46.955395, 55.018894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.146088, 46.739960, 54.831230>,  <37.978119, 46.610699, 54.718632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.146088, 46.739960, 54.831230>,  <38.426037, 46.955395, 55.018894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146088, 46.739960, 54.831230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431087, 0.205218, -0.878664,
		0.569516, -0.817196, 0.088552,
		-0.699869, -0.538587, -0.469157,
		37.936127, 46.578384, 54.690483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865726, 46.465355, 55.425915>,  <38.426037, 46.955395, 55.018894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865726, 46.465355, 55.425915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240837, 46.478462, 55.564194>,  <39.465904, 46.486328, 55.647163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240837, 46.478462, 55.564194>,  <38.865726, 46.465355, 55.425915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240837, 46.478462, 55.564194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340462, -0.109099, 0.933907,
		0.068321, -0.993491, -0.091152,
		0.937773, 0.032772, 0.345700,
		39.522167, 46.488293, 55.667904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948639, 45.975559, 55.922958>,  <38.865726, 46.465355, 55.425915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948639, 45.975559, 55.922958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240723, 46.236671, 56.003624>,  <39.415974, 46.393337, 56.052021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.240723, 46.236671, 56.003624>,  <38.948639, 45.975559, 55.922958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240723, 46.236671, 56.003624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271038, 0.005831, 0.962551,
		0.627157, -0.757526, 0.181186,
		0.730214, 0.652779, 0.201662,
		39.459785, 46.432507, 56.064121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207722, 45.777493, 56.588745>,  <38.948639, 45.975559, 55.922958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207722, 45.777493, 56.588745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337681, 46.149063, 56.517708>,  <39.415657, 46.372005, 56.475086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337681, 46.149063, 56.517708>,  <39.207722, 45.777493, 56.588745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337681, 46.149063, 56.517708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094742, 0.218802, 0.971159,
		0.940992, -0.298702, 0.159096,
		0.324898, 0.928926, -0.177592,
		39.435150, 46.427742, 56.464432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740849, 45.872726, 57.002522>,  <39.207722, 45.777493, 56.588745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740849, 45.872726, 57.002522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.651421, 46.248253, 56.897717>,  <39.597763, 46.473568, 56.834835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.651421, 46.248253, 56.897717>,  <39.740849, 45.872726, 57.002522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651421, 46.248253, 56.897717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043460, 0.258946, 0.964913,
		0.973719, 0.227112, -0.017091,
		-0.223569, 0.938811, -0.262011,
		39.584351, 46.529896, 56.819115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234417, 46.297173, 57.358810>,  <39.740849, 45.872726, 57.002522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234417, 46.297173, 57.358810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.913040, 46.519447, 57.273308>,  <39.720215, 46.652813, 57.222004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.913040, 46.519447, 57.273308>,  <40.234417, 46.297173, 57.358810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913040, 46.519447, 57.273308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114579, 0.208009, 0.971393,
		0.584253, 0.804951, -0.103454,
		-0.803443, 0.555685, -0.213761,
		39.672009, 46.686153, 57.209179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339848, 46.807247, 57.751991>,  <40.234417, 46.297173, 57.358810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339848, 46.807247, 57.751991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950844, 46.832794, 57.662418>,  <39.717442, 46.848122, 57.608677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950844, 46.832794, 57.662418>,  <40.339848, 46.807247, 57.751991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950844, 46.832794, 57.662418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212501, 0.149814, 0.965608,
		0.095215, 0.986650, -0.132124,
		-0.972511, 0.063864, -0.223928,
		39.659092, 46.851952, 57.595242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059921, 47.346916, 58.086720>,  <40.339848, 46.807247, 57.751991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059921, 47.346916, 58.086720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.736988, 47.119293, 58.024246>,  <39.543228, 46.982719, 57.986763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.736988, 47.119293, 58.024246>,  <40.059921, 47.346916, 58.086720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736988, 47.119293, 58.024246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175231, -0.021549, 0.984292,
		-0.563482, 0.822017, -0.082320,
		-0.807330, -0.569056, -0.156185,
		39.494789, 46.948578, 57.977390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585758, 47.621845, 58.535156>,  <40.059921, 47.346916, 58.086720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585758, 47.621845, 58.535156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.443153, 47.256767, 58.455265>,  <39.357590, 47.037720, 58.407330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.443153, 47.256767, 58.455265>,  <39.585758, 47.621845, 58.535156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443153, 47.256767, 58.455265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107354, -0.172345, 0.979169,
		-0.928104, 0.370523, -0.036539,
		-0.356507, -0.912694, -0.199731,
		39.336201, 46.982960, 58.395344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029179, 47.626118, 59.031971>,  <39.585758, 47.621845, 58.535156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029179, 47.626118, 59.031971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065437, 47.242813, 58.923515>,  <39.087193, 47.012829, 58.858440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.065437, 47.242813, 58.923515>,  <39.029179, 47.626118, 59.031971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065437, 47.242813, 58.923515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151061, -0.282343, 0.947345,
		-0.984360, -0.044911, -0.170349,
		0.090643, -0.958262, -0.271142,
		39.092628, 46.955334, 58.842171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438152, 47.166374, 59.264561>,  <39.029179, 47.626118, 59.031971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438152, 47.166374, 59.264561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.735329, 46.902107, 59.221558>,  <38.913635, 46.743549, 59.195755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.735329, 46.902107, 59.221558>,  <38.438152, 47.166374, 59.264561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735329, 46.902107, 59.221558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194892, -0.367160, 0.909511,
		-0.640354, -0.654763, -0.401537,
		0.742943, -0.660665, -0.107504,
		38.958210, 46.703907, 59.189308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160995, 46.586880, 59.323730>,  <38.438152, 47.166374, 59.264561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160995, 46.586880, 59.323730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.541473, 46.522820, 59.429241>,  <38.769760, 46.484383, 59.492550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.541473, 46.522820, 59.429241>,  <38.160995, 46.586880, 59.323730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541473, 46.522820, 59.429241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308382, -0.462147, 0.831457,
		-0.011250, -0.872223, -0.488979,
		0.951196, -0.160146, 0.263779,
		38.826832, 46.474777, 59.508373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176380, 45.899670, 59.628407>,  <38.160995, 46.586880, 59.323730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176380, 45.899670, 59.628407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520485, 46.057571, 59.757481>,  <38.726948, 46.152313, 59.834927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520485, 46.057571, 59.757481>,  <38.176380, 45.899670, 59.628407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520485, 46.057571, 59.757481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022409, -0.603004, 0.797424,
		0.509368, -0.693220, -0.509892,
		0.860257, 0.394756, 0.322685,
		38.778561, 46.175999, 59.854286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446247, 45.319588, 59.964100>,  <38.176380, 45.899670, 59.628407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446247, 45.319588, 59.964100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679173, 45.611786, 60.106812>,  <38.818928, 45.787106, 60.192436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.679173, 45.611786, 60.106812>,  <38.446247, 45.319588, 59.964100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679173, 45.611786, 60.106812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048448, -0.469260, 0.881730,
		0.811518, -0.496160, -0.308648,
		0.582316, 0.730493, 0.356775,
		38.853867, 45.830933, 60.213844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922630, 44.957447, 60.450863>,  <38.446247, 45.319588, 59.964100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922630, 44.957447, 60.450863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.928055, 45.342674, 60.558434>,  <38.931309, 45.573811, 60.622974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.928055, 45.342674, 60.558434>,  <38.922630, 44.957447, 60.450863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928055, 45.342674, 60.558434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078476, -0.269142, 0.959898,
		0.996824, 0.008088, -0.079227,
		0.013560, 0.963067, 0.268922,
		38.932121, 45.631596, 60.639111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427162, 45.035442, 59.927849>,  <38.922630, 44.957447, 60.450863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427162, 45.035442, 59.927849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.322609, 44.650085, 59.951717>,  <39.259876, 44.418873, 59.966038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.322609, 44.650085, 59.951717>,  <39.427162, 45.035442, 59.927849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322609, 44.650085, 59.951717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520512, -0.192745, -0.831815,
		0.812863, -0.186365, 0.551836,
		-0.261385, -0.963388, 0.059670,
		39.244194, 44.361069, 59.969620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085426, 44.752800, 59.769756>,  <39.427162, 45.035442, 59.927849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085426, 44.752800, 59.769756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818542, 44.457260, 59.731949>,  <39.658413, 44.279938, 59.709263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818542, 44.457260, 59.731949>,  <40.085426, 44.752800, 59.769756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818542, 44.457260, 59.731949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595761, -0.453166, -0.663106,
		0.447098, -0.498746, 0.742533,
		-0.667212, -0.738846, -0.094523,
		39.618378, 44.235607, 59.703590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518555, 44.225464, 59.697727>,  <40.085426, 44.752800, 59.769756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518555, 44.225464, 59.697727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.163948, 44.127136, 59.540932>,  <39.951183, 44.068138, 59.446854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.163948, 44.127136, 59.540932>,  <40.518555, 44.225464, 59.697727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163948, 44.127136, 59.540932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462008, -0.516348, -0.721064,
		-0.025149, -0.820339, 0.571325,
		-0.886519, -0.245823, -0.391989,
		39.897991, 44.053391, 59.423336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384472, 43.571938, 59.825016>,  <40.518555, 44.225464, 59.697727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384472, 43.571938, 59.825016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.194683, 43.666466, 59.485832>,  <40.080811, 43.723183, 59.282322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.194683, 43.666466, 59.485832>,  <40.384472, 43.571938, 59.825016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194683, 43.666466, 59.485832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653659, -0.550599, -0.519203,
		-0.589584, -0.800619, 0.106766,
		-0.474469, 0.236325, -0.847956,
		40.052341, 43.737362, 59.231445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338390, 42.937225, 59.388229>,  <40.384472, 43.571938, 59.825016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338390, 42.937225, 59.388229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.272629, 43.231384, 59.125275>,  <40.233173, 43.407879, 58.967503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.272629, 43.231384, 59.125275>,  <40.338390, 42.937225, 59.388229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272629, 43.231384, 59.125275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443899, -0.539999, -0.715091,
		-0.880866, -0.409379, -0.237664,
		-0.164405, 0.735398, -0.657390,
		40.223309, 43.452003, 58.928059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230648, 42.596127, 58.771946>,  <40.338390, 42.937225, 59.388229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230648, 42.596127, 58.771946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.327461, 42.959106, 58.634563>,  <40.385551, 43.176895, 58.552135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.327461, 42.959106, 58.634563>,  <40.230648, 42.596127, 58.771946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327461, 42.959106, 58.634563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526957, -0.420162, -0.738769,
		-0.814700, -0.002177, -0.579879,
		0.242035, 0.907446, -0.343453,
		40.400070, 43.231339, 58.531528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333504, 42.537621, 58.032986>,  <40.230648, 42.596127, 58.771946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333504, 42.537621, 58.032986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.516533, 42.891640, 58.067226>,  <40.626350, 43.104050, 58.087772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.516533, 42.891640, 58.067226>,  <40.333504, 42.537621, 58.032986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516533, 42.891640, 58.067226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474445, -0.161590, -0.865327,
		-0.752019, 0.436563, -0.493843,
		0.457569, 0.885043, 0.085606,
		40.653805, 43.157154, 58.092907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671543, 42.070862, 57.880436>,  <40.333504, 42.537621, 58.032986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671543, 42.070862, 57.880436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888535, 41.746620, 57.968658>,  <40.018730, 41.552074, 58.021591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888535, 41.746620, 57.968658>,  <39.671543, 42.070862, 57.880436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888535, 41.746620, 57.968658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207656, 0.125006, 0.970182,
		-0.814001, -0.572101, -0.100514,
		0.542477, -0.810601, 0.220556,
		40.051277, 41.503441, 58.034824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240028, 41.867756, 58.406212>,  <39.671543, 42.070862, 57.880436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240028, 41.867756, 58.406212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543716, 41.615295, 58.469749>,  <39.725929, 41.463818, 58.507874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543716, 41.615295, 58.469749>,  <39.240028, 41.867756, 58.406212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543716, 41.615295, 58.469749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309048, -0.134823, 0.941442,
		-0.572778, -0.763851, -0.297417,
		0.759220, -0.631153, 0.158842,
		39.771484, 41.425949, 58.517403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037369, 41.227417, 58.576107>,  <39.240028, 41.867756, 58.406212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037369, 41.227417, 58.576107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399696, 41.283028, 58.736191>,  <39.617092, 41.316395, 58.832241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.399696, 41.283028, 58.736191>,  <39.037369, 41.227417, 58.576107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399696, 41.283028, 58.736191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353841, -0.271265, 0.895104,
		0.233009, -0.952411, -0.196522,
		0.905816, 0.139030, 0.400209,
		39.671440, 41.324738, 58.856255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059719, 40.814934, 59.119156>,  <39.037369, 41.227417, 58.576107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059719, 40.814934, 59.119156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401489, 41.001137, 59.211472>,  <39.606552, 41.112858, 59.266861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401489, 41.001137, 59.211472>,  <39.059719, 40.814934, 59.119156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401489, 41.001137, 59.211472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192757, -0.128501, 0.972796,
		0.482497, -0.875668, -0.020066,
		0.854425, 0.465503, 0.230793,
		39.657818, 41.140789, 59.280708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430614, 40.446327, 59.760532>,  <39.059719, 40.814934, 59.119156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430614, 40.446327, 59.760532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.549782, 40.826187, 59.721725>,  <39.621281, 41.054104, 59.698441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.549782, 40.826187, 59.721725>,  <39.430614, 40.446327, 59.760532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549782, 40.826187, 59.721725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296197, 0.188577, 0.936326,
		0.907477, -0.250208, 0.337463,
		0.297914, 0.949650, -0.097019,
		39.639156, 41.111080, 59.692619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656162, 40.565548, 60.360039>,  <39.430614, 40.446327, 59.760532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656162, 40.565548, 60.360039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593098, 40.929482, 60.206497>,  <39.555260, 41.147842, 60.114372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.593098, 40.929482, 60.206497>,  <39.656162, 40.565548, 60.360039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593098, 40.929482, 60.206497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328987, 0.318110, 0.889142,
		0.931080, 0.266463, 0.249172,
		-0.157660, 0.909837, -0.383849,
		39.545799, 41.202431, 60.091343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896210, 41.028934, 60.895859>,  <39.656162, 40.565548, 60.360039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896210, 41.028934, 60.895859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.665016, 41.253067, 60.658554>,  <39.526299, 41.387547, 60.516171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.665016, 41.253067, 60.658554>,  <39.896210, 41.028934, 60.895859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665016, 41.253067, 60.658554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360055, 0.477298, 0.801590,
		0.732321, 0.676913, -0.074120,
		-0.577984, 0.560334, -0.593262,
		39.491619, 41.421165, 60.480576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019917, 41.733990, 60.972347>,  <39.896210, 41.028934, 60.895859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019917, 41.733990, 60.972347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.640255, 41.718613, 60.847370>,  <39.412457, 41.709385, 60.772385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.640255, 41.718613, 60.847370>,  <40.019917, 41.733990, 60.972347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640255, 41.718613, 60.847370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300932, 0.402156, 0.864702,
		0.092408, 0.914764, -0.393279,
		-0.949158, -0.038445, -0.312444,
		39.355507, 41.707081, 60.753635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798790, 42.239037, 61.368904>,  <40.019917, 41.733990, 60.972347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798790, 42.239037, 61.368904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.461319, 42.080254, 61.224327>,  <39.258839, 41.984985, 61.137581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.461319, 42.080254, 61.224327>,  <39.798790, 42.239037, 61.368904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461319, 42.080254, 61.224327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473930, 0.234425, 0.848785,
		-0.252197, 0.887397, -0.385906,
		-0.843675, -0.396954, -0.361443,
		39.208218, 41.961166, 61.115894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.830250, 40.959766, 45.213791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.475021, 40.776237, 45.225212>,  <42.261887, 40.666119, 45.232067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.475021, 40.776237, 45.225212>,  <42.830250, 40.959766, 45.213791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475021, 40.776237, 45.225212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107320, 0.267320, 0.957613,
		-0.447011, 0.847360, -0.286640,
		-0.888067, -0.458825, 0.028556,
		42.208603, 40.638592, 45.233780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368729, 41.451508, 45.480415>,  <42.830250, 40.959766, 45.213791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368729, 41.451508, 45.480415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.175873, 41.104080, 45.526249>,  <42.060158, 40.895626, 45.553749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.175873, 41.104080, 45.526249>,  <42.368729, 41.451508, 45.480415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175873, 41.104080, 45.526249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199744, 0.236327, 0.950922,
		-0.853018, 0.435594, -0.287435,
		-0.482144, -0.868566, 0.114584,
		42.031231, 40.843510, 45.560623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798851, 41.572468, 45.929466>,  <42.368729, 41.451508, 45.480415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798851, 41.572468, 45.929466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.878933, 41.180588, 45.933498>,  <41.926983, 40.945457, 45.935917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.878933, 41.180588, 45.933498>,  <41.798851, 41.572468, 45.929466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878933, 41.180588, 45.933498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156245, -0.021767, 0.987479,
		-0.967215, -0.199275, -0.157431,
		0.200206, -0.979702, 0.010082,
		41.938995, 40.886677, 45.936523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295048, 41.313129, 46.330566>,  <41.798851, 41.572468, 45.929466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295048, 41.313129, 46.330566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566719, 41.019905, 46.345188>,  <41.729721, 40.843971, 46.353962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.566719, 41.019905, 46.345188>,  <41.295048, 41.313129, 46.330566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566719, 41.019905, 46.345188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177335, -0.115571, 0.977341,
		-0.712228, -0.670271, -0.208491,
		0.679178, -0.733063, 0.036550,
		41.770473, 40.799988, 46.356152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916241, 40.739529, 46.747028>,  <41.295048, 41.313129, 46.330566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916241, 40.739529, 46.747028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.310444, 40.675751, 46.770153>,  <41.546967, 40.637486, 46.784027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.310444, 40.675751, 46.770153>,  <40.916241, 40.739529, 46.747028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310444, 40.675751, 46.770153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075049, -0.104275, 0.991713,
		-0.152100, -0.981684, -0.114731,
		0.985512, -0.159450, 0.057814,
		41.606098, 40.627918, 46.787498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997639, 40.061775, 47.166855>,  <40.916241, 40.739529, 46.747028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997639, 40.061775, 47.166855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.323677, 40.292938, 47.183029>,  <41.519302, 40.431637, 47.192734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.323677, 40.292938, 47.183029>,  <40.997639, 40.061775, 47.166855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323677, 40.292938, 47.183029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000059, -0.069710, 0.997567,
		0.579322, -0.813118, -0.056787,
		0.815099, 0.577909, 0.040433,
		41.568207, 40.466312, 47.195160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324589, 39.869350, 47.694927>,  <40.997639, 40.061775, 47.166855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324589, 39.869350, 47.694927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.562790, 40.187469, 47.649540>,  <41.705711, 40.378342, 47.622307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.562790, 40.187469, 47.649540>,  <41.324589, 39.869350, 47.694927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562790, 40.187469, 47.649540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056861, 0.099163, 0.993445,
		0.801337, -0.598053, 0.013830,
		0.595505, 0.795298, -0.113469,
		41.741440, 40.426060, 47.615498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869835, 39.705696, 48.062290>,  <41.324589, 39.869350, 47.694927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869835, 39.705696, 48.062290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.864281, 40.101753, 48.006538>,  <41.860947, 40.339386, 47.973087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.864281, 40.101753, 48.006538>,  <41.869835, 39.705696, 48.062290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864281, 40.101753, 48.006538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156646, 0.139823, 0.977708,
		0.987557, -0.008252, -0.157044,
		-0.013890, 0.990142, -0.139376,
		41.860115, 40.398796, 47.964725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412289, 39.907879, 48.398045>,  <41.869835, 39.705696, 48.062290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412289, 39.907879, 48.398045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.194252, 40.243217, 48.395462>,  <42.063431, 40.444420, 48.393913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.194252, 40.243217, 48.395462>,  <42.412289, 39.907879, 48.398045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194252, 40.243217, 48.395462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148218, 0.103945, 0.983477,
		0.825169, 0.535130, -0.180919,
		-0.545093, 0.838350, -0.006456,
		42.030724, 40.494724, 48.393524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872501, 40.436985, 48.741756>,  <42.412289, 39.907879, 48.398045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872501, 40.436985, 48.741756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.487762, 40.539375, 48.780373>,  <42.256920, 40.600811, 48.803543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.487762, 40.539375, 48.780373>,  <42.872501, 40.436985, 48.741756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487762, 40.539375, 48.780373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120527, 0.079705, 0.989505,
		0.245597, 0.963391, -0.107517,
		-0.961850, 0.255978, 0.096539,
		42.199207, 40.616169, 48.809334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991169, 40.907021, 49.265232>,  <42.872501, 40.436985, 48.741756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991169, 40.907021, 49.265232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.593670, 40.873833, 49.235363>,  <42.355171, 40.853920, 49.217442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.593670, 40.873833, 49.235363>,  <42.991169, 40.907021, 49.265232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593670, 40.873833, 49.235363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070501, -0.052123, 0.996149,
		-0.086543, 0.995188, 0.045948,
		-0.993750, -0.082970, -0.074672,
		42.295544, 40.848942, 49.212963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652031, 41.473789, 49.612320>,  <42.991169, 40.907021, 49.265232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652031, 41.473789, 49.612320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.441696, 41.135590, 49.575191>,  <42.315495, 40.932671, 49.552914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.441696, 41.135590, 49.575191>,  <42.652031, 41.473789, 49.612320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441696, 41.135590, 49.575191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232023, 0.037590, 0.971984,
		-0.818327, 0.532645, -0.215942,
		-0.525839, -0.845504, -0.092825,
		42.283943, 40.881939, 49.547344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784737, 42.201443, 49.853516>,  <42.652031, 41.473789, 49.612320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784737, 42.201443, 49.853516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.168449, 42.279327, 49.935368>,  <43.398678, 42.326057, 49.984478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.168449, 42.279327, 49.935368>,  <42.784737, 42.201443, 49.853516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168449, 42.279327, 49.935368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156728, 0.235791, -0.959082,
		-0.234998, 0.952097, 0.195672,
		0.959277, 0.194715, 0.204630,
		43.456234, 42.337742, 49.996758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862427, 42.758274, 49.449265>,  <42.784737, 42.201443, 49.853516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862427, 42.758274, 49.449265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.227455, 42.623390, 49.541779>,  <43.446472, 42.542461, 49.597286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.227455, 42.623390, 49.541779>,  <42.862427, 42.758274, 49.449265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227455, 42.623390, 49.541779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316066, 0.222825, -0.922199,
		0.259439, 0.914679, 0.309926,
		0.912575, -0.337211, 0.231289,
		43.501228, 42.522228, 49.611164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440617, 43.252811, 49.383488>,  <42.862427, 42.758274, 49.449265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440617, 43.252811, 49.383488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.596214, 42.886391, 49.344433>,  <43.689571, 42.666538, 49.320999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.596214, 42.886391, 49.344433>,  <43.440617, 43.252811, 49.383488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596214, 42.886391, 49.344433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349484, 0.244796, -0.904398,
		0.852377, 0.317681, 0.415369,
		0.388991, -0.916053, -0.097634,
		43.712910, 42.611576, 49.315144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110813, 43.372780, 49.125374>,  <43.440617, 43.252811, 49.383488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110813, 43.372780, 49.125374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.065117, 42.982941, 49.048328>,  <44.037697, 42.749035, 49.002102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.065117, 42.982941, 49.048328>,  <44.110813, 43.372780, 49.125374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065117, 42.982941, 49.048328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372857, 0.137642, -0.917623,
		0.920829, -0.176648, 0.347662,
		-0.114243, -0.974602, -0.192609,
		44.030846, 42.690559, 48.990547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684975, 43.281876, 48.755001>,  <44.110813, 43.372780, 49.125374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684975, 43.281876, 48.755001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.467533, 42.960342, 48.658379>,  <44.337067, 42.767422, 48.600407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.467533, 42.960342, 48.658379>,  <44.684975, 43.281876, 48.755001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467533, 42.960342, 48.658379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281692, 0.096376, -0.954652,
		0.790660, -0.586998, 0.174042,
		-0.543606, -0.803831, -0.241553,
		44.304451, 42.719193, 48.585915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039257, 42.834377, 48.346081>,  <44.684975, 43.281876, 48.755001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039257, 42.834377, 48.346081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.660267, 42.737663, 48.262337>,  <44.432873, 42.679634, 48.212090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.660267, 42.737663, 48.262337>,  <45.039257, 42.834377, 48.346081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660267, 42.737663, 48.262337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154575, 0.226900, -0.961573,
		0.280004, -0.943426, -0.177607,
		-0.947472, -0.241791, -0.209363,
		44.376026, 42.665127, 48.199528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039783, 42.349823, 47.726627>,  <45.039257, 42.834377, 48.346081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039783, 42.349823, 47.726627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.689392, 42.538467, 47.767090>,  <44.479156, 42.651653, 47.791367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.689392, 42.538467, 47.767090>,  <45.039783, 42.349823, 47.726627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689392, 42.538467, 47.767090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019120, 0.243509, -0.969710,
		-0.481963, -0.847515, -0.222327,
		-0.875982, 0.471615, 0.101158,
		44.426598, 42.679951, 47.797436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699432, 42.158039, 47.017971>,  <45.039783, 42.349823, 47.726627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699432, 42.158039, 47.017971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.482628, 42.465141, 47.154659>,  <44.352547, 42.649403, 47.236671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.482628, 42.465141, 47.154659>,  <44.699432, 42.158039, 47.017971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482628, 42.465141, 47.154659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056333, 0.372523, -0.926312,
		-0.838483, -0.521319, -0.158660,
		-0.542009, 0.767759, 0.341721,
		44.320026, 42.695469, 47.257175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267326, 42.276863, 46.479885>,  <44.699432, 42.158039, 47.017971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267326, 42.276863, 46.479885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.233944, 42.602783, 46.709366>,  <44.213913, 42.798336, 46.847054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.233944, 42.602783, 46.709366>,  <44.267326, 42.276863, 46.479885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233944, 42.602783, 46.709366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138937, 0.560578, -0.816363,
		-0.986778, -0.147840, 0.066422,
		-0.083457, 0.814798, 0.573706,
		44.208908, 42.847221, 46.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623577, 42.653984, 46.253105>,  <44.267326, 42.276863, 46.479885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623577, 42.653984, 46.253105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.883430, 42.906723, 46.422218>,  <44.039341, 43.058365, 46.523685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.883430, 42.906723, 46.422218>,  <43.623577, 42.653984, 46.253105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883430, 42.906723, 46.422218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075314, 0.606869, -0.791226,
		-0.756508, 0.482165, 0.441829,
		0.649634, 0.631844, 0.422787,
		44.078320, 43.096275, 46.549053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344391, 43.298939, 46.180332>,  <43.623577, 42.653984, 46.253105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344391, 43.298939, 46.180332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.731781, 43.382980, 46.233864>,  <43.964214, 43.433407, 46.265984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.731781, 43.382980, 46.233864>,  <43.344391, 43.298939, 46.180332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731781, 43.382980, 46.233864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031253, 0.635466, -0.771496,
		-0.247138, 0.742993, 0.622000,
		0.968476, 0.210106, 0.133827,
		44.022324, 43.446011, 46.274014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327415, 44.043037, 46.144630>,  <43.344391, 43.298939, 46.180332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327415, 44.043037, 46.144630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.706795, 43.935783, 46.077049>,  <43.934422, 43.871429, 46.036499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.706795, 43.935783, 46.077049>,  <43.327415, 44.043037, 46.144630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706795, 43.935783, 46.077049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064516, 0.685295, -0.725402,
		0.310289, 0.677108, 0.667267,
		0.948450, -0.268134, -0.168955,
		43.991329, 43.855343, 46.026363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733364, 44.668209, 46.163815>,  <43.327415, 44.043037, 46.144630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733364, 44.668209, 46.163815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.992355, 44.416786, 45.991447>,  <44.147751, 44.265934, 45.888027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.992355, 44.416786, 45.991447>,  <43.733364, 44.668209, 46.163815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992355, 44.416786, 45.991447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360125, 0.750689, -0.553873,
		0.671626, 0.203436, 0.712413,
		0.647478, -0.628553, -0.430920,
		44.186600, 44.228222, 45.862171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451679, 44.847183, 46.150513>,  <43.733364, 44.668209, 46.163815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451679, 44.847183, 46.150513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.418335, 44.592789, 45.843639>,  <44.398327, 44.440151, 45.659515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.418335, 44.592789, 45.843639>,  <44.451679, 44.847183, 46.150513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418335, 44.592789, 45.843639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361063, 0.698280, -0.618093,
		0.928808, -0.328527, 0.171421,
		-0.083360, -0.635983, -0.767187,
		44.393326, 44.401993, 45.613483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987972, 45.086506, 45.725704>,  <44.451679, 44.847183, 46.150513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987972, 45.086506, 45.725704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.715302, 44.884758, 45.513699>,  <44.551697, 44.763710, 45.386494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.715302, 44.884758, 45.513699>,  <44.987972, 45.086506, 45.725704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715302, 44.884758, 45.513699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069879, 0.676221, -0.733377,
		0.728306, -0.536965, -0.425721,
		-0.681679, -0.504374, -0.530019,
		44.510799, 44.733444, 45.354694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095394, 45.672310, 45.942242>,  <44.987972, 45.086506, 45.725704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095394, 45.672310, 45.942242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.877754, 46.004654, 45.895561>,  <44.747169, 46.204060, 45.867554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.877754, 46.004654, 45.895561>,  <45.095394, 45.672310, 45.942242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877754, 46.004654, 45.895561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463290, -0.181552, 0.867410,
		0.699513, 0.526025, 0.483714,
		-0.544099, 0.830865, -0.116704,
		44.714523, 46.253914, 45.860550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156563, 46.309093, 46.363213>,  <45.095394, 45.672310, 45.942242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156563, 46.309093, 46.363213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.766899, 46.272545, 46.280590>,  <44.533100, 46.250618, 46.231018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.766899, 46.272545, 46.280590>,  <45.156563, 46.309093, 46.363213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766899, 46.272545, 46.280590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202224, -0.054434, 0.977825,
		-0.100586, 0.994328, 0.034551,
		-0.974160, -0.091369, -0.206552,
		44.474651, 46.245132, 46.218624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881721, 46.711479, 46.858765>,  <45.156563, 46.309093, 46.363213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881721, 46.711479, 46.858765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.560249, 46.498253, 46.752979>,  <44.367367, 46.370319, 46.689507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.560249, 46.498253, 46.752979>,  <44.881721, 46.711479, 46.858765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560249, 46.498253, 46.752979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314742, 0.003618, 0.949170,
		-0.505010, 0.846069, -0.170685,
		-0.803681, -0.533062, -0.264467,
		44.319145, 46.338333, 46.673637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314354, 47.067699, 47.161495>,  <44.881721, 46.711479, 46.858765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314354, 47.067699, 47.161495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.211418, 46.688721, 47.085476>,  <44.149658, 46.461334, 47.039864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.211418, 46.688721, 47.085476>,  <44.314354, 47.067699, 47.161495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211418, 46.688721, 47.085476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431210, -0.063412, 0.900020,
		-0.864775, 0.313559, -0.392232,
		-0.257337, -0.947449, -0.190047,
		44.134216, 46.404488, 47.028461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598484, 47.070393, 47.381176>,  <44.314354, 47.067699, 47.161495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598484, 47.070393, 47.381176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.691132, 46.681351, 47.373344>,  <43.746719, 46.447926, 47.368645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.691132, 46.681351, 47.373344>,  <43.598484, 47.070393, 47.381176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691132, 46.681351, 47.373344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560163, -0.149801, 0.814725,
		-0.795342, -0.177741, -0.579517,
		0.231622, -0.972609, -0.019579,
		43.760616, 46.389568, 47.367470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976299, 46.612339, 47.505878>,  <43.598484, 47.070393, 47.381176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976299, 46.612339, 47.505878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.305809, 46.408203, 47.604633>,  <43.503513, 46.285721, 47.663887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.305809, 46.408203, 47.604633>,  <42.976299, 46.612339, 47.505878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305809, 46.408203, 47.604633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392322, -0.198799, 0.898088,
		-0.409247, -0.836681, -0.363982,
		0.823772, -0.510338, 0.246890,
		43.552940, 46.255104, 47.678699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689560, 46.001522, 47.862251>,  <42.976299, 46.612339, 47.505878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689560, 46.001522, 47.862251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.077866, 45.984383, 47.956722>,  <43.310848, 45.974098, 48.013405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.077866, 45.984383, 47.956722>,  <42.689560, 46.001522, 47.862251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077866, 45.984383, 47.956722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236855, -0.330669, 0.913541,
		0.038954, -0.942774, -0.331150,
		0.970764, -0.042849, 0.236181,
		43.369095, 45.971527, 48.027576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739796, 45.353432, 48.127823>,  <42.689560, 46.001522, 47.862251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739796, 45.353432, 48.127823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.020523, 45.612694, 48.246040>,  <43.188961, 45.768250, 48.316971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.020523, 45.612694, 48.246040>,  <42.739796, 45.353432, 48.127823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020523, 45.612694, 48.246040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182646, -0.237286, 0.954115,
		0.688541, -0.723597, -0.048150,
		0.701820, 0.648152, 0.295544,
		43.231068, 45.807140, 48.334705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182014, 45.000107, 48.635502>,  <42.739796, 45.353432, 48.127823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182014, 45.000107, 48.635502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.245247, 45.384644, 48.725681>,  <43.283184, 45.615368, 48.779789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.245247, 45.384644, 48.725681>,  <43.182014, 45.000107, 48.635502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245247, 45.384644, 48.725681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179332, -0.196573, 0.963950,
		0.971006, -0.192808, 0.141326,
		0.158076, 0.961345, 0.225450,
		43.292671, 45.673046, 48.793316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499367, 44.977795, 49.273453>,  <43.182014, 45.000107, 48.635502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499367, 44.977795, 49.273453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.403324, 45.364914, 49.243237>,  <43.345699, 45.597187, 49.225105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.403324, 45.364914, 49.243237>,  <43.499367, 44.977795, 49.273453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403324, 45.364914, 49.243237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274365, 0.006990, 0.961600,
		0.931166, 0.251617, 0.263853,
		-0.240111, 0.967802, -0.075543,
		43.331291, 45.655254, 49.220573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772083, 45.311768, 49.854351>,  <43.499367, 44.977795, 49.273453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772083, 45.311768, 49.854351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.482437, 45.558121, 49.730198>,  <43.308651, 45.705933, 49.655704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.482437, 45.558121, 49.730198>,  <43.772083, 45.311768, 49.854351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482437, 45.558121, 49.730198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355899, 0.051799, 0.933088,
		0.590755, 0.786130, 0.181685,
		-0.724117, 0.615887, -0.310383,
		43.265202, 45.742886, 49.637081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787239, 45.848740, 50.317879>,  <43.772083, 45.311768, 49.854351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787239, 45.848740, 50.317879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.423695, 45.834450, 50.151649>,  <43.205570, 45.825874, 50.051910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.423695, 45.834450, 50.151649>,  <43.787239, 45.848740, 50.317879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423695, 45.834450, 50.151649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417060, 0.063095, 0.906687,
		-0.006170, 0.997368, -0.072244,
		-0.908858, -0.035724, -0.415573,
		43.151035, 45.823734, 50.026978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453167, 46.452034, 50.635498>,  <43.787239, 45.848740, 50.317879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453167, 46.452034, 50.635498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.161667, 46.226303, 50.480347>,  <42.986767, 46.090862, 50.387257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.161667, 46.226303, 50.480347>,  <43.453167, 46.452034, 50.635498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161667, 46.226303, 50.480347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462100, -0.012744, 0.886736,
		-0.505354, 0.825451, -0.251489,
		-0.728753, -0.564329, -0.387881,
		42.943043, 46.057003, 50.363983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846565, 46.820236, 50.871899>,  <43.453167, 46.452034, 50.635498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846565, 46.820236, 50.871899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.708252, 46.454994, 50.785488>,  <42.625263, 46.235847, 50.733643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.708252, 46.454994, 50.785488>,  <42.846565, 46.820236, 50.871899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708252, 46.454994, 50.785488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521910, -0.004161, 0.852990,
		-0.779772, 0.407694, -0.475122,
		-0.345782, -0.913109, -0.216024,
		42.604519, 46.181061, 50.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086464, 46.826553, 50.947063>,  <42.846565, 46.820236, 50.871899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086464, 46.826553, 50.947063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.161201, 46.433846, 50.961040>,  <42.206043, 46.198219, 50.969429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.161201, 46.433846, 50.961040>,  <42.086464, 46.826553, 50.947063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161201, 46.433846, 50.961040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281339, -0.019391, 0.959412,
		-0.941243, -0.189091, -0.279833,
		0.186842, -0.981768, 0.034947,
		42.217255, 46.139317, 50.971523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475220, 46.515003, 51.073170>,  <42.086464, 46.826553, 50.947063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475220, 46.515003, 51.073170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.729141, 46.225021, 51.180099>,  <41.881493, 46.051033, 51.244255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.729141, 46.225021, 51.180099>,  <41.475220, 46.515003, 51.073170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729141, 46.225021, 51.180099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489221, -0.109321, 0.865281,
		-0.598069, -0.680063, -0.424062,
		0.634804, -0.724958, 0.267320,
		41.919582, 46.007534, 51.260296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092678, 46.004410, 51.223175>,  <41.475220, 46.515003, 51.073170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092678, 46.004410, 51.223175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.436676, 45.945076, 51.418484>,  <41.643074, 45.909477, 51.535667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.436676, 45.945076, 51.418484>,  <41.092678, 46.004410, 51.223175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436676, 45.945076, 51.418484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506777, -0.135949, 0.851290,
		-0.059887, -0.979550, -0.192083,
		0.859994, -0.148325, 0.488272,
		41.694675, 45.900574, 51.564964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946259, 45.407177, 51.731976>,  <41.092678, 46.004410, 51.223175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946259, 45.407177, 51.731976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.259644, 45.608398, 51.877918>,  <41.447674, 45.729130, 51.965485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.259644, 45.608398, 51.877918>,  <40.946259, 45.407177, 51.731976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259644, 45.608398, 51.877918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386353, -0.065561, 0.920018,
		0.486735, -0.861768, 0.142989,
		0.783467, 0.503049, 0.364857,
		41.494682, 45.759312, 51.987377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101849, 45.084129, 52.422127>,  <40.946259, 45.407177, 51.731976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101849, 45.084129, 52.422127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.270576, 45.446747, 52.428394>,  <41.371811, 45.664318, 52.432156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.270576, 45.446747, 52.428394>,  <41.101849, 45.084129, 52.422127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270576, 45.446747, 52.428394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323348, 0.134267, 0.936706,
		0.847064, -0.400184, 0.349765,
		0.421817, 0.906546, 0.015666,
		41.397121, 45.718712, 52.433094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306797, 45.127171, 53.097427>,  <41.101849, 45.084129, 52.422127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306797, 45.127171, 53.097427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.336250, 45.505135, 52.969856>,  <41.353924, 45.731915, 52.893314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.336250, 45.505135, 52.969856>,  <41.306797, 45.127171, 53.097427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336250, 45.505135, 52.969856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234069, 0.327238, 0.915493,
		0.969428, 0.007241, 0.245271,
		0.073633, 0.944914, -0.318929,
		41.358341, 45.788609, 52.874176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595215, 45.371094, 53.607712>,  <41.306797, 45.127171, 53.097427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595215, 45.371094, 53.607712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428066, 45.675987, 53.409973>,  <41.327778, 45.858925, 53.291328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428066, 45.675987, 53.409973>,  <41.595215, 45.371094, 53.607712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428066, 45.675987, 53.409973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352116, 0.365721, 0.861547,
		0.837496, 0.534081, 0.115572,
		-0.417869, 0.762237, -0.494349,
		41.302704, 45.904659, 53.261669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898365, 46.091782, 53.894100>,  <41.595215, 45.371094, 53.607712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898365, 46.091782, 53.894100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.528358, 46.146812, 53.752441>,  <41.306355, 46.179832, 53.667446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.528358, 46.146812, 53.752441>,  <41.898365, 46.091782, 53.894100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528358, 46.146812, 53.752441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300860, 0.303974, 0.903927,
		0.232010, 0.942694, -0.239789,
		-0.925016, 0.137577, -0.354144,
		41.250854, 46.188084, 53.646198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626133, 46.741169, 54.132793>,  <41.898365, 46.091782, 53.894100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626133, 46.741169, 54.132793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.297424, 46.532028, 54.042179>,  <41.100201, 46.406544, 53.987808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.297424, 46.532028, 54.042179>,  <41.626133, 46.741169, 54.132793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297424, 46.532028, 54.042179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517665, 0.518854, 0.680304,
		-0.238161, 0.676323, -0.697042,
		-0.821768, -0.522856, -0.226538,
		41.050896, 46.375172, 53.974216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083729, 47.153351, 54.262226>,  <41.626133, 46.741169, 54.132793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083729, 47.153351, 54.262226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874573, 46.813385, 54.236198>,  <40.749077, 46.609406, 54.220581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.874573, 46.813385, 54.236198>,  <41.083729, 47.153351, 54.262226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874573, 46.813385, 54.236198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746966, 0.420107, 0.515318,
		-0.410639, 0.318060, -0.854525,
		-0.522894, -0.849911, -0.065068,
		40.717705, 46.558411, 54.216679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376450, 47.390976, 54.443893>,  <41.083729, 47.153351, 54.262226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376450, 47.390976, 54.443893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.360142, 46.993774, 54.488209>,  <40.350357, 46.755451, 54.514797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.360142, 46.993774, 54.488209>,  <40.376450, 47.390976, 54.443893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360142, 46.993774, 54.488209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623724, 0.111914, 0.773592,
		-0.780581, -0.037559, -0.623925,
		-0.040771, -0.993007, 0.110785,
		40.347912, 46.695873, 54.521442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703739, 47.257103, 54.633369>,  <40.376450, 47.390976, 54.443893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703739, 47.257103, 54.633369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863842, 46.915245, 54.765656>,  <39.959904, 46.710129, 54.845028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863842, 46.915245, 54.765656>,  <39.703739, 47.257103, 54.633369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863842, 46.915245, 54.765656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475692, 0.114684, 0.872103,
		-0.783267, -0.506387, -0.360645,
		0.400261, -0.854646, 0.330712,
		39.983921, 46.658852, 54.864868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171566, 46.956612, 54.951462>,  <39.703739, 47.257103, 54.633369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171566, 46.956612, 54.951462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.476223, 46.762695, 55.123455>,  <39.659016, 46.646347, 55.226650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.476223, 46.762695, 55.123455>,  <39.171566, 46.956612, 54.951462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476223, 46.762695, 55.123455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521719, -0.065207, 0.850622,
		-0.384338, -0.872195, -0.302590,
		0.761639, -0.484793, 0.429979,
		39.704716, 46.617256, 55.252449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866493, 46.440193, 54.412540>,  <39.171566, 46.956612, 54.951462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866493, 46.440193, 54.412540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480839, 46.429428, 54.306923>,  <38.249447, 46.422970, 54.243553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480839, 46.429428, 54.306923>,  <38.866493, 46.440193, 54.412540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480839, 46.429428, 54.306923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263784, 0.012722, -0.964498,
		0.029332, -0.999557, -0.005163,
		-0.964136, -0.026928, -0.264040,
		38.191597, 46.421352, 54.227711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683613, 45.838093, 53.900242>,  <38.866493, 46.440193, 54.412540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683613, 45.838093, 53.900242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.410690, 46.128128, 53.862934>,  <38.246937, 46.302151, 53.840549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.410690, 46.128128, 53.862934>,  <38.683613, 45.838093, 53.900242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410690, 46.128128, 53.862934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012773, -0.115742, -0.993197,
		-0.730954, -0.678857, 0.069710,
		-0.682307, 0.725091, -0.093273,
		38.205997, 46.345654, 53.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123203, 45.586636, 53.550491>,  <38.683613, 45.838093, 53.900242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123203, 45.586636, 53.550491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106533, 45.982208, 53.493538>,  <38.096531, 46.219551, 53.459366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.106533, 45.982208, 53.493538>,  <38.123203, 45.586636, 53.550491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106533, 45.982208, 53.493538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135303, -0.146783, -0.979871,
		-0.989927, -0.021574, 0.139923,
		-0.041679, 0.988933, -0.142386,
		38.094028, 46.278889, 53.450821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830269, 45.583687, 52.836609>,  <38.123203, 45.586636, 53.550491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830269, 45.583687, 52.836609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940983, 45.960609, 52.911926>,  <38.007412, 46.186764, 52.957115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940983, 45.960609, 52.911926>,  <37.830269, 45.583687, 52.836609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940983, 45.960609, 52.911926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023532, 0.189245, -0.981648,
		-0.960643, 0.276139, 0.030206,
		0.276788, 0.942302, 0.188295,
		38.024017, 46.243301, 52.968414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419571, 45.863419, 52.463089>,  <37.830269, 45.583687, 52.836609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419571, 45.863419, 52.463089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.731258, 46.104218, 52.532852>,  <37.918270, 46.248695, 52.574711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.731258, 46.104218, 52.532852>,  <37.419571, 45.863419, 52.463089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731258, 46.104218, 52.532852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149230, 0.092064, -0.984507,
		-0.608724, 0.793176, -0.018097,
		0.779221, 0.601994, 0.174407,
		37.965023, 46.284817, 52.585175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
