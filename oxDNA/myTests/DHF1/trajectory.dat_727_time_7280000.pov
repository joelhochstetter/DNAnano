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
	<2.561678, 2.318417, 1.565299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.631462, 2.279446, 1.173366>,  <2.673332, 2.256063, 0.938206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.631462, 2.279446, 1.173366>,  <2.561678, 2.318417, 1.565299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.631462, 2.279446, 1.173366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628394, 0.755092, -0.186967,
		0.758079, 0.648339, 0.070511,
		0.174460, -0.097427, -0.979832,
		2.683800, 2.250217, 0.879416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.782804, 2.872269, 1.297527>,  <2.561678, 2.318417, 1.565299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.782804, 2.872269, 1.297527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595901, 2.690926, 0.993913>,  <2.483760, 2.582119, 0.811744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.595901, 2.690926, 0.993913>,  <2.782804, 2.872269, 1.297527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.595901, 2.690926, 0.993913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554076, 0.819170, -0.148191,
		0.688963, 0.351320, -0.633959,
		-0.467258, -0.453359, -0.759036,
		2.455724, 2.554918, 0.766202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.797812, 3.275488, 0.684160>,  <2.782804, 2.872269, 1.297527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.797812, 3.275488, 0.684160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.454102, 3.072052, 0.662316>,  <2.247875, 2.949990, 0.649210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.454102, 3.072052, 0.662316>,  <2.797812, 3.275488, 0.684160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.454102, 3.072052, 0.662316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498071, 0.856226, -0.137121,
		0.116497, -0.090626, -0.989048,
		-0.859275, -0.508590, -0.054610,
		2.196319, 2.919475, 0.645933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.418619, 3.471523, 0.046784>,  <2.797812, 3.275488, 0.684160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.418619, 3.471523, 0.046784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.154751, 3.328613, 0.311266>,  <1.996430, 3.242868, 0.469955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.154751, 3.328613, 0.311266>,  <2.418619, 3.471523, 0.046784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.154751, 3.328613, 0.311266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674510, 0.669467, -0.311208,
		-0.331468, -0.651283, -0.682612,
		-0.659670, -0.357273, 0.661204,
		1.956850, 3.221431, 0.509627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657248, 3.535065, -0.243964>,  <2.418619, 3.471523, 0.046784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657248, 3.535065, -0.243964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.627979, 3.511848, 0.154287>,  <1.610418, 3.497919, 0.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.627979, 3.511848, 0.154287>,  <1.657248, 3.535065, -0.243964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.627979, 3.511848, 0.154287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805746, 0.591745, -0.024722,
		-0.587724, -0.804033, -0.090066,
		-0.073173, -0.058040, 0.995629,
		1.606027, 3.494436, 0.452976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.915128, 3.292347, -0.036636>,  <1.657248, 3.535065, -0.243964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.915128, 3.292347, -0.036636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093319, 3.493414, 0.259708>,  <1.200234, 3.614054, 0.437515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.093319, 3.493414, 0.259708>,  <0.915128, 3.292347, -0.036636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.093319, 3.493414, 0.259708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777131, 0.627989, 0.041203,
		-0.444542, -0.594101, 0.670393,
		0.445477, 0.502667, 0.740862,
		1.226962, 3.644214, 0.481967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.414754, 3.495437, 0.270289>,  <0.915128, 3.292347, -0.036636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.414754, 3.495437, 0.270289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.674255, 3.726774, 0.468133>,  <0.829956, 3.865577, 0.586839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.674255, 3.726774, 0.468133>,  <0.414754, 3.495437, 0.270289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.674255, 3.726774, 0.468133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747331, 0.606813, 0.270692,
		-0.143583, -0.545249, 0.825885,
		0.648753, 0.578343, 0.494610,
		0.868881, 3.900277, 0.616516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.020052, 3.782038, 0.757580>,  <0.414754, 3.495437, 0.270289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.020052, 3.782038, 0.757580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.341007, 4.020201, 0.773907>,  <0.533580, 4.163098, 0.783703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.341007, 4.020201, 0.773907>,  <0.020052, 3.782038, 0.757580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.341007, 4.020201, 0.773907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575967, 0.754645, 0.314283,
		0.156323, -0.275686, 0.948452,
		0.802387, 0.595407, 0.040817,
		0.581723, 4.198823, 0.786152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.127745, 5.338689, 0.262443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.188652, 5.489277, 0.455359>,  <0.378490, 5.579630, 0.571108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.188652, 5.489277, 0.455359>,  <-0.127745, 5.338689, 0.262443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.188652, 5.489277, 0.455359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190155, -0.900507, 0.391059,
		0.581526, -0.217615, -0.783882,
		0.790992, 0.376470, 0.482288,
		0.425950, 5.602218, 0.600045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.511372, 4.936209, 0.030890>,  <-0.127745, 5.338689, 0.262443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.511372, 4.936209, 0.030890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.544106, 5.077961, 0.403496>,  <0.563746, 5.163012, 0.627059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.544106, 5.077961, 0.403496>,  <0.511372, 4.936209, 0.030890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.544106, 5.077961, 0.403496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423211, -0.858554, 0.289443,
		0.902328, 0.370541, -0.220236,
		0.081834, 0.354379, 0.931514,
		0.568656, 5.184275, 0.682950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.190332, 5.047712, 0.115407>,  <0.511372, 4.936209, 0.030890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.190332, 5.047712, 0.115407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977257, 4.966248, 0.443983>,  <0.849412, 4.917369, 0.641129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977257, 4.966248, 0.443983>,  <1.190332, 5.047712, 0.115407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.977257, 4.966248, 0.443983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520023, -0.844532, 0.127838,
		0.667697, 0.495266, 0.555781,
		-0.532688, -0.203662, 0.821441,
		0.817450, 4.905149, 0.690415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.591403, 4.978967, 0.632352>,  <1.190332, 5.047712, 0.115407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.591403, 4.978967, 0.632352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.273270, 4.753551, 0.721678>,  <1.082390, 4.618302, 0.775273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.273270, 4.753551, 0.721678>,  <1.591403, 4.978967, 0.632352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.273270, 4.753551, 0.721678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601976, -0.777546, 0.181785,
		0.071195, 0.279010, 0.957645,
		-0.795334, -0.563538, 0.223315,
		1.034670, 4.584490, 0.788672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.759776, 4.606342, 1.190867>,  <1.591403, 4.978967, 0.632352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.759776, 4.606342, 1.190867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.463142, 4.391502, 1.030081>,  <1.285162, 4.262599, 0.933609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.463142, 4.391502, 1.030081>,  <1.759776, 4.606342, 1.190867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.463142, 4.391502, 1.030081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496103, -0.842400, 0.210344,
		-0.451591, -0.043429, 0.891167,
		-0.741584, -0.537100, -0.401965,
		1.240667, 4.230372, 0.909491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.710150, 4.027193, 1.617672>,  <1.759776, 4.606342, 1.190867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.710150, 4.027193, 1.617672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.534454, 3.920578, 1.274504>,  <1.429037, 3.856609, 1.068603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.534454, 3.920578, 1.274504>,  <1.710150, 4.027193, 1.617672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.534454, 3.920578, 1.274504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502168, -0.864693, 0.011540,
		-0.744913, -0.425751, 0.513653,
		-0.439239, -0.266537, -0.857920,
		1.402683, 3.840617, 1.017128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.293816, 3.415970, 1.719950>,  <1.710150, 4.027193, 1.617672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.293816, 3.415970, 1.719950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.408806, 3.437576, 1.337444>,  <1.477800, 3.450540, 1.107941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.408806, 3.437576, 1.337444>,  <1.293816, 3.415970, 1.719950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.408806, 3.437576, 1.337444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451684, -0.888060, 0.085624,
		-0.844595, -0.456543, -0.279693,
		0.287476, 0.054016, -0.956264,
		1.495049, 3.453781, 1.050565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.015909, 2.889905, 1.368481>,  <1.293816, 3.415970, 1.719950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.015909, 2.889905, 1.368481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333290, 2.997284, 1.149988>,  <1.523719, 3.061712, 1.018892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.333290, 2.997284, 1.149988>,  <1.015909, 2.889905, 1.368481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.333290, 2.997284, 1.149988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332399, -0.942939, 0.019429,
		-0.509848, -0.196983, -0.837408,
		0.793452, 0.268448, -0.546232,
		1.571326, 3.077818, 0.986118>
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
