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
	<3.465565, 4.373741, 3.650358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647964, 4.710651, 3.535374>,  <3.757404, 4.912798, 3.466383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.647964, 4.710651, 3.535374>,  <3.465565, 4.373741, 3.650358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.647964, 4.710651, 3.535374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455559, -0.056570, -0.888406,
		-0.764546, 0.536069, 0.357911,
		0.456000, 0.842277, -0.287461,
		3.784764, 4.963335, 3.449135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.984489, 4.943924, 3.430318>,  <3.465565, 4.373741, 3.650358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.984489, 4.943924, 3.430318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.332287, 4.958363, 3.233269>,  <3.540965, 4.967026, 3.115039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.332287, 4.958363, 3.233269>,  <2.984489, 4.943924, 3.430318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.332287, 4.958363, 3.233269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490055, -0.061858, -0.869494,
		-0.061858, 0.997432, -0.036096,
		0.869494, 0.036096, -0.492623,
		3.593135, 4.969192, 3.085482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.961710, 5.403568, 2.803566>,  <2.984489, 4.943924, 3.430318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.961710, 5.403568, 2.803566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.265430, 5.155628, 2.724319>,  <3.447662, 5.006865, 2.676771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.265430, 5.155628, 2.724319>,  <2.961710, 5.403568, 2.803566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.265430, 5.155628, 2.724319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282197, -0.039310, -0.958551,
		0.586369, 0.783736, -0.204768,
		0.759300, -0.619849, -0.198117,
		3.493221, 4.969674, 2.664884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.466507, 5.614217, 2.201044>,  <2.961710, 5.403568, 2.803566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.466507, 5.614217, 2.201044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.414108, 5.219944, 2.243507>,  <3.382669, 4.983380, 2.268986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.414108, 5.219944, 2.243507>,  <3.466507, 5.614217, 2.201044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.414108, 5.219944, 2.243507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344343, -0.055176, -0.937221,
		0.929660, -0.159328, -0.332185,
		-0.130997, -0.985683, 0.106158,
		3.374809, 4.924239, 2.275355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.547845, 5.292134, 1.514746>,  <3.466507, 5.614217, 2.201044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.547845, 5.292134, 1.514746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360081, 5.011215, 1.728825>,  <3.247422, 4.842664, 1.857272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360081, 5.011215, 1.728825>,  <3.547845, 5.292134, 1.514746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.360081, 5.011215, 1.728825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468006, -0.316091, -0.825261,
		0.748749, -0.637861, -0.180303,
		-0.469410, -0.702296, 0.535196,
		3.219258, 4.800527, 1.889383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.398560, 4.863871, 0.981498>,  <3.547845, 5.292134, 1.514746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.398560, 4.863871, 0.981498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.179230, 4.718578, 1.282803>,  <3.047632, 4.631403, 1.463585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.179230, 4.718578, 1.282803>,  <3.398560, 4.863871, 0.981498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.179230, 4.718578, 1.282803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625744, -0.419348, -0.657717,
		0.554782, -0.831991, 0.002650,
		-0.548326, -0.363232, 0.753261,
		3.014732, 4.609609, 1.508781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.204867, 4.098026, 0.822282>,  <3.398560, 4.863871, 0.981498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.204867, 4.098026, 0.822282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.927605, 4.220665, 1.083214>,  <2.761247, 4.294248, 1.239773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.927605, 4.220665, 1.083214>,  <3.204867, 4.098026, 0.822282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.927605, 4.220665, 1.083214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718461, -0.366558, -0.591142,
		0.057874, -0.878427, 0.474359,
		-0.693155, 0.306597, 0.652330,
		2.719658, 4.312644, 1.278913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.816630, 3.520923, 0.884840>,  <3.204867, 4.098026, 0.822282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.816630, 3.520923, 0.884840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.588455, 3.825230, 1.008671>,  <2.451550, 4.007813, 1.082969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.588455, 3.825230, 1.008671>,  <2.816630, 3.520923, 0.884840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.588455, 3.825230, 1.008671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745965, -0.322143, -0.582889,
		-0.343714, -0.563435, 0.751267,
		-0.570435, 0.760766, 0.309578,
		2.417324, 4.053460, 1.101544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.998248, 4.431425, -0.245553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.769321, 4.236435, 0.018211>,  <1.631966, 4.119441, 0.176470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.769321, 4.236435, 0.018211>,  <1.998248, 4.431425, -0.245553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.769321, 4.236435, 0.018211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491806, 0.439418, 0.751690,
		-0.656187, 0.754507, -0.011743,
		-0.572316, -0.487474, 0.659412,
		1.597627, 4.090193, 0.216035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.605774, 4.867311, 0.217116>,  <1.998248, 4.431425, -0.245553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.605774, 4.867311, 0.217116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.677130, 4.522316, 0.406555>,  <1.719943, 4.315319, 0.520218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.677130, 4.522316, 0.406555>,  <1.605774, 4.867311, 0.217116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.677130, 4.522316, 0.406555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380464, 0.504342, 0.775169,
		-0.907428, 0.041905, 0.418114,
		0.178389, -0.862487, 0.473597,
		1.730646, 4.263570, 0.548634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.459194, 4.955755, 0.867449>,  <1.605774, 4.867311, 0.217116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.459194, 4.955755, 0.867449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.693096, 4.634941, 0.916115>,  <1.833437, 4.442453, 0.945315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.693096, 4.634941, 0.916115>,  <1.459194, 4.955755, 0.867449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.693096, 4.634941, 0.916115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450177, 0.445603, 0.773808,
		-0.674836, -0.397716, 0.621626,
		0.584754, -0.802035, 0.121666,
		1.868523, 4.394331, 0.952614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.652854, 4.973373, 1.487422>,  <1.459194, 4.955755, 0.867449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.652854, 4.973373, 1.487422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.907608, 4.688278, 1.369858>,  <2.060461, 4.517221, 1.299319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.907608, 4.688278, 1.369858>,  <1.652854, 4.973373, 1.487422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.907608, 4.688278, 1.369858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633154, 0.266033, 0.726872,
		-0.439878, -0.649025, 0.620705,
		0.636885, -0.712737, -0.293911,
		2.098674, 4.474457, 1.281685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.779901, 4.709329, 2.105509>,  <1.652854, 4.973373, 1.487422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.779901, 4.709329, 2.105509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.071859, 4.579880, 1.864670>,  <2.247034, 4.502210, 1.720167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.071859, 4.579880, 1.864670>,  <1.779901, 4.709329, 2.105509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.071859, 4.579880, 1.864670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676024, 0.211329, 0.705926,
		-0.101213, -0.922284, 0.373025,
		0.729896, -0.323623, -0.602097,
		2.290828, 4.482793, 1.684041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.126188, 4.140420, 2.356479>,  <1.779901, 4.709329, 2.105509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.126188, 4.140420, 2.356479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.412189, 4.280098, 2.114212>,  <2.583790, 4.363904, 1.968852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.412189, 4.280098, 2.114212>,  <2.126188, 4.140420, 2.356479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.412189, 4.280098, 2.114212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624502, 0.070429, 0.777841,
		0.314274, -0.934400, -0.167715,
		0.715003, 0.349194, -0.605668,
		2.626690, 4.384856, 1.932512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.685141, 3.745099, 2.515805>,  <2.126188, 4.140420, 2.356479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.685141, 3.745099, 2.515805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.855354, 4.054184, 2.327408>,  <2.957483, 4.239635, 2.214369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.855354, 4.054184, 2.327408>,  <2.685141, 3.745099, 2.515805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.855354, 4.054184, 2.327408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736135, 0.007139, 0.676797,
		0.526333, -0.634715, -0.565783,
		0.425534, 0.772713, -0.470994,
		2.983015, 4.285998, 2.186110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.475598, 3.676063, 2.585058>,  <2.685141, 3.745099, 2.515805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.475598, 3.676063, 2.585058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.370281, 4.055275, 2.513596>,  <3.307091, 4.282802, 2.470718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.370281, 4.055275, 2.513596>,  <3.475598, 3.676063, 2.585058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.370281, 4.055275, 2.513596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519876, 0.295432, 0.801529,
		0.812654, 0.118157, -0.570642,
		-0.263292, 0.948029, -0.178657,
		3.291294, 4.339684, 2.459999>
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
