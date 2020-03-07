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
	<3.184387, 2.323793, 2.211533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.185871, 1.999786, 1.976974>,  <3.186761, 1.805382, 1.836240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.185871, 1.999786, 1.976974>,  <3.184387, 2.323793, 2.211533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.185871, 1.999786, 1.976974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089362, -0.584322, 0.806587,
		-0.995992, 0.049409, -0.074552,
		0.003709, -0.810016, -0.586396,
		3.186984, 1.756781, 1.801056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.031669, 2.440012, 2.201641>,  <3.184387, 2.323793, 2.211533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.031669, 2.440012, 2.201641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.130939, 2.712875, 2.476761>,  <4.190502, 2.876593, 2.641833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.130939, 2.712875, 2.476761>,  <4.031669, 2.440012, 2.201641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.130939, 2.712875, 2.476761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717860, 0.347236, -0.603411,
		-0.650451, 0.643496, -0.403518,
		0.248176, 0.682159, 0.687800,
		4.205392, 2.917523, 2.683101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.940539, 3.062945, 2.026819>,  <4.031669, 2.440012, 2.201641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.940539, 3.062945, 2.026819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248379, 3.057175, 2.282166>,  <4.433083, 3.053712, 2.435373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248379, 3.057175, 2.282166>,  <3.940539, 3.062945, 2.026819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248379, 3.057175, 2.282166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622019, 0.242807, -0.744404,
		-0.144260, 0.969967, 0.195838,
		0.769598, -0.014427, 0.638365,
		4.479258, 3.052847, 2.473675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.445763, 3.725780, 1.969937>,  <3.940539, 3.062945, 2.026819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.445763, 3.725780, 1.969937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.653996, 3.414566, 2.110596>,  <4.778935, 3.227837, 2.194991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.653996, 3.414566, 2.110596>,  <4.445763, 3.725780, 1.969937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.653996, 3.414566, 2.110596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625236, 0.066911, -0.777562,
		0.581442, 0.624646, 0.521289,
		0.520581, -0.778036, 0.351646,
		4.810170, 3.181155, 2.216089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.137640, 3.895137, 2.149308>,  <4.445763, 3.725780, 1.969937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.137640, 3.895137, 2.149308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148045, 3.500534, 2.084656>,  <5.154287, 3.263772, 2.045864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148045, 3.500534, 2.084656>,  <5.137640, 3.895137, 2.149308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.148045, 3.500534, 2.084656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703929, 0.132878, -0.697731,
		0.709794, -0.095628, 0.697888,
		0.026011, -0.986508, -0.161632,
		5.155848, 3.204581, 2.036166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.929129, 3.767156, 2.098776>,  <5.137640, 3.895137, 2.149308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.929129, 3.767156, 2.098776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.718121, 3.459320, 1.954857>,  <5.591516, 3.274619, 1.868505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.718121, 3.459320, 1.954857>,  <5.929129, 3.767156, 2.098776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.718121, 3.459320, 1.954857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621484, -0.060839, -0.781061,
		0.579207, -0.635634, 0.510381,
		-0.527520, -0.769590, -0.359797,
		5.559865, 3.228443, 1.846918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.389293, 3.212816, 1.923136>,  <5.929129, 3.767156, 2.098776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.389293, 3.212816, 1.923136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064106, 3.101959, 1.718285>,  <5.868994, 3.035445, 1.595374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064106, 3.101959, 1.718285>,  <6.389293, 3.212816, 1.923136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.064106, 3.101959, 1.718285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542684, -0.041714, -0.838901,
		0.211133, -0.959923, 0.184313,
		-0.812968, -0.277143, -0.512127,
		5.820215, 3.018816, 1.564646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.595949, 2.609595, 1.436124>,  <6.389293, 3.212816, 1.923136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.595949, 2.609595, 1.436124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.256725, 2.770905, 1.298622>,  <6.053191, 2.867690, 1.216121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.256725, 2.770905, 1.298622>,  <6.595949, 2.609595, 1.436124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.256725, 2.770905, 1.298622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427181, 0.136440, -0.893812,
		-0.313550, -0.904850, -0.287980,
		-0.848058, 0.403274, -0.343754,
		6.002308, 2.891887, 1.195496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.633855, 2.727811, -0.255833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388340, 3.024307, -0.364517>,  <1.241031, 3.202205, -0.429728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.388340, 3.024307, -0.364517>,  <1.633855, 2.727811, -0.255833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.388340, 3.024307, -0.364517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552606, -0.157591, 0.818408,
		0.563818, 0.652478, 0.506342,
		-0.613787, 0.741241, -0.271711,
		1.204204, 3.246680, -0.446030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.673558, 3.254597, 0.298844>,  <1.633855, 2.727811, -0.255833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.673558, 3.254597, 0.298844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325996, 3.250641, 0.100891>,  <1.117459, 3.248267, -0.017880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.325996, 3.250641, 0.100891>,  <1.673558, 3.254597, 0.298844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.325996, 3.250641, 0.100891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491247, -0.105322, 0.864629,
		-0.060674, 0.994389, 0.086655,
		-0.868904, -0.009892, -0.494881,
		1.065325, 3.247674, -0.047573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.150778, 3.757861, 0.549150>,  <1.673558, 3.254597, 0.298844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.150778, 3.757861, 0.549150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980598, 3.430511, 0.394615>,  <0.878491, 3.234102, 0.301895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.980598, 3.430511, 0.394615>,  <1.150778, 3.757861, 0.549150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.980598, 3.430511, 0.394615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489180, -0.151193, 0.858978,
		-0.761377, 0.554440, -0.336008,
		-0.425449, -0.818375, -0.386336,
		0.852964, 3.184999, 0.278714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.444413, 3.876490, 0.636702>,  <1.150778, 3.757861, 0.549150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.444413, 3.876490, 0.636702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.567524, 3.496002, 0.645233>,  <0.641391, 3.267710, 0.650352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.567524, 3.496002, 0.645233>,  <0.444413, 3.876490, 0.636702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.567524, 3.496002, 0.645233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417219, -0.114782, 0.901528,
		-0.855103, -0.286369, -0.432194,
		0.307778, -0.951219, 0.021328,
		0.659857, 3.210636, 0.651632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.149954, 3.365290, 0.698543>,  <0.444413, 3.876490, 0.636702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.149954, 3.365290, 0.698543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.188301, 3.208954, 0.843948>,  <0.391254, 3.115152, 0.931192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.188301, 3.208954, 0.843948>,  <-0.149954, 3.365290, 0.698543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.188301, 3.208954, 0.843948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463639, -0.200438, 0.863055,
		-0.264455, -0.898370, -0.350707,
		0.845637, -0.390841, 0.363512,
		0.441992, 3.091702, 0.953002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.252527, 2.736270, 0.870949>,  <-0.149954, 3.365290, 0.698543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.252527, 2.736270, 0.870949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.078758, 2.813583, 1.081360>,  <0.277529, 2.859972, 1.207606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.078758, 2.813583, 1.081360>,  <-0.252527, 2.736270, 0.870949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.078758, 2.813583, 1.081360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436538, -0.366093, 0.821834,
		0.351423, -0.910284, -0.218827,
		0.828213, 0.193285, 0.526027,
		0.327222, 2.871569, 1.239168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.230689, 2.259920, 1.454531>,  <-0.252527, 2.736270, 0.870949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.230689, 2.259920, 1.454531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.020481, 2.547318, 1.574181>,  <0.171183, 2.719756, 1.645970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.020481, 2.547318, 1.574181>,  <-0.230689, 2.259920, 1.454531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.020481, 2.547318, 1.574181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253554, -0.174515, 0.951449,
		0.735812, -0.673284, 0.072594,
		0.627926, 0.718494, 0.299124,
		0.208859, 2.762866, 1.663918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.273340, 1.951993, 1.898389>,  <-0.230689, 2.259920, 1.454531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.273340, 1.951993, 1.898389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241604, 2.345032, 1.965569>,  <0.222562, 2.580855, 2.005877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241604, 2.345032, 1.965569>,  <0.273340, 1.951993, 1.898389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.241604, 2.345032, 1.965569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401312, -0.185709, 0.896917,
		0.912499, 0.003761, 0.409062,
		-0.079340, 0.982597, 0.167950,
		0.217802, 2.639811, 2.015954>
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
