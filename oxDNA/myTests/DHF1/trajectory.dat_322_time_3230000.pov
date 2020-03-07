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
	<1.896056, -0.175481, -0.657550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.956711, -0.240341, -0.267532>,  <1.993104, -0.279257, -0.033521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.956711, -0.240341, -0.267532>,  <1.896056, -0.175481, -0.657550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.956711, -0.240341, -0.267532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238490, 0.951306, 0.195293,
		-0.959233, -0.262152, 0.105581,
		0.151636, -0.162151, 0.975045,
		2.002202, -0.288987, 0.024981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.198979, -0.128336, -0.311439>,  <1.896056, -0.175481, -0.657550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.198979, -0.128336, -0.311439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527981, -0.045303, -0.099628>,  <1.725382, 0.004516, 0.027458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527981, -0.045303, -0.099628>,  <1.198979, -0.128336, -0.311439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.527981, -0.045303, -0.099628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383447, 0.890002, 0.246708,
		-0.420067, -0.405963, 0.811627,
		0.822504, 0.207582, 0.529526,
		1.774732, 0.016971, 0.059229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.147307, 0.014320, 0.513774>,  <1.198979, -0.128336, -0.311439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.147307, 0.014320, 0.513774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.400539, 0.256584, 0.320950>,  <1.552479, 0.401943, 0.205255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.400539, 0.256584, 0.320950>,  <1.147307, 0.014320, 0.513774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.400539, 0.256584, 0.320950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570518, 0.785971, 0.238242,
		0.523180, 0.124198, 0.843124,
		0.633081, 0.605661, -0.482061,
		1.590464, 0.438282, 0.176331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.419907, 0.552271, 0.937247>,  <1.147307, 0.014320, 0.513774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.419907, 0.552271, 0.937247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.400467, 0.709366, 0.569901>,  <1.388803, 0.803623, 0.349493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.400467, 0.709366, 0.569901>,  <1.419907, 0.552271, 0.937247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.400467, 0.709366, 0.569901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519152, 0.775563, 0.359143,
		0.853299, 0.494226, 0.166198,
		-0.048601, 0.392738, -0.918365,
		1.385887, 0.827187, 0.294391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.730890, 1.285374, 0.771721>,  <1.419907, 0.552271, 0.937247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.730890, 1.285374, 0.771721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.409580, 1.211082, 0.545357>,  <1.216794, 1.166507, 0.409538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.409580, 1.211082, 0.545357>,  <1.730890, 1.285374, 0.771721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.409580, 1.211082, 0.545357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438233, 0.827761, 0.350376,
		0.403365, 0.529449, -0.746312,
		-0.803274, -0.185729, -0.565912,
		1.168598, 1.155364, 0.375583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.563798, 1.991612, 0.524109>,  <1.730890, 1.285374, 0.771721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.563798, 1.991612, 0.524109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.243080, 1.761543, 0.459236>,  <1.050650, 1.623502, 0.420312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.243080, 1.761543, 0.459236>,  <1.563798, 1.991612, 0.524109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.243080, 1.761543, 0.459236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596292, 0.787963, 0.153462,
		0.039527, 0.219753, -0.974754,
		-0.801794, -0.575173, -0.162183,
		1.002542, 1.588992, 0.410581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.139142, 2.413610, 0.256644>,  <1.563798, 1.991612, 0.524109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.139142, 2.413610, 0.256644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.906338, 2.108345, 0.368961>,  <0.766655, 1.925186, 0.436352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.906338, 2.108345, 0.368961>,  <1.139142, 2.413610, 0.256644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.906338, 2.108345, 0.368961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674630, 0.645941, 0.357260,
		-0.454023, 0.018497, -0.890798,
		-0.582011, -0.763163, 0.280793,
		0.731734, 1.879396, 0.453199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.445729, 2.628764, 0.022106>,  <1.139142, 2.413610, 0.256644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.445729, 2.628764, 0.022106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.425816, 2.370049, 0.326523>,  <0.413867, 2.214819, 0.509173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.425816, 2.370049, 0.326523>,  <0.445729, 2.628764, 0.022106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.425816, 2.370049, 0.326523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614340, 0.620618, 0.487257,
		-0.787469, -0.443282, -0.428245,
		-0.049785, -0.646788, 0.761043,
		0.410880, 2.176012, 0.554836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.020415, 3.624771, 1.206933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.953987, 3.366791, 1.505318>,  <0.914130, 3.212003, 1.684349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.953987, 3.366791, 1.505318>,  <1.020415, 3.624771, 1.206933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.953987, 3.366791, 1.505318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552733, -0.565583, -0.612048,
		0.816644, -0.513961, -0.262558,
		-0.166070, -0.644949, 0.745963,
		0.904166, 3.173306, 1.729107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.175155, 2.865602, 1.072528>,  <1.020415, 3.624771, 1.206933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.175155, 2.865602, 1.072528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.884697, 2.871368, 1.347485>,  <0.710422, 2.874828, 1.512458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.884697, 2.871368, 1.347485>,  <1.175155, 2.865602, 1.072528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.884697, 2.871368, 1.347485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532838, -0.643635, -0.549380,
		0.434509, -0.765197, 0.475053,
		-0.726145, 0.014416, 0.687391,
		0.666854, 2.875693, 1.553702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.140309, 2.186326, 1.424972>,  <1.175155, 2.865602, 1.072528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.140309, 2.186326, 1.424972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.779833, 2.355087, 1.385265>,  <0.563547, 2.456344, 1.361441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.779833, 2.355087, 1.385265>,  <1.140309, 2.186326, 1.424972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.779833, 2.355087, 1.385265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328282, -0.813974, -0.479246,
		-0.282996, -0.399305, 0.872049,
		-0.901191, 0.421903, -0.099267,
		0.509476, 2.481658, 1.355485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.610697, 1.810635, 1.778255>,  <1.140309, 2.186326, 1.424972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.610697, 1.810635, 1.778255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.483156, 2.003265, 1.451717>,  <0.406632, 2.118844, 1.255795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.483156, 2.003265, 1.451717>,  <0.610697, 1.810635, 1.778255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.483156, 2.003265, 1.451717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050941, -0.868762, -0.492602,
		-0.946435, -0.115482, 0.301538,
		-0.318851, 0.481577, -0.816344,
		0.387501, 2.147738, 1.206814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.223466, 1.207779, 1.473996>,  <0.610697, 1.810635, 1.778255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.223466, 1.207779, 1.473996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.282824, 1.496353, 1.203438>,  <0.318438, 1.669497, 1.041103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.282824, 1.496353, 1.203438>,  <0.223466, 1.207779, 1.473996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.282824, 1.496353, 1.203438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119009, -0.692026, -0.711996,
		-0.981741, 0.025158, -0.188549,
		0.148393, 0.721435, -0.676396,
		0.327342, 1.712784, 1.000519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.114887, 0.967710, 0.827688>,  <0.223466, 1.207779, 1.473996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.114887, 0.967710, 0.827688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.160332, 1.238083, 0.722080>,  <0.325463, 1.400307, 0.658716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.160332, 1.238083, 0.722080>,  <-0.114887, 0.967710, 0.827688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.160332, 1.238083, 0.722080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245576, -0.559250, -0.791790,
		-0.682849, 0.479953, -0.550783,
		0.688048, 0.675933, -0.264018,
		0.366746, 1.440863, 0.642875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.145439, 0.927570, 0.106862>,  <-0.114887, 0.967710, 0.827688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.145439, 0.927570, 0.106862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.197399, 1.102936, 0.215069>,  <0.403102, 1.208155, 0.279993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.197399, 1.102936, 0.215069>,  <-0.145439, 0.927570, 0.106862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.197399, 1.102936, 0.215069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488999, -0.527175, -0.694958,
		-0.162070, 0.727928, -0.666224,
		0.857096, 0.438414, 0.270517,
		0.454528, 1.234460, 0.296224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.281770, 0.930462, -0.514293>,  <-0.145439, 0.927570, 0.106862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.281770, 0.930462, -0.514293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.550623, 1.006653, -0.228088>,  <0.711935, 1.052367, -0.056366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.550623, 1.006653, -0.228088>,  <0.281770, 0.930462, -0.514293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.550623, 1.006653, -0.228088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704075, -0.463499, -0.538002,
		0.229162, 0.865383, -0.445643,
		0.672133, 0.190477, 0.715511,
		0.752263, 1.063796, -0.013435>
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
