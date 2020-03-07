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
	<0.944992, -0.701979, 4.507997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030418, -0.320999, 4.594925>,  <1.081674, -0.092411, 4.647082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.030418, -0.320999, 4.594925>,  <0.944992, -0.701979, 4.507997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.030418, -0.320999, 4.594925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799748, 0.298210, -0.521032,
		-0.561064, -0.062527, 0.825408,
		0.213566, 0.952450, 0.217321,
		1.094488, -0.035264, 4.660121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.299489, -0.379716, 4.605302>,  <0.944992, -0.701979, 4.507997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.299489, -0.379716, 4.605302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.563782, -0.119522, 4.455475>,  <0.722357, 0.036594, 4.365578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.563782, -0.119522, 4.455475>,  <0.299489, -0.379716, 4.605302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.563782, -0.119522, 4.455475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675362, 0.297392, -0.674866,
		-0.327597, 0.698875, 0.635810,
		0.660732, 0.650486, -0.374569,
		0.762001, 0.075624, 4.343104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.083071, 0.311558, 4.657994>,  <0.299489, -0.379716, 4.605302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.083071, 0.311558, 4.657994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.338280, 0.255280, 4.355171>,  <0.491405, 0.221513, 4.173478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.338280, 0.255280, 4.355171>,  <0.083071, 0.311558, 4.657994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.338280, 0.255280, 4.355171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598275, 0.528375, -0.602401,
		0.484765, 0.837272, 0.252940,
		0.638021, -0.140695, -0.757056,
		0.529686, 0.213071, 4.128054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.279572, 0.929685, 4.322556>,  <0.083071, 0.311558, 4.657994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.279572, 0.929685, 4.322556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318954, 0.638000, 4.051689>,  <0.342584, 0.462990, 3.889169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318954, 0.638000, 4.051689>,  <0.279572, 0.929685, 4.322556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.318954, 0.638000, 4.051689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523329, 0.540841, -0.658497,
		0.846424, 0.419215, -0.328369,
		0.098457, -0.729212, -0.677168,
		0.348491, 0.419237, 3.848539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.510617, 1.282657, 3.789059>,  <0.279572, 0.929685, 4.322556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.510617, 1.282657, 3.789059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.351509, 0.939835, 3.658073>,  <0.256045, 0.734141, 3.579482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.351509, 0.939835, 3.658073>,  <0.510617, 1.282657, 3.789059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.351509, 0.939835, 3.658073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294901, 0.457408, -0.838935,
		0.868800, -0.237132, -0.434689,
		-0.397768, -0.857057, -0.327465,
		0.232178, 0.682718, 3.559834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.763735, 1.219223, 3.101868>,  <0.510617, 1.282657, 3.789059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.763735, 1.219223, 3.101868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417473, 1.024811, 3.149895>,  <0.209716, 0.908164, 3.178711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417473, 1.024811, 3.149895>,  <0.763735, 1.219223, 3.101868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.417473, 1.024811, 3.149895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396646, 0.519491, -0.756836,
		0.305471, -0.702783, -0.642482,
		-0.865656, -0.486030, 0.120067,
		0.157776, 0.879002, 3.185915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.501100, 1.130345, 2.468089>,  <0.763735, 1.219223, 3.101868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.501100, 1.130345, 2.468089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.177795, 1.117676, 2.703278>,  <-0.016187, 1.110075, 2.844391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.177795, 1.117676, 2.703278>,  <0.501100, 1.130345, 2.468089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.177795, 1.117676, 2.703278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516532, 0.517519, -0.682180,
		-0.282681, -0.855085, -0.434650,
		-0.808261, -0.031672, 0.587971,
		-0.064683, 1.108174, 2.879669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.151535, 1.127687, 2.025995>,  <0.501100, 1.130345, 2.468089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.151535, 1.127687, 2.025995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.260124, 1.286087, 2.376877>,  <-0.325278, 1.381127, 2.587406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.260124, 1.286087, 2.376877>,  <-0.151535, 1.127687, 2.025995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.260124, 1.286087, 2.376877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682894, 0.563000, -0.465496,
		-0.678202, -0.725407, 0.117587,
		-0.271473, 0.396000, 0.877204,
		-0.341566, 1.404887, 2.640038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.814215, 0.990700, 2.309960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.160397, 0.873947, 2.472832>,  <3.368105, 0.803895, 2.570555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.160397, 0.873947, 2.472832>,  <2.814215, 0.990700, 2.309960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.160397, 0.873947, 2.472832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438210, 0.047109, -0.897638,
		0.242823, 0.955293, 0.168676,
		0.865453, -0.291882, 0.407180,
		3.420033, 0.786382, 2.594986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.228028, 1.512412, 2.093612>,  <2.814215, 0.990700, 2.309960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.228028, 1.512412, 2.093612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434517, 1.178024, 2.168091>,  <3.558410, 0.977392, 2.212778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434517, 1.178024, 2.168091>,  <3.228028, 1.512412, 2.093612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.434517, 1.178024, 2.168091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325555, -0.009553, -0.945475,
		0.792167, 0.548692, 0.267223,
		0.516222, -0.835970, 0.186198,
		3.589384, 0.927233, 2.223950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.014859, 1.491583, 1.852275>,  <3.228028, 1.512412, 2.093612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.014859, 1.491583, 1.852275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.875248, 1.118011, 1.883148>,  <3.791481, 0.893869, 1.901672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.875248, 1.118011, 1.883148>,  <4.014859, 1.491583, 1.852275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.875248, 1.118011, 1.883148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540676, -0.267962, -0.797412,
		0.765408, -0.236588, 0.598479,
		-0.349027, -0.933929, 0.077183,
		3.770540, 0.837833, 1.906303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.035843, 1.828158, 2.489606>,  <4.014859, 1.491583, 1.852275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.035843, 1.828158, 2.489606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.013508, 1.432800, 2.433098>,  <4.000106, 1.195585, 2.399193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.013508, 1.432800, 2.433098>,  <4.035843, 1.828158, 2.489606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.013508, 1.432800, 2.433098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613576, -0.145590, 0.776098,
		-0.787659, -0.043343, 0.614585,
		-0.055839, -0.988395, -0.141269,
		3.996756, 1.136282, 2.390717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.168277, 1.519327, 3.152615>,  <4.035843, 1.828158, 2.489606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.168277, 1.519327, 3.152615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196190, 1.201645, 2.911163>,  <4.212937, 1.011036, 2.766292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.196190, 1.201645, 2.911163>,  <4.168277, 1.519327, 3.152615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.196190, 1.201645, 2.911163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577031, -0.461462, 0.673861,
		-0.813735, -0.395336, 0.426080,
		0.069782, -0.794205, -0.603629,
		4.217124, 0.963383, 2.730075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.907741, 0.877303, 3.493688>,  <4.168277, 1.519327, 3.152615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.907741, 0.877303, 3.493688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.202675, 0.844788, 3.225441>,  <4.379635, 0.825278, 3.064493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.202675, 0.844788, 3.225441>,  <3.907741, 0.877303, 3.493688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.202675, 0.844788, 3.225441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583770, -0.422867, 0.693106,
		-0.339923, -0.902538, -0.264342,
		0.737337, -0.081288, -0.670617,
		4.423876, 0.820401, 3.024256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.051555, 0.131976, 3.271987>,  <3.907741, 0.877303, 3.493688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.051555, 0.131976, 3.271987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.377724, 0.362289, 3.248123>,  <4.573425, 0.500477, 3.233805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.377724, 0.362289, 3.248123>,  <4.051555, 0.131976, 3.271987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.377724, 0.362289, 3.248123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496174, -0.642132, 0.584362,
		0.298157, -0.506103, -0.809297,
		0.815423, 0.575784, -0.059659,
		4.622351, 0.535024, 3.230225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.556232, -0.203713, 2.958273>,  <4.051555, 0.131976, 3.271987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.556232, -0.203713, 2.958273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.750751, 0.064850, 3.181961>,  <4.867463, 0.225987, 3.316174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.750751, 0.064850, 3.181961>,  <4.556232, -0.203713, 2.958273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.750751, 0.064850, 3.181961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398774, -0.739987, 0.541663,
		0.777492, -0.040407, -0.627593,
		0.486298, 0.671407, 0.559220,
		4.896641, 0.266272, 3.349727>
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
