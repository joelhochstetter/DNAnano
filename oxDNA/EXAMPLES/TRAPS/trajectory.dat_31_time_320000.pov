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
	<36.376369, 52.526936, 50.041233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531822, 52.862526, 50.193596>,  <36.625095, 53.063881, 50.285011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531822, 52.862526, 50.193596>,  <36.376369, 52.526936, 50.041233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531822, 52.862526, 50.193596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330383, 0.259025, -0.907609,
		-0.860123, 0.478571, -0.176517,
		0.388633, 0.838973, 0.380905,
		36.648411, 53.114220, 50.307869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182236, 53.005600, 49.622581>,  <36.376369, 52.526936, 50.041233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182236, 53.005600, 49.622581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509350, 53.167892, 49.785851>,  <36.705620, 53.265266, 49.883812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509350, 53.167892, 49.785851>,  <36.182236, 53.005600, 49.622581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509350, 53.167892, 49.785851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178450, 0.495503, -0.850078,
		-0.547152, 0.768023, 0.332814,
		0.817790, 0.405731, 0.408169,
		36.754688, 53.289612, 49.908302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085682, 53.777958, 49.623642>,  <36.182236, 53.005600, 49.622581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085682, 53.777958, 49.623642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471848, 53.675091, 49.606445>,  <36.703545, 53.613373, 49.596127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471848, 53.675091, 49.606445>,  <36.085682, 53.777958, 49.623642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471848, 53.675091, 49.606445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094852, 0.499980, -0.860827,
		0.242869, 0.826974, 0.507079,
		0.965410, -0.257166, -0.042990,
		36.761471, 53.597942, 49.593548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575150, 54.424568, 49.650291>,  <36.085682, 53.777958, 49.623642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575150, 54.424568, 49.650291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756302, 54.111450, 49.479584>,  <36.864994, 53.923580, 49.377159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756302, 54.111450, 49.479584>,  <36.575150, 54.424568, 49.650291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756302, 54.111450, 49.479584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138544, 0.534641, -0.833645,
		0.880739, 0.318418, 0.350582,
		0.452883, -0.782795, -0.426765,
		36.892166, 53.876610, 49.351555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319965, 54.589100, 49.535984>,  <36.575150, 54.424568, 49.650291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319965, 54.589100, 49.535984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158558, 54.325146, 49.282459>,  <37.061714, 54.166771, 49.130344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158558, 54.325146, 49.282459>,  <37.319965, 54.589100, 49.535984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158558, 54.325146, 49.282459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326498, 0.543261, -0.773477,
		0.854735, -0.519052, -0.003764,
		-0.403519, -0.659889, -0.633813,
		37.037502, 54.127178, 49.092316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560909, 54.244770, 48.908909>,  <37.319965, 54.589100, 49.535984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560909, 54.244770, 48.908909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293678, 54.533237, 48.982216>,  <37.133339, 54.706318, 49.026199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293678, 54.533237, 48.982216>,  <37.560909, 54.244770, 48.908909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293678, 54.533237, 48.982216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047957, -0.287518, 0.956574,
		0.742547, 0.630274, 0.226669,
		-0.668075, 0.721171, 0.183270,
		37.093254, 54.749588, 49.037197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239666, 53.838036, 49.052128>,  <37.560909, 54.244770, 48.908909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239666, 53.838036, 49.052128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440651, 53.538383, 49.224792>,  <38.561241, 53.358593, 49.328392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440651, 53.538383, 49.224792>,  <38.239666, 53.838036, 49.052128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440651, 53.538383, 49.224792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778524, -0.174853, 0.602766,
		-0.376076, -0.638924, -0.671076,
		0.502462, -0.749135, 0.431660,
		38.591389, 53.313644, 49.354290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800522, 53.216404, 49.049885>,  <38.239666, 53.838036, 49.052128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800522, 53.216404, 49.049885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069828, 53.201599, 49.345276>,  <38.231411, 53.192719, 49.522511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069828, 53.201599, 49.345276>,  <37.800522, 53.216404, 49.049885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069828, 53.201599, 49.345276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739203, -0.056938, 0.671071,
		0.017216, -0.997692, -0.065687,
		0.673262, -0.037003, 0.738477,
		38.271809, 53.190498, 49.566818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684334, 52.556053, 49.506573>,  <37.800522, 53.216404, 49.049885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684334, 52.556053, 49.506573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838848, 52.900349, 49.639183>,  <37.931557, 53.106926, 49.718750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838848, 52.900349, 49.639183>,  <37.684334, 52.556053, 49.506573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838848, 52.900349, 49.639183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799773, 0.133499, 0.585271,
		0.459507, -0.491229, 0.739965,
		0.386286, 0.860739, 0.331528,
		37.954735, 53.158569, 49.738640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742268, 52.614876, 50.239048>,  <37.684334, 52.556053, 49.506573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742268, 52.614876, 50.239048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682621, 52.993526, 50.124748>,  <37.646832, 53.220718, 50.056168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682621, 52.993526, 50.124748>,  <37.742268, 52.614876, 50.239048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682621, 52.993526, 50.124748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706198, 0.100323, 0.700871,
		0.692133, 0.306310, 0.653548,
		-0.149118, 0.946631, -0.285752,
		37.637886, 53.277515, 50.039024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888893, 53.190659, 50.688232>,  <37.742268, 52.614876, 50.239048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888893, 53.190659, 50.688232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579426, 53.246136, 50.440941>,  <37.393745, 53.279423, 50.292564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579426, 53.246136, 50.440941>,  <37.888893, 53.190659, 50.688232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579426, 53.246136, 50.440941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633311, -0.140013, 0.761127,
		0.019005, 0.980388, 0.196161,
		-0.773664, 0.138696, -0.618229,
		37.347328, 53.287746, 50.255470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107704, 53.261181, 51.436752>,  <37.888893, 53.190659, 50.688232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107704, 53.261181, 51.436752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446770, 53.379272, 51.613075>,  <38.650208, 53.450127, 51.718868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446770, 53.379272, 51.613075>,  <38.107704, 53.261181, 51.436752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446770, 53.379272, 51.613075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404915, -0.176857, 0.897088,
		0.342809, -0.938914, -0.030370,
		0.847659, 0.295232, 0.440808,
		38.701069, 53.467842, 51.745319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000648, 53.802280, 51.121040>,  <38.107704, 53.261181, 51.436752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000648, 53.802280, 51.121040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088428, 54.163578, 50.973530>,  <38.141098, 54.380356, 50.885025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088428, 54.163578, 50.973530>,  <38.000648, 53.802280, 51.121040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088428, 54.163578, 50.973530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016234, 0.374554, 0.927063,
		0.975488, -0.209432, 0.067533,
		0.219451, 0.903243, -0.368773,
		38.154263, 54.434551, 50.862900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650379, 54.094048, 51.387764>,  <38.000648, 53.802280, 51.121040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650379, 54.094048, 51.387764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344677, 54.341759, 51.315758>,  <38.161255, 54.490387, 51.272552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344677, 54.341759, 51.315758>,  <38.650379, 54.094048, 51.387764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344677, 54.341759, 51.315758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011484, 0.292160, 0.956300,
		0.644811, 0.728791, -0.230397,
		-0.764256, 0.619278, -0.180019,
		38.115398, 54.527542, 51.261753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885567, 54.656197, 51.778519>,  <38.650379, 54.094048, 51.387764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885567, 54.656197, 51.778519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485928, 54.639229, 51.777290>,  <38.246143, 54.629047, 51.776554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485928, 54.639229, 51.777290>,  <38.885567, 54.656197, 51.778519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485928, 54.639229, 51.777290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004790, 0.040439, 0.999171,
		-0.042262, 0.998281, -0.040606,
		-0.999095, -0.042421, -0.003073,
		38.186199, 54.626503, 51.776367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744194, 55.198345, 52.219013>,  <38.885567, 54.656197, 51.778519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744194, 55.198345, 52.219013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464676, 54.912228, 52.221508>,  <38.296967, 54.740559, 52.223003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464676, 54.912228, 52.221508>,  <38.744194, 55.198345, 52.219013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464676, 54.912228, 52.221508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035578, -0.026048, 0.999027,
		-0.714436, 0.698338, 0.043651,
		-0.698796, -0.715294, 0.006236,
		38.255035, 54.697639, 52.223377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122791, 54.720154, 52.733864>,  <38.744194, 55.198345, 52.219013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122791, 54.720154, 52.733864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272858, 54.844585, 53.083145>,  <39.362900, 54.919243, 53.292713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272858, 54.844585, 53.083145>,  <39.122791, 54.720154, 52.733864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272858, 54.844585, 53.083145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886359, 0.396117, 0.239706,
		-0.271323, -0.863900, 0.424336,
		0.375169, 0.311077, 0.873201,
		39.385410, 54.937908, 53.345104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794373, 54.459751, 52.580318>,  <39.122791, 54.720154, 52.733864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794373, 54.459751, 52.580318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835667, 54.062256, 52.563194>,  <39.860443, 53.823761, 52.552917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835667, 54.062256, 52.563194>,  <39.794373, 54.459751, 52.580318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835667, 54.062256, 52.563194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980655, 0.094490, 0.171429,
		-0.166309, -0.059684, 0.984266,
		0.103234, -0.993735, -0.042815,
		39.866638, 53.764133, 52.550350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046329, 54.219234, 53.184082>,  <39.794373, 54.459751, 52.580318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046329, 54.219234, 53.184082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160561, 53.974018, 52.889427>,  <40.229099, 53.826889, 52.712635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160561, 53.974018, 52.889427>,  <40.046329, 54.219234, 53.184082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160561, 53.974018, 52.889427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958354, 0.181643, 0.220370,
		-0.001290, -0.768890, 0.639380,
		0.285579, -0.613037, -0.736635,
		40.246235, 53.790108, 52.668438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172867, 54.695671, 53.688087>,  <40.046329, 54.219234, 53.184082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172867, 54.695671, 53.688087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160160, 54.988316, 53.415695>,  <40.152538, 55.163902, 53.252258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160160, 54.988316, 53.415695>,  <40.172867, 54.695671, 53.688087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160160, 54.988316, 53.415695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754850, 0.464138, 0.463441,
		0.655128, -0.499317, -0.567001,
		-0.031762, 0.731614, -0.680979,
		40.150631, 55.207798, 53.211403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832958, 54.760639, 53.466911>,  <40.172867, 54.695671, 53.688087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832958, 54.760639, 53.466911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637161, 55.109032, 53.449989>,  <40.519684, 55.318066, 53.439838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637161, 55.109032, 53.449989>,  <40.832958, 54.760639, 53.466911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637161, 55.109032, 53.449989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706015, 0.424324, 0.567002,
		0.511797, 0.247679, -0.822629,
		-0.489496, 0.870979, -0.042302,
		40.490311, 55.370327, 53.437298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306183, 54.953728, 52.963921>,  <40.832958, 54.760639, 53.466911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306183, 54.953728, 52.963921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202785, 55.296234, 53.142799>,  <41.140747, 55.501740, 53.250126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202785, 55.296234, 53.142799>,  <41.306183, 54.953728, 52.963921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202785, 55.296234, 53.142799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932215, 0.099730, 0.347893,
		0.253291, 0.506813, -0.824005,
		-0.258495, 0.856268, 0.447197,
		41.125237, 55.553116, 53.276958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960201, 55.344219, 52.966778>,  <41.306183, 54.953728, 52.963921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960201, 55.344219, 52.966778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699066, 55.479088, 53.238106>,  <41.542385, 55.560009, 53.400902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699066, 55.479088, 53.238106>,  <41.960201, 55.344219, 52.966778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699066, 55.479088, 53.238106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748341, 0.148287, 0.646526,
		0.117408, 0.929690, -0.349131,
		-0.652841, 0.337176, 0.678315,
		41.503216, 55.580242, 53.441601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777283, 55.374290, 53.234032>,  <41.960201, 55.344219, 52.966778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777283, 55.374290, 53.234032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904438, 55.651436, 53.492920>,  <42.980732, 55.817722, 53.648251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904438, 55.651436, 53.492920>,  <42.777283, 55.374290, 53.234032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904438, 55.651436, 53.492920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616275, -0.367759, 0.696389,
		0.720521, -0.620239, 0.310086,
		0.317891, 0.692861, 0.647216,
		42.999805, 55.859295, 53.687084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981682, 55.048851, 53.858601>,  <42.777283, 55.374290, 53.234032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981682, 55.048851, 53.858601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857693, 55.425835, 53.908691>,  <42.783298, 55.652027, 53.938747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857693, 55.425835, 53.908691>,  <42.981682, 55.048851, 53.858601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857693, 55.425835, 53.908691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668275, -0.309669, 0.676398,
		0.676259, 0.125975, 0.725812,
		-0.309970, 0.942462, 0.125231,
		42.764702, 55.708572, 53.946262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004421, 55.249489, 54.647770>,  <42.981682, 55.048851, 53.858601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004421, 55.249489, 54.647770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726208, 55.455101, 54.446968>,  <42.559280, 55.578468, 54.326488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726208, 55.455101, 54.446968>,  <43.004421, 55.249489, 54.647770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726208, 55.455101, 54.446968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681661, -0.251260, 0.687173,
		0.227093, 0.820148, 0.525153,
		-0.695534, 0.514029, -0.502003,
		42.517548, 55.609310, 54.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729797, 55.206387, 54.407825>,  <43.004421, 55.249489, 54.647770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729797, 55.206387, 54.407825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958900, 55.071938, 54.706882>,  <44.096363, 54.991268, 54.886318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958900, 55.071938, 54.706882>,  <43.729797, 55.206387, 54.407825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958900, 55.071938, 54.706882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710353, 0.658684, -0.248060,
		-0.409084, 0.673170, 0.616030,
		0.572756, -0.336121, 0.747645,
		44.130726, 54.971100, 54.931175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857063, 55.688103, 54.934654>,  <43.729797, 55.206387, 54.407825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857063, 55.688103, 54.934654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158390, 55.426296, 54.908989>,  <44.339188, 55.269211, 54.893589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158390, 55.426296, 54.908989>,  <43.857063, 55.688103, 54.934654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158390, 55.426296, 54.908989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503217, 0.636475, -0.584527,
		0.423422, 0.408047, 0.808833,
		0.753317, -0.654520, -0.064161,
		44.384384, 55.229939, 54.889740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502743, 55.945099, 55.303219>,  <43.857063, 55.688103, 54.934654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502743, 55.945099, 55.303219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.554367, 55.713768, 54.981007>,  <44.585342, 55.574970, 54.787678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.554367, 55.713768, 54.981007>,  <44.502743, 55.945099, 55.303219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554367, 55.713768, 54.981007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472560, 0.750026, -0.462760,
		0.871796, -0.320936, 0.370095,
		0.129065, -0.578325, -0.805532,
		44.593086, 55.540272, 54.739346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170078, 55.727989, 55.125309>,  <44.502743, 55.945099, 55.303219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170078, 55.727989, 55.125309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957241, 55.772526, 54.789577>,  <44.829536, 55.799248, 54.588139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957241, 55.772526, 54.789577>,  <45.170078, 55.727989, 55.125309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957241, 55.772526, 54.789577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755451, 0.510059, -0.411259,
		0.382320, -0.852903, -0.355511,
		-0.532096, 0.111338, -0.839332,
		44.797611, 55.805927, 54.537777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407600, 56.062565, 54.540424>,  <45.170078, 55.727989, 55.125309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407600, 56.062565, 54.540424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688805, 55.832108, 54.707199>,  <45.857525, 55.693832, 54.807266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688805, 55.832108, 54.707199>,  <45.407600, 56.062565, 54.540424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688805, 55.832108, 54.707199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699487, 0.454264, -0.551690,
		0.128451, 0.679487, 0.722356,
		0.703007, -0.576144, 0.416941,
		45.899708, 55.659264, 54.832283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850861, 56.436604, 54.877567>,  <45.407600, 56.062565, 54.540424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850861, 56.436604, 54.877567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025394, 56.102531, 54.743649>,  <46.130116, 55.902088, 54.663296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.025394, 56.102531, 54.743649>,  <45.850861, 56.436604, 54.877567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025394, 56.102531, 54.743649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708392, 0.548280, -0.444487,
		0.554788, -0.043222, 0.830868,
		0.436337, -0.835177, -0.334797,
		46.156296, 55.851978, 54.643208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507309, 56.700294, 54.728058>,  <45.850861, 56.436604, 54.877567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507309, 56.700294, 54.728058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538151, 56.322929, 54.599045>,  <46.556656, 56.096512, 54.521637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538151, 56.322929, 54.599045>,  <46.507309, 56.700294, 54.728058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.538151, 56.322929, 54.599045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835628, 0.237611, -0.495244,
		0.543857, -0.231329, 0.806664,
		0.077107, -0.943413, -0.322531,
		46.561283, 56.039906, 54.502285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200066, 56.410427, 54.898849>,  <46.507309, 56.700294, 54.728058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200066, 56.410427, 54.898849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045517, 56.188126, 54.604404>,  <46.952789, 56.054745, 54.427738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045517, 56.188126, 54.604404>,  <47.200066, 56.410427, 54.898849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045517, 56.188126, 54.604404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876981, 0.025854, -0.479830,
		0.285697, -0.830947, 0.477394,
		-0.386370, -0.555751, -0.736111,
		46.929607, 56.021400, 54.383572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.692131, 55.804352, 54.661163>,  <47.200066, 56.410427, 54.898849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.692131, 55.804352, 54.661163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458656, 55.974304, 54.384384>,  <47.318573, 56.076275, 54.218319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.458656, 55.974304, 54.384384>,  <47.692131, 55.804352, 54.661163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.458656, 55.974304, 54.384384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808685, 0.227499, -0.542469,
		-0.073068, -0.876197, -0.476382,
		-0.583686, 0.424880, -0.691945,
		47.283550, 56.101768, 54.176800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.009846, 55.644974, 54.016132>,  <47.692131, 55.804352, 54.661163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.009846, 55.644974, 54.016132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.784874, 55.972481, 53.970016>,  <47.649891, 56.168987, 53.942348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.784874, 55.972481, 53.970016>,  <48.009846, 55.644974, 54.016132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.784874, 55.972481, 53.970016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748522, 0.444940, -0.491673,
		-0.351273, -0.362823, -0.863114,
		-0.562425, 0.818772, -0.115286,
		47.616146, 56.218113, 53.935432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.006180, 55.879295, 53.347214>,  <48.009846, 55.644974, 54.016132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.006180, 55.879295, 53.347214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.915211, 56.204659, 53.561371>,  <47.860630, 56.399876, 53.689865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.915211, 56.204659, 53.561371>,  <48.006180, 55.879295, 53.347214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.915211, 56.204659, 53.561371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864809, 0.421444, -0.272930,
		-0.447641, 0.400942, -0.799289,
		-0.227426, 0.813407, 0.535393,
		47.846981, 56.448681, 53.721989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.398743, 56.353630, 52.926231>,  <48.006180, 55.879295, 53.347214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.398743, 56.353630, 52.926231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.290718, 56.497467, 53.283501>,  <48.225903, 56.583767, 53.497864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.290718, 56.497467, 53.283501>,  <48.398743, 56.353630, 52.926231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.290718, 56.497467, 53.283501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832606, 0.553103, 0.029069,
		-0.483565, 0.751514, -0.448767,
		-0.270060, 0.359589, 0.893176,
		48.209702, 56.605343, 53.551453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.488609, 57.102371, 52.854576>,  <48.398743, 56.353630, 52.926231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.488609, 57.102371, 52.854576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.491688, 56.971649, 53.232601>,  <48.493534, 56.893215, 53.459415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.491688, 56.971649, 53.232601>,  <48.488609, 57.102371, 52.854576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.491688, 56.971649, 53.232601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882151, 0.447276, 0.147492,
		-0.470904, 0.832550, 0.291736,
		0.007692, -0.326810, 0.945059,
		48.493996, 56.873608, 53.516117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.666088, 57.694881, 53.297184>,  <48.488609, 57.102371, 52.854576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.666088, 57.694881, 53.297184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.797821, 57.352638, 53.456924>,  <48.876862, 57.147293, 53.552769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.797821, 57.352638, 53.456924>,  <48.666088, 57.694881, 53.297184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.797821, 57.352638, 53.456924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926678, 0.374018, 0.037126,
		-0.181130, 0.357843, 0.916046,
		0.329333, -0.855604, 0.399351,
		48.896622, 57.095959, 53.576729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.261936, 57.835781, 53.709873>,  <48.666088, 57.694881, 53.297184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.261936, 57.835781, 53.709873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.319901, 57.441505, 53.675415>,  <49.354679, 57.204941, 53.654739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.319901, 57.441505, 53.675415>,  <49.261936, 57.835781, 53.709873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.319901, 57.441505, 53.675415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977040, 0.128805, 0.169711,
		-0.156185, -0.108763, 0.981721,
		0.144909, -0.985687, -0.086148,
		49.363373, 57.145798, 53.649570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.633133, 57.724735, 54.359978>,  <49.261936, 57.835781, 53.709873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.633133, 57.724735, 54.359978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.664307, 57.475235, 54.048885>,  <49.683010, 57.325535, 53.862232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.664307, 57.475235, 54.048885>,  <49.633133, 57.724735, 54.359978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.664307, 57.475235, 54.048885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983791, 0.174486, -0.041352,
		0.161496, -0.761898, 0.627240,
		0.077939, -0.623752, -0.777727,
		49.687687, 57.288109, 53.815567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.062744, 57.195919, 54.558075>,  <49.633133, 57.724735, 54.359978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.062744, 57.195919, 54.558075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.079655, 57.263607, 54.164207>,  <50.089802, 57.304218, 53.927887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.079655, 57.263607, 54.164207>,  <50.062744, 57.195919, 54.558075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.079655, 57.263607, 54.164207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995986, -0.084971, 0.028159,
		-0.078903, -0.981909, -0.172133,
		0.042276, 0.169220, -0.984671,
		50.092339, 57.314373, 53.868805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.508099, 56.679409, 54.102497>,  <50.062744, 57.195919, 54.558075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.508099, 56.679409, 54.102497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.513290, 57.010712, 53.878418>,  <50.516407, 57.209492, 53.743969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.513290, 57.010712, 53.878418>,  <50.508099, 56.679409, 54.102497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.513290, 57.010712, 53.878418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999717, 0.000419, 0.023788,
		0.019937, -0.560350, -0.828016,
		0.012983, 0.828256, -0.560199,
		50.517185, 57.259190, 53.710358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.956650, 56.581104, 53.515644>,  <50.508099, 56.679409, 54.102497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.956650, 56.581104, 53.515644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.941071, 56.960663, 53.640915>,  <50.931725, 57.188396, 53.716080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.941071, 56.960663, 53.640915>,  <50.956650, 56.581104, 53.515644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.941071, 56.960663, 53.640915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999175, 0.040602, 0.001241,
		-0.011538, 0.312969, -0.949693,
		-0.038948, 0.948895, 0.313180,
		50.929386, 57.245331, 53.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.284168, 57.013206, 53.053215>,  <50.956650, 56.581104, 53.515644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.284168, 57.013206, 53.053215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.311901, 57.127785, 53.435448>,  <51.328541, 57.196533, 53.664787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.311901, 57.127785, 53.435448>,  <51.284168, 57.013206, 53.053215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.311901, 57.127785, 53.435448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982350, 0.147209, -0.115403,
		-0.173727, 0.946720, -0.271183,
		0.069333, 0.286445, 0.955585,
		51.332703, 57.213718, 53.722122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.639057, 57.720737, 53.210144>,  <51.284168, 57.013206, 53.053215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.639057, 57.720737, 53.210144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.671509, 57.449051, 53.501923>,  <51.690979, 57.286041, 53.676991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.671509, 57.449051, 53.501923>,  <51.639057, 57.720737, 53.210144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.671509, 57.449051, 53.501923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996194, 0.031863, -0.081131,
		0.031863, 0.733248, 0.679215,
		0.081131, -0.679215, 0.729442,
		51.695847, 57.245285, 53.720757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.041260, 57.936245, 53.897160>,  <51.639057, 57.720737, 53.210144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.041260, 57.936245, 53.897160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.074638, 57.542736, 53.833622>,  <52.094666, 57.306629, 53.795498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.074638, 57.542736, 53.833622>,  <52.041260, 57.936245, 53.897160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.074638, 57.542736, 53.833622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995198, 0.090453, -0.037410,
		0.051171, -0.154962, 0.986594,
		0.083443, -0.983771, -0.158847,
		52.099670, 57.247604, 53.785969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.478935, 57.495483, 54.434010>,  <52.041260, 57.936245, 53.897160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.478935, 57.495483, 54.434010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.491268, 57.367397, 54.055271>,  <52.498669, 57.290546, 53.828030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.491268, 57.367397, 54.055271>,  <52.478935, 57.495483, 54.434010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.491268, 57.367397, 54.055271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998742, 0.047345, 0.016512,
		0.039541, -0.946161, 0.321273,
		0.030833, -0.320216, -0.946843,
		52.500519, 57.271332, 53.771217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.812412, 56.806866, 54.287037>,  <52.478935, 57.495483, 54.434010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.812412, 56.806866, 54.287037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.863712, 57.039299, 53.965569>,  <52.894493, 57.178761, 53.772686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.863712, 57.039299, 53.965569>,  <52.812412, 56.806866, 54.287037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.863712, 57.039299, 53.965569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991469, -0.094152, 0.090146,
		-0.023284, -0.808377, -0.588204,
		0.128253, 0.581087, -0.803672,
		52.902187, 57.213627, 53.724468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.319763, 56.524303, 53.823231>,  <52.812412, 56.806866, 54.287037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.319763, 56.524303, 53.823231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.324871, 56.921013, 53.772278>,  <53.327934, 57.159039, 53.741707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.324871, 56.921013, 53.772278>,  <53.319763, 56.524303, 53.823231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.324871, 56.921013, 53.772278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961423, 0.022829, 0.274126,
		0.274778, -0.125969, -0.953220,
		0.012770, 0.991772, -0.127382,
		53.328701, 57.218544, 53.734062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.828056, 56.722752, 53.377762>,  <53.319763, 56.524303, 53.823231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.828056, 56.722752, 53.377762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.776295, 57.004650, 53.656784>,  <53.745239, 57.173790, 53.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.776295, 57.004650, 53.656784>,  <53.828056, 56.722752, 53.377762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.776295, 57.004650, 53.656784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980800, -0.012533, 0.194612,
		0.145896, 0.709344, -0.689598,
		-0.129405, 0.704751, 0.697553,
		53.737473, 57.216076, 53.866051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.351284, 57.217079, 53.351387>,  <53.828056, 56.722752, 53.377762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.351284, 57.217079, 53.351387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.214745, 57.252388, 53.725700>,  <54.132820, 57.273575, 53.950287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.214745, 57.252388, 53.725700>,  <54.351284, 57.217079, 53.351387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.214745, 57.252388, 53.725700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932261, -0.095180, 0.349042,
		0.119879, 0.991538, -0.049805,
		-0.341348, 0.088274, 0.935782,
		54.112339, 57.278870, 54.006435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.994747, 57.116314, 53.613556>,  <54.351284, 57.217079, 53.351387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.994747, 57.116314, 53.613556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.742340, 57.218563, 53.906532>,  <54.590897, 57.279911, 54.082317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.742340, 57.218563, 53.906532>,  <54.994747, 57.116314, 53.613556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.742340, 57.218563, 53.906532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771423, 0.106977, 0.627266,
		0.081990, 0.960839, -0.264699,
		-0.631019, 0.255624, 0.732442,
		54.553036, 57.295250, 54.126266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.165806, 57.859444, 53.983974>,  <54.994747, 57.116314, 53.613556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.165806, 57.859444, 53.983974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.003189, 57.591221, 54.232193>,  <54.905617, 57.430286, 54.381126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.003189, 57.591221, 54.232193>,  <55.165806, 57.859444, 53.983974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.003189, 57.591221, 54.232193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766306, 0.119579, 0.631250,
		-0.497492, 0.732160, 0.465235,
		-0.406544, -0.670554, 0.620548,
		54.881226, 57.390053, 54.418358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.232021, 58.100445, 54.666401>,  <55.165806, 57.859444, 53.983974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.232021, 58.100445, 54.666401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.244514, 57.701359, 54.642433>,  <55.252010, 57.461906, 54.628052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.244514, 57.701359, 54.642433>,  <55.232021, 58.100445, 54.666401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.244514, 57.701359, 54.642433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886138, -0.000091, 0.463422,
		-0.462368, -0.067574, 0.884109,
		0.031235, -0.997714, -0.059922,
		55.253883, 57.402046, 54.624458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.226051, 57.749672, 55.290207>,  <55.232021, 58.100445, 54.666401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.226051, 57.749672, 55.290207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.413086, 57.503723, 55.036186>,  <55.525307, 57.356155, 54.883774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.413086, 57.503723, 55.036186>,  <55.226051, 57.749672, 55.290207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.413086, 57.503723, 55.036186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722769, -0.147650, 0.675133,
		-0.508887, -0.774681, 0.375371,
		0.467589, -0.614873, -0.635052,
		55.553364, 57.319260, 54.845669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.264988, 57.084026, 55.616531>,  <55.226051, 57.749672, 55.290207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.264988, 57.084026, 55.616531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.548103, 57.191669, 55.355270>,  <55.717972, 57.256256, 55.198513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.548103, 57.191669, 55.355270>,  <55.264988, 57.084026, 55.616531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.548103, 57.191669, 55.355270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700913, -0.152284, 0.696800,
		0.088053, -0.950993, -0.296409,
		0.707790, 0.269112, -0.653155,
		55.760441, 57.272404, 55.159325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.919529, 56.629368, 55.582104>,  <55.264988, 57.084026, 55.616531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.919529, 56.629368, 55.582104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.060631, 56.984325, 55.463387>,  <56.145294, 57.197300, 55.392155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.060631, 56.984325, 55.463387>,  <55.919529, 56.629368, 55.582104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.060631, 56.984325, 55.463387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785166, -0.108181, 0.609763,
		0.508995, -0.448130, -0.734917,
		0.352757, 0.887399, -0.296793,
		56.166458, 57.250546, 55.374348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.644142, 56.715275, 55.322956>,  <55.919529, 56.629368, 55.582104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.644142, 56.715275, 55.322956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.507294, 57.038830, 55.514229>,  <56.425182, 57.232964, 55.628990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.507294, 57.038830, 55.514229>,  <56.644142, 56.715275, 55.322956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.507294, 57.038830, 55.514229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604099, -0.200444, 0.771289,
		0.719734, 0.552742, -0.420071,
		-0.342123, 0.808887, 0.478177,
		56.404655, 57.281494, 55.657681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.172386, 57.167637, 55.370037>,  <56.644142, 56.715275, 55.322956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.172386, 57.167637, 55.370037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.898430, 57.190380, 55.660606>,  <56.734055, 57.204025, 55.834946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.898430, 57.190380, 55.660606>,  <57.172386, 57.167637, 55.370037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.898430, 57.190380, 55.660606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723172, -0.068875, 0.687225,
		0.089106, 0.996004, 0.006055,
		-0.684895, 0.056857, 0.726420,
		56.692963, 57.207436, 55.878532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.286358, 57.706936, 55.898945>,  <57.172386, 57.167637, 55.370037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.286358, 57.706936, 55.898945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.113655, 57.384491, 56.060822>,  <57.010033, 57.191025, 56.157948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.113655, 57.384491, 56.060822>,  <57.286358, 57.706936, 55.898945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.113655, 57.384491, 56.060822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825607, -0.172490, 0.537234,
		-0.363263, 0.566071, 0.740003,
		-0.431755, -0.806109, 0.404693,
		56.984127, 57.142658, 56.182228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.364887, 57.597988, 56.569927>,  <57.286358, 57.706936, 55.898945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.364887, 57.597988, 56.569927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.253754, 57.216431, 56.524513>,  <57.187073, 56.987495, 56.497265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.253754, 57.216431, 56.524513>,  <57.364887, 57.597988, 56.569927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.253754, 57.216431, 56.524513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605249, -0.265602, 0.750419,
		-0.745977, 0.139776, 0.651138,
		-0.277834, -0.953896, -0.113534,
		57.170403, 56.930264, 56.490452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.123775, 57.319386, 57.238834>,  <57.364887, 57.597988, 56.569927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.123775, 57.319386, 57.238834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.291656, 57.062820, 56.981949>,  <57.392384, 56.908882, 56.827816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.291656, 57.062820, 56.981949>,  <57.123775, 57.319386, 57.238834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.291656, 57.062820, 56.981949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641125, -0.291354, 0.709980,
		-0.642503, -0.709719, 0.288945,
		0.419701, -0.641414, -0.642214,
		57.417568, 56.870396, 56.789284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.186954, 56.610550, 57.564358>,  <57.123775, 57.319386, 57.238834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.186954, 56.610550, 57.564358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.458824, 56.690510, 57.282059>,  <57.621944, 56.738487, 57.112679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.458824, 56.690510, 57.282059>,  <57.186954, 56.610550, 57.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.458824, 56.690510, 57.282059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718963, -0.372241, 0.586966,
		-0.145371, -0.906353, -0.396727,
		0.679676, 0.199904, -0.705747,
		57.662727, 56.750481, 57.070335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.683155, 56.116325, 57.605053>,  <57.186954, 56.610550, 57.564358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.683155, 56.116325, 57.605053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.889694, 56.398415, 57.410713>,  <58.013618, 56.567669, 57.294109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.889694, 56.398415, 57.410713>,  <57.683155, 56.116325, 57.605053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.889694, 56.398415, 57.410713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814855, -0.230078, 0.532048,
		0.263429, -0.670617, -0.693454,
		0.516349, 0.705221, -0.485846,
		58.044598, 56.609982, 57.264957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.349735, 55.967617, 57.164967>,  <57.683155, 56.116325, 57.605053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.349735, 55.967617, 57.164967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371078, 56.333801, 57.324509>,  <58.383884, 56.553513, 57.420235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.371078, 56.333801, 57.324509>,  <58.349735, 55.967617, 57.164967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.371078, 56.333801, 57.324509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760333, -0.296176, 0.578078,
		0.647339, 0.272420, -0.711857,
		0.053355, 0.915460, 0.398856,
		58.387085, 56.608440, 57.444164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.019596, 56.221588, 57.144894>,  <58.349735, 55.967617, 57.164967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.019596, 56.221588, 57.144894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.860336, 56.434391, 57.443810>,  <58.764778, 56.562073, 57.623161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.860336, 56.434391, 57.443810>,  <59.019596, 56.221588, 57.144894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.860336, 56.434391, 57.443810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826620, -0.145119, 0.543728,
		0.397712, 0.834214, -0.381985,
		-0.398152, 0.532004, 0.747293,
		58.740891, 56.593990, 57.667999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.432686, 56.770733, 57.409588>,  <59.019596, 56.221588, 57.144894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.432686, 56.770733, 57.409588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.234924, 56.562485, 57.688019>,  <59.116268, 56.437534, 57.855076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.234924, 56.562485, 57.688019>,  <59.432686, 56.770733, 57.409588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.234924, 56.562485, 57.688019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869017, -0.313891, 0.382468,
		0.019372, 0.793995, 0.607616,
		-0.494403, -0.520620, 0.696075,
		59.086605, 56.406300, 57.896843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.709152, 56.892559, 58.053226>,  <59.432686, 56.770733, 57.409588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.709152, 56.892559, 58.053226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.522438, 56.542084, 58.101242>,  <59.410412, 56.331799, 58.130051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.522438, 56.542084, 58.101242>,  <59.709152, 56.892559, 58.053226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.522438, 56.542084, 58.101242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881860, -0.450925, 0.137799,
		-0.066612, 0.170176, 0.983160,
		-0.466782, -0.876189, 0.120034,
		59.382404, 56.279228, 58.137253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.827366, 56.688633, 58.703274>,  <59.709152, 56.892559, 58.053226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.827366, 56.688633, 58.703274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.746750, 56.366394, 58.480423>,  <59.698380, 56.173050, 58.346710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.746750, 56.366394, 58.480423>,  <59.827366, 56.688633, 58.703274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.746750, 56.366394, 58.480423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927505, -0.339789, 0.155813,
		-0.314830, -0.485339, 0.815677,
		-0.201535, -0.805599, -0.557130,
		59.686291, 56.124714, 58.313286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.339203, 56.738194, 59.121864>,  <59.827366, 56.688633, 58.703274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.339203, 56.738194, 59.121864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.466080, 56.488861, 59.407761>,  <60.542206, 56.339264, 59.579300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.466080, 56.488861, 59.407761>,  <60.339203, 56.738194, 59.121864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.466080, 56.488861, 59.407761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874128, -0.100145, -0.475260,
		0.367820, 0.775521, 0.513104,
		0.317189, -0.623329, 0.714739,
		60.561237, 56.301861, 59.622181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.019413, 56.767136, 58.783661>,  <60.339203, 56.738194, 59.121864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.019413, 56.767136, 58.783661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.351761, 56.748753, 58.561836>,  <61.551170, 56.737724, 58.428741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.351761, 56.748753, 58.561836>,  <61.019413, 56.767136, 58.783661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.351761, 56.748753, 58.561836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285870, -0.890275, -0.354526,
		-0.477417, 0.453098, -0.752844,
		0.830874, -0.045959, -0.554560,
		61.601025, 56.734966, 58.395470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.500252, 56.519653, 59.277691>,  <61.019413, 56.767136, 58.783661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.500252, 56.519653, 59.277691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.592171, 56.710365, 59.617073>,  <61.647324, 56.824791, 59.820702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.592171, 56.710365, 59.617073>,  <61.500252, 56.519653, 59.277691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.592171, 56.710365, 59.617073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462752, -0.820462, 0.335712,
		0.856185, 0.315477, -0.409171,
		0.229800, 0.476776, 0.848455,
		61.661110, 56.853397, 59.871609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.305569, 56.625088, 59.361469>,  <61.500252, 56.519653, 59.277691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.305569, 56.625088, 59.361469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.087379, 56.553947, 59.689087>,  <61.956467, 56.511261, 59.885658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.087379, 56.553947, 59.689087>,  <62.305569, 56.625088, 59.361469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.087379, 56.553947, 59.689087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399707, -0.914140, 0.067697,
		0.736677, 0.364303, 0.569729,
		-0.545474, -0.177853, 0.819040,
		61.923737, 56.500591, 59.934799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.683304, 56.616768, 59.925091>,  <62.305569, 56.625088, 59.361469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.683304, 56.616768, 59.925091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.398262, 56.338615, 59.962273>,  <62.227238, 56.171722, 59.984581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.398262, 56.338615, 59.962273>,  <62.683304, 56.616768, 59.925091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.398262, 56.338615, 59.962273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687707, -0.718575, -0.103483,
		0.138753, -0.009819, 0.990278,
		-0.712606, -0.695380, 0.092952,
		62.184479, 56.130001, 59.990158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.033951, 56.110832, 60.322037>,  <62.683304, 56.616768, 59.925091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.033951, 56.110832, 60.322037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.726364, 55.945766, 60.126732>,  <62.541813, 55.846725, 60.009548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.726364, 55.945766, 60.126732>,  <63.033951, 56.110832, 60.322037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.726364, 55.945766, 60.126732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542742, -0.825001, -0.157497,
		-0.337827, -0.386112, 0.858365,
		-0.768963, -0.412664, -0.488267,
		62.495674, 55.821968, 59.980251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.883614, 55.292767, 60.306637>,  <63.033951, 56.110832, 60.322037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.883614, 55.292767, 60.306637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.728134, 55.428928, 59.964165>,  <62.634846, 55.510624, 59.758682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.728134, 55.428928, 59.964165>,  <62.883614, 55.292767, 60.306637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.728134, 55.428928, 59.964165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291710, -0.835979, -0.464806,
		-0.873969, -0.430424, 0.225641,
		-0.388695, 0.340404, -0.856178,
		62.611526, 55.531048, 59.707310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.205017, 54.857048, 60.880581>,  <62.883614, 55.292767, 60.306637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.205017, 54.857048, 60.880581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.241806, 54.702103, 61.247513>,  <63.263878, 54.609135, 61.467670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.241806, 54.702103, 61.247513>,  <63.205017, 54.857048, 60.880581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.241806, 54.702103, 61.247513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451043, -0.805102, -0.385189,
		0.887751, 0.449181, 0.100672,
		0.091969, -0.387360, 0.917330,
		63.269398, 54.585896, 61.522713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.924152, 54.649658, 60.955040>,  <63.205017, 54.857048, 60.880581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.924152, 54.649658, 60.955040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.631218, 54.447659, 61.137756>,  <63.455456, 54.326458, 61.247387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.631218, 54.447659, 61.137756>,  <63.924152, 54.649658, 60.955040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.631218, 54.447659, 61.137756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368013, -0.857937, -0.358484,
		0.572929, -0.094428, 0.814147,
		-0.732338, -0.505003, 0.456786,
		63.411518, 54.296158, 61.274792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.502563, 55.127953, 61.149403>,  <63.924152, 54.649658, 60.955040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.502563, 55.127953, 61.149403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.870201, 54.977421, 61.102661>,  <65.090782, 54.887100, 61.074615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.870201, 54.977421, 61.102661>,  <64.502563, 55.127953, 61.149403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.870201, 54.977421, 61.102661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307300, -0.870126, 0.385289,
		-0.246674, -0.318205, -0.915368,
		0.919086, -0.376333, -0.116853,
		65.145927, 54.864521, 61.067604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.097572, 55.393990, 61.376911>,  <64.502563, 55.127953, 61.149403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.097572, 55.393990, 61.376911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.116135, 55.619720, 61.047211>,  <65.127274, 55.755157, 60.849392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.116135, 55.619720, 61.047211>,  <65.097572, 55.393990, 61.376911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.116135, 55.619720, 61.047211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926613, 0.283907, 0.246547,
		0.373142, -0.775200, -0.509735,
		0.046406, 0.564324, -0.824248,
		65.130058, 55.789017, 60.799934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.728027, 55.219093, 61.142681>,  <65.097572, 55.393990, 61.376911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.728027, 55.219093, 61.142681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.619743, 55.561153, 60.965851>,  <65.554771, 55.766392, 60.859753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.619743, 55.561153, 60.965851>,  <65.728027, 55.219093, 61.142681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.619743, 55.561153, 60.965851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938639, 0.336424, 0.076000,
		0.213716, -0.394372, -0.893754,
		-0.270708, 0.855155, -0.442072,
		65.538528, 55.817699, 60.833229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.081726, 55.300331, 60.514446>,  <65.728027, 55.219093, 61.142681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.081726, 55.300331, 60.514446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.055687, 55.666737, 60.672783>,  <66.040062, 55.886578, 60.767784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.055687, 55.666737, 60.672783>,  <66.081726, 55.300331, 60.514446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.055687, 55.666737, 60.672783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926608, 0.202710, -0.316712,
		-0.370352, 0.346173, -0.861977,
		-0.065095, 0.916009, 0.395841,
		66.036156, 55.941540, 60.791534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.425102, 55.778252, 60.136349>,  <66.081726, 55.300331, 60.514446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.425102, 55.778252, 60.136349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.389267, 55.996216, 60.469826>,  <66.367767, 56.126995, 60.669914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.389267, 55.996216, 60.469826>,  <66.425102, 55.778252, 60.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.389267, 55.996216, 60.469826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899649, 0.403411, -0.167007,
		-0.427326, 0.735073, -0.526365,
		-0.089579, 0.544909, 0.833696,
		66.362396, 56.159687, 60.719936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.512741, 56.480583, 59.981144>,  <66.425102, 55.778252, 60.136349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.512741, 56.480583, 59.981144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.598312, 56.449455, 60.370644>,  <66.649658, 56.430779, 60.604343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.598312, 56.449455, 60.370644>,  <66.512741, 56.480583, 59.981144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.598312, 56.449455, 60.370644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932971, 0.311676, -0.180066,
		-0.289481, 0.946997, 0.139277,
		0.213931, -0.077816, 0.973744,
		66.662491, 56.426109, 60.662766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.644402, 57.161415, 60.309273>,  <66.512741, 56.480583, 59.981144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.644402, 57.161415, 60.309273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821716, 56.840698, 60.469589>,  <66.928108, 56.648270, 60.565781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821716, 56.840698, 60.469589>,  <66.644402, 57.161415, 60.309273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.821716, 56.840698, 60.469589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896365, 0.399164, -0.192868,
		-0.005343, 0.444753, 0.895637,
		0.443285, -0.801787, 0.400794,
		66.954704, 56.600163, 60.589828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.998413, 57.394291, 60.906452>,  <66.644402, 57.161415, 60.309273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.998413, 57.394291, 60.906452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.137939, 57.083271, 60.697174>,  <67.221657, 56.896660, 60.571606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.137939, 57.083271, 60.697174>,  <66.998413, 57.394291, 60.906452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.137939, 57.083271, 60.697174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790651, 0.543891, -0.281165,
		0.503183, -0.315592, 0.804493,
		0.348823, -0.777550, -0.523200,
		67.242584, 56.850006, 60.540215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.600975, 57.208797, 61.210976>,  <66.998413, 57.394291, 60.906452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.600975, 57.208797, 61.210976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.586700, 57.150223, 60.815544>,  <67.578133, 57.115078, 60.578285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.586700, 57.150223, 60.815544>,  <67.600975, 57.208797, 61.210976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.586700, 57.150223, 60.815544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800661, 0.587787, -0.115968,
		0.598054, -0.795654, 0.096267,
		-0.035685, -0.146432, -0.988577,
		67.575996, 57.106293, 60.518970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.222427, 57.077496, 61.163731>,  <67.600975, 57.208797, 61.210976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.222427, 57.077496, 61.163731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.096916, 57.176445, 60.797050>,  <68.021606, 57.235817, 60.577042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.096916, 57.176445, 60.797050>,  <68.222427, 57.077496, 61.163731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.096916, 57.176445, 60.797050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849949, 0.503534, -0.155047,
		0.423237, -0.827803, -0.368256,
		-0.313778, 0.247377, -0.916705,
		68.002785, 57.250660, 60.522038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.934624, 57.148762, 60.946308>,  <68.222427, 57.077496, 61.163731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.934624, 57.148762, 60.946308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.997665, 57.294914, 61.313278>,  <69.035492, 57.382607, 61.533459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.997665, 57.294914, 61.313278>,  <68.934624, 57.148762, 60.946308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.997665, 57.294914, 61.313278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959014, 0.164918, -0.230423,
		-0.235491, 0.916133, -0.324414,
		0.157596, 0.365380, 0.917421,
		69.044945, 57.404530, 61.588505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.550095, 57.567154, 60.931870>,  <68.934624, 57.148762, 60.946308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.550095, 57.567154, 60.931870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.503761, 57.564888, 61.329170>,  <69.475960, 57.563526, 61.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.503761, 57.564888, 61.329170>,  <69.550095, 57.567154, 60.931870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.503761, 57.564888, 61.329170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991812, 0.053457, 0.115977,
		-0.053754, 0.998554, -0.000572,
		-0.115840, -0.005667, 0.993252,
		69.469009, 57.563187, 61.627144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.925652, 58.134315, 61.227287>,  <69.550095, 57.567154, 60.931870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.925652, 58.134315, 61.227287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.911552, 57.832012, 61.488846>,  <69.903091, 57.650631, 61.645782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.911552, 57.832012, 61.488846>,  <69.925652, 58.134315, 61.227287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.911552, 57.832012, 61.488846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996170, 0.025828, 0.083538,
		-0.080024, 0.654338, 0.751956,
		-0.035241, -0.755761, 0.653899,
		69.900978, 57.605286, 61.685017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.164787, 58.447792, 61.771103>,  <69.925652, 58.134315, 61.227287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.164787, 58.447792, 61.771103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.224091, 58.054276, 61.811470>,  <70.259674, 57.818165, 61.835690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.224091, 58.054276, 61.811470>,  <70.164787, 58.447792, 61.771103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.224091, 58.054276, 61.811470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985086, 0.155911, 0.072779,
		-0.087333, 0.088620, 0.992230,
		0.148250, -0.983788, 0.100914,
		70.268562, 57.759140, 61.841743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.588501, 58.263504, 62.412560>,  <70.164787, 58.447792, 61.771103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.588501, 58.263504, 62.412560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.629929, 57.955112, 62.161209>,  <70.654785, 57.770077, 62.010399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.629929, 57.955112, 62.161209>,  <70.588501, 58.263504, 62.412560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.629929, 57.955112, 62.161209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994491, 0.090508, 0.052878,
		0.016105, -0.630391, 0.776111,
		0.103578, -0.770983, -0.628376,
		70.661003, 57.723816, 61.972698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.089447, 57.729282, 62.613632>,  <70.588501, 58.263504, 62.412560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.089447, 57.729282, 62.613632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.054771, 57.720940, 62.215225>,  <71.033966, 57.715935, 61.976181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.054771, 57.720940, 62.215225>,  <71.089447, 57.729282, 62.613632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.054771, 57.720940, 62.215225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990918, 0.101357, -0.088364,
		0.102796, -0.994632, 0.011872,
		-0.086686, -0.020848, -0.996018,
		71.028763, 57.714684, 61.916420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.552597, 57.233459, 62.336494>,  <71.089447, 57.729282, 62.613632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.552597, 57.233459, 62.336494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.496925, 57.503265, 62.046486>,  <71.463524, 57.665150, 61.872482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.496925, 57.503265, 62.046486>,  <71.552597, 57.233459, 62.336494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.496925, 57.503265, 62.046486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988478, 0.138618, -0.060802,
		0.059489, -0.725131, -0.686036,
		-0.139186, 0.674514, -0.725022,
		71.455170, 57.705620, 61.828979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.804863, 57.056965, 61.737617>,  <71.552597, 57.233459, 62.336494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.804863, 57.056965, 61.737617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.792534, 57.456524, 61.723412>,  <71.785141, 57.696259, 61.714886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.792534, 57.456524, 61.723412>,  <71.804863, 57.056965, 61.737617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.792534, 57.456524, 61.723412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972677, 0.021791, -0.231139,
		-0.230109, -0.041671, -0.972272,
		-0.030819, 0.998894, -0.035518,
		71.783287, 57.756191, 61.712757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.241158, 57.080128, 61.126793>,  <71.804863, 57.056965, 61.737617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.241158, 57.080128, 61.126793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.573502, 56.990791, 60.922913>,  <72.772903, 56.937187, 60.800583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.573502, 56.990791, 60.922913>,  <72.241158, 57.080128, 61.126793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.573502, 56.990791, 60.922913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120041, 0.822432, -0.556054,
		0.543386, 0.523186, 0.656512,
		0.830856, -0.223344, -0.509702,
		72.822762, 56.923790, 60.770000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.755829, 57.683582, 61.066475>,  <72.241158, 57.080128, 61.126793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.755829, 57.683582, 61.066475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.810112, 57.447708, 60.748016>,  <72.842682, 57.306183, 60.556942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.810112, 57.447708, 60.748016>,  <72.755829, 57.683582, 61.066475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.810112, 57.447708, 60.748016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072012, 0.807327, -0.585694,
		0.988127, 0.022155, 0.152031,
		0.135715, -0.589688, -0.796146,
		72.850830, 57.270802, 60.509171>
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
