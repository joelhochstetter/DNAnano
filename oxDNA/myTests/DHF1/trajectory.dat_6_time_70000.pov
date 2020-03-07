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
	<1.375606, -0.085723, 1.839715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.416561, -0.186800, 1.454869>,  <1.441134, -0.247446, 1.223962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.416561, -0.186800, 1.454869>,  <1.375606, -0.085723, 1.839715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.416561, -0.186800, 1.454869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993408, -0.024145, 0.112060,
		-0.051547, -0.967245, 0.248556,
		0.102388, -0.252694, -0.962113,
		1.447278, -0.262608, 1.166235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.634336, 0.610024, 1.674198>,  <1.375606, -0.085723, 1.839715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.634336, 0.610024, 1.674198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.350853, 0.363925, 1.536094>,  <1.180763, 0.216266, 1.453231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.350853, 0.363925, 1.536094>,  <1.634336, 0.610024, 1.674198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.350853, 0.363925, 1.536094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655799, 0.394062, 0.643928,
		-0.260121, 0.682778, -0.682753,
		-0.708707, -0.615248, -0.345261,
		1.138241, 0.179351, 1.432516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485027, 1.207814, 1.321439>,  <1.634336, 0.610024, 1.674198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485027, 1.207814, 1.321439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277615, 1.177988, 1.662160>,  <1.153167, 1.160093, 1.866592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.277615, 1.177988, 1.662160>,  <1.485027, 1.207814, 1.321439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.277615, 1.177988, 1.662160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807354, 0.370787, -0.459016,
		-0.281611, -0.925720, -0.252464,
		-0.518531, -0.074564, 0.851801,
		1.122055, 1.155619, 1.917700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.834645, 0.872012, 1.236465>,  <1.485027, 1.207814, 1.321439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.834645, 0.872012, 1.236465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795498, 1.136145, 1.534293>,  <0.772010, 1.294625, 1.712989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795498, 1.136145, 1.534293>,  <0.834645, 0.872012, 1.236465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795498, 1.136145, 1.534293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812321, 0.379219, -0.443088,
		-0.574940, -0.648193, 0.499289,
		-0.097867, 0.660333, 0.744569,
		0.766138, 1.334244, 1.757663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.217796, 0.965554, 1.507550>,  <0.834645, 0.872012, 1.236465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.217796, 0.965554, 1.507550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.341551, 1.345017, 1.533853>,  <0.415804, 1.572696, 1.549634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.341551, 1.345017, 1.533853>,  <0.217796, 0.965554, 1.507550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.341551, 1.345017, 1.533853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673644, 0.267451, -0.688966,
		-0.671180, 0.168862, 0.721805,
		0.309388, 0.948660, 0.065755,
		0.434367, 1.629615, 1.553579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.339862, 1.282959, 1.484751>,  <0.217796, 0.965554, 1.507550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.339862, 1.282959, 1.484751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.062840, 1.537670, 1.349175>,  <0.103374, 1.690497, 1.267830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.062840, 1.537670, 1.349175>,  <-0.339862, 1.282959, 1.484751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.062840, 1.537670, 1.349175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673171, 0.401644, -0.620905,
		-0.259247, 0.658175, 0.706822,
		0.692555, 0.636779, -0.338939,
		0.144927, 1.728704, 1.247493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.688327, 1.909017, 1.427755>,  <-0.339862, 1.282959, 1.484751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.688327, 1.909017, 1.427755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.374086, 1.886978, 1.181244>,  <-0.185542, 1.873755, 1.033338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.374086, 1.886978, 1.181244>,  <-0.688327, 1.909017, 1.427755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.374086, 1.886978, 1.181244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601039, 0.168545, -0.781245,
		0.146915, 0.984153, 0.099294,
		0.785600, -0.055097, -0.616276,
		-0.138406, 1.870449, 0.996361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.600833, 2.575763, 0.859020>,  <-0.688327, 1.909017, 1.427755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.600833, 2.575763, 0.859020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.450817, 2.220967, 0.751249>,  <-0.360807, 2.008089, 0.686587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.450817, 2.220967, 0.751249>,  <-0.600833, 2.575763, 0.859020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.450817, 2.220967, 0.751249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521046, 0.038685, -0.852651,
		0.766717, 0.460163, -0.447655,
		0.375041, -0.886991, -0.269426,
		-0.338305, 1.954869, 0.670421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.229280, 0.351244, 0.674203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.870923, 0.499309, 0.772476>,  <2.655909, 0.588147, 0.831440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.870923, 0.499309, 0.772476>,  <3.229280, 0.351244, 0.674203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.870923, 0.499309, 0.772476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361610, 0.286285, 0.887287,
		0.258104, 0.883754, -0.390334,
		-0.895891, 0.370161, 0.245683,
		2.602156, 0.610357, 0.846181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.391876, 1.045693, 0.983093>,  <3.229280, 0.351244, 0.674203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.391876, 1.045693, 0.983093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056078, 0.892944, 1.137715>,  <2.854599, 0.801295, 1.230487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.056078, 0.892944, 1.137715>,  <3.391876, 1.045693, 0.983093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.056078, 0.892944, 1.137715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418534, -0.000757, 0.908201,
		-0.346523, 0.924215, 0.160462,
		-0.839494, -0.381872, 0.386553,
		2.804230, 0.778383, 1.253680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.132409, 1.477078, 1.509033>,  <3.391876, 1.045693, 0.983093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.132409, 1.477078, 1.509033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.996261, 1.109844, 1.590291>,  <2.914572, 0.889504, 1.639046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.996261, 1.109844, 1.590291>,  <3.132409, 1.477078, 1.509033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.996261, 1.109844, 1.590291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344092, 0.079445, 0.935569,
		-0.875070, 0.388341, 0.288865,
		-0.340371, -0.918085, 0.203145,
		2.894149, 0.834419, 1.651235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.701059, 1.472052, 2.187069>,  <3.132409, 1.477078, 1.509033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.701059, 1.472052, 2.187069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885024, 1.123669, 2.117892>,  <2.995403, 0.914638, 2.076386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.885024, 1.123669, 2.117892>,  <2.701059, 1.472052, 2.187069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.885024, 1.123669, 2.117892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320759, -0.018659, 0.946977,
		-0.828005, -0.491000, 0.270787,
		0.459913, -0.870960, -0.172942,
		3.022998, 0.862381, 2.066010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.379717, 1.105540, 2.658454>,  <2.701059, 1.472052, 2.187069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.379717, 1.105540, 2.658454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.732229, 0.932239, 2.582944>,  <2.943736, 0.828258, 2.537638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.732229, 0.932239, 2.582944>,  <2.379717, 1.105540, 2.658454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.732229, 0.932239, 2.582944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141691, -0.138843, 0.980126,
		-0.450855, -0.890512, -0.060972,
		0.881280, -0.433255, -0.188776,
		2.996613, 0.802262, 2.526311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.332362, 0.369675, 2.861863>,  <2.379717, 1.105540, 2.658454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.332362, 0.369675, 2.861863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.658709, 0.599184, 2.890561>,  <2.854516, 0.736890, 2.907780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.658709, 0.599184, 2.890561>,  <2.332362, 0.369675, 2.861863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.658709, 0.599184, 2.890561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033728, -0.171084, 0.984679,
		0.577257, -0.800946, -0.158934,
		0.815866, 0.573774, 0.071745,
		2.903468, 0.771316, 2.912085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.080703, 0.129278, 3.104589>,  <2.332362, 0.369675, 2.861863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.080703, 0.129278, 3.104589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.993447, 0.500296, 3.225967>,  <2.941094, 0.722906, 3.298795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.993447, 0.500296, 3.225967>,  <3.080703, 0.129278, 3.104589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.993447, 0.500296, 3.225967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035492, -0.303189, 0.952269,
		0.975272, 0.218497, 0.033216,
		-0.218139, 0.927543, 0.303446,
		2.928006, 0.778558, 3.317001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.547578, 0.488129, 3.627122>,  <3.080703, 0.129278, 3.104589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.547578, 0.488129, 3.627122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176383, 0.616031, 3.703643>,  <2.953666, 0.692772, 3.749556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176383, 0.616031, 3.703643>,  <3.547578, 0.488129, 3.627122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.176383, 0.616031, 3.703643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245107, 0.137146, 0.959747,
		0.280647, 0.937522, -0.205644,
		-0.927987, 0.319755, 0.191304,
		2.897987, 0.711957, 3.761034>
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
