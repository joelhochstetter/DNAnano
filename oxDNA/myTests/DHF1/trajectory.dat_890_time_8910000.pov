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
	<3.653654, 0.967003, 2.415337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.416565, 1.240944, 2.584881>,  <3.274311, 1.405308, 2.686607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.416565, 1.240944, 2.584881>,  <3.653654, 0.967003, 2.415337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.416565, 1.240944, 2.584881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708728, 0.193505, 0.678425,
		0.382601, 0.702520, -0.600068,
		-0.592724, 0.684851, 0.423860,
		3.238748, 1.446399, 2.712039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985497, 1.555576, 2.311029>,  <3.653654, 0.967003, 2.415337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985497, 1.555576, 2.311029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.768929, 1.523018, 2.645750>,  <3.638987, 1.503483, 2.846582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.768929, 1.523018, 2.645750>,  <3.985497, 1.555576, 2.311029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.768929, 1.523018, 2.645750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793875, 0.278202, 0.540708,
		-0.276811, 0.957068, -0.086006,
		-0.541421, -0.081396, 0.836802,
		3.606502, 1.498599, 2.896791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.078655, 2.193235, 2.551561>,  <3.985497, 1.555576, 2.311029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.078655, 2.193235, 2.551561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.959633, 1.947968, 2.844269>,  <3.888220, 1.800807, 3.019893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.959633, 1.947968, 2.844269>,  <4.078655, 2.193235, 2.551561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.959633, 1.947968, 2.844269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671179, 0.410749, 0.617094,
		-0.678955, 0.674767, 0.289325,
		-0.297555, -0.613168, 0.731769,
		3.870367, 1.764017, 3.063800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.144584, 2.572764, 3.094775>,  <4.078655, 2.193235, 2.551561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.144584, 2.572764, 3.094775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.094276, 2.224499, 3.284987>,  <4.064092, 2.015540, 3.399115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.094276, 2.224499, 3.284987>,  <4.144584, 2.572764, 3.094775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.094276, 2.224499, 3.284987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445684, 0.378655, 0.811163,
		-0.886311, 0.313955, 0.340418,
		-0.125768, -0.870662, 0.475531,
		4.056546, 1.963300, 3.427647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.831529, 2.696723, 3.794215>,  <4.144584, 2.572764, 3.094775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.831529, 2.696723, 3.794215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.026665, 2.349365, 3.829775>,  <4.143746, 2.140951, 3.851111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.026665, 2.349365, 3.829775>,  <3.831529, 2.696723, 3.794215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.026665, 2.349365, 3.829775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442787, 0.333933, 0.832123,
		-0.752298, -0.366579, 0.547419,
		0.487840, -0.868394, 0.088901,
		4.173017, 2.088847, 3.856445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.759877, 2.557154, 4.527163>,  <3.831529, 2.696723, 3.794215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.759877, 2.557154, 4.527163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.054085, 2.317139, 4.401327>,  <4.230609, 2.173130, 4.325826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.054085, 2.317139, 4.401327>,  <3.759877, 2.557154, 4.527163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.054085, 2.317139, 4.401327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470494, 0.118271, 0.874441,
		-0.487491, -0.791180, 0.369305,
		0.735518, -0.600039, -0.314589,
		4.274740, 2.137127, 4.306950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.020195, 2.153635, 5.077309>,  <3.759877, 2.557154, 4.527163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.020195, 2.153635, 5.077309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.314583, 2.129955, 4.807540>,  <4.491216, 2.115748, 4.645679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.314583, 2.129955, 4.807540>,  <4.020195, 2.153635, 5.077309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.314583, 2.129955, 4.807540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671754, 0.187791, 0.716576,
		0.084230, -0.980423, 0.177975,
		0.735970, -0.059198, -0.674421,
		4.535374, 2.112196, 4.605214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.532519, 1.800980, 5.399985>,  <4.020195, 2.153635, 5.077309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.532519, 1.800980, 5.399985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.709755, 1.970585, 5.084040>,  <4.816096, 2.072348, 4.894472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.709755, 1.970585, 5.084040>,  <4.532519, 1.800980, 5.399985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.709755, 1.970585, 5.084040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835051, 0.125318, 0.535710,
		0.326132, -0.896944, -0.298546,
		0.443089, 0.424013, -0.789864,
		4.842682, 2.097789, 4.847081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.981958, 2.807886, 5.685160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.313782, 2.930500, 5.498455>,  <5.512876, 3.004068, 5.386432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.313782, 2.930500, 5.498455>,  <4.981958, 2.807886, 5.685160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.313782, 2.930500, 5.498455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260908, -0.526256, -0.809309,
		-0.493717, 0.793153, -0.356584,
		0.829560, 0.306535, -0.466762,
		5.562650, 3.022460, 5.358427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.742723, 3.147073, 5.136630>,  <4.981958, 2.807886, 5.685160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.742723, 3.147073, 5.136630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.093292, 2.961575, 5.084755>,  <5.303634, 2.850275, 5.053630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.093292, 2.961575, 5.084755>,  <4.742723, 3.147073, 5.136630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.093292, 2.961575, 5.084755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386927, -0.517887, -0.762942,
		0.286648, 0.718841, -0.633325,
		0.876425, -0.463747, -0.129688,
		5.356220, 2.822451, 5.045849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.862667, 3.131981, 4.516175>,  <4.742723, 3.147073, 5.136630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.862667, 3.131981, 4.516175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.080727, 2.824238, 4.649384>,  <5.211562, 2.639592, 4.729309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.080727, 2.824238, 4.649384>,  <4.862667, 3.131981, 4.516175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.080727, 2.824238, 4.649384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402244, -0.588570, -0.701273,
		0.735536, 0.248343, -0.630328,
		0.545148, -0.769357, 0.333020,
		5.244271, 2.593431, 4.749290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.261423, 2.804449, 3.890079>,  <4.862667, 3.131981, 4.516175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.261423, 2.804449, 3.890079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.182404, 2.559521, 4.196291>,  <5.134992, 2.412564, 4.380018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.182404, 2.559521, 4.196291>,  <5.261423, 2.804449, 3.890079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.182404, 2.559521, 4.196291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491822, -0.613616, -0.617727,
		0.847989, -0.498536, -0.179934,
		-0.197548, -0.612321, 0.765531,
		5.123139, 2.375824, 4.425950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.335113, 2.154058, 3.618918>,  <5.261423, 2.804449, 3.890079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.335113, 2.154058, 3.618918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.108376, 2.113876, 3.945990>,  <4.972333, 2.089767, 4.142232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.108376, 2.113876, 3.945990>,  <5.335113, 2.154058, 3.618918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.108376, 2.113876, 3.945990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541014, -0.703126, -0.461431,
		0.621284, -0.703934, 0.344214,
		-0.566843, -0.100455, 0.817679,
		4.938323, 2.083740, 4.191293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.296386, 1.488133, 3.752535>,  <5.335113, 2.154058, 3.618918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.296386, 1.488133, 3.752535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.970703, 1.647953, 3.921024>,  <4.775293, 1.743845, 4.022118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.970703, 1.647953, 3.921024>,  <5.296386, 1.488133, 3.752535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.970703, 1.647953, 3.921024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580575, -0.560533, -0.590538,
		0.000160, -0.725371, 0.688358,
		-0.814207, 0.399549, 0.421222,
		4.726441, 1.767818, 4.047391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.751035, 0.958389, 3.967586>,  <5.296386, 1.488133, 3.752535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.751035, 0.958389, 3.967586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.582710, 1.316780, 3.910818>,  <4.481716, 1.531815, 3.876757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.582710, 1.316780, 3.910818>,  <4.751035, 0.958389, 3.967586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.582710, 1.316780, 3.910818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707557, -0.422087, -0.566750,
		-0.567699, -0.138078, 0.811574,
		-0.420811, 0.895978, -0.141921,
		4.456467, 1.585574, 3.868242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.020727, 0.898696, 4.043545>,  <4.751035, 0.958389, 3.967586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.020727, 0.898696, 4.043545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.065681, 1.222374, 3.812868>,  <4.092654, 1.416581, 3.674462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.065681, 1.222374, 3.812868>,  <4.020727, 0.898696, 4.043545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.065681, 1.222374, 3.812868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829745, -0.242893, -0.502520,
		-0.546710, 0.534984, 0.644127,
		0.112386, 0.809194, -0.576693,
		4.099397, 1.465132, 3.639860>
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
