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
	<1.610057, 1.586249, 1.447985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.394394, 1.566904, 1.784311>,  <1.264996, 1.555297, 1.986107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.394394, 1.566904, 1.784311>,  <1.610057, 1.586249, 1.447985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.394394, 1.566904, 1.784311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057526, -0.993904, -0.094055,
		0.840238, -0.099079, 0.533089,
		-0.539158, -0.048362, 0.840815,
		1.232646, 1.552395, 2.036556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.875580, 1.036484, 1.875602>,  <1.610057, 1.586249, 1.447985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.875580, 1.036484, 1.875602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493603, 1.106890, 1.971188>,  <1.264417, 1.149133, 2.028539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.493603, 1.106890, 1.971188>,  <1.875580, 1.036484, 1.875602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.493603, 1.106890, 1.971188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169775, -0.984380, 0.046620,
		0.243436, 0.003949, 0.969909,
		-0.954943, 0.176015, 0.238963,
		1.207120, 1.159694, 2.042876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516072, 0.898378, 2.575536>,  <1.875580, 1.036484, 1.875602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516072, 0.898378, 2.575536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.268559, 0.835785, 2.267609>,  <1.120051, 0.798229, 2.082852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.268559, 0.835785, 2.267609>,  <1.516072, 0.898378, 2.575536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.268559, 0.835785, 2.267609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199703, -0.916430, 0.346807,
		-0.759754, 0.368334, 0.535821,
		-0.618783, -0.156483, -0.769819,
		1.082924, 0.788840, 2.036663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.854747, 0.660578, 2.860746>,  <1.516072, 0.898378, 2.575536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.854747, 0.660578, 2.860746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.909412, 0.530134, 2.486586>,  <0.942211, 0.451868, 2.262089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.909412, 0.530134, 2.486586>,  <0.854747, 0.660578, 2.860746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.909412, 0.530134, 2.486586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205458, -0.933060, 0.295275,
		-0.969077, 0.151832, -0.194516,
		0.136662, -0.326109, -0.935402,
		0.950411, 0.432301, 2.205965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.266691, 0.230446, 2.679163>,  <0.854748, 0.660578, 2.860746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.266691, 0.230446, 2.679163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.558208, 0.101637, 2.437449>,  <0.733119, 0.024351, 2.292420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.558208, 0.101637, 2.437449>,  <0.266691, 0.230446, 2.679163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.558208, 0.101637, 2.437449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311462, -0.941832, 0.126266,
		-0.609797, 0.096190, -0.786699,
		0.728793, -0.322023, -0.604285,
		0.776846, 0.005030, 2.256163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.059017, -0.187935, 2.277838>,  <0.266691, 0.230446, 2.679163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.059017, -0.187935, 2.277838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.320446, -0.306515, 2.233719>,  <0.548124, -0.377663, 2.207247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.320446, -0.306515, 2.233719>,  <-0.059017, -0.187935, 2.277838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.320446, -0.306515, 2.233719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298464, -0.954419, -0.001841,
		-0.104726, 0.034666, -0.993897,
		0.948658, -0.296450, -0.110299,
		0.605043, -0.395450, 2.200629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.002282, -0.801009, 1.777261>,  <-0.059017, -0.187935, 2.277838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.002282, -0.801009, 1.777261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.355392, -0.807514, 1.965067>,  <0.567259, -0.811417, 2.077750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.355392, -0.807514, 1.965067>,  <0.002282, -0.801009, 1.777261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.355392, -0.807514, 1.965067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085842, -0.988159, 0.127173,
		0.461886, -0.152569, -0.873719,
		0.882775, -0.016262, 0.469514,
		0.620225, -0.812393, 2.105921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.188770, -1.427167, 1.513040>,  <0.002282, -0.801009, 1.777261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.188770, -1.427167, 1.513040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.430626, -1.347315, 1.821470>,  <0.575740, -1.299404, 2.006529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.430626, -1.347315, 1.821470>,  <0.188770, -1.427167, 1.513040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.430626, -1.347315, 1.821470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055983, -0.955036, 0.291155,
		0.794529, -0.219212, -0.566277,
		0.604640, 0.199629, 0.771076,
		0.612018, -1.287426, 2.052793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.179769, 3.739938, 2.971982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.552246, 3.879467, 3.014318>,  <-0.775733, 3.963184, 3.039721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.552246, 3.879467, 3.014318>,  <-0.179769, 3.739938, 2.971982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.552246, 3.879467, 3.014318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278135, -0.492213, -0.824844,
		-0.235625, -0.797528, 0.555365,
		-0.931194, 0.348820, 0.105843,
		-0.831604, 3.984113, 3.046071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.303518, 3.210616, 2.860082>,  <-0.179769, 3.739938, 2.971982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.303518, 3.210616, 2.860082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.680321, 3.122410, 2.758892>,  <0.906402, 3.069486, 2.698178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.680321, 3.122410, 2.758892>,  <0.303518, 3.210616, 2.860082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.680321, 3.122410, 2.758892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177785, 0.967257, -0.181127,
		0.284633, 0.125648, 0.950367,
		0.942007, -0.220515, -0.252974,
		0.962923, 3.056255, 2.683000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.770320, 3.599999, 3.267166>,  <0.303518, 3.210616, 2.860082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.770320, 3.599999, 3.267166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.903114, 3.504574, 2.902119>,  <0.982791, 3.447319, 2.683090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.903114, 3.504574, 2.902119>,  <0.770320, 3.599999, 3.267166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.903114, 3.504574, 2.902119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155257, 0.968115, -0.196592,
		0.930420, -0.076424, 0.358438,
		0.331985, -0.238563, -0.912619,
		1.002710, 3.433005, 2.628333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.420757, 3.957194, 3.090493>,  <0.770320, 3.599999, 3.267166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.420757, 3.957194, 3.090493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.202316, 3.867329, 2.767681>,  <1.071252, 3.813409, 2.573994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.202316, 3.867329, 2.767681>,  <1.420757, 3.957194, 3.090493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.202316, 3.867329, 2.767681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110818, 0.935527, -0.335423,
		0.830356, -0.272609, -0.485997,
		-0.546103, -0.224663, -0.807030,
		1.038486, 3.799930, 2.525572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.811386, 4.122890, 2.591559>,  <1.420757, 3.957194, 3.090493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.811386, 4.122890, 2.591559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.441399, 4.132160, 2.439825>,  <1.219406, 4.137722, 2.348784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.441399, 4.132160, 2.439825>,  <1.811386, 4.122890, 2.591559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.441399, 4.132160, 2.439825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172914, 0.914506, -0.365758,
		0.338428, -0.403908, -0.849897,
		-0.924969, 0.023176, -0.379336,
		1.163908, 4.139113, 2.326024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.843804, 4.265882, 1.877844>,  <1.811386, 4.122890, 2.591559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.843804, 4.265882, 1.877844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.478989, 4.365253, 2.008362>,  <1.260099, 4.424877, 2.086673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.478989, 4.365253, 2.008362>,  <1.843804, 4.265882, 1.877844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.478989, 4.365253, 2.008362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113972, 0.917838, -0.380242,
		-0.393949, -0.309607, -0.865418,
		-0.912039, 0.248430, 0.326294,
		1.205377, 4.439782, 2.106250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.635957, 4.584756, 1.347823>,  <1.843804, 4.265882, 1.877844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.635957, 4.584756, 1.347823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.386383, 4.718475, 1.630369>,  <1.236639, 4.798707, 1.799897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.386383, 4.718475, 1.630369>,  <1.635957, 4.584756, 1.347823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.386383, 4.718475, 1.630369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147470, 0.938011, -0.313667,
		-0.767437, -0.091540, -0.634556,
		-0.623934, 0.334298, 0.706365,
		1.199203, 4.818765, 1.842279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.093500, 5.006521, 1.005272>,  <1.635957, 4.584756, 1.347823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.093500, 5.006521, 1.005272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125313, 5.122082, 1.386892>,  <1.144400, 5.191418, 1.615864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.125313, 5.122082, 1.386892>,  <1.093500, 5.006521, 1.005272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.125313, 5.122082, 1.386892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265216, 0.916453, -0.299625,
		-0.960903, 0.276859, -0.003735,
		0.079531, 0.288901, 0.954050,
		1.149172, 5.208752, 1.673107>
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
