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
	<1.666350, 1.078624, 1.107690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.970146, 0.926643, 1.318901>,  <2.152424, 0.835455, 1.445628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.970146, 0.926643, 1.318901>,  <1.666350, 1.078624, 1.107690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.970146, 0.926643, 1.318901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625446, 0.649686, -0.432118,
		-0.178867, 0.658442, 0.731068,
		0.759489, -0.379952, 0.528027,
		2.197993, 0.812658, 1.477309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.204805, 1.627399, 1.384402>,  <1.666350, 1.078624, 1.107690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.204805, 1.627399, 1.384402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.387680, 1.276703, 1.324661>,  <2.497405, 1.066285, 1.288817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.387680, 1.276703, 1.324661>,  <2.204805, 1.627399, 1.384402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387680, 1.276703, 1.324661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608624, 0.430875, -0.666276,
		0.648503, 0.213714, 0.730596,
		0.457188, -0.876740, -0.149352,
		2.524836, 1.013681, 1.279856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.982472, 1.784744, 1.422844>,  <2.204805, 1.627399, 1.384402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.982472, 1.784744, 1.422844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.909431, 1.440269, 1.233101>,  <2.865607, 1.233585, 1.119255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.909431, 1.440269, 1.233101>,  <2.982472, 1.784744, 1.422844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.909431, 1.440269, 1.233101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583608, 0.293336, -0.757203,
		0.791238, -0.415106, 0.449031,
		-0.182602, -0.861186, -0.474357,
		2.854651, 1.181914, 1.090794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.644414, 1.582532, 1.083069>,  <2.982472, 1.784744, 1.422844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.644414, 1.582532, 1.083069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360764, 1.400475, 0.867668>,  <3.190573, 1.291240, 0.738428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.360764, 1.400475, 0.867668>,  <3.644414, 1.582532, 1.083069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.360764, 1.400475, 0.867668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477891, 0.251296, -0.841707,
		0.518422, -0.854221, 0.039309,
		-0.709126, -0.455145, -0.538502,
		3.148026, 1.263931, 0.706118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.023644, 1.172290, 0.630118>,  <3.644414, 1.582532, 1.083069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.023644, 1.172290, 0.630118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.667953, 1.244820, 0.462120>,  <3.454539, 1.288338, 0.361321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.667953, 1.244820, 0.462120>,  <4.023644, 1.172290, 0.630118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.667953, 1.244820, 0.462120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456070, 0.279744, -0.844833,
		-0.035699, -0.942796, -0.331453,
		-0.889228, 0.181325, -0.419995,
		3.401185, 1.299217, 0.336122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.079983, 0.789401, 0.004623>,  <4.023644, 1.172290, 0.630118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.079983, 0.789401, 0.004623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801826, 1.075806, -0.019897>,  <3.634933, 1.247649, -0.034610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801826, 1.075806, -0.019897>,  <4.079983, 0.789401, 0.004623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.801826, 1.075806, -0.019897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457279, 0.375073, -0.806360,
		-0.554371, -0.588767, -0.588240,
		-0.695391, 0.716012, -0.061301,
		3.593209, 1.290609, -0.038288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.896658, 0.840007, -0.671067>,  <4.079983, 0.789401, 0.004623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.896658, 0.840007, -0.671067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.755341, 1.197151, -0.559364>,  <3.670550, 1.411438, -0.492342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.755341, 1.197151, -0.559364>,  <3.896658, 0.840007, -0.671067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.755341, 1.197151, -0.559364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212615, 0.367329, -0.905464,
		-0.911032, -0.260520, -0.319611,
		-0.353293, 0.892860, 0.279258,
		3.649353, 1.465009, -0.475587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.466558, 1.070706, -1.257317>,  <3.896658, 0.840007, -0.671067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.466558, 1.070706, -1.257317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.566177, 1.404991, -1.061539>,  <3.625949, 1.605562, -0.944072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.566177, 1.404991, -1.061539>,  <3.466558, 1.070706, -1.257317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.566177, 1.404991, -1.061539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329901, 0.401942, -0.854171,
		-0.910571, 0.374200, -0.175599,
		0.249050, 0.835714, 0.489446,
		3.640892, 1.655705, -0.914705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.022629, 2.383780, 2.798145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.280254, 2.645782, 2.956207>,  <4.434829, 2.802984, 3.051045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.280254, 2.645782, 2.956207>,  <4.022629, 2.383780, 2.798145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.280254, 2.645782, 2.956207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438356, -0.107324, 0.892371,
		0.626919, -0.747962, 0.218003,
		0.644063, 0.655007, 0.395157,
		4.473473, 2.842285, 3.074754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.447079, 2.041793, 3.224713>,  <4.022629, 2.383780, 2.798145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.447079, 2.041793, 3.224713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.348591, 2.415985, 3.326103>,  <4.289498, 2.640501, 3.386938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.348591, 2.415985, 3.326103>,  <4.447079, 2.041793, 3.224713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.348591, 2.415985, 3.326103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538862, -0.349510, 0.766467,
		0.805608, 0.052131, 0.590151,
		-0.246220, 0.935482, 0.253476,
		4.274725, 2.696630, 3.402146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.731273, 2.181926, 3.906928>,  <4.447079, 2.041793, 3.224713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.731273, 2.181926, 3.906928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.402462, 2.395157, 3.826828>,  <4.205175, 2.523095, 3.778768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.402462, 2.395157, 3.826828>,  <4.731273, 2.181926, 3.906928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.402462, 2.395157, 3.826828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501277, -0.510561, 0.698604,
		0.270170, 0.674652, 0.686915,
		-0.822027, 0.533077, -0.200249,
		4.155854, 2.555080, 3.766753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.381021, 2.646060, 4.458457>,  <4.731273, 2.181926, 3.906928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.381021, 2.646060, 4.458457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.116058, 2.468033, 4.217415>,  <3.957081, 2.361217, 4.072790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.116058, 2.468033, 4.217415>,  <4.381021, 2.646060, 4.458457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.116058, 2.468033, 4.217415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467117, -0.383488, 0.796705,
		-0.585679, 0.809230, 0.046126,
		-0.662406, -0.445067, -0.602606,
		3.917336, 2.334513, 4.036633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.734634, 2.765831, 4.771696>,  <4.381021, 2.646060, 4.458457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.734634, 2.765831, 4.771696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.681225, 2.436844, 4.550529>,  <3.649179, 2.239451, 4.417830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.681225, 2.436844, 4.550529>,  <3.734634, 2.765831, 4.771696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.681225, 2.436844, 4.550529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358832, -0.479935, 0.800563,
		-0.923803, 0.305297, -0.231046,
		-0.133522, -0.822469, -0.552916,
		3.641168, 2.190103, 4.384655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.045985, 2.586653, 4.886425>,  <3.734634, 2.765831, 4.771696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.045985, 2.586653, 4.886425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.228531, 2.246735, 4.780914>,  <3.338058, 2.042783, 4.717608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.228531, 2.246735, 4.780914>,  <3.045985, 2.586653, 4.886425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.228531, 2.246735, 4.780914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628765, -0.517748, 0.580165,
		-0.629591, -0.098913, -0.770604,
		0.456365, -0.849796, -0.263777,
		3.365440, 1.991796, 4.701781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.595995, 2.099170, 4.575927>,  <3.045985, 2.586653, 4.886425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.595995, 2.099170, 4.575927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.900425, 1.870209, 4.697990>,  <3.083083, 1.732832, 4.771229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.900425, 1.870209, 4.697990>,  <2.595995, 2.099170, 4.575927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.900425, 1.870209, 4.697990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640818, -0.590516, 0.490554,
		-0.100593, -0.568899, -0.816232,
		0.761074, -0.572402, 0.305159,
		3.128747, 1.698488, 4.789538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.368143, 1.408364, 4.487147>,  <2.595995, 2.099170, 4.575927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.368143, 1.408364, 4.487147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.644596, 1.368607, 4.773491>,  <2.810468, 1.344752, 4.945297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.644596, 1.368607, 4.773491>,  <2.368143, 1.408364, 4.487147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.644596, 1.368607, 4.773491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626255, -0.576768, 0.524541,
		0.360750, -0.810839, -0.460869,
		0.691133, -0.099393, 0.715860,
		2.851936, 1.338789, 4.988249>
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
