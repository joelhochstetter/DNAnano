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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.124234, 15.068497, 14.742535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.244795, 14.954887, 15.106620>,  <4.317132, 14.886722, 15.325070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.244795, 14.954887, 15.106620>,  <4.124234, 15.068497, 14.742535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.244795, 14.954887, 15.106620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686719, -0.597600, -0.413874,
		0.661493, 0.749803, 0.014926,
		0.301404, -0.284024, 0.910212,
		4.335217, 14.869680, 15.379683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.652625, 14.615496, 14.590954>,  <4.124234, 15.068497, 14.742535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.652625, 14.615496, 14.590954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608515, 14.569196, 14.985809>,  <4.582049, 14.541415, 15.222722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.608515, 14.569196, 14.985809>,  <4.652625, 14.615496, 14.590954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.608515, 14.569196, 14.985809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737335, -0.675520, 0.003158,
		0.666465, 0.728200, 0.159839,
		-0.110274, -0.115750, 0.987138,
		4.575432, 14.534471, 15.281951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.417687, 14.745660, 14.931737>,  <4.652625, 14.615496, 14.590954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.417687, 14.745660, 14.931737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.164286, 14.543834, 15.166373>,  <5.012246, 14.422738, 15.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.164286, 14.543834, 15.166373>,  <5.417687, 14.745660, 14.931737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.164286, 14.543834, 15.166373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738929, -0.619370, 0.265264,
		0.229474, 0.601495, 0.765209,
		-0.633503, -0.504564, 0.586591,
		4.974236, 14.392465, 15.342351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.377172, 15.264230, 15.427403>,  <5.417687, 14.745660, 14.931737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.377172, 15.264230, 15.427403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.704025, 15.297881, 15.199293>,  <5.900137, 15.318072, 15.062427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.704025, 15.297881, 15.199293>,  <5.377172, 15.264230, 15.427403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.704025, 15.297881, 15.199293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508447, 0.571330, -0.644255,
		0.271616, 0.816397, 0.509628,
		0.817133, 0.084129, -0.570277,
		5.949165, 15.323120, 15.028210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.332464, 15.860685, 15.053020>,  <5.377172, 15.264230, 15.427403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.332464, 15.860685, 15.053020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613096, 15.656909, 14.853719>,  <5.781475, 15.534643, 14.734138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613096, 15.656909, 14.853719>,  <5.332464, 15.860685, 15.053020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.613096, 15.656909, 14.853719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119950, 0.604805, -0.787288,
		0.702422, 0.612111, 0.363212,
		0.701580, -0.509441, -0.498251,
		5.823570, 15.504077, 14.704244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.539231, 16.317017, 14.474471>,  <5.332464, 15.860685, 15.053020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.539231, 16.317017, 14.474471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.691611, 15.958323, 14.384361>,  <5.783040, 15.743108, 14.330296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.691611, 15.958323, 14.384361>,  <5.539231, 16.317017, 14.474471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.691611, 15.958323, 14.384361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046875, 0.262064, -0.963911,
		0.923406, 0.356643, 0.141868,
		0.380951, -0.896732, -0.225274,
		5.805897, 15.689304, 14.316779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.063347, 16.405581, 13.965553>,  <5.539231, 16.317017, 14.474471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.063347, 16.405581, 13.965553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.948416, 16.025675, 13.915923>,  <5.879457, 15.797732, 13.886146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.948416, 16.025675, 13.915923>,  <6.063347, 16.405581, 13.965553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.948416, 16.025675, 13.915923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121998, 0.092193, -0.988239,
		0.950031, -0.299086, 0.089380,
		-0.287328, -0.949762, -0.124074,
		5.862217, 15.740746, 13.878701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.578091, 16.134926, 13.542963>,  <6.063347, 16.405581, 13.965553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.578091, 16.134926, 13.542963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.262081, 15.892084, 13.508821>,  <6.072474, 15.746379, 13.488337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.262081, 15.892084, 13.508821>,  <6.578091, 16.134926, 13.542963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.262081, 15.892084, 13.508821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036165, 0.185129, -0.982048,
		0.612007, -0.772756, -0.168213,
		-0.790025, -0.607104, -0.085353,
		6.025073, 15.709953, 13.483215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.698519, 15.639801, 12.976756>,  <6.578091, 16.134926, 13.542963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.698519, 15.639801, 12.976756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.302010, 15.656258, 13.026852>,  <6.064104, 15.666131, 13.056909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.302010, 15.656258, 13.026852>,  <6.698519, 15.639801, 12.976756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.302010, 15.656258, 13.026852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115852, 0.181393, -0.976563,
		-0.062895, -0.982549, -0.175044,
		-0.991273, 0.041142, 0.125239,
		6.004628, 15.668600, 13.064424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.380797, 15.258989, 12.449018>,  <6.698519, 15.639801, 12.976756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.380797, 15.258989, 12.449018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.066988, 15.463729, 12.589035>,  <5.878701, 15.586573, 12.673045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.066988, 15.463729, 12.589035>,  <6.380797, 15.258989, 12.449018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.066988, 15.463729, 12.589035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303173, 0.175822, -0.936575,
		-0.540931, -0.840890, 0.017243,
		-0.784525, 0.511850, 0.350043,
		5.831630, 15.617284, 12.694048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.844994, 14.945247, 12.093071>,  <6.380797, 15.258989, 12.449018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.844994, 14.945247, 12.093071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.728874, 15.306737, 12.218932>,  <5.659202, 15.523631, 12.294449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.728874, 15.306737, 12.218932>,  <5.844994, 14.945247, 12.093071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.728874, 15.306737, 12.218932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351004, 0.205332, -0.913584,
		-0.890237, -0.375658, 0.257603,
		-0.290301, 0.903726, 0.314652,
		5.641783, 15.577854, 12.313328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.088941, 15.146449, 11.887050>,  <5.844994, 14.945247, 12.093071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.088941, 15.146449, 11.887050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.294508, 15.486796, 11.930705>,  <5.417848, 15.691005, 11.956898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.294508, 15.486796, 11.930705>,  <5.088941, 15.146449, 11.887050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.294508, 15.486796, 11.930705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161651, 0.221000, -0.961784,
		-0.842471, 0.476635, 0.251119,
		0.513917, 0.850869, 0.109138,
		5.448683, 15.742057, 11.963447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.651268, 15.668901, 11.702044>,  <5.088941, 15.146449, 11.887050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.651268, 15.668901, 11.702044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.999623, 15.864709, 11.684488>,  <5.208636, 15.982194, 11.673955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.999623, 15.864709, 11.684488>,  <4.651268, 15.668901, 11.702044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.999623, 15.864709, 11.684488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181742, 0.237779, -0.954165,
		-0.456646, 0.838947, 0.296045,
		0.870887, 0.489519, -0.043891,
		5.260889, 16.011564, 11.671321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.554156, 16.274216, 11.330989>,  <4.651268, 15.668901, 11.702044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.554156, 16.274216, 11.330989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.948824, 16.225695, 11.287598>,  <5.185625, 16.196583, 11.261562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.948824, 16.225695, 11.287598>,  <4.554156, 16.274216, 11.330989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.948824, 16.225695, 11.287598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060067, 0.348061, -0.935546,
		0.151240, 0.929591, 0.336135,
		0.986670, -0.121302, -0.108479,
		5.244825, 16.189304, 11.255054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.671042, 16.953007, 10.989864>,  <4.554156, 16.274216, 11.330989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.671042, 16.953007, 10.989864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.981106, 16.706804, 10.932906>,  <5.167145, 16.559082, 10.898731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.981106, 16.706804, 10.932906>,  <4.671042, 16.953007, 10.989864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.981106, 16.706804, 10.932906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176354, 0.427249, -0.886768,
		0.606651, 0.662275, 0.439734,
		0.775160, -0.615508, -0.142396,
		5.213655, 16.522152, 10.890187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.208951, 17.304182, 10.757989>,  <4.671042, 16.953007, 10.989864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.208951, 17.304182, 10.757989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.314695, 16.942583, 10.623586>,  <5.378141, 16.725624, 10.542944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.314695, 16.942583, 10.623586>,  <5.208951, 17.304182, 10.757989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.314695, 16.942583, 10.623586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201100, 0.392414, -0.897536,
		0.943225, 0.169701, 0.285533,
		0.264360, -0.903998, -0.336007,
		5.394003, 16.671383, 10.522783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.708928, 17.479111, 10.325719>,  <5.208951, 17.304182, 10.757989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.708928, 17.479111, 10.325719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.635104, 17.098759, 10.226308>,  <5.590810, 16.870548, 10.166661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.635104, 17.098759, 10.226308>,  <5.708928, 17.479111, 10.325719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.635104, 17.098759, 10.226308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339561, 0.175607, -0.924046,
		0.922299, -0.254931, 0.290472,
		-0.184559, -0.950880, -0.248527,
		5.579736, 16.813496, 10.151750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.324908, 17.312338, 9.890703>,  <5.708928, 17.479111, 10.325719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.324908, 17.312338, 9.890703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.067380, 17.018993, 9.803363>,  <5.912863, 16.842987, 9.750958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.067380, 17.018993, 9.803363>,  <6.324908, 17.312338, 9.890703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.067380, 17.018993, 9.803363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231281, 0.085505, -0.969122,
		0.729388, -0.674440, 0.114563,
		-0.643819, -0.733362, -0.218351,
		5.874234, 16.798985, 9.737858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.635295, 16.950624, 9.416472>,  <6.324908, 17.312338, 9.890703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.635295, 16.950624, 9.416472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.247176, 16.865795, 9.369915>,  <6.014304, 16.814898, 9.341981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.247176, 16.865795, 9.369915>,  <6.635295, 16.950624, 9.416472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.247176, 16.865795, 9.369915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131673, -0.059364, -0.989514,
		0.202940, -0.975449, 0.085526,
		-0.970298, -0.212074, -0.116393,
		5.956086, 16.802174, 9.334997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.619160, 16.224949, 9.206878>,  <6.635295, 16.950624, 9.416472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.619160, 16.224949, 9.206878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.285110, 16.403059, 9.077698>,  <6.084679, 16.509924, 9.000190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.285110, 16.403059, 9.077698>,  <6.619160, 16.224949, 9.206878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.285110, 16.403059, 9.077698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318415, -0.087406, -0.943913,
		-0.448528, -0.891118, -0.068786,
		-0.835125, 0.445274, -0.322949,
		6.034572, 16.536642, 8.980813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.403139, 15.809452, 8.733747>,  <6.619160, 16.224949, 9.206878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.403139, 15.809452, 8.733747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.221403, 16.151598, 8.634208>,  <6.112362, 16.356886, 8.574484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.221403, 16.151598, 8.634208>,  <6.403139, 15.809452, 8.733747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.221403, 16.151598, 8.634208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234862, -0.154447, -0.959680,
		-0.859312, -0.494465, -0.130721,
		-0.454338, 0.855366, -0.248849,
		6.085102, 16.408207, 8.559553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.030492, 15.755171, 8.010555>,  <6.403139, 15.809452, 8.733747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.030492, 15.755171, 8.010555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.079929, 16.143496, 8.092776>,  <6.109591, 16.376490, 8.142109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.079929, 16.143496, 8.092776>,  <6.030492, 15.755171, 8.010555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.079929, 16.143496, 8.092776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528542, 0.110912, -0.841631,
		-0.839862, 0.212662, -0.499406,
		0.123593, 0.970811, 0.205552,
		6.117007, 16.434738, 8.154442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.098231, 16.011650, 7.348117>,  <6.030492, 15.755171, 8.010555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.098231, 16.011650, 7.348117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.230154, 16.323219, 7.561472>,  <6.309308, 16.510162, 7.689486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.230154, 16.323219, 7.561472>,  <6.098231, 16.011650, 7.348117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.230154, 16.323219, 7.561472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562227, 0.291814, -0.773786,
		-0.758372, 0.555086, -0.341691,
		0.329808, 0.778925, 0.533387,
		6.329096, 16.556896, 7.721488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.027525, 16.520309, 6.803263>,  <6.098231, 16.011650, 7.348117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.027525, 16.520309, 6.803263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.280158, 16.648558, 7.085626>,  <6.431737, 16.725506, 7.255044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.280158, 16.648558, 7.085626>,  <6.027525, 16.520309, 6.803263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.280158, 16.648558, 7.085626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666883, 0.239727, -0.705548,
		-0.395438, 0.916370, -0.062409,
		0.631581, 0.320620, 0.705909,
		6.469633, 16.744743, 7.297399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.228043, 17.212738, 6.498789>,  <6.027525, 16.520309, 6.803263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.228043, 17.212738, 6.498789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488545, 17.117580, 6.787031>,  <6.644847, 17.060486, 6.959976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488545, 17.117580, 6.787031>,  <6.228043, 17.212738, 6.498789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.488545, 17.117580, 6.787031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758803, 0.215581, -0.614608,
		-0.009136, 0.947064, 0.320915,
		0.651257, -0.237896, 0.720604,
		6.683922, 17.046211, 7.003212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.733321, 17.774445, 6.567326>,  <6.228043, 17.212738, 6.498789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.733321, 17.774445, 6.567326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.915120, 17.449759, 6.714049>,  <7.024199, 17.254946, 6.802083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.915120, 17.449759, 6.714049>,  <6.733321, 17.774445, 6.567326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.915120, 17.449759, 6.714049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848869, 0.269915, -0.454497,
		0.269915, 0.517939, 0.811717,
		0.454497, -0.811717, 0.366808,
		7.051468, 17.206244, 6.824092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.268408, 17.906921, 7.076147>,  <6.733321, 17.774445, 6.567326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.268408, 17.906921, 7.076147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.347655, 17.591196, 6.843689>,  <7.395204, 17.401760, 6.704214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.347655, 17.591196, 6.843689>,  <7.268408, 17.906921, 7.076147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.347655, 17.591196, 6.843689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790546, 0.479189, -0.381332,
		0.579470, -0.383873, 0.718927,
		0.198119, -0.789316, -0.581145,
		7.407091, 17.354401, 6.669345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.027170, 17.747013, 7.165670>,  <7.268408, 17.906921, 7.076147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.027170, 17.747013, 7.165670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.882675, 17.636240, 6.809509>,  <7.795978, 17.569777, 6.595813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.882675, 17.636240, 6.809509>,  <8.027170, 17.747013, 7.165670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.882675, 17.636240, 6.809509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851486, 0.291273, -0.436041,
		0.380104, -0.915679, 0.130586,
		-0.361238, -0.276933, -0.890402,
		7.774303, 17.553160, 6.542389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.051672, 18.230408, 6.665783>,  <8.027170, 17.747013, 7.165670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.051672, 18.230408, 6.665783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.355513, 18.126793, 6.427152>,  <8.537817, 18.064623, 6.283973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.355513, 18.126793, 6.427152>,  <8.051672, 18.230408, 6.665783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.355513, 18.126793, 6.427152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430687, 0.887669, 0.162946,
		0.487355, -0.380713, 0.785839,
		0.759601, -0.259038, -0.596578,
		8.583393, 18.049082, 6.248178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.803022, 18.185537, 7.035081>,  <8.051672, 18.230408, 6.665783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.803022, 18.185537, 7.035081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.820004, 18.293886, 6.650410>,  <8.830192, 18.358896, 6.419607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.820004, 18.293886, 6.650410>,  <8.803022, 18.185537, 7.035081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.820004, 18.293886, 6.650410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353454, 0.896227, 0.268042,
		0.934488, -0.351288, -0.057695,
		0.042452, 0.270874, -0.961678,
		8.832739, 18.375149, 6.361906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.388277, 18.188713, 6.700164>,  <8.803022, 18.185537, 7.035081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.388277, 18.188713, 6.700164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.140146, 18.482939, 6.591250>,  <8.991268, 18.659473, 6.525902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.140146, 18.482939, 6.591250>,  <9.388277, 18.188713, 6.700164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.140146, 18.482939, 6.591250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646685, 0.676090, 0.353129,
		0.443839, 0.042973, -0.895076,
		-0.620327, 0.735565, -0.272285,
		8.954048, 18.703608, 6.509565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.799417, 18.595993, 6.194815>,  <9.388277, 18.188713, 6.700164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.799417, 18.595993, 6.194815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.479559, 18.784195, 6.344048>,  <9.287644, 18.897116, 6.433587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.479559, 18.784195, 6.344048>,  <9.799417, 18.595993, 6.194815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479559, 18.784195, 6.344048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596969, 0.689931, 0.409419,
		-0.064766, 0.550108, -0.832578,
		-0.799646, 0.470507, 0.373082,
		9.239665, 18.925346, 6.455972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.003001, 19.304193, 6.245428>,  <9.799417, 18.595993, 6.194815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.003001, 19.304193, 6.245428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730331, 19.220217, 6.525783>,  <9.566730, 19.169830, 6.693996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.730331, 19.220217, 6.525783>,  <10.003001, 19.304193, 6.245428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.730331, 19.220217, 6.525783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442298, 0.644851, 0.623329,
		-0.582830, 0.734910, -0.346723,
		-0.681676, -0.209940, 0.700888,
		9.525828, 19.157234, 6.736049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.630905, 19.938530, 6.495412>,  <10.003001, 19.304193, 6.245428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.630905, 19.938530, 6.495412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.697932, 19.647511, 6.761522>,  <9.738149, 19.472898, 6.921189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.697932, 19.647511, 6.761522>,  <9.630905, 19.938530, 6.495412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.697932, 19.647511, 6.761522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353374, 0.674304, 0.648415,
		-0.920352, 0.126437, 0.370089,
		0.167568, -0.727549, 0.665276,
		9.748202, 19.429245, 6.961105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.039571, 19.864328, 7.196162>,  <9.630905, 19.938530, 6.495412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.039571, 19.864328, 7.196162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.334297, 19.818346, 6.929663>,  <10.511133, 19.790756, 6.769763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.334297, 19.818346, 6.929663>,  <10.039571, 19.864328, 7.196162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.334297, 19.818346, 6.929663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488218, -0.772166, -0.406698,
		-0.467702, 0.624936, -0.625067,
		0.736816, -0.114956, -0.666249,
		10.555342, 19.783859, 6.729788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.356467, 20.238438, 7.449574>,  <10.039571, 19.864328, 7.196162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.356467, 20.238438, 7.449574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.045645, 20.304293, 7.692581>,  <8.859152, 20.343805, 7.838385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.045645, 20.304293, 7.692581>,  <9.356467, 20.238438, 7.449574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.045645, 20.304293, 7.692581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352143, -0.686288, 0.636400,
		0.521709, 0.708451, 0.475307,
		-0.777055, 0.164639, 0.607518,
		8.812528, 20.353685, 7.874836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.673942, 20.270205, 8.086877>,  <9.356467, 20.238438, 7.449574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.673942, 20.270205, 8.086877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.287918, 20.167524, 8.107907>,  <9.056304, 20.105915, 8.120525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.287918, 20.167524, 8.107907>,  <9.673942, 20.270205, 8.086877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.287918, 20.167524, 8.107907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217119, -0.671057, 0.708902,
		-0.146696, 0.695547, 0.703345,
		-0.965060, -0.256702, 0.052575,
		8.998401, 20.090513, 8.123680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.530193, 20.063305, 8.764515>,  <9.673942, 20.270205, 8.086877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.530193, 20.063305, 8.764515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.197555, 19.920376, 8.594448>,  <8.997972, 19.834618, 8.492408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.197555, 19.920376, 8.594448>,  <9.530193, 20.063305, 8.764515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.197555, 19.920376, 8.594448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016871, -0.748937, 0.662426,
		-0.555122, 0.558045, 0.616786,
		-0.831598, -0.357322, -0.425166,
		8.948075, 19.813179, 8.466898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.064734, 20.063730, 9.268251>,  <9.530193, 20.063305, 8.764515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.064734, 20.063730, 9.268251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.889946, 19.803059, 9.020260>,  <8.785073, 19.646656, 8.871465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.889946, 19.803059, 9.020260>,  <9.064734, 20.063730, 9.268251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.889946, 19.803059, 9.020260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224557, -0.588404, 0.776760,
		-0.870994, 0.478642, 0.110777,
		-0.436971, -0.651677, -0.619978,
		8.758855, 19.607555, 8.834267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.458476, 19.857990, 9.583263>,  <9.064734, 20.063730, 9.268251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.458476, 19.857990, 9.583263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.504090, 19.557987, 9.322654>,  <8.531459, 19.377985, 9.166288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.504090, 19.557987, 9.322654>,  <8.458476, 19.857990, 9.583263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.504090, 19.557987, 9.322654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186985, -0.660284, 0.727366,
		-0.975721, 0.038880, -0.215536,
		0.114036, -0.750009, -0.651523,
		8.538301, 19.332985, 9.127197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.854937, 19.452503, 9.652688>,  <8.458476, 19.857990, 9.583263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.854937, 19.452503, 9.652688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.140658, 19.219614, 9.497363>,  <8.312091, 19.079880, 9.404168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.140658, 19.219614, 9.497363>,  <7.854937, 19.452503, 9.652688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.140658, 19.219614, 9.497363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126872, -0.653400, 0.746306,
		-0.688240, -0.483822, -0.540594,
		0.714303, -0.582224, -0.388312,
		8.354949, 19.044947, 9.380870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.638944, 18.766941, 9.500863>,  <7.854937, 19.452503, 9.652688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.638944, 18.766941, 9.500863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.032292, 18.729475, 9.563101>,  <8.268301, 18.706995, 9.600443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.032292, 18.729475, 9.563101>,  <7.638944, 18.766941, 9.500863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.032292, 18.729475, 9.563101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179970, -0.617509, 0.765698,
		0.024361, -0.780967, -0.624097,
		0.983370, -0.093666, 0.155594,
		8.327304, 18.701376, 9.609779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.767751, 18.107189, 9.877035>,  <7.638944, 18.766941, 9.500863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.767751, 18.107189, 9.877035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.143250, 18.228376, 9.942715>,  <8.368550, 18.301088, 9.982122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.143250, 18.228376, 9.942715>,  <7.767751, 18.107189, 9.877035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.143250, 18.228376, 9.942715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054408, -0.600822, 0.797529,
		0.340281, -0.739746, -0.580504,
		0.938749, 0.302968, 0.164200,
		8.424875, 18.319267, 9.991975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.130971, 17.516853, 9.907185>,  <7.767751, 18.107189, 9.877035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.130971, 17.516853, 9.907185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.359526, 17.790209, 10.088954>,  <8.496658, 17.954222, 10.198015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.359526, 17.790209, 10.088954>,  <8.130971, 17.516853, 9.907185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.359526, 17.790209, 10.088954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088832, -0.601962, 0.793568,
		0.815859, -0.413067, -0.404659,
		0.571387, 0.683387, 0.454422,
		8.530942, 17.995224, 10.225281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.891015, 17.223833, 9.988816>,  <8.130971, 17.516853, 9.907185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.891015, 17.223833, 9.988816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.811247, 17.514090, 10.252234>,  <8.763386, 17.688244, 10.410284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.811247, 17.514090, 10.252234>,  <8.891015, 17.223833, 9.988816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.811247, 17.514090, 10.252234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010793, -0.670374, 0.741945,
		0.979854, 0.155067, 0.125855,
		-0.199421, 0.725640, 0.658543,
		8.751421, 17.731781, 10.449797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.312316, 17.029533, 10.517916>,  <8.891015, 17.223833, 9.988816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.312316, 17.029533, 10.517916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.056241, 17.293400, 10.675395>,  <8.902596, 17.451719, 10.769883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.056241, 17.293400, 10.675395>,  <9.312316, 17.029533, 10.517916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.056241, 17.293400, 10.675395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013296, -0.502892, 0.864247,
		0.768104, 0.558514, 0.313175,
		-0.640187, 0.659667, 0.393699,
		8.864184, 17.491301, 10.793505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.612919, 17.282377, 11.184914>,  <9.312316, 17.029533, 10.517916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.612919, 17.282377, 11.184914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.215357, 17.306498, 11.221825>,  <8.976819, 17.320971, 11.243971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.215357, 17.306498, 11.221825>,  <9.612919, 17.282377, 11.184914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.215357, 17.306498, 11.221825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048435, -0.513074, 0.856977,
		0.099022, 0.856223, 0.507027,
		-0.993906, 0.060301, 0.092277,
		8.917185, 17.324589, 11.249508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.508039, 17.497965, 11.914341>,  <9.612919, 17.282377, 11.184914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.508039, 17.497965, 11.914341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.179307, 17.336939, 11.753078>,  <8.982068, 17.240322, 11.656320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.179307, 17.336939, 11.753078>,  <9.508039, 17.497965, 11.914341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.179307, 17.336939, 11.753078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094968, -0.600931, 0.793639,
		-0.561763, 0.690523, 0.455631,
		-0.821829, -0.402567, -0.403159,
		8.932758, 17.216169, 11.632130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.141174, 17.232851, 12.538908>,  <9.508039, 17.497965, 11.914341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.141174, 17.232851, 12.538908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915357, 17.070982, 12.251151>,  <8.779866, 16.973860, 12.078497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915357, 17.070982, 12.251151>,  <9.141174, 17.232851, 12.538908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.915357, 17.070982, 12.251151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228694, -0.760757, 0.607411,
		-0.793088, 0.507432, 0.336935,
		-0.564545, -0.404675, -0.719393,
		8.745993, 16.949579, 12.035333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.533254, 17.092394, 12.895679>,  <9.141174, 17.232851, 12.538908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.533254, 17.092394, 12.895679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.563587, 16.855595, 12.574734>,  <8.581787, 16.713514, 12.382167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.563587, 16.855595, 12.574734>,  <8.533254, 17.092394, 12.895679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.563587, 16.855595, 12.574734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339107, -0.772029, 0.537567,
		-0.937686, 0.231321, -0.259297,
		0.075834, -0.591999, -0.802363,
		8.586337, 16.677996, 12.334024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.841862, 16.805655, 12.840570>,  <8.533254, 17.092394, 12.895679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.841862, 16.805655, 12.840570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.121222, 16.591995, 12.650025>,  <8.288838, 16.463799, 12.535699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.121222, 16.591995, 12.650025>,  <7.841862, 16.805655, 12.840570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.121222, 16.591995, 12.650025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305708, -0.824450, 0.476261,
		-0.647131, -0.186994, -0.739091,
		0.698401, -0.534149, -0.476361,
		8.330743, 16.431751, 12.507117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.479885, 16.242725, 12.509662>,  <7.841862, 16.805655, 12.840570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.479885, 16.242725, 12.509662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.861903, 16.124161, 12.511744>,  <8.091114, 16.053022, 12.512995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.861903, 16.124161, 12.511744>,  <7.479885, 16.242725, 12.509662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.861903, 16.124161, 12.511744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293414, -0.942587, 0.159490,
		-0.042366, -0.153849, -0.987186,
		0.955046, -0.296411, 0.005208,
		8.148417, 16.035238, 12.513307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.493890, 15.633651, 12.207472>,  <7.479885, 16.242725, 12.509662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.493890, 15.633651, 12.207472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.853799, 15.613274, 12.380821>,  <8.069745, 15.601048, 12.484831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.853799, 15.613274, 12.380821>,  <7.493890, 15.633651, 12.207472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.853799, 15.613274, 12.380821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198074, -0.932629, 0.301612,
		0.388812, -0.357222, -0.849245,
		0.899773, -0.050943, 0.433374,
		8.123732, 15.597991, 12.510834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.542560, 15.037365, 12.096720>,  <7.493890, 15.633651, 12.207472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.542560, 15.037365, 12.096720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.828393, 15.110063, 12.366931>,  <7.999894, 15.153681, 12.529058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.828393, 15.110063, 12.366931>,  <7.542560, 15.037365, 12.096720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.828393, 15.110063, 12.366931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011270, -0.962546, 0.270885,
		0.699460, -0.201183, -0.685771,
		0.714583, 0.181744, 0.675529,
		8.042768, 15.164586, 12.569590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.987450, 14.498577, 11.987237>,  <7.542560, 15.037365, 12.096720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.987450, 14.498577, 11.987237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.018569, 14.619751, 12.367169>,  <8.037240, 14.692455, 12.595129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.018569, 14.619751, 12.367169>,  <7.987450, 14.498577, 11.987237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.018569, 14.619751, 12.367169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064175, -0.949221, 0.307996,
		0.994902, -0.084917, -0.054406,
		0.077797, 0.302935, 0.949831,
		8.041908, 14.710631, 12.652119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.558436, 14.162655, 12.297826>,  <7.987450, 14.498577, 11.987237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.558436, 14.162655, 12.297826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.325845, 14.270617, 12.604820>,  <8.186290, 14.335394, 12.789017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.325845, 14.270617, 12.604820>,  <8.558436, 14.162655, 12.297826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.325845, 14.270617, 12.604820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158214, -0.962870, 0.218747,
		0.798029, 0.005770, 0.602591,
		-0.581479, 0.269904, 0.767485,
		8.151402, 14.351588, 12.835066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.817706, 13.446308, 12.536031>,  <8.558436, 14.162655, 12.297826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.817706, 13.446308, 12.536031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.735984, 13.605083, 12.893958>,  <8.686951, 13.700349, 13.108714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.735984, 13.605083, 12.893958>,  <8.817706, 13.446308, 12.536031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.735984, 13.605083, 12.893958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772144, -0.496527, 0.396553,
		0.601708, 0.771946, -0.205051,
		-0.204305, 0.396938, 0.894818,
		8.674692, 13.724165, 13.162403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.526959, 13.651922, 12.955484>,  <8.817706, 13.446308, 12.536031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.526959, 13.651922, 12.955484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224898, 13.578173, 13.207119>,  <9.043662, 13.533923, 13.358100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224898, 13.578173, 13.207119>,  <9.526959, 13.651922, 12.955484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.224898, 13.578173, 13.207119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563480, -0.672977, 0.479158,
		0.335017, 0.716315, 0.612091,
		-0.755152, -0.184375, 0.629088,
		8.998353, 13.522861, 13.395845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.507609, 13.955241, 13.723739>,  <9.526959, 13.651922, 12.955484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.507609, 13.955241, 13.723739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.314783, 13.606970, 13.684687>,  <9.199087, 13.398006, 13.661256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.314783, 13.606970, 13.684687>,  <9.507609, 13.955241, 13.723739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.314783, 13.606970, 13.684687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709324, -0.453260, 0.539829,
		-0.514269, 0.190982, 0.836094,
		-0.482065, -0.870679, -0.097630,
		9.170163, 13.345766, 13.655397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.194127, 13.544732, 14.399402>,  <9.507609, 13.955241, 13.723739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.194127, 13.544732, 14.399402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.359825, 13.343592, 14.095943>,  <9.459244, 13.222907, 13.913869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.359825, 13.343592, 14.095943>,  <9.194127, 13.544732, 14.399402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.359825, 13.343592, 14.095943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697225, -0.360461, 0.619632,
		-0.585045, -0.785626, 0.201281,
		0.414245, -0.502852, -0.758644,
		9.484098, 13.192737, 13.868350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.267283, 12.931428, 14.429442>,  <9.194127, 13.544732, 14.399402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.267283, 12.931428, 14.429442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.609793, 13.064846, 14.271686>,  <9.815298, 13.144897, 14.177032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.609793, 13.064846, 14.271686>,  <9.267283, 12.931428, 14.429442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.609793, 13.064846, 14.271686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511725, -0.443959, 0.735553,
		0.070246, -0.831654, -0.550833,
		0.856273, 0.333545, -0.394391,
		9.866674, 13.164909, 14.153368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.762915, 12.453585, 14.090347>,  <9.267283, 12.931428, 14.429442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.762915, 12.453585, 14.090347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.933121, 12.765472, 14.274076>,  <10.035244, 12.952605, 14.384313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.933121, 12.765472, 14.274076>,  <9.762915, 12.453585, 14.090347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.933121, 12.765472, 14.274076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338092, -0.607783, 0.718536,
		0.839423, -0.150454, -0.522238,
		0.425514, 0.779720, 0.459320,
		10.060775, 12.999389, 14.411872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.429492, 12.250122, 14.164206>,  <9.762915, 12.453585, 14.090347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.429492, 12.250122, 14.164206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.330239, 12.497600, 14.462373>,  <10.270687, 12.646086, 14.641273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.330239, 12.497600, 14.462373>,  <10.429492, 12.250122, 14.164206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.330239, 12.497600, 14.462373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437906, -0.614738, 0.655999,
		0.864100, 0.489198, -0.118393,
		-0.248133, 0.618694, 0.745418,
		10.255799, 12.683208, 14.685998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.881888, 12.022782, 14.634230>,  <10.429492, 12.250122, 14.164206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.881888, 12.022782, 14.634230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575889, 12.193252, 14.827374>,  <10.392289, 12.295533, 14.943260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575889, 12.193252, 14.827374>,  <10.881888, 12.022782, 14.634230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.575889, 12.193252, 14.827374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105397, -0.656793, 0.746669,
		0.635348, 0.622093, 0.457529,
		-0.764999, 0.426173, 0.482859,
		10.346389, 12.321103, 14.972231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.636933, 11.743029, 14.503631>,  <10.881888, 12.022782, 14.634230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.636933, 11.743029, 14.503631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015634, 11.861342, 14.554503>,  <12.242854, 11.932330, 14.585027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015634, 11.861342, 14.554503>,  <11.636933, 11.743029, 14.503631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015634, 11.861342, 14.554503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280070, 0.561727, 0.778475,
		0.158819, -0.772642, 0.614655,
		0.946751, 0.295784, 0.127181,
		12.299659, 11.950077, 14.592658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891044, 11.390907, 15.125731>,  <11.636933, 11.743029, 14.503631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891044, 11.390907, 15.125731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.118830, 11.713066, 15.059949>,  <12.255502, 11.906362, 15.020479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.118830, 11.713066, 15.059949>,  <11.891044, 11.390907, 15.125731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.118830, 11.713066, 15.059949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299535, 0.389621, 0.870904,
		0.765499, -0.446689, 0.463120,
		0.569464, 0.805397, -0.164456,
		12.289669, 11.954685, 15.010612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.288587, 11.351238, 15.657589>,  <11.891044, 11.390907, 15.125731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.288587, 11.351238, 15.657589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302867, 11.726529, 15.519919>,  <12.311435, 11.951703, 15.437318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302867, 11.726529, 15.519919>,  <12.288587, 11.351238, 15.657589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.302867, 11.726529, 15.519919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176649, 0.344896, 0.921869,
		0.983626, 0.027888, 0.178049,
		0.035700, 0.938226, -0.344175,
		12.313577, 12.007998, 15.416667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.526193, 11.683120, 16.253925>,  <12.288587, 11.351238, 15.657589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.526193, 11.683120, 16.253925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.450992, 12.007436, 16.032196>,  <12.405871, 12.202025, 15.899158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.450992, 12.007436, 16.032196>,  <12.526193, 11.683120, 16.253925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.450992, 12.007436, 16.032196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104079, 0.544764, 0.832106,
		0.976639, 0.214131, -0.018031,
		-0.188002, 0.810790, -0.554324,
		12.394591, 12.250672, 15.865899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.883121, 12.287945, 16.617474>,  <12.526193, 11.683120, 16.253925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.883121, 12.287945, 16.617474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595469, 12.431353, 16.379375>,  <12.422878, 12.517397, 16.236517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.595469, 12.431353, 16.379375>,  <12.883121, 12.287945, 16.617474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.595469, 12.431353, 16.379375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206553, 0.707611, 0.675739,
		0.663467, 0.608894, -0.434811,
		-0.719130, 0.358518, -0.595245,
		12.379730, 12.538908, 16.200802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887122, 13.035370, 16.590094>,  <12.883121, 12.287945, 16.617474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887122, 13.035370, 16.590094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.503791, 12.950511, 16.513571>,  <12.273792, 12.899596, 16.467657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.503791, 12.950511, 16.513571>,  <12.887122, 13.035370, 16.590094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.503791, 12.950511, 16.513571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281947, 0.594696, 0.752890,
		-0.045952, 0.775455, -0.629729,
		-0.958329, -0.212147, -0.191309,
		12.216292, 12.886867, 16.456179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567230, 13.618794, 16.812397>,  <12.887122, 13.035370, 16.590094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567230, 13.618794, 16.812397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.256226, 13.368015, 16.792751>,  <12.069623, 13.217548, 16.780964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.256226, 13.368015, 16.792751>,  <12.567230, 13.618794, 16.812397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.256226, 13.368015, 16.792751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507373, 0.579241, 0.638007,
		-0.371547, 0.520978, -0.768463,
		-0.777512, -0.626947, -0.049115,
		12.022972, 13.179932, 16.778017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.100896, 14.070252, 16.650932>,  <12.567230, 13.618794, 16.812397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.100896, 14.070252, 16.650932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904387, 13.756384, 16.802164>,  <11.786481, 13.568063, 16.892902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.904387, 13.756384, 16.802164>,  <12.100896, 14.070252, 16.650932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.904387, 13.756384, 16.802164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486539, 0.607258, 0.628107,
		-0.722448, 0.124622, -0.680102,
		-0.491273, -0.784670, 0.378079,
		11.757005, 13.520983, 16.915588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380707, 14.266092, 16.658688>,  <12.100896, 14.070252, 16.650932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380707, 14.266092, 16.658688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.390656, 13.966893, 16.923983>,  <11.396625, 13.787374, 17.083158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.390656, 13.966893, 16.923983>,  <11.380707, 14.266092, 16.658688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.390656, 13.966893, 16.923983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384163, 0.605348, 0.697117,
		-0.922930, -0.272130, -0.272297,
		0.024872, -0.747997, 0.663236,
		11.398117, 13.742494, 17.122953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.829963, 14.348394, 17.072002>,  <11.380707, 14.266092, 16.658688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.829963, 14.348394, 17.072002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037283, 14.107050, 17.314430>,  <11.161674, 13.962243, 17.459887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037283, 14.107050, 17.314430>,  <10.829963, 14.348394, 17.072002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.037283, 14.107050, 17.314430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288242, 0.543974, 0.788041,
		-0.805159, -0.583137, 0.108028,
		0.518300, -0.603361, 0.606070,
		11.192773, 13.926042, 17.496252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.426328, 14.123126, 17.584003>,  <10.829963, 14.348394, 17.072002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.426328, 14.123126, 17.584003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791602, 14.075679, 17.739964>,  <11.010767, 14.047211, 17.833540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.791602, 14.075679, 17.739964>,  <10.426328, 14.123126, 17.584003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.791602, 14.075679, 17.739964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259399, 0.568720, 0.780557,
		-0.314332, -0.813933, 0.488578,
		0.913185, -0.118618, 0.389901,
		11.065557, 14.040093, 17.856934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.323111, 14.005917, 18.302149>,  <10.426328, 14.123126, 17.584003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.323111, 14.005917, 18.302149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.713599, 14.090428, 18.282742>,  <10.947892, 14.141135, 18.271097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.713599, 14.090428, 18.282742>,  <10.323111, 14.005917, 18.302149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.713599, 14.090428, 18.282742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097281, 0.626983, 0.772935,
		0.193724, -0.749836, 0.632627,
		0.976221, 0.211278, -0.048517,
		11.006466, 14.153811, 18.268187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651043, 13.836660, 18.938890>,  <10.323111, 14.005917, 18.302149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651043, 13.836660, 18.938890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904841, 14.100903, 18.778383>,  <11.057120, 14.259448, 18.682079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904841, 14.100903, 18.778383>,  <10.651043, 13.836660, 18.938890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.904841, 14.100903, 18.778383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134189, 0.605418, 0.784514,
		0.761189, -0.443925, 0.472781,
		0.634496, 0.660605, -0.401267,
		11.095190, 14.299085, 18.658003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.187619, 13.926009, 19.375809>,  <10.651043, 13.836660, 18.938890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.187619, 13.926009, 19.375809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.194240, 14.260351, 19.156328>,  <11.198212, 14.460957, 19.024641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.194240, 14.260351, 19.156328>,  <11.187619, 13.926009, 19.375809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.194240, 14.260351, 19.156328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180376, 0.542268, 0.820616,
		0.983459, 0.085391, 0.159743,
		0.016550, 0.835855, -0.548700,
		11.199204, 14.511107, 18.991718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380372, 14.480322, 19.829081>,  <11.187619, 13.926009, 19.375809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380372, 14.480322, 19.829081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318742, 14.725315, 19.518951>,  <11.281764, 14.872311, 19.332874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318742, 14.725315, 19.518951>,  <11.380372, 14.480322, 19.829081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.318742, 14.725315, 19.518951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015991, 0.783045, 0.621760,
		0.987930, 0.108196, -0.110854,
		-0.154076, 0.612482, -0.775323,
		11.272519, 14.909060, 19.286354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.958721, 15.083391, 19.847157>,  <11.380372, 14.480322, 19.829081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.958721, 15.083391, 19.847157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627855, 15.183002, 19.645649>,  <11.429336, 15.242769, 19.524744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.627855, 15.183002, 19.645649>,  <11.958721, 15.083391, 19.847157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.627855, 15.183002, 19.645649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119511, 0.797992, 0.590700,
		0.549105, 0.548812, -0.630309,
		-0.827164, 0.249028, -0.503770,
		11.379706, 15.257710, 19.494518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927082, 15.817739, 19.859304>,  <11.958721, 15.083391, 19.847157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927082, 15.817739, 19.859304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552578, 15.724821, 19.753885>,  <11.327875, 15.669070, 19.690634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552578, 15.724821, 19.753885>,  <11.927082, 15.817739, 19.859304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.552578, 15.724821, 19.753885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343172, 0.765255, 0.544626,
		0.075167, 0.600353, -0.796195,
		-0.936260, -0.232293, -0.263546,
		11.271700, 15.655133, 19.674822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.642794, 16.495461, 19.696976>,  <11.927082, 15.817739, 19.859304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.642794, 16.495461, 19.696976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.331223, 16.247389, 19.734184>,  <11.144281, 16.098545, 19.756510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.331223, 16.247389, 19.734184>,  <11.642794, 16.495461, 19.696976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.331223, 16.247389, 19.734184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469463, 0.675001, 0.569190,
		-0.415789, 0.399687, -0.816927,
		-0.778925, -0.620180, 0.093020,
		11.097547, 16.061335, 19.762091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101426, 16.729425, 19.263802>,  <11.642794, 16.495461, 19.696976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101426, 16.729425, 19.263802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.974620, 16.520863, 19.580694>,  <10.898537, 16.395725, 19.770830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.974620, 16.520863, 19.580694>,  <11.101426, 16.729425, 19.263802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.974620, 16.520863, 19.580694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475295, 0.810197, 0.343040,
		-0.820729, -0.267796, -0.504667,
		-0.317015, -0.521409, 0.792234,
		10.879516, 16.364439, 19.818365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.363574, 16.827888, 19.358393>,  <11.101426, 16.729425, 19.263802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.363574, 16.827888, 19.358393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.440110, 16.659231, 19.712931>,  <10.486032, 16.558037, 19.925653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.440110, 16.659231, 19.712931>,  <10.363574, 16.827888, 19.358393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.440110, 16.659231, 19.712931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639828, 0.631212, 0.438397,
		-0.744318, -0.650991, -0.149002,
		0.191341, -0.421642, 0.886345,
		10.497513, 16.532738, 19.978834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.761599, 16.745667, 19.686186>,  <10.363574, 16.827888, 19.358393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.761599, 16.745667, 19.686186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026183, 16.750826, 19.986134>,  <10.184934, 16.753922, 20.166101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026183, 16.750826, 19.986134>,  <9.761599, 16.745667, 19.686186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026183, 16.750826, 19.986134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593525, 0.620226, 0.512882,
		-0.458474, -0.784317, 0.417909,
		0.661460, 0.012896, 0.749869,
		10.224621, 16.754694, 20.211094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.419325, 16.532566, 20.234383>,  <9.761599, 16.745667, 19.686186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.419325, 16.532566, 20.234383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731416, 16.717230, 20.403200>,  <9.918670, 16.828028, 20.504490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731416, 16.717230, 20.403200>,  <9.419325, 16.532566, 20.234383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.731416, 16.717230, 20.403200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614529, 0.439957, 0.654821,
		0.116622, -0.770267, 0.626968,
		0.780226, 0.461657, 0.422043,
		9.965484, 16.855726, 20.529814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.286272, 16.430902, 20.988640>,  <9.419325, 16.532566, 20.234383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.286272, 16.430902, 20.988640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569197, 16.712597, 20.964096>,  <9.738951, 16.881613, 20.949369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569197, 16.712597, 20.964096>,  <9.286272, 16.430902, 20.988640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.569197, 16.712597, 20.964096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445726, 0.511669, 0.734522,
		0.548673, -0.492185, 0.675805,
		0.707309, 0.704236, -0.061359,
		9.781390, 16.923868, 20.945688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.586547, 16.547529, 21.645926>,  <9.286272, 16.430902, 20.988640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.586547, 16.547529, 21.645926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.684681, 16.886932, 21.458374>,  <9.743562, 17.090574, 21.345844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.684681, 16.886932, 21.458374>,  <9.586547, 16.547529, 21.645926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.684681, 16.886932, 21.458374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221689, 0.519947, 0.824930,
		0.943751, -0.098439, 0.315666,
		0.245334, 0.848507, -0.468878,
		9.758282, 17.141485, 21.317711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.011163, 16.845106, 22.041874>,  <9.586547, 16.547529, 21.645926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.011163, 16.845106, 22.041874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.889940, 17.172848, 21.847218>,  <9.817207, 17.369493, 21.730425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.889940, 17.172848, 21.847218>,  <10.011163, 16.845106, 22.041874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.889940, 17.172848, 21.847218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001144, 0.510966, 0.859600,
		0.952972, 0.259950, -0.155789,
		-0.303056, 0.819353, -0.486639,
		9.799024, 17.418653, 21.701225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.443748, 17.402168, 22.274820>,  <10.011163, 16.845106, 22.041874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.443748, 17.402168, 22.274820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.123839, 17.574211, 22.107309>,  <9.931894, 17.677437, 22.006802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.123839, 17.574211, 22.107309>,  <10.443748, 17.402168, 22.274820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.123839, 17.574211, 22.107309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001125, 0.696534, 0.717523,
		0.600305, 0.574325, -0.556584,
		-0.799771, 0.430106, -0.418779,
		9.883908, 17.703243, 21.981676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601057, 18.127392, 22.115992>,  <10.443748, 17.402168, 22.274820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601057, 18.127392, 22.115992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.202145, 18.104380, 22.134417>,  <9.962797, 18.090572, 22.145472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.202145, 18.104380, 22.134417>,  <10.601057, 18.127392, 22.115992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.202145, 18.104380, 22.134417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011055, 0.734690, 0.678313,
		-0.072866, 0.675959, -0.733328,
		-0.997281, -0.057533, 0.046061,
		9.902961, 18.087120, 22.148235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.432045, 18.719282, 22.443106>,  <10.601057, 18.127392, 22.115992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.432045, 18.719282, 22.443106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.085354, 18.519785, 22.440577>,  <9.877339, 18.400087, 22.439058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.085354, 18.519785, 22.440577>,  <10.432045, 18.719282, 22.443106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.085354, 18.519785, 22.440577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360688, 0.617955, 0.698596,
		-0.344511, 0.607773, -0.715489,
		-0.866728, -0.498742, -0.006324,
		9.825336, 18.370163, 22.438679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.797879, 19.222002, 22.373407>,  <10.432045, 18.719282, 22.443106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.797879, 19.222002, 22.373407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.681564, 18.896395, 22.574532>,  <9.611775, 18.701031, 22.695206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.681564, 18.896395, 22.574532>,  <9.797879, 19.222002, 22.373407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.681564, 18.896395, 22.574532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355712, 0.579829, 0.732985,
		-0.888207, 0.034286, -0.458162,
		-0.290787, -0.814016, 0.502813,
		9.594328, 18.652189, 22.725376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.085588, 19.421738, 22.719090>,  <9.797879, 19.222002, 22.373407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.085588, 19.421738, 22.719090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240479, 19.107464, 22.912067>,  <9.333413, 18.918900, 23.027855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240479, 19.107464, 22.912067>,  <9.085588, 19.421738, 22.719090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.240479, 19.107464, 22.912067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089255, 0.488868, 0.867780,
		-0.917653, -0.379090, 0.119177,
		0.387229, -0.785684, 0.482446,
		9.356647, 18.871759, 23.056801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.619344, 19.274801, 23.378696>,  <9.085588, 19.421738, 22.719090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.619344, 19.274801, 23.378696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.980963, 19.108967, 23.420300>,  <9.197934, 19.009466, 23.445261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.980963, 19.108967, 23.420300>,  <8.619344, 19.274801, 23.378696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.980963, 19.108967, 23.420300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020008, 0.284106, 0.958584,
		-0.426966, -0.864524, 0.265140,
		0.904046, -0.414588, 0.104007,
		9.252176, 18.984591, 23.451502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.506806, 18.915144, 23.953892>,  <8.619344, 19.274801, 23.378696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.506806, 18.915144, 23.953892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.905151, 18.945919, 23.934549>,  <9.144158, 18.964384, 23.922943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.905151, 18.945919, 23.934549>,  <8.506806, 18.915144, 23.953892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.905151, 18.945919, 23.934549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037166, 0.140750, 0.989347,
		0.082927, -0.987051, 0.137308,
		0.995862, 0.076940, -0.048357,
		9.203910, 18.969000, 23.920042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.742270, 18.681610, 24.594093>,  <8.506806, 18.915144, 23.953892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.742270, 18.681610, 24.594093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.076877, 18.852383, 24.456705>,  <9.277640, 18.954845, 24.374271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.076877, 18.852383, 24.456705>,  <8.742270, 18.681610, 24.594093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.076877, 18.852383, 24.456705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304295, 0.159339, 0.939157,
		0.455683, -0.890136, 0.003376,
		0.836515, 0.426931, -0.343472,
		9.327831, 18.980461, 24.353664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.190578, 18.380684, 24.977453>,  <8.742270, 18.681610, 24.594093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.190578, 18.380684, 24.977453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.341679, 18.724960, 24.840916>,  <9.432340, 18.931526, 24.758993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.341679, 18.724960, 24.840916>,  <9.190578, 18.380684, 24.977453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.341679, 18.724960, 24.840916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379103, 0.192570, 0.905095,
		0.844739, -0.471307, -0.253546,
		0.377752, 0.860690, -0.341345,
		9.455005, 18.983168, 24.738512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.953231, 18.394794, 24.970852>,  <9.190578, 18.380684, 24.977453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.953231, 18.394794, 24.970852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.862465, 18.784241, 24.980505>,  <9.808005, 19.017908, 24.986298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.862465, 18.784241, 24.980505>,  <9.953231, 18.394794, 24.970852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.862465, 18.784241, 24.980505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580175, 0.115232, 0.806299,
		0.782244, 0.196964, -0.591015,
		-0.226916, 0.973615, 0.024134,
		9.794390, 19.076324, 24.987745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.608335, 18.588121, 25.079639>,  <9.953231, 18.394794, 24.970852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.608335, 18.588121, 25.079639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395600, 18.922394, 25.134460>,  <10.267959, 19.122957, 25.167353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395600, 18.922394, 25.134460>,  <10.608335, 18.588121, 25.079639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395600, 18.922394, 25.134460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586009, 0.246342, 0.771952,
		0.611344, 0.490869, -0.620731,
		-0.531839, 0.835682, 0.137054,
		10.236049, 19.173098, 25.175577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.042963, 19.143930, 25.114786>,  <10.608335, 18.588121, 25.079639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.042963, 19.143930, 25.114786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.715171, 19.251842, 25.317041>,  <10.518496, 19.316589, 25.438395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.715171, 19.251842, 25.317041>,  <11.042963, 19.143930, 25.114786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.715171, 19.251842, 25.317041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572525, 0.345594, 0.743492,
		0.025833, 0.898768, -0.437663,
		-0.819480, 0.269780, 0.505639,
		10.469327, 19.332777, 25.468733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.210814, 19.761543, 25.297989>,  <11.042963, 19.143930, 25.114786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.210814, 19.761543, 25.297989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909885, 19.668549, 25.544554>,  <10.729328, 19.612753, 25.692492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.909885, 19.668549, 25.544554>,  <11.210814, 19.761543, 25.297989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.909885, 19.668549, 25.544554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474881, 0.457145, 0.752002,
		-0.456619, 0.858469, -0.233517,
		-0.752322, -0.232485, 0.616411,
		10.684189, 19.598803, 25.729477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.203714, 20.339773, 25.691692>,  <11.210814, 19.761543, 25.297989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.203714, 20.339773, 25.691692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.982704, 20.064089, 25.879183>,  <10.850098, 19.898678, 25.991676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.982704, 20.064089, 25.879183>,  <11.203714, 20.339773, 25.691692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.982704, 20.064089, 25.879183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397542, 0.276364, 0.874976,
		-0.732582, 0.669785, 0.121292,
		-0.552526, -0.689210, 0.468727,
		10.816946, 19.857327, 26.019800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.894254, 20.659296, 26.330078>,  <11.203714, 20.339773, 25.691692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.894254, 20.659296, 26.330078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960502, 20.268026, 26.380274>,  <11.000251, 20.033264, 26.410391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960502, 20.268026, 26.380274>,  <10.894254, 20.659296, 26.330078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.960502, 20.268026, 26.380274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447378, 0.187922, 0.874379,
		-0.878876, -0.088674, 0.468736,
		0.165620, -0.978173, 0.125489,
		11.010188, 19.974575, 26.417921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.893681, 20.675104, 26.973886>,  <10.894254, 20.659296, 26.330078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.893681, 20.675104, 26.973886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030084, 20.309359, 26.886570>,  <11.111925, 20.089911, 26.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.030084, 20.309359, 26.886570>,  <10.893681, 20.675104, 26.973886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.030084, 20.309359, 26.886570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503982, -0.018198, 0.863522,
		-0.793547, -0.404483, 0.454617,
		0.341007, -0.914364, -0.218293,
		11.132386, 20.035049, 26.821081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.325407, 20.208370, 27.050076>,  <10.893681, 20.675104, 26.973886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.325407, 20.208370, 27.050076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.985538, 20.414131, 27.003687>,  <9.781617, 20.537588, 26.975853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.985538, 20.414131, 27.003687>,  <10.325407, 20.208370, 27.050076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.985538, 20.414131, 27.003687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276649, -0.247622, 0.928520,
		0.448915, 0.821020, 0.352705,
		-0.849671, 0.514402, -0.115973,
		9.730638, 20.568451, 26.968895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.412274, 20.653444, 27.626890>,  <10.325407, 20.208370, 27.050076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.412274, 20.653444, 27.626890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.051729, 20.553486, 27.485415>,  <9.835402, 20.493511, 27.400530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.051729, 20.553486, 27.485415>,  <10.412274, 20.653444, 27.626890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.051729, 20.553486, 27.485415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205433, -0.472241, 0.857197,
		-0.381235, 0.845305, 0.374324,
		-0.901364, -0.249895, -0.353688,
		9.781320, 20.478518, 27.379309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.933047, 20.695587, 28.165497>,  <10.412274, 20.653444, 27.626890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.933047, 20.695587, 28.165497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.747140, 20.429058, 27.932257>,  <9.635595, 20.269140, 27.792313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.747140, 20.429058, 27.932257>,  <9.933047, 20.695587, 28.165497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.747140, 20.429058, 27.932257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105561, -0.612152, 0.783663,
		-0.879117, 0.425775, 0.214172,
		-0.464769, -0.666323, -0.583098,
		9.607709, 20.229160, 27.757328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.134168, 20.577559, 28.427097>,  <9.933047, 20.695587, 28.165497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.134168, 20.577559, 28.427097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334492, 20.274862, 28.259033>,  <9.454686, 20.093245, 28.158194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.334492, 20.274862, 28.259033>,  <9.134168, 20.577559, 28.427097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.334492, 20.274862, 28.259033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018609, -0.475897, 0.879304,
		-0.865357, -0.448184, -0.224252,
		0.500810, -0.756739, -0.420161,
		9.484735, 20.047840, 28.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.769643, 20.007183, 28.515772>,  <9.134168, 20.577559, 28.427097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.769643, 20.007183, 28.515772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.168592, 19.980314, 28.504942>,  <9.407962, 19.964193, 28.498444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.168592, 19.980314, 28.504942>,  <8.769643, 20.007183, 28.515772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.168592, 19.980314, 28.504942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002032, -0.399662, 0.916661,
		-0.072392, -0.914199, -0.398749,
		0.997374, -0.067169, -0.027075,
		9.467805, 19.960163, 28.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.898656, 19.225956, 28.591007>,  <8.769643, 20.007183, 28.515772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.898656, 19.225956, 28.591007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.651288, 18.948729, 28.739176>,  <8.502867, 18.782393, 28.828077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.651288, 18.948729, 28.739176>,  <8.898656, 19.225956, 28.591007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.651288, 18.948729, 28.739176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113255, -0.545049, -0.830719,
		0.777643, -0.471782, 0.415563,
		-0.618421, -0.693068, 0.370422,
		8.465762, 18.740808, 28.850302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.159064, 18.579634, 28.361769>,  <8.898656, 19.225956, 28.591007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.159064, 18.579634, 28.361769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.764091, 18.589214, 28.424250>,  <8.527106, 18.594963, 28.461739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.764091, 18.589214, 28.424250>,  <9.159064, 18.579634, 28.361769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.764091, 18.589214, 28.424250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150102, -0.451232, -0.879693,
		0.049415, -0.892085, 0.449157,
		-0.987435, 0.023950, 0.156202,
		8.467860, 18.596399, 28.471109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.683825, 18.122030, 28.228582>,  <9.159064, 18.579634, 28.361769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.683825, 18.122030, 28.228582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.623556, 17.728760, 28.269880>,  <9.587395, 17.492798, 28.294659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.623556, 17.728760, 28.269880>,  <9.683825, 18.122030, 28.228582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.623556, 17.728760, 28.269880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983303, -0.159828, -0.087007,
		0.102044, 0.088410, 0.990843,
		-0.150673, -0.983178, 0.103243,
		9.578354, 17.433805, 28.300854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.262479, 18.424854, 28.742611>,  <9.683825, 18.122030, 28.228582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.262479, 18.424854, 28.742611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.532271, 18.660763, 28.920259>,  <10.694147, 18.802309, 29.026848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.532271, 18.660763, 28.920259>,  <10.262479, 18.424854, 28.742611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.532271, 18.660763, 28.920259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616993, -0.780636, 0.099630,
		0.405456, 0.206822, -0.890410,
		0.674481, 0.589772, 0.444121,
		10.734615, 18.837694, 29.053495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.806729, 18.330276, 28.444193>,  <10.262479, 18.424854, 28.742611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.806729, 18.330276, 28.444193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896146, 18.444115, 28.817081>,  <10.949796, 18.512417, 29.040815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896146, 18.444115, 28.817081>,  <10.806729, 18.330276, 28.444193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.896146, 18.444115, 28.817081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635569, -0.767682, 0.081956,
		0.738973, 0.574170, -0.352488,
		0.223542, 0.284593, 0.932221,
		10.963208, 18.529493, 29.096748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.090544, 17.800383, 27.993101>,  <10.806729, 18.330276, 28.444193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.090544, 17.800383, 27.993101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.108849, 17.865797, 27.598911>,  <11.119831, 17.905046, 27.362396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.108849, 17.865797, 27.598911>,  <11.090544, 17.800383, 27.993101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.108849, 17.865797, 27.598911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007871, -0.986419, -0.164058,
		-0.998921, 0.015265, -0.043853,
		0.045762, 0.163536, -0.985475,
		11.122578, 17.914858, 27.303268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.668056, 17.353756, 27.695848>,  <11.090544, 17.800383, 27.993101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.668056, 17.353756, 27.695848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.947592, 17.469070, 27.434006>,  <11.115314, 17.538260, 27.276899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.947592, 17.469070, 27.434006>,  <10.668056, 17.353756, 27.695848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.947592, 17.469070, 27.434006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202518, -0.957482, -0.205464,
		-0.686008, 0.011017, -0.727511,
		0.698841, 0.288284, -0.654609,
		11.157245, 17.555555, 27.237623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.605506, 16.863972, 27.238111>,  <10.668056, 17.353756, 27.695848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.605506, 16.863972, 27.238111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.967407, 17.032152, 27.210854>,  <11.184548, 17.133060, 27.194498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.967407, 17.032152, 27.210854>,  <10.605506, 16.863972, 27.238111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.967407, 17.032152, 27.210854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405505, -0.899214, -0.164256,
		-0.130338, 0.120978, -0.984061,
		0.904753, 0.420450, -0.068145,
		11.238833, 17.158287, 27.190411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979252, 16.602253, 26.584688>,  <10.605506, 16.863972, 27.238111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.979252, 16.602253, 26.584688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.301253, 16.707502, 26.797379>,  <11.494454, 16.770651, 26.924994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.301253, 16.707502, 26.797379>,  <10.979252, 16.602253, 26.584688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.301253, 16.707502, 26.797379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465540, -0.835733, -0.291243,
		0.367749, 0.481993, -0.795263,
		0.805005, 0.263123, 0.531727,
		11.542755, 16.786440, 26.956898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.521952, 16.437384, 26.215437>,  <10.979252, 16.602253, 26.584688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.521952, 16.437384, 26.215437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708989, 16.496973, 26.563957>,  <11.821212, 16.532726, 26.773069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.708989, 16.496973, 26.563957>,  <11.521952, 16.437384, 26.215437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.708989, 16.496973, 26.563957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717173, -0.640158, -0.275428,
		0.516738, 0.753661, -0.406173,
		0.467594, 0.148972, 0.871300,
		11.849267, 16.541664, 26.825348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.283651, 16.690964, 26.122509>,  <11.521952, 16.437384, 26.215437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.283651, 16.690964, 26.122509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252715, 16.518129, 26.481913>,  <12.234154, 16.414429, 26.697556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252715, 16.518129, 26.481913>,  <12.283651, 16.690964, 26.122509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252715, 16.518129, 26.481913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786766, -0.579998, -0.211193,
		0.612387, 0.690584, 0.384806,
		-0.077340, -0.432084, 0.898511,
		12.229513, 16.388504, 26.751467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.896679, 16.838734, 26.454397>,  <12.283651, 16.690964, 26.122509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.896679, 16.838734, 26.454397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724743, 16.520931, 26.625977>,  <12.621581, 16.330250, 26.728924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724743, 16.520931, 26.625977>,  <12.896679, 16.838734, 26.454397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724743, 16.520931, 26.625977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728119, -0.585951, -0.355674,
		0.533929, 0.159444, 0.830360,
		-0.429840, -0.794505, 0.428951,
		12.595791, 16.282579, 26.754662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.497487, 16.476175, 26.732115>,  <12.896679, 16.838734, 26.454397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.497487, 16.476175, 26.732115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.202209, 16.207781, 26.759962>,  <13.025043, 16.046743, 26.776670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.202209, 16.207781, 26.759962>,  <13.497487, 16.476175, 26.732115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.202209, 16.207781, 26.759962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590693, -0.692779, -0.413691,
		0.325812, -0.264261, 0.907752,
		-0.738193, -0.670988, 0.069619,
		12.980751, 16.006485, 26.780848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868690, 15.838068, 26.914001>,  <13.497487, 16.476175, 26.732115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868690, 15.838068, 26.914001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.515462, 15.704884, 26.781744>,  <13.303525, 15.624973, 26.702389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.515462, 15.704884, 26.781744>,  <13.868690, 15.838068, 26.914001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.515462, 15.704884, 26.781744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451264, -0.795773, -0.403864,
		-0.128647, -0.505848, 0.852976,
		-0.883069, -0.332961, -0.330645,
		13.250541, 15.604996, 26.682550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.833225, 15.111145, 27.051308>,  <13.868690, 15.838068, 26.914001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.833225, 15.111145, 27.051308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564539, 15.160111, 26.759058>,  <13.403327, 15.189491, 26.583708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564539, 15.160111, 26.759058>,  <13.833225, 15.111145, 27.051308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.564539, 15.160111, 26.759058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338702, -0.826384, -0.449855,
		-0.658846, -0.549639, 0.513633,
		-0.671716, 0.122417, -0.730624,
		13.363024, 15.196836, 26.539871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.432673, 14.503695, 27.048710>,  <13.833225, 15.111145, 27.051308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.432673, 14.503695, 27.048710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.393221, 14.657734, 26.681673>,  <13.369550, 14.750156, 26.461451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.393221, 14.657734, 26.681673>,  <13.432673, 14.503695, 27.048710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.393221, 14.657734, 26.681673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329912, -0.857285, -0.395247,
		-0.938845, -0.341708, -0.042494,
		-0.098630, 0.385095, -0.917591,
		13.363632, 14.773262, 26.406395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329144, 13.863094, 26.751953>,  <13.432673, 14.503695, 27.048710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329144, 13.863094, 26.751953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367448, 14.128821, 26.455437>,  <13.390430, 14.288258, 26.277527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.367448, 14.128821, 26.455437>,  <13.329144, 13.863094, 26.751953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.367448, 14.128821, 26.455437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244541, -0.737591, -0.629411,
		-0.964899, -0.121003, -0.233085,
		0.095761, 0.664317, -0.741291,
		13.396176, 14.328116, 26.233049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.907093, 13.622908, 26.158228>,  <13.329144, 13.863094, 26.751953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.907093, 13.622908, 26.158228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.186838, 13.861963, 26.001400>,  <13.354685, 14.005397, 25.907303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.186838, 13.861963, 26.001400>,  <12.907093, 13.622908, 26.158228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186838, 13.861963, 26.001400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219180, -0.701416, -0.678215,
		-0.680333, 0.388384, -0.621534,
		0.699362, 0.597640, -0.392070,
		13.396646, 14.041255, 25.883780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850176, 13.510269, 25.428518>,  <12.907093, 13.622908, 26.158228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850176, 13.510269, 25.428518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221555, 13.649738, 25.479761>,  <13.444383, 13.733420, 25.510506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221555, 13.649738, 25.479761>,  <12.850176, 13.510269, 25.428518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.221555, 13.649738, 25.479761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297477, -0.491375, -0.818570,
		-0.222466, 0.798109, -0.559939,
		0.928448, 0.348674, 0.128105,
		13.500090, 13.754340, 25.518192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.091948, 13.812073, 24.744772>,  <12.850176, 13.510269, 25.428518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.091948, 13.812073, 24.744772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417758, 13.730680, 24.962080>,  <13.613244, 13.681846, 25.092464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.417758, 13.730680, 24.962080>,  <13.091948, 13.812073, 24.744772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.417758, 13.730680, 24.962080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468399, -0.321839, -0.822814,
		0.342272, 0.924671, -0.166836,
		0.814526, -0.203480, 0.543271,
		13.662116, 13.669637, 25.125061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.567387, 14.143725, 24.341555>,  <13.091948, 13.812073, 24.744772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.567387, 14.143725, 24.341555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753500, 13.885364, 24.583652>,  <13.865169, 13.730347, 24.728910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753500, 13.885364, 24.583652>,  <13.567387, 14.143725, 24.341555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753500, 13.885364, 24.583652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464691, -0.403723, -0.788080,
		0.753374, 0.647932, 0.112299,
		0.465284, -0.645903, 0.605243,
		13.893085, 13.691592, 24.765226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.197509, 14.051414, 24.021919>,  <13.567387, 14.143725, 24.341555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.197509, 14.051414, 24.021919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182826, 13.737106, 24.268890>,  <14.174016, 13.548522, 24.417074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.182826, 13.737106, 24.268890>,  <14.197509, 14.051414, 24.021919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182826, 13.737106, 24.268890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448613, -0.565048, -0.692436,
		0.892972, 0.251569, 0.373247,
		-0.036707, -0.785769, 0.617429,
		14.171814, 13.501375, 24.454119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924397, 13.639858, 24.007223>,  <14.197509, 14.051414, 24.021919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924397, 13.639858, 24.007223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.663279, 13.354986, 24.110497>,  <14.506607, 13.184063, 24.172461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.663279, 13.354986, 24.110497>,  <14.924397, 13.639858, 24.007223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.663279, 13.354986, 24.110497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369565, -0.596911, -0.712122,
		0.661270, -0.369456, 0.652858,
		-0.652796, -0.712179, 0.258182,
		14.467440, 13.141333, 24.187950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281691, 13.031123, 23.804449>,  <14.924397, 13.639858, 24.007223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281691, 13.031123, 23.804449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.903903, 12.910061, 23.855640>,  <14.677231, 12.837423, 23.886356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.903903, 12.910061, 23.855640>,  <15.281691, 13.031123, 23.804449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.903903, 12.910061, 23.855640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201583, -0.841215, -0.501718,
		0.259507, -0.448058, 0.855512,
		-0.944468, -0.302656, 0.127980,
		14.620563, 12.819264, 23.894035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382676, 12.378775, 24.056660>,  <15.281691, 13.031123, 23.804449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382676, 12.378775, 24.056660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011936, 12.418813, 23.911922>,  <14.789493, 12.442836, 23.825081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011936, 12.418813, 23.911922>,  <15.382676, 12.378775, 24.056660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011936, 12.418813, 23.911922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139323, -0.803278, -0.579079,
		-0.348623, -0.587132, 0.730573,
		-0.926850, 0.100095, -0.361842,
		14.733881, 12.448841, 23.803370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.108979, 11.727115, 23.930748>,  <15.382676, 12.378775, 24.056660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.108979, 11.727115, 23.930748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866485, 11.938476, 23.693003>,  <14.720987, 12.065292, 23.550356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866485, 11.938476, 23.693003>,  <15.108979, 11.727115, 23.930748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.866485, 11.938476, 23.693003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083917, -0.700686, -0.708517,
		-0.790843, -0.479407, 0.380441,
		-0.606238, 0.528401, -0.594364,
		14.684613, 12.096996, 23.514694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738824, 11.278235, 23.630604>,  <15.108979, 11.727115, 23.930748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738824, 11.278235, 23.630604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.695489, 11.594776, 23.389931>,  <14.669488, 11.784700, 23.245527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.695489, 11.594776, 23.389931>,  <14.738824, 11.278235, 23.630604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.695489, 11.594776, 23.389931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073296, -0.609958, -0.789037,
		-0.991408, -0.041382, 0.124085,
		-0.108338, 0.791353, -0.601684,
		14.662988, 11.832182, 23.209425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607325, 10.952348, 23.021048>,  <14.738824, 11.278235, 23.630604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607325, 10.952348, 23.021048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633458, 11.336056, 22.911116>,  <14.649138, 11.566280, 22.845156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.633458, 11.336056, 22.911116>,  <14.607325, 10.952348, 23.021048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633458, 11.336056, 22.911116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016132, -0.274368, -0.961489,
		-0.997733, 0.067252, -0.002451,
		0.065334, 0.959270, -0.274831,
		14.653058, 11.623837, 22.828667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001647, 11.111115, 22.515057>,  <14.607325, 10.952348, 23.021048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001647, 11.111115, 22.515057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.304143, 11.366722, 22.458834>,  <14.485641, 11.520086, 22.425100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.304143, 11.366722, 22.458834>,  <14.001647, 11.111115, 22.515057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304143, 11.366722, 22.458834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017263, -0.195263, -0.980599,
		-0.654068, 0.743994, -0.136634,
		0.756239, 0.639019, -0.140559,
		14.531014, 11.558428, 22.416666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.904322, 11.357574, 21.776508>,  <14.001647, 11.111115, 22.515057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.904322, 11.357574, 21.776508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286495, 11.459314, 21.836443>,  <14.515800, 11.520358, 21.872404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.286495, 11.459314, 21.836443>,  <13.904322, 11.357574, 21.776508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286495, 11.459314, 21.836443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149038, 0.022524, -0.988575,
		-0.254819, 0.966850, -0.016387,
		0.955435, 0.254350, 0.149837,
		14.573126, 11.535620, 21.881393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990855, 11.949001, 21.340326>,  <13.904322, 11.357574, 21.776508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.990855, 11.949001, 21.340326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359240, 11.807977, 21.406698>,  <14.580270, 11.723362, 21.446522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.359240, 11.807977, 21.406698>,  <13.990855, 11.949001, 21.340326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359240, 11.807977, 21.406698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199591, 0.061099, -0.977973,
		0.334657, 0.933792, 0.126637,
		0.920961, -0.352561, 0.165929,
		14.635528, 11.702209, 21.456476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399849, 12.347342, 20.978390>,  <13.990855, 11.949001, 21.340326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399849, 12.347342, 20.978390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.619716, 12.019210, 21.041542>,  <14.751636, 11.822330, 21.079433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.619716, 12.019210, 21.041542>,  <14.399849, 12.347342, 20.978390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.619716, 12.019210, 21.041542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131481, -0.101683, -0.986090,
		0.824972, 0.562780, 0.051966,
		0.549667, -0.820329, 0.157881,
		14.784616, 11.773111, 21.088905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958498, 12.411123, 20.613693>,  <14.399849, 12.347342, 20.978390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958498, 12.411123, 20.613693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006475, 12.020888, 20.687281>,  <15.035262, 11.786748, 20.731434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006475, 12.020888, 20.687281>,  <14.958498, 12.411123, 20.613693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006475, 12.020888, 20.687281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216148, -0.155199, -0.963947,
		0.968965, 0.155383, 0.192256,
		0.119943, -0.975587, 0.183968,
		15.042459, 11.728212, 20.742472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549998, 12.278276, 20.257751>,  <14.958498, 12.411123, 20.613693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549998, 12.278276, 20.257751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.340936, 11.940893, 20.307404>,  <15.215498, 11.738463, 20.337194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.340936, 11.940893, 20.307404>,  <15.549998, 12.278276, 20.257751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.340936, 11.940893, 20.307404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098492, -0.204363, -0.973927,
		0.846835, -0.496803, 0.189886,
		-0.522656, -0.843458, 0.124131,
		15.184139, 11.687856, 20.344643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893863, 11.777297, 19.983673>,  <15.549998, 12.278276, 20.257751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893863, 11.777297, 19.983673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522045, 11.630122, 19.993248>,  <15.298955, 11.541818, 19.998993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522045, 11.630122, 19.993248>,  <15.893863, 11.777297, 19.983673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522045, 11.630122, 19.993248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007380, -0.083476, -0.996482,
		0.368640, -0.926097, 0.080310,
		-0.929543, -0.367936, 0.023938,
		15.243182, 11.519741, 20.000429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907715, 11.095379, 19.494661>,  <15.893863, 11.777297, 19.983673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907715, 11.095379, 19.494661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522958, 11.201243, 19.522131>,  <15.292104, 11.264762, 19.538612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522958, 11.201243, 19.522131>,  <15.907715, 11.095379, 19.494661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522958, 11.201243, 19.522131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112636, -0.154673, -0.981524,
		-0.249150, -0.951856, 0.178589,
		-0.961893, 0.264662, 0.068676,
		15.234390, 11.280642, 19.542734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629818, 10.682004, 19.054012>,  <15.907715, 11.095379, 19.494661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629818, 10.682004, 19.054012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.334497, 10.945479, 19.112030>,  <15.157305, 11.103565, 19.146841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.334497, 10.945479, 19.112030>,  <15.629818, 10.682004, 19.054012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334497, 10.945479, 19.112030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150811, 0.048386, -0.987378,
		-0.657394, -0.750857, 0.063614,
		-0.738301, 0.658689, 0.145046,
		15.113007, 11.143086, 19.155544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100810, 10.440528, 18.738100>,  <15.629818, 10.682004, 19.054012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100810, 10.440528, 18.738100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992043, 10.824534, 18.764725>,  <14.926784, 11.054938, 18.780699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992043, 10.824534, 18.764725>,  <15.100810, 10.440528, 18.738100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992043, 10.824534, 18.764725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294384, -0.017132, -0.955534,
		-0.916188, -0.279419, 0.287272,
		-0.271916, 0.960016, 0.066560,
		14.910469, 11.112539, 18.784693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514336, 10.526913, 18.331333>,  <15.100810, 10.440528, 18.738100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514336, 10.526913, 18.331333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640931, 10.905166, 18.361305>,  <14.716888, 11.132117, 18.379288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640931, 10.905166, 18.361305>,  <14.514336, 10.526913, 18.331333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640931, 10.905166, 18.361305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325028, 0.182313, -0.927965,
		-0.891174, 0.269336, 0.365057,
		0.316489, 0.945632, 0.074931,
		14.735878, 11.188855, 18.383785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.046881, 10.895933, 18.027725>,  <14.514336, 10.526913, 18.331333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.046881, 10.895933, 18.027725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.369963, 11.131277, 18.042923>,  <14.563812, 11.272484, 18.052042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.369963, 11.131277, 18.042923>,  <14.046881, 10.895933, 18.027725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.369963, 11.131277, 18.042923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027216, 0.101583, -0.994455,
		-0.588957, 0.802193, 0.098062,
		0.807706, 0.588360, 0.037995,
		14.612274, 11.307785, 18.054321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.908620, 11.539004, 17.499252>,  <14.046881, 10.895933, 18.027725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.908620, 11.539004, 17.499252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299850, 11.500745, 17.573244>,  <14.534589, 11.477789, 17.617640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299850, 11.500745, 17.573244>,  <13.908620, 11.539004, 17.499252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299850, 11.500745, 17.573244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189352, 0.038762, -0.981144,
		0.086675, 0.994660, 0.056023,
		0.978076, -0.095649, 0.184981,
		14.593273, 11.472050, 17.628738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.180491, 11.977071, 17.027491>,  <13.908620, 11.539004, 17.499252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.180491, 11.977071, 17.027491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480382, 11.740360, 17.145956>,  <14.660316, 11.598334, 17.217035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.480382, 11.740360, 17.145956>,  <14.180491, 11.977071, 17.027491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480382, 11.740360, 17.145956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300218, -0.094672, -0.949161,
		0.589729, 0.800524, 0.106684,
		0.749726, -0.591777, 0.296162,
		14.705299, 11.562827, 17.234804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823807, 12.239938, 16.750513>,  <14.180491, 11.977071, 17.027491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823807, 12.239938, 16.750513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909235, 11.853564, 16.808973>,  <14.960492, 11.621740, 16.844049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909235, 11.853564, 16.808973>,  <14.823807, 12.239938, 16.750513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.909235, 11.853564, 16.808973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386521, -0.053846, -0.920707,
		0.897212, 0.253125, 0.361854,
		0.213570, -0.965934, 0.146150,
		14.973306, 11.563784, 16.852818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391137, 12.206877, 16.448973>,  <14.823807, 12.239938, 16.750513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391137, 12.206877, 16.448973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277925, 11.824053, 16.474052>,  <15.209998, 11.594358, 16.489100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277925, 11.824053, 16.474052>,  <15.391137, 12.206877, 16.448973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277925, 11.824053, 16.474052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397018, -0.176416, -0.900697,
		0.873082, -0.230030, 0.429900,
		-0.283029, -0.957060, 0.062699,
		15.193017, 11.536935, 16.492863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986299, 11.834627, 16.217216>,  <15.391137, 12.206877, 16.448973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.986299, 11.834627, 16.217216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665308, 11.601758, 16.164900>,  <15.472713, 11.462036, 16.133511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.665308, 11.601758, 16.164900>,  <15.986299, 11.834627, 16.217216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.665308, 11.601758, 16.164900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298135, -0.201332, -0.933049,
		0.516865, -0.787743, 0.335131,
		-0.802475, -0.582174, -0.130792,
		15.424565, 11.427106, 16.125662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437962, 12.357721, 16.204348>,  <15.986299, 11.834627, 16.217216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437962, 12.357721, 16.204348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810886, 12.397139, 16.065157>,  <17.034641, 12.420789, 15.981643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810886, 12.397139, 16.065157>,  <16.437962, 12.357721, 16.204348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810886, 12.397139, 16.065157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330890, 0.155941, 0.930695,
		0.145966, -0.982840, 0.112783,
		0.932312, 0.098531, -0.347974,
		17.090580, 12.426702, 15.960764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872818, 11.890038, 16.498400>,  <16.437962, 12.357721, 16.204348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872818, 11.890038, 16.498400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.123619, 12.186587, 16.402710>,  <17.274099, 12.364517, 16.345297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.123619, 12.186587, 16.402710>,  <16.872818, 11.890038, 16.498400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123619, 12.186587, 16.402710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258573, 0.091616, 0.961637,
		0.734851, -0.664807, -0.134257,
		0.627003, 0.741376, -0.239225,
		17.311720, 12.409000, 16.330942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629564, 11.696619, 16.735609>,  <16.872818, 11.890038, 16.498400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629564, 11.696619, 16.735609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.572077, 12.091403, 16.706606>,  <17.537584, 12.328273, 16.689205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.572077, 12.091403, 16.706606>,  <17.629564, 11.696619, 16.735609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572077, 12.091403, 16.706606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281340, 0.110991, 0.953168,
		0.948785, 0.116589, -0.293623,
		-0.143718, 0.986959, -0.072506,
		17.528961, 12.387490, 16.684855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.016840, 11.927120, 17.181202>,  <17.629564, 11.696619, 16.735609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.016840, 11.927120, 17.181202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.799486, 12.256044, 17.113626>,  <17.669073, 12.453399, 17.073082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.799486, 12.256044, 17.113626>,  <18.016840, 11.927120, 17.181202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.799486, 12.256044, 17.113626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059479, 0.238446, 0.969333,
		0.837374, 0.516672, -0.178478,
		-0.543384, 0.822310, -0.168938,
		17.636471, 12.502737, 17.062944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266977, 12.362673, 17.587358>,  <18.016840, 11.927120, 17.181202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266977, 12.362673, 17.587358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.926165, 12.555158, 17.504917>,  <17.721678, 12.670649, 17.455452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.926165, 12.555158, 17.504917>,  <18.266977, 12.362673, 17.587358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.926165, 12.555158, 17.504917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041511, 0.330360, 0.942941,
		0.521844, 0.811970, -0.261501,
		-0.852030, 0.481213, -0.206102,
		17.670555, 12.699521, 17.443087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305449, 13.026898, 17.972904>,  <18.266977, 12.362673, 17.587358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.305449, 13.026898, 17.972904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913462, 12.987405, 17.903715>,  <17.678270, 12.963709, 17.862202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.913462, 12.987405, 17.903715>,  <18.305449, 13.026898, 17.972904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913462, 12.987405, 17.903715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194293, 0.282897, 0.939266,
		-0.043803, 0.954055, -0.296412,
		-0.979965, -0.098734, -0.172974,
		17.619473, 12.957785, 17.851822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.011179, 13.507118, 18.294613>,  <18.305449, 13.026898, 17.972904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.011179, 13.507118, 18.294613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680317, 13.291854, 18.229876>,  <17.481800, 13.162695, 18.191032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680317, 13.291854, 18.229876>,  <18.011179, 13.507118, 18.294613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.680317, 13.291854, 18.229876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309672, 0.196164, 0.930389,
		-0.468951, 0.819696, -0.328912,
		-0.827157, -0.538162, -0.161845,
		17.432171, 13.130405, 18.181322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554527, 14.017134, 18.529518>,  <18.011179, 13.507118, 18.294613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554527, 14.017134, 18.529518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.419046, 13.641634, 18.554914>,  <17.337757, 13.416334, 18.570152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.419046, 13.641634, 18.554914>,  <17.554527, 14.017134, 18.529518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419046, 13.641634, 18.554914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191487, 0.134841, 0.972189,
		-0.921202, 0.317126, -0.225430,
		-0.338703, -0.938749, 0.063490,
		17.317436, 13.360009, 18.573961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846731, 14.082835, 18.898174>,  <17.554527, 14.017134, 18.529518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846731, 14.082835, 18.898174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957888, 13.700046, 18.931587>,  <17.024582, 13.470372, 18.951635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957888, 13.700046, 18.931587>,  <16.846731, 14.082835, 18.898174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957888, 13.700046, 18.931587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277003, 0.003433, 0.960863,
		-0.919808, -0.290152, -0.264131,
		0.277890, -0.956974, 0.083530,
		17.041254, 13.412953, 18.956646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286266, 13.808511, 19.162376>,  <16.846731, 14.082835, 18.898174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286266, 13.808511, 19.162376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621349, 13.609799, 19.253111>,  <16.822399, 13.490572, 19.307552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621349, 13.609799, 19.253111>,  <16.286266, 13.808511, 19.162376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621349, 13.609799, 19.253111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219122, 0.074709, 0.972833,
		-0.500231, -0.864655, -0.046271,
		0.837708, -0.496780, 0.226837,
		16.872662, 13.460766, 19.321161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.055946, 13.355499, 19.714413>,  <16.286266, 13.808511, 19.162376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.055946, 13.355499, 19.714413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.455774, 13.352159, 19.725639>,  <16.695671, 13.350154, 19.732376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.455774, 13.352159, 19.725639>,  <16.055946, 13.355499, 19.714413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.455774, 13.352159, 19.725639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027716, 0.039657, 0.998829,
		-0.009461, -0.999178, 0.039408,
		0.999571, -0.008358, 0.028068,
		16.755646, 13.349652, 19.734060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160410, 12.887632, 20.310715>,  <16.055946, 13.355499, 19.714413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160410, 12.887632, 20.310715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495304, 13.101402, 20.264374>,  <16.696241, 13.229665, 20.236568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495304, 13.101402, 20.264374>,  <16.160410, 12.887632, 20.310715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495304, 13.101402, 20.264374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067804, 0.108770, 0.991752,
		0.542620, -0.838187, 0.054830,
		0.837237, 0.534426, -0.115854,
		16.746475, 13.261730, 20.229618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583933, 12.634416, 20.767202>,  <16.160410, 12.887632, 20.310715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583933, 12.634416, 20.767202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743219, 12.990912, 20.680380>,  <16.838791, 13.204810, 20.628286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.743219, 12.990912, 20.680380>,  <16.583933, 12.634416, 20.767202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743219, 12.990912, 20.680380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152210, 0.169144, 0.973767,
		0.904576, -0.420806, -0.068300,
		0.398214, 0.891242, -0.217055,
		16.862684, 13.258286, 20.615263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.961187, 12.650607, 21.246017>,  <16.583933, 12.634416, 20.767202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.961187, 12.650607, 21.246017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968678, 13.032416, 21.126997>,  <16.973171, 13.261502, 21.055586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.968678, 13.032416, 21.126997>,  <16.961187, 12.650607, 21.246017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968678, 13.032416, 21.126997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136831, 0.292354, 0.946470,
		0.990417, -0.058439, -0.125133,
		0.018727, 0.954523, -0.297549,
		16.974297, 13.318773, 21.037733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561357, 12.957562, 21.591164>,  <16.961187, 12.650607, 21.246017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.561357, 12.957562, 21.591164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321325, 13.264147, 21.499565>,  <17.177305, 13.448097, 21.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.321325, 13.264147, 21.499565>,  <17.561357, 12.957562, 21.591164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.321325, 13.264147, 21.499565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070676, 0.335948, 0.939225,
		0.796810, 0.547428, -0.255767,
		-0.600083, 0.766460, -0.228996,
		17.141300, 13.494085, 21.430866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.908596, 13.558890, 21.754274>,  <17.561357, 12.957562, 21.591164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.908596, 13.558890, 21.754274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523893, 13.666433, 21.733339>,  <17.293072, 13.730959, 21.720779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523893, 13.666433, 21.733339>,  <17.908596, 13.558890, 21.754274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523893, 13.666433, 21.733339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057064, 0.383558, 0.921752,
		0.267894, 0.883515, -0.384232,
		-0.961757, 0.268858, -0.052336,
		17.235367, 13.747090, 21.717638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879242, 14.196429, 22.221670>,  <17.908596, 13.558890, 21.754274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879242, 14.196429, 22.221670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.500370, 14.072035, 22.190342>,  <17.273046, 13.997398, 22.171545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.500370, 14.072035, 22.190342>,  <17.879242, 14.196429, 22.221670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.500370, 14.072035, 22.190342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191662, 0.353133, 0.915731,
		-0.257124, 0.882374, -0.394086,
		-0.947182, -0.310987, -0.078319,
		17.216215, 13.978739, 22.166847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.440304, 14.785954, 22.299974>,  <17.879242, 14.196429, 22.221670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.440304, 14.785954, 22.299974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243805, 14.455303, 22.409786>,  <17.125906, 14.256913, 22.475674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243805, 14.455303, 22.409786>,  <17.440304, 14.785954, 22.299974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243805, 14.455303, 22.409786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354881, 0.477784, 0.803605,
		-0.795446, 0.297345, -0.528064,
		-0.491249, -0.826625, 0.274529,
		17.096430, 14.207315, 22.492146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876722, 15.049087, 22.588097>,  <17.440304, 14.785954, 22.299974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876722, 15.049087, 22.588097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896444, 14.665203, 22.698751>,  <16.908278, 14.434874, 22.765144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896444, 14.665203, 22.698751>,  <16.876722, 15.049087, 22.588097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896444, 14.665203, 22.698751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325527, 0.246411, 0.912860,
		-0.944246, -0.135063, -0.300261,
		0.049306, -0.959708, 0.276639,
		16.911236, 14.377291, 22.781744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193611, 14.904318, 22.720295>,  <16.876722, 15.049087, 22.588097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193611, 14.904318, 22.720295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422194, 14.662047, 22.941778>,  <16.559343, 14.516685, 23.074667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422194, 14.662047, 22.941778>,  <16.193611, 14.904318, 22.720295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422194, 14.662047, 22.941778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494592, 0.284217, 0.821340,
		-0.654840, -0.743220, -0.137145,
		0.571458, -0.605677, 0.553707,
		16.593632, 14.480345, 23.107891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701119, 14.576636, 23.253847>,  <16.193611, 14.904318, 22.720295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.701119, 14.576636, 23.253847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054941, 14.475322, 23.410517>,  <16.267235, 14.414533, 23.504519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054941, 14.475322, 23.410517>,  <15.701119, 14.576636, 23.253847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054941, 14.475322, 23.410517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375625, 0.111016, 0.920098,
		-0.276532, -0.961000, 0.003058,
		0.884554, -0.253288, 0.391675,
		16.320307, 14.399336, 23.528019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617205, 14.030796, 23.797686>,  <15.701119, 14.576636, 23.253847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617205, 14.030796, 23.797686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963734, 14.220194, 23.861298>,  <16.171650, 14.333833, 23.899466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963734, 14.220194, 23.861298>,  <15.617205, 14.030796, 23.797686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963734, 14.220194, 23.861298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242028, 0.119424, 0.962892,
		0.436932, -0.872663, 0.218058,
		0.866321, 0.473495, 0.159029,
		16.223631, 14.362242, 23.909006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851264, 13.703595, 24.420498>,  <15.617205, 14.030796, 23.797686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851264, 13.703595, 24.420498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043875, 14.048487, 24.357641>,  <16.159441, 14.255422, 24.319927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043875, 14.048487, 24.357641>,  <15.851264, 13.703595, 24.420498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043875, 14.048487, 24.357641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101809, 0.233113, 0.967106,
		0.870498, -0.449690, 0.200033,
		0.481528, 0.862229, -0.157142,
		16.188334, 14.307156, 24.310499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280916, 13.727749, 25.023491>,  <15.851264, 13.703595, 24.420498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280916, 13.727749, 25.023491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228937, 14.088221, 24.858086>,  <16.197750, 14.304503, 24.758842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.228937, 14.088221, 24.858086>,  <16.280916, 13.727749, 25.023491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228937, 14.088221, 24.858086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222103, 0.379994, 0.897928,
		0.966325, 0.208524, 0.150775,
		-0.129945, 0.901178, -0.413512,
		16.189953, 14.358574, 24.734032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474657, 14.128088, 25.574287>,  <16.280916, 13.727749, 25.023491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474657, 14.128088, 25.574287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.357580, 14.415145, 25.321520>,  <16.287334, 14.587379, 25.169859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.357580, 14.415145, 25.321520>,  <16.474657, 14.128088, 25.574287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357580, 14.415145, 25.321520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021672, 0.665667, 0.745934,
		0.955960, 0.204636, -0.210390,
		-0.292694, 0.717643, -0.631917,
		16.269772, 14.630438, 25.131945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805286, 14.634531, 25.744785>,  <16.474657, 14.128088, 25.574287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.805286, 14.634531, 25.744785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509689, 14.822049, 25.551243>,  <16.332331, 14.934560, 25.435118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509689, 14.822049, 25.551243>,  <16.805286, 14.634531, 25.744785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509689, 14.822049, 25.551243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058068, 0.671204, 0.738995,
		0.671204, 0.574210, -0.468794,
		-0.738995, 0.468794, -0.483858,
		16.287991, 14.962687, 25.406086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979454, 15.352914, 25.755167>,  <16.805286, 14.634531, 25.744785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979454, 15.352914, 25.755167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.587528, 15.283199, 25.716000>,  <16.352373, 15.241370, 25.692499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.587528, 15.283199, 25.716000>,  <16.979454, 15.352914, 25.755167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.587528, 15.283199, 25.716000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186996, 0.625859, 0.757187,
		-0.070684, 0.760213, -0.645817,
		-0.979814, -0.174286, -0.097919,
		16.293585, 15.230913, 25.686625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701208, 15.976921, 25.842926>,  <16.979454, 15.352914, 25.755167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701208, 15.976921, 25.842926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402668, 15.723269, 25.923763>,  <16.223545, 15.571077, 25.972265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.402668, 15.723269, 25.923763>,  <16.701208, 15.976921, 25.842926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402668, 15.723269, 25.923763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196928, 0.500454, 0.843069,
		-0.635753, 0.589426, -0.498392,
		-0.746349, -0.634131, 0.202091,
		16.178762, 15.533030, 25.984390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145906, 16.231293, 25.690725>,  <16.701208, 15.976921, 25.842926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145906, 16.231293, 25.690725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.995129, 15.966806, 25.950172>,  <15.904662, 15.808115, 26.105841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.995129, 15.966806, 25.950172>,  <16.145906, 16.231293, 25.690725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995129, 15.966806, 25.950172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248757, 0.746816, 0.616754,
		-0.892206, 0.071134, -0.445991,
		-0.376946, -0.661215, 0.648619,
		15.882045, 15.768442, 26.144758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525749, 16.475721, 25.800598>,  <16.145906, 16.231293, 25.690725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525749, 16.475721, 25.800598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587908, 16.232252, 26.111820>,  <15.625203, 16.086170, 26.298553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587908, 16.232252, 26.111820>,  <15.525749, 16.475721, 25.800598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587908, 16.232252, 26.111820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235309, 0.742143, 0.627578,
		-0.959418, -0.280606, -0.027900,
		0.155396, -0.608674, 0.778054,
		15.634526, 16.049650, 26.345236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922692, 16.375355, 26.179819>,  <15.525749, 16.475721, 25.800598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922692, 16.375355, 26.179819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227037, 16.318151, 26.433002>,  <15.409644, 16.283831, 26.584913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227037, 16.318151, 26.433002>,  <14.922692, 16.375355, 26.179819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.227037, 16.318151, 26.433002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316792, 0.769422, 0.554646,
		-0.566331, -0.622526, 0.540121,
		0.760863, -0.143007, 0.632959,
		15.455297, 16.275249, 26.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646276, 16.232086, 26.905684>,  <14.922692, 16.375355, 26.179819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646276, 16.232086, 26.905684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.022810, 16.359142, 26.951271>,  <15.248731, 16.435377, 26.978624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.022810, 16.359142, 26.951271>,  <14.646276, 16.232086, 26.905684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.022810, 16.359142, 26.951271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323090, 0.750757, 0.576174,
		0.097454, -0.579196, 0.809342,
		0.941337, 0.317641, 0.113969,
		15.305211, 16.454435, 26.985462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.732754, 16.327915, 27.650091>,  <14.646276, 16.232086, 26.905684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.732754, 16.327915, 27.650091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.040511, 16.521406, 27.483219>,  <15.225165, 16.637501, 27.383095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.040511, 16.521406, 27.483219>,  <14.732754, 16.327915, 27.650091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040511, 16.521406, 27.483219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297246, 0.849203, 0.436461,
		0.565400, -0.211805, 0.797158,
		0.769394, 0.483728, -0.417182,
		15.271329, 16.666525, 27.358065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.895976, 16.753784, 28.172932>,  <14.732754, 16.327915, 27.650091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.895976, 16.753784, 28.172932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.087293, 16.917589, 27.862181>,  <15.202083, 17.015873, 27.675730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.087293, 16.917589, 27.862181>,  <14.895976, 16.753784, 28.172932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.087293, 16.917589, 27.862181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400428, 0.889006, 0.222094,
		0.781597, 0.204857, 0.589185,
		0.478292, 0.409515, -0.776875,
		15.230780, 17.040443, 27.629118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195775, 17.350492, 28.423647>,  <14.895976, 16.753784, 28.172932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195775, 17.350492, 28.423647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.138583, 17.422049, 28.034277>,  <15.104268, 17.464981, 27.800655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.138583, 17.422049, 28.034277>,  <15.195775, 17.350492, 28.423647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138583, 17.422049, 28.034277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429802, 0.874726, 0.223882,
		0.891531, 0.450390, -0.048182,
		-0.142981, 0.178889, -0.973425,
		15.095689, 17.475716, 27.742250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593420, 17.938423, 28.091045>,  <15.195775, 17.350492, 28.423647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593420, 17.938423, 28.091045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.229237, 17.889233, 27.933088>,  <15.010727, 17.859718, 27.838314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.229237, 17.889233, 27.933088>,  <15.593420, 17.938423, 28.091045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.229237, 17.889233, 27.933088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262333, 0.909852, 0.321483,
		0.319760, 0.396290, -0.860644,
		-0.910459, -0.122978, -0.394894,
		14.956099, 17.852339, 27.814621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458916, 18.616186, 27.812645>,  <15.593420, 17.938423, 28.091045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458916, 18.616186, 27.812645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123919, 18.407440, 27.877466>,  <14.922920, 18.282192, 27.916359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123919, 18.407440, 27.877466>,  <15.458916, 18.616186, 27.812645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123919, 18.407440, 27.877466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401364, 0.788711, 0.465663,
		-0.370827, 0.324946, -0.869998,
		-0.837493, -0.521866, 0.162054,
		14.872671, 18.250881, 27.926083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782109, 19.048248, 27.632404>,  <15.458916, 18.616186, 27.812645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782109, 19.048248, 27.632404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680872, 18.749542, 27.878426>,  <14.620130, 18.570318, 28.026037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.680872, 18.749542, 27.878426>,  <14.782109, 19.048248, 27.632404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680872, 18.749542, 27.878426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583102, 0.625045, 0.518952,
		-0.771969, -0.227295, -0.593633,
		-0.253092, -0.746764, 0.615052,
		14.604944, 18.525513, 28.062941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232293, 19.595747, 27.539841>,  <14.782109, 19.048248, 27.632404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232293, 19.595747, 27.539841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.279329, 19.992823, 27.528933>,  <14.307550, 20.231068, 27.522388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.279329, 19.992823, 27.528933>,  <14.232293, 19.595747, 27.539841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.279329, 19.992823, 27.528933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484868, -0.081358, -0.870795,
		-0.866646, 0.089173, -0.490890,
		0.117589, 0.992688, -0.027271,
		14.314606, 20.290628, 27.520752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963552, 19.790651, 26.899557>,  <14.232293, 19.595747, 27.539841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.963552, 19.790651, 26.899557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.204059, 20.093346, 27.002186>,  <14.348363, 20.274961, 27.063763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.204059, 20.093346, 27.002186>,  <13.963552, 19.790651, 26.899557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.204059, 20.093346, 27.002186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444367, -0.049808, -0.894459,
		-0.664089, 0.651821, -0.366217,
		0.601268, 0.756736, 0.256571,
		14.384439, 20.320366, 27.079157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918715, 20.218664, 26.394926>,  <13.963552, 19.790651, 26.899557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918715, 20.218664, 26.394926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.284305, 20.290283, 26.540579>,  <14.503658, 20.333254, 26.627972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.284305, 20.290283, 26.540579>,  <13.918715, 20.218664, 26.394926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.284305, 20.290283, 26.540579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381257, -0.071734, -0.921682,
		-0.138902, 0.981222, -0.133825,
		0.913974, 0.179045, 0.364134,
		14.558497, 20.343996, 26.649818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239572, 20.586716, 25.885899>,  <13.918715, 20.218664, 26.394926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239572, 20.586716, 25.885899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.551007, 20.462215, 26.103861>,  <14.737868, 20.387516, 26.234638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.551007, 20.462215, 26.103861>,  <14.239572, 20.586716, 25.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.551007, 20.462215, 26.103861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528107, -0.144054, -0.836870,
		0.338971, 0.939347, 0.052214,
		0.778589, -0.311249, 0.544906,
		14.784584, 20.368841, 26.267332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844285, 20.864517, 25.610678>,  <14.239572, 20.586716, 25.885899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844285, 20.864517, 25.610678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984457, 20.559679, 25.828453>,  <15.068561, 20.376776, 25.959118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984457, 20.559679, 25.828453>,  <14.844285, 20.864517, 25.610678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984457, 20.559679, 25.828453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638896, -0.230543, -0.733936,
		0.684844, 0.605032, 0.406109,
		0.350430, -0.762093, 0.544438,
		15.089586, 20.331051, 25.991785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626803, 20.849382, 25.491577>,  <14.844285, 20.864517, 25.610678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.626803, 20.849382, 25.491577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522986, 20.488493, 25.629347>,  <15.460696, 20.271959, 25.712009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522986, 20.488493, 25.629347>,  <15.626803, 20.849382, 25.491577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522986, 20.488493, 25.629347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647017, -0.427221, -0.631546,
		0.716942, 0.058937, 0.694637,
		-0.259542, -0.902224, 0.344426,
		15.445124, 20.217825, 25.732676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256119, 20.518618, 25.512186>,  <15.626803, 20.849382, 25.491577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256119, 20.518618, 25.512186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023548, 20.194809, 25.544737>,  <15.884007, 20.000525, 25.564266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.023548, 20.194809, 25.544737>,  <16.256119, 20.518618, 25.512186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023548, 20.194809, 25.544737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622202, -0.506860, -0.596621,
		0.524223, -0.296259, 0.798387,
		-0.581425, -0.809520, 0.081375,
		15.849121, 19.951952, 25.569149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670031, 19.951666, 25.800926>,  <16.256119, 20.518618, 25.512186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670031, 19.951666, 25.800926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.356358, 19.812796, 25.595198>,  <16.168154, 19.729473, 25.471760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.356358, 19.812796, 25.595198>,  <16.670031, 19.951666, 25.800926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.356358, 19.812796, 25.595198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618708, -0.500939, -0.605195,
		-0.047535, -0.792798, 0.607628,
		-0.784182, -0.347176, -0.514323,
		16.121103, 19.708643, 25.440901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752844, 19.219467, 25.702309>,  <16.670031, 19.951666, 25.800926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752844, 19.219467, 25.702309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488108, 19.311388, 25.416887>,  <16.329266, 19.366541, 25.245634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488108, 19.311388, 25.416887>,  <16.752844, 19.219467, 25.702309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488108, 19.311388, 25.416887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518578, -0.547008, -0.657160,
		-0.541325, -0.804972, 0.242873,
		-0.661849, 0.229788, -0.713550,
		16.289557, 19.380327, 25.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584707, 18.617683, 25.426821>,  <16.752844, 19.219467, 25.702309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584707, 18.617683, 25.426821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488043, 18.878792, 25.139631>,  <16.430044, 19.035458, 24.967318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488043, 18.878792, 25.139631>,  <16.584707, 18.617683, 25.426821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488043, 18.878792, 25.139631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432229, -0.590036, -0.681935,
		-0.868779, -0.475127, -0.139558,
		-0.241662, 0.652772, -0.717975,
		16.415545, 19.074623, 24.924238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479168, 18.158680, 24.927994>,  <16.584707, 18.617683, 25.426821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.479168, 18.158680, 24.927994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497681, 18.511257, 24.739988>,  <16.508787, 18.722803, 24.627186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497681, 18.511257, 24.739988>,  <16.479168, 18.158680, 24.927994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497681, 18.511257, 24.739988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421136, -0.443876, -0.790960,
		-0.905816, -0.161334, -0.391751,
		0.046280, 0.881445, -0.470014,
		16.511564, 18.775690, 24.598984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.225365, 17.975918, 24.305700>,  <16.479168, 18.158680, 24.927994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.225365, 17.975918, 24.305700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.442017, 18.306162, 24.242449>,  <16.572008, 18.504309, 24.204498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.442017, 18.306162, 24.242449>,  <16.225365, 17.975918, 24.305700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442017, 18.306162, 24.242449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512270, -0.473320, -0.716623,
		-0.666496, 0.307140, -0.679299,
		0.541629, 0.825611, -0.158127,
		16.604506, 18.553844, 24.195011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169615, 18.225950, 23.576719>,  <16.225365, 17.975918, 24.305700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169615, 18.225950, 23.576719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.522951, 18.356152, 23.711630>,  <16.734953, 18.434273, 23.792576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.522951, 18.356152, 23.711630>,  <16.169615, 18.225950, 23.576719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.522951, 18.356152, 23.711630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459375, -0.458133, -0.760979,
		-0.093181, 0.827141, -0.554215,
		0.883341, 0.325501, 0.337278,
		16.787954, 18.453802, 23.812813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553137, 18.376516, 22.957266>,  <16.169615, 18.225950, 23.576719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553137, 18.376516, 22.957266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829559, 18.386332, 23.246220>,  <16.995413, 18.392221, 23.419592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.829559, 18.386332, 23.246220>,  <16.553137, 18.376516, 22.957266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.829559, 18.386332, 23.246220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624975, -0.522357, -0.580129,
		0.363106, 0.852374, -0.376315,
		0.691057, 0.024539, 0.722383,
		17.036877, 18.393694, 23.462934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084526, 18.446617, 22.545103>,  <16.553137, 18.376516, 22.957266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084526, 18.446617, 22.545103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243841, 18.315281, 22.887695>,  <17.339430, 18.236481, 23.093250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.243841, 18.315281, 22.887695>,  <17.084526, 18.446617, 22.545103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243841, 18.315281, 22.887695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578142, -0.635054, -0.512306,
		0.712121, 0.699214, -0.063109,
		0.398290, -0.328338, 0.856481,
		17.363329, 18.216780, 23.144640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.764336, 18.459114, 22.512129>,  <17.084526, 18.446617, 22.545103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.764336, 18.459114, 22.512129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662159, 18.172010, 22.771227>,  <17.600853, 17.999748, 22.926685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662159, 18.172010, 22.771227>,  <17.764336, 18.459114, 22.512129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662159, 18.172010, 22.771227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352784, -0.692974, -0.628754,
		0.900162, 0.067902, 0.430229,
		-0.255443, -0.717758, 0.647744,
		17.585526, 17.956682, 22.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405424, 18.059988, 22.563534>,  <17.764336, 18.459114, 22.512129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405424, 18.059988, 22.563534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109276, 17.826258, 22.696449>,  <17.931587, 17.686020, 22.776199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.109276, 17.826258, 22.696449>,  <18.405424, 18.059988, 22.563534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.109276, 17.826258, 22.696449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406621, -0.782943, -0.470807,
		0.535267, -0.213456, 0.817267,
		-0.740370, -0.584326, 0.332288,
		17.887165, 17.650961, 22.796135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.756809, 17.371161, 22.739307>,  <18.405424, 18.059988, 22.563534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.756809, 17.371161, 22.739307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370081, 17.282181, 22.689070>,  <18.138044, 17.228792, 22.658926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370081, 17.282181, 22.689070>,  <18.756809, 17.371161, 22.739307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370081, 17.282181, 22.689070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255049, -0.868309, -0.425428,
		-0.014420, -0.443346, 0.896234,
		-0.966820, -0.222449, -0.125596,
		18.080034, 17.215446, 22.651390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765306, 16.695396, 22.836554>,  <18.756809, 17.371161, 22.739307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.765306, 16.695396, 22.836554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.426523, 16.742388, 22.629148>,  <18.223253, 16.770582, 22.504705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.426523, 16.742388, 22.629148>,  <18.765306, 16.695396, 22.836554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.426523, 16.742388, 22.629148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181267, -0.853035, -0.489360,
		-0.499800, -0.508458, 0.701192,
		-0.846960, 0.117479, -0.518514,
		18.172436, 16.777632, 22.473595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496540, 15.983365, 22.650911>,  <18.765306, 16.695396, 22.836554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.496540, 15.983365, 22.650911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305271, 16.234219, 22.404966>,  <18.190510, 16.384731, 22.257399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305271, 16.234219, 22.404966>,  <18.496540, 15.983365, 22.650911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305271, 16.234219, 22.404966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141074, -0.636150, -0.758558,
		-0.866862, -0.449462, 0.215716,
		-0.478171, 0.627133, -0.614862,
		18.161819, 16.422359, 22.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.081434, 15.599087, 22.292439>,  <18.496540, 15.983365, 22.650911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.081434, 15.599087, 22.292439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.075108, 15.933820, 22.073547>,  <18.071312, 16.134659, 21.942213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.075108, 15.933820, 22.073547>,  <18.081434, 15.599087, 22.292439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075108, 15.933820, 22.073547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037306, -0.546423, -0.836678,
		-0.999179, -0.033647, -0.022578,
		-0.015814, 0.836833, -0.547229,
		18.070364, 16.184870, 21.909378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539785, 15.507001, 21.833920>,  <18.081434, 15.599087, 22.292439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539785, 15.507001, 21.833920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774797, 15.784040, 21.666531>,  <17.915804, 15.950264, 21.566097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.774797, 15.784040, 21.666531>,  <17.539785, 15.507001, 21.833920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774797, 15.784040, 21.666531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122577, -0.587346, -0.800000,
		-0.799866, 0.418727, -0.429979,
		0.587528, 0.692598, -0.418472,
		17.951056, 15.991820, 21.540989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337257, 15.554578, 21.141771>,  <17.539785, 15.507001, 21.833920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337257, 15.554578, 21.141771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.692034, 15.739324, 21.143627>,  <17.904900, 15.850171, 21.144741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.692034, 15.739324, 21.143627>,  <17.337257, 15.554578, 21.141771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692034, 15.739324, 21.143627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154105, -0.286436, -0.945625,
		-0.435421, 0.839426, -0.325227,
		0.886939, 0.461864, 0.004639,
		17.958115, 15.877883, 21.145020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291481, 15.984003, 20.598879>,  <17.337257, 15.554578, 21.141771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.291481, 15.984003, 20.598879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667908, 15.871626, 20.674210>,  <17.893763, 15.804200, 20.719408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667908, 15.871626, 20.674210>,  <17.291481, 15.984003, 20.598879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667908, 15.871626, 20.674210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114206, -0.260163, -0.958787,
		0.318359, 0.923789, -0.212745,
		0.941065, -0.280942, 0.188328,
		17.950228, 15.787343, 20.730707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.658155, 16.386652, 20.122530>,  <17.291481, 15.984003, 20.598879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.658155, 16.386652, 20.122530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.867491, 16.066952, 20.240725>,  <17.993092, 15.875132, 20.311642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.867491, 16.066952, 20.240725>,  <17.658155, 16.386652, 20.122530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.867491, 16.066952, 20.240725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233221, -0.199180, -0.951806,
		0.819589, 0.567030, 0.082164,
		0.523337, -0.799252, 0.295489,
		18.024492, 15.827176, 20.329370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266836, 16.426077, 19.722542>,  <17.658155, 16.386652, 20.122530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266836, 16.426077, 19.722542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228956, 16.046349, 19.842421>,  <18.206228, 15.818511, 19.914349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.228956, 16.046349, 19.842421>,  <18.266836, 16.426077, 19.722542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.228956, 16.046349, 19.842421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336003, -0.313864, -0.888027,
		0.937088, 0.016604, 0.348697,
		-0.094699, -0.949323, 0.299698,
		18.200546, 15.761552, 19.932329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.917936, 16.183937, 19.552792>,  <18.266836, 16.426077, 19.722542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.917936, 16.183937, 19.552792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.638229, 15.898479, 19.569464>,  <18.470406, 15.727205, 19.579468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.638229, 15.898479, 19.569464>,  <18.917936, 16.183937, 19.552792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.638229, 15.898479, 19.569464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227785, -0.277703, -0.933271,
		0.677597, -0.643112, 0.356746,
		-0.699268, -0.713644, 0.041680,
		18.428450, 15.684386, 19.581968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280193, 15.624091, 19.224615>,  <18.917936, 16.183937, 19.552792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280193, 15.624091, 19.224615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896040, 15.512963, 19.233416>,  <18.665548, 15.446286, 19.238697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896040, 15.512963, 19.233416>,  <19.280193, 15.624091, 19.224615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896040, 15.512963, 19.233416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066814, -0.306175, -0.949628,
		0.270562, -0.910534, 0.312607,
		-0.960381, -0.277820, 0.022003,
		18.607925, 15.429617, 19.240017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371237, 14.914119, 18.966265>,  <19.280193, 15.624091, 19.224615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371237, 14.914119, 18.966265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989616, 15.019285, 18.908768>,  <18.760645, 15.082385, 18.874269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.989616, 15.019285, 18.908768>,  <19.371237, 14.914119, 18.966265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.989616, 15.019285, 18.908768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107082, -0.148884, -0.983040,
		-0.279860, -0.953261, 0.113889,
		-0.954050, 0.262918, -0.143744,
		18.703402, 15.098161, 18.865644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104084, 14.445481, 18.568226>,  <19.371237, 14.914119, 18.966265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104084, 14.445481, 18.568226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840548, 14.740830, 18.510626>,  <18.682426, 14.918039, 18.476065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840548, 14.740830, 18.510626>,  <19.104084, 14.445481, 18.568226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840548, 14.740830, 18.510626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131943, -0.075035, -0.988413,
		-0.740622, -0.670206, -0.047987,
		-0.658840, 0.738372, -0.144002,
		18.642895, 14.962342, 18.467424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715431, 14.245139, 18.029676>,  <19.104084, 14.445481, 18.568226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715431, 14.245139, 18.029676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.645559, 14.638989, 18.029390>,  <18.603636, 14.875299, 18.029219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.645559, 14.638989, 18.029390>,  <18.715431, 14.245139, 18.029676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.645559, 14.638989, 18.029390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106830, 0.018230, -0.994110,
		-0.978813, -0.173729, -0.108372,
		-0.174681, 0.984625, -0.000716,
		18.593155, 14.934377, 18.029175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285845, 14.351381, 17.430119>,  <18.715431, 14.245139, 18.029676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285845, 14.351381, 17.430119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486980, 14.681441, 17.533096>,  <18.607662, 14.879478, 17.594883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486980, 14.681441, 17.533096>,  <18.285845, 14.351381, 17.430119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486980, 14.681441, 17.533096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182532, 0.189754, -0.964715,
		-0.844887, 0.532090, -0.055201,
		0.502840, 0.825151, 0.257444,
		18.637833, 14.928987, 17.610329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927647, 14.845098, 17.023598>,  <18.285845, 14.351381, 17.430119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927647, 14.845098, 17.023598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286880, 14.993009, 17.118851>,  <18.502420, 15.081755, 17.176003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286880, 14.993009, 17.118851>,  <17.927647, 14.845098, 17.023598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.286880, 14.993009, 17.118851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280772, -0.065263, -0.957553,
		-0.338537, 0.926827, -0.162434,
		0.898087, 0.369774, 0.238133,
		18.556307, 15.103941, 17.190290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103695, 15.213470, 16.377285>,  <17.927647, 14.845098, 17.023598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103695, 15.213470, 16.377285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.455324, 15.204086, 16.567728>,  <18.666302, 15.198456, 16.681993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.455324, 15.204086, 16.567728>,  <18.103695, 15.213470, 16.377285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455324, 15.204086, 16.567728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475490, -0.027528, -0.879291,
		0.033736, 0.999346, -0.013043,
		0.879074, -0.023462, 0.476107,
		18.719046, 15.197048, 16.710560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.531120, 15.749594, 16.005253>,  <18.103695, 15.213470, 16.377285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.531120, 15.749594, 16.005253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.759043, 15.491371, 16.208654>,  <18.895796, 15.336438, 16.330696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.759043, 15.491371, 16.208654>,  <18.531120, 15.749594, 16.005253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.759043, 15.491371, 16.208654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704663, 0.065457, -0.706516,
		0.422811, 0.760903, 0.492197,
		0.569808, -0.645556, 0.508504,
		18.929985, 15.297705, 16.361206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.207970, 16.153137, 16.133318>,  <18.531120, 15.749594, 16.005253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.207970, 16.153137, 16.133318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250166, 15.756680, 16.165575>,  <19.275484, 15.518805, 16.184929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.250166, 15.756680, 16.165575>,  <19.207970, 16.153137, 16.133318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250166, 15.756680, 16.165575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741586, 0.024380, -0.670415,
		0.662512, 0.130526, 0.737591,
		0.105490, -0.991145, 0.080644,
		19.281813, 15.459336, 16.189768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.958817, 15.997824, 16.153845>,  <19.207970, 16.153137, 16.133318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.958817, 15.997824, 16.153845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.787209, 15.656202, 16.036177>,  <19.684244, 15.451229, 15.965576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.787209, 15.656202, 16.036177>,  <19.958817, 15.997824, 16.153845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787209, 15.656202, 16.036177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662516, -0.076139, -0.745168,
		0.614015, -0.514583, 0.598489,
		-0.429019, -0.854053, -0.294169,
		19.658503, 15.399986, 15.947926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473888, 15.628758, 16.017303>,  <19.958817, 15.997824, 16.153845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473888, 15.628758, 16.017303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.171471, 15.438581, 15.837368>,  <19.990021, 15.324475, 15.729406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.171471, 15.438581, 15.837368>,  <20.473888, 15.628758, 16.017303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.171471, 15.438581, 15.837368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586455, -0.186889, -0.788126,
		0.290640, -0.859666, 0.420121,
		-0.756042, -0.475443, -0.449838,
		19.944658, 15.295949, 15.702416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796446, 15.018023, 15.749055>,  <20.473888, 15.628758, 16.017303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796446, 15.018023, 15.749055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463747, 15.063396, 15.531677>,  <20.264128, 15.090620, 15.401251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.463747, 15.063396, 15.531677>,  <20.796446, 15.018023, 15.749055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463747, 15.063396, 15.531677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506020, -0.247736, -0.826178,
		-0.228331, -0.962166, 0.148664,
		-0.831750, 0.113415, -0.543441,
		20.214224, 15.097425, 15.368644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.794266, 14.513747, 15.312654>,  <20.796446, 15.018023, 15.749055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.794266, 14.513747, 15.312654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526398, 14.740157, 15.120338>,  <20.365677, 14.876003, 15.004949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526398, 14.740157, 15.120338>,  <20.794266, 14.513747, 15.312654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526398, 14.740157, 15.120338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311090, -0.374056, -0.873673,
		-0.674363, -0.734641, 0.074408,
		-0.669669, 0.566026, -0.480789,
		20.325497, 14.909965, 14.976102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436653, 14.072797, 14.856217>,  <20.794266, 14.513747, 15.312654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436653, 14.072797, 14.856217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444155, 14.447401, 14.716162>,  <20.448656, 14.672163, 14.632128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.444155, 14.447401, 14.716162>,  <20.436653, 14.072797, 14.856217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.444155, 14.447401, 14.716162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361269, -0.332889, -0.871017,
		-0.932273, -0.110158, -0.344575,
		0.018756, 0.936510, -0.350140,
		20.449781, 14.728354, 14.611120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.084364, 14.098124, 14.190956>,  <20.436653, 14.072797, 14.856217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.084364, 14.098124, 14.190956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.391186, 14.347015, 14.253510>,  <20.575279, 14.496350, 14.291041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.391186, 14.347015, 14.253510>,  <20.084364, 14.098124, 14.190956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.391186, 14.347015, 14.253510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428792, -0.315876, -0.846381,
		-0.477244, 0.716278, -0.509102,
		0.767056, 0.622229, 0.156384,
		20.621304, 14.533684, 14.300425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213638, 14.728467, 13.675982>,  <20.084364, 14.098124, 14.190956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213638, 14.728467, 13.675982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537657, 14.585684, 13.862061>,  <20.732067, 14.500014, 13.973708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.537657, 14.585684, 13.862061>,  <20.213638, 14.728467, 13.675982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537657, 14.585684, 13.862061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336578, -0.366584, -0.867370,
		0.480148, 0.859185, -0.176805,
		0.810045, -0.356957, 0.465197,
		20.780670, 14.478597, 14.001619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.758144, 15.102029, 13.394430>,  <20.213638, 14.728467, 13.675982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.758144, 15.102029, 13.394430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835331, 14.719520, 13.482344>,  <20.881643, 14.490014, 13.535092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835331, 14.719520, 13.482344>,  <20.758144, 15.102029, 13.394430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835331, 14.719520, 13.482344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236907, -0.171960, -0.956193,
		0.952175, 0.236584, 0.193365,
		0.192968, -0.956273, 0.219785,
		20.893221, 14.432638, 13.548279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367151, 14.869999, 13.012626>,  <20.758144, 15.102029, 13.394430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367151, 14.869999, 13.012626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128347, 14.557294, 13.084659>,  <20.985065, 14.369671, 13.127878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128347, 14.557294, 13.084659>,  <21.367151, 14.869999, 13.012626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128347, 14.557294, 13.084659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079531, -0.281045, -0.956394,
		0.798283, -0.556652, 0.229961,
		-0.597008, -0.781762, 0.180082,
		20.949245, 14.322765, 13.138683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.755304, 14.356953, 12.857131>,  <21.367151, 14.869999, 13.012626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.755304, 14.356953, 12.857131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360598, 14.304426, 12.819091>,  <21.123774, 14.272910, 12.796267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360598, 14.304426, 12.819091>,  <21.755304, 14.356953, 12.857131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.360598, 14.304426, 12.819091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115460, -0.157333, -0.980773,
		0.113829, -0.978776, 0.170413,
		-0.986768, -0.131316, -0.095100,
		21.064568, 14.265032, 12.790561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393272, 13.867163, 12.692063>,  <21.755304, 14.356953, 12.857131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393272, 13.867163, 12.692063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427229, 13.492018, 12.557478>,  <21.447603, 13.266931, 12.476727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.427229, 13.492018, 12.557478>,  <21.393272, 13.867163, 12.692063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.427229, 13.492018, 12.557478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188690, 0.346705, -0.918799,
		0.978361, 0.014509, 0.206397,
		0.084890, -0.937862, -0.336464,
		21.452696, 13.210659, 12.456538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125238, 13.572824, 12.356175>,  <21.393272, 13.867163, 12.692063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125238, 13.572824, 12.356175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.824080, 13.371536, 12.186509>,  <21.643385, 13.250764, 12.084709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.824080, 13.371536, 12.186509>,  <22.125238, 13.572824, 12.356175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824080, 13.371536, 12.186509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334412, 0.262583, -0.905107,
		0.566846, -0.823299, -0.029416,
		-0.752898, -0.503219, -0.424165,
		21.598209, 13.220571, 12.059259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.365408, 14.274087, 12.080253>,  <22.125238, 13.572824, 12.356175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.365408, 14.274087, 12.080253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.634287, 14.112449, 11.832105>,  <22.795614, 14.015466, 11.683216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.634287, 14.112449, 11.832105>,  <22.365408, 14.274087, 12.080253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.634287, 14.112449, 11.832105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398008, 0.509311, -0.763014,
		0.624291, 0.759809, 0.181525,
		0.672198, -0.404095, -0.620369,
		22.835947, 13.991220, 11.645994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.460102, 14.777790, 11.632782>,  <22.365408, 14.274087, 12.080253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.460102, 14.777790, 11.632782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.587027, 14.458252, 11.428367>,  <22.663181, 14.266529, 11.305717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.587027, 14.458252, 11.428367>,  <22.460102, 14.777790, 11.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.587027, 14.458252, 11.428367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294604, 0.429185, -0.853820,
		0.901399, 0.421483, -0.099157,
		0.317314, -0.798845, -0.511037,
		22.682220, 14.218598, 11.275056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.762188, 15.097451, 11.001167>,  <22.460102, 14.777790, 11.632782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.762188, 15.097451, 11.001167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744749, 14.708343, 10.910116>,  <22.734285, 14.474877, 10.855486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.744749, 14.708343, 10.910116>,  <22.762188, 15.097451, 11.001167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744749, 14.708343, 10.910116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144275, 0.231586, -0.962057,
		0.988577, -0.009100, -0.150442,
		-0.043595, -0.972772, -0.227627,
		22.731670, 14.416511, 10.841828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.262358, 14.955577, 10.447549>,  <22.762188, 15.097451, 11.001167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.262358, 14.955577, 10.447549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.966686, 14.686185, 10.445114>,  <22.789284, 14.524549, 10.443653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.966686, 14.686185, 10.445114>,  <23.262358, 14.955577, 10.447549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.966686, 14.686185, 10.445114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167916, 0.193033, -0.966718,
		0.652240, -0.713557, -0.255774,
		-0.739180, -0.673480, -0.006086,
		22.744932, 14.484141, 10.443288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.435940, 14.490865, 9.868123>,  <23.262358, 14.955577, 10.447549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.435940, 14.490865, 9.868123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042076, 14.470675, 9.934937>,  <22.805758, 14.458561, 9.975024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042076, 14.470675, 9.934937>,  <23.435940, 14.490865, 9.868123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.042076, 14.470675, 9.934937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169659, 0.053181, -0.984067,
		0.040770, -0.997309, -0.060925,
		-0.984659, -0.050457, 0.167034,
		22.746679, 14.455532, 9.985046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.209841, 14.189518, 9.298697>,  <23.435940, 14.490865, 9.868123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.209841, 14.189518, 9.298697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.890707, 14.357992, 9.471237>,  <22.699226, 14.459077, 9.574761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.890707, 14.357992, 9.471237>,  <23.209841, 14.189518, 9.298697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.890707, 14.357992, 9.471237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285845, 0.365674, -0.885763,
		-0.530804, -0.829991, -0.171353,
		-0.797835, 0.421186, 0.431350,
		22.651358, 14.484348, 9.600642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588629, 13.945082, 8.909560>,  <23.209841, 14.189518, 9.298697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588629, 13.945082, 8.909560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.473942, 14.278646, 9.098191>,  <22.405128, 14.478784, 9.211370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.473942, 14.278646, 9.098191>,  <22.588629, 13.945082, 8.909560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.473942, 14.278646, 9.098191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252677, 0.408989, -0.876859,
		-0.924092, -0.370570, 0.093445,
		-0.286720, 0.833910, 0.471578,
		22.387926, 14.528818, 9.239665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.034924, 14.137096, 8.514576>,  <22.588629, 13.945082, 8.909560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.034924, 14.137096, 8.514576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.114231, 14.470048, 8.721587>,  <22.161816, 14.669819, 8.845794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.114231, 14.470048, 8.721587>,  <22.034924, 14.137096, 8.514576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114231, 14.470048, 8.721587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273701, 0.554024, -0.786222,
		-0.941157, 0.014235, 0.337669,
		0.198269, 0.832379, 0.517528,
		22.173712, 14.719762, 8.876845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.435101, 14.492903, 8.389121>,  <22.034924, 14.137096, 8.514576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.435101, 14.492903, 8.389121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740372, 14.735352, 8.478722>,  <21.923534, 14.880821, 8.532482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740372, 14.735352, 8.478722>,  <21.435101, 14.492903, 8.389121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740372, 14.735352, 8.478722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201187, 0.552297, -0.809007,
		-0.614073, 0.572349, 0.543444,
		0.763177, 0.606123, 0.224001,
		21.969324, 14.917189, 8.545922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.196806, 15.061956, 8.068966>,  <21.435101, 14.492903, 8.389121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.196806, 15.061956, 8.068966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589527, 15.119526, 8.118520>,  <21.825161, 15.154067, 8.148252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589527, 15.119526, 8.118520>,  <21.196806, 15.061956, 8.068966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589527, 15.119526, 8.118520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031195, 0.521281, -0.852815,
		-0.187319, 0.841162, 0.507306,
		0.981804, 0.143923, 0.123885,
		21.884068, 15.162703, 8.155685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.209272, 15.741270, 8.158434>,  <21.196806, 15.061956, 8.068966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.209272, 15.741270, 8.158434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575336, 15.628440, 8.043255>,  <21.794975, 15.560742, 7.974147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575336, 15.628440, 8.043255>,  <21.209272, 15.741270, 8.158434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.575336, 15.628440, 8.043255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067265, 0.597469, -0.799066,
		0.397436, 0.750643, 0.527807,
		0.915161, -0.282075, -0.287947,
		21.849884, 15.543818, 7.956871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.556473, 16.400414, 7.992825>,  <21.209272, 15.741270, 8.158434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.556473, 16.400414, 7.992825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771421, 16.108242, 7.824204>,  <21.900391, 15.932940, 7.723032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771421, 16.108242, 7.824204>,  <21.556473, 16.400414, 7.992825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771421, 16.108242, 7.824204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049051, 0.471939, -0.880266,
		0.841917, 0.493708, 0.217779,
		0.537372, -0.730429, -0.421551,
		21.932632, 15.889113, 7.697739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109106, 16.744596, 7.678689>,  <21.556473, 16.400414, 7.992825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109106, 16.744596, 7.678689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054853, 16.389118, 7.503499>,  <22.022301, 16.175831, 7.398385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054853, 16.389118, 7.503499>,  <22.109106, 16.744596, 7.678689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.054853, 16.389118, 7.503499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029682, 0.438218, -0.898379,
		0.990314, -0.134850, -0.033058,
		-0.135633, -0.888696, -0.437976,
		22.014164, 16.122509, 7.372106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.610115, 16.729366, 7.163515>,  <22.109106, 16.744596, 7.678689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.610115, 16.729366, 7.163515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285883, 16.504969, 7.096292>,  <22.091343, 16.370331, 7.055958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285883, 16.504969, 7.096292>,  <22.610115, 16.729366, 7.163515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.285883, 16.504969, 7.096292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046281, 0.347437, -0.936561,
		0.583794, -0.751381, -0.307589,
		-0.810581, -0.560994, -0.168057,
		22.042709, 16.336670, 7.045875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.881031, 16.370413, 6.613467>,  <22.610115, 16.729366, 7.163515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.881031, 16.370413, 6.613467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482771, 16.334557, 6.603327>,  <22.243814, 16.313044, 6.597243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482771, 16.334557, 6.603327>,  <22.881031, 16.370413, 6.613467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.482771, 16.334557, 6.603327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003526, 0.235665, -0.971828,
		0.093088, -0.967691, -0.234325,
		-0.995652, -0.089639, -0.025349,
		22.184076, 16.307665, 6.595723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.783518, 16.128426, 6.001120>,  <22.881031, 16.370413, 6.613467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.783518, 16.128426, 6.001120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.418331, 16.257292, 6.101282>,  <22.199219, 16.334612, 6.161379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.418331, 16.257292, 6.101282>,  <22.783518, 16.128426, 6.001120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.418331, 16.257292, 6.101282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184955, 0.220275, -0.957742,
		-0.363710, -0.920699, -0.141517,
		-0.912966, 0.322167, 0.250405,
		22.144442, 16.353941, 6.176403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.363316, 15.827247, 5.501581>,  <22.783518, 16.128426, 6.001120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.363316, 15.827247, 5.501581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.155003, 16.140211, 5.638178>,  <22.030014, 16.327990, 5.720137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.155003, 16.140211, 5.638178>,  <22.363316, 15.827247, 5.501581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.155003, 16.140211, 5.638178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112781, 0.333458, -0.935995,
		-0.846206, -0.525965, -0.085419,
		-0.520784, 0.782411, 0.341493,
		21.998768, 16.374935, 5.740626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.712767, 15.936953, 5.080873>,  <22.363316, 15.827247, 5.501581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.712767, 15.936953, 5.080873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793545, 16.290150, 5.250363>,  <21.842010, 16.502068, 5.352057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.793545, 16.290150, 5.250363>,  <21.712767, 15.936953, 5.080873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793545, 16.290150, 5.250363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067843, 0.444212, -0.893349,
		-0.977045, 0.151659, 0.149611,
		0.201943, 0.882992, 0.423726,
		21.854128, 16.555048, 5.377481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331175, 16.373081, 4.629866>,  <21.712767, 15.936953, 5.080873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331175, 16.373081, 4.629866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571056, 16.613661, 4.841002>,  <21.714985, 16.758009, 4.967684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571056, 16.613661, 4.841002>,  <21.331175, 16.373081, 4.629866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571056, 16.613661, 4.841002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204777, 0.522310, -0.827803,
		-0.773577, 0.604527, 0.190069,
		0.599704, 0.601448, 0.527840,
		21.750967, 16.794096, 4.999354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.149572, 17.069294, 4.425735>,  <21.331175, 16.373081, 4.629866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.149572, 17.069294, 4.425735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522087, 17.079979, 4.571057>,  <21.745596, 17.086390, 4.658251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522087, 17.079979, 4.571057>,  <21.149572, 17.069294, 4.425735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.522087, 17.079979, 4.571057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313818, 0.447629, -0.837345,
		-0.184996, 0.893820, 0.408487,
		0.931287, 0.026715, 0.363306,
		21.801474, 17.087994, 4.680049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.422123, 17.693336, 4.165997>,  <21.149572, 17.069294, 4.425735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.422123, 17.693336, 4.165997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731342, 17.487320, 4.314118>,  <21.916874, 17.363710, 4.402990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731342, 17.487320, 4.314118>,  <21.422123, 17.693336, 4.165997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731342, 17.487320, 4.314118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552631, 0.260212, -0.791763,
		0.311435, 0.816713, 0.485786,
		0.773050, -0.515043, 0.370302,
		21.963257, 17.332808, 4.425209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023785, 18.075495, 4.048958>,  <21.422123, 17.693336, 4.165997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023785, 18.075495, 4.048958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.154198, 17.701862, 4.107187>,  <22.232445, 17.477682, 4.142124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.154198, 17.701862, 4.107187>,  <22.023785, 18.075495, 4.048958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.154198, 17.701862, 4.107187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844343, 0.218464, -0.489243,
		0.425191, 0.282423, 0.859913,
		0.326033, -0.934083, 0.145573,
		22.252008, 17.421637, 4.150858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.664360, 17.966864, 4.430896>,  <22.023785, 18.075495, 4.048958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.664360, 17.966864, 4.430896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.589153, 17.736668, 4.112535>,  <22.544029, 17.598549, 3.921519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.589153, 17.736668, 4.112535>,  <22.664360, 17.966864, 4.430896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.589153, 17.736668, 4.112535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892619, 0.237933, -0.382909,
		0.409732, -0.782430, 0.468959,
		-0.188019, -0.575492, -0.795901,
		22.532747, 17.564020, 3.873765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.464558, 18.039707, 4.384680>,  <22.664360, 17.966864, 4.430896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.464558, 18.039707, 4.384680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209578, 18.310856, 4.531182>,  <23.056589, 18.473545, 4.619082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.209578, 18.310856, 4.531182>,  <23.464558, 18.039707, 4.384680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.209578, 18.310856, 4.531182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002421, -0.473587, 0.880744,
		0.770486, 0.562319, 0.300248,
		-0.637453, 0.677874, 0.366254,
		23.018341, 18.514217, 4.641058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.797691, 18.396559, 4.929504>,  <23.464558, 18.039707, 4.384680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.797691, 18.396559, 4.929504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.401361, 18.411701, 4.981403>,  <23.163563, 18.420786, 5.012542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.401361, 18.411701, 4.981403>,  <23.797691, 18.396559, 4.929504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.401361, 18.411701, 4.981403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112445, -0.301740, 0.946736,
		0.074989, 0.952638, 0.294715,
		-0.990824, 0.037856, 0.129747,
		23.104115, 18.423058, 5.020327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606762, 18.850754, 5.368952>,  <23.797691, 18.396559, 4.929504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606762, 18.850754, 5.368952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389109, 18.520327, 5.427649>,  <23.258516, 18.322071, 5.462867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389109, 18.520327, 5.427649>,  <23.606762, 18.850754, 5.368952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389109, 18.520327, 5.427649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298799, -0.027366, 0.953924,
		-0.783988, 0.562908, 0.261718,
		-0.544134, -0.826066, 0.146742,
		23.225868, 18.272507, 5.471671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.486675, 19.106661, 6.132304>,  <23.606762, 18.850754, 5.368952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.486675, 19.106661, 6.132304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094522, 19.131104, 6.057349>,  <22.859230, 19.145769, 6.012376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.094522, 19.131104, 6.057349>,  <23.486675, 19.106661, 6.132304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.094522, 19.131104, 6.057349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118739, -0.941952, 0.314050,
		-0.157318, 0.330140, 0.930730,
		-0.980384, 0.061108, -0.187387,
		22.800407, 19.149435, 6.001133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.879015, 18.566410, 6.540013>,  <23.486675, 19.106661, 6.132304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.879015, 18.566410, 6.540013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.521427, 18.410715, 6.628837>,  <23.306873, 18.317299, 6.682132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.521427, 18.410715, 6.628837>,  <23.879015, 18.566410, 6.540013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.521427, 18.410715, 6.628837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269915, -0.072136, 0.960178,
		-0.357719, 0.918309, 0.169548,
		-0.893970, -0.389237, 0.222061,
		23.253237, 18.293943, 6.695456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.709522, 18.945082, 7.232076>,  <23.879015, 18.566410, 6.540013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.709522, 18.945082, 7.232076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531046, 18.590147, 7.185529>,  <23.423960, 18.377186, 7.157600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.531046, 18.590147, 7.185529>,  <23.709522, 18.945082, 7.232076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.531046, 18.590147, 7.185529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279060, -0.261498, 0.923983,
		-0.850316, 0.379801, 0.364299,
		-0.446193, -0.887339, -0.116369,
		23.397188, 18.323946, 7.150618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.336031, 18.861589, 7.911387>,  <23.709522, 18.945082, 7.232076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.336031, 18.861589, 7.911387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.480387, 18.566238, 7.683507>,  <23.566999, 18.389029, 7.546779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.480387, 18.566238, 7.683507>,  <23.336031, 18.861589, 7.911387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.480387, 18.566238, 7.683507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547665, -0.326654, 0.770299,
		-0.754866, -0.589998, 0.286497,
		0.360889, -0.738376, -0.569701,
		23.588654, 18.344725, 7.512597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.303919, 18.211544, 8.315051>,  <23.336031, 18.861589, 7.911387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.303919, 18.211544, 8.315051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585096, 18.203384, 8.030671>,  <23.753803, 18.198488, 7.860043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585096, 18.203384, 8.030671>,  <23.303919, 18.211544, 8.315051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.585096, 18.203384, 8.030671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609887, -0.496994, 0.617280,
		-0.365930, -0.867514, -0.336920,
		0.702946, -0.020398, -0.710951,
		23.795980, 18.197266, 7.817386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.488714, 17.559692, 8.177855>,  <23.303919, 18.211544, 8.315051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.488714, 17.559692, 8.177855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.820040, 17.746567, 8.054156>,  <24.018835, 17.858690, 7.979937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.820040, 17.746567, 8.054156>,  <23.488714, 17.559692, 8.177855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.820040, 17.746567, 8.054156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549204, -0.567940, 0.613041,
		0.110770, -0.677630, -0.727013,
		0.828315, 0.467185, -0.309246,
		24.068535, 17.886723, 7.961382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040783, 17.037132, 7.959501>,  <23.488714, 17.559692, 8.177855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040783, 17.037132, 7.959501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243879, 17.363857, 8.069056>,  <24.365736, 17.559893, 8.134789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.243879, 17.363857, 8.069056>,  <24.040783, 17.037132, 7.959501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.243879, 17.363857, 8.069056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539029, -0.549200, 0.638613,
		0.672047, -0.176616, -0.719138,
		0.507740, 0.816815, 0.273887,
		24.396202, 17.608902, 8.151222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692238, 16.849016, 7.944607>,  <24.040783, 17.037132, 7.959501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692238, 16.849016, 7.944607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687937, 17.182234, 8.165849>,  <24.685356, 17.382164, 8.298594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687937, 17.182234, 8.165849>,  <24.692238, 16.849016, 7.944607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687937, 17.182234, 8.165849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426551, -0.496464, 0.756028,
		0.904400, 0.244055, -0.349998,
		-0.010751, 0.833043, 0.553104,
		24.684711, 17.432146, 8.331779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302275, 16.909037, 8.067965>,  <24.692238, 16.849016, 7.944607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302275, 16.909037, 8.067965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155775, 17.141075, 8.358991>,  <25.067875, 17.280298, 8.533607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155775, 17.141075, 8.358991>,  <25.302275, 16.909037, 8.067965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155775, 17.141075, 8.358991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515829, -0.524188, 0.677604,
		0.774457, 0.623470, -0.107248,
		-0.366248, 0.580097, 0.727564,
		25.045900, 17.315104, 8.577260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903713, 17.209087, 8.541059>,  <25.302275, 16.909037, 8.067965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903713, 17.209087, 8.541059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559753, 17.211411, 8.745233>,  <25.353378, 17.212805, 8.867737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559753, 17.211411, 8.745233>,  <25.903713, 17.209087, 8.541059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559753, 17.211411, 8.745233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470295, -0.379802, 0.796601,
		0.198492, 0.925050, 0.323858,
		-0.859897, 0.005810, 0.510434,
		25.301785, 17.213154, 8.898363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120426, 17.358940, 9.156866>,  <25.903713, 17.209087, 8.541059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120426, 17.358940, 9.156866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771111, 17.170986, 9.208358>,  <25.561522, 17.058214, 9.239253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771111, 17.170986, 9.208358>,  <26.120426, 17.358940, 9.156866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771111, 17.170986, 9.208358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361614, -0.448076, 0.817596,
		-0.326496, 0.760549, 0.561218,
		-0.873290, -0.469886, 0.128730,
		25.509123, 17.030020, 9.246977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062090, 17.410904, 9.915934>,  <26.120426, 17.358940, 9.156866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062090, 17.410904, 9.915934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814373, 17.122684, 9.791171>,  <25.665743, 16.949753, 9.716313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814373, 17.122684, 9.791171>,  <26.062090, 17.410904, 9.915934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814373, 17.122684, 9.791171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217849, -0.539344, 0.813419,
		-0.754332, 0.435797, 0.490983,
		-0.619294, -0.720548, -0.311906,
		25.628584, 16.906521, 9.697599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602139, 17.205526, 10.452616>,  <26.062090, 17.410904, 9.915934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602139, 17.205526, 10.452616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594419, 16.896347, 10.198945>,  <25.589788, 16.710840, 10.046742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594419, 16.896347, 10.198945>,  <25.602139, 17.205526, 10.452616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594419, 16.896347, 10.198945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259695, -0.616398, 0.743379,
		-0.965498, -0.150347, 0.212625,
		-0.019297, -0.772948, -0.634176,
		25.588631, 16.664463, 10.008693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239361, 16.765566, 10.849039>,  <25.602139, 17.205526, 10.452616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239361, 16.765566, 10.849039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418566, 16.550785, 10.563110>,  <25.526089, 16.421917, 10.391553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418566, 16.550785, 10.563110>,  <25.239361, 16.765566, 10.849039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418566, 16.550785, 10.563110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114348, -0.758570, 0.641479,
		-0.886685, -0.369128, -0.278448,
		0.448010, -0.536951, -0.714822,
		25.552969, 16.389700, 10.348663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880291, 16.098915, 10.718946>,  <25.239361, 16.765566, 10.849039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880291, 16.098915, 10.718946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247086, 16.053570, 10.565959>,  <25.467163, 16.026361, 10.474167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247086, 16.053570, 10.565959>,  <24.880291, 16.098915, 10.718946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247086, 16.053570, 10.565959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158400, -0.776469, 0.609922,
		-0.366118, -0.619874, -0.694056,
		0.916988, -0.113365, -0.382467,
		25.522182, 16.019560, 10.451219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900110, 15.386640, 10.584215>,  <24.880291, 16.098915, 10.718946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900110, 15.386640, 10.584215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273092, 15.530491, 10.598030>,  <25.496881, 15.616801, 10.606319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273092, 15.530491, 10.598030>,  <24.900110, 15.386640, 10.584215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273092, 15.530491, 10.598030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230480, -0.665754, 0.709684,
		0.278216, -0.653789, -0.703674,
		0.932456, 0.359628, 0.034538,
		25.552830, 15.638379, 10.608392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299862, 14.745708, 10.739182>,  <24.900110, 15.386640, 10.584215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299862, 14.745708, 10.739182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538067, 15.055173, 10.825727>,  <25.680990, 15.240851, 10.877655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538067, 15.055173, 10.825727>,  <25.299862, 14.745708, 10.739182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538067, 15.055173, 10.825727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497791, -0.566762, 0.656494,
		0.630531, -0.283246, -0.722636,
		0.595512, 0.773662, 0.216363,
		25.716721, 15.287271, 10.890636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944918, 14.486447, 10.566643>,  <25.299862, 14.745708, 10.739182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944918, 14.486447, 10.566643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002340, 14.797731, 10.811193>,  <26.036793, 14.984502, 10.957923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002340, 14.797731, 10.811193>,  <25.944918, 14.486447, 10.566643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002340, 14.797731, 10.811193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515243, -0.586214, 0.625202,
		0.844936, 0.225257, -0.485122,
		0.143554, 0.778211, 0.611375,
		26.045406, 15.031195, 10.994605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693298, 14.485048, 10.840619>,  <25.944918, 14.486447, 10.566643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693298, 14.485048, 10.840619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508251, 14.712817, 11.112426>,  <26.397223, 14.849479, 11.275510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508251, 14.712817, 11.112426>,  <26.693298, 14.485048, 10.840619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508251, 14.712817, 11.112426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637097, -0.319479, 0.701456,
		0.616515, 0.757425, -0.214980,
		-0.462618, 0.569421, 0.679517,
		26.369465, 14.883643, 11.316281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197222, 14.738061, 11.261178>,  <26.693298, 14.485048, 10.840619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197222, 14.738061, 11.261178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870298, 14.794724, 11.484583>,  <26.674145, 14.828723, 11.618626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870298, 14.794724, 11.484583>,  <27.197222, 14.738061, 11.261178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870298, 14.794724, 11.484583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505326, -0.289519, 0.812911,
		0.276857, 0.946632, 0.165043,
		-0.817310, 0.141659, 0.558513,
		26.625105, 14.837222, 11.652137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443233, 15.111900, 11.845292>,  <27.197222, 14.738061, 11.261178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443233, 15.111900, 11.845292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102598, 14.921114, 11.932286>,  <26.898216, 14.806643, 11.984483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102598, 14.921114, 11.932286>,  <27.443233, 15.111900, 11.845292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102598, 14.921114, 11.932286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359830, -0.230167, 0.904182,
		-0.381205, 0.848250, 0.367634,
		-0.851590, -0.476965, 0.217485,
		26.847122, 14.778025, 11.997532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808430, 15.617663, 12.298138>,  <27.443233, 15.111900, 11.845292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808430, 15.617663, 12.298138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112265, 15.877817, 12.295948>,  <28.294565, 16.033909, 12.294635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112265, 15.877817, 12.295948>,  <27.808430, 15.617663, 12.298138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112265, 15.877817, 12.295948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295004, 0.337012, -0.894089,
		-0.579657, 0.680752, 0.447856,
		0.759585, 0.650384, -0.005473,
		28.340139, 16.072933, 12.294306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175148, 15.308811, 12.850775>,  <27.808430, 15.617663, 12.298138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175148, 15.308811, 12.850775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246162, 15.074058, 13.166761>,  <28.288771, 14.933206, 13.356354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246162, 15.074058, 13.166761>,  <28.175148, 15.308811, 12.850775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246162, 15.074058, 13.166761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978555, -0.020077, 0.205005,
		-0.104454, -0.809422, -0.577863,
		0.177538, -0.586884, 0.789967,
		28.299423, 14.897992, 13.403751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603275, 15.028309, 12.940386>,  <28.175148, 15.308811, 12.850775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603275, 15.028309, 12.940386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771582, 14.939460, 13.292209>,  <27.872564, 14.886150, 13.503303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771582, 14.939460, 13.292209>,  <27.603275, 15.028309, 12.940386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771582, 14.939460, 13.292209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897409, -0.243767, 0.367743,
		0.132723, -0.944055, -0.301902,
		0.420764, -0.222122, 0.879557,
		27.897810, 14.872823, 13.556076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213669, 14.444711, 13.141929>,  <27.603275, 15.028309, 12.940386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213669, 14.444711, 13.141929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400030, 14.616951, 13.451126>,  <27.511847, 14.720295, 13.636644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400030, 14.616951, 13.451126>,  <27.213669, 14.444711, 13.141929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400030, 14.616951, 13.451126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818899, -0.121084, 0.561020,
		0.335173, -0.894383, 0.296206,
		0.465901, 0.430601, 0.772993,
		27.539801, 14.746131, 13.683024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077997, 14.064913, 13.722960>,  <27.213669, 14.444711, 13.141929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077997, 14.064913, 13.722960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189444, 14.418460, 13.873240>,  <27.256311, 14.630589, 13.963407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189444, 14.418460, 13.873240>,  <27.077997, 14.064913, 13.722960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189444, 14.418460, 13.873240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786854, -0.014215, 0.616975,
		0.550665, -0.467519, 0.691515,
		0.278618, 0.883869, 0.375697,
		27.273029, 14.683620, 13.985949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087875, 14.024035, 14.451276>,  <27.077997, 14.064913, 13.722960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087875, 14.024035, 14.451276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028406, 14.408787, 14.359466>,  <26.992725, 14.639638, 14.304379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028406, 14.408787, 14.359466>,  <27.087875, 14.024035, 14.451276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028406, 14.408787, 14.359466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730054, 0.049798, 0.681572,
		0.667021, 0.268897, 0.694822,
		-0.148672, 0.961881, -0.229526,
		26.983805, 14.697351, 14.290607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150217, 14.525914, 15.061911>,  <27.087875, 14.024035, 14.451276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150217, 14.525914, 15.061911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909170, 14.689769, 14.787961>,  <26.764542, 14.788082, 14.623591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909170, 14.689769, 14.787961>,  <27.150217, 14.525914, 15.061911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909170, 14.689769, 14.787961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710805, 0.114615, 0.693988,
		0.362780, 0.905020, 0.222103,
		-0.602616, 0.409637, -0.684873,
		26.728386, 14.812660, 14.582500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030033, 15.170722, 15.236500>,  <27.150217, 14.525914, 15.061911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030033, 15.170722, 15.236500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728933, 15.020061, 15.020537>,  <26.548273, 14.929664, 14.890960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728933, 15.020061, 15.020537>,  <27.030033, 15.170722, 15.236500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728933, 15.020061, 15.020537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617212, 0.118576, 0.777811,
		-0.228946, 0.918734, -0.321733,
		-0.752751, -0.376654, -0.539906,
		26.503109, 14.907064, 14.858565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.018641, 19.534155, 20.680519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.637671, 19.412249, 20.680508>,  <12.409088, 19.339104, 20.680502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.637671, 19.412249, 20.680508>,  <13.018641, 19.534155, 20.680519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637671, 19.412249, 20.680508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216254, -0.675753, -0.704693,
		0.214750, -0.671174, 0.709512,
		-0.952427, -0.304768, -0.000027,
		12.351942, 19.320818, 20.680500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059667, 18.791105, 20.515921>,  <13.018641, 19.534155, 20.680519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059667, 18.791105, 20.515921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.669198, 18.845945, 20.448641>,  <12.434916, 18.878849, 20.408274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.669198, 18.845945, 20.448641>,  <13.059667, 18.791105, 20.515921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.669198, 18.845945, 20.448641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006962, -0.794507, -0.607215,
		-0.216885, -0.591575, 0.776531,
		-0.976172, 0.137102, -0.168198,
		12.376347, 18.887075, 20.398182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.807121, 18.153965, 20.609558>,  <13.059667, 18.791105, 20.515921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.807121, 18.153965, 20.609558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.567575, 18.369556, 20.372625>,  <12.423846, 18.498911, 20.230465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.567575, 18.369556, 20.372625>,  <12.807121, 18.153965, 20.609558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567575, 18.369556, 20.372625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068501, -0.771396, -0.632658,
		-0.797913, -0.338303, 0.498885,
		-0.598867, 0.538980, -0.592332,
		12.387915, 18.531250, 20.194925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102004, 17.878510, 20.558908>,  <12.807121, 18.153965, 20.609558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102004, 17.878510, 20.558908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.191619, 18.090960, 20.232054>,  <12.245388, 18.218430, 20.035940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.191619, 18.090960, 20.232054>,  <12.102004, 17.878510, 20.558908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191619, 18.090960, 20.232054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090136, -0.846148, -0.525272,
		-0.970403, 0.044027, -0.237442,
		0.224037, 0.531127, -0.817136,
		12.258830, 18.250298, 19.986914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.698015, 17.482721, 20.121313>,  <12.102004, 17.878510, 20.558908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.698015, 17.482721, 20.121313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.945992, 17.691303, 19.886789>,  <12.094778, 17.816452, 19.746075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.945992, 17.691303, 19.886789>,  <11.698015, 17.482721, 20.121313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.945992, 17.691303, 19.886789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135628, -0.664765, -0.734638,
		-0.772837, 0.534953, -0.341392,
		0.619942, 0.521453, -0.586310,
		12.131975, 17.847738, 19.710896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.394678, 17.560135, 19.436832>,  <11.698015, 17.482721, 20.121313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.394678, 17.560135, 19.436832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.784590, 17.625635, 19.376179>,  <12.018537, 17.664934, 19.339787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.784590, 17.625635, 19.376179>,  <11.394678, 17.560135, 19.436832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.784590, 17.625635, 19.376179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023329, -0.600958, -0.798940,
		-0.221952, 0.782327, -0.581981,
		0.974779, 0.163749, -0.151635,
		12.077024, 17.674761, 19.330688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.453444, 17.670437, 18.729626>,  <11.394678, 17.560135, 19.436832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.453444, 17.670437, 18.729626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.820205, 17.567373, 18.851545>,  <12.040261, 17.505535, 18.924698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.820205, 17.567373, 18.851545>,  <11.453444, 17.670437, 18.729626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820205, 17.567373, 18.851545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129014, -0.531351, -0.837270,
		0.377687, 0.807018, -0.453955,
		0.916901, -0.257660, 0.304801,
		12.095275, 17.490076, 18.942986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.794379, 17.650259, 18.085682>,  <11.453444, 17.670437, 18.729626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.794379, 17.650259, 18.085682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.032425, 17.437582, 18.326727>,  <12.175253, 17.309977, 18.471354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.032425, 17.437582, 18.326727>,  <11.794379, 17.650259, 18.085682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.032425, 17.437582, 18.326727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314783, -0.535714, -0.783532,
		0.739425, 0.655984, -0.151445,
		0.595115, -0.531691, 0.602613,
		12.210959, 17.278074, 18.507511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441583, 17.609566, 17.709919>,  <11.794379, 17.650259, 18.085682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441583, 17.609566, 17.709919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.448393, 17.317980, 17.983654>,  <12.452478, 17.143028, 18.147896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.448393, 17.317980, 17.983654>,  <12.441583, 17.609566, 17.709919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.448393, 17.317980, 17.983654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494966, -0.588543, -0.639238,
		0.868745, 0.349607, 0.350794,
		0.017025, -0.728966, 0.684338,
		12.453500, 17.099291, 18.188955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151064, 17.373724, 17.903492>,  <12.441583, 17.609566, 17.709919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151064, 17.373724, 17.903492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.917661, 17.051361, 17.943554>,  <12.777619, 16.857943, 17.967590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.917661, 17.051361, 17.943554>,  <13.151064, 17.373724, 17.903492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.917661, 17.051361, 17.943554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597773, -0.509705, -0.618764,
		0.549716, -0.301184, 0.779167,
		-0.583507, -0.805909, 0.100153,
		12.742609, 16.809589, 17.973600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.611652, 16.916508, 17.884874>,  <13.151064, 17.373724, 17.903492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.611652, 16.916508, 17.884874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.267301, 16.723055, 17.821646>,  <13.060689, 16.606983, 17.783709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.267301, 16.723055, 17.821646>,  <13.611652, 16.916508, 17.884874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267301, 16.723055, 17.821646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431124, -0.528356, -0.731418,
		0.270218, -0.697812, 0.663356,
		-0.860880, -0.483631, -0.158072,
		13.009037, 16.577965, 17.774223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851581, 16.288025, 17.963436>,  <13.611652, 16.916508, 17.884874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851581, 16.288025, 17.963436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.503669, 16.263075, 17.767643>,  <13.294922, 16.248106, 17.650167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.503669, 16.263075, 17.767643>,  <13.851581, 16.288025, 17.963436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503669, 16.263075, 17.767643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426073, -0.595284, -0.681248,
		-0.248889, -0.801091, 0.544342,
		-0.869779, -0.062374, -0.489483,
		13.242735, 16.244362, 17.620798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851754, 15.572001, 17.617334>,  <13.851581, 16.288025, 17.963436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851754, 15.572001, 17.617334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.557289, 15.756393, 17.419119>,  <13.380610, 15.867029, 17.300190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.557289, 15.756393, 17.419119>,  <13.851754, 15.572001, 17.617334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.557289, 15.756393, 17.419119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273463, -0.467153, -0.840824,
		-0.619098, -0.754496, 0.217839,
		-0.736162, 0.460982, -0.495540,
		13.336440, 15.894688, 17.270456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.426857, 15.057261, 17.312115>,  <13.851754, 15.572001, 17.617334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.426857, 15.057261, 17.312115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.343699, 15.403680, 17.130239>,  <13.293803, 15.611531, 17.021114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.343699, 15.403680, 17.130239>,  <13.426857, 15.057261, 17.312115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343699, 15.403680, 17.130239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017992, -0.468152, -0.883465,
		-0.977986, -0.175488, 0.112909,
		-0.207896, 0.866047, -0.454689,
		13.281330, 15.663494, 16.993834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.032453, 14.817162, 16.799551>,  <13.426857, 15.057261, 17.312115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.032453, 14.817162, 16.799551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.133992, 15.183919, 16.676350>,  <13.194916, 15.403974, 16.602428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.133992, 15.183919, 16.676350>,  <13.032453, 14.817162, 16.799551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.133992, 15.183919, 16.676350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033287, -0.326525, -0.944602,
		-0.966671, 0.229534, -0.113409,
		0.253849, 0.916894, -0.308002,
		13.210147, 15.458987, 16.583948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627577, 14.961149, 16.240711>,  <13.032453, 14.817162, 16.799551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627577, 14.961149, 16.240711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.969487, 15.167678, 16.219650>,  <13.174633, 15.291595, 16.207014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.969487, 15.167678, 16.219650>,  <12.627577, 14.961149, 16.240711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.969487, 15.167678, 16.219650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066875, -0.210174, -0.975374,
		-0.514672, 0.830204, -0.214181,
		0.854775, 0.516321, -0.052651,
		13.225920, 15.322575, 16.203856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523798, 15.399548, 15.533698>,  <12.627577, 14.961149, 16.240711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523798, 15.399548, 15.533698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.914858, 15.375349, 15.614238>,  <13.149494, 15.360830, 15.662561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.914858, 15.375349, 15.614238>,  <12.523798, 15.399548, 15.533698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.914858, 15.375349, 15.614238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173099, -0.311939, -0.934201,
		0.119324, 0.948174, -0.294495,
		0.977650, -0.060495, 0.201350,
		13.208153, 15.357201, 15.674643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.817197, 15.662838, 14.933425>,  <12.523798, 15.399548, 15.533698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.817197, 15.662838, 14.933425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.142122, 15.494326, 15.094754>,  <13.337077, 15.393218, 15.191551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.142122, 15.494326, 15.094754>,  <12.817197, 15.662838, 14.933425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.142122, 15.494326, 15.094754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279305, -0.326083, -0.903138,
		0.511992, 0.846281, -0.147216,
		0.812313, -0.421281, 0.403323,
		13.385817, 15.367941, 15.215751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445470, 15.851762, 14.520331>,  <12.817197, 15.662838, 14.933425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445470, 15.851762, 14.520331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.537590, 15.510354, 14.707293>,  <13.592862, 15.305510, 14.819469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.537590, 15.510354, 14.707293>,  <13.445470, 15.851762, 14.520331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.537590, 15.510354, 14.707293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206335, -0.426563, -0.880608,
		0.950993, 0.299245, 0.077873,
		0.230300, -0.853520, 0.467403,
		13.606680, 15.254298, 14.847513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192339, 15.731541, 14.332029>,  <13.445470, 15.851762, 14.520331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192339, 15.731541, 14.332029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.065475, 15.374863, 14.461205>,  <13.989356, 15.160856, 14.538712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.065475, 15.374863, 14.461205>,  <14.192339, 15.731541, 14.332029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065475, 15.374863, 14.461205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283199, -0.414034, -0.865086,
		0.905101, -0.182914, 0.383842,
		-0.317160, -0.891694, 0.322941,
		13.970326, 15.107354, 14.558087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872972, 15.273908, 14.309039>,  <14.192339, 15.731541, 14.332029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872972, 15.273908, 14.309039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.555239, 15.031557, 14.291381>,  <14.364598, 14.886147, 14.280787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.555239, 15.031557, 14.291381>,  <14.872972, 15.273908, 14.309039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555239, 15.031557, 14.291381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410956, -0.482421, -0.773554,
		0.447381, -0.632601, 0.632192,
		-0.794333, -0.605876, -0.044144,
		14.316938, 14.849794, 14.278137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.053481, 14.678597, 13.875226>,  <14.872972, 15.273908, 14.309039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.053481, 14.678597, 13.875226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.653928, 14.681306, 13.856531>,  <14.414196, 14.682931, 13.845314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.653928, 14.681306, 13.856531>,  <15.053481, 14.678597, 13.875226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653928, 14.681306, 13.856531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027793, -0.715842, -0.697709,
		-0.038182, -0.698230, 0.714855,
		-0.998884, 0.006772, -0.046738,
		14.354262, 14.683337, 13.842509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660391, 14.266992, 14.210680>,  <15.053481, 14.678597, 13.875226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660391, 14.266992, 14.210680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.010958, 14.452220, 14.263535>,  <16.221298, 14.563356, 14.295247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.010958, 14.452220, 14.263535>,  <15.660391, 14.266992, 14.210680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010958, 14.452220, 14.263535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150480, 0.002706, 0.988609,
		0.457438, -0.886318, 0.072054,
		0.876417, 0.463070, 0.132136,
		16.273882, 14.591141, 14.303175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934854, 13.956836, 14.798308>,  <15.660391, 14.266992, 14.210680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934854, 13.956836, 14.798308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.145376, 14.295496, 14.766854>,  <16.271690, 14.498693, 14.747982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.145376, 14.295496, 14.766854>,  <15.934854, 13.956836, 14.798308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145376, 14.295496, 14.766854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105986, 0.026437, 0.994016,
		0.843664, -0.531491, -0.075819,
		0.526306, 0.846651, -0.078634,
		16.303268, 14.549491, 14.743264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.520557, 13.931198, 15.346356>,  <15.934854, 13.956836, 14.798308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.520557, 13.931198, 15.346356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.428892, 14.309018, 15.252286>,  <16.373892, 14.535710, 15.195844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.428892, 14.309018, 15.252286>,  <16.520557, 13.931198, 15.346356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428892, 14.309018, 15.252286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162114, 0.275267, 0.947601,
		0.959793, 0.179032, -0.216206,
		-0.229166, 0.944550, -0.235176,
		16.360142, 14.592383, 15.181733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029829, 14.344173, 15.729719>,  <16.520557, 13.931198, 15.346356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029829, 14.344173, 15.729719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.729370, 14.594591, 15.645961>,  <16.549095, 14.744842, 15.595706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.729370, 14.594591, 15.645961>,  <17.029829, 14.344173, 15.729719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729370, 14.594591, 15.645961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068304, 0.389206, 0.918615,
		0.656592, 0.675713, -0.335112,
		-0.751147, 0.626044, -0.209395,
		16.504026, 14.782405, 15.583142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287445, 15.008941, 15.996324>,  <17.029829, 14.344173, 15.729719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287445, 15.008941, 15.996324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.890163, 15.052356, 15.979506>,  <16.651794, 15.078405, 15.969417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.890163, 15.052356, 15.979506>,  <17.287445, 15.008941, 15.996324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890163, 15.052356, 15.979506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013096, 0.463109, 0.886204,
		0.115658, 0.879630, -0.461383,
		-0.993203, 0.108538, -0.042043,
		16.592203, 15.084917, 15.966894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.142012, 15.650014, 16.270622>,  <17.287445, 15.008941, 15.996324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.142012, 15.650014, 16.270622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.769760, 15.504817, 16.289223>,  <16.546410, 15.417699, 16.300383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.769760, 15.504817, 16.289223>,  <17.142012, 15.650014, 16.270622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769760, 15.504817, 16.289223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055974, 0.266759, 0.962136,
		-0.361654, 0.892791, -0.268572,
		-0.930631, -0.362993, 0.046502,
		16.490570, 15.395919, 16.303173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690287, 16.170675, 16.533649>,  <17.142012, 15.650014, 16.270622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.690287, 16.170675, 16.533649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.454182, 15.852295, 16.587389>,  <16.312519, 15.661266, 16.619633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.454182, 15.852295, 16.587389>,  <16.690287, 16.170675, 16.533649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.454182, 15.852295, 16.587389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284067, 0.360615, 0.888405,
		-0.755577, 0.486228, -0.438961,
		-0.590263, -0.795952, 0.134351,
		16.277103, 15.613509, 16.627695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988638, 16.447302, 16.582533>,  <16.690287, 16.170675, 16.533649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988638, 16.447302, 16.582533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.011564, 16.092785, 16.766361>,  <16.025320, 15.880075, 16.876657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.011564, 16.092785, 16.766361>,  <15.988638, 16.447302, 16.582533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011564, 16.092785, 16.766361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020504, 0.459184, 0.888105,
		-0.998146, -0.060327, 0.008146,
		0.057317, -0.886291, 0.459569,
		16.028759, 15.826898, 16.904232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.537354, 16.486256, 17.157570>,  <15.988638, 16.447302, 16.582533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.537354, 16.486256, 17.157570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763686, 16.174923, 17.266411>,  <15.899486, 15.988124, 17.331715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763686, 16.174923, 17.266411>,  <15.537354, 16.486256, 17.157570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763686, 16.174923, 17.266411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007106, 0.325396, 0.945551,
		-0.824492, -0.536953, 0.178588,
		0.565829, -0.778330, 0.272102,
		15.933434, 15.941423, 17.348042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211698, 16.223579, 17.722273>,  <15.537354, 16.486256, 17.157570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211698, 16.223579, 17.722273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587502, 16.094128, 17.767149>,  <15.812984, 16.016457, 17.794075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.587502, 16.094128, 17.767149>,  <15.211698, 16.223579, 17.722273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587502, 16.094128, 17.767149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016982, 0.371141, 0.928421,
		-0.342103, -0.870355, 0.354186,
		0.939509, -0.323631, 0.112188,
		15.869354, 15.997039, 17.800806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254033, 15.898518, 18.316015>,  <15.211698, 16.223579, 17.722273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254033, 15.898518, 18.316015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.641082, 15.984365, 18.262877>,  <15.873311, 16.035873, 18.230993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.641082, 15.984365, 18.262877>,  <15.254033, 15.898518, 18.316015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641082, 15.984365, 18.262877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043969, 0.374954, 0.926000,
		0.248547, -0.901859, 0.353377,
		0.967622, 0.214617, -0.132847,
		15.931368, 16.048750, 18.223022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574359, 15.758776, 18.980078>,  <15.254033, 15.898518, 18.316015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574359, 15.758776, 18.980078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.840547, 15.972392, 18.771482>,  <16.000259, 16.100561, 18.646324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.840547, 15.972392, 18.771482>,  <15.574359, 15.758776, 18.980078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840547, 15.972392, 18.771482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005246, 0.701978, 0.712179,
		0.746410, -0.471195, 0.469944,
		0.665466, 0.534043, -0.521492,
		16.040188, 16.132605, 18.615036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947316, 16.005234, 19.660715>,  <15.574359, 15.758776, 18.980078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.947316, 16.005234, 19.660715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054430, 16.223074, 19.342796>,  <16.118698, 16.353779, 19.152046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054430, 16.223074, 19.342796>,  <15.947316, 16.005234, 19.660715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054430, 16.223074, 19.342796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169208, 0.785518, 0.595256,
		0.948504, -0.293886, 0.118198,
		0.267784, 0.544603, -0.794795,
		16.134766, 16.386456, 19.104359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708754, 16.179512, 19.795254>,  <15.947316, 16.005234, 19.660715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708754, 16.179512, 19.795254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474432, 16.419950, 19.577808>,  <16.333839, 16.564213, 19.447342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.474432, 16.419950, 19.577808>,  <16.708754, 16.179512, 19.795254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474432, 16.419950, 19.577808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236414, 0.768322, 0.594802,
		0.775203, 0.219921, -0.592195,
		-0.585806, 0.601096, -0.543613,
		16.298691, 16.600279, 19.414724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883131, 16.831047, 20.007301>,  <16.708754, 16.179512, 19.795254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883131, 16.831047, 20.007301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.543613, 16.913136, 19.812393>,  <16.339903, 16.962389, 19.695448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.543613, 16.913136, 19.812393>,  <16.883131, 16.831047, 20.007301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543613, 16.913136, 19.812393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094174, 0.848181, 0.521268,
		0.520271, 0.488337, -0.700604,
		-0.848793, 0.205222, -0.487272,
		16.288975, 16.974703, 19.666212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841824, 17.624254, 20.106676>,  <16.883131, 16.831047, 20.007301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841824, 17.624254, 20.106676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.469976, 17.520716, 20.001749>,  <16.246868, 17.458593, 19.938793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.469976, 17.520716, 20.001749>,  <16.841824, 17.624254, 20.106676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.469976, 17.520716, 20.001749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354675, 0.821713, 0.446086,
		0.100082, 0.507726, -0.855685,
		-0.929618, -0.258845, -0.262316,
		16.191092, 17.443062, 19.923054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.522055, 18.240852, 19.967203>,  <16.841824, 17.624254, 20.106676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.522055, 18.240852, 19.967203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.218437, 17.990080, 20.037411>,  <16.036266, 17.839617, 20.079535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.218437, 17.990080, 20.037411>,  <16.522055, 18.240852, 19.967203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.218437, 17.990080, 20.037411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367265, 0.634942, 0.679680,
		-0.537557, 0.451446, -0.712200,
		-0.759045, -0.626933, 0.175517,
		15.990724, 17.802000, 20.090067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931660, 18.608530, 19.946907>,  <16.522055, 18.240852, 19.967203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931660, 18.608530, 19.946907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.785789, 18.296041, 20.149570>,  <15.698267, 18.108547, 20.271168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.785789, 18.296041, 20.149570>,  <15.931660, 18.608530, 19.946907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.785789, 18.296041, 20.149570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370515, 0.620945, 0.690757,
		-0.854242, 0.064178, -0.515899,
		-0.364676, -0.781222, 0.506659,
		15.676387, 18.061674, 20.301569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.230027, 18.746710, 20.043123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.280111, 18.477863, 20.335035>,  <15.310162, 18.316555, 20.510183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.280111, 18.477863, 20.335035>,  <15.230027, 18.746710, 20.043123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280111, 18.477863, 20.335035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601756, 0.533376, 0.594475,
		-0.788804, -0.513585, -0.337665,
		0.125211, -0.672116, 0.729782,
		15.317675, 18.276228, 20.553970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517219, 18.576107, 20.361704>,  <15.230027, 18.746710, 20.043123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517219, 18.576107, 20.361704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.804678, 18.479597, 20.622574>,  <14.977154, 18.421692, 20.779095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.804678, 18.479597, 20.622574>,  <14.517219, 18.576107, 20.361704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804678, 18.479597, 20.622574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446852, 0.558362, 0.698967,
		-0.532791, -0.793737, 0.293453,
		0.718649, -0.241274, 0.652173,
		15.020273, 18.407215, 20.818226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183276, 18.237133, 20.867264>,  <14.517219, 18.576107, 20.361704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183276, 18.237133, 20.867264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.511471, 18.353958, 21.063835>,  <14.708387, 18.424053, 21.181778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.511471, 18.353958, 21.063835>,  <14.183276, 18.237133, 20.867264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.511471, 18.353958, 21.063835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568565, 0.506323, 0.648360,
		-0.059460, -0.811380, 0.581487,
		0.820487, 0.292062, 0.491428,
		14.757617, 18.441576, 21.211264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.030518, 18.220695, 21.487076>,  <14.183276, 18.237133, 20.867264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.030518, 18.220695, 21.487076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.347789, 18.463861, 21.501522>,  <14.538152, 18.609762, 21.510191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.347789, 18.463861, 21.501522>,  <14.030518, 18.220695, 21.487076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.347789, 18.463861, 21.501522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460367, 0.559727, 0.689034,
		0.398659, -0.563155, 0.723828,
		0.793180, 0.607916, 0.036118,
		14.585742, 18.646236, 21.512358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.014131, 18.409370, 22.163057>,  <14.030518, 18.220695, 21.487076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.014131, 18.409370, 22.163057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.270092, 18.673664, 22.006109>,  <14.423669, 18.832241, 21.911942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.270092, 18.673664, 22.006109>,  <14.014131, 18.409370, 22.163057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270092, 18.673664, 22.006109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326108, 0.695827, 0.639904,
		0.695827, -0.281523, 0.660733,
		-0.639904, -0.660733, 0.392369,
		14.462064, 18.871883, 21.888399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444500, 18.789627, 22.759909>,  <14.014131, 18.409370, 22.163057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444500, 18.789627, 22.759909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.411311, 19.012249, 22.429245>,  <14.391397, 19.145823, 22.230846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.411311, 19.012249, 22.429245>,  <14.444500, 18.789627, 22.759909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411311, 19.012249, 22.429245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260863, 0.788464, 0.557023,
		0.961804, 0.261862, 0.079763,
		-0.082973, 0.556554, -0.826658,
		14.386419, 19.179214, 22.181248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.909948, 19.388893, 22.905235>,  <14.444500, 18.789627, 22.759909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.909948, 19.388893, 22.905235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.667193, 19.517347, 22.614426>,  <14.521541, 19.594419, 22.439939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.667193, 19.517347, 22.614426>,  <14.909948, 19.388893, 22.905235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667193, 19.517347, 22.614426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107058, 0.873371, 0.475144,
		0.787545, 0.366192, -0.495658,
		-0.606887, 0.321133, -0.727022,
		14.485127, 19.613688, 22.396318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184106, 19.985945, 22.659607>,  <14.909948, 19.388893, 22.905235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184106, 19.985945, 22.659607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.792116, 19.972425, 22.581114>,  <14.556922, 19.964314, 22.534018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.792116, 19.972425, 22.581114>,  <15.184106, 19.985945, 22.659607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792116, 19.972425, 22.581114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110186, 0.912893, 0.393047,
		0.165854, 0.406798, -0.898336,
		-0.979975, -0.033796, -0.196231,
		14.498123, 19.962286, 22.522245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.082799, 20.524649, 23.075249>,  <15.184106, 19.985945, 22.659607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.082799, 20.524649, 23.075249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.717515, 20.411669, 22.957760>,  <14.498344, 20.343882, 22.887266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.717515, 20.411669, 22.957760>,  <15.082799, 20.524649, 23.075249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717515, 20.411669, 22.957760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402811, 0.734644, 0.545932,
		0.061582, 0.616864, -0.784657,
		-0.913209, -0.282449, -0.293720,
		14.443552, 20.326935, 22.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711272, 21.179878, 22.800533>,  <15.082799, 20.524649, 23.075249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711272, 21.179878, 22.800533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.441245, 20.909231, 22.918158>,  <14.279229, 20.746843, 22.988731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.441245, 20.909231, 22.918158>,  <14.711272, 21.179878, 22.800533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.441245, 20.909231, 22.918158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531738, 0.722533, 0.441815,
		-0.511408, 0.141892, -0.847542,
		-0.675068, -0.676618, 0.294060,
		14.238725, 20.706245, 23.006376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036328, 21.465147, 22.690290>,  <14.711272, 21.179878, 22.800533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036328, 21.465147, 22.690290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.989943, 21.193872, 22.980562>,  <13.962111, 21.031107, 23.154726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.989943, 21.193872, 22.980562>,  <14.036328, 21.465147, 22.690290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.989943, 21.193872, 22.980562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584059, 0.637508, 0.502452,
		-0.803385, -0.365575, -0.470030,
		-0.115963, -0.678188, 0.725681,
		13.955153, 20.990416, 23.198267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289863, 21.481047, 22.979479>,  <14.036328, 21.465147, 22.690290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289863, 21.481047, 22.979479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.514365, 21.312893, 23.264650>,  <13.649067, 21.212002, 23.435753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.514365, 21.312893, 23.264650>,  <13.289863, 21.481047, 22.979479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.514365, 21.312893, 23.264650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392775, 0.622928, 0.676527,
		-0.728504, -0.659726, 0.184507,
		0.561257, -0.420383, 0.712930,
		13.682742, 21.186777, 23.478529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.068411, 21.607054, 23.631023>,  <13.289863, 21.481047, 22.979479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.068411, 21.607054, 23.631023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.380592, 21.449821, 23.825499>,  <13.567902, 21.355482, 23.942184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.380592, 21.449821, 23.825499>,  <13.068411, 21.607054, 23.631023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380592, 21.449821, 23.825499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409538, 0.266164, 0.872602,
		-0.472409, -0.880139, 0.046747,
		0.780454, -0.393080, 0.486189,
		13.614729, 21.331898, 23.971355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795037, 21.203821, 24.129370>,  <13.068411, 21.607054, 23.631023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795037, 21.203821, 24.129370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.172782, 21.290356, 24.228470>,  <13.399428, 21.342276, 24.287930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.172782, 21.290356, 24.228470>,  <12.795037, 21.203821, 24.129370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172782, 21.290356, 24.228470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316310, 0.390845, 0.864401,
		0.090167, -0.894673, 0.437527,
		0.944361, 0.216335, 0.247752,
		13.456090, 21.355257, 24.302795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.807056, 21.008785, 24.924620>,  <12.795037, 21.203821, 24.129370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.807056, 21.008785, 24.924620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.123429, 21.241159, 24.847736>,  <13.313252, 21.380583, 24.801605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.123429, 21.241159, 24.847736>,  <12.807056, 21.008785, 24.924620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.123429, 21.241159, 24.847736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202576, 0.544994, 0.813600,
		0.577404, -0.604561, 0.548735,
		0.790928, 0.580936, -0.192213,
		13.360708, 21.415440, 24.790073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970019, 21.049019, 25.594803>,  <12.807056, 21.008785, 24.924620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.970019, 21.049019, 25.594803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.206251, 21.311903, 25.407490>,  <13.347990, 21.469633, 25.295101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.206251, 21.311903, 25.407490>,  <12.970019, 21.049019, 25.594803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.206251, 21.311903, 25.407490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029596, 0.562261, 0.826430,
		0.806437, -0.501932, 0.312609,
		0.590580, 0.657211, -0.468283,
		13.383425, 21.509066, 25.267004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.516415, 21.272787, 26.025375>,  <12.970019, 21.049019, 25.594803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.516415, 21.272787, 26.025375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.481495, 21.565403, 25.754902>,  <13.460543, 21.740973, 25.592617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.481495, 21.565403, 25.754902>,  <13.516415, 21.272787, 26.025375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.481495, 21.565403, 25.754902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018764, 0.677449, 0.735330,
		0.996005, 0.076882, -0.045415,
		-0.087300, 0.731541, -0.676186,
		13.455305, 21.784864, 25.552046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959155, 21.768501, 26.223602>,  <13.516415, 21.272787, 26.025375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.959155, 21.768501, 26.223602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.701342, 21.963785, 25.988237>,  <13.546654, 22.080956, 25.847017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.701342, 21.963785, 25.988237>,  <13.959155, 21.768501, 26.223602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.701342, 21.963785, 25.988237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069034, 0.729290, 0.680712,
		0.761454, 0.479362, -0.436349,
		-0.644533, 0.488208, -0.588413,
		13.507982, 22.110249, 25.811714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.188985, 22.519163, 26.230856>,  <13.959155, 21.768501, 26.223602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.188985, 22.519163, 26.230856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.795310, 22.507809, 26.160917>,  <13.559105, 22.500996, 26.118954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.795310, 22.507809, 26.160917>,  <14.188985, 22.519163, 26.230856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795310, 22.507809, 26.160917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144043, 0.702761, 0.696691,
		0.103099, 0.710860, -0.695736,
		-0.984186, -0.028387, -0.174848,
		13.500054, 22.499292, 26.108463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.968274, 23.135523, 26.498140>,  <14.188985, 22.519163, 26.230856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.968274, 23.135523, 26.498140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.628705, 22.930637, 26.446037>,  <13.424963, 22.807707, 26.414776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.628705, 22.930637, 26.446037>,  <13.968274, 23.135523, 26.498140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.628705, 22.930637, 26.446037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409837, 0.482369, 0.774179,
		-0.333711, 0.710604, -0.619418,
		-0.848923, -0.512213, -0.130259,
		13.374028, 22.776974, 26.406960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.365165, 23.629259, 26.492477>,  <13.968274, 23.135523, 26.498140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.365165, 23.629259, 26.492477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.207510, 23.279507, 26.605694>,  <13.112917, 23.069654, 26.673624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.207510, 23.279507, 26.605694>,  <13.365165, 23.629259, 26.492477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.207510, 23.279507, 26.605694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476737, 0.457808, 0.750422,
		-0.785735, 0.160832, -0.597289,
		-0.394136, -0.874382, 0.283041,
		13.089270, 23.017193, 26.690607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.642744, 23.769508, 26.659536>,  <13.365165, 23.629259, 26.492477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.642744, 23.769508, 26.659536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.752687, 23.438122, 26.854715>,  <12.818653, 23.239288, 26.971823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.752687, 23.438122, 26.854715>,  <12.642744, 23.769508, 26.659536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752687, 23.438122, 26.854715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480345, 0.321305, 0.816108,
		-0.832900, -0.458697, -0.309638,
		0.274858, -0.828469, 0.487947,
		12.835145, 23.189581, 27.001099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.056469, 23.436722, 26.855742>,  <12.642744, 23.769508, 26.659536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.056469, 23.436722, 26.855742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.357882, 23.361834, 27.107815>,  <12.538731, 23.316900, 27.259060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.357882, 23.361834, 27.107815>,  <12.056469, 23.436722, 26.855742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.357882, 23.361834, 27.107815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465763, 0.524465, 0.712742,
		-0.463950, -0.830593, 0.308002,
		0.753535, -0.187221, 0.630185,
		12.583943, 23.305668, 27.296871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.386900, 23.259268, 27.127003>,  <12.056469, 23.436722, 26.855742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.386900, 23.259268, 27.127003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.320697, 23.577065, 26.893290>,  <11.280975, 23.767742, 26.753061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.320697, 23.577065, 26.893290>,  <11.386900, 23.259268, 27.127003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.320697, 23.577065, 26.893290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230317, -0.544934, -0.806226,
		-0.958938, -0.268006, -0.092795,
		-0.165507, 0.794493, -0.584284,
		11.271045, 23.815413, 26.718004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618904, 23.192291, 27.469933>,  <11.386900, 23.259268, 27.127003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618904, 23.192291, 27.469933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.241700, 23.208158, 27.337776>,  <10.015378, 23.217678, 27.258482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.241700, 23.208158, 27.337776>,  <10.618904, 23.192291, 27.469933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.241700, 23.208158, 27.337776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272433, -0.478099, -0.834986,
		-0.191082, -0.877410, 0.440045,
		-0.943010, 0.039668, -0.330391,
		9.958797, 23.220058, 27.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.501642, 22.520750, 27.362860>,  <10.618904, 23.192291, 27.469933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.501642, 22.520750, 27.362860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.264706, 22.728601, 27.116570>,  <10.122544, 22.853312, 26.968796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.264706, 22.728601, 27.116570>,  <10.501642, 22.520750, 27.362860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.264706, 22.728601, 27.116570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306475, -0.561456, -0.768662,
		-0.745122, -0.644013, 0.173320,
		-0.592340, 0.519629, -0.615727,
		10.087004, 22.884489, 26.931852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.220200, 22.034000, 26.926168>,  <10.501642, 22.520750, 27.362860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.220200, 22.034000, 26.926168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.137826, 22.369991, 26.725357>,  <10.088402, 22.571585, 26.604870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.137826, 22.369991, 26.725357>,  <10.220200, 22.034000, 26.926168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.137826, 22.369991, 26.725357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246607, -0.451919, -0.857295,
		-0.946983, -0.300350, -0.114078,
		-0.205934, 0.839976, -0.502028,
		10.076046, 22.621984, 26.574749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.707459, 21.873648, 26.390572>,  <10.220200, 22.034000, 26.926168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.707459, 21.873648, 26.390572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.898297, 22.202036, 26.265102>,  <10.012800, 22.399069, 26.189821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.898297, 22.202036, 26.265102>,  <9.707459, 21.873648, 26.390572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.898297, 22.202036, 26.265102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041094, -0.377363, -0.925153,
		-0.877891, 0.428495, -0.213774,
		0.477094, 0.820969, -0.313675,
		10.041426, 22.448326, 26.171000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.356796, 22.040199, 25.765770>,  <9.707459, 21.873648, 26.390572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.356796, 22.040199, 25.765770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.717965, 22.212116, 25.766882>,  <9.934667, 22.315268, 25.767550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.717965, 22.212116, 25.766882>,  <9.356796, 22.040199, 25.765770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.717965, 22.212116, 25.766882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194136, -0.402054, -0.894798,
		-0.383461, 0.808474, -0.446462,
		0.902922, 0.429795, 0.002782,
		9.988842, 22.341055, 25.767717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.518699, 22.009417, 25.093193>,  <9.356796, 22.040199, 25.765770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.518699, 22.009417, 25.093193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.871821, 22.094397, 25.260771>,  <10.083695, 22.145384, 25.361319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.871821, 22.094397, 25.260771>,  <9.518699, 22.009417, 25.093193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.871821, 22.094397, 25.260771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468712, -0.339582, -0.815471,
		-0.030980, 0.916269, -0.399363,
		0.882808, 0.212449, 0.418946,
		10.136663, 22.158131, 25.386456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.874042, 22.325436, 24.464384>,  <9.518699, 22.009417, 25.093193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.874042, 22.325436, 24.464384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.136119, 22.202354, 24.740368>,  <10.293365, 22.128506, 24.905958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.136119, 22.202354, 24.740368>,  <9.874042, 22.325436, 24.464384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136119, 22.202354, 24.740368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492371, -0.518747, -0.698908,
		0.572970, 0.797634, -0.188375,
		0.655192, -0.307703, 0.689958,
		10.332677, 22.110044, 24.947355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.552578, 22.481791, 24.272728>,  <9.874042, 22.325436, 24.464384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.552578, 22.481791, 24.272728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.583914, 22.169704, 24.520962>,  <10.602715, 21.982452, 24.669903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.583914, 22.169704, 24.520962>,  <10.552578, 22.481791, 24.272728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.583914, 22.169704, 24.520962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593985, -0.463412, -0.657595,
		0.800653, 0.420134, 0.427133,
		0.078340, -0.780216, 0.620585,
		10.607416, 21.935640, 24.707138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.158397, 22.267460, 24.135818>,  <10.552578, 22.481791, 24.272728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.158397, 22.267460, 24.135818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.012202, 21.957794, 24.342543>,  <10.924485, 21.771996, 24.466578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.012202, 21.957794, 24.342543>,  <11.158397, 22.267460, 24.135818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.012202, 21.957794, 24.342543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579679, -0.623716, -0.524357,
		0.728280, 0.107939, 0.676725,
		-0.365486, -0.774162, 0.516810,
		10.902556, 21.725546, 24.497585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.784383, 21.847290, 24.289822>,  <11.158397, 22.267460, 24.135818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.784383, 21.847290, 24.289822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.458711, 21.617403, 24.322836>,  <11.263308, 21.479471, 24.342646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.458711, 21.617403, 24.322836>,  <11.784383, 21.847290, 24.289822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.458711, 21.617403, 24.322836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410876, -0.670751, -0.617474,
		0.410235, -0.468822, 0.782249,
		-0.814179, -0.574717, 0.082538,
		11.214457, 21.444988, 24.347597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.001557, 21.167286, 24.450235>,  <11.784383, 21.847290, 24.289822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.001557, 21.167286, 24.450235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.652562, 21.149525, 24.255590>,  <11.443165, 21.138868, 24.138803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.652562, 21.149525, 24.255590>,  <12.001557, 21.167286, 24.450235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.652562, 21.149525, 24.255590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363925, -0.723599, -0.586484,
		-0.326071, -0.688791, 0.647491,
		-0.872489, -0.044402, -0.486613,
		11.390816, 21.136204, 24.109606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.925943, 20.538706, 24.288324>,  <12.001557, 21.167286, 24.450235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.925943, 20.538706, 24.288324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.661571, 20.698952, 24.034496>,  <11.502947, 20.795099, 23.882200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.661571, 20.698952, 24.034496>,  <11.925943, 20.538706, 24.288324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.661571, 20.698952, 24.034496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249562, -0.680131, -0.689305,
		-0.707736, -0.613947, 0.349541,
		-0.660930, 0.400614, -0.634571,
		11.463291, 20.819136, 23.844126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.674481, 19.967030, 23.928005>,  <11.925943, 20.538706, 24.288324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.674481, 19.967030, 23.928005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.567565, 20.280409, 23.703590>,  <11.503415, 20.468437, 23.568941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.567565, 20.280409, 23.703590>,  <11.674481, 19.967030, 23.928005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.567565, 20.280409, 23.703590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157744, -0.538791, -0.827539,
		-0.950617, -0.309693, 0.020429,
		-0.267290, 0.783450, -0.561036,
		11.487378, 20.515444, 23.535280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.311458, 19.644796, 23.403896>,  <11.674481, 19.967030, 23.928005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.311458, 19.644796, 23.403896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.375795, 20.003109, 23.238148>,  <11.414398, 20.218096, 23.138699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.375795, 20.003109, 23.238148>,  <11.311458, 19.644796, 23.403896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375795, 20.003109, 23.238148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084845, -0.430833, -0.898434,
		-0.983326, 0.109350, -0.145299,
		0.160844, 0.895782, -0.414372,
		11.424048, 20.271843, 23.113836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.907908, 19.668760, 22.814970>,  <11.311458, 19.644796, 23.403896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.907908, 19.668760, 22.814970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.204138, 19.928865, 22.747192>,  <11.381875, 20.084929, 22.706526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.204138, 19.928865, 22.747192>,  <10.907908, 19.668760, 22.814970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.204138, 19.928865, 22.747192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113006, -0.369085, -0.922500,
		-0.662405, 0.664031, -0.346818,
		0.740574, 0.650261, -0.169444,
		11.426310, 20.123943, 22.696360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.741405, 19.931488, 22.145395>,  <10.907908, 19.668760, 22.814970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.741405, 19.931488, 22.145395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.128125, 20.022306, 22.192299>,  <11.360157, 20.076797, 22.220440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.128125, 20.022306, 22.192299>,  <10.741405, 19.931488, 22.145395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.128125, 20.022306, 22.192299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160909, -0.184443, -0.969582,
		-0.198511, 0.956259, -0.214853,
		0.966800, 0.227044, 0.117257,
		11.418165, 20.090420, 22.227476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.018707, 20.457458, 21.691923>,  <10.741405, 19.931488, 22.145395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.018707, 20.457458, 21.691923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.344585, 20.245832, 21.786886>,  <11.540112, 20.118856, 21.843864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.344585, 20.245832, 21.786886>,  <11.018707, 20.457458, 21.691923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.344585, 20.245832, 21.786886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225762, -0.087727, -0.970225,
		0.534137, 0.844036, 0.047972,
		0.814696, -0.529063, 0.237409,
		11.588994, 20.087114, 21.858109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476876, 20.698811, 21.184689>,  <11.018707, 20.457458, 21.691923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476876, 20.698811, 21.184689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.653225, 20.380589, 21.350927>,  <11.759034, 20.189655, 21.450670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.653225, 20.380589, 21.350927>,  <11.476876, 20.698811, 21.184689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.653225, 20.380589, 21.350927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340294, -0.280308, -0.897568,
		0.830561, 0.537138, 0.147143,
		0.440872, -0.795557, 0.415598,
		11.785486, 20.141922, 21.475607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.122720, 20.559086, 20.811712>,  <11.476876, 20.698811, 21.184689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.122720, 20.559086, 20.811712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.053955, 20.208586, 20.991770>,  <12.012696, 19.998285, 21.099804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.053955, 20.208586, 20.991770>,  <12.122720, 20.559086, 20.811712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.053955, 20.208586, 20.991770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272098, -0.481407, -0.833193,
		0.946789, -0.020753, 0.321186,
		-0.171912, -0.876252, 0.450144,
		12.002381, 19.945711, 21.126812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.742085, 20.178211, 20.726192>,  <12.122720, 20.559086, 20.811712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.742085, 20.178211, 20.726192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.441942, 19.923103, 20.795719>,  <12.261856, 19.770039, 20.837435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.441942, 19.923103, 20.795719>,  <12.742085, 20.178211, 20.726192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.441942, 19.923103, 20.795719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287419, -0.551567, -0.783048,
		0.595277, -0.537607, 0.597180,
		-0.750357, -0.637771, 0.173817,
		12.216835, 19.731771, 20.847864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.761065, 15.946589, 1.773403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.700390, 16.159554, 1.440290>,  <26.663984, 16.287333, 1.240422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.700390, 16.159554, 1.440290>,  <26.761065, 15.946589, 1.773403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700390, 16.159554, 1.440290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891379, 0.290395, 0.348016,
		0.427124, 0.795115, 0.430532,
		-0.151688, 0.532413, -0.832783,
		26.654884, 16.319277, 1.190455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412230, 16.413424, 2.115969>,  <26.761065, 15.946589, 1.773403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412230, 16.413424, 2.115969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.310486, 16.386087, 1.730092>,  <26.249439, 16.369686, 1.498566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.310486, 16.386087, 1.730092>,  <26.412230, 16.413424, 2.115969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310486, 16.386087, 1.730092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966895, 0.039024, 0.252173,
		0.020413, 0.996898, -0.076003,
		-0.254357, -0.068339, -0.964693,
		26.234179, 16.365585, 1.440685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941345, 16.384651, 2.755445>,  <26.412230, 16.413424, 2.115969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941345, 16.384651, 2.755445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.282272, 16.178429, 2.720216>,  <26.486828, 16.054695, 2.699078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.282272, 16.178429, 2.720216>,  <25.941345, 16.384651, 2.755445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282272, 16.178429, 2.720216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141024, 0.064374, 0.987911,
		-0.503655, -0.854434, 0.127573,
		0.852317, -0.515557, -0.088073,
		26.537968, 16.023762, 2.693794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005772, 15.843409, 3.291716>,  <25.941345, 16.384651, 2.755445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005772, 15.843409, 3.291716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.382654, 15.929564, 3.189068>,  <26.608784, 15.981256, 3.127480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.382654, 15.929564, 3.189068>,  <26.005772, 15.843409, 3.291716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382654, 15.929564, 3.189068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240553, 0.098213, 0.965654,
		0.233192, -0.971577, 0.040725,
		0.942207, 0.215387, -0.256619,
		26.665316, 15.994180, 3.112082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942940, 16.589058, 3.613152>,  <26.005772, 15.843409, 3.291716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942940, 16.589058, 3.613152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.014477, 16.710035, 3.987647>,  <26.057398, 16.782621, 4.212345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.014477, 16.710035, 3.987647>,  <25.942940, 16.589058, 3.613152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014477, 16.710035, 3.987647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463111, 0.865450, -0.191114,
		-0.868069, -0.399404, 0.294843,
		0.178841, 0.302445, 0.936239,
		26.068129, 16.800770, 4.268519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494289, 16.784348, 4.191632>,  <25.942940, 16.589058, 3.613152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494289, 16.784348, 4.191632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.413185, 17.028702, 3.885505>,  <25.364523, 17.175314, 3.701829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.413185, 17.028702, 3.885505>,  <25.494289, 16.784348, 4.191632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413185, 17.028702, 3.885505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779116, -0.372795, -0.503986,
		-0.593184, -0.698458, -0.400361,
		-0.202761, 0.610884, -0.765316,
		25.352358, 17.211967, 3.655910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.735744, 16.660532, 4.318769>,  <25.494289, 16.784348, 4.191632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.735744, 16.660532, 4.318769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.511061, 16.712488, 3.991940>,  <24.376251, 16.743662, 3.795842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.511061, 16.712488, 3.991940>,  <24.735744, 16.660532, 4.318769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511061, 16.712488, 3.991940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544377, -0.801715, 0.246792,
		-0.623006, 0.583422, 0.521040,
		-0.561710, 0.129889, -0.817074,
		24.342548, 16.751455, 3.746817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.135733, 16.599331, 4.569981>,  <24.735744, 16.660532, 4.318769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.135733, 16.599331, 4.569981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.121944, 16.534504, 4.175510>,  <24.113672, 16.495607, 3.938828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.121944, 16.534504, 4.175510>,  <24.135733, 16.599331, 4.569981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.121944, 16.534504, 4.175510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663950, -0.733819, 0.143804,
		-0.746982, 0.659729, -0.082310,
		-0.034471, -0.162069, -0.986177,
		24.111603, 16.485884, 3.879657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.477568, 16.518612, 4.312099>,  <24.135733, 16.599331, 4.569981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.477568, 16.518612, 4.312099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.705059, 16.331062, 4.041780>,  <23.841555, 16.218533, 3.879589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.705059, 16.331062, 4.041780>,  <23.477568, 16.518612, 4.312099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.705059, 16.331062, 4.041780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671582, -0.739075, -0.052407,
		-0.474893, 0.483659, -0.735222,
		0.568731, -0.468874, -0.675798,
		23.875679, 16.190399, 3.839041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.114265, 16.840660, 4.844611>,  <23.477568, 16.518612, 4.312099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.114265, 16.840660, 4.844611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.770264, 17.014660, 4.737904>,  <22.563862, 17.119061, 4.673880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.770264, 17.014660, 4.737904>,  <23.114265, 16.840660, 4.844611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.770264, 17.014660, 4.737904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352834, -0.129245, 0.926717,
		0.368645, 0.891106, 0.264635,
		-0.860005, 0.435002, -0.266767,
		22.512262, 17.145161, 4.657874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956043, 17.301893, 5.305839>,  <23.114265, 16.840660, 4.844611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956043, 17.301893, 5.305839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.604084, 17.238348, 5.126713>,  <22.392908, 17.200222, 5.019237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.604084, 17.238348, 5.126713>,  <22.956043, 17.301893, 5.305839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.604084, 17.238348, 5.126713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430258, -0.133539, 0.892774,
		-0.201628, 0.978228, 0.049150,
		-0.879900, -0.158862, -0.447816,
		22.340115, 17.190689, 4.992368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506441, 17.597389, 5.711405>,  <22.956043, 17.301893, 5.305839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506441, 17.597389, 5.711405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282932, 17.343769, 5.497582>,  <22.148827, 17.191597, 5.369288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.282932, 17.343769, 5.497582>,  <22.506441, 17.597389, 5.711405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.282932, 17.343769, 5.497582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436057, -0.323655, 0.839703,
		-0.705428, 0.702301, -0.095633,
		-0.558772, -0.634051, -0.534559,
		22.115301, 17.153553, 5.337214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.842918, 17.690376, 5.972354>,  <22.506441, 17.597389, 5.711405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.842918, 17.690376, 5.972354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.876064, 17.340437, 5.781452>,  <21.895952, 17.130474, 5.666910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.876064, 17.340437, 5.781452>,  <21.842918, 17.690376, 5.972354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.876064, 17.340437, 5.781452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134585, -0.484340, 0.864466,
		-0.987431, -0.007400, -0.157875,
		0.082863, -0.874849, -0.477257,
		21.900923, 17.077982, 5.638275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.352009, 17.376894, 6.303199>,  <21.842918, 17.690376, 5.972354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.352009, 17.376894, 6.303199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.545889, 17.074503, 6.127214>,  <21.662216, 16.893068, 6.021624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.545889, 17.074503, 6.127214>,  <21.352009, 17.376894, 6.303199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545889, 17.074503, 6.127214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241990, -0.599262, 0.763103,
		-0.840540, -0.263409, -0.473400,
		0.484699, -0.755977, -0.439962,
		21.691299, 16.847710, 5.995226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965435, 16.856583, 6.473713>,  <21.352009, 17.376894, 6.303199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965435, 16.856583, 6.473713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323954, 16.698675, 6.392905>,  <21.539064, 16.603931, 6.344420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.323954, 16.698675, 6.392905>,  <20.965435, 16.856583, 6.473713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323954, 16.698675, 6.392905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123885, -0.660321, 0.740695,
		-0.425802, -0.638854, -0.640749,
		0.896295, -0.394768, -0.202021,
		21.592842, 16.580244, 6.332299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885178, 16.146759, 6.474285>,  <20.965435, 16.856583, 6.473713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885178, 16.146759, 6.474285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280943, 16.191618, 6.511124>,  <21.518402, 16.218533, 6.533228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280943, 16.191618, 6.511124>,  <20.885178, 16.146759, 6.474285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280943, 16.191618, 6.511124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008915, -0.680427, 0.732762,
		0.144842, -0.724185, -0.674224,
		0.989415, 0.112146, 0.092098,
		21.577766, 16.225262, 6.538754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266008, 15.434332, 6.524959>,  <20.885178, 16.146759, 6.474285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.266008, 15.434332, 6.524959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.497347, 15.716178, 6.689415>,  <21.636150, 15.885285, 6.788088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.497347, 15.716178, 6.689415>,  <21.266008, 15.434332, 6.524959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.497347, 15.716178, 6.689415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153125, -0.588779, 0.793657,
		0.801292, -0.396053, -0.448413,
		0.578346, 0.704614, 0.411138,
		21.670851, 15.927562, 6.812756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.754183, 14.990829, 6.898926>,  <21.266008, 15.434332, 6.524959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.754183, 14.990829, 6.898926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.863588, 15.351026, 7.034162>,  <21.929232, 15.567143, 7.115303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.863588, 15.351026, 7.034162>,  <21.754183, 14.990829, 6.898926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863588, 15.351026, 7.034162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276668, -0.410290, 0.868975,
		0.921220, -0.144136, -0.361357,
		0.273512, 0.900493, 0.338089,
		21.945642, 15.621174, 7.135588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.516115, 14.834622, 7.220869>,  <21.754183, 14.990829, 6.898926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.516115, 14.834622, 7.220869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.348249, 15.168034, 7.364597>,  <22.247530, 15.368080, 7.450834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.348249, 15.168034, 7.364597>,  <22.516115, 14.834622, 7.220869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.348249, 15.168034, 7.364597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339187, -0.223177, 0.913862,
		0.841922, 0.505393, -0.189062,
		-0.419665, 0.833528, 0.359321,
		22.222349, 15.418092, 7.472394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.103994, 15.160191, 7.705584>,  <22.516115, 14.834622, 7.220869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.103994, 15.160191, 7.705584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.733965, 15.282335, 7.795913>,  <22.511948, 15.355622, 7.850111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.733965, 15.282335, 7.795913>,  <23.103994, 15.160191, 7.705584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.733965, 15.282335, 7.795913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209539, -0.085552, 0.974050,
		0.316757, 0.948386, 0.015157,
		-0.925072, 0.305361, 0.225823,
		22.456444, 15.373943, 7.863660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.180515, 15.404472, 8.312012>,  <23.103994, 15.160191, 7.705584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.180515, 15.404472, 8.312012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.782295, 15.372993, 8.291286>,  <22.543364, 15.354105, 8.278852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.782295, 15.372993, 8.291286>,  <23.180515, 15.404472, 8.312012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.782295, 15.372993, 8.291286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036993, -0.179298, 0.983099,
		-0.086658, 0.980642, 0.175589,
		-0.995551, -0.078698, -0.051814,
		22.483629, 15.349383, 8.275743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.789040, 15.855447, 8.810649>,  <23.180515, 15.404472, 8.312012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.789040, 15.855447, 8.810649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.569660, 15.532514, 8.723544>,  <22.438032, 15.338754, 8.671281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.569660, 15.532514, 8.723544>,  <22.789040, 15.855447, 8.810649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.569660, 15.532514, 8.723544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038295, -0.235900, 0.971023,
		-0.835308, 0.540894, 0.098462,
		-0.548447, -0.807332, -0.217762,
		22.405127, 15.290314, 8.658216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.148434, 15.897064, 9.352242>,  <22.789040, 15.855447, 8.810649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.148434, 15.897064, 9.352242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.189817, 15.513864, 9.245264>,  <22.214647, 15.283943, 9.181077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.189817, 15.513864, 9.245264>,  <22.148434, 15.897064, 9.352242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.189817, 15.513864, 9.245264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078353, -0.275903, 0.957987,
		-0.991543, -0.078158, -0.103608,
		0.103460, -0.958003, -0.267445,
		22.220856, 15.226462, 9.165030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942823, 15.576525, 9.933155>,  <22.148434, 15.897064, 9.352242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942823, 15.576525, 9.933155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055334, 15.250785, 9.730092>,  <22.122841, 15.055341, 9.608253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055334, 15.250785, 9.730092>,  <21.942823, 15.576525, 9.933155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.055334, 15.250785, 9.730092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199126, -0.467972, 0.861017,
		-0.938739, -0.343273, 0.030528,
		0.281278, -0.814350, -0.507659,
		22.139717, 15.006480, 9.577794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.612522, 14.995460, 10.250413>,  <21.942823, 15.576525, 9.933155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.612522, 14.995460, 10.250413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.930668, 14.847518, 10.058327>,  <22.121555, 14.758753, 9.943075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.930668, 14.847518, 10.058327>,  <21.612522, 14.995460, 10.250413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.930668, 14.847518, 10.058327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143551, -0.654783, 0.742059,
		-0.588888, -0.659142, -0.467699,
		0.795364, -0.369852, -0.480215,
		22.169277, 14.736562, 9.914262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537230, 14.333467, 10.378760>,  <21.612522, 14.995460, 10.250413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537230, 14.333467, 10.378760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.910122, 14.330664, 10.234043>,  <22.133858, 14.328981, 10.147213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.910122, 14.330664, 10.234043>,  <21.537230, 14.333467, 10.378760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910122, 14.330664, 10.234043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266901, -0.661815, 0.700546,
		-0.244349, -0.749634, -0.615095,
		0.932232, -0.007008, -0.361792,
		22.189791, 14.328561, 10.125505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741100, 13.646064, 10.440133>,  <21.537230, 14.333467, 10.378760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741100, 13.646064, 10.440133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055153, 13.893303, 10.424507>,  <22.243584, 14.041646, 10.415132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055153, 13.893303, 10.424507>,  <21.741100, 13.646064, 10.440133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.055153, 13.893303, 10.424507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410183, -0.471697, 0.780546,
		0.464026, -0.628854, -0.623877,
		0.785130, 0.618097, -0.039066,
		22.290691, 14.078732, 10.412787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295364, 13.230172, 10.555969>,  <21.741100, 13.646064, 10.440133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295364, 13.230172, 10.555969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.451298, 13.590359, 10.633109>,  <22.544857, 13.806471, 10.679393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.451298, 13.590359, 10.633109>,  <22.295364, 13.230172, 10.555969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451298, 13.590359, 10.633109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575069, -0.401607, 0.712746,
		0.719253, -0.166952, -0.674390,
		0.389834, 0.900466, 0.192849,
		22.568249, 13.860498, 10.690964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.137800, 13.183639, 10.552683>,  <22.295364, 13.230172, 10.555969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.137800, 13.183639, 10.552683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.001068, 13.487966, 10.773340>,  <22.919029, 13.670562, 10.905735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.001068, 13.487966, 10.773340>,  <23.137800, 13.183639, 10.552683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.001068, 13.487966, 10.773340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668237, -0.215953, 0.711916,
		0.660767, 0.611981, -0.434587,
		-0.341828, 0.760817, 0.551643,
		22.898520, 13.716210, 10.938833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729074, 13.519487, 10.786608>,  <23.137800, 13.183639, 10.552683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729074, 13.519487, 10.786608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.457663, 13.654279, 11.047695>,  <23.294815, 13.735153, 11.204348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.457663, 13.654279, 11.047695>,  <23.729074, 13.519487, 10.786608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457663, 13.654279, 11.047695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715870, 0.104115, 0.690427,
		0.164702, 0.935738, -0.311878,
		-0.678530, 0.336979, 0.652719,
		23.254103, 13.755372, 11.243511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033453, 14.282957, 10.842472>,  <23.729074, 13.519487, 10.786608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033453, 14.282957, 10.842472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.888184, 14.067666, 11.146687>,  <23.801022, 13.938491, 11.329215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.888184, 14.067666, 11.146687>,  <24.033453, 14.282957, 10.842472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.888184, 14.067666, 11.146687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902745, -0.001281, 0.430175,
		-0.230558, 0.842798, 0.486348,
		-0.363173, -0.538229, 0.760536,
		23.779232, 13.906198, 11.374847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.154129, 14.690613, 11.482573>,  <24.033453, 14.282957, 10.842472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.154129, 14.690613, 11.482573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.136745, 14.291677, 11.505987>,  <24.126316, 14.052316, 11.520036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.136745, 14.291677, 11.505987>,  <24.154129, 14.690613, 11.482573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.136745, 14.291677, 11.505987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841266, -0.004929, 0.540599,
		-0.538872, 0.072739, 0.839241,
		-0.043459, -0.997339, 0.058537,
		24.123709, 13.992476, 11.523548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206923, 14.295011, 12.231526>,  <24.154129, 14.690613, 11.482573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206923, 14.295011, 12.231526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355844, 14.106950, 11.911440>,  <24.445198, 13.994114, 11.719388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355844, 14.106950, 11.911440>,  <24.206923, 14.295011, 12.231526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355844, 14.106950, 11.911440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809905, -0.256491, 0.527510,
		-0.453258, -0.844494, 0.285285,
		0.372306, -0.470151, -0.800216,
		24.467537, 13.965904, 11.671375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464283, 13.656832, 12.403966>,  <24.206923, 14.295011, 12.231526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464283, 13.656832, 12.403966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.637400, 13.748695, 12.055266>,  <24.741270, 13.803814, 11.846046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.637400, 13.748695, 12.055266>,  <24.464283, 13.656832, 12.403966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637400, 13.748695, 12.055266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898735, -0.185510, 0.397318,
		-0.070470, -0.955428, -0.286691,
		0.432793, 0.229660, -0.871749,
		24.767237, 13.817594, 11.793741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958155, 14.165508, 12.177774>,  <24.464283, 13.656832, 12.403966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958155, 14.165508, 12.177774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.988562, 14.436430, 11.885069>,  <25.006805, 14.598983, 11.709445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.988562, 14.436430, 11.885069>,  <24.958155, 14.165508, 12.177774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988562, 14.436430, 11.885069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015551, 0.734604, 0.678318,
		0.996985, -0.040183, 0.066374,
		0.076016, 0.677305, -0.731764,
		25.011366, 14.639622, 11.665540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705360, 14.370914, 12.447202>,  <24.958155, 14.165508, 12.177774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705360, 14.370914, 12.447202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.065701, 14.485127, 12.316395>,  <26.281904, 14.553655, 12.237910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.065701, 14.485127, 12.316395>,  <25.705360, 14.370914, 12.447202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065701, 14.485127, 12.316395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427264, 0.716564, -0.551344,
		0.076902, 0.636401, 0.767515,
		0.900850, 0.285532, -0.327017,
		26.335957, 14.570787, 12.218289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610153, 15.165096, 12.409389>,  <25.705360, 14.370914, 12.447202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610153, 15.165096, 12.409389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.912245, 15.042871, 12.177437>,  <26.093500, 14.969537, 12.038265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.912245, 15.042871, 12.177437>,  <25.610153, 15.165096, 12.409389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912245, 15.042871, 12.177437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373737, 0.526039, -0.763939,
		0.538472, 0.793672, 0.283079,
		0.755228, -0.305562, -0.579882,
		26.138813, 14.951202, 12.003472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758688, 15.746957, 12.105181>,  <25.610153, 15.165096, 12.409389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758688, 15.746957, 12.105181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.922228, 15.463035, 11.875740>,  <26.020351, 15.292682, 11.738076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.922228, 15.463035, 11.875740>,  <25.758688, 15.746957, 12.105181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922228, 15.463035, 11.875740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119311, 0.581565, -0.804703,
		0.904769, 0.397440, 0.153086,
		0.408850, -0.709805, -0.573601,
		26.044884, 15.250093, 11.703660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368797, 16.064394, 11.763021>,  <25.758688, 15.746957, 12.105181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368797, 16.064394, 11.763021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.229433, 15.754954, 11.551302>,  <26.145815, 15.569290, 11.424271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.229433, 15.754954, 11.551302>,  <26.368797, 16.064394, 11.763021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229433, 15.754954, 11.551302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156937, 0.604851, -0.780721,
		0.924111, -0.188944, -0.332142,
		-0.348409, -0.773599, -0.529297,
		26.124910, 15.522875, 11.392512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436893, 16.303829, 11.209083>,  <26.368797, 16.064394, 11.763021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436893, 16.303829, 11.209083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.265278, 15.966254, 11.080276>,  <26.162308, 15.763709, 11.002993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.265278, 15.966254, 11.080276>,  <26.436893, 16.303829, 11.209083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265278, 15.966254, 11.080276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171351, 0.426062, -0.888319,
		0.886884, -0.325947, -0.327407,
		-0.429040, -0.843937, -0.322016,
		26.136566, 15.713073, 10.983671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820559, 16.117353, 10.603636>,  <26.436893, 16.303829, 11.209083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820559, 16.117353, 10.603636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.444145, 15.982245, 10.611320>,  <26.218298, 15.901181, 10.615932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.444145, 15.982245, 10.611320>,  <26.820559, 16.117353, 10.603636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444145, 15.982245, 10.611320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178304, 0.446897, -0.876636,
		0.287513, -0.828369, -0.480771,
		-0.941033, -0.337768, 0.019213,
		26.161835, 15.880915, 10.617085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620953, 15.740993, 9.911323>,  <26.820559, 16.117353, 10.603636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620953, 15.740993, 9.911323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.270031, 15.845803, 10.072160>,  <26.059477, 15.908689, 10.168662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.270031, 15.845803, 10.072160>,  <26.620953, 15.740993, 9.911323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270031, 15.845803, 10.072160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278134, 0.405198, -0.870894,
		-0.391123, -0.875875, -0.282605,
		-0.877305, 0.262025, 0.402093,
		26.006840, 15.924411, 10.192788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110542, 15.743137, 9.340461>,  <26.620953, 15.740993, 9.911323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110542, 15.743137, 9.340461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.920092, 15.913003, 9.648478>,  <25.805822, 16.014923, 9.833287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.920092, 15.913003, 9.648478>,  <26.110542, 15.743137, 9.340461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920092, 15.913003, 9.648478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573232, 0.514171, -0.637991,
		-0.666865, -0.745177, -0.001379,
		-0.476125, 0.424664, 0.770042,
		25.777254, 16.040401, 9.879490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.360680, 15.737214, 9.120870>,  <26.110542, 15.743137, 9.340461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.360680, 15.737214, 9.120870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.413960, 15.996929, 9.420385>,  <25.445927, 16.152758, 9.600095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.413960, 15.996929, 9.420385>,  <25.360680, 15.737214, 9.120870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413960, 15.996929, 9.420385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500521, 0.696165, -0.514620,
		-0.855416, -0.306237, 0.417711,
		0.133200, 0.649287, 0.748788,
		25.453920, 16.191715, 9.645021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772263, 15.958770, 9.344903>,  <25.360680, 15.737214, 9.120870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772263, 15.958770, 9.344903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.028082, 16.252226, 9.436773>,  <25.181574, 16.428299, 9.491896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.028082, 16.252226, 9.436773>,  <24.772263, 15.958770, 9.344903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028082, 16.252226, 9.436773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550201, 0.645480, -0.529750,
		-0.536897, 0.212432, 0.816465,
		0.639547, 0.733641, 0.229675,
		25.219946, 16.472319, 9.505676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.341320, 16.597389, 9.613695>,  <24.772263, 15.958770, 9.344903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.341320, 16.597389, 9.613695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.693422, 16.743704, 9.492798>,  <24.904684, 16.831493, 9.420259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.693422, 16.743704, 9.492798>,  <24.341320, 16.597389, 9.613695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.693422, 16.743704, 9.492798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470830, 0.752408, -0.460652,
		0.058910, 0.547797, 0.834535,
		0.880255, 0.365787, -0.302244,
		24.957499, 16.853439, 9.402124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.207695, 17.348228, 9.671942>,  <24.341320, 16.597389, 9.613695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.207695, 17.348228, 9.671942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.526047, 17.292194, 9.436331>,  <24.717058, 17.258574, 9.294965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.526047, 17.292194, 9.436331>,  <24.207695, 17.348228, 9.671942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526047, 17.292194, 9.436331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315417, 0.734489, -0.600864,
		0.516806, 0.664005, 0.540379,
		0.795879, -0.140085, -0.589027,
		24.764811, 17.250170, 9.259623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441887, 18.024937, 9.456469>,  <24.207695, 17.348228, 9.671942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441887, 18.024937, 9.456469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.642885, 17.803816, 9.190564>,  <24.763483, 17.671143, 9.031021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.642885, 17.803816, 9.190564>,  <24.441887, 18.024937, 9.456469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642885, 17.803816, 9.190564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233474, 0.653556, -0.719968,
		0.832460, 0.516985, 0.199343,
		0.502494, -0.552803, -0.664762,
		24.793633, 17.637976, 8.991136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.805738, 18.481607, 9.018060>,  <24.441887, 18.024937, 9.456469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.805738, 18.481607, 9.018060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.748816, 18.146852, 8.806639>,  <24.714663, 17.945999, 8.679786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.748816, 18.146852, 8.806639>,  <24.805738, 18.481607, 9.018060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748816, 18.146852, 8.806639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607893, 0.495313, -0.620590,
		0.781163, 0.232990, -0.579224,
		-0.142306, -0.836888, -0.528553,
		24.706123, 17.895786, 8.648073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123911, 18.663237, 8.376173>,  <24.805738, 18.481607, 9.018060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123911, 18.663237, 8.376173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.890406, 18.344744, 8.312630>,  <24.750303, 18.153648, 8.274504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.890406, 18.344744, 8.312630>,  <25.123911, 18.663237, 8.376173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890406, 18.344744, 8.312630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477057, 0.494690, -0.726429,
		0.656992, -0.348277, -0.668629,
		-0.583763, -0.796232, -0.158859,
		24.715277, 18.105875, 8.264972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017845, 18.723339, 7.769710>,  <25.123911, 18.663237, 8.376173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017845, 18.723339, 7.769710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.726027, 18.461676, 7.849548>,  <24.550936, 18.304678, 7.897451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.726027, 18.461676, 7.849548>,  <25.017845, 18.723339, 7.769710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.726027, 18.461676, 7.849548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484913, 0.288935, -0.825455,
		0.482307, -0.698996, -0.528001,
		-0.729548, -0.654157, 0.199597,
		24.507162, 18.265429, 7.909427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902889, 18.300758, 7.144567>,  <25.017845, 18.723339, 7.769710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902889, 18.300758, 7.144567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.563490, 18.312805, 7.355904>,  <24.359850, 18.320034, 7.482706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.563490, 18.312805, 7.355904>,  <24.902889, 18.300758, 7.144567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563490, 18.312805, 7.355904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514841, 0.184012, -0.837305,
		-0.122438, -0.982463, -0.140628,
		-0.848498, 0.030117, 0.528342,
		24.308941, 18.321840, 7.514407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.900352, 16.972879, 18.224672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636271, 16.699636, 18.349567>,  <16.477821, 16.535690, 18.424505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636271, 16.699636, 18.349567>,  <16.900352, 16.972879, 18.224672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.636271, 16.699636, 18.349567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248988, -0.591263, -0.767081,
		0.708613, -0.428688, 0.560441,
		-0.660206, -0.683107, 0.312239,
		16.438210, 16.494705, 18.443239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175501, 16.386406, 17.997635>,  <16.900352, 16.972879, 18.224672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175501, 16.386406, 17.997635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798052, 16.268875, 18.058617>,  <16.571583, 16.198357, 18.095205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798052, 16.268875, 18.058617>,  <17.175501, 16.386406, 17.997635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798052, 16.268875, 18.058617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010621, -0.487195, -0.873229,
		0.330852, -0.822379, 0.462849,
		-0.943623, -0.293825, 0.152455,
		16.514965, 16.180727, 18.104353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108900, 15.597878, 17.856665>,  <17.175501, 16.386406, 17.997635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108900, 15.597878, 17.856665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724831, 15.709445, 17.850031>,  <16.494389, 15.776385, 17.846050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724831, 15.709445, 17.850031>,  <17.108900, 15.597878, 17.856665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724831, 15.709445, 17.850031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109209, -0.429254, -0.896557,
		-0.257183, -0.859038, 0.442618,
		-0.960172, 0.278917, -0.016582,
		16.436779, 15.793120, 17.845057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.728954, 15.041523, 17.646877>,  <17.108900, 15.597878, 17.856665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.728954, 15.041523, 17.646877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470419, 15.335858, 17.566095>,  <16.315298, 15.512460, 17.517626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470419, 15.335858, 17.566095>,  <16.728954, 15.041523, 17.646877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470419, 15.335858, 17.566095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280911, -0.475541, -0.833637,
		-0.709461, -0.482080, 0.514066,
		-0.646339, 0.735840, -0.201956,
		16.276518, 15.556610, 17.505508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074566, 14.697188, 17.504889>,  <16.728954, 15.041523, 17.646877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074566, 14.697188, 17.504889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091106, 15.046146, 17.310070>,  <16.101030, 15.255522, 17.193178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091106, 15.046146, 17.310070>,  <16.074566, 14.697188, 17.504889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091106, 15.046146, 17.310070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176610, -0.473406, -0.862958,
		-0.983412, 0.121702, 0.134498,
		0.041352, 0.872396, -0.487047,
		16.103512, 15.307865, 17.163956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636457, 14.543728, 17.005493>,  <16.074566, 14.697188, 17.504889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636457, 14.543728, 17.005493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812197, 14.885653, 16.895027>,  <15.917641, 15.090809, 16.828747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812197, 14.885653, 16.895027>,  <15.636457, 14.543728, 17.005493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812197, 14.885653, 16.895027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021192, -0.317203, -0.948121,
		-0.898067, 0.410703, -0.157478,
		0.439349, 0.854813, -0.276166,
		15.944001, 15.142097, 16.812178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364161, 14.729734, 16.339163>,  <15.636457, 14.543728, 17.005493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364161, 14.729734, 16.339163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687465, 14.964835, 16.353415>,  <15.881447, 15.105895, 16.361965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687465, 14.964835, 16.353415>,  <15.364161, 14.729734, 16.339163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.687465, 14.964835, 16.353415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090389, -0.064050, -0.993845,
		-0.581851, 0.806503, -0.104895,
		0.808257, 0.587751, 0.035631,
		15.929942, 15.141160, 16.364103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.309532, 15.401073, 15.867147>,  <15.364161, 14.729734, 16.339163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.309532, 15.401073, 15.867147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691667, 15.284324, 15.885669>,  <15.920947, 15.214274, 15.896782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691667, 15.284324, 15.885669>,  <15.309532, 15.401073, 15.867147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.691667, 15.284324, 15.885669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048391, -0.000070, -0.998829,
		0.291533, 0.956458, 0.014057,
		0.955336, -0.291871, 0.046304,
		15.978268, 15.196762, 15.899560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646044, 15.635232, 15.219462>,  <15.309532, 15.401073, 15.867147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646044, 15.635232, 15.219462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898303, 15.354095, 15.351096>,  <16.049658, 15.185413, 15.430077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898303, 15.354095, 15.351096>,  <15.646044, 15.635232, 15.219462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898303, 15.354095, 15.351096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329823, -0.141108, -0.933437,
		0.702495, 0.697210, 0.142825,
		0.630648, -0.702842, 0.329084,
		16.087498, 15.143243, 15.449821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299059, 15.881738, 15.019001>,  <15.646044, 15.635232, 15.219462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299059, 15.881738, 15.019001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306925, 15.483371, 15.054243>,  <16.311646, 15.244350, 15.075388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306925, 15.483371, 15.054243>,  <16.299059, 15.881738, 15.019001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306925, 15.483371, 15.054243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394525, -0.073241, -0.915962,
		0.918675, 0.052774, 0.391474,
		0.019667, -0.995917, 0.088105,
		16.312824, 15.184596, 15.080674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917622, 15.737899, 14.781330>,  <16.299059, 15.881738, 15.019001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917622, 15.737899, 14.781330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723734, 15.388641, 14.760671>,  <16.607401, 15.179087, 14.748275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723734, 15.388641, 14.760671>,  <16.917622, 15.737899, 14.781330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723734, 15.388641, 14.760671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277593, -0.097570, -0.955731,
		0.829452, -0.477598, 0.289672,
		-0.484719, -0.873144, -0.051648,
		16.578318, 15.126698, 14.745176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364540, 15.326782, 14.435268>,  <16.917622, 15.737899, 14.781330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364540, 15.326782, 14.435268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005747, 15.156592, 14.387278>,  <16.790470, 15.054479, 14.358483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005747, 15.156592, 14.387278>,  <17.364540, 15.326782, 14.435268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.005747, 15.156592, 14.387278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090765, 0.088362, -0.991944,
		0.432648, -0.900646, -0.040641,
		-0.896982, -0.425474, -0.119977,
		16.736652, 15.028951, 14.351284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030357, 15.392138, 14.124153>,  <17.364540, 15.326782, 14.435268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030357, 15.392138, 14.124153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247076, 15.239368, 13.824662>,  <18.377108, 15.147706, 13.644968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247076, 15.239368, 13.824662>,  <18.030357, 15.392138, 14.124153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247076, 15.239368, 13.824662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140303, 0.919396, -0.367459,
		0.828718, 0.094038, 0.551709,
		0.541795, -0.381926, -0.748726,
		18.409615, 15.124790, 13.600044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.734802, 15.575085, 14.047567>,  <18.030357, 15.392138, 14.124153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.734802, 15.575085, 14.047567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610668, 15.516954, 13.671786>,  <18.536188, 15.482077, 13.446318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610668, 15.516954, 13.671786>,  <18.734802, 15.575085, 14.047567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610668, 15.516954, 13.671786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145987, 0.969238, -0.198157,
		0.939351, -0.198643, -0.279573,
		-0.310335, -0.145325, -0.939454,
		18.517569, 15.473357, 13.389950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425226, 15.582212, 14.386771>,  <18.734802, 15.575085, 14.047567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425226, 15.582212, 14.386771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710442, 15.369465, 14.569503>,  <19.881571, 15.241817, 14.679142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710442, 15.369465, 14.569503>,  <19.425226, 15.582212, 14.386771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710442, 15.369465, 14.569503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516164, 0.042747, 0.855422,
		-0.474500, -0.845747, -0.244051,
		0.713039, -0.531869, 0.456828,
		19.924353, 15.209905, 14.706552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.023722, 15.226316, 14.818602>,  <19.425226, 15.582212, 14.386771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.023722, 15.226316, 14.818602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393003, 15.158989, 14.956795>,  <19.614573, 15.118592, 15.039711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393003, 15.158989, 14.956795>,  <19.023722, 15.226316, 14.818602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393003, 15.158989, 14.956795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377017, -0.222437, 0.899099,
		-0.074485, -0.960308, -0.268814,
		0.923207, -0.168317, 0.345484,
		19.669966, 15.108494, 15.060440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986710, 14.653553, 15.221453>,  <19.023722, 15.226316, 14.818602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986710, 14.653553, 15.221453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.318932, 14.830259, 15.357110>,  <19.518265, 14.936283, 15.438504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.318932, 14.830259, 15.357110>,  <18.986710, 14.653553, 15.221453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318932, 14.830259, 15.357110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267397, -0.217860, 0.938635,
		0.488543, -0.870276, -0.062818,
		0.830557, 0.441767, 0.339143,
		19.568098, 14.962790, 15.458853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200514, 14.232428, 15.674635>,  <18.986710, 14.653553, 15.221453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.200514, 14.232428, 15.674635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.332928, 14.601016, 15.755932>,  <19.412376, 14.822169, 15.804710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.332928, 14.601016, 15.755932>,  <19.200514, 14.232428, 15.674635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.332928, 14.601016, 15.755932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428645, -0.045035, 0.902350,
		0.840642, -0.385830, 0.380075,
		0.331037, 0.921470, 0.203242,
		19.432240, 14.877457, 15.816905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594269, 14.214367, 16.389130>,  <19.200514, 14.232428, 15.674635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594269, 14.214367, 16.389130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491226, 14.589410, 16.295723>,  <19.429399, 14.814436, 16.239679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.491226, 14.589410, 16.295723>,  <19.594269, 14.214367, 16.389130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.491226, 14.589410, 16.295723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230115, 0.175189, 0.957265,
		0.938448, 0.300336, 0.170627,
		-0.257609, 0.937607, -0.233517,
		19.413944, 14.870692, 16.225668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.783184, 14.499647, 17.018166>,  <19.594269, 14.214367, 16.389130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.783184, 14.499647, 17.018166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558962, 14.762067, 16.816025>,  <19.424429, 14.919518, 16.694740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558962, 14.762067, 16.816025>,  <19.783184, 14.499647, 17.018166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558962, 14.762067, 16.816025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484569, 0.235010, 0.842593,
		0.671544, 0.717197, 0.186165,
		-0.560555, 0.656048, -0.505351,
		19.390795, 14.958881, 16.664419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.764759, 14.978368, 17.481770>,  <19.783184, 14.499647, 17.018166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.764759, 14.978368, 17.481770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466166, 15.083645, 17.237314>,  <19.287008, 15.146811, 17.090641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466166, 15.083645, 17.237314>,  <19.764759, 14.978368, 17.481770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.466166, 15.083645, 17.237314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502945, 0.378173, 0.777195,
		0.435667, 0.887533, -0.149930,
		-0.746486, 0.263192, -0.611137,
		19.242220, 15.162602, 17.053972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621922, 15.729216, 17.595104>,  <19.764759, 14.978368, 17.481770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621922, 15.729216, 17.595104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304348, 15.530872, 17.454369>,  <19.113804, 15.411866, 17.369926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304348, 15.530872, 17.454369>,  <19.621922, 15.729216, 17.595104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304348, 15.530872, 17.454369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527905, 0.275112, 0.803511,
		-0.301632, 0.823674, -0.480187,
		-0.793936, -0.495858, -0.351839,
		19.066168, 15.382115, 17.348818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963781, 16.207811, 17.685711>,  <19.621922, 15.729216, 17.595104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.963781, 16.207811, 17.685711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857565, 15.822212, 17.680105>,  <18.793835, 15.590853, 17.676743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857565, 15.822212, 17.680105>,  <18.963781, 16.207811, 17.685711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857565, 15.822212, 17.680105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462336, 0.114571, 0.879272,
		-0.846011, 0.239960, -0.476114,
		-0.265539, -0.963998, -0.014014,
		18.777903, 15.533012, 17.675901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351170, 16.181257, 17.976078>,  <18.963781, 16.207811, 17.685711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351170, 16.181257, 17.976078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440294, 15.792995, 18.012260>,  <18.493769, 15.560038, 18.033970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440294, 15.792995, 18.012260>,  <18.351170, 16.181257, 17.976078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.440294, 15.792995, 18.012260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281768, 0.024705, 0.959164,
		-0.933254, -0.239199, -0.267995,
		0.222810, -0.970656, 0.090455,
		18.507137, 15.501799, 18.039396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846224, 15.956824, 18.276743>,  <18.351170, 16.181257, 17.976078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846224, 15.956824, 18.276743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123308, 15.674299, 18.335091>,  <18.289558, 15.504785, 18.370098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123308, 15.674299, 18.335091>,  <17.846224, 15.956824, 18.276743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.123308, 15.674299, 18.335091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225169, -0.019656, 0.974121,
		-0.685167, -0.707627, -0.172655,
		0.692708, -0.706313, 0.145868,
		18.331121, 15.462405, 18.378851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478762, 15.380096, 18.621687>,  <17.846224, 15.956824, 18.276743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478762, 15.380096, 18.621687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857014, 15.280311, 18.705164>,  <18.083965, 15.220439, 18.755249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857014, 15.280311, 18.705164>,  <17.478762, 15.380096, 18.621687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857014, 15.280311, 18.705164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220381, -0.019561, 0.975218,
		-0.239200, -0.968186, -0.073474,
		0.945630, -0.249464, 0.208691,
		18.140703, 15.205472, 18.767771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410885, 14.930549, 19.276493>,  <17.478762, 15.380096, 18.621687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.410885, 14.930549, 19.276493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779217, 15.086122, 19.265127>,  <18.000216, 15.179465, 19.258308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.779217, 15.086122, 19.265127>,  <17.410885, 14.930549, 19.276493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.779217, 15.086122, 19.265127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048052, -0.040859, 0.998009,
		0.386998, -0.920359, -0.056313,
		0.920828, 0.388934, -0.028413,
		18.055466, 15.202802, 19.256603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762667, 14.602736, 19.747608>,  <17.410885, 14.930549, 19.276493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762667, 14.602736, 19.747608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988287, 14.927665, 19.688309>,  <18.123659, 15.122622, 19.652729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.988287, 14.927665, 19.688309>,  <17.762667, 14.602736, 19.747608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988287, 14.927665, 19.688309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206602, 0.034992, 0.977799,
		0.799475, -0.582158, -0.148090,
		0.564052, 0.812322, -0.148250,
		18.157503, 15.171361, 19.643833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847601, 13.917377, 19.920321>,  <17.762667, 14.602736, 19.747608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847601, 13.917377, 19.920321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529818, 13.698898, 20.026533>,  <17.339148, 13.567811, 20.090260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529818, 13.698898, 20.026533>,  <17.847601, 13.917377, 19.920321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.529818, 13.698898, 20.026533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016952, -0.417103, -0.908701,
		0.607083, -0.726426, 0.322111,
		-0.794457, -0.546197, 0.265530,
		17.291481, 13.535039, 20.106192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.059772, 13.267633, 19.841866>,  <17.847601, 13.917377, 19.920321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.059772, 13.267633, 19.841866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660807, 13.284921, 19.818899>,  <17.421427, 13.295293, 19.805120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660807, 13.284921, 19.818899>,  <18.059772, 13.267633, 19.841866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660807, 13.284921, 19.818899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037099, -0.374566, -0.926458,
		-0.061545, -0.926192, 0.371994,
		-0.997415, 0.043218, -0.057413,
		17.361582, 13.297886, 19.801676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849272, 12.621535, 19.668736>,  <18.059772, 13.267633, 19.841866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849272, 12.621535, 19.668736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562124, 12.880997, 19.567612>,  <17.389835, 13.036674, 19.506937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562124, 12.880997, 19.567612>,  <17.849272, 12.621535, 19.668736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562124, 12.880997, 19.567612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216500, -0.553138, -0.804466,
		-0.661660, -0.522767, 0.537514,
		-0.717868, 0.648655, -0.252811,
		17.346764, 13.075593, 19.491770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.551622, 12.157192, 19.128603>,  <17.849272, 12.621535, 19.668736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.551622, 12.157192, 19.128603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389400, 12.520220, 19.085070>,  <17.292067, 12.738036, 19.058949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.389400, 12.520220, 19.085070>,  <17.551622, 12.157192, 19.128603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.389400, 12.520220, 19.085070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223455, -0.213890, -0.950957,
		-0.886337, -0.361346, 0.289545,
		-0.405556, 0.907568, -0.108834,
		17.267735, 12.792490, 19.052420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.857092, 12.177951, 18.777733>,  <17.551622, 12.157192, 19.128603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.857092, 12.177951, 18.777733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993212, 12.546009, 18.700247>,  <17.074884, 12.766844, 18.653755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993212, 12.546009, 18.700247>,  <16.857092, 12.177951, 18.777733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993212, 12.546009, 18.700247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070869, -0.180326, -0.981050,
		-0.937642, 0.347582, 0.003844,
		0.340302, 0.920146, -0.193714,
		17.095303, 12.822053, 18.642132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471283, 12.305750, 18.061390>,  <16.857092, 12.177951, 18.777733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.471283, 12.305750, 18.061390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766850, 12.572700, 18.098518>,  <16.944189, 12.732869, 18.120796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766850, 12.572700, 18.098518>,  <16.471283, 12.305750, 18.061390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.766850, 12.572700, 18.098518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042379, 0.091457, -0.994907,
		-0.672463, 0.739086, 0.039296,
		0.738916, 0.667373, 0.092823,
		16.988523, 12.772911, 18.126366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.334003, 12.809229, 17.565517>,  <16.471283, 12.305750, 18.061390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.334003, 12.809229, 17.565517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723089, 12.857265, 17.644920>,  <16.956541, 12.886086, 17.692562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723089, 12.857265, 17.644920>,  <16.334003, 12.809229, 17.565517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723089, 12.857265, 17.644920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188205, 0.091890, -0.977822,
		-0.135666, 0.988501, 0.066782,
		0.972715, 0.120088, 0.198507,
		17.014904, 12.893291, 17.704472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568148, 13.312763, 17.180597>,  <16.334003, 12.809229, 17.565517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568148, 13.312763, 17.180597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921364, 13.146011, 17.266811>,  <17.133293, 13.045960, 17.318539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921364, 13.146011, 17.266811>,  <16.568148, 13.312763, 17.180597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.921364, 13.146011, 17.266811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206882, -0.066443, -0.976107,
		0.421239, 0.906530, 0.027574,
		0.883039, -0.416879, 0.215533,
		17.186275, 13.020947, 17.331470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.990593, 13.622168, 16.786716>,  <16.568148, 13.312763, 17.180597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.990593, 13.622168, 16.786716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179653, 13.281204, 16.876160>,  <17.293089, 13.076626, 16.929827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179653, 13.281204, 16.876160>,  <16.990593, 13.622168, 16.786716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179653, 13.281204, 16.876160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136813, -0.179688, -0.974164,
		0.870565, 0.491032, 0.031691,
		0.472651, -0.852408, 0.223609,
		17.321449, 13.025482, 16.943243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527199, 13.671311, 16.287149>,  <16.990593, 13.622168, 16.786716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527199, 13.671311, 16.287149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504408, 13.292689, 16.414139>,  <17.490734, 13.065516, 16.490332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.504408, 13.292689, 16.414139>,  <17.527199, 13.671311, 16.287149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504408, 13.292689, 16.414139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278856, -0.320421, -0.905301,
		0.958641, 0.036950, 0.282209,
		-0.056975, -0.946554, 0.317473,
		17.487316, 13.008723, 16.509380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099699, 13.325401, 15.904209>,  <17.527199, 13.671311, 16.287149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099699, 13.325401, 15.904209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844641, 13.043575, 16.028786>,  <17.691607, 12.874479, 16.103533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.844641, 13.043575, 16.028786>,  <18.099699, 13.325401, 15.904209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.844641, 13.043575, 16.028786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169363, -0.522627, -0.835570,
		0.751483, -0.480049, 0.452577,
		-0.637644, -0.704566, 0.311443,
		17.653347, 12.832206, 16.122219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421627, 12.661332, 15.903149>,  <18.099699, 13.325401, 15.904209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421627, 12.661332, 15.903149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.025583, 12.629444, 15.856971>,  <17.787956, 12.610312, 15.829264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.025583, 12.629444, 15.856971>,  <18.421627, 12.661332, 15.903149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025583, 12.629444, 15.856971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139981, -0.616486, -0.774823,
		-0.009402, -0.783320, 0.621548,
		-0.990109, -0.079720, -0.115446,
		17.728550, 12.605528, 15.822337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.095817, 15.201483, 24.986933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.475912, 15.144151, 25.097570>,  <15.703969, 15.109752, 25.163952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.475912, 15.144151, 25.097570>,  <15.095817, 15.201483, 24.986933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475912, 15.144151, 25.097570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166275, -0.517470, -0.839391,
		0.263439, 0.843612, -0.467887,
		0.950238, -0.143330, 0.276593,
		15.760983, 15.101151, 25.180548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.526540, 15.496879, 24.477177>,  <15.095817, 15.201483, 24.986933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.526540, 15.496879, 24.477177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.765256, 15.237532, 24.666264>,  <15.908485, 15.081923, 24.779716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.765256, 15.237532, 24.666264>,  <15.526540, 15.496879, 24.477177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765256, 15.237532, 24.666264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314493, -0.352990, -0.881188,
		0.738197, 0.674551, -0.006754,
		0.596790, -0.648367, 0.472718,
		15.944293, 15.043021, 24.808079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231792, 15.464585, 24.086697>,  <15.526540, 15.496879, 24.477177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231792, 15.464585, 24.086697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.194939, 15.127292, 24.298534>,  <16.172827, 14.924915, 24.425636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.194939, 15.127292, 24.298534>,  <16.231792, 15.464585, 24.086697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194939, 15.127292, 24.298534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464302, -0.506878, -0.726291,
		0.880872, 0.178973, 0.438216,
		-0.092136, -0.843234, 0.529592,
		16.167297, 14.874322, 24.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843752, 15.383693, 24.182264>,  <16.231792, 15.464585, 24.086697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843752, 15.383693, 24.182264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.617353, 15.054606, 24.203381>,  <16.481514, 14.857155, 24.216051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.617353, 15.054606, 24.203381>,  <16.843752, 15.383693, 24.182264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.617353, 15.054606, 24.203381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520865, -0.406501, -0.750637,
		0.639022, -0.397359, 0.658602,
		-0.565995, -0.822717, 0.052793,
		16.447556, 14.807792, 24.219219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386314, 14.876711, 24.097317>,  <16.843752, 15.383693, 24.182264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386314, 14.876711, 24.097317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.025852, 14.711208, 24.045591>,  <16.809574, 14.611907, 24.014557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.025852, 14.711208, 24.045591>,  <17.386314, 14.876711, 24.097317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025852, 14.711208, 24.045591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342459, -0.496613, -0.797557,
		0.265776, -0.763008, 0.589221,
		-0.901157, -0.413756, -0.129311,
		16.755505, 14.587082, 24.006798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.521204, 14.160156, 23.980808>,  <17.386314, 14.876711, 24.097317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.521204, 14.160156, 23.980808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.148336, 14.213516, 23.846186>,  <16.924616, 14.245532, 23.765413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.148336, 14.213516, 23.846186>,  <17.521204, 14.160156, 23.980808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.148336, 14.213516, 23.846186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276209, -0.338916, -0.899358,
		-0.234036, -0.931312, 0.279080,
		-0.932167, 0.133398, -0.336555,
		16.868687, 14.253536, 23.745218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251350, 13.518612, 23.743523>,  <17.521204, 14.160156, 23.980808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251350, 13.518612, 23.743523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.048271, 13.804932, 23.551743>,  <16.926424, 13.976724, 23.436674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.048271, 13.804932, 23.551743>,  <17.251350, 13.518612, 23.743523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.048271, 13.804932, 23.551743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251053, -0.409437, -0.877117,
		-0.824144, -0.565679, 0.028167,
		-0.507699, 0.715799, -0.479450,
		16.895962, 14.019671, 23.407907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.908062, 13.158249, 23.144516>,  <17.251350, 13.518612, 23.743523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.908062, 13.158249, 23.144516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.896357, 13.540656, 23.027777>,  <16.889334, 13.770101, 22.957733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.896357, 13.540656, 23.027777>,  <16.908062, 13.158249, 23.144516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896357, 13.540656, 23.027777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081512, -0.288717, -0.953938,
		-0.996243, -0.051706, -0.069477,
		-0.029265, 0.956017, -0.291847,
		16.887577, 13.827461, 22.940222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302551, 13.177855, 22.650362>,  <16.908062, 13.158249, 23.144516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302551, 13.177855, 22.650362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.528191, 13.503307, 22.594074>,  <16.663574, 13.698578, 22.560303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.528191, 13.503307, 22.594074>,  <16.302551, 13.177855, 22.650362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.528191, 13.503307, 22.594074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059248, -0.130097, -0.989730,
		-0.823579, 0.566642, -0.025181,
		0.564099, 0.813628, -0.140718,
		16.697420, 13.747396, 22.551859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.978950, 13.613583, 22.083614>,  <16.302551, 13.177855, 22.650362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.978950, 13.613583, 22.083614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.366295, 13.707158, 22.118355>,  <16.598701, 13.763304, 22.139198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.366295, 13.707158, 22.118355>,  <15.978950, 13.613583, 22.083614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366295, 13.707158, 22.118355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137205, -0.208436, -0.968364,
		-0.208436, 0.949646, -0.233940,
		0.968364, 0.233940, 0.086851,
		16.656805, 13.777340, 22.144409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075005, 14.186227, 21.643923>,  <15.978950, 13.613583, 22.083614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075005, 14.186227, 21.643923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.440292, 14.024961, 21.667534>,  <16.659466, 13.928201, 21.681700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.440292, 14.024961, 21.667534>,  <16.075005, 14.186227, 21.643923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.440292, 14.024961, 21.667534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017607, -0.183774, -0.982811,
		0.407082, 0.896485, -0.174925,
		0.913222, -0.403165, 0.059027,
		16.714258, 13.904011, 21.685242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292221, 14.396044, 21.070581>,  <16.075005, 14.186227, 21.643923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.292221, 14.396044, 21.070581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.545383, 14.111612, 21.193087>,  <16.697281, 13.940953, 21.266590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.545383, 14.111612, 21.193087>,  <16.292221, 14.396044, 21.070581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545383, 14.111612, 21.193087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158453, -0.268232, -0.950234,
		0.757841, 0.649937, -0.057094,
		0.632906, -0.711079, 0.306262,
		16.735256, 13.898289, 21.284966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.780695, 14.543614, 20.684322>,  <16.292221, 14.396044, 21.070581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.780695, 14.543614, 20.684322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.870117, 14.170199, 20.796417>,  <16.923771, 13.946151, 20.863674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.870117, 14.170199, 20.796417>,  <16.780695, 14.543614, 20.684322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.870117, 14.170199, 20.796417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283751, -0.212725, -0.935005,
		0.932474, 0.288544, 0.217335,
		0.223558, -0.933536, 0.280235,
		16.937185, 13.890139, 20.880487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540411, 14.397247, 20.462833>,  <16.780695, 14.543614, 20.684322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540411, 14.397247, 20.462833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.337324, 14.055048, 20.503521>,  <17.215471, 13.849729, 20.527933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.337324, 14.055048, 20.503521>,  <17.540411, 14.397247, 20.462833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.337324, 14.055048, 20.503521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296761, -0.284507, -0.911586,
		0.808799, -0.432643, 0.398328,
		-0.507718, -0.855498, 0.101718,
		17.185009, 13.798399, 20.534037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296062, 14.567800, 20.365396>,  <17.540411, 14.397247, 20.462833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.296062, 14.567800, 20.365396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.258289, 14.935132, 20.211643>,  <18.235626, 15.155532, 20.119390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.258289, 14.935132, 20.211643>,  <18.296062, 14.567800, 20.365396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258289, 14.935132, 20.211643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114879, 0.393581, 0.912084,
		0.988881, 0.041972, -0.142663,
		-0.094431, 0.918332, -0.384383,
		18.229959, 15.210631, 20.096329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717197, 14.859991, 20.847170>,  <18.296062, 14.567800, 20.365396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717197, 14.859991, 20.847170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.512808, 15.160718, 20.680471>,  <18.390175, 15.341154, 20.580452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.512808, 15.160718, 20.680471>,  <18.717197, 14.859991, 20.847170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.512808, 15.160718, 20.680471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017111, 0.493616, 0.869512,
		0.859426, 0.437167, -0.265089,
		-0.510974, 0.751817, -0.416746,
		18.359516, 15.386263, 20.555449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173111, 15.491421, 20.988655>,  <18.717197, 14.859991, 20.847170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173111, 15.491421, 20.988655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.795740, 15.594472, 20.905161>,  <18.569317, 15.656302, 20.855064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.795740, 15.594472, 20.905161>,  <19.173111, 15.491421, 20.988655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.795740, 15.594472, 20.905161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014768, 0.661549, 0.749757,
		0.331247, 0.704259, -0.627928,
		-0.943428, 0.257628, -0.208736,
		18.512712, 15.671761, 20.842541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178135, 16.259212, 21.107527>,  <19.173111, 15.491421, 20.988655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178135, 16.259212, 21.107527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.791227, 16.157820, 21.102785>,  <18.559084, 16.096983, 21.099941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.791227, 16.157820, 21.102785>,  <19.178135, 16.259212, 21.107527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.791227, 16.157820, 21.102785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196823, 0.719936, 0.665547,
		-0.160172, 0.646095, -0.746261,
		-0.967267, -0.253483, -0.011853,
		18.501047, 16.081776, 21.099230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809361, 16.891813, 21.089302>,  <19.178135, 16.259212, 21.107527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809361, 16.891813, 21.089302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.548174, 16.620789, 21.224680>,  <18.391462, 16.458174, 21.305906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.548174, 16.620789, 21.224680>,  <18.809361, 16.891813, 21.089302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548174, 16.620789, 21.224680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227370, 0.601609, 0.765748,
		-0.722453, 0.423055, -0.546887,
		-0.652966, -0.677562, 0.338444,
		18.352283, 16.417521, 21.326214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250149, 17.192932, 21.152830>,  <18.809361, 16.891813, 21.089302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250149, 17.192932, 21.152830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.188538, 16.877769, 21.391317>,  <18.151571, 16.688671, 21.534409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.188538, 16.877769, 21.391317>,  <18.250149, 17.192932, 21.152830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.188538, 16.877769, 21.391317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391788, 0.602657, 0.695203,
		-0.907071, -0.126509, -0.401520,
		-0.154029, -0.787909, 0.596217,
		18.142328, 16.641397, 21.570183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538696, 17.248463, 21.395548>,  <18.250149, 17.192932, 21.152830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.538696, 17.248463, 21.395548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.694365, 16.992960, 21.661039>,  <17.787766, 16.839657, 21.820333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.694365, 16.992960, 21.661039>,  <17.538696, 17.248463, 21.395548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694365, 16.992960, 21.661039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399962, 0.531897, 0.746402,
		-0.829805, -0.555943, -0.048481,
		0.389170, -0.638759, 0.663727,
		17.811115, 16.801332, 21.860157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.992859, 16.967834, 21.926071>,  <17.538696, 17.248463, 21.395548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.992859, 16.967834, 21.926071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.350477, 16.917244, 22.097971>,  <17.565048, 16.886889, 22.201111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.350477, 16.917244, 22.097971>,  <16.992859, 16.967834, 21.926071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350477, 16.917244, 22.097971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210726, 0.727818, 0.652591,
		-0.395320, -0.674006, 0.624050,
		0.894045, -0.126479, 0.429752,
		17.618690, 16.879301, 22.226896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.874468, 16.912209, 22.636370>,  <16.992859, 16.967834, 21.926071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.874468, 16.912209, 22.636370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249880, 17.049492, 22.621546>,  <17.475126, 17.131861, 22.612652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249880, 17.049492, 22.621546>,  <16.874468, 16.912209, 22.636370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249880, 17.049492, 22.621546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255944, 0.763873, 0.592445,
		0.231641, -0.546541, 0.804758,
		0.938528, 0.343207, -0.037061,
		17.531439, 17.152454, 22.610428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901358, 16.962906, 23.265347>,  <16.874468, 16.912209, 22.636370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901358, 16.962906, 23.265347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.182611, 17.193930, 23.099442>,  <17.351364, 17.332544, 22.999899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.182611, 17.193930, 23.099442>,  <16.901358, 16.962906, 23.265347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.182611, 17.193930, 23.099442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142476, 0.685911, 0.713601,
		0.696639, -0.442662, 0.564575,
		0.703132, 0.577560, -0.414764,
		17.393551, 17.367197, 22.975012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293430, 17.068777, 23.841051>,  <16.901358, 16.962906, 23.265347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293430, 17.068777, 23.841051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.361197, 17.353802, 23.568712>,  <17.401855, 17.524817, 23.405310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.361197, 17.353802, 23.568712>,  <17.293430, 17.068777, 23.841051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361197, 17.353802, 23.568712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139645, 0.701219, 0.699136,
		0.975601, -0.023368, 0.218304,
		0.169416, 0.712563, -0.680847,
		17.412022, 17.567570, 23.364458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899153, 17.514854, 24.068432>,  <17.293430, 17.068777, 23.841051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.899153, 17.514854, 24.068432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.696865, 17.736027, 23.803551>,  <17.575493, 17.868731, 23.644621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.696865, 17.736027, 23.803551>,  <17.899153, 17.514854, 24.068432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696865, 17.736027, 23.803551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027302, 0.756955, 0.652896,
		0.862265, 0.348262, -0.367712,
		-0.505720, 0.552931, -0.662204,
		17.545149, 17.901907, 23.604889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945042, 18.217495, 24.312832>,  <17.899153, 17.514854, 24.068432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945042, 18.217495, 24.312832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.654829, 18.278913, 24.044497>,  <17.480701, 18.315763, 23.883495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.654829, 18.278913, 24.044497>,  <17.945042, 18.217495, 24.312832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.654829, 18.278913, 24.044497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360417, 0.745638, 0.560467,
		0.586260, 0.648419, -0.485646,
		-0.725533, 0.153544, -0.670839,
		17.437168, 18.324976, 23.843245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.852476, 18.998171, 24.201925>,  <17.945042, 18.217495, 24.312832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.852476, 18.998171, 24.201925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.513130, 18.815790, 24.094303>,  <17.309523, 18.706362, 24.029730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.513130, 18.815790, 24.094303>,  <17.852476, 18.998171, 24.201925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513130, 18.815790, 24.094303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520104, 0.622891, 0.584379,
		-0.098857, 0.635701, -0.765579,
		-0.848363, -0.455950, -0.269053,
		17.258621, 18.679005, 24.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.620368, 18.035078, 22.036968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.017392, 18.060150, 22.078716>,  <9.255607, 18.075193, 22.103765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.017392, 18.060150, 22.078716>,  <8.620368, 18.035078, 22.036968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.017392, 18.060150, 22.078716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121684, -0.538503, -0.833791,
		0.003943, 0.840289, -0.542124,
		0.992561, 0.062680, 0.104372,
		9.315161, 18.078955, 22.110027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.860291, 18.284748, 21.433439>,  <8.620368, 18.035078, 22.036968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.860291, 18.284748, 21.433439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.164798, 18.098377, 21.613832>,  <9.347502, 17.986555, 21.722069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.164798, 18.098377, 21.613832>,  <8.860291, 18.284748, 21.433439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.164798, 18.098377, 21.613832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150877, -0.549128, -0.822006,
		0.630643, 0.693808, -0.347735,
		0.761265, -0.465927, 0.450984,
		9.393177, 17.958599, 21.749128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.412106, 18.390141, 20.910042>,  <8.860291, 18.284748, 21.433439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.412106, 18.390141, 20.910042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.521063, 18.095732, 21.157936>,  <9.586437, 17.919086, 21.306673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.521063, 18.095732, 21.157936>,  <9.412106, 18.390141, 20.910042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.521063, 18.095732, 21.157936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285362, -0.553315, -0.782567,
		0.918896, 0.390014, 0.059314,
		0.272393, -0.736024, 0.619735,
		9.602780, 17.874924, 21.343857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.073543, 18.213734, 20.580673>,  <9.412106, 18.390141, 20.910042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.073543, 18.213734, 20.580673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.978224, 17.906061, 20.817846>,  <9.921033, 17.721457, 20.960150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.978224, 17.906061, 20.817846>,  <10.073543, 18.213734, 20.580673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978224, 17.906061, 20.817846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362114, -0.636867, -0.680643,
		0.901159, 0.052515, 0.430296,
		-0.238297, -0.769184, 0.592934,
		9.906734, 17.675306, 20.995728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.646775, 17.924957, 20.600853>,  <10.073543, 18.213734, 20.580673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.646775, 17.924957, 20.600853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.384743, 17.649939, 20.726168>,  <10.227523, 17.484928, 20.801355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.384743, 17.649939, 20.726168>,  <10.646775, 17.924957, 20.600853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.384743, 17.649939, 20.726168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644470, -0.724894, -0.243285,
		0.394368, 0.042531, 0.917968,
		-0.655082, -0.687547, 0.313285,
		10.188218, 17.443674, 20.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.060356, 17.440510, 20.939344>,  <10.646775, 17.924957, 20.600853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.060356, 17.440510, 20.939344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.710707, 17.265724, 20.854517>,  <10.500917, 17.160852, 20.803619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.710707, 17.265724, 20.854517>,  <11.060356, 17.440510, 20.939344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.710707, 17.265724, 20.854517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485552, -0.775229, -0.404053,
		0.012153, -0.456163, 0.889813,
		-0.874123, -0.436962, -0.212069,
		10.448470, 17.134636, 20.790895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.066765, 16.756233, 21.203724>,  <11.060356, 17.440510, 20.939344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.066765, 16.756233, 21.203724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.798420, 16.744766, 20.907312>,  <10.637413, 16.737886, 20.729465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.798420, 16.744766, 20.907312>,  <11.066765, 16.756233, 21.203724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.798420, 16.744766, 20.907312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481514, -0.776798, -0.405868,
		-0.563994, -0.629096, 0.534929,
		-0.670862, -0.028669, -0.741028,
		10.597161, 16.736166, 20.685003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.851576, 16.020119, 21.103161>,  <11.066765, 16.756233, 21.203724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.851576, 16.020119, 21.103161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.724988, 16.187475, 20.762621>,  <10.649035, 16.287889, 20.558298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.724988, 16.187475, 20.762621>,  <10.851576, 16.020119, 21.103161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724988, 16.187475, 20.762621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231385, -0.836321, -0.497019,
		-0.919950, -0.354282, 0.167861,
		-0.316470, 0.418392, -0.851349,
		10.630047, 16.312992, 20.507215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.425766, 15.520238, 20.687790>,  <10.851576, 16.020119, 21.103161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.425766, 15.520238, 20.687790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.551591, 15.794970, 20.425701>,  <10.627086, 15.959808, 20.268448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.551591, 15.794970, 20.425701>,  <10.425766, 15.520238, 20.687790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.551591, 15.794970, 20.425701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181498, -0.721046, -0.668694,
		-0.931724, 0.091425, -0.351472,
		0.314563, 0.686829, -0.655222,
		10.645960, 16.001019, 20.229136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.132442, 15.297579, 20.118700>,  <10.425766, 15.520238, 20.687790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.132442, 15.297579, 20.118700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.432172, 15.537992, 20.007507>,  <10.612010, 15.682240, 19.940792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.432172, 15.537992, 20.007507>,  <10.132442, 15.297579, 20.118700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.432172, 15.537992, 20.007507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314238, -0.692243, -0.649656,
		-0.582896, 0.399450, -0.707581,
		0.749324, 0.601031, -0.277984,
		10.656969, 15.718301, 19.924112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.044754, 15.483060, 19.446123>,  <10.132442, 15.297579, 20.118700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.044754, 15.483060, 19.446123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.437840, 15.509909, 19.515137>,  <10.673691, 15.526018, 19.556545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.437840, 15.509909, 19.515137>,  <10.044754, 15.483060, 19.446123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437840, 15.509909, 19.515137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165038, -0.739867, -0.652196,
		0.083874, 0.669397, -0.738155,
		0.982714, 0.067122, 0.172532,
		10.732654, 15.530046, 19.566896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.321395, 15.688015, 18.820171>,  <10.044754, 15.483060, 19.446123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.321395, 15.688015, 18.820171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.620115, 15.518522, 19.025204>,  <10.799348, 15.416827, 19.148224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.620115, 15.518522, 19.025204>,  <10.321395, 15.688015, 18.820171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.620115, 15.518522, 19.025204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284898, -0.492604, -0.822298,
		0.600932, 0.760127, -0.247157,
		0.746802, -0.423731, 0.512581,
		10.844156, 15.391403, 19.178978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.734770, 15.529127, 18.336481>,  <10.321395, 15.688015, 18.820171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.734770, 15.529127, 18.336481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.935161, 15.349148, 18.632202>,  <11.055395, 15.241160, 18.809635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.935161, 15.349148, 18.632202>,  <10.734770, 15.529127, 18.336481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.935161, 15.349148, 18.632202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433643, -0.608762, -0.664351,
		0.748983, 0.653418, -0.109858,
		0.500976, -0.449949, 0.739303,
		11.085454, 15.214163, 18.853992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.451848, 15.529466, 18.248449>,  <10.734770, 15.529127, 18.336481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.451848, 15.529466, 18.248449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.356791, 15.207676, 18.466200>,  <11.299758, 15.014602, 18.596851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.356791, 15.207676, 18.466200>,  <11.451848, 15.529466, 18.248449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.356791, 15.207676, 18.466200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524431, -0.577993, -0.625218,
		0.817618, 0.136911, 0.559246,
		-0.237641, -0.804475, 0.544377,
		11.285499, 14.966333, 18.629513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.105262, 15.830192, 18.452496>,  <11.451848, 15.529466, 18.248449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.105262, 15.830192, 18.452496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.296024, 16.142406, 18.290842>,  <12.410481, 16.329735, 18.193850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.296024, 16.142406, 18.290842>,  <12.105262, 15.830192, 18.452496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.296024, 16.142406, 18.290842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223775, 0.552458, 0.802941,
		0.849992, -0.292492, 0.438135,
		0.476905, 0.780537, -0.404132,
		12.439096, 16.376568, 18.169603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.427917, 16.117546, 19.013407>,  <12.105262, 15.830192, 18.452496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.427917, 16.117546, 19.013407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.457223, 16.413830, 18.746279>,  <12.474806, 16.591600, 18.586002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.457223, 16.413830, 18.746279>,  <12.427917, 16.117546, 19.013407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457223, 16.413830, 18.746279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062962, 0.664847, 0.744321,
		0.995323, -0.096579, 0.002072,
		0.073264, 0.740710, -0.667819,
		12.479202, 16.636044, 18.545933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.996899, 16.621252, 19.212492>,  <12.427917, 16.117546, 19.013407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.996899, 16.621252, 19.212492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.723183, 16.818386, 18.997509>,  <12.558953, 16.936666, 18.868519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.723183, 16.818386, 18.997509>,  <12.996899, 16.621252, 19.212492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.723183, 16.818386, 18.997509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051663, 0.767955, 0.638416,
		0.727377, 0.409095, -0.550966,
		-0.684291, 0.492834, -0.537458,
		12.517896, 16.966236, 18.836271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.296329, 17.213524, 19.367483>,  <12.996899, 16.621252, 19.212492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.296329, 17.213524, 19.367483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.932691, 17.300119, 19.225113>,  <12.714508, 17.352076, 19.139690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.932691, 17.300119, 19.225113>,  <13.296329, 17.213524, 19.367483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.932691, 17.300119, 19.225113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035462, 0.891485, 0.451660,
		0.415079, 0.397979, -0.818121,
		-0.909094, 0.216487, -0.355924,
		12.659963, 17.365065, 19.118336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310051, 18.011522, 19.200205>,  <13.296329, 17.213524, 19.367483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.310051, 18.011522, 19.200205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.926092, 17.901814, 19.223431>,  <12.695717, 17.835989, 19.237366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.926092, 17.901814, 19.223431>,  <13.310051, 18.011522, 19.200205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926092, 17.901814, 19.223431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222471, 0.871240, 0.437547,
		-0.170596, 0.407082, -0.897319,
		-0.959898, -0.274271, 0.058066,
		12.638123, 17.819532, 19.240850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.851906, 18.568136, 18.844843>,  <13.310051, 18.011522, 19.200205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.851906, 18.568136, 18.844843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.658649, 18.362633, 19.128428>,  <12.542696, 18.239330, 19.298578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.658649, 18.362633, 19.128428>,  <12.851906, 18.568136, 18.844843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.658649, 18.362633, 19.128428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251515, 0.857051, 0.449672,
		-0.838639, 0.038940, -0.543294,
		-0.483141, -0.513759, 0.708962,
		12.513707, 18.208506, 19.341116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341622, 19.018509, 18.969095>,  <12.851906, 18.568136, 18.844843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341622, 19.018509, 18.969095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.327899, 18.767746, 19.280430>,  <12.319665, 18.617289, 19.467232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.327899, 18.767746, 19.280430>,  <12.341622, 19.018509, 18.969095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.327899, 18.767746, 19.280430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266330, 0.756370, 0.597472,
		-0.963271, -0.186797, -0.192914,
		-0.034309, -0.626906, 0.778339,
		12.317606, 18.579674, 19.513931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.785805, 19.219687, 19.319809>,  <12.341622, 19.018509, 18.969095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.785805, 19.219687, 19.319809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.961226, 19.017971, 19.617363>,  <12.066480, 18.896942, 19.795895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.961226, 19.017971, 19.617363>,  <11.785805, 19.219687, 19.319809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961226, 19.017971, 19.617363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264414, 0.718692, 0.643092,
		-0.858927, -0.478725, 0.181845,
		0.438554, -0.504286, 0.743885,
		12.092793, 18.866686, 19.840528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.304197, 19.231659, 19.841095>,  <11.785805, 19.219687, 19.319809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.304197, 19.231659, 19.841095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.630724, 19.112413, 20.038986>,  <11.826640, 19.040867, 20.157721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.630724, 19.112413, 20.038986>,  <11.304197, 19.231659, 19.841095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630724, 19.112413, 20.038986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337955, 0.448093, 0.827647,
		-0.468415, -0.842818, 0.265037,
		0.816317, -0.298112, 0.494728,
		11.875619, 19.022980, 20.187405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.137056, 18.974333, 20.503468>,  <11.304197, 19.231659, 19.841095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.137056, 18.974333, 20.503468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.514648, 19.097233, 20.551634>,  <11.741203, 19.170973, 20.580534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.514648, 19.097233, 20.551634>,  <11.137056, 18.974333, 20.503468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.514648, 19.097233, 20.551634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252542, 0.437697, 0.862927,
		0.212427, -0.844996, 0.490771,
		0.943980, 0.307249, 0.120418,
		11.797842, 19.189407, 20.587759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.247409, 18.787363, 21.131830>,  <11.137056, 18.974333, 20.503468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.247409, 18.787363, 21.131830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.532794, 19.055441, 21.050037>,  <11.704025, 19.216288, 21.000961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.532794, 19.055441, 21.050037>,  <11.247409, 18.787363, 21.131830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.532794, 19.055441, 21.050037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141531, 0.423648, 0.894702,
		0.686250, -0.609396, 0.397110,
		0.713463, 0.670192, -0.204480,
		11.746833, 19.256498, 20.988693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.702702, 18.779781, 21.647806>,  <11.247409, 18.787363, 21.131830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.702702, 18.779781, 21.647806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.805895, 19.135885, 21.497667>,  <11.867811, 19.349546, 21.407583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.805895, 19.135885, 21.497667>,  <11.702702, 18.779781, 21.647806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.805895, 19.135885, 21.497667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070325, 0.370164, 0.926301,
		0.963587, -0.265366, 0.032889,
		0.257983, 0.890258, -0.375347,
		11.883290, 19.402962, 21.385063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.298896, 19.020115, 21.940619>,  <11.702702, 18.779781, 21.647806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.298896, 19.020115, 21.940619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.175179, 19.366253, 21.782877>,  <12.100948, 19.573936, 21.688232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.175179, 19.366253, 21.782877>,  <12.298896, 19.020115, 21.940619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.175179, 19.366253, 21.782877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094150, 0.384784, 0.918192,
		0.946295, 0.321118, -0.037538,
		-0.309292, 0.865346, -0.394353,
		12.082391, 19.625856, 21.664572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805992, 19.690660, 22.233356>,  <12.298896, 19.020115, 21.940619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.805992, 19.690660, 22.233356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.429175, 19.778536, 22.131931>,  <12.203085, 19.831261, 22.071075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.429175, 19.778536, 22.131931>,  <12.805992, 19.690660, 22.233356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.429175, 19.778536, 22.131931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106372, 0.521210, 0.846773,
		0.318186, 0.824668, -0.467633,
		-0.942042, 0.219689, -0.253563,
		12.146563, 19.844442, 22.055862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357820, 20.228783, 21.927414>,  <12.805992, 19.690660, 22.233356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357820, 20.228783, 21.927414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693046, 20.133596, 22.123789>,  <13.894181, 20.076485, 22.241613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693046, 20.133596, 22.123789>,  <13.357820, 20.228783, 21.927414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693046, 20.133596, 22.123789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241369, -0.645282, -0.724812,
		0.489273, 0.725936, -0.483351,
		0.838065, -0.237965, 0.490937,
		13.944466, 20.062206, 22.271070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.841869, 20.083315, 21.393774>,  <13.357820, 20.228783, 21.927414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.841869, 20.083315, 21.393774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.013782, 19.920527, 21.716181>,  <14.116929, 19.822853, 21.909624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.013782, 19.920527, 21.716181>,  <13.841869, 20.083315, 21.393774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013782, 19.920527, 21.716181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390931, -0.720793, -0.572390,
		0.813918, 0.561099, -0.150685,
		0.429780, -0.406971, 0.806017,
		14.142715, 19.798435, 21.957987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566004, 19.936029, 21.118830>,  <13.841869, 20.083315, 21.393774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566004, 19.936029, 21.118830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.472690, 19.710377, 21.435646>,  <14.416701, 19.574986, 21.625736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.472690, 19.710377, 21.435646>,  <14.566004, 19.936029, 21.118830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472690, 19.710377, 21.435646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375450, -0.803610, -0.461788,
		0.897004, 0.189644, 0.399274,
		-0.233286, -0.564133, 0.792043,
		14.402704, 19.541138, 21.673260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203112, 19.825596, 21.274996>,  <14.566004, 19.936029, 21.118830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203112, 19.825596, 21.274996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.993468, 19.540436, 21.461365>,  <14.867682, 19.369339, 21.573187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.993468, 19.540436, 21.461365>,  <15.203112, 19.825596, 21.274996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993468, 19.540436, 21.461365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610107, -0.695994, -0.378632,
		0.594207, 0.085819, 0.799721,
		-0.524107, -0.712900, 0.465923,
		14.836236, 19.326565, 21.601141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634711, 19.362690, 21.721832>,  <15.203112, 19.825596, 21.274996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634711, 19.362690, 21.721832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.316312, 19.130272, 21.653982>,  <15.125272, 18.990822, 21.613272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.316312, 19.130272, 21.653982>,  <15.634711, 19.362690, 21.721832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.316312, 19.130272, 21.653982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587872, -0.675347, -0.445323,
		0.144196, -0.454195, 0.879155,
		-0.795999, -0.581045, -0.169626,
		15.077512, 18.955959, 21.603094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939146, 18.708656, 21.676090>,  <15.634711, 19.362690, 21.721832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939146, 18.708656, 21.676090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.576517, 18.641741, 21.521099>,  <15.358939, 18.601591, 21.428104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.576517, 18.641741, 21.521099>,  <15.939146, 18.708656, 21.676090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576517, 18.641741, 21.521099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350758, -0.809233, -0.471285,
		-0.234721, -0.563166, 0.792307,
		-0.906573, -0.167288, -0.387480,
		15.304545, 18.591555, 21.404856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865599, 18.075024, 21.759510>,  <15.939146, 18.708656, 21.676090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865599, 18.075024, 21.759510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.606718, 18.173731, 21.471001>,  <15.451389, 18.232956, 21.297895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.606718, 18.173731, 21.471001>,  <15.865599, 18.075024, 21.759510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606718, 18.173731, 21.471001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364300, -0.731008, -0.576986,
		-0.669637, -0.636186, 0.383214,
		-0.647203, 0.246767, -0.721273,
		15.412558, 18.247761, 21.254618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541011, 17.433931, 21.513870>,  <15.865599, 18.075024, 21.759510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541011, 17.433931, 21.513870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.492855, 17.700382, 21.219448>,  <15.463962, 17.860252, 21.042795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.492855, 17.700382, 21.219448>,  <15.541011, 17.433931, 21.513870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.492855, 17.700382, 21.219448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339710, -0.669043, -0.661043,
		-0.932793, -0.329629, -0.145745,
		-0.120389, 0.666128, -0.736057,
		15.456738, 17.900221, 20.998631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.362297, 17.029299, 21.026730>,  <15.541011, 17.433931, 21.513870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.362297, 17.029299, 21.026730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.445488, 17.353714, 20.808022>,  <15.495402, 17.548363, 20.676796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.445488, 17.353714, 20.808022>,  <15.362297, 17.029299, 21.026730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.445488, 17.353714, 20.808022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406042, -0.580142, -0.706091,
		-0.889874, -0.075161, -0.449973,
		0.207978, 0.811040, -0.546772,
		15.507881, 17.597027, 20.643990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.963566, 16.932652, 20.370665>,  <15.362297, 17.029299, 21.026730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.963566, 16.932652, 20.370665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.269720, 17.178673, 20.294882>,  <15.453413, 17.326286, 20.249413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.269720, 17.178673, 20.294882>,  <14.963566, 16.932652, 20.370665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.269720, 17.178673, 20.294882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227746, -0.534185, -0.814112,
		-0.601926, 0.579962, -0.548934,
		0.765387, 0.615052, -0.189456,
		15.499336, 17.363188, 20.238045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980477, 17.029976, 19.709490>,  <14.963566, 16.932652, 20.370665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980477, 17.029976, 19.709490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.355388, 17.160990, 19.757212>,  <15.580334, 17.239597, 19.785845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.355388, 17.160990, 19.757212>,  <14.980477, 17.029976, 19.709490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355388, 17.160990, 19.757212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298395, -0.576944, -0.760326,
		-0.180201, 0.748236, -0.638491,
		0.937277, 0.327534, 0.119303,
		15.636571, 17.259251, 19.793003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.155304, 17.323795, 19.112373>,  <14.980477, 17.029976, 19.709490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.155304, 17.323795, 19.112373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.504216, 17.221327, 19.278988>,  <15.713564, 17.159845, 19.378956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.504216, 17.221327, 19.278988>,  <15.155304, 17.323795, 19.112373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.504216, 17.221327, 19.278988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262541, -0.473290, -0.840874,
		0.412550, 0.842836, -0.345586,
		0.872281, -0.256172, 0.416535,
		15.765901, 17.144476, 19.403948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673494, 17.480627, 18.633457>,  <15.155304, 17.323795, 19.112373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673494, 17.480627, 18.633457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.853617, 17.213289, 18.870283>,  <15.961690, 17.052887, 19.012379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.853617, 17.213289, 18.870283>,  <15.673494, 17.480627, 18.633457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853617, 17.213289, 18.870283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355976, -0.473734, -0.805516,
		0.818844, 0.573490, 0.024589,
		0.450307, -0.668345, 0.592063,
		15.988708, 17.012785, 19.047901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212391, 17.298977, 18.211430>,  <15.673494, 17.480627, 18.633457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212391, 17.298977, 18.211430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.246300, 16.999800, 18.474760>,  <16.266645, 16.820293, 18.632757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.246300, 16.999800, 18.474760>,  <16.212391, 17.298977, 18.211430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.246300, 16.999800, 18.474760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225242, -0.629215, -0.743878,
		0.970608, 0.211343, 0.115127,
		0.084774, -0.747945, 0.658325,
		16.271732, 16.775415, 18.672258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.630453, 16.369886, 4.244834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.363810, 16.435329, 4.535726>,  <9.203823, 16.474596, 4.710261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.363810, 16.435329, 4.535726>,  <9.630453, 16.369886, 4.244834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.363810, 16.435329, 4.535726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669645, 0.559987, 0.487842,
		-0.327424, 0.812186, -0.482853,
		-0.666610, 0.163609, 0.727230,
		9.163827, 16.484411, 4.753895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.505960, 17.175180, 4.363718>,  <9.630453, 16.369886, 4.244834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.505960, 17.175180, 4.363718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.432693, 16.962988, 4.694786>,  <9.388732, 16.835672, 4.893426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.432693, 16.962988, 4.694786>,  <9.505960, 17.175180, 4.363718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.432693, 16.962988, 4.694786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623389, 0.588323, 0.515036,
		-0.760155, 0.610299, 0.222935,
		-0.183168, -0.530483, 0.827670,
		9.377742, 16.803843, 4.943087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.427799, 17.715012, 4.818066>,  <9.505960, 17.175180, 4.363718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.427799, 17.715012, 4.818066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.524878, 17.369236, 4.994175>,  <9.583125, 17.161770, 5.099841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.524878, 17.369236, 4.994175>,  <9.427799, 17.715012, 4.818066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.524878, 17.369236, 4.994175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729008, 0.461943, 0.505129,
		-0.640036, 0.198369, 0.742296,
		0.242697, -0.864441, 0.440273,
		9.597687, 17.109903, 5.126257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.102860, 17.241093, 5.394588>,  <9.427799, 17.715012, 4.818066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.102860, 17.241093, 5.394588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.042831, 17.181307, 5.003663>,  <9.006814, 17.145435, 4.769108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.042831, 17.181307, 5.003663>,  <9.102860, 17.241093, 5.394588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.042831, 17.181307, 5.003663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828858, -0.519843, 0.206778,
		-0.538955, 0.841085, -0.045869,
		-0.150073, -0.149463, -0.977312,
		8.997809, 17.136467, 4.710469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.402031, 17.576807, 5.024039>,  <9.102860, 17.241093, 5.394588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.402031, 17.576807, 5.024039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.497322, 17.227161, 4.854725>,  <8.554497, 17.017374, 4.753136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.497322, 17.227161, 4.854725>,  <8.402031, 17.576807, 5.024039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.497322, 17.227161, 4.854725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888939, -0.371800, 0.267490,
		-0.391196, 0.312554, -0.865607,
		0.238228, -0.874114, -0.423288,
		8.568790, 16.964928, 4.727739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.666459, 17.381081, 5.130167>,  <8.402031, 17.576807, 5.024039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.666459, 17.381081, 5.130167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.922169, 17.428783, 5.434036>,  <8.075595, 17.457405, 5.616358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.922169, 17.428783, 5.434036>,  <7.666459, 17.381081, 5.130167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.922169, 17.428783, 5.434036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643678, -0.457510, 0.613485,
		0.420722, -0.881171, -0.215711,
		0.639275, 0.119258, 0.759674,
		8.113952, 17.464561, 5.661939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.598020, 16.724047, 5.466296>,  <7.666459, 17.381081, 5.130167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.598020, 16.724047, 5.466296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.754470, 16.970795, 5.739497>,  <7.848340, 17.118843, 5.903418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.754470, 16.970795, 5.739497>,  <7.598020, 16.724047, 5.466296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.754470, 16.970795, 5.739497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510098, -0.472404, 0.718773,
		0.766042, -0.629529, 0.129895,
		0.391125, 0.616869, 0.683003,
		7.871808, 17.155855, 5.944398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.156706, 16.602005, 6.028100>,  <7.598020, 16.724047, 5.466296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.156706, 16.602005, 6.028100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.468293, 16.737398, 6.239247>,  <7.655244, 16.818634, 6.365935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.468293, 16.737398, 6.239247>,  <7.156706, 16.602005, 6.028100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.468293, 16.737398, 6.239247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384848, -0.406561, 0.828613,
		0.495080, -0.848610, -0.186433,
		0.778966, 0.338482, 0.527866,
		7.701982, 16.838943, 6.397607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.349347, 16.056641, 6.569004>,  <7.156706, 16.602005, 6.028100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.349347, 16.056641, 6.569004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.437407, 16.435257, 6.663316>,  <7.490243, 16.662428, 6.719903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.437407, 16.435257, 6.663316>,  <7.349347, 16.056641, 6.569004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.437407, 16.435257, 6.663316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598409, -0.059836, 0.798953,
		0.770351, -0.316983, 0.553246,
		0.220150, 0.946542, 0.235781,
		7.503452, 16.719219, 6.734050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.508097, 16.148806, 7.261164>,  <7.349347, 16.056641, 6.569004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.508097, 16.148806, 7.261164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.402499, 16.524565, 7.173681>,  <7.339139, 16.750021, 7.121191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.402499, 16.524565, 7.173681>,  <7.508097, 16.148806, 7.261164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.402499, 16.524565, 7.173681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611259, 0.012456, 0.791333,
		0.746102, 0.342597, 0.570928,
		-0.263996, 0.939400, -0.218709,
		7.323300, 16.806385, 7.108068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.580554, 16.546730, 7.871275>,  <7.508097, 16.148806, 7.261164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.580554, 16.546730, 7.871275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.315620, 16.722027, 7.628210>,  <7.156659, 16.827206, 7.482371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.315620, 16.722027, 7.628210>,  <7.580554, 16.546730, 7.871275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.315620, 16.722027, 7.628210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618913, 0.137018, 0.773416,
		0.422204, 0.888352, 0.180482,
		-0.662337, 0.438242, -0.607663,
		7.116919, 16.853500, 7.445911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.328653, 17.225357, 8.163410>,  <7.580554, 16.546730, 7.871275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.328653, 17.225357, 8.163410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059474, 17.072956, 7.909803>,  <6.897967, 16.981516, 7.757639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059474, 17.072956, 7.909803>,  <7.328653, 17.225357, 8.163410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.059474, 17.072956, 7.909803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717712, 0.128933, 0.684300,
		-0.178975, 0.915539, -0.360216,
		-0.672947, -0.381004, -0.634017,
		6.857590, 16.958654, 7.719598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.776513, 17.676416, 8.244093>,  <7.328653, 17.225357, 8.163410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.776513, 17.676416, 8.244093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.660247, 17.321918, 8.099827>,  <6.590488, 17.109219, 8.013267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.660247, 17.321918, 8.099827>,  <6.776513, 17.676416, 8.244093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.660247, 17.321918, 8.099827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731468, -0.037181, 0.680861,
		-0.616821, 0.461718, -0.637454,
		-0.290665, -0.886247, -0.360666,
		6.573048, 17.056044, 7.991627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.068752, 17.669468, 8.194946>,  <6.776513, 17.676416, 8.244093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.068752, 17.669468, 8.194946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.120604, 17.273462, 8.217119>,  <6.151715, 17.035860, 8.230423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.120604, 17.273462, 8.217119>,  <6.068752, 17.669468, 8.194946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.120604, 17.273462, 8.217119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694927, -0.050830, 0.717281,
		-0.707299, -0.131503, -0.694575,
		0.129630, -0.990012, 0.055432,
		6.159493, 16.976460, 8.233749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.439483, 17.546865, 8.469144>,  <6.068752, 17.669468, 8.194946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.439483, 17.546865, 8.469144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.606628, 17.184443, 8.495825>,  <5.706915, 16.966990, 8.511833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.606628, 17.184443, 8.495825>,  <5.439483, 17.546865, 8.469144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.606628, 17.184443, 8.495825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544495, -0.190989, 0.816730,
		-0.727266, -0.377600, -0.573151,
		0.417863, -0.906058, 0.066701,
		5.731987, 16.912624, 8.515835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.868624, 17.110460, 8.666358>,  <5.439483, 17.546865, 8.469144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.868624, 17.110460, 8.666358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.215212, 16.928465, 8.748543>,  <5.423165, 16.819267, 8.797853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.215212, 16.928465, 8.748543>,  <4.868624, 17.110460, 8.666358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.215212, 16.928465, 8.748543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315911, -0.181034, 0.931358,
		-0.386560, -0.871902, -0.300596,
		0.866470, -0.454988, 0.205463,
		5.475153, 16.791969, 8.810182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.705972, 16.613800, 9.116426>,  <4.868624, 17.110460, 8.666358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.705972, 16.613800, 9.116426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.100077, 16.637920, 9.180456>,  <5.336539, 16.652391, 9.218874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.100077, 16.637920, 9.180456>,  <4.705972, 16.613800, 9.116426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.100077, 16.637920, 9.180456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124071, -0.392301, 0.911431,
		0.117756, -0.917858, -0.379037,
		0.985261, 0.060300, 0.160075,
		5.395655, 16.656010, 9.228478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.868690, 16.031673, 9.375685>,  <4.705972, 16.613800, 9.116426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.868690, 16.031673, 9.375685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.181927, 16.256147, 9.482895>,  <5.369870, 16.390831, 9.547221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.181927, 16.256147, 9.482895>,  <4.868690, 16.031673, 9.375685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.181927, 16.256147, 9.482895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037608, -0.387455, 0.921121,
		0.620766, -0.731403, -0.282309,
		0.783093, 0.561184, 0.268025,
		5.416855, 16.424503, 9.563302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.236234, 15.602148, 9.802605>,  <4.868690, 16.031673, 9.375685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.236234, 15.602148, 9.802605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.352207, 15.971312, 9.903939>,  <5.421791, 16.192810, 9.964740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.352207, 15.971312, 9.903939>,  <5.236234, 15.602148, 9.802605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.352207, 15.971312, 9.903939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094565, -0.291038, 0.952027,
		0.952364, -0.252066, -0.171656,
		0.289932, 0.922908, 0.253337,
		5.439187, 16.248184, 9.979940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.737492, 15.460194, 10.285212>,  <5.236234, 15.602148, 9.802605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.737492, 15.460194, 10.285212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.666950, 15.848892, 10.347960>,  <5.624625, 16.082111, 10.385610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.666950, 15.848892, 10.347960>,  <5.737492, 15.460194, 10.285212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.666950, 15.848892, 10.347960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163463, -0.128245, 0.978179,
		0.970659, 0.198149, -0.136228,
		-0.176355, 0.971746, 0.156872,
		5.614044, 16.140415, 10.395022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.294027, 15.751824, 10.776374>,  <5.737492, 15.460194, 10.285212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.294027, 15.751824, 10.776374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.969365, 15.983011, 10.810247>,  <5.774568, 16.121723, 10.830572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.969365, 15.983011, 10.810247>,  <6.294027, 15.751824, 10.776374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.969365, 15.983011, 10.810247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068876, -0.049271, 0.996408,
		0.580063, 0.814572, 0.000183,
		-0.811655, 0.577967, 0.084684,
		5.725869, 16.156401, 10.835652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.515530, 16.214481, 11.212567>,  <6.294027, 15.751824, 10.776374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.515530, 16.214481, 11.212567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.116087, 16.227648, 11.229049>,  <5.876421, 16.235548, 11.238937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.116087, 16.227648, 11.229049>,  <6.515530, 16.214481, 11.212567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.116087, 16.227648, 11.229049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029572, -0.297374, 0.954303,
		0.043666, 0.954193, 0.295987,
		-0.998609, 0.032918, 0.041203,
		5.816504, 16.237524, 11.241409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.394350, 16.665733, 11.696371>,  <6.515530, 16.214481, 11.212567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.394350, 16.665733, 11.696371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.058420, 16.449751, 11.673951>,  <5.856862, 16.320162, 11.660500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.058420, 16.449751, 11.673951>,  <6.394350, 16.665733, 11.696371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.058420, 16.449751, 11.673951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015809, -0.078878, 0.996759,
		-0.542626, 0.837990, 0.057708,
		-0.839825, -0.539955, -0.056049,
		5.806472, 16.287764, 11.657137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.812692, 16.933216, 12.109915>,  <6.394350, 16.665733, 11.696371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.812692, 16.933216, 12.109915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.728161, 16.544178, 12.071127>,  <5.677443, 16.310755, 12.047854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.728161, 16.544178, 12.071127>,  <5.812692, 16.933216, 12.109915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.728161, 16.544178, 12.071127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166240, -0.061998, 0.984134,
		-0.963175, 0.224094, -0.148582,
		-0.211327, -0.972593, -0.096969,
		5.664763, 16.252399, 12.042036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.325574, 16.769194, 12.587271>,  <5.812692, 16.933216, 12.109915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.325574, 16.769194, 12.587271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.395172, 16.386524, 12.493892>,  <5.436930, 16.156921, 12.437864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.395172, 16.386524, 12.493892>,  <5.325574, 16.769194, 12.587271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.395172, 16.386524, 12.493892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116724, -0.255429, 0.959756,
		-0.977804, -0.139743, -0.156110,
		0.173995, -0.956675, -0.233448,
		5.447370, 16.099522, 12.423857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.846642, 16.402914, 13.018421>,  <5.325574, 16.769194, 12.587271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.846642, 16.402914, 13.018421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.151560, 16.159563, 12.930078>,  <5.334511, 16.013552, 12.877071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.151560, 16.159563, 12.930078>,  <4.846642, 16.402914, 13.018421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.151560, 16.159563, 12.930078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051787, -0.397478, 0.916149,
		-0.645154, -0.686939, -0.334502,
		0.762296, -0.608380, -0.220860,
		5.380249, 15.977049, 12.863820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.739435, 15.617423, 13.213448>,  <4.846642, 16.402914, 13.018421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.739435, 15.617423, 13.213448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.134575, 15.667744, 13.176955>,  <5.371660, 15.697936, 13.155060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.134575, 15.667744, 13.176955>,  <4.739435, 15.617423, 13.213448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.134575, 15.667744, 13.176955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146744, -0.561960, 0.814044,
		0.051140, -0.817542, -0.573593,
		0.987852, 0.125802, -0.091231,
		5.430931, 15.705484, 13.149586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.938714, 14.957827, 13.376724>,  <4.739435, 15.617423, 13.213448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.938714, 14.957827, 13.376724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.260224, 15.193610, 13.408937>,  <5.453130, 15.335080, 13.428266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.260224, 15.193610, 13.408937>,  <4.938714, 14.957827, 13.376724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.260224, 15.193610, 13.408937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236564, -0.440868, 0.865837,
		0.545879, -0.676886, -0.493803,
		0.803774, 0.589458, 0.080534,
		5.501356, 15.370448, 13.433098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.432361, 14.530860, 13.800327>,  <4.938714, 14.957827, 13.376724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.432361, 14.530860, 13.800327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.576407, 14.903664, 13.816712>,  <5.662835, 15.127346, 13.826543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.576407, 14.903664, 13.816712>,  <5.432361, 14.530860, 13.800327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.576407, 14.903664, 13.816712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301589, -0.157855, 0.940280,
		0.882814, -0.326255, -0.337929,
		0.360115, 0.932008, 0.040962,
		5.684442, 15.183266, 13.829000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.115817, 14.419515, 13.952312>,  <5.432361, 14.530860, 13.800327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.115817, 14.419515, 13.952312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.044072, 14.798847, 14.057000>,  <6.001024, 15.026446, 14.119813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.044072, 14.798847, 14.057000>,  <6.115817, 14.419515, 13.952312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.044072, 14.798847, 14.057000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483902, -0.146582, 0.862759,
		0.856544, 0.281395, -0.432607,
		-0.179363, 0.948330, 0.261721,
		5.990263, 15.083346, 14.135516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.738355, 14.722990, 14.122523>,  <6.115817, 14.419515, 13.952312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.738355, 14.722990, 14.122523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.468580, 14.961253, 14.297029>,  <6.306715, 15.104211, 14.401731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.468580, 14.961253, 14.297029>,  <6.738355, 14.722990, 14.122523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.468580, 14.961253, 14.297029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412898, -0.185561, 0.891674,
		0.612087, 0.781510, -0.120797,
		-0.674437, 0.595658, 0.436264,
		6.266249, 15.139951, 14.427908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.372579, 14.913008, 13.723081>,  <6.738355, 14.722990, 14.122523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.372579, 14.913008, 13.723081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.655200, 14.716292, 13.519540>,  <7.824772, 14.598264, 13.397415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.655200, 14.716292, 13.519540>,  <7.372579, 14.913008, 13.723081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.655200, 14.716292, 13.519540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148312, 0.805998, -0.573036,
		0.691945, 0.329411, 0.642418,
		0.706552, -0.491788, -0.508851,
		7.867166, 14.568756, 13.366884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.134425, 15.240828, 13.846540>,  <7.372579, 14.913008, 13.723081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.134425, 15.240828, 13.846540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.128307, 15.064381, 13.487613>,  <8.124637, 14.958512, 13.272256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.128307, 15.064381, 13.487613>,  <8.134425, 15.240828, 13.846540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.128307, 15.064381, 13.487613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321865, 0.847485, -0.422104,
		0.946662, -0.295272, 0.129018,
		-0.015295, -0.441117, -0.897319,
		8.123719, 14.932046, 13.218417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.792586, 15.344793, 13.613955>,  <8.134425, 15.240828, 13.846540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.792586, 15.344793, 13.613955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.563879, 15.293049, 13.289893>,  <8.426655, 15.262002, 13.095456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.563879, 15.293049, 13.289893>,  <8.792586, 15.344793, 13.613955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.563879, 15.293049, 13.289893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312015, 0.879001, -0.360561,
		0.758767, -0.458937, -0.462222,
		-0.571768, -0.129362, -0.810153,
		8.392348, 15.254240, 13.046847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.293398, 15.493538, 13.066401>,  <8.792586, 15.344793, 13.613955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.293398, 15.493538, 13.066401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.922977, 15.541526, 12.923272>,  <8.700726, 15.570318, 12.837395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.922977, 15.541526, 12.923272>,  <9.293398, 15.493538, 13.066401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.922977, 15.541526, 12.923272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323981, 0.738992, -0.590701,
		0.193563, -0.662947, -0.723212,
		-0.926051, 0.119969, -0.357824,
		8.645163, 15.577517, 12.815925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.404968, 15.598906, 12.470325>,  <9.293398, 15.493538, 13.066401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.404968, 15.598906, 12.470325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.031385, 15.741581, 12.479261>,  <8.807236, 15.827187, 12.484624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.031385, 15.741581, 12.479261>,  <9.404968, 15.598906, 12.470325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.031385, 15.741581, 12.479261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253695, 0.705712, -0.661521,
		-0.251725, -0.612163, -0.749594,
		-0.933956, 0.356689, 0.022342,
		8.751199, 15.848588, 12.485964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.185614, 15.759119, 11.802005>,  <9.404968, 15.598906, 12.470325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.185614, 15.759119, 11.802005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.923043, 15.962001, 12.025379>,  <8.765501, 16.083729, 12.159404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.923043, 15.962001, 12.025379>,  <9.185614, 15.759119, 11.802005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923043, 15.962001, 12.025379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069884, 0.777948, -0.624431,
		-0.751147, -0.370866, -0.546110,
		-0.656425, 0.507204, 0.558436,
		8.726115, 16.114162, 12.192910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.593764, 15.834331, 11.368529>,  <9.185614, 15.759119, 11.802005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.593764, 15.834331, 11.368529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.600621, 16.114296, 11.654139>,  <8.604735, 16.282274, 11.825504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.600621, 16.114296, 11.654139>,  <8.593764, 15.834331, 11.368529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.600621, 16.114296, 11.654139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053783, 0.712449, -0.699660,
		-0.998406, 0.050396, -0.025430,
		0.017142, 0.699912, 0.714023,
		8.605764, 16.324270, 11.868345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.200629, 16.388355, 11.035343>,  <8.593764, 15.834331, 11.368529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.200629, 16.388355, 11.035343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.375869, 16.561686, 11.350379>,  <8.481012, 16.665684, 11.539401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.375869, 16.561686, 11.350379>,  <8.200629, 16.388355, 11.035343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.375869, 16.561686, 11.350379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045388, 0.885690, -0.462052,
		-0.897780, 0.166677, 0.407688,
		0.438098, 0.433325, 0.787590,
		8.507298, 16.691683, 11.586657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.724699, 16.905947, 11.320148>,  <8.200629, 16.388355, 11.035343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.724699, 16.905947, 11.320148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.103950, 17.001657, 11.403866>,  <8.331500, 17.059084, 11.454097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.103950, 17.001657, 11.403866>,  <7.724699, 16.905947, 11.320148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.103950, 17.001657, 11.403866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116261, 0.873757, -0.472262,
		-0.295875, 0.423431, 0.856250,
		0.948125, 0.239279, 0.209295,
		8.388387, 17.073441, 11.466655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.669683, 17.653570, 11.427781>,  <7.724699, 16.905947, 11.320148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.669683, 17.653570, 11.427781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.058402, 17.576691, 11.373128>,  <8.291634, 17.530563, 11.340336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.058402, 17.576691, 11.373128>,  <7.669683, 17.653570, 11.427781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.058402, 17.576691, 11.373128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068868, 0.785461, -0.615067,
		0.225535, 0.588311, 0.776546,
		0.971798, -0.192199, -0.136634,
		8.349941, 17.519032, 11.332138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.046837, 18.337679, 11.375297>,  <7.669683, 17.653570, 11.427781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.046837, 18.337679, 11.375297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.314905, 18.094553, 11.204919>,  <8.475746, 17.948677, 11.102692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.314905, 18.094553, 11.204919>,  <8.046837, 18.337679, 11.375297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.314905, 18.094553, 11.204919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236513, 0.718862, -0.653681,
		0.703514, 0.337337, 0.625518,
		0.670172, -0.607816, -0.425945,
		8.515957, 17.912209, 11.077135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.790708, 18.641066, 11.365233>,  <8.046837, 18.337679, 11.375297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.790708, 18.641066, 11.365233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.746974, 18.369654, 11.074677>,  <8.720734, 18.206806, 10.900344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.746974, 18.369654, 11.074677>,  <8.790708, 18.641066, 11.365233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.746974, 18.369654, 11.074677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291760, 0.676677, -0.676006,
		0.950222, -0.285842, 0.123985,
		-0.109334, -0.678530, -0.726391,
		8.714174, 18.166096, 10.856760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.338177, 18.851774, 10.844560>,  <8.790708, 18.641066, 11.365233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.338177, 18.851774, 10.844560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.084115, 18.606749, 10.656371>,  <8.931678, 18.459732, 10.543458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.084115, 18.606749, 10.656371>,  <9.338177, 18.851774, 10.844560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.084115, 18.606749, 10.656371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100040, 0.538739, -0.836512,
		0.765881, -0.578379, -0.280900,
		-0.635152, -0.612567, -0.470471,
		8.893569, 18.422979, 10.515230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.612768, 18.804089, 10.186520>,  <9.338177, 18.851774, 10.844560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.612768, 18.804089, 10.186520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.255005, 18.638586, 10.118588>,  <9.040347, 18.539284, 10.077830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.255005, 18.638586, 10.118588>,  <9.612768, 18.804089, 10.186520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.255005, 18.638586, 10.118588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041512, 0.301275, -0.952633,
		0.445323, -0.859092, -0.252287,
		-0.894407, -0.413757, -0.169827,
		8.986683, 18.514460, 10.067640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.625266, 18.525499, 9.539461>,  <9.612768, 18.804089, 10.186520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.625266, 18.525499, 9.539461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.227510, 18.556412, 9.568354>,  <8.988857, 18.574959, 9.585690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.227510, 18.556412, 9.568354>,  <9.625266, 18.525499, 9.539461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.227510, 18.556412, 9.568354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018690, 0.543730, -0.839052,
		-0.104118, -0.835694, -0.539235,
		-0.994389, 0.077282, 0.072231,
		8.929193, 18.579596, 9.590023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.365610, 18.404737, 8.851409>,  <9.625266, 18.525499, 9.539461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.365610, 18.404737, 8.851409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.041038, 18.575636, 9.010928>,  <8.846294, 18.678175, 9.106640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.041038, 18.575636, 9.010928>,  <9.365610, 18.404737, 8.851409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.041038, 18.575636, 9.010928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147499, 0.510561, -0.847096,
		-0.565529, -0.746183, -0.351267,
		-0.811431, 0.427246, 0.398798,
		8.797608, 18.703810, 9.130568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.748434, 18.362303, 8.322062>,  <9.365610, 18.404737, 8.851409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.748434, 18.362303, 8.322062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.690189, 18.670403, 8.570420>,  <8.655243, 18.855263, 8.719435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.690189, 18.670403, 8.570420>,  <8.748434, 18.362303, 8.322062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.690189, 18.670403, 8.570420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141559, 0.604906, -0.783614,
		-0.979162, -0.201996, 0.020955,
		-0.145611, 0.770251, 0.620895,
		8.646506, 18.901478, 8.756689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.215869, 18.768913, 8.002155>,  <8.748434, 18.362303, 8.322062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.215869, 18.768913, 8.002155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.370199, 19.037222, 8.255519>,  <8.462797, 19.198206, 8.407537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.370199, 19.037222, 8.255519>,  <8.215869, 18.768913, 8.002155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.370199, 19.037222, 8.255519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023595, 0.693518, -0.720052,
		-0.922270, 0.262870, 0.283405,
		0.385826, 0.670769, 0.633409,
		8.485947, 19.238453, 8.445541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.928421, 19.327978, 7.844666>,  <8.215869, 18.768913, 8.002155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.928421, 19.327978, 7.844666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.214012, 19.500237, 8.065495>,  <8.385366, 19.603592, 8.197991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.214012, 19.500237, 8.065495>,  <7.928421, 19.327978, 7.844666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.214012, 19.500237, 8.065495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036560, 0.764477, -0.643613,
		-0.699214, 0.479708, 0.530075,
		0.713977, 0.430644, 0.552072,
		8.428205, 19.629429, 8.231116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.680507, 20.041376, 7.930149>,  <7.928421, 19.327978, 7.844666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.680507, 20.041376, 7.930149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.076863, 20.021811, 7.980336>,  <8.314677, 20.010071, 8.010448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.076863, 20.021811, 7.980336>,  <7.680507, 20.041376, 7.930149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.076863, 20.021811, 7.980336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115825, 0.784840, -0.608779,
		-0.068696, 0.617766, 0.783356,
		0.990891, -0.048912, 0.125468,
		8.374130, 20.007137, 8.017976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.958352, 20.404465, 8.573065>,  <7.680507, 20.041376, 7.930149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.958352, 20.404465, 8.573065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.858738, 20.058041, 8.746464>,  <7.798969, 19.850185, 8.850503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.858738, 20.058041, 8.746464>,  <7.958352, 20.404465, 8.573065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.858738, 20.058041, 8.746464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692432, 0.472166, 0.545525,
		-0.677140, -0.164313, -0.717274,
		-0.249036, -0.866061, 0.433498,
		7.784027, 19.798222, 8.876513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.385164, 19.586874, 23.978939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.150208, 19.274300, 24.063152>,  <17.009233, 19.086754, 24.113680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.150208, 19.274300, 24.063152>,  <17.385164, 19.586874, 23.978939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.150208, 19.274300, 24.063152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619171, 0.601441, 0.504872,
		-0.521148, 0.166203, -0.837127,
		-0.587394, -0.781438, 0.210532,
		16.973989, 19.039867, 24.126312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782425, 19.850958, 23.888676>,  <17.385164, 19.586874, 23.978939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782425, 19.850958, 23.888676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.662935, 19.531658, 24.097889>,  <16.591242, 19.340078, 24.223417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.662935, 19.531658, 24.097889>,  <16.782425, 19.850958, 23.888676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662935, 19.531658, 24.097889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604092, 0.582446, 0.543903,
		-0.738807, -0.153483, -0.656206,
		-0.298725, -0.798248, 0.523033,
		16.573318, 19.292183, 24.254799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047300, 19.883404, 23.983719>,  <16.782425, 19.850958, 23.888676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047300, 19.883404, 23.983719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.148314, 19.616100, 24.263622>,  <16.208921, 19.455719, 24.431564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.148314, 19.616100, 24.263622>,  <16.047300, 19.883404, 23.983719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148314, 19.616100, 24.263622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654086, 0.415026, 0.632396,
		-0.713020, -0.617403, -0.332289,
		0.252534, -0.668257, 0.699756,
		16.224073, 19.415623, 24.473549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381215, 19.653055, 24.355799>,  <16.047300, 19.883404, 23.983719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.381215, 19.653055, 24.355799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.679186, 19.572958, 24.610353>,  <15.857968, 19.524899, 24.763086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.679186, 19.572958, 24.610353>,  <15.381215, 19.653055, 24.355799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679186, 19.572958, 24.610353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533681, 0.393544, 0.748537,
		-0.400336, -0.897232, 0.186295,
		0.744926, -0.200245, 0.636385,
		15.902664, 19.512884, 24.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.135642, 19.136322, 24.831348>,  <15.381215, 19.653055, 24.355799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.135642, 19.136322, 24.831348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.438993, 19.324442, 25.011875>,  <15.621003, 19.437313, 25.120192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.438993, 19.324442, 25.011875>,  <15.135642, 19.136322, 24.831348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.438993, 19.324442, 25.011875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594633, 0.215580, 0.774556,
		0.266980, -0.855770, 0.443147,
		0.758376, 0.470300, 0.451313,
		15.666506, 19.465530, 25.147270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928410, 19.011089, 25.638300>,  <15.135642, 19.136322, 24.831348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928410, 19.011089, 25.638300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.191978, 19.309988, 25.603786>,  <15.350119, 19.489328, 25.583078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.191978, 19.309988, 25.603786>,  <14.928410, 19.011089, 25.638300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191978, 19.309988, 25.603786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318753, 0.381277, 0.867770,
		0.681338, -0.544287, 0.489419,
		0.658920, 0.747248, -0.086286,
		15.389653, 19.534163, 25.577900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420194, 19.049637, 26.260916>,  <14.928410, 19.011089, 25.638300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420194, 19.049637, 26.260916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.395044, 19.410347, 26.089872>,  <15.379954, 19.626774, 25.987246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.395044, 19.410347, 26.089872>,  <15.420194, 19.049637, 26.260916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.395044, 19.410347, 26.089872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384337, 0.373534, 0.844250,
		0.921049, 0.217428, 0.323099,
		-0.062874, 0.901775, -0.427609,
		15.376182, 19.680880, 25.961590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.714145, 19.455021, 26.684681>,  <15.420194, 19.049637, 26.260916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.714145, 19.455021, 26.684681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.488957, 19.717876, 26.484188>,  <15.353845, 19.875589, 26.363892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.488957, 19.717876, 26.484188>,  <15.714145, 19.455021, 26.684681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488957, 19.717876, 26.484188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231254, 0.456997, 0.858880,
		0.793466, 0.599435, -0.105309,
		-0.562969, 0.657139, -0.501234,
		15.320066, 19.915018, 26.333818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696878, 20.007633, 27.156410>,  <15.714145, 19.455021, 26.684681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696878, 20.007633, 27.156410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.431975, 20.107183, 26.873716>,  <15.273033, 20.166914, 26.704100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.431975, 20.107183, 26.873716>,  <15.696878, 20.007633, 27.156410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431975, 20.107183, 26.873716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467426, 0.599956, 0.649281,
		0.585601, 0.760338, -0.280995,
		-0.662257, 0.248876, -0.706736,
		15.233298, 20.181847, 26.661695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644514, 20.666939, 27.188105>,  <15.696878, 20.007633, 27.156410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644514, 20.666939, 27.188105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.295454, 20.549955, 27.031670>,  <15.086019, 20.479765, 26.937809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.295454, 20.549955, 27.031670>,  <15.644514, 20.666939, 27.188105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295454, 20.549955, 27.031670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484092, 0.412564, 0.771652,
		-0.064326, 0.862705, -0.501600,
		-0.872650, -0.292457, -0.391090,
		15.033659, 20.462217, 26.914343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217982, 21.285057, 27.308220>,  <15.644514, 20.666939, 27.188105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.217982, 21.285057, 27.308220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.979876, 20.967386, 27.259325>,  <14.837011, 20.776785, 27.229988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.979876, 20.967386, 27.259325>,  <15.217982, 21.285057, 27.308220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979876, 20.967386, 27.259325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622441, 0.359541, 0.695196,
		-0.508158, 0.489913, -0.708351,
		-0.595267, -0.794176, -0.122239,
		14.801295, 20.729134, 27.222654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621523, 21.561945, 27.416162>,  <15.217982, 21.285057, 27.308220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621523, 21.561945, 27.416162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.541763, 21.175394, 27.481100>,  <14.493908, 20.943464, 27.520061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.541763, 21.175394, 27.481100>,  <14.621523, 21.561945, 27.416162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541763, 21.175394, 27.481100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690487, 0.256115, 0.676486,
		-0.695319, 0.022795, -0.718340,
		-0.199398, -0.966378, 0.162342,
		14.481944, 20.885481, 27.529802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184690, 21.653091, 27.937363>,  <14.621523, 21.561945, 27.416162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184690, 21.653091, 27.937363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.181690, 21.253107, 27.935381>,  <14.179890, 21.013117, 27.934191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.181690, 21.253107, 27.935381>,  <14.184690, 21.653091, 27.937363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181690, 21.253107, 27.935381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615504, 0.000711, 0.788134,
		-0.788098, 0.008962, -0.615484,
		-0.007501, -0.999960, -0.004956,
		14.179440, 20.953119, 27.933895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479884, 21.405081, 27.906988>,  <14.184690, 21.653091, 27.937363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479884, 21.405081, 27.906988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.684194, 21.116289, 28.093687>,  <13.806779, 20.943014, 28.205708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.684194, 21.116289, 28.093687>,  <13.479884, 21.405081, 27.906988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.684194, 21.116289, 28.093687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732699, -0.081560, 0.675649,
		-0.449738, -0.687088, -0.570654,
		0.510772, -0.721982, 0.466747,
		13.837425, 20.899694, 28.233711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.198703, 22.049950, 27.524525>,  <13.479884, 21.405081, 27.906988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.198703, 22.049950, 27.524525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.046800, 22.384117, 27.365599>,  <12.955658, 22.584618, 27.270243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.046800, 22.384117, 27.365599>,  <13.198703, 22.049950, 27.524525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046800, 22.384117, 27.365599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199682, -0.345341, -0.916988,
		-0.903278, -0.427569, -0.035672,
		-0.379757, 0.835418, -0.397317,
		12.932873, 22.634743, 27.246403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720461, 21.829456, 27.013342>,  <13.198703, 22.049950, 27.524525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720461, 21.829456, 27.013342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.838462, 22.200262, 26.920719>,  <12.909263, 22.422745, 26.865145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.838462, 22.200262, 26.920719>,  <12.720461, 21.829456, 27.013342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838462, 22.200262, 26.920719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270051, -0.313353, -0.910430,
		-0.916540, 0.206046, -0.342781,
		0.295002, 0.927014, -0.231558,
		12.926963, 22.478367, 26.851252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336811, 21.962585, 26.363585>,  <12.720461, 21.829456, 27.013342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.336811, 21.962585, 26.363585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.647200, 22.213865, 26.386320>,  <12.833433, 22.364634, 26.399961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.647200, 22.213865, 26.386320>,  <12.336811, 21.962585, 26.363585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.647200, 22.213865, 26.386320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200376, -0.160058, -0.966556,
		-0.598095, 0.761410, -0.250076,
		0.775972, 0.628201, 0.056838,
		12.879992, 22.402327, 26.403372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.212940, 22.533033, 25.838743>,  <12.336811, 21.962585, 26.363585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.212940, 22.533033, 25.838743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.599715, 22.485899, 25.929207>,  <12.831780, 22.457619, 25.983484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.599715, 22.485899, 25.929207>,  <12.212940, 22.533033, 25.838743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.599715, 22.485899, 25.929207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192925, -0.241959, -0.950913,
		0.166771, 0.963105, -0.211226,
		0.966937, -0.117834, 0.226159,
		12.889796, 22.450548, 25.997055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.517431, 22.696379, 25.223009>,  <12.212940, 22.533033, 25.838743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.517431, 22.696379, 25.223009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.827486, 22.534674, 25.417219>,  <13.013519, 22.437651, 25.533745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.827486, 22.534674, 25.417219>,  <12.517431, 22.696379, 25.223009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.827486, 22.534674, 25.417219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342779, -0.376454, -0.860689,
		0.530721, 0.833580, -0.153231,
		0.775137, -0.404262, 0.485525,
		13.060027, 22.413395, 25.562878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201282, 22.850321, 24.872442>,  <12.517431, 22.696379, 25.223009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201282, 22.850321, 24.872442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.274339, 22.517998, 25.082735>,  <13.318173, 22.318604, 25.208912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.274339, 22.517998, 25.082735>,  <13.201282, 22.850321, 24.872442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274339, 22.517998, 25.082735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328990, -0.452260, -0.828992,
		0.926503, 0.324371, 0.190726,
		0.182643, -0.830810, 0.525734,
		13.329131, 22.268755, 25.240456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.900232, 22.626316, 24.625553>,  <13.201282, 22.850321, 24.872442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.900232, 22.626316, 24.625553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.735181, 22.309345, 24.805241>,  <13.636150, 22.119162, 24.913054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.735181, 22.309345, 24.805241>,  <13.900232, 22.626316, 24.625553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735181, 22.309345, 24.805241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444536, -0.605624, -0.660006,
		0.795064, -0.072644, 0.602160,
		-0.412628, -0.792428, 0.449217,
		13.611393, 22.071617, 24.940006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.485793, 22.104086, 24.649055>,  <13.900232, 22.626316, 24.625553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.485793, 22.104086, 24.649055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.141783, 21.900852, 24.667833>,  <13.935376, 21.778912, 24.679100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.141783, 21.900852, 24.667833>,  <14.485793, 22.104086, 24.649055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141783, 21.900852, 24.667833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333949, -0.630047, -0.701084,
		0.385790, -0.587273, 0.711531,
		-0.860026, -0.508087, 0.046947,
		13.883775, 21.748426, 24.681917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673697, 21.344219, 24.703259>,  <14.485793, 22.104086, 24.649055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.673697, 21.344219, 24.703259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.308664, 21.424067, 24.560514>,  <14.089644, 21.471975, 24.474869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.308664, 21.424067, 24.560514>,  <14.673697, 21.344219, 24.703259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.308664, 21.424067, 24.560514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134997, -0.676713, -0.723764,
		-0.385968, -0.708668, 0.590608,
		-0.912581, 0.199620, -0.356858,
		14.034890, 21.483953, 24.453457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440145, 20.643108, 24.733042>,  <14.673697, 21.344219, 24.703259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440145, 20.643108, 24.733042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.250168, 20.886099, 24.478357>,  <14.136181, 21.031893, 24.325546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.250168, 20.886099, 24.478357>,  <14.440145, 20.643108, 24.733042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250168, 20.886099, 24.478357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063029, -0.745144, -0.663918,
		-0.877756, -0.275192, 0.392191,
		-0.474944, 0.607477, -0.636710,
		14.107684, 21.068342, 24.287344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445882, 20.317593, 24.107721>,  <14.440145, 20.643108, 24.733042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445882, 20.317593, 24.107721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.174689, 20.580385, 23.975832>,  <14.011973, 20.738060, 23.896698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.174689, 20.580385, 23.975832>,  <14.445882, 20.317593, 24.107721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174689, 20.580385, 23.975832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085202, -0.515770, -0.852480,
		-0.730124, -0.549873, 0.405658,
		-0.677982, 0.656980, -0.329726,
		13.971294, 20.777479, 23.876915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784112, 20.025431, 24.058218>,  <14.445882, 20.317593, 24.107721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784112, 20.025431, 24.058218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.826327, 20.313177, 23.783590>,  <13.851657, 20.485825, 23.618814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.826327, 20.313177, 23.783590>,  <13.784112, 20.025431, 24.058218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826327, 20.313177, 23.783590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127507, -0.694513, -0.708091,
		-0.986207, -0.012810, -0.165022,
		0.105539, 0.719366, -0.686567,
		13.857989, 20.528986, 23.577620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.448009, 19.825811, 23.388226>,  <13.784112, 20.025431, 24.058218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.448009, 19.825811, 23.388226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.662940, 20.132029, 23.246677>,  <13.791899, 20.315760, 23.161749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.662940, 20.132029, 23.246677>,  <13.448009, 19.825811, 23.388226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662940, 20.132029, 23.246677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412278, -0.604466, -0.681651,
		-0.735735, 0.220378, -0.640413,
		0.537328, 0.765542, -0.353869,
		13.824139, 20.361691, 23.140516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234840, 19.946531, 22.764048>,  <13.448009, 19.825811, 23.388226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234840, 19.946531, 22.764048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.623879, 20.031265, 22.802372>,  <13.857303, 20.082106, 22.825367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.623879, 20.031265, 22.802372>,  <13.234840, 19.946531, 22.764048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.623879, 20.031265, 22.802372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214416, -0.657938, -0.721902,
		-0.089887, 0.722664, -0.685330,
		0.972597, 0.211836, 0.095810,
		13.915659, 20.094816, 22.831116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687458, 20.362818, 22.537155>,  <13.234840, 19.946531, 22.764048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687458, 20.362818, 22.537155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.312404, 20.273563, 22.430532>,  <12.087371, 20.220011, 22.366560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.312404, 20.273563, 22.430532>,  <12.687458, 20.362818, 22.537155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312404, 20.273563, 22.430532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347622, 0.602797, 0.718189,
		0.000425, 0.766059, -0.642770,
		-0.937635, -0.223136, -0.266555,
		12.031114, 20.206623, 22.350567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362329, 20.913651, 22.436108>,  <12.687458, 20.362818, 22.537155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362329, 20.913651, 22.436108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.064375, 20.663233, 22.528385>,  <11.885603, 20.512983, 22.583752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.064375, 20.663233, 22.528385>,  <12.362329, 20.913651, 22.436108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.064375, 20.663233, 22.528385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296685, 0.620500, 0.725919,
		-0.597601, 0.472282, -0.647938,
		-0.744883, -0.626043, 0.230693,
		11.840910, 20.475420, 22.597593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.811661, 21.392241, 22.652300>,  <12.362329, 20.913651, 22.436108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.811661, 21.392241, 22.652300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.682197, 21.041758, 22.795132>,  <11.604518, 20.831469, 22.880831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.682197, 21.041758, 22.795132>,  <11.811661, 21.392241, 22.652300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.682197, 21.041758, 22.795132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382476, 0.466344, 0.797644,
		-0.865422, 0.121593, -0.486065,
		-0.323661, -0.876207, 0.357078,
		11.585098, 20.778896, 22.902254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.162009, 21.557695, 22.832613>,  <11.811661, 21.392241, 22.652300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.162009, 21.557695, 22.832613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.260594, 21.233130, 23.044598>,  <11.319745, 21.038389, 23.171789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.260594, 21.233130, 23.044598>,  <11.162009, 21.557695, 22.832613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.260594, 21.233130, 23.044598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566497, 0.323068, 0.758095,
		-0.786344, -0.487064, -0.380040,
		0.246462, -0.811416, 0.529963,
		11.334533, 20.989704, 23.203587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498139, 21.244989, 23.052208>,  <11.162009, 21.557695, 22.832613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498139, 21.244989, 23.052208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.789967, 21.109917, 23.290098>,  <10.965063, 21.028873, 23.432833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.789967, 21.109917, 23.290098>,  <10.498139, 21.244989, 23.052208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.789967, 21.109917, 23.290098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459603, 0.401882, 0.791995,
		-0.506453, -0.851153, 0.138000,
		0.729568, -0.337683, 0.594727,
		11.008837, 21.008612, 23.468515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.166996, 21.182758, 23.597151>,  <10.498139, 21.244989, 23.052208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.166996, 21.182758, 23.597151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.535170, 21.144514, 23.748760>,  <10.756074, 21.121567, 23.839725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.535170, 21.144514, 23.748760>,  <10.166996, 21.182758, 23.597151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.535170, 21.144514, 23.748760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315760, 0.389717, 0.865111,
		-0.230425, -0.915958, 0.328519,
		0.920435, -0.095610, 0.379024,
		10.811300, 21.115831, 23.862467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.102015, 20.780334, 24.216097>,  <10.166996, 21.182758, 23.597151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.102015, 20.780334, 24.216097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.446009, 20.976805, 24.271479>,  <10.652406, 21.094687, 24.304708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.446009, 20.976805, 24.271479>,  <10.102015, 20.780334, 24.216097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.446009, 20.976805, 24.271479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367464, 0.407760, 0.835884,
		0.354106, -0.769728, 0.531157,
		0.859988, 0.491173, 0.138457,
		10.704004, 21.124157, 24.313015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.151927, 20.029383, 24.286913>,  <10.102015, 20.780334, 24.216097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.151927, 20.029383, 24.286913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.920774, 19.734264, 24.426460>,  <9.782083, 19.557194, 24.510189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.920774, 19.734264, 24.426460>,  <10.151927, 20.029383, 24.286913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.920774, 19.734264, 24.426460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154238, -0.321037, -0.934423,
		0.801413, -0.593795, 0.071725,
		-0.577882, -0.737796, 0.348869,
		9.747410, 19.512926, 24.531120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.368443, 19.626631, 23.913874>,  <10.151927, 20.029383, 24.286913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.368443, 19.626631, 23.913874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.033704, 19.447117, 24.039272>,  <9.832861, 19.339409, 24.114511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.033704, 19.447117, 24.039272>,  <10.368443, 19.626631, 23.913874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.033704, 19.447117, 24.039272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067343, -0.483917, -0.872519,
		0.543281, -0.751275, 0.374742,
		-0.836846, -0.448787, 0.313496,
		9.782650, 19.312481, 24.133322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.511499, 18.891655, 23.982458>,  <10.368443, 19.626631, 23.913874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.511499, 18.891655, 23.982458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.116844, 18.939280, 23.937973>,  <9.880051, 18.967854, 23.911282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.116844, 18.939280, 23.937973>,  <10.511499, 18.891655, 23.982458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.116844, 18.939280, 23.937973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012465, -0.625437, -0.780175,
		-0.162444, -0.771137, 0.615597,
		-0.986639, 0.119062, -0.111211,
		9.820852, 18.974998, 23.904610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.308901, 18.263416, 23.817400>,  <10.511499, 18.891655, 23.982458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.308901, 18.263416, 23.817400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.990272, 18.480459, 23.710783>,  <9.799094, 18.610685, 23.646812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.990272, 18.480459, 23.710783>,  <10.308901, 18.263416, 23.817400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.990272, 18.480459, 23.710783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088638, -0.540966, -0.836361,
		-0.598010, -0.642596, 0.479014,
		-0.796572, 0.542611, -0.266545,
		9.751300, 18.643242, 23.630819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725997, 17.786139, 23.765331>,  <10.308901, 18.263416, 23.817400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725997, 17.786139, 23.765331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.648819, 18.105402, 23.537046>,  <9.602512, 18.296961, 23.400076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.648819, 18.105402, 23.537046>,  <9.725997, 17.786139, 23.765331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.648819, 18.105402, 23.537046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098280, -0.594438, -0.798113,
		-0.976275, -0.097902, 0.193137,
		-0.192945, 0.798159, -0.570714,
		9.590936, 18.344851, 23.365833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.167294, 17.588354, 23.320150>,  <9.725997, 17.786139, 23.765331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.167294, 17.588354, 23.320150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.294392, 17.918737, 23.133888>,  <9.370650, 18.116966, 23.022131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.294392, 17.918737, 23.133888>,  <9.167294, 17.588354, 23.320150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.294392, 17.918737, 23.133888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064900, -0.471009, -0.879738,
		-0.945953, 0.309753, -0.096056,
		0.317745, 0.825956, -0.465655,
		9.389715, 18.166525, 22.994192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.694976, 17.737865, 22.708090>,  <9.167294, 17.588354, 23.320150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.694976, 17.737865, 22.708090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.028487, 17.938372, 22.615530>,  <9.228594, 18.058676, 22.559994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.028487, 17.938372, 22.615530>,  <8.694976, 17.737865, 22.708090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.028487, 17.938372, 22.615530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011884, -0.402731, -0.915241,
		-0.551972, 0.765858, -0.329832,
		0.833778, 0.501268, -0.231397,
		9.278621, 18.088753, 22.546110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.605108, 18.306971, 29.159901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.300789, 18.086737, 29.297327>,  <16.118196, 17.954596, 29.379784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.300789, 18.086737, 29.297327>,  <16.605108, 18.306971, 29.159901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300789, 18.086737, 29.297327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462400, 0.831338, 0.308324,
		-0.455379, 0.075707, -0.887073,
		-0.760800, -0.550587, 0.343566,
		16.072550, 17.921560, 29.400396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.777681, 18.209455, 28.491943>,  <16.605108, 18.306971, 29.159901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.777681, 18.209455, 28.491943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.669941, 17.869606, 28.310574>,  <16.605297, 17.665697, 28.201752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.669941, 17.869606, 28.310574>,  <16.777681, 18.209455, 28.491943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669941, 17.869606, 28.310574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840714, 0.437095, -0.319608,
		0.469735, 0.295114, -0.832019,
		-0.269350, -0.849621, -0.453425,
		16.589136, 17.614719, 28.174547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.783903, 18.175270, 27.710958>,  <16.777681, 18.209455, 28.491943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.783903, 18.175270, 27.710958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.438747, 18.002552, 27.816011>,  <16.231655, 17.898922, 27.879044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.438747, 18.002552, 27.816011>,  <16.783903, 18.175270, 27.710958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.438747, 18.002552, 27.816011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500441, 0.802583, -0.324685,
		-0.070589, -0.411600, -0.908627,
		-0.862888, -0.431794, 0.262635,
		16.179880, 17.873014, 27.894802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.296345, 18.152479, 27.115606>,  <16.783903, 18.175270, 27.710958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.296345, 18.152479, 27.115606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.132154, 18.181183, 27.479223>,  <16.033640, 18.198404, 27.697393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.132154, 18.181183, 27.479223>,  <16.296345, 18.152479, 27.115606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.132154, 18.181183, 27.479223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665997, 0.657348, -0.352621,
		-0.622861, -0.750163, -0.222035,
		-0.410477, 0.071759, 0.909043,
		16.009012, 18.202711, 27.751936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764704, 17.731396, 26.666327>,  <16.296345, 18.152479, 27.115606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764704, 17.731396, 26.666327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.632609, 17.516039, 26.976442>,  <15.553352, 17.386824, 27.162512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.632609, 17.516039, 26.976442>,  <15.764704, 17.731396, 26.666327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.632609, 17.516039, 26.976442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424046, -0.818441, -0.387736,
		0.843285, 0.200714, 0.498583,
		-0.330237, -0.538394, 0.775291,
		15.533538, 17.354521, 27.209030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286568, 17.300533, 26.875385>,  <15.764704, 17.731396, 26.666327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286568, 17.300533, 26.875385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.980680, 17.123077, 27.062313>,  <15.797148, 17.016603, 27.174469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.980680, 17.123077, 27.062313>,  <16.286568, 17.300533, 26.875385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980680, 17.123077, 27.062313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309663, -0.889029, -0.337250,
		0.565078, -0.113190, 0.817236,
		-0.764719, -0.443640, 0.467320,
		15.751265, 16.989985, 27.202509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544247, 16.625549, 27.269793>,  <16.286568, 17.300533, 26.875385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544247, 16.625549, 27.269793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.154285, 16.586349, 27.189831>,  <15.920309, 16.562830, 27.141853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.154285, 16.586349, 27.189831>,  <16.544247, 16.625549, 27.269793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154285, 16.586349, 27.189831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174777, -0.893087, -0.414546,
		-0.137908, -0.439081, 0.887800,
		-0.974902, -0.097998, -0.199905,
		15.861814, 16.556950, 27.129860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343264, 15.917109, 27.486340>,  <16.544247, 16.625549, 27.269793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343264, 15.917109, 27.486340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.090706, 16.045280, 27.203873>,  <15.939172, 16.122183, 27.034393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.090706, 16.045280, 27.203873>,  <16.343264, 15.917109, 27.486340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090706, 16.045280, 27.203873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107216, -0.865820, -0.488734,
		-0.768014, -0.384296, 0.512319,
		-0.631394, 0.320426, -0.706164,
		15.901288, 16.141409, 26.992023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038303, 15.302687, 27.319223>,  <16.343264, 15.917109, 27.486340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038303, 15.302687, 27.319223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.913518, 15.535367, 27.018744>,  <15.838647, 15.674975, 26.838455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.913518, 15.535367, 27.018744>,  <16.038303, 15.302687, 27.319223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913518, 15.535367, 27.018744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028690, -0.784532, -0.619425,
		-0.949661, -0.214790, 0.228056,
		-0.311964, 0.581700, -0.751201,
		15.819929, 15.709877, 26.793383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675840, 14.732807, 26.912130>,  <16.038303, 15.302687, 27.319223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675840, 14.732807, 26.912130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.728697, 15.057416, 26.684456>,  <15.760411, 15.252181, 26.547852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.728697, 15.057416, 26.684456>,  <15.675840, 14.732807, 26.912130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728697, 15.057416, 26.684456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112965, -0.582808, -0.804720,
		-0.984773, 0.042039, -0.168687,
		0.132142, 0.811522, -0.569184,
		15.768339, 15.300873, 26.513700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281655, 14.702554, 26.346392>,  <15.675840, 14.732807, 26.912130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281655, 14.702554, 26.346392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.576983, 14.953611, 26.247644>,  <15.754181, 15.104246, 26.188396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.576983, 14.953611, 26.247644>,  <15.281655, 14.702554, 26.346392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576983, 14.953611, 26.247644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021584, -0.387831, -0.921478,
		-0.674103, 0.675018, -0.299891,
		0.738322, 0.627644, -0.246868,
		15.798480, 15.141905, 26.173584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997416, 14.989828, 25.774456>,  <15.281655, 14.702554, 26.346392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.997416, 14.989828, 25.774456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.395638, 15.024885, 25.760643>,  <15.634570, 15.045919, 25.752356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.395638, 15.024885, 25.760643>,  <14.997416, 14.989828, 25.774456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.395638, 15.024885, 25.760643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005552, -0.311355, -0.950277,
		-0.094036, 0.946244, -0.309484,
		0.995553, 0.087642, -0.034532,
		15.694304, 15.051178, 25.750284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656755, 14.276381, 25.726561>,  <14.997416, 14.989828, 25.774456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656755, 14.276381, 25.726561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.289966, 14.140969, 25.642126>,  <14.069892, 14.059723, 25.591465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.289966, 14.140969, 25.642126>,  <14.656755, 14.276381, 25.726561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.289966, 14.140969, 25.642126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397449, 0.729394, 0.556792,
		-0.034526, 0.594460, -0.803384,
		-0.916974, -0.338528, -0.211085,
		14.014874, 14.039411, 25.578800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267767, 14.844114, 25.382656>,  <14.656755, 14.276381, 25.726561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267767, 14.844114, 25.382656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.015180, 14.589238, 25.559399>,  <13.863627, 14.436313, 25.665443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.015180, 14.589238, 25.559399>,  <14.267767, 14.844114, 25.382656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.015180, 14.589238, 25.559399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449261, 0.765102, 0.461285,
		-0.631991, 0.092779, -0.769402,
		-0.631468, -0.637191, 0.441855,
		13.825739, 14.398081, 25.691956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.748618, 15.160322, 25.280731>,  <14.267767, 14.844114, 25.382656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.748618, 15.160322, 25.280731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.627927, 14.912283, 25.570404>,  <13.555512, 14.763459, 25.744207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.627927, 14.912283, 25.570404>,  <13.748618, 15.160322, 25.280731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627927, 14.912283, 25.570404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405105, 0.770988, 0.491393,
		-0.863047, -0.145102, -0.483834,
		-0.301728, -0.620099, 0.724181,
		13.537408, 14.726254, 25.787659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.079822, 15.322078, 25.312096>,  <13.748618, 15.160322, 25.280731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.079822, 15.322078, 25.312096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.198476, 15.149563, 25.652918>,  <13.269669, 15.046054, 25.857410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.198476, 15.149563, 25.652918>,  <13.079822, 15.322078, 25.312096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198476, 15.149563, 25.652918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491619, 0.695946, 0.523421,
		-0.818729, -0.574152, -0.005587,
		0.296635, -0.431286, 0.852056,
		13.287466, 15.020177, 25.908535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.413756, 15.396877, 25.612448>,  <13.079822, 15.322078, 25.312096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.413756, 15.396877, 25.612448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.698224, 15.314613, 25.881353>,  <12.868905, 15.265255, 26.042698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.698224, 15.314613, 25.881353>,  <12.413756, 15.396877, 25.612448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.698224, 15.314613, 25.881353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501548, 0.521662, 0.690158,
		-0.492634, -0.827993, 0.267843,
		0.711170, -0.205659, 0.672267,
		12.911575, 15.252915, 26.083033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.093481, 15.248445, 26.193775>,  <12.413756, 15.396877, 25.612448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.093481, 15.248445, 26.193775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.449484, 15.375655, 26.324463>,  <12.663086, 15.451982, 26.402876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.449484, 15.375655, 26.324463>,  <12.093481, 15.248445, 26.193775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.449484, 15.375655, 26.324463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454525, 0.562312, 0.690805,
		0.035976, -0.763324, 0.645013,
		0.890007, 0.318027, 0.326720,
		12.716486, 15.471064, 26.422480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.047848, 15.104297, 26.848244>,  <12.093481, 15.248445, 26.193775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.047848, 15.104297, 26.848244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.317455, 15.394906, 26.794779>,  <12.479219, 15.569271, 26.762701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.317455, 15.394906, 26.794779>,  <12.047848, 15.104297, 26.848244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317455, 15.394906, 26.794779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539280, 0.607584, 0.583112,
		0.504854, -0.320947, 0.801321,
		0.674017, 0.726523, -0.133661,
		12.519661, 15.612863, 26.754681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135198, 15.413007, 27.525164>,  <12.047848, 15.104297, 26.848244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.135198, 15.413007, 27.525164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.282390, 15.674957, 27.261126>,  <12.370705, 15.832128, 27.102703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.282390, 15.674957, 27.261126>,  <12.135198, 15.413007, 27.525164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.282390, 15.674957, 27.261126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482139, 0.741400, 0.466764,
		0.795069, 0.146499, 0.588561,
		0.367978, 0.654877, -0.660097,
		12.392783, 15.871421, 27.063097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.121673, 16.047184, 28.032974>,  <12.135198, 15.413007, 27.525164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.121673, 16.047184, 28.032974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.191419, 16.154428, 27.653984>,  <12.233266, 16.218775, 27.426590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.191419, 16.154428, 27.653984>,  <12.121673, 16.047184, 28.032974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191419, 16.154428, 27.653984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546831, 0.826569, 0.133266,
		0.818885, 0.494873, 0.290737,
		0.174365, 0.268113, -0.947477,
		12.243728, 16.234863, 27.369741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.566812, 16.712664, 27.921108>,  <12.121673, 16.047184, 28.032974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.566812, 16.712664, 27.921108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.333292, 16.659298, 27.600763>,  <12.193180, 16.627277, 27.408556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.333292, 16.659298, 27.600763>,  <12.566812, 16.712664, 27.921108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333292, 16.659298, 27.600763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501221, 0.835222, 0.226233,
		0.638714, 0.533483, -0.554473,
		-0.583800, -0.133415, -0.800861,
		12.158153, 16.619274, 27.360504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446596, 17.354551, 27.651360>,  <12.566812, 16.712664, 27.921108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446596, 17.354551, 27.651360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.175186, 17.175074, 27.418713>,  <12.012341, 17.067387, 27.279125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.175186, 17.175074, 27.418713>,  <12.446596, 17.354551, 27.651360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.175186, 17.175074, 27.418713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540319, 0.841253, -0.018647,
		0.497654, 0.301607, -0.813248,
		-0.678524, -0.448693, -0.581617,
		11.971629, 17.040466, 27.244226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.343240, 17.903355, 27.091463>,  <12.446596, 17.354551, 27.651360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.343240, 17.903355, 27.091463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.041295, 17.641062, 27.085844>,  <11.860128, 17.483686, 27.082472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.041295, 17.641062, 27.085844>,  <12.343240, 17.903355, 27.091463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.041295, 17.641062, 27.085844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640236, 0.741337, -0.201291,
		0.142408, -0.142952, -0.979431,
		-0.754863, -0.655732, -0.014049,
		11.814837, 17.444342, 27.081629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.067847, 17.974972, 26.374023>,  <12.343240, 17.903355, 27.091463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.067847, 17.974972, 26.374023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.776237, 17.851917, 26.618607>,  <11.601270, 17.778084, 26.765356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.776237, 17.851917, 26.618607>,  <12.067847, 17.974972, 26.374023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.776237, 17.851917, 26.618607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504467, 0.845261, -0.176199,
		-0.462635, -0.436914, -0.771411,
		-0.729028, -0.307636, 0.611456,
		11.557528, 17.759626, 26.802044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.478145, 18.155855, 26.072897>,  <12.067847, 17.974972, 26.374023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.478145, 18.155855, 26.072897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.351516, 18.085428, 26.445730>,  <11.275538, 18.043173, 26.669430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.351516, 18.085428, 26.445730>,  <11.478145, 18.155855, 26.072897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351516, 18.085428, 26.445730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460711, 0.887480, 0.011164,
		-0.829173, -0.425888, -0.362066,
		-0.316572, -0.176065, 0.932085,
		11.256544, 18.032608, 26.725355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.566563, 18.776867, 26.327206>,  <11.478145, 18.155855, 26.072897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.566563, 18.776867, 26.327206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.455641, 19.128803, 26.481598>,  <11.389088, 19.339966, 26.574234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.455641, 19.128803, 26.481598>,  <11.566563, 18.776867, 26.327206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.455641, 19.128803, 26.481598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770578, 0.036279, -0.636312,
		-0.573856, -0.473882, 0.667926,
		-0.277305, 0.879841, 0.385982,
		11.372449, 19.392756, 26.597393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.921119, 18.702272, 26.676950>,  <11.566563, 18.776867, 26.327206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.921119, 18.702272, 26.676950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.943645, 19.093950, 26.598969>,  <10.957160, 19.328957, 26.552179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.943645, 19.093950, 26.598969>,  <10.921119, 18.702272, 26.676950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.943645, 19.093950, 26.598969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802831, -0.071671, -0.591883,
		-0.593541, 0.189848, 0.782091,
		0.056315, 0.979194, -0.194955,
		10.960539, 19.387709, 26.540482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.170568, 18.938963, 26.727863>,  <10.921119, 18.702272, 26.676950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.170568, 18.938963, 26.727863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.354036, 19.227016, 26.519623>,  <10.464118, 19.399849, 26.394678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.354036, 19.227016, 26.519623>,  <10.170568, 18.938963, 26.727863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.354036, 19.227016, 26.519623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658430, -0.118003, -0.743334,
		-0.596732, 0.683728, 0.420032,
		0.458673, 0.720133, -0.520603,
		10.491638, 19.443056, 26.363441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.534942, 19.327351, 26.358263>,  <10.170568, 18.938963, 26.727863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.534942, 19.327351, 26.358263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.884620, 19.413389, 26.184128>,  <10.094426, 19.465012, 26.079647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.884620, 19.413389, 26.184128>,  <9.534942, 19.327351, 26.358263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.884620, 19.413389, 26.184128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445756, -0.000071, -0.895154,
		-0.192576, 0.976593, 0.095819,
		0.874194, 0.215097, -0.435336,
		10.146878, 19.477919, 26.053528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.403016, 19.882797, 25.956858>,  <9.534942, 19.327351, 26.358263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.403016, 19.882797, 25.956858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.743253, 19.736759, 25.805492>,  <9.947395, 19.649136, 25.714674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.743253, 19.736759, 25.805492>,  <9.403016, 19.882797, 25.956858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.743253, 19.736759, 25.805492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361795, 0.115868, -0.925029,
		0.381571, 0.923731, -0.033534,
		0.850593, -0.365096, -0.378414,
		9.998430, 19.627230, 25.691969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.599813, 20.356647, 25.417267>,  <9.403016, 19.882797, 25.956858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.599813, 20.356647, 25.417267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.763261, 19.994831, 25.368555>,  <9.861330, 19.777740, 25.339327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.763261, 19.994831, 25.368555>,  <9.599813, 20.356647, 25.417267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.763261, 19.994831, 25.368555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478421, -0.098647, -0.872573,
		0.777266, 0.414815, -0.473061,
		0.408622, -0.904543, -0.121781,
		9.885847, 19.723469, 25.332020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.648172, 20.348913, 24.760118>,  <9.599813, 20.356647, 25.417267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.648172, 20.348913, 24.760118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.693910, 19.958811, 24.835800>,  <9.721352, 19.724749, 24.881208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.693910, 19.958811, 24.835800>,  <9.648172, 20.348913, 24.760118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.693910, 19.958811, 24.835800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282615, -0.214515, -0.934940,
		0.952394, 0.053433, -0.300151,
		0.114343, -0.975258, 0.189202,
		9.728212, 19.666233, 24.892561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.274537, 20.760540, 25.024696>,  <9.648172, 20.348913, 24.760118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.274537, 20.760540, 25.024696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.490074, 21.060625, 24.871424>,  <10.619396, 21.240677, 24.779461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.490074, 21.060625, 24.871424>,  <10.274537, 20.760540, 25.024696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.490074, 21.060625, 24.871424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261114, 0.581204, 0.770728,
		0.800917, -0.315247, 0.509068,
		0.538842, 0.750215, -0.383181,
		10.651727, 21.285688, 24.756470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.758373, 20.992229, 25.613613>,  <10.274537, 20.760540, 25.024696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.758373, 20.992229, 25.613613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.687503, 21.281948, 25.347078>,  <10.644980, 21.455780, 25.187159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.687503, 21.281948, 25.347078>,  <10.758373, 20.992229, 25.613613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.687503, 21.281948, 25.347078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239059, 0.625098, 0.743036,
		0.954704, 0.290942, 0.062396,
		-0.177177, 0.724296, -0.666336,
		10.634350, 21.499237, 25.147177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239788, 21.667999, 25.762152>,  <10.758373, 20.992229, 25.613613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239788, 21.667999, 25.762152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.933639, 21.784809, 25.532745>,  <10.749949, 21.854895, 25.395102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.933639, 21.784809, 25.532745>,  <11.239788, 21.667999, 25.762152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.933639, 21.784809, 25.532745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195196, 0.743825, 0.639237,
		0.613270, 0.601204, -0.512302,
		-0.765375, 0.292025, -0.573518,
		10.704026, 21.872417, 25.360689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365096, 22.368879, 25.765423>,  <11.239788, 21.667999, 25.762152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365096, 22.368879, 25.765423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.983198, 22.296240, 25.671204>,  <10.754060, 22.252655, 25.614672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.983198, 22.296240, 25.671204>,  <11.365096, 22.368879, 25.765423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.983198, 22.296240, 25.671204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294388, 0.689882, 0.661361,
		0.042397, 0.700774, -0.712122,
		-0.954745, -0.181601, -0.235549,
		10.696774, 22.241760, 25.600538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112173, 22.969513, 25.663244>,  <11.365096, 22.368879, 25.765423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112173, 22.969513, 25.663244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.762271, 22.779781, 25.702871>,  <10.552330, 22.665943, 25.726648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.762271, 22.779781, 25.702871>,  <11.112173, 22.969513, 25.663244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.762271, 22.779781, 25.702871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261984, 0.634947, 0.726778,
		-0.407636, 0.609799, -0.679690,
		-0.874756, -0.474329, 0.099069,
		10.499845, 22.637484, 25.732592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.679747, 23.536985, 25.895039>,  <11.112173, 22.969513, 25.663244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.679747, 23.536985, 25.895039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.473955, 23.201071, 25.964397>,  <10.350480, 22.999521, 26.006014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.473955, 23.201071, 25.964397>,  <10.679747, 23.536985, 25.895039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.473955, 23.201071, 25.964397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420333, 0.423233, 0.802617,
		-0.747416, 0.340045, -0.570735,
		-0.514480, -0.839788, 0.173399,
		10.319612, 22.949135, 26.016417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.990367, 23.689360, 25.908459>,  <10.679747, 23.536985, 25.895039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.990367, 23.689360, 25.908459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.004502, 23.352116, 26.123089>,  <10.012983, 23.149769, 26.251867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.004502, 23.352116, 26.123089>,  <9.990367, 23.689360, 25.908459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.004502, 23.352116, 26.123089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448494, 0.466428, 0.762429,
		-0.893087, -0.267594, -0.361648,
		0.035338, -0.843112, 0.536575,
		10.015104, 23.099182, 26.284061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.326518, 23.557165, 26.141603>,  <9.990367, 23.689360, 25.908459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.326518, 23.557165, 26.141603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.549919, 23.340839, 26.393188>,  <9.683960, 23.211044, 26.544140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.549919, 23.340839, 26.393188>,  <9.326518, 23.557165, 26.141603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.549919, 23.340839, 26.393188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390487, 0.497555, 0.774570,
		-0.731843, -0.678201, 0.066705,
		0.558503, -0.540816, 0.628961,
		9.717470, 23.178595, 26.581877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.782960, 23.322470, 26.717384>,  <9.326518, 23.557165, 26.141603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.782960, 23.322470, 26.717384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.150862, 23.307150, 26.873634>,  <9.371603, 23.297958, 26.967384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.150862, 23.307150, 26.873634>,  <8.782960, 23.322470, 26.717384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.150862, 23.307150, 26.873634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344220, 0.399491, 0.849658,
		-0.188591, -0.915937, 0.354250,
		0.919753, -0.038298, 0.390624,
		9.426787, 23.295660, 26.990822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.398504, 14.512477, 13.590788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731017, 14.417982, 13.792049>,  <13.930525, 14.361285, 13.912807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.731017, 14.417982, 13.792049>,  <13.398504, 14.512477, 13.590788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.731017, 14.417982, 13.792049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391704, 0.393284, 0.831803,
		-0.394385, -0.888549, 0.234395,
		0.831281, -0.236237, 0.503154,
		13.980401, 14.347111, 13.942995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.244239, 14.092079, 14.261324>,  <13.398504, 14.512477, 13.590788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.244239, 14.092079, 14.261324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570070, 14.323812, 14.272885>,  <13.765569, 14.462852, 14.279822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570070, 14.323812, 14.272885>,  <13.244239, 14.092079, 14.261324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.570070, 14.323812, 14.272885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379758, 0.494974, 0.781527,
		0.438456, -0.647592, 0.623202,
		0.814580, 0.579331, 0.028904,
		13.814444, 14.497612, 14.281556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640798, 13.921212, 14.859759>,  <13.244239, 14.092079, 14.261324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640798, 13.921212, 14.859759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.718711, 14.304245, 14.774817>,  <13.765459, 14.534065, 14.723852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.718711, 14.304245, 14.774817>,  <13.640798, 13.921212, 14.859759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.718711, 14.304245, 14.774817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223290, 0.254109, 0.941047,
		0.955092, -0.135883, 0.263314,
		0.194783, 0.957582, -0.212356,
		13.777146, 14.591519, 14.711111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.909520, 14.139694, 15.455790>,  <13.640798, 13.921212, 14.859759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.909520, 14.139694, 15.455790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844613, 14.489470, 15.272913>,  <13.805669, 14.699336, 15.163187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.844613, 14.489470, 15.272913>,  <13.909520, 14.139694, 15.455790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844613, 14.489470, 15.272913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140580, 0.438120, 0.887856,
		0.976682, 0.208342, 0.051836,
		-0.162267, 0.874440, -0.457192,
		13.795933, 14.751802, 15.135756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333936, 14.614198, 15.827788>,  <13.909520, 14.139694, 15.455790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333936, 14.614198, 15.827788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043562, 14.823371, 15.649099>,  <13.869338, 14.948874, 15.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.043562, 14.823371, 15.649099>,  <14.333936, 14.614198, 15.827788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043562, 14.823371, 15.649099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141181, 0.522395, 0.840935,
		0.673118, 0.673532, -0.305397,
		-0.725934, 0.522932, -0.446724,
		13.825782, 14.980250, 15.515082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.446782, 15.372126, 15.946605>,  <14.333936, 14.614198, 15.827788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.446782, 15.372126, 15.946605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056638, 15.349226, 15.861383>,  <13.822551, 15.335486, 15.810250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056638, 15.349226, 15.861383>,  <14.446782, 15.372126, 15.946605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056638, 15.349226, 15.861383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200067, 0.636503, 0.744874,
		0.092966, 0.769146, -0.632275,
		-0.975362, -0.057249, -0.213054,
		13.764030, 15.332051, 15.797467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232200, 16.084593, 16.076632>,  <14.446782, 15.372126, 15.946605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232200, 16.084593, 16.076632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913005, 15.845717, 16.109089>,  <13.721488, 15.702393, 16.128563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913005, 15.845717, 16.109089>,  <14.232200, 16.084593, 16.076632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913005, 15.845717, 16.109089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388480, 0.612631, 0.688308,
		-0.460760, 0.517738, -0.720867,
		-0.797988, -0.597186, 0.081145,
		13.673609, 15.666561, 16.133432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675177, 16.534836, 16.101728>,  <14.232200, 16.084593, 16.076632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675177, 16.534836, 16.101728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.533074, 16.195782, 16.259365>,  <13.447813, 15.992350, 16.353947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.533074, 16.195782, 16.259365>,  <13.675177, 16.534836, 16.101728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533074, 16.195782, 16.259365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416824, 0.521003, 0.744858,
		-0.836691, 0.100348, -0.538404,
		-0.355255, -0.847636, 0.394091,
		13.426497, 15.941491, 16.377592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.179392, 16.784500, 16.421574>,  <13.675177, 16.534836, 16.101728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.179392, 16.784500, 16.421574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194880, 16.419910, 16.585384>,  <13.204174, 16.201157, 16.683672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.194880, 16.419910, 16.585384>,  <13.179392, 16.784500, 16.421574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.194880, 16.419910, 16.585384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236654, 0.389812, 0.889967,
		-0.970822, -0.131379, -0.200610,
		0.038723, -0.911475, 0.409529,
		13.206497, 16.146467, 16.708242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.454699, 16.619598, 16.747421>,  <13.179392, 16.784500, 16.421574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.454699, 16.619598, 16.747421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753203, 16.409956, 16.911570>,  <12.932306, 16.284170, 17.010059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.753203, 16.409956, 16.911570>,  <12.454699, 16.619598, 16.747421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753203, 16.409956, 16.911570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305186, 0.278492, 0.910661,
		-0.591570, -0.804831, 0.047878,
		0.746262, -0.524108, 0.410371,
		12.977082, 16.252724, 17.034681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.075237, 16.054382, 17.034061>,  <12.454699, 16.619598, 16.747421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.075237, 16.054382, 17.034061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431609, 16.111183, 17.206610>,  <12.645432, 16.145264, 17.310139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431609, 16.111183, 17.206610>,  <12.075237, 16.054382, 17.034061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431609, 16.111183, 17.206610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449231, 0.136253, 0.882965,
		0.066608, -0.980444, 0.185183,
		0.890929, 0.142003, 0.431370,
		12.698888, 16.153784, 17.336021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034047, 15.671978, 17.728008>,  <12.075237, 16.054382, 17.034061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034047, 15.671978, 17.728008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306936, 15.964435, 17.728647>,  <12.470670, 16.139908, 17.729031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306936, 15.964435, 17.728647>,  <12.034047, 15.671978, 17.728008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306936, 15.964435, 17.728647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468338, 0.435322, 0.768866,
		0.561455, -0.525286, 0.639408,
		0.682223, 0.731142, 0.001598,
		12.511603, 16.183777, 17.729126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.028853, 15.058887, 18.185535>,  <12.034047, 15.671978, 17.728008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.028853, 15.058887, 18.185535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745773, 14.822894, 18.341013>,  <11.575925, 14.681298, 18.434299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.745773, 14.822894, 18.341013>,  <12.028853, 15.058887, 18.185535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745773, 14.822894, 18.341013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147897, -0.661679, -0.735056,
		0.690859, -0.462713, 0.555527,
		-0.707701, -0.589981, 0.388693,
		11.533463, 14.645900, 18.457621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.283526, 14.381423, 18.312092>,  <12.028853, 15.058887, 18.185535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.283526, 14.381423, 18.312092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.889803, 14.313824, 18.291800>,  <11.653568, 14.273264, 18.279625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.889803, 14.313824, 18.291800>,  <12.283526, 14.381423, 18.312092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.889803, 14.313824, 18.291800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164464, -0.774563, -0.610740,
		0.063920, -0.609501, 0.790204,
		-0.984310, -0.168999, -0.050731,
		11.594510, 14.263124, 18.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.183902, 13.576651, 18.409307>,  <12.283526, 14.381423, 18.312092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.183902, 13.576651, 18.409307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849524, 13.727033, 18.249378>,  <11.648898, 13.817262, 18.153421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849524, 13.727033, 18.249378>,  <12.183902, 13.576651, 18.409307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849524, 13.727033, 18.249378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014083, -0.742972, -0.669174,
		-0.548636, -0.553760, 0.626377,
		-0.835943, 0.375954, -0.399823,
		11.598742, 13.839819, 18.129431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863052, 13.060337, 18.247889>,  <12.183902, 13.576651, 18.409307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863052, 13.060337, 18.247889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673927, 13.325835, 18.016066>,  <11.560452, 13.485134, 17.876972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673927, 13.325835, 18.016066>,  <11.863052, 13.060337, 18.247889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673927, 13.325835, 18.016066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005584, -0.655450, -0.755217,
		-0.881145, -0.360312, 0.306199,
		-0.472812, 0.663746, -0.579559,
		11.532084, 13.524960, 17.842197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.325972, 12.698916, 17.903625>,  <11.863052, 13.060337, 18.247889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.325972, 12.698916, 17.903625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395390, 13.022377, 17.678782>,  <11.437040, 13.216454, 17.543875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395390, 13.022377, 17.678782>,  <11.325972, 12.698916, 17.903625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.395390, 13.022377, 17.678782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157708, -0.586222, -0.794652,
		-0.972116, 0.049259, -0.229267,
		0.173545, 0.808651, -0.562108,
		11.447453, 13.264973, 17.510149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.169116, 12.441792, 17.352596>,  <11.325972, 12.698916, 17.903625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.169116, 12.441792, 17.352596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340278, 12.781594, 17.229156>,  <11.442975, 12.985476, 17.155092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340278, 12.781594, 17.229156>,  <11.169116, 12.441792, 17.352596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340278, 12.781594, 17.229156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063110, -0.312523, -0.947812,
		-0.901618, 0.425049, -0.080118,
		0.427905, 0.849508, -0.308601,
		11.468649, 13.036447, 17.136576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.874496, 12.601678, 16.685753>,  <11.169116, 12.441792, 17.352596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.874496, 12.601678, 16.685753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.229042, 12.786112, 16.702520>,  <11.441770, 12.896772, 16.712582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.229042, 12.786112, 16.702520>,  <10.874496, 12.601678, 16.685753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.229042, 12.786112, 16.702520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157428, -0.215004, -0.963841,
		-0.435400, 0.860915, -0.263159,
		0.886365, 0.461085, 0.041919,
		11.494951, 12.924438, 16.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048265, 12.596650, 16.042618>,  <10.874496, 12.601678, 16.685753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048265, 12.596650, 16.042618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.414557, 12.710649, 16.155905>,  <11.634333, 12.779049, 16.223877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.414557, 12.710649, 16.155905>,  <11.048265, 12.596650, 16.042618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.414557, 12.710649, 16.155905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398678, -0.556938, -0.728613,
		-0.049920, 0.780126, -0.623628,
		0.915731, 0.284999, 0.283217,
		11.689277, 12.796149, 16.240870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.394859, 13.089795, 15.495293>,  <11.048265, 12.596650, 16.042618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.394859, 13.089795, 15.495293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688010, 12.917794, 15.706191>,  <11.863901, 12.814594, 15.832730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688010, 12.917794, 15.706191>,  <11.394859, 13.089795, 15.495293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.688010, 12.917794, 15.706191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429434, -0.308715, -0.848694,
		0.527709, 0.848406, -0.041593,
		0.732878, -0.430002, 0.527247,
		11.907873, 12.788794, 15.864365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.993054, 13.372258, 15.337425>,  <11.394859, 13.089795, 15.495293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.993054, 13.372258, 15.337425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094851, 13.015446, 15.486833>,  <12.155929, 12.801358, 15.576477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094851, 13.015446, 15.486833>,  <11.993054, 13.372258, 15.337425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.094851, 13.015446, 15.486833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436218, -0.238825, -0.867570,
		0.863104, 0.383724, 0.328341,
		0.254491, -0.892031, 0.373517,
		12.171198, 12.747836, 15.598887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.526545, 13.239263, 15.043707>,  <11.993054, 13.372258, 15.337425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.526545, 13.239263, 15.043707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489703, 12.861283, 15.169302>,  <12.467598, 12.634496, 15.244659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489703, 12.861283, 15.169302>,  <12.526545, 13.239263, 15.043707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489703, 12.861283, 15.169302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430036, -0.322154, -0.843378,
		0.898101, 0.057348, 0.436034,
		-0.092104, -0.944949, 0.313989,
		12.462072, 12.577799, 15.263498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.088057, 13.003302, 14.819080>,  <12.526545, 13.239263, 15.043707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.088057, 13.003302, 14.819080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.891644, 12.665380, 14.904113>,  <12.773796, 12.462626, 14.955132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.891644, 12.665380, 14.904113>,  <13.088057, 13.003302, 14.819080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.891644, 12.665380, 14.904113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396361, -0.433966, -0.809056,
		0.775748, -0.313014, 0.547939,
		-0.491033, -0.844805, 0.212581,
		12.744333, 12.411938, 14.967887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.500134, 12.379818, 14.705366>,  <13.088057, 13.003302, 14.819080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.500134, 12.379818, 14.705366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121140, 12.253540, 14.684947>,  <12.893743, 12.177773, 14.672695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.121140, 12.253540, 14.684947>,  <13.500134, 12.379818, 14.705366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.121140, 12.253540, 14.684947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249001, -0.628114, -0.737205,
		0.200668, -0.711203, 0.673737,
		-0.947487, -0.315695, -0.051048,
		12.836893, 12.158832, 14.669633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027853, 11.898665, 14.604677>,  <13.500134, 12.379818, 14.705366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027853, 11.898665, 14.604677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938657, 12.162443, 14.317510>,  <13.885139, 12.320709, 14.145209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.938657, 12.162443, 14.317510>,  <14.027853, 11.898665, 14.604677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938657, 12.162443, 14.317510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972094, -0.095381, 0.214328,
		0.072861, 0.745679, 0.662310,
		-0.222991, 0.659444, -0.717920,
		13.871759, 12.360276, 14.102134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528425, 11.571959, 15.053519>,  <14.027853, 11.898665, 14.604677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528425, 11.571959, 15.053519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868518, 11.371202, 15.117027>,  <15.072574, 11.250747, 15.155132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.868518, 11.371202, 15.117027>,  <14.528425, 11.571959, 15.053519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868518, 11.371202, 15.117027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254310, -0.127541, 0.958676,
		-0.460907, -0.855472, -0.236077,
		0.850230, -0.501897, 0.158771,
		15.123587, 11.220633, 15.164659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339423, 11.146356, 15.613598>,  <14.528425, 11.571959, 15.053519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339423, 11.146356, 15.613598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.738110, 11.126125, 15.638897>,  <14.977322, 11.113987, 15.654077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.738110, 11.126125, 15.638897>,  <14.339423, 11.146356, 15.613598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738110, 11.126125, 15.638897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065654, -0.047410, 0.996716,
		-0.047410, -0.997594, -0.050575,
		-0.996716, 0.050575, -0.063248,
		15.037125, 11.110952, 15.657871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464179, 10.549271, 16.135242>,  <14.339423, 11.146356, 15.613598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464179, 10.549271, 16.135242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.769185, 10.807805, 16.123774>,  <14.952188, 10.962926, 16.116892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.769185, 10.807805, 16.123774>,  <14.464179, 10.549271, 16.135242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769185, 10.807805, 16.123774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030686, 0.080402, 0.996290,
		0.646243, -0.758805, 0.081142,
		0.762514, 0.646336, -0.028674,
		14.997939, 11.001706, 16.115171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.984555, 10.272754, 16.573029>,  <14.464179, 10.549271, 16.135242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.984555, 10.272754, 16.573029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.063468, 10.663727, 16.542809>,  <15.110815, 10.898311, 16.524677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.063468, 10.663727, 16.542809>,  <14.984555, 10.272754, 16.573029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.063468, 10.663727, 16.542809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161027, 0.108325, 0.980987,
		0.967032, -0.181365, 0.178764,
		0.197281, 0.977432, -0.075549,
		15.122652, 10.956956, 16.520144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277014, 10.384721, 17.212679>,  <14.984555, 10.272754, 16.573029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277014, 10.384721, 17.212679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161613, 10.742725, 17.076609>,  <15.092372, 10.957528, 16.994967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161613, 10.742725, 17.076609>,  <15.277014, 10.384721, 17.212679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161613, 10.742725, 17.076609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028464, 0.347110, 0.937392,
		0.957056, 0.280123, -0.074667,
		-0.288503, 0.895011, -0.340177,
		15.075062, 11.011229, 16.974556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678067, 10.779783, 17.556698>,  <15.277014, 10.384721, 17.212679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678067, 10.779783, 17.556698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.381037, 11.030326, 17.461823>,  <15.202818, 11.180652, 17.404898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.381037, 11.030326, 17.461823>,  <15.678067, 10.779783, 17.556698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381037, 11.030326, 17.461823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019716, 0.333540, 0.942529,
		0.669470, 0.704577, -0.235330,
		-0.742577, 0.626356, -0.237187,
		15.158263, 11.218232, 17.390667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894100, 11.490416, 17.741386>,  <15.678067, 10.779783, 17.556698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894100, 11.490416, 17.741386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495549, 11.476770, 17.710232>,  <15.256418, 11.468583, 17.691540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.495549, 11.476770, 17.710232>,  <15.894100, 11.490416, 17.741386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.495549, 11.476770, 17.710232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083635, 0.228047, 0.970051,
		-0.015330, 0.973052, -0.230075,
		-0.996379, -0.034113, -0.077885,
		15.196635, 11.466537, 17.686867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707911, 12.023312, 18.107384>,  <15.894100, 11.490416, 17.741386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707911, 12.023312, 18.107384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374416, 11.804064, 18.080708>,  <15.174319, 11.672515, 18.064703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374416, 11.804064, 18.080708>,  <15.707911, 12.023312, 18.107384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374416, 11.804064, 18.080708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135788, 0.086465, 0.986958,
		-0.535205, 0.831918, -0.146517,
		-0.833737, -0.548120, -0.066688,
		15.124295, 11.639627, 18.060701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301314, 12.388911, 18.419333>,  <15.707911, 12.023312, 18.107384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301314, 12.388911, 18.419333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120115, 12.032347, 18.424673>,  <15.011395, 11.818408, 18.427877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120115, 12.032347, 18.424673>,  <15.301314, 12.388911, 18.419333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120115, 12.032347, 18.424673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085412, 0.058304, 0.994639,
		-0.887410, 0.449430, -0.102549,
		-0.452999, -0.891411, 0.013353,
		14.984216, 11.764923, 18.428679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646967, 12.420913, 18.825644>,  <15.301314, 12.388911, 18.419333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646967, 12.420913, 18.825644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720611, 12.027794, 18.831491>,  <14.764796, 11.791923, 18.834999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720611, 12.027794, 18.831491>,  <14.646967, 12.420913, 18.825644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720611, 12.027794, 18.831491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080379, -0.000232, 0.996764,
		-0.979614, -0.184688, -0.079039,
		0.184109, -0.982798, 0.014618,
		14.775844, 11.732955, 18.835876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.256541, 12.126269, 19.277233>,  <14.646967, 12.420913, 18.825644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.256541, 12.126269, 19.277233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497847, 11.808774, 19.246105>,  <14.642630, 11.618277, 19.227428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.497847, 11.808774, 19.246105>,  <14.256541, 12.126269, 19.277233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.497847, 11.808774, 19.246105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017261, -0.084556, 0.996269,
		-0.797356, -0.602355, -0.037308,
		0.603262, -0.793737, -0.077819,
		14.678825, 11.570653, 19.222759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.980443, 11.559331, 19.611662>,  <14.256541, 12.126269, 19.277233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.980443, 11.559331, 19.611662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370888, 11.475005, 19.590630>,  <14.605154, 11.424410, 19.578011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.370888, 11.475005, 19.590630>,  <13.980443, 11.559331, 19.611662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.370888, 11.475005, 19.590630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016182, -0.170791, 0.985175,
		-0.216675, -0.962489, -0.163299,
		0.976110, -0.210820, -0.052581,
		14.663721, 11.411761, 19.574856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.119368, 10.972475, 19.878948>,  <13.980443, 11.559331, 19.611662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.119368, 10.972475, 19.878948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.462833, 11.169857, 19.934372>,  <14.668913, 11.288286, 19.967627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.462833, 11.169857, 19.934372>,  <14.119368, 10.972475, 19.878948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462833, 11.169857, 19.934372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079995, -0.137998, 0.987197,
		0.506257, -0.858755, -0.079020,
		0.858664, 0.493454, 0.138558,
		14.720433, 11.317893, 19.975939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.338211, 10.692415, 20.463951>,  <14.119368, 10.972475, 19.878948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.338211, 10.692415, 20.463951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.618722, 10.976548, 20.439825>,  <14.787028, 11.147028, 20.425348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.618722, 10.976548, 20.439825>,  <14.338211, 10.692415, 20.463951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.618722, 10.976548, 20.439825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140899, -0.055168, 0.988486,
		0.698826, -0.701701, -0.138773,
		0.701277, 0.710333, -0.060316,
		14.829105, 11.189648, 20.421730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.961029, 10.444202, 20.830034>,  <14.338211, 10.692415, 20.463951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.961029, 10.444202, 20.830034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988946, 10.841911, 20.797659>,  <15.005696, 11.080537, 20.778234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.988946, 10.841911, 20.797659>,  <14.961029, 10.444202, 20.830034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.988946, 10.841911, 20.797659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011764, 0.080309, 0.996701,
		0.997492, -0.070514, -0.006092,
		0.069792, 0.994273, -0.080937,
		15.009884, 11.140193, 20.773378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429724, 10.593040, 21.311773>,  <14.961029, 10.444202, 20.830034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429724, 10.593040, 21.311773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268033, 10.952423, 21.243216>,  <15.171019, 11.168053, 21.202082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.268033, 10.952423, 21.243216>,  <15.429724, 10.593040, 21.311773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268033, 10.952423, 21.243216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048648, 0.208238, 0.976868,
		0.913364, 0.386538, -0.127883,
		-0.404226, 0.898457, -0.171393,
		15.146765, 11.221960, 21.191797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795501, 11.155040, 21.695099>,  <15.429724, 10.593040, 21.311773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795501, 11.155040, 21.695099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429595, 11.296507, 21.616997>,  <15.210052, 11.381387, 21.570135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429595, 11.296507, 21.616997>,  <15.795501, 11.155040, 21.695099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429595, 11.296507, 21.616997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114918, 0.235554, 0.965043,
		0.387297, 0.905226, -0.174834,
		-0.914765, 0.353667, -0.195256,
		15.155166, 11.402607, 21.558420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786090, 11.669247, 22.267723>,  <15.795501, 11.155040, 21.695099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786090, 11.669247, 22.267723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.416240, 11.642215, 22.117790>,  <15.194329, 11.625996, 22.027830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.416240, 11.642215, 22.117790>,  <15.786090, 11.669247, 22.267723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416240, 11.642215, 22.117790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362208, 0.460349, 0.810484,
		0.117782, 0.885162, -0.450129,
		-0.924626, -0.067580, -0.374833,
		15.138852, 11.621941, 22.005341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.573087, 12.278932, 22.270561>,  <15.786090, 11.669247, 22.267723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.573087, 12.278932, 22.270561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247910, 12.049603, 22.311411>,  <15.052803, 11.912006, 22.335920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.247910, 12.049603, 22.311411>,  <15.573087, 12.278932, 22.270561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.247910, 12.049603, 22.311411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347215, 0.617981, 0.705366,
		-0.467511, 0.537963, -0.701448,
		-0.812943, -0.573320, 0.102124,
		15.004026, 11.877607, 22.342049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.116536, 12.843585, 22.416395>,  <15.573087, 12.278932, 22.270561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.116536, 12.843585, 22.416395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985372, 12.484587, 22.534363>,  <14.906673, 12.269188, 22.605143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985372, 12.484587, 22.534363>,  <15.116536, 12.843585, 22.416395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985372, 12.484587, 22.534363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491310, 0.428651, 0.758204,
		-0.806901, 0.103728, -0.581508,
		-0.327911, -0.897496, 0.294917,
		14.886998, 12.215338, 22.622837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495077, 12.900127, 22.526596>,  <15.116536, 12.843585, 22.416395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495077, 12.900127, 22.526596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.550090, 12.556787, 22.724312>,  <14.583097, 12.350783, 22.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.550090, 12.556787, 22.724312>,  <14.495077, 12.900127, 22.526596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550090, 12.556787, 22.724312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434082, 0.396324, 0.809012,
		-0.890314, -0.325826, -0.318087,
		0.137531, -0.858350, 0.494287,
		14.591350, 12.299282, 22.872599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.912266, 12.874498, 22.861965>,  <14.495077, 12.900127, 22.526596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.912266, 12.874498, 22.861965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139491, 12.611776, 23.060322>,  <14.275826, 12.454143, 23.179337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.139491, 12.611776, 23.060322>,  <13.912266, 12.874498, 22.861965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139491, 12.611776, 23.060322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398064, 0.308099, 0.864072,
		-0.720312, -0.688245, -0.086431,
		0.568064, -0.656806, 0.495893,
		14.309910, 12.414735, 23.209089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.491180, 12.538270, 23.328794>,  <13.912266, 12.874498, 22.861965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.491180, 12.538270, 23.328794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868769, 12.519748, 23.459499>,  <14.095322, 12.508635, 23.537922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868769, 12.519748, 23.459499>,  <13.491180, 12.538270, 23.328794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.868769, 12.519748, 23.459499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289408, 0.359725, 0.887040,
		-0.158620, -0.931908, 0.326169,
		0.943971, -0.046306, 0.326762,
		14.151960, 12.505857, 23.557528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.400183, 12.397565, 24.102863>,  <13.491180, 12.538270, 23.328794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.400183, 12.397565, 24.102863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769474, 12.533998, 24.032082>,  <13.991049, 12.615857, 23.989613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769474, 12.533998, 24.032082>,  <13.400183, 12.397565, 24.102863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769474, 12.533998, 24.032082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025652, 0.514197, 0.857289,
		0.383393, -0.786935, 0.483471,
		0.923229, 0.341080, -0.176953,
		14.046443, 12.636322, 23.978996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.728044, 12.266782, 24.723871>,  <13.400183, 12.397565, 24.102863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.728044, 12.266782, 24.723871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943749, 12.545148, 24.534178>,  <14.073173, 12.712168, 24.420362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.943749, 12.545148, 24.534178>,  <13.728044, 12.266782, 24.723871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943749, 12.545148, 24.534178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040282, 0.583800, 0.810897,
		0.841173, -0.418184, 0.342855,
		0.539263, 0.695916, -0.474232,
		14.105529, 12.753922, 24.391909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221788, 12.438427, 25.193966>,  <13.728044, 12.266782, 24.723871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221788, 12.438427, 25.193966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.222537, 12.774772, 24.977467>,  <14.222986, 12.976579, 24.847567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.222537, 12.774772, 24.977467>,  <14.221788, 12.438427, 25.193966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222537, 12.774772, 24.977467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243643, 0.525322, 0.815276,
		0.969863, 0.130345, 0.205853,
		0.001872, 0.840861, -0.541248,
		14.223099, 13.027030, 24.815092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.662578, 12.966823, 25.510822>,  <14.221788, 12.438427, 25.193966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.662578, 12.966823, 25.510822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394630, 13.166197, 25.290699>,  <14.233862, 13.285821, 25.158625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394630, 13.166197, 25.290699>,  <14.662578, 12.966823, 25.510822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394630, 13.166197, 25.290699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123199, 0.656285, 0.744387,
		0.732187, 0.566439, -0.378218,
		-0.669869, 0.498435, -0.550308,
		14.193669, 13.315727, 25.125607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768468, 13.579658, 25.790691>,  <14.662578, 12.966823, 25.510822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768468, 13.579658, 25.790691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428360, 13.616618, 25.583422>,  <14.224295, 13.638795, 25.459061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428360, 13.616618, 25.583422>,  <14.768468, 13.579658, 25.790691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428360, 13.616618, 25.583422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257688, 0.785339, 0.562885,
		0.458952, 0.612131, -0.643940,
		-0.850270, 0.092402, -0.518172,
		14.173279, 13.644339, 25.427971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
