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
	<4.671185, 3.753771, -0.014561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.044209, 3.716375, 0.124920>,  <5.268023, 3.693938, 0.208609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.044209, 3.716375, 0.124920>,  <4.671185, 3.753771, -0.014561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.044209, 3.716375, 0.124920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320097, 0.232544, 0.918401,
		-0.166949, -0.968082, 0.186936,
		0.932559, -0.093489, 0.348704,
		5.323976, 3.688329, 0.229531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.673717, 3.279415, 0.557464>,  <4.671185, 3.753771, -0.014561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.673717, 3.279415, 0.557464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.969419, 3.547308, 0.585629>,  <5.146842, 3.708044, 0.602527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.969419, 3.547308, 0.585629>,  <4.673717, 3.279415, 0.557464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.969419, 3.547308, 0.585629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333899, 0.273732, 0.901988,
		0.584816, -0.690312, 0.425981,
		0.739258, 0.669731, 0.070412,
		5.191197, 3.748227, 0.606752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.087948, 3.201345, 1.198716>,  <4.673717, 3.279415, 0.557464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.087948, 3.201345, 1.198716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.064630, 3.568933, 1.042717>,  <5.050639, 3.789485, 0.949118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.064630, 3.568933, 1.042717>,  <5.087948, 3.201345, 1.198716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.064630, 3.568933, 1.042717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463112, 0.321187, 0.826054,
		0.884380, 0.228768, 0.406862,
		-0.058296, 0.918969, -0.389997,
		5.047141, 3.844623, 0.925718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383476, 3.800604, 1.603691>,  <5.087948, 3.201345, 1.198716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383476, 3.800604, 1.603691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.087216, 3.952833, 1.382204>,  <4.909461, 4.044171, 1.249312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.087216, 3.952833, 1.382204>,  <5.383476, 3.800604, 1.603691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.087216, 3.952833, 1.382204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390138, 0.427358, 0.815572,
		0.547020, 0.820078, -0.168047,
		-0.740649, 0.380573, -0.553717,
		4.865022, 4.067005, 1.216089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.238106, 4.588212, 1.632113>,  <5.383476, 3.800604, 1.603691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.238106, 4.588212, 1.632113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.891870, 4.414514, 1.532364>,  <4.684129, 4.310295, 1.472514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.891870, 4.414514, 1.532364>,  <5.238106, 4.588212, 1.632113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.891870, 4.414514, 1.532364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445872, 0.441673, 0.778539,
		-0.227935, 0.785083, -0.575925,
		-0.865589, -0.434245, -0.249373,
		4.632194, 4.284240, 1.457552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791580, 5.073774, 1.801232>,  <5.238106, 4.588212, 1.632113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791580, 5.073774, 1.801232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.539283, 4.765141, 1.768185>,  <4.387904, 4.579962, 1.748356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.539283, 4.765141, 1.768185>,  <4.791580, 5.073774, 1.801232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.539283, 4.765141, 1.768185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541123, 0.361026, 0.759504,
		-0.556191, 0.523759, -0.645235,
		-0.630743, -0.771581, -0.082619,
		4.350060, 4.533667, 1.743399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038825, 5.401336, 1.809136>,  <4.791580, 5.073774, 1.801232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038825, 5.401336, 1.809136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.076259, 5.025336, 1.940371>,  <4.098719, 4.799736, 2.019111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.076259, 5.025336, 1.940371>,  <4.038825, 5.401336, 1.809136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.076259, 5.025336, 1.940371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547962, 0.226502, 0.805254,
		-0.831252, -0.255139, -0.493887,
		0.093585, -0.940000, 0.328087,
		4.104334, 4.743336, 2.038797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.354782, 5.073800, 1.702946>,  <4.038825, 5.401336, 1.809136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.354782, 5.073800, 1.702946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.565919, 4.929878, 2.010693>,  <3.692601, 4.843525, 2.195340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.565919, 4.929878, 2.010693>,  <3.354782, 5.073800, 1.702946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.565919, 4.929878, 2.010693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733670, 0.263222, 0.626452,
		-0.427914, -0.895129, -0.125037,
		0.527843, -0.359804, 0.769366,
		3.724272, 4.821937, 2.241502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.718444, 5.523445, 3.412428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649094, 5.156869, 3.556693>,  <3.607484, 4.936923, 3.643252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.649094, 5.156869, 3.556693>,  <3.718444, 5.523445, 3.412428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.649094, 5.156869, 3.556693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202727, -0.391575, -0.897536,
		0.963765, -0.082494, 0.253677,
		-0.173375, -0.916441, 0.360662,
		3.597081, 4.881937, 3.664892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.218275, 5.140724, 3.118566>,  <3.718444, 5.523445, 3.412428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.218275, 5.140724, 3.118566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.927418, 4.881582, 3.209380>,  <3.752903, 4.726097, 3.263869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.927418, 4.881582, 3.209380>,  <4.218275, 5.140724, 3.118566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.927418, 4.881582, 3.209380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072592, -0.401434, -0.913007,
		0.682636, -0.647406, 0.338929,
		-0.727144, -0.647855, 0.227036,
		3.709275, 4.687226, 3.277491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.495674, 4.524711, 2.939340>,  <4.218275, 5.140724, 3.118566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.495674, 4.524711, 2.939340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099541, 4.482822, 2.902957>,  <3.861861, 4.457689, 2.881127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099541, 4.482822, 2.902957>,  <4.495674, 4.524711, 2.939340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.099541, 4.482822, 2.902957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116721, -0.274874, -0.954369,
		0.074942, -0.955760, 0.284441,
		-0.990333, -0.104722, -0.090958,
		3.802441, 4.451406, 2.875669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.433118, 3.871292, 2.645483>,  <4.495674, 4.524711, 2.939340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.433118, 3.871292, 2.645483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.105125, 4.081203, 2.554061>,  <3.908330, 4.207150, 2.499207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.105125, 4.081203, 2.554061>,  <4.433118, 3.871292, 2.645483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105125, 4.081203, 2.554061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218168, -0.082618, -0.972408,
		-0.529182, -0.847220, -0.046745,
		-0.819981, 0.524779, -0.228556,
		3.859131, 4.238637, 2.485494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.794815, 3.516086, 2.198744>,  <4.433118, 3.871292, 2.645483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.794815, 3.516086, 2.198744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.827389, 3.909559, 2.134574>,  <3.846933, 4.145643, 2.096072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.827389, 3.909559, 2.134574>,  <3.794815, 3.516086, 2.198744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.827389, 3.909559, 2.134574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287981, -0.177318, -0.941077,
		-0.954167, 0.030436, -0.297722,
		0.081434, 0.983683, -0.160426,
		3.851819, 4.204664, 2.086446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.457884, 3.645097, 1.537852>,  <3.794815, 3.516086, 2.198744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.457884, 3.645097, 1.537852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.735085, 3.926805, 1.599498>,  <3.901405, 4.095831, 1.636485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.735085, 3.926805, 1.599498>,  <3.457884, 3.645097, 1.537852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.735085, 3.926805, 1.599498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434357, -0.237258, -0.868932,
		-0.575399, 0.669111, -0.470325,
		0.693000, 0.704272, 0.154115,
		3.942985, 4.138087, 1.645732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.468231, 4.012199, 0.930360>,  <3.457884, 3.645097, 1.537852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.468231, 4.012199, 0.930360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.822277, 4.050020, 1.112627>,  <4.034705, 4.072713, 1.221986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.822277, 4.050020, 1.112627>,  <3.468231, 4.012199, 0.930360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.822277, 4.050020, 1.112627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461764, -0.300140, -0.834680,
		0.057841, 0.949197, -0.309320,
		0.885115, 0.094554, 0.455666,
		4.087811, 4.078386, 1.249326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.853119, 4.413849, 0.486082>,  <3.468231, 4.012199, 0.930360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.853119, 4.413849, 0.486082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138741, 4.231786, 0.698858>,  <4.310113, 4.122548, 0.826524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138741, 4.231786, 0.698858>,  <3.853119, 4.413849, 0.486082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.138741, 4.231786, 0.698858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502508, -0.195824, -0.842103,
		0.487457, 0.868611, 0.088892,
		0.714053, -0.455158, 0.531940,
		4.352956, 4.095238, 0.858440>
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
