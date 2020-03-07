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
	<4.768994, 0.025203, 0.502650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.440708, 0.076172, 0.279871>,  <4.243736, 0.106753, 0.146204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.440708, 0.076172, 0.279871>,  <4.768994, 0.025203, 0.502650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.440708, 0.076172, 0.279871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201720, 0.847409, 0.491129,
		0.534541, 0.515425, -0.669779,
		-0.820716, 0.127421, -0.556947,
		4.194493, 0.114398, 0.112787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.853435, 0.524445, 0.000884>,  <4.768994, 0.025203, 0.502650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.853435, 0.524445, 0.000884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498287, 0.480564, 0.179615>,  <4.285199, 0.454235, 0.286854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498287, 0.480564, 0.179615>,  <4.853435, 0.524445, 0.000884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498287, 0.480564, 0.179615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001358, 0.970529, 0.240979,
		-0.460096, 0.214564, -0.861553,
		-0.887868, -0.109703, 0.446828,
		4.231927, 0.447653, 0.313663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.352726, 1.050901, -0.156375>,  <4.853435, 0.524445, 0.000884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.352726, 1.050901, -0.156375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.273216, 0.881905, 0.197346>,  <4.225510, 0.780507, 0.409578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.273216, 0.881905, 0.197346>,  <4.352726, 1.050901, -0.156375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.273216, 0.881905, 0.197346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096424, 0.889499, 0.446648,
		-0.975290, 0.174051, -0.136073,
		-0.198776, -0.422491, 0.884302,
		4.213583, 0.755157, 0.462636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.664314, 1.167218, 0.241474>,  <4.352726, 1.050901, -0.156375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.664314, 1.167218, 0.241474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997490, 1.124947, 0.458746>,  <4.197395, 1.099584, 0.589109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997490, 1.124947, 0.458746>,  <3.664314, 1.167218, 0.241474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.997490, 1.124947, 0.458746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186792, 0.870286, 0.455754,
		-0.520885, -0.481077, 0.705155,
		0.832939, -0.105678, 0.543179,
		4.247372, 1.093243, 0.621700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.506651, 1.179067, 0.880656>,  <3.664314, 1.167218, 0.241474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.506651, 1.179067, 0.880656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893269, 1.280186, 0.898036>,  <4.125239, 1.340857, 0.908464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893269, 1.280186, 0.898036>,  <3.506651, 1.179067, 0.880656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893269, 1.280186, 0.898036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241877, 0.841876, 0.482431,
		0.085376, -0.476801, 0.874855,
		0.966544, 0.252796, 0.043451,
		4.183232, 1.356025, 0.911071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.586637, 1.320454, 1.590675>,  <3.506651, 1.179067, 0.880656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.586637, 1.320454, 1.590675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880516, 1.474323, 1.367160>,  <4.056844, 1.566645, 1.233050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.880516, 1.474323, 1.367160>,  <3.586637, 1.320454, 1.590675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880516, 1.474323, 1.367160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031228, 0.841998, 0.538576,
		0.677674, -0.378241, 0.630628,
		0.734699, 0.384672, -0.558788,
		4.100925, 1.589725, 1.199523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.183597, 1.531444, 2.050909>,  <3.586637, 1.320454, 1.590675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.183597, 1.531444, 2.050909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.189785, 1.739914, 1.709585>,  <4.193498, 1.864996, 1.504791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.189785, 1.739914, 1.709585>,  <4.183597, 1.531444, 2.050909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.189785, 1.739914, 1.709585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070389, 0.851862, 0.519015,
		0.997400, 0.052034, 0.049863,
		0.015470, 0.521176, -0.853309,
		4.194426, 1.896267, 1.453592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.412781, 2.106411, 2.277031>,  <4.183597, 1.531444, 2.050909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.412781, 2.106411, 2.277031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320545, 2.221478, 1.905209>,  <4.265203, 2.290518, 1.682115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320545, 2.221478, 1.905209>,  <4.412781, 2.106411, 2.277031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.320545, 2.221478, 1.905209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264044, 0.900959, 0.344316,
		0.936541, 0.324839, -0.131795,
		-0.230590, 0.287667, -0.929557,
		4.251369, 2.307778, 1.626341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.533895, 3.228436, 2.100630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.610687, 3.400383, 1.747732>,  <3.656763, 3.503551, 1.535993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.610687, 3.400383, 1.747732>,  <3.533895, 3.228436, 2.100630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.610687, 3.400383, 1.747732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401109, -0.854824, -0.329224,
		-0.895687, -0.290671, -0.336535,
		0.191982, 0.429868, -0.882245,
		3.668282, 3.529343, 1.483059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.140573, 2.933354, 1.441137>,  <3.533895, 3.228436, 2.100630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.140573, 2.933354, 1.441137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.512848, 3.073460, 1.398924>,  <3.736213, 3.157523, 1.373596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.512848, 3.073460, 1.398924>,  <3.140573, 2.933354, 1.441137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.512848, 3.073460, 1.398924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301705, -0.898083, -0.320032,
		-0.206872, 0.266010, -0.941511,
		0.930687, 0.350264, -0.105532,
		3.792054, 3.178539, 1.367264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.301390, 2.808705, 0.867213>,  <3.140573, 2.933354, 1.441137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.301390, 2.808705, 0.867213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.659630, 2.817677, 1.044931>,  <3.874574, 2.823060, 1.151562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.659630, 2.817677, 1.044931>,  <3.301390, 2.808705, 0.867213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.659630, 2.817677, 1.044931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210418, -0.901302, -0.378654,
		0.391951, 0.432610, -0.811926,
		0.895600, 0.022430, 0.444295,
		3.928310, 2.824405, 1.178220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.795833, 2.566867, 0.444245>,  <3.301390, 2.808705, 0.867213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.795833, 2.566867, 0.444245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.990356, 2.516476, 0.790108>,  <4.107070, 2.486241, 0.997626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.990356, 2.516476, 0.790108>,  <3.795833, 2.566867, 0.444245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.990356, 2.516476, 0.790108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373204, -0.864806, -0.335901,
		0.790078, 0.486045, -0.373547,
		0.486309, -0.125978, 0.864658,
		4.136249, 2.478682, 1.049505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.442688, 2.500224, 0.323161>,  <3.795833, 2.566867, 0.444245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.442688, 2.500224, 0.323161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.381248, 2.326214, 0.678049>,  <4.344385, 2.221808, 0.890982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.381248, 2.326214, 0.678049>,  <4.442688, 2.500224, 0.323161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.381248, 2.326214, 0.678049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313666, -0.872903, -0.373702,
		0.937028, 0.220891, 0.270530,
		-0.153600, -0.435025, 0.887221,
		4.335169, 2.195706, 0.944215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.024774, 2.011025, 0.401761>,  <4.442688, 2.500224, 0.323161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.024774, 2.011025, 0.401761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.744286, 1.894638, 0.662107>,  <4.575993, 1.824806, 0.818316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.744286, 1.894638, 0.662107>,  <5.024774, 2.011025, 0.401761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.744286, 1.894638, 0.662107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181303, -0.955692, -0.231909,
		0.689506, -0.044615, 0.722904,
		-0.701221, -0.290967, 0.650867,
		4.533919, 1.807348, 0.857368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.458306, 1.626958, 0.877903>,  <5.024774, 2.011025, 0.401761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.458306, 1.626958, 0.877903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.066597, 1.546600, 0.888224>,  <4.831572, 1.498386, 0.894416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.066597, 1.546600, 0.888224>,  <5.458306, 1.626958, 0.877903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.066597, 1.546600, 0.888224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189057, -0.952328, -0.239434,
		0.072672, -0.229593, 0.970570,
		-0.979273, -0.200893, 0.025802,
		4.772815, 1.486332, 0.895964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.418716, 1.005617, 1.225650>,  <5.458306, 1.626958, 0.877903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.418716, 1.005617, 1.225650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.076859, 1.060333, 1.025301>,  <4.871744, 1.093163, 0.905092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.076859, 1.060333, 1.025301>,  <5.418716, 1.005617, 1.225650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.076859, 1.060333, 1.025301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036299, -0.978052, -0.205173,
		-0.517945, -0.157169, 0.840851,
		-0.854643, 0.136790, -0.500872,
		4.820466, 1.101370, 0.875039>
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
