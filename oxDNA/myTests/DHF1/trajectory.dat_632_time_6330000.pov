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
	<3.582665, 2.629331, 1.945346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.906818, 2.564230, 1.720211>,  <4.101311, 2.525169, 1.585129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.906818, 2.564230, 1.720211>,  <3.582665, 2.629331, 1.945346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.906818, 2.564230, 1.720211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545381, 0.560578, 0.623147,
		0.214095, -0.811950, 0.543047,
		0.810385, -0.162754, -0.562839,
		4.149934, 2.515404, 1.551359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.255958, 2.443719, 2.387056>,  <3.582665, 2.629331, 1.945346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.255958, 2.443719, 2.387056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.330959, 2.624979, 2.038459>,  <4.375960, 2.733735, 1.829301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.330959, 2.624979, 2.038459>,  <4.255958, 2.443719, 2.387056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.330959, 2.624979, 2.038459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557677, 0.681259, 0.474218,
		0.808603, -0.574928, -0.124973,
		0.187503, 0.453149, -0.871492,
		4.387210, 2.760924, 1.777012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.898758, 2.731347, 2.428257>,  <4.255958, 2.443719, 2.387056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.898758, 2.731347, 2.428257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670635, 2.945461, 2.179028>,  <4.533762, 3.073930, 2.029490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670635, 2.945461, 2.179028>,  <4.898758, 2.731347, 2.428257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.670635, 2.945461, 2.179028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392930, 0.843884, 0.365331,
		0.721358, -0.036473, -0.691602,
		-0.570307, 0.535285, -0.623073,
		4.499543, 3.106047, 1.992106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.271459, 3.274314, 2.152425>,  <4.898758, 2.731347, 2.428257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.271459, 3.274314, 2.152425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.889812, 3.389030, 2.117983>,  <4.660825, 3.457860, 2.097317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.889812, 3.389030, 2.117983>,  <5.271459, 3.274314, 2.152425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.889812, 3.389030, 2.117983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276286, 0.954033, 0.116135,
		0.115455, 0.087017, -0.989494,
		-0.954115, 0.286792, -0.086106,
		4.603578, 3.475068, 2.092151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.228054, 3.699318, 1.670934>,  <5.271459, 3.274314, 2.152425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.228054, 3.699318, 1.670934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.909664, 3.820534, 1.880540>,  <4.718630, 3.893263, 2.006304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.909664, 3.820534, 1.880540>,  <5.228054, 3.699318, 1.670934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.909664, 3.820534, 1.880540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274775, 0.952225, -0.133292,
		-0.539373, 0.037889, -0.841214,
		-0.795975, 0.303039, 0.524016,
		4.670872, 3.911445, 2.037745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.931609, 4.330315, 1.337383>,  <5.228054, 3.699318, 1.670934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.931609, 4.330315, 1.337383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.830044, 4.327171, 1.724261>,  <4.769105, 4.325285, 1.956388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.830044, 4.327171, 1.724261>,  <4.931609, 4.330315, 1.337383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.830044, 4.327171, 1.724261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548072, 0.822767, 0.150568,
		-0.796960, 0.568324, -0.204604,
		-0.253913, -0.007859, 0.967195,
		4.753870, 4.324814, 2.014420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.677877, 5.039662, 1.572549>,  <4.931609, 4.330315, 1.337383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.677877, 5.039662, 1.572549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.810463, 4.871031, 1.910165>,  <4.890015, 4.769852, 2.112735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.810463, 4.871031, 1.910165>,  <4.677877, 5.039662, 1.572549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.810463, 4.871031, 1.910165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536088, 0.820322, 0.199202,
		-0.776364, 0.386451, 0.497910,
		0.331465, -0.421577, 0.844040,
		4.909903, 4.744558, 2.163377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.608585, 5.614057, 2.039504>,  <4.677877, 5.039662, 1.572549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.608585, 5.614057, 2.039504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.849712, 5.349339, 2.217780>,  <4.994389, 5.190508, 2.324745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.849712, 5.349339, 2.217780>,  <4.608585, 5.614057, 2.039504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.849712, 5.349339, 2.217780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591800, 0.745515, 0.306561,
		-0.535149, 0.078959, 0.841060,
		0.602817, -0.661795, 0.445689,
		5.030558, 5.150800, 2.351486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.760855, 6.075984, 2.433269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823898, 5.933064, 2.801507>,  <0.861725, 5.847313, 3.022450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.823898, 5.933064, 2.801507>,  <0.760855, 6.075984, 2.433269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.823898, 5.933064, 2.801507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337593, -0.895574, -0.289790,
		0.928003, -0.265113, -0.261772,
		0.157609, -0.357299, 0.920596,
		0.871181, 5.825875, 3.077686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.068804, 5.362893, 2.252059>,  <0.760855, 6.075984, 2.433269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.068804, 5.362893, 2.252059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.866417, 5.428405, 2.590803>,  <0.744984, 5.467712, 2.794049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.866417, 5.428405, 2.590803>,  <1.068804, 5.362893, 2.252059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.866417, 5.428405, 2.590803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505712, -0.851685, -0.137432,
		0.698750, -0.497804, 0.513751,
		-0.505968, 0.163779, 0.846860,
		0.714626, 5.477539, 2.844861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.059110, 4.732939, 2.705981>,  <1.068804, 5.362893, 2.252059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.059110, 4.732939, 2.705981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.740952, 4.963751, 2.780150>,  <0.550057, 5.102238, 2.824652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.740952, 4.963751, 2.780150>,  <1.059110, 4.732939, 2.705981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.740952, 4.963751, 2.780150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604663, -0.776457, -0.177474,
		0.041565, -0.253281, 0.966499,
		-0.795395, 0.577030, 0.185424,
		0.502333, 5.136860, 2.835778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.645957, 4.325167, 3.138651>,  <1.059110, 4.732939, 2.705981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.645957, 4.325167, 3.138651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.445580, 4.587539, 2.912796>,  <0.325353, 4.744962, 2.777284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.445580, 4.587539, 2.912796>,  <0.645957, 4.325167, 3.138651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.445580, 4.587539, 2.912796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600522, -0.733223, -0.318994,
		-0.623241, 0.179277, 0.761203,
		-0.500943, 0.655929, -0.564635,
		0.295297, 4.784317, 2.743406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.048834, 4.248101, 3.375999>,  <0.645957, 4.325167, 3.138651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.048834, 4.248101, 3.375999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061081, 4.391933, 3.002954>,  <-0.068429, 4.478233, 2.779127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061081, 4.391933, 3.002954>,  <-0.048834, 4.248101, 3.375999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.061081, 4.391933, 3.002954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720049, -0.655072, -0.228932,
		-0.693248, 0.664517, 0.278972,
		-0.030618, 0.359580, -0.932612,
		-0.070266, 4.499807, 2.723171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.682211, 4.334663, 3.237006>,  <-0.048834, 4.248101, 3.375999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.682211, 4.334663, 3.237006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.524002, 4.323551, 2.869792>,  <-0.429077, 4.316884, 2.649463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.524002, 4.323551, 2.869792>,  <-0.682211, 4.334663, 3.237006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.524002, 4.323551, 2.869792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703236, -0.652097, -0.283246,
		-0.590780, 0.757626, -0.277455,
		0.395523, -0.027780, -0.918036,
		-0.405345, 4.315217, 2.594381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.271546, 4.160585, 2.862257>,  <-0.682211, 4.334663, 3.237006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.271546, 4.160585, 2.862257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.985229, 4.113266, 2.586968>,  <-0.813440, 4.084875, 2.421795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.985229, 4.113266, 2.586968>,  <-1.271546, 4.160585, 2.862257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.985229, 4.113266, 2.586968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475019, -0.804883, -0.355697,
		-0.511859, 0.581523, -0.632322,
		0.715791, -0.118298, -0.688221,
		-0.770492, 4.077776, 2.380502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.592792, 3.882840, 2.288857>,  <-1.271546, 4.160585, 2.862257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.592792, 3.882840, 2.288857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.221046, 3.750384, 2.223584>,  <-0.997999, 3.670911, 2.184421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.221046, 3.750384, 2.223584>,  <-1.592792, 3.882840, 2.288857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.221046, 3.750384, 2.223584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368525, -0.858176, -0.357385,
		-0.021695, 0.392278, -0.919591,
		0.929365, -0.331138, -0.163182,
		-0.942237, 3.651043, 2.174630>
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
