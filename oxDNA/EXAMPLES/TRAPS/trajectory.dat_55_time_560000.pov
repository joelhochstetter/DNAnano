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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.002731, 53.177223, 49.615658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033798, 52.796135, 49.733154>,  <36.052441, 52.567482, 49.803654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033798, 52.796135, 49.733154>,  <36.002731, 53.177223, 49.615658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033798, 52.796135, 49.733154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032805, 0.292032, 0.955846,
		-0.996439, -0.083878, -0.008572,
		0.077671, -0.952723, 0.293744,
		36.057098, 52.510319, 49.821278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551369, 52.692757, 49.501560>,  <36.002731, 53.177223, 49.615658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551369, 52.692757, 49.501560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358929, 52.716438, 49.851425>,  <36.243465, 52.730648, 50.061344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358929, 52.716438, 49.851425>,  <36.551369, 52.692757, 49.501560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358929, 52.716438, 49.851425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855925, -0.184023, 0.483248,
		0.189568, 0.981137, 0.037860,
		-0.481100, 0.059203, 0.874664,
		36.214600, 52.734200, 50.113823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880508, 53.200726, 49.797703>,  <36.551369, 52.692757, 49.501560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880508, 53.200726, 49.797703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708458, 52.902939, 50.001961>,  <36.605228, 52.724266, 50.124516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708458, 52.902939, 50.001961>,  <36.880508, 53.200726, 49.797703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708458, 52.902939, 50.001961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901247, -0.386949, 0.194998,
		0.052423, 0.544089, 0.837388,
		-0.430123, -0.744471, 0.510644,
		36.579422, 52.679596, 50.155155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251675, 53.171211, 50.328285>,  <36.880508, 53.200726, 49.797703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251675, 53.171211, 50.328285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089489, 52.810814, 50.390007>,  <36.992176, 52.594578, 50.427040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089489, 52.810814, 50.390007>,  <37.251675, 53.171211, 50.328285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089489, 52.810814, 50.390007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841892, -0.302316, 0.447016,
		-0.356109, 0.311159, 0.881117,
		-0.405468, -0.900991, 0.154305,
		36.967850, 52.540516, 50.436298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537769, 53.772396, 50.728584>,  <37.251675, 53.171211, 50.328285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537769, 53.772396, 50.728584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388638, 53.742241, 51.098518>,  <37.299160, 53.724148, 51.320477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388638, 53.742241, 51.098518>,  <37.537769, 53.772396, 50.728584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388638, 53.742241, 51.098518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817393, -0.498409, 0.288888,
		0.439167, 0.863658, 0.247441,
		-0.372828, -0.075387, 0.924833,
		37.276791, 53.719624, 51.375969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031822, 54.015141, 51.154934>,  <37.537769, 53.772396, 50.728584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031822, 54.015141, 51.154934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807323, 53.743641, 51.344376>,  <37.672626, 53.580742, 51.458042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807323, 53.743641, 51.344376>,  <38.031822, 54.015141, 51.154934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807323, 53.743641, 51.344376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766223, -0.642448, -0.012726,
		0.312904, 0.355744, 0.880646,
		-0.561243, -0.678753, 0.473604,
		37.638950, 53.540016, 51.486458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528320, 54.295086, 51.492249>,  <38.031822, 54.015141, 51.154934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528320, 54.295086, 51.492249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549450, 54.082623, 51.153999>,  <38.562126, 53.955147, 50.951050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549450, 54.082623, 51.153999>,  <38.528320, 54.295086, 51.492249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549450, 54.082623, 51.153999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971998, 0.221518, -0.078425,
		0.228977, -0.817805, 0.527981,
		0.052821, -0.531154, -0.845627,
		38.565296, 53.923275, 50.900311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963264, 53.660763, 51.426163>,  <38.528320, 54.295086, 51.492249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963264, 53.660763, 51.426163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949123, 53.883385, 51.094139>,  <38.940639, 54.016956, 50.894924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949123, 53.883385, 51.094139>,  <38.963264, 53.660763, 51.426163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949123, 53.883385, 51.094139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997183, 0.074621, 0.007559,
		0.066147, -0.827456, -0.557621,
		-0.035356, 0.556550, -0.830061,
		38.938519, 54.050350, 50.845119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380405, 53.209141, 50.992775>,  <38.963264, 53.660763, 51.426163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380405, 53.209141, 50.992775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355835, 53.601036, 50.916531>,  <39.341091, 53.836174, 50.870785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355835, 53.601036, 50.916531>,  <39.380405, 53.209141, 50.992775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355835, 53.601036, 50.916531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997768, 0.065289, 0.014054,
		0.026214, -0.189317, -0.981566,
		-0.061425, 0.979743, -0.190606,
		39.337406, 53.894958, 50.859348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794281, 53.472466, 50.389973>,  <39.380405, 53.209141, 50.992775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794281, 53.472466, 50.389973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766560, 53.756699, 50.670048>,  <39.749928, 53.927238, 50.838093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766560, 53.756699, 50.670048>,  <39.794281, 53.472466, 50.389973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766560, 53.756699, 50.670048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997329, 0.065579, 0.032160,
		-0.023065, 0.700548, -0.713233,
		-0.069303, 0.710586, 0.700189,
		39.745770, 53.969875, 50.880104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264320, 54.049564, 50.200912>,  <39.794281, 53.472466, 50.389973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264320, 54.049564, 50.200912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227997, 54.014206, 50.597687>,  <40.206203, 53.992989, 50.835751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227997, 54.014206, 50.597687>,  <40.264320, 54.049564, 50.200912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227997, 54.014206, 50.597687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995250, 0.027042, 0.093521,
		-0.035092, 0.995718, 0.085524,
		-0.090807, -0.088400, 0.991937,
		40.200756, 53.987686, 50.895267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663605, 54.669266, 50.478664>,  <40.264320, 54.049564, 50.200912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663605, 54.669266, 50.478664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589615, 54.412453, 50.776276>,  <40.545219, 54.258366, 50.954842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589615, 54.412453, 50.776276>,  <40.663605, 54.669266, 50.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589615, 54.412453, 50.776276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899361, 0.194596, 0.391512,
		-0.396148, 0.741571, 0.541422,
		-0.184976, -0.642031, 0.744030,
		40.534122, 54.219845, 50.999485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735710, 54.842514, 51.320988>,  <40.663605, 54.669266, 50.478664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735710, 54.842514, 51.320988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830555, 54.507339, 51.124363>,  <40.887463, 54.306232, 51.006390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830555, 54.507339, 51.124363>,  <40.735710, 54.842514, 51.320988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830555, 54.507339, 51.124363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967539, 0.158141, 0.197130,
		-0.087447, -0.522348, 0.848237,
		0.237112, -0.837940, -0.491563,
		40.901688, 54.255959, 50.976894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005959, 54.263748, 51.706989>,  <40.735710, 54.842514, 51.320988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005959, 54.263748, 51.706989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169712, 54.242031, 51.342690>,  <41.267963, 54.229000, 51.124111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169712, 54.242031, 51.342690>,  <41.005959, 54.263748, 51.706989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169712, 54.242031, 51.342690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886357, 0.260306, 0.382900,
		0.216285, -0.963998, 0.154686,
		0.409381, -0.054291, -0.910747,
		41.292526, 54.225742, 51.069466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604073, 53.888313, 51.613083>,  <41.005959, 54.263748, 51.706989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604073, 53.888313, 51.613083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667595, 54.153042, 51.320023>,  <41.705708, 54.311878, 51.144188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667595, 54.153042, 51.320023>,  <41.604073, 53.888313, 51.613083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667595, 54.153042, 51.320023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837012, 0.303316, 0.455423,
		0.523632, -0.685562, -0.505780,
		0.158810, 0.661819, -0.732650,
		41.715237, 54.351589, 51.100227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314705, 53.823479, 51.433689>,  <41.604073, 53.888313, 51.613083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314705, 53.823479, 51.433689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176247, 54.183357, 51.327316>,  <42.093170, 54.399284, 51.263493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176247, 54.183357, 51.327316>,  <42.314705, 53.823479, 51.433689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176247, 54.183357, 51.327316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749150, 0.435702, 0.498936,
		0.564762, -0.026521, -0.824828,
		-0.346147, 0.899700, -0.265936,
		42.072403, 54.453266, 51.247536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913189, 54.194878, 51.172379>,  <42.314705, 53.823479, 51.433689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913189, 54.194878, 51.172379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629684, 54.444939, 51.303123>,  <42.459583, 54.594975, 51.381569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629684, 54.444939, 51.303123>,  <42.913189, 54.194878, 51.172379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629684, 54.444939, 51.303123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662909, 0.431759, 0.611667,
		0.241263, 0.650204, -0.720435,
		-0.708763, 0.625155, 0.326859,
		42.417057, 54.632484, 51.401180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100533, 54.849869, 51.123192>,  <42.913189, 54.194878, 51.172379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100533, 54.849869, 51.123192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822353, 54.881039, 51.408924>,  <42.655445, 54.899742, 51.580364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822353, 54.881039, 51.408924>,  <43.100533, 54.849869, 51.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822353, 54.881039, 51.408924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641023, 0.516493, 0.567736,
		-0.324708, 0.852738, -0.409148,
		-0.695453, 0.077925, 0.714334,
		42.613716, 54.904415, 51.623226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050186, 55.581608, 51.373623>,  <43.100533, 54.849869, 51.123192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050186, 55.581608, 51.373623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987095, 55.339573, 51.685776>,  <42.949238, 55.194351, 51.873066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987095, 55.339573, 51.685776>,  <43.050186, 55.581608, 51.373623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987095, 55.339573, 51.685776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448126, 0.660351, 0.602595,
		-0.879946, 0.444756, 0.166998,
		-0.157730, -0.605087, 0.780379,
		42.939777, 55.158047, 51.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652588, 55.824604, 51.863873>,  <43.050186, 55.581608, 51.373623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652588, 55.824604, 51.863873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885429, 55.566753, 52.062107>,  <43.025135, 55.412041, 52.181049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885429, 55.566753, 52.062107>,  <42.652588, 55.824604, 51.863873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885429, 55.566753, 52.062107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561662, 0.759492, 0.328186,
		-0.587955, 0.087316, 0.804167,
		0.582103, -0.644629, 0.495589,
		43.060059, 55.373363, 52.210785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788868, 56.038067, 52.535450>,  <42.652588, 55.824604, 51.863873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788868, 56.038067, 52.535450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097664, 55.814407, 52.414536>,  <43.282944, 55.680210, 52.341988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.097664, 55.814407, 52.414536>,  <42.788868, 56.038067, 52.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097664, 55.814407, 52.414536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611148, 0.783665, 0.111204,
		0.174714, -0.270593, 0.946707,
		0.771993, -0.559150, -0.302289,
		43.329262, 55.646664, 52.323849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353386, 56.032684, 53.144840>,  <42.788868, 56.038067, 52.535450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353386, 56.032684, 53.144840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458527, 55.967113, 52.764519>,  <43.521610, 55.927773, 52.536324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458527, 55.967113, 52.764519>,  <43.353386, 56.032684, 53.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458527, 55.967113, 52.764519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519095, 0.854708, -0.003848,
		0.813294, -0.492548, 0.309757,
		0.262856, -0.163923, -0.950808,
		43.537384, 55.917938, 52.479275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142994, 56.073887, 53.006718>,  <43.353386, 56.032684, 53.144840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142994, 56.073887, 53.006718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959019, 56.162342, 52.662727>,  <43.848633, 56.215416, 52.456333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959019, 56.162342, 52.662727>,  <44.142994, 56.073887, 53.006718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959019, 56.162342, 52.662727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721720, 0.657300, -0.216975,
		0.517280, -0.720455, -0.461917,
		-0.459938, 0.221138, -0.859974,
		43.821037, 56.228683, 52.404736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503738, 55.795574, 52.352940>,  <44.142994, 56.073887, 53.006718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503738, 55.795574, 52.352940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298470, 56.138863, 52.348541>,  <44.175308, 56.344833, 52.345901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298470, 56.138863, 52.348541>,  <44.503738, 55.795574, 52.352940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298470, 56.138863, 52.348541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852310, 0.508043, -0.124341,
		-0.101125, -0.073179, -0.992179,
		-0.513169, 0.858217, -0.010995,
		44.144520, 56.396328, 52.345242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679146, 56.162216, 51.691284>,  <44.503738, 55.795574, 52.352940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679146, 56.162216, 51.691284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588139, 56.389923, 52.007301>,  <44.533535, 56.526546, 52.196911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588139, 56.389923, 52.007301>,  <44.679146, 56.162216, 51.691284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588139, 56.389923, 52.007301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762399, 0.608865, -0.219162,
		-0.605792, 0.552466, -0.572536,
		-0.227517, 0.569267, 0.790045,
		44.519882, 56.560703, 52.244316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326172, 56.430630, 51.325729>,  <44.679146, 56.162216, 51.691284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326172, 56.430630, 51.325729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658558, 56.572777, 51.154518>,  <45.857990, 56.658066, 51.051792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658558, 56.572777, 51.154518>,  <45.326172, 56.430630, 51.325729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658558, 56.572777, 51.154518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234211, -0.474415, -0.848573,
		-0.504616, 0.805386, -0.310993,
		0.830968, 0.355365, -0.428028,
		45.907848, 56.679386, 51.026112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.084293, 56.566772, 51.504997>,  <45.326172, 56.430630, 51.325729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.084293, 56.566772, 51.504997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294933, 56.305248, 51.722336>,  <46.421318, 56.148335, 51.852737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.294933, 56.305248, 51.722336>,  <46.084293, 56.566772, 51.504997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294933, 56.305248, 51.722336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183860, 0.711606, 0.678094,
		-0.829994, -0.257184, 0.494941,
		0.526598, -0.653814, 0.543343,
		46.452911, 56.109104, 51.885338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.088524, 56.061993, 50.951839>,  <46.084293, 56.566772, 51.504997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.088524, 56.061993, 50.951839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716526, 56.073067, 50.805233>,  <45.493328, 56.079712, 50.717270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.716526, 56.073067, 50.805233>,  <46.088524, 56.061993, 50.951839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716526, 56.073067, 50.805233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190250, 0.816931, 0.544452,
		0.314497, 0.576070, -0.754477,
		-0.929998, 0.027689, -0.366520,
		45.437527, 56.081375, 50.695278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749901, 56.600498, 50.843597>,  <46.088524, 56.061993, 50.951839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749901, 56.600498, 50.843597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748631, 56.581608, 50.444046>,  <46.747868, 56.570274, 50.204315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748631, 56.581608, 50.444046>,  <46.749901, 56.600498, 50.843597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748631, 56.581608, 50.444046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939813, -0.341436, 0.013151,
		-0.341674, -0.938718, 0.045472,
		-0.003180, -0.047228, -0.998879,
		46.747677, 56.567440, 50.144382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.362499, 56.407627, 50.821503>,  <46.749901, 56.600498, 50.843597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.362499, 56.407627, 50.821503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270584, 56.434402, 50.433128>,  <47.215435, 56.450470, 50.200104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.270584, 56.434402, 50.433128>,  <47.362499, 56.407627, 50.821503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.270584, 56.434402, 50.433128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907976, -0.344432, -0.238632,
		-0.350398, -0.936421, 0.018359,
		-0.229784, 0.066947, -0.970937,
		47.201649, 56.454487, 50.141846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538239, 55.845978, 50.460773>,  <47.362499, 56.407627, 50.821503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538239, 55.845978, 50.460773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546535, 56.172672, 50.230118>,  <47.551514, 56.368687, 50.091724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546535, 56.172672, 50.230118>,  <47.538239, 55.845978, 50.460773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.546535, 56.172672, 50.230118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920519, -0.240671, -0.307770,
		-0.390147, -0.524428, -0.756810,
		0.020739, 0.816733, -0.576643,
		47.552757, 56.417690, 50.057125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.716713, 55.657318, 49.660328>,  <47.538239, 55.845978, 50.460773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.716713, 55.657318, 49.660328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837006, 56.017265, 49.786690>,  <47.909184, 56.233234, 49.862507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.837006, 56.017265, 49.786690>,  <47.716713, 55.657318, 49.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.837006, 56.017265, 49.786690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888087, -0.143488, -0.436707,
		-0.347650, 0.411887, -0.842312,
		0.300735, 0.899867, 0.315908,
		47.927227, 56.287224, 49.881462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.174515, 55.991024, 49.200184>,  <47.716713, 55.657318, 49.660328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.174515, 55.991024, 49.200184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.301868, 56.192871, 49.521179>,  <48.378281, 56.313980, 49.713776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.301868, 56.192871, 49.521179>,  <48.174515, 55.991024, 49.200184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.301868, 56.192871, 49.521179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926116, 0.015109, -0.376936,
		-0.202332, 0.863213, -0.462521,
		0.318387, 0.504615, 0.802492,
		48.397385, 56.344257, 49.761929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.593872, 56.649330, 49.063698>,  <48.174515, 55.991024, 49.200184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.593872, 56.649330, 49.063698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.708603, 56.468323, 49.401443>,  <48.777443, 56.359718, 49.604092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.708603, 56.468323, 49.401443>,  <48.593872, 56.649330, 49.063698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.708603, 56.468323, 49.401443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957276, 0.101569, -0.270752,
		0.036757, 0.885954, 0.462315,
		0.286831, -0.452515, 0.844369,
		48.794651, 56.332569, 49.654755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.099655, 57.143757, 49.208900>,  <48.593872, 56.649330, 49.063698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.099655, 57.143757, 49.208900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.146000, 56.791931, 49.393486>,  <49.173805, 56.580837, 49.504238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.146000, 56.791931, 49.393486>,  <49.099655, 57.143757, 49.208900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.146000, 56.791931, 49.393486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962653, -0.015020, -0.270320,
		0.244695, 0.475545, 0.844974,
		0.115858, -0.879563, 0.461460,
		49.180756, 56.528061, 49.531925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.563705, 57.144222, 49.771465>,  <49.099655, 57.143757, 49.208900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.563705, 57.144222, 49.771465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.572338, 56.783806, 49.598190>,  <49.577518, 56.567554, 49.494225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.572338, 56.783806, 49.598190>,  <49.563705, 57.144222, 49.771465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.572338, 56.783806, 49.598190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999701, 0.014490, 0.019664,
		-0.011441, -0.433483, 0.901089,
		0.021581, -0.901045, -0.433188,
		49.578812, 56.513493, 49.468235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.926373, 56.646336, 50.115437>,  <49.563705, 57.144222, 49.771465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.926373, 56.646336, 50.115437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.971188, 56.518848, 49.738953>,  <49.998077, 56.442356, 49.513062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.971188, 56.518848, 49.738953>,  <49.926373, 56.646336, 50.115437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.971188, 56.518848, 49.738953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983120, -0.102322, 0.151675,
		-0.144647, -0.942311, 0.301873,
		0.112036, -0.318717, -0.941205,
		50.004799, 56.423233, 49.456593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.421402, 56.209759, 50.230579>,  <49.926373, 56.646336, 50.115437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.421402, 56.209759, 50.230579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.425957, 56.319431, 49.845936>,  <50.428688, 56.385235, 49.615150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.425957, 56.319431, 49.845936>,  <50.421402, 56.209759, 50.230579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.425957, 56.319431, 49.845936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989167, -0.143839, -0.029304,
		-0.146351, -0.950860, -0.272848,
		0.011382, 0.274181, -0.961611,
		50.429371, 56.401684, 49.557453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.178261, 56.323738, 49.890736>,  <50.421402, 56.209759, 50.230579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.178261, 56.323738, 49.890736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.550488, 56.180710, 49.922218>,  <51.773823, 56.094891, 49.941109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.550488, 56.180710, 49.922218>,  <51.178261, 56.323738, 49.890736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.550488, 56.180710, 49.922218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272466, 0.819903, 0.503509,
		-0.244574, -0.447102, 0.860397,
		0.930562, -0.357574, 0.078707,
		51.829655, 56.073437, 49.945831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.604282, 56.317684, 50.554710>,  <51.178261, 56.323738, 49.890736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.604282, 56.317684, 50.554710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.840652, 56.389755, 50.240170>,  <51.982475, 56.432999, 50.051445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.840652, 56.389755, 50.240170>,  <51.604282, 56.317684, 50.554710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.840652, 56.389755, 50.240170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350044, 0.820934, 0.451150,
		0.726825, -0.541853, 0.422044,
		0.590927, 0.180173, -0.786348,
		52.017929, 56.443806, 50.004265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.407089, 56.254551, 50.821793>,  <51.604282, 56.317684, 50.554710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.407089, 56.254551, 50.821793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.321976, 56.538200, 50.552910>,  <52.270908, 56.708389, 50.391579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.321976, 56.538200, 50.552910>,  <52.407089, 56.254551, 50.821793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.321976, 56.538200, 50.552910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221036, 0.705065, 0.673815,
		0.951770, -0.005207, -0.306767,
		-0.212782, 0.709124, -0.672211,
		52.258141, 56.750938, 50.351246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.006680, 56.722607, 50.728577>,  <52.407089, 56.254551, 50.821793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.006680, 56.722607, 50.728577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.663254, 56.915295, 50.658360>,  <52.457199, 57.030907, 50.616230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.663254, 56.915295, 50.658360>,  <53.006680, 56.722607, 50.728577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.663254, 56.915295, 50.658360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291540, 0.740334, 0.605731,
		0.421754, 0.468880, -0.776064,
		-0.858562, 0.481723, -0.175541,
		52.405685, 57.059811, 50.605698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.095562, 57.488403, 50.717297>,  <53.006680, 56.722607, 50.728577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.095562, 57.488403, 50.717297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.450401, 57.576763, 50.879410>,  <53.663307, 57.629780, 50.976677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.450401, 57.576763, 50.879410>,  <53.095562, 57.488403, 50.717297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.450401, 57.576763, 50.879410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170838, 0.658550, -0.732889,
		-0.428797, 0.719384, 0.546462,
		0.887101, 0.220904, 0.405282,
		53.716530, 57.643036, 51.000996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.196907, 58.262131, 50.723701>,  <53.095562, 57.488403, 50.717297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.196907, 58.262131, 50.723701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.569225, 58.115921, 50.721947>,  <53.792614, 58.028194, 50.720894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.569225, 58.115921, 50.721947>,  <53.196907, 58.262131, 50.723701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.569225, 58.115921, 50.721947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227673, 0.589060, -0.775353,
		0.285991, 0.720695, 0.631513,
		0.930792, -0.365523, -0.004383,
		53.848461, 58.006264, 50.720631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.630772, 58.871082, 50.764648>,  <53.196907, 58.262131, 50.723701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.630772, 58.871082, 50.764648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.822975, 58.579750, 50.569244>,  <53.938297, 58.404949, 50.452000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.822975, 58.579750, 50.569244>,  <53.630772, 58.871082, 50.764648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.822975, 58.579750, 50.569244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357968, 0.671401, -0.648906,
		0.800608, 0.136931, 0.583333,
		0.480506, -0.728334, -0.488512,
		53.967129, 58.361252, 50.422691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.317879, 59.106110, 50.818787>,  <53.630772, 58.871082, 50.764648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.317879, 59.106110, 50.818787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.210938, 58.860813, 50.521477>,  <54.146770, 58.713634, 50.343090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.210938, 58.860813, 50.521477>,  <54.317879, 59.106110, 50.818787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.210938, 58.860813, 50.521477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360638, 0.651616, -0.667336,
		0.893566, -0.446470, 0.046943,
		-0.267357, -0.613238, -0.743276,
		54.130730, 58.676842, 50.298492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.054188, 59.107040, 50.862801>,  <54.317879, 59.106110, 50.818787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.054188, 59.107040, 50.862801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.812645, 58.816719, 50.994591>,  <54.667717, 58.642525, 51.073666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.812645, 58.816719, 50.994591>,  <55.054188, 59.107040, 50.862801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.812645, 58.816719, 50.994591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431638, 0.645256, 0.630343,
		-0.670104, 0.238426, -0.702932,
		-0.603862, -0.725808, 0.329475,
		54.631485, 58.598976, 51.093433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.343655, 58.600780, 51.347942>,  <55.054188, 59.107040, 50.862801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.343655, 58.600780, 51.347942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.595100, 58.911785, 51.354980>,  <55.745968, 59.098389, 51.359203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.595100, 58.911785, 51.354980>,  <55.343655, 58.600780, 51.347942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.595100, 58.911785, 51.354980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756214, -0.616367, 0.219618,
		0.181601, -0.124751, -0.975427,
		0.628619, 0.777514, 0.017595,
		55.783688, 59.145039, 51.360260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.954792, 58.344250, 51.055943>,  <55.343655, 58.600780, 51.347942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.954792, 58.344250, 51.055943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.017738, 58.635342, 51.322968>,  <56.055508, 58.809998, 51.483181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.017738, 58.635342, 51.322968>,  <55.954792, 58.344250, 51.055943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.017738, 58.635342, 51.322968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838266, -0.455794, 0.299270,
		0.522060, 0.512502, -0.681759,
		0.157365, 0.727732, 0.667564,
		56.064949, 58.853661, 51.523235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.599113, 58.621841, 51.043251>,  <55.954792, 58.344250, 51.055943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.599113, 58.621841, 51.043251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.526611, 58.733055, 51.420578>,  <56.483112, 58.799782, 51.646973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.526611, 58.733055, 51.420578>,  <56.599113, 58.621841, 51.043251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.526611, 58.733055, 51.420578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950779, -0.195593, 0.240336,
		0.251328, 0.940448, -0.228895,
		-0.181253, 0.278032, 0.943316,
		56.472237, 58.816463, 51.703571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.085533, 59.072960, 51.141281>,  <56.599113, 58.621841, 51.043251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.085533, 59.072960, 51.141281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.949570, 58.835388, 51.432953>,  <56.867992, 58.692844, 51.607956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.949570, 58.835388, 51.432953>,  <57.085533, 59.072960, 51.141281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.949570, 58.835388, 51.432953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933183, -0.116750, 0.339909,
		-0.116750, 0.796000, 0.593930,
		-0.339909, -0.593930, 0.729183,
		56.847595, 58.657207, 51.651707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.113529, 59.259964, 51.858997>,  <57.085533, 59.072960, 51.141281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.113529, 59.259964, 51.858997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.163635, 58.864105, 51.830956>,  <57.193699, 58.626591, 51.814129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.163635, 58.864105, 51.830956>,  <57.113529, 59.259964, 51.858997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.163635, 58.864105, 51.830956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887062, 0.080076, 0.454652,
		-0.444329, -0.119143, 0.887906,
		0.125269, -0.989643, -0.070108,
		57.201218, 58.567211, 51.809925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.299603, 58.948399, 52.487419>,  <57.113529, 59.259964, 51.858997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.299603, 58.948399, 52.487419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.441063, 58.685638, 52.221058>,  <57.525940, 58.527985, 52.061241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.441063, 58.685638, 52.221058>,  <57.299603, 58.948399, 52.487419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.441063, 58.685638, 52.221058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891019, 0.019947, 0.453527,
		-0.284638, -0.753716, 0.592362,
		0.353647, -0.656897, -0.665898,
		57.547157, 58.488571, 52.021290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.575985, 58.272732, 52.824261>,  <57.299603, 58.948399, 52.487419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.575985, 58.272732, 52.824261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.735977, 58.399170, 52.480145>,  <57.831974, 58.475033, 52.273674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.735977, 58.399170, 52.480145>,  <57.575985, 58.272732, 52.824261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.735977, 58.399170, 52.480145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896321, 0.061083, 0.439177,
		0.191372, -0.946759, -0.258892,
		0.399981, 0.316096, -0.860290,
		57.855972, 58.493999, 52.222057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.107811, 57.961437, 53.011124>,  <57.575985, 58.272732, 52.824261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.107811, 57.961437, 53.011124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.133583, 58.271812, 52.760120>,  <58.149048, 58.458038, 52.609520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.133583, 58.271812, 52.760120>,  <58.107811, 57.961437, 53.011124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.133583, 58.271812, 52.760120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872948, 0.260861, 0.412204,
		0.483538, -0.574340, -0.660549,
		0.064434, 0.775941, -0.627505,
		58.152912, 58.504597, 52.571869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.746365, 57.985729, 52.639622>,  <58.107811, 57.961437, 53.011124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.746365, 57.985729, 52.639622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.581871, 58.340622, 52.723251>,  <58.483177, 58.553558, 52.773430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.581871, 58.340622, 52.723251>,  <58.746365, 57.985729, 52.639622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.581871, 58.340622, 52.723251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758332, 0.205723, 0.618556,
		0.505790, 0.412916, -0.757414,
		-0.411229, 0.887231, 0.209074,
		58.458504, 58.606792, 52.785973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.162731, 58.643150, 52.525356>,  <58.746365, 57.985729, 52.639622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.162731, 58.643150, 52.525356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.910675, 58.728607, 52.823963>,  <58.759441, 58.779881, 53.003128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.910675, 58.728607, 52.823963>,  <59.162731, 58.643150, 52.525356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.910675, 58.728607, 52.823963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764521, 0.338801, 0.548381,
		-0.135763, 0.916282, -0.376824,
		-0.630140, 0.213640, 0.746513,
		58.721634, 58.792698, 53.047916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.269688, 59.356232, 52.857079>,  <59.162731, 58.643150, 52.525356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.269688, 59.356232, 52.857079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.109497, 59.090195, 53.109200>,  <59.013382, 58.930573, 53.260471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.109497, 59.090195, 53.109200>,  <59.269688, 59.356232, 52.857079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.109497, 59.090195, 53.109200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771339, 0.126623, 0.623701,
		-0.494627, 0.735951, 0.462299,
		-0.400475, -0.665088, 0.630299,
		58.989353, 58.890667, 53.298290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.236004, 59.689701, 53.523998>,  <59.269688, 59.356232, 52.857079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.236004, 59.689701, 53.523998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.242104, 59.295017, 53.588711>,  <59.245766, 59.058208, 53.627541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.242104, 59.295017, 53.588711>,  <59.236004, 59.689701, 53.523998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.242104, 59.295017, 53.588711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674360, 0.129616, 0.726937,
		-0.738245, 0.098013, 0.667374,
		0.015253, -0.986708, 0.161785,
		59.246681, 58.999004, 53.637245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.340820, 59.599854, 54.252632>,  <59.236004, 59.689701, 53.523998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.340820, 59.599854, 54.252632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.448364, 59.247234, 54.097412>,  <59.512890, 59.035664, 54.004280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.448364, 59.247234, 54.097412>,  <59.340820, 59.599854, 54.252632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.448364, 59.247234, 54.097412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770463, -0.044937, 0.635899,
		-0.578016, -0.469943, 0.667122,
		0.268857, -0.881552, -0.388048,
		59.529022, 58.982769, 53.980999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.510918, 59.240929, 54.788280>,  <59.340820, 59.599854, 54.252632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.510918, 59.240929, 54.788280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.718544, 59.039474, 54.512039>,  <59.843121, 58.918602, 54.346294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.718544, 59.039474, 54.512039>,  <59.510918, 59.240929, 54.788280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.718544, 59.039474, 54.512039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773154, -0.067831, 0.630580,
		-0.364424, -0.861252, 0.354176,
		0.519064, -0.503631, -0.690600,
		59.874264, 58.888386, 54.304859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.592873, 58.523270, 55.049244>,  <59.510918, 59.240929, 54.788280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.592873, 58.523270, 55.049244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.883484, 58.717773, 54.855042>,  <60.057850, 58.834476, 54.738522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.883484, 58.717773, 54.855042>,  <59.592873, 58.523270, 55.049244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.883484, 58.717773, 54.855042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645181, -0.239608, 0.725486,
		0.236441, -0.840323, -0.487805,
		0.726524, 0.486257, -0.485507,
		60.101440, 58.863651, 54.709389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.251102, 58.139332, 55.135948>,  <59.592873, 58.523270, 55.049244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.251102, 58.139332, 55.135948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.370125, 58.511292, 55.049469>,  <60.441540, 58.734467, 54.997581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.370125, 58.511292, 55.049469>,  <60.251102, 58.139332, 55.135948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.370125, 58.511292, 55.049469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613257, -0.012617, 0.789783,
		0.731693, -0.367592, -0.574023,
		0.297560, 0.929902, -0.216196,
		60.459393, 58.790260, 54.984612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.023510, 58.110500, 55.002110>,  <60.251102, 58.139332, 55.135948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.023510, 58.110500, 55.002110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.908226, 58.467857, 55.139969>,  <60.839058, 58.682274, 55.222683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.908226, 58.467857, 55.139969>,  <61.023510, 58.110500, 55.002110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.908226, 58.467857, 55.139969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645428, -0.084631, 0.759118,
		0.707361, 0.441228, -0.552231,
		-0.288208, 0.893396, 0.344645,
		60.821762, 58.735878, 55.243362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.617325, 58.515320, 55.117897>,  <61.023510, 58.110500, 55.002110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.617325, 58.515320, 55.117897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.344826, 58.603722, 55.397057>,  <61.181328, 58.656765, 55.564552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.344826, 58.603722, 55.397057>,  <61.617325, 58.515320, 55.117897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.344826, 58.603722, 55.397057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583070, -0.412636, 0.699829,
		0.442645, 0.883678, 0.152244,
		-0.681246, 0.221007, 0.697897,
		61.140453, 58.670025, 55.606426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.092216, 58.783230, 55.592331>,  <61.617325, 58.515320, 55.117897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.092216, 58.783230, 55.592331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.740105, 58.665169, 55.740921>,  <61.528839, 58.594334, 55.830074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.740105, 58.665169, 55.740921>,  <62.092216, 58.783230, 55.592331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.740105, 58.665169, 55.740921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453448, -0.292944, 0.841766,
		-0.139624, 0.909434, 0.391707,
		-0.880279, -0.295149, 0.371479,
		61.476021, 58.576626, 55.852364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.111626, 58.826157, 56.313251>,  <62.092216, 58.783230, 55.592331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.111626, 58.826157, 56.313251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.805252, 58.574654, 56.259560>,  <61.621429, 58.423752, 56.227345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.805252, 58.574654, 56.259560>,  <62.111626, 58.826157, 56.313251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.805252, 58.574654, 56.259560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268093, -0.502114, 0.822197,
		-0.584360, 0.593758, 0.553149,
		-0.765930, -0.628755, -0.134233,
		61.575474, 58.386028, 56.219292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.794537, 58.676193, 56.952583>,  <62.111626, 58.826157, 56.313251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.794537, 58.676193, 56.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.674332, 58.375793, 56.717400>,  <61.602211, 58.195553, 56.576290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.674332, 58.375793, 56.717400>,  <61.794537, 58.676193, 56.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.674332, 58.375793, 56.717400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152616, -0.646371, 0.747605,
		-0.941490, 0.134930, 0.308854,
		-0.300509, -0.750998, -0.587959,
		61.584179, 58.150494, 56.541012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.172054, 58.297813, 57.321266>,  <61.794537, 58.676193, 56.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.172054, 58.297813, 57.321266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.387993, 58.047905, 57.095619>,  <61.517555, 57.897961, 56.960232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.387993, 58.047905, 57.095619>,  <61.172054, 58.297813, 57.321266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.387993, 58.047905, 57.095619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073992, -0.632343, 0.771147,
		-0.838505, -0.458041, -0.295140,
		0.539846, -0.624773, -0.564114,
		61.549946, 57.860474, 56.926384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.932087, 57.689465, 57.528362>,  <61.172054, 58.297813, 57.321266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.932087, 57.689465, 57.528362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.288261, 57.616856, 57.361427>,  <61.501968, 57.573292, 57.261269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.288261, 57.616856, 57.361427>,  <60.932087, 57.689465, 57.528362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.288261, 57.616856, 57.361427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221723, -0.627792, 0.746134,
		-0.397435, -0.756920, -0.518764,
		0.890440, -0.181518, -0.417334,
		61.555393, 57.562401, 57.236229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.973106, 56.957607, 57.413673>,  <60.932087, 57.689465, 57.528362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.973106, 56.957607, 57.413673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.291222, 57.181004, 57.507996>,  <61.482090, 57.315041, 57.564590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.291222, 57.181004, 57.507996>,  <60.973106, 56.957607, 57.413673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.291222, 57.181004, 57.507996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077951, -0.479950, 0.873826,
		0.601195, -0.676565, -0.425234,
		0.795291, 0.558488, 0.235804,
		61.529808, 57.348549, 57.578735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.592182, 56.570774, 57.712975>,  <60.973106, 56.957607, 57.413673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.592182, 56.570774, 57.712975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.610619, 56.944374, 57.854691>,  <61.621681, 57.168533, 57.939720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.610619, 56.944374, 57.854691>,  <61.592182, 56.570774, 57.712975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.610619, 56.944374, 57.854691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109797, -0.357259, 0.927529,
		0.992885, -0.003846, -0.119015,
		0.046087, 0.933997, 0.354295,
		61.624443, 57.224575, 57.960979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.371929, 56.741512, 58.072720>,  <61.592182, 56.570774, 57.712975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.371929, 56.741512, 58.072720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.003830, 56.854233, 58.181328>,  <61.782970, 56.921864, 58.246494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.003830, 56.854233, 58.181328>,  <62.371929, 56.741512, 58.072720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.003830, 56.854233, 58.181328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003794, -0.700245, 0.713893,
		0.391309, 0.655931, 0.645470,
		-0.920251, 0.281802, 0.271524,
		61.727753, 56.938774, 58.262787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.400871, 56.839546, 58.829155>,  <62.371929, 56.741512, 58.072720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.400871, 56.839546, 58.829155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.030464, 56.732391, 58.722778>,  <61.808220, 56.668098, 58.658955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.030464, 56.732391, 58.722778>,  <62.400871, 56.839546, 58.829155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.030464, 56.732391, 58.722778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057790, -0.595602, 0.801198,
		-0.373026, 0.757294, 0.536058,
		-0.926019, -0.267889, -0.265939,
		61.752659, 56.652023, 58.642998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.176155, 56.827324, 58.866188>,  <62.400871, 56.839546, 58.829155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.176155, 56.827324, 58.866188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.322014, 56.767967, 58.498489>,  <63.409531, 56.732353, 58.277870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.322014, 56.767967, 58.498489>,  <63.176155, 56.827324, 58.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.322014, 56.767967, 58.498489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735926, 0.650762, 0.186875,
		0.570478, -0.744640, 0.346506,
		0.364647, -0.148394, -0.919245,
		63.431408, 56.723450, 58.222717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.935238, 56.827591, 59.041748>,  <63.176155, 56.827324, 58.866188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.935238, 56.827591, 59.041748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.856255, 56.914684, 58.659416>,  <63.808865, 56.966938, 58.430019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.856255, 56.914684, 58.659416>,  <63.935238, 56.827591, 59.041748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.856255, 56.914684, 58.659416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803315, 0.594774, -0.030464,
		0.561868, -0.773846, -0.292348,
		-0.197455, 0.217731, -0.955827,
		63.797016, 56.980003, 58.372669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.495132, 57.086994, 58.778660>,  <63.935238, 56.827591, 59.041748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.495132, 57.086994, 58.778660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.272171, 57.152039, 58.452995>,  <64.138397, 57.191067, 58.257595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.272171, 57.152039, 58.452995>,  <64.495132, 57.086994, 58.778660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.272171, 57.152039, 58.452995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563900, 0.793890, -0.227499,
		0.609365, -0.585915, -0.534208,
		-0.557398, 0.162610, -0.814166,
		64.104950, 57.200821, 58.208744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.854370, 57.730217, 58.726578>,  <64.495132, 57.086994, 58.778660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.854370, 57.730217, 58.726578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.970604, 57.369991, 58.855904>,  <65.040344, 57.153854, 58.933498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.970604, 57.369991, 58.855904>,  <64.854370, 57.730217, 58.726578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.970604, 57.369991, 58.855904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956792, 0.269891, -0.108199,
		0.010180, 0.340787, 0.940085,
		0.290594, -0.900568, 0.323315,
		65.057785, 57.099819, 58.952900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.422798, 57.770401, 59.256207>,  <64.854370, 57.730217, 58.726578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.422798, 57.770401, 59.256207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.437157, 57.445793, 59.022919>,  <65.445770, 57.251026, 58.882946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.437157, 57.445793, 59.022919>,  <65.422798, 57.770401, 59.256207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.437157, 57.445793, 59.022919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895733, 0.284907, -0.341306,
		0.443140, -0.510155, 0.737135,
		0.035896, -0.811523, -0.583217,
		65.447922, 57.202335, 58.847954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.986641, 57.388378, 59.410961>,  <65.422798, 57.770401, 59.256207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.986641, 57.388378, 59.410961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.881760, 57.352184, 59.026657>,  <65.818832, 57.330467, 58.796074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.881760, 57.352184, 59.026657>,  <65.986641, 57.388378, 59.410961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.881760, 57.352184, 59.026657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909841, 0.308624, -0.277380,
		0.321613, -0.946870, 0.001404,
		-0.262209, -0.090487, -0.960760,
		65.803101, 57.325039, 58.738430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.441109, 56.885307, 59.006523>,  <65.986641, 57.388378, 59.410961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.441109, 56.885307, 59.006523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.301765, 57.180557, 58.775414>,  <66.218163, 57.357708, 58.636749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.301765, 57.180557, 58.775414>,  <66.441109, 56.885307, 59.006523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.301765, 57.180557, 58.775414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931710, 0.340251, -0.127064,
		0.102798, -0.582578, -0.806248,
		-0.348351, 0.738128, -0.577771,
		66.197258, 57.401997, 58.602081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.653526, 56.838543, 58.326645>,  <66.441109, 56.885307, 59.006523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.653526, 56.838543, 58.326645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.581032, 57.218884, 58.427063>,  <66.537537, 57.447090, 58.487312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.581032, 57.218884, 58.427063>,  <66.653526, 56.838543, 58.326645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.581032, 57.218884, 58.427063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977706, 0.201739, -0.058240,
		-0.106024, 0.234892, -0.966222,
		-0.181245, 0.950856, 0.251045,
		66.526657, 57.504139, 58.502377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.933456, 57.460056, 57.716114>,  <66.653526, 56.838543, 58.326645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.933456, 57.460056, 57.716114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.914383, 57.555641, 58.104057>,  <66.902939, 57.612991, 58.336823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.914383, 57.555641, 58.104057>,  <66.933456, 57.460056, 57.716114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.914383, 57.555641, 58.104057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951560, 0.306127, -0.028635,
		-0.303742, 0.921510, -0.241989,
		-0.047692, 0.238965, 0.969856,
		66.900078, 57.627331, 58.395016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.037422, 58.237194, 57.896988>,  <66.933456, 57.460056, 57.716114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.037422, 58.237194, 57.896988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.157890, 57.998707, 58.194664>,  <67.230171, 57.855614, 58.373268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.157890, 57.998707, 58.194664>,  <67.037422, 58.237194, 57.896988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.157890, 57.998707, 58.194664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909829, 0.413324, -0.037069,
		-0.285490, 0.688249, 0.666940,
		0.301175, -0.596219, 0.744189,
		67.248245, 57.819839, 58.417919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.457222, 58.632099, 58.428822>,  <67.037422, 58.237194, 57.896988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.457222, 58.632099, 58.428822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.580215, 58.253559, 58.468559>,  <67.654015, 58.026436, 58.492401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.580215, 58.253559, 58.468559>,  <67.457222, 58.632099, 58.428822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.580215, 58.253559, 58.468559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949332, 0.312224, 0.035845,
		-0.064941, 0.083292, 0.994407,
		0.307492, -0.946350, 0.099348,
		67.672462, 57.969654, 58.498363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.967682, 58.604275, 58.962646>,  <67.457222, 58.632099, 58.428822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.967682, 58.604275, 58.962646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.015350, 58.302307, 58.704689>,  <68.043953, 58.121124, 58.549915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.015350, 58.302307, 58.704689>,  <67.967682, 58.604275, 58.962646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.015350, 58.302307, 58.704689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991830, 0.120292, 0.042456,
		0.045525, -0.644686, 0.763090,
		0.119164, -0.754923, -0.644896,
		68.051102, 58.075829, 58.511219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.484894, 58.243561, 59.274178>,  <67.967682, 58.604275, 58.962646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.484894, 58.243561, 59.274178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.454063, 58.232788, 58.875511>,  <68.435570, 58.226322, 58.636311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.454063, 58.232788, 58.875511>,  <68.484894, 58.243561, 59.274178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.454063, 58.232788, 58.875511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928679, 0.361798, -0.081590,
		0.362788, -0.931868, -0.002871,
		-0.077069, -0.026934, -0.996662,
		68.430946, 58.224709, 58.576511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.996239, 57.832317, 58.924488>,  <68.484894, 58.243561, 59.274178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.996239, 57.832317, 58.924488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.900612, 58.143547, 58.692123>,  <68.843239, 58.330284, 58.552704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.900612, 58.143547, 58.692123>,  <68.996239, 57.832317, 58.924488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.900612, 58.143547, 58.692123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957162, 0.289487, -0.006157,
		0.163375, -0.557494, -0.813946,
		-0.239059, 0.778073, -0.580907,
		68.828896, 58.376968, 58.517853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.277992, 57.801243, 58.114727>,  <68.996239, 57.832317, 58.924488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.277992, 57.801243, 58.114727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.249939, 58.118500, 58.356720>,  <69.233109, 58.308853, 58.501915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.249939, 58.118500, 58.356720>,  <69.277992, 57.801243, 58.114727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.249939, 58.118500, 58.356720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997000, 0.075648, 0.016414,
		-0.032747, 0.604320, -0.796069,
		-0.070141, 0.793142, 0.604984,
		69.228897, 58.356441, 58.538216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.802864, 58.360619, 58.057648>,  <69.277992, 57.801243, 58.114727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.802864, 58.360619, 58.057648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.696838, 58.358089, 58.443329>,  <69.633224, 58.356571, 58.674740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.696838, 58.358089, 58.443329>,  <69.802864, 58.360619, 58.057648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.696838, 58.358089, 58.443329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962187, 0.063295, 0.264933,
		-0.062706, 0.997975, -0.010691,
		-0.265073, -0.006326, 0.964208,
		69.617317, 58.356194, 58.732590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.153122, 58.793606, 58.416748>,  <69.802864, 58.360619, 58.057648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.153122, 58.793606, 58.416748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.062164, 58.524620, 58.698479>,  <70.007591, 58.363228, 58.867516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.062164, 58.524620, 58.698479>,  <70.153122, 58.793606, 58.416748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.062164, 58.524620, 58.698479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943700, 0.026258, 0.329759,
		-0.240247, 0.739660, 0.628637,
		-0.227403, -0.672469, 0.704325,
		69.993942, 58.322880, 58.909775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.254074, 59.074944, 59.130600>,  <70.153122, 58.793606, 58.416748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.254074, 59.074944, 59.130600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.316216, 58.684250, 59.071472>,  <70.353500, 58.449833, 59.035995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.316216, 58.684250, 59.071472>,  <70.254074, 59.074944, 59.130600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.316216, 58.684250, 59.071472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915993, 0.086395, 0.391782,
		-0.369897, -0.196263, 0.908106,
		0.155348, -0.976738, -0.147818,
		70.362823, 58.391228, 59.027126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.808540, 58.902386, 59.505222>,  <70.254074, 59.074944, 59.130600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.808540, 58.902386, 59.505222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.772079, 58.542683, 59.334099>,  <70.750198, 58.326859, 59.231426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.772079, 58.542683, 59.334099>,  <70.808540, 58.902386, 59.505222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.772079, 58.542683, 59.334099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884511, -0.270489, 0.380101,
		-0.457527, -0.343751, 0.820064,
		-0.091159, -0.899261, -0.427808,
		70.744736, 58.272903, 59.205757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.857430, 58.370480, 59.992371>,  <70.808540, 58.902386, 59.505222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.857430, 58.370480, 59.992371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.973618, 58.212982, 59.643524>,  <71.043335, 58.118484, 59.434216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.973618, 58.212982, 59.643524>,  <70.857430, 58.370480, 59.992371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.973618, 58.212982, 59.643524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868515, -0.274054, 0.413008,
		-0.401625, -0.877418, 0.262364,
		0.290479, -0.393742, -0.872118,
		71.060760, 58.094860, 59.381889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.913528, 57.562607, 59.968925>,  <70.857430, 58.370480, 59.992371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.913528, 57.562607, 59.968925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.177200, 57.770050, 59.751114>,  <71.335403, 57.894516, 59.620426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.177200, 57.770050, 59.751114>,  <70.913528, 57.562607, 59.968925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.177200, 57.770050, 59.751114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742356, -0.333322, 0.581210,
		0.119915, -0.787364, -0.604713,
		0.659188, 0.518608, -0.544534,
		71.374954, 57.925632, 59.587753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.415985, 57.184334, 59.566593>,  <70.913528, 57.562607, 59.968925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.415985, 57.184334, 59.566593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.596817, 57.522583, 59.680115>,  <71.705315, 57.725533, 59.748226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.596817, 57.522583, 59.680115>,  <71.415985, 57.184334, 59.566593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.596817, 57.522583, 59.680115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776127, -0.529730, 0.342071,
		0.439603, 0.065626, -0.895792,
		0.452079, 0.845624, 0.283805,
		71.732437, 57.776272, 59.765255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.049179, 57.098434, 59.251225>,  <71.415985, 57.184334, 59.566593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.049179, 57.098434, 59.251225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.061707, 57.342659, 59.567764>,  <72.069221, 57.489193, 59.757687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.061707, 57.342659, 59.567764>,  <72.049179, 57.098434, 59.251225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.061707, 57.342659, 59.567764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940435, -0.286161, 0.183560,
		0.338528, 0.738463, -0.583156,
		0.031325, 0.610560, 0.791350,
		72.071106, 57.525826, 59.805168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.497711, 57.644619, 59.229954>,  <72.049179, 57.098434, 59.251225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.497711, 57.644619, 59.229954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.476868, 57.585613, 59.625031>,  <72.464363, 57.550209, 59.862076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.476868, 57.585613, 59.625031>,  <72.497711, 57.644619, 59.229954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.476868, 57.585613, 59.625031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988936, -0.145176, 0.030488,
		0.138892, 0.978348, 0.153442,
		-0.052104, -0.147510, 0.987687,
		72.461235, 57.541359, 59.921337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.002892, 58.014198, 59.646980>,  <72.497711, 57.644619, 59.229954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.002892, 58.014198, 59.646980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.909332, 57.687016, 59.857216>,  <72.853195, 57.490707, 59.983356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.909332, 57.687016, 59.857216>,  <73.002892, 58.014198, 59.646980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.909332, 57.687016, 59.857216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970965, -0.168599, 0.169707,
		-0.050200, 0.550021, 0.833640,
		-0.233893, -0.817955, 0.525588,
		72.839165, 57.441628, 60.014893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.220795, 57.979786, 60.314308>,  <73.002892, 58.014198, 59.646980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.220795, 57.979786, 60.314308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.216721, 57.602551, 60.181351>,  <73.214279, 57.376209, 60.101578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.216721, 57.602551, 60.181351>,  <73.220795, 57.979786, 60.314308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.216721, 57.602551, 60.181351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987136, -0.062523, 0.147148,
		-0.159555, -0.326618, 0.931592,
		-0.010184, -0.943086, -0.332392,
		73.213669, 57.319626, 60.081635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
