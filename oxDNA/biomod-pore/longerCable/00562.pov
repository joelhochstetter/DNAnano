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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.247631, 35.342438, 35.392353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210567, 35.128334, 35.056519>,  <24.188330, 34.999870, 34.855019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210567, 35.128334, 35.056519>,  <24.247631, 35.342438, 35.392353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.210567, 35.128334, 35.056519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526016, -0.742261, 0.415158,
		-0.845412, -0.403170, 0.350331,
		-0.092658, -0.535260, -0.839590,
		24.182770, 34.967754, 34.804642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868692, 35.823845, 35.533051>,  <24.247631, 35.342438, 35.392353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868692, 35.823845, 35.533051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146996, 35.591129, 35.701546>,  <25.313976, 35.451500, 35.802643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146996, 35.591129, 35.701546>,  <24.868692, 35.823845, 35.533051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146996, 35.591129, 35.701546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696113, 0.401596, -0.595102,
		0.177055, 0.707278, 0.684404,
		0.695757, -0.581789, 0.421241,
		25.355722, 35.416592, 35.827919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448086, 36.166985, 35.955650>,  <24.868692, 35.823845, 35.533051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448086, 36.166985, 35.955650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589977, 35.824482, 35.805458>,  <25.675112, 35.618980, 35.715343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589977, 35.824482, 35.805458>,  <25.448086, 36.166985, 35.955650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589977, 35.824482, 35.805458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699468, 0.509525, -0.501127,
		0.620413, -0.084876, 0.779669,
		0.354727, -0.856260, -0.375484,
		25.696396, 35.567604, 35.692814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882645, 36.567375, 35.657749>,  <25.448086, 36.166985, 35.955650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882645, 36.567375, 35.657749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960520, 36.216179, 35.482826>,  <26.007246, 36.005463, 35.377872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960520, 36.216179, 35.482826>,  <25.882645, 36.567375, 35.657749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960520, 36.216179, 35.482826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442833, 0.476489, -0.759511,
		0.875211, -0.045783, 0.481570,
		0.194690, -0.877987, -0.437303,
		26.018927, 35.952782, 35.351635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682713, 36.506298, 35.624874>,  <25.882645, 36.567375, 35.657749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682713, 36.506298, 35.624874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505878, 36.306583, 35.326809>,  <26.399778, 36.186756, 35.147968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505878, 36.306583, 35.326809>,  <26.682713, 36.506298, 35.624874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505878, 36.306583, 35.326809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743375, 0.260954, -0.615870,
		0.501950, -0.826206, 0.255793,
		-0.442085, -0.499286, -0.745167,
		26.373253, 36.156799, 35.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836975, 36.992603, 35.216381>,  <26.682713, 36.506298, 35.624874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836975, 36.992603, 35.216381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583281, 36.818829, 34.960567>,  <26.431063, 36.714565, 34.807079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583281, 36.818829, 34.960567>,  <26.836975, 36.992603, 35.216381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583281, 36.818829, 34.960567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348583, -0.899031, 0.265016,
		-0.690095, -0.054848, 0.721637,
		-0.634239, -0.434436, -0.639536,
		26.393009, 36.688499, 34.768707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109055, 37.438919, 34.633881>,  <26.836975, 36.992603, 35.216381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109055, 37.438919, 34.633881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153976, 37.551342, 34.252644>,  <27.180929, 37.618797, 34.023899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153976, 37.551342, 34.252644>,  <27.109055, 37.438919, 34.633881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153976, 37.551342, 34.252644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392630, -0.868562, -0.302394,
		-0.912814, 0.408176, 0.012807,
		0.112306, 0.281057, -0.953097,
		27.187668, 37.635658, 33.966713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450693, 37.383636, 34.194336>,  <27.109055, 37.438919, 34.633881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450693, 37.383636, 34.194336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777159, 37.331791, 33.969097>,  <26.973038, 37.300682, 33.833954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777159, 37.331791, 33.969097>,  <26.450693, 37.383636, 34.194336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777159, 37.331791, 33.969097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328574, -0.905729, -0.267757,
		-0.475308, 0.403552, -0.781810,
		0.816162, -0.129616, -0.563097,
		27.022007, 37.292908, 33.800167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333162, 36.984905, 33.604435>,  <26.450693, 37.383636, 34.194336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333162, 36.984905, 33.604435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724987, 36.904453, 33.605011>,  <26.960083, 36.856182, 33.605358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724987, 36.904453, 33.605011>,  <26.333162, 36.984905, 33.604435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724987, 36.904453, 33.605011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162703, -0.796571, -0.582239,
		0.118257, 0.570105, -0.813016,
		0.979563, -0.201134, 0.001442,
		27.018856, 36.844112, 33.605442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533560, 36.970257, 32.920353>,  <26.333162, 36.984905, 33.604435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533560, 36.970257, 32.920353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745882, 36.746899, 33.175365>,  <26.873276, 36.612885, 33.328373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745882, 36.746899, 33.175365>,  <26.533560, 36.970257, 32.920353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745882, 36.746899, 33.175365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224884, -0.818088, -0.529300,
		0.817111, 0.137587, -0.559821,
		0.530808, -0.558392, 0.637528,
		26.905125, 36.579380, 33.366623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058544, 36.557060, 32.557987>,  <26.533560, 36.970257, 32.920353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058544, 36.557060, 32.557987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873728, 36.404484, 32.878242>,  <26.762838, 36.312939, 33.070396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873728, 36.404484, 32.878242>,  <27.058544, 36.557060, 32.557987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873728, 36.404484, 32.878242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334615, -0.761071, -0.555701,
		0.821309, -0.524662, 0.224010,
		-0.462043, -0.381445, 0.800635,
		26.735115, 36.290051, 33.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246983, 35.791065, 32.619564>,  <27.058544, 36.557060, 32.557987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246983, 35.791065, 32.619564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911066, 35.873882, 32.820316>,  <26.709517, 35.923573, 32.940769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.911066, 35.873882, 32.820316>,  <27.246983, 35.791065, 32.619564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911066, 35.873882, 32.820316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435096, -0.809570, -0.394066,
		0.324720, -0.549300, 0.769953,
		-0.839791, 0.207043, 0.501882,
		26.659128, 35.935997, 32.970882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550095, 35.610798, 32.289925>,  <27.246983, 35.791065, 32.619564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550095, 35.610798, 32.289925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785229, 35.353168, 32.485729>,  <26.926310, 35.198589, 32.603210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785229, 35.353168, 32.485729>,  <26.550095, 35.610798, 32.289925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785229, 35.353168, 32.485729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137643, 0.675901, 0.724025,
		-0.797185, -0.358230, 0.485970,
		0.587835, -0.644072, 0.489510,
		26.961580, 35.159946, 32.632584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245495, 35.407887, 32.959938>,  <26.550095, 35.610798, 32.289925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245495, 35.407887, 32.959938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642336, 35.359402, 32.972836>,  <26.880440, 35.330311, 32.980576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642336, 35.359402, 32.972836>,  <26.245495, 35.407887, 32.959938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642336, 35.359402, 32.972836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077391, 0.793891, 0.603115,
		-0.098704, -0.595856, 0.797002,
		0.992103, -0.121211, 0.032246,
		26.939966, 35.323040, 32.982510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510592, 35.313797, 33.664104>,  <26.245495, 35.407887, 32.959938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510592, 35.313797, 33.664104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795849, 35.474796, 33.434521>,  <26.967003, 35.571396, 33.296772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795849, 35.474796, 33.434521>,  <26.510592, 35.313797, 33.664104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795849, 35.474796, 33.434521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258411, 0.610156, 0.748955,
		0.651659, -0.682425, 0.331115,
		0.713137, 0.402500, -0.573959,
		27.009790, 35.595547, 33.262333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110708, 35.518234, 34.019142>,  <26.510592, 35.313797, 33.664104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110708, 35.518234, 34.019142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111782, 35.748890, 33.692345>,  <27.112427, 35.887283, 33.496265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111782, 35.748890, 33.692345>,  <27.110708, 35.518234, 34.019142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111782, 35.748890, 33.692345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270506, 0.786118, 0.555738,
		0.962715, -0.222492, -0.153875,
		0.002683, 0.576641, -0.816993,
		27.112587, 35.921883, 33.447247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762054, 35.869560, 34.091393>,  <27.110708, 35.518234, 34.019142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762054, 35.869560, 34.091393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487421, 36.084881, 33.895912>,  <27.322641, 36.214073, 33.778622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487421, 36.084881, 33.895912>,  <27.762054, 35.869560, 34.091393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487421, 36.084881, 33.895912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219344, 0.794216, 0.566665,
		0.693174, 0.281869, -0.663370,
		-0.686585, 0.538304, -0.488703,
		27.281446, 36.246372, 33.749302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014744, 36.446877, 34.441879>,  <27.762054, 35.869560, 34.091393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014744, 36.446877, 34.441879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009268, 36.328369, 34.823883>,  <28.005981, 36.257267, 35.053085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009268, 36.328369, 34.823883>,  <28.014744, 36.446877, 34.441879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009268, 36.328369, 34.823883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964007, 0.249714, 0.091288,
		-0.265524, 0.921884, 0.282182,
		-0.013692, -0.296264, 0.955008,
		28.005159, 36.239491, 35.110386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690111, 36.611504, 34.759010>,  <28.014744, 36.446877, 34.441879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690111, 36.611504, 34.759010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839155, 36.563946, 34.390873>,  <28.928581, 36.535412, 34.169991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839155, 36.563946, 34.390873>,  <28.690111, 36.611504, 34.759010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839155, 36.563946, 34.390873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675071, 0.715226, 0.180916,
		0.636742, -0.688707, 0.346759,
		0.372609, -0.118890, -0.920341,
		28.950937, 36.528278, 34.114769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506208, 36.915943, 35.502136>,  <28.690111, 36.611504, 34.759010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506208, 36.915943, 35.502136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879442, 37.020382, 35.601074>,  <29.103382, 37.083046, 35.660439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879442, 37.020382, 35.601074>,  <28.506208, 36.915943, 35.502136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879442, 37.020382, 35.601074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331521, -0.357757, -0.872985,
		-0.139440, 0.896571, -0.420376,
		0.933086, 0.261093, 0.247346,
		29.159369, 37.098709, 35.675278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811213, 37.427406, 34.981750>,  <28.506208, 36.915943, 35.502136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811213, 37.427406, 34.981750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085869, 37.194221, 35.155499>,  <29.250662, 37.054310, 35.259747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085869, 37.194221, 35.155499>,  <28.811213, 37.427406, 34.981750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085869, 37.194221, 35.155499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307113, -0.308957, -0.900126,
		0.658943, 0.751464, -0.033107,
		0.686641, -0.582964, 0.434369,
		29.291861, 37.019333, 35.285809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567043, 37.497532, 34.652302>,  <28.811213, 37.427406, 34.981750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567043, 37.497532, 34.652302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431868, 37.154312, 34.806992>,  <29.350763, 36.948380, 34.899807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431868, 37.154312, 34.806992>,  <29.567043, 37.497532, 34.652302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431868, 37.154312, 34.806992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271526, -0.482310, -0.832857,
		0.901151, -0.176448, 0.395972,
		-0.337937, -0.858046, 0.386724,
		29.330486, 36.896896, 34.923008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130062, 37.139942, 34.597389>,  <29.567043, 37.497532, 34.652302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130062, 37.139942, 34.597389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792084, 36.926029, 34.594105>,  <29.589296, 36.797680, 34.592136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792084, 36.926029, 34.594105>,  <30.130062, 37.139942, 34.597389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792084, 36.926029, 34.594105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239759, -0.365006, -0.899603,
		0.478101, -0.762085, 0.436631,
		-0.844947, -0.534787, -0.008207,
		29.538599, 36.765594, 34.591644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627253, 36.529991, 34.768955>,  <30.130062, 37.139942, 34.597389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627253, 36.529991, 34.768955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252062, 36.413177, 34.694210>,  <30.026947, 36.343090, 34.649364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252062, 36.413177, 34.694210>,  <30.627253, 36.529991, 34.768955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252062, 36.413177, 34.694210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341793, -0.688563, -0.639577,
		0.058113, -0.663776, 0.745671,
		-0.937977, -0.292033, -0.186860,
		29.970669, 36.325569, 34.638153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448763, 36.442432, 34.692791>,  <30.627253, 36.529991, 34.768955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448763, 36.442432, 34.692791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160349, 36.441730, 34.969952>,  <30.987301, 36.441307, 35.136246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160349, 36.441730, 34.969952>,  <31.448763, 36.442432, 34.692791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160349, 36.441730, 34.969952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026096, -0.999356, 0.024620,
		0.692409, 0.035833, 0.720615,
		-0.721033, -0.001758, 0.692898,
		30.944038, 36.441204, 35.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642023, 36.000523, 35.295441>,  <31.448763, 36.442432, 34.692791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642023, 36.000523, 35.295441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243326, 36.032780, 35.296139>,  <31.004108, 36.052135, 35.296558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243326, 36.032780, 35.296139>,  <31.642023, 36.000523, 35.295441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243326, 36.032780, 35.296139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080514, -0.995960, 0.039758,
		0.004948, 0.039488, 0.999208,
		-0.996741, 0.080646, 0.001749,
		30.944304, 36.056973, 35.296665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962509, 35.413189, 35.690022>,  <31.642023, 36.000523, 35.295441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962509, 35.413189, 35.690022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671062, 35.408886, 35.963955>,  <31.496195, 35.406303, 36.128315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671062, 35.408886, 35.963955>,  <31.962509, 35.413189, 35.690022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671062, 35.408886, 35.963955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026146, -0.999585, 0.012120,
		0.684421, 0.026736, 0.728597,
		-0.728619, -0.010755, 0.684835,
		31.452477, 35.405659, 36.169407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140339, 35.115677, 36.306664>,  <31.962509, 35.413189, 35.690022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140339, 35.115677, 36.306664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746082, 35.072582, 36.254665>,  <31.509527, 35.046726, 36.223469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746082, 35.072582, 36.254665>,  <32.140339, 35.115677, 36.306664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746082, 35.072582, 36.254665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121143, -0.987580, -0.100051,
		-0.117598, -0.114362, 0.986454,
		-0.985645, -0.107736, -0.129992,
		31.450390, 35.040260, 36.215668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769308, 34.685043, 36.825253>,  <32.140339, 35.115677, 36.306664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769308, 34.685043, 36.825253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644249, 34.648869, 36.447029>,  <31.569214, 34.627163, 36.220097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644249, 34.648869, 36.447029>,  <31.769308, 34.685043, 36.825253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644249, 34.648869, 36.447029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321479, -0.946786, -0.015746,
		-0.893814, -0.308899, 0.325082,
		-0.312647, -0.090433, -0.945555,
		31.550455, 34.621738, 36.163364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628384, 33.934124, 36.764565>,  <31.769308, 34.685043, 36.825253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628384, 33.934124, 36.764565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631868, 34.072788, 36.389385>,  <31.633959, 34.155987, 36.164276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631868, 34.072788, 36.389385>,  <31.628384, 33.934124, 36.764565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631868, 34.072788, 36.389385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307256, -0.893535, -0.327396,
		-0.951587, -0.285339, -0.114297,
		0.008709, 0.346664, -0.937949,
		31.634481, 34.176788, 36.108002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099836, 33.620163, 36.281528>,  <31.628384, 33.934124, 36.764565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099836, 33.620163, 36.281528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450287, 33.739822, 36.130314>,  <31.660557, 33.811619, 36.039585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450287, 33.739822, 36.130314>,  <31.099836, 33.620163, 36.281528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450287, 33.739822, 36.130314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195094, -0.937113, -0.289411,
		-0.440843, 0.179807, -0.879390,
		0.876125, 0.299148, -0.378041,
		31.713125, 33.829567, 36.016903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554775, 33.484001, 35.591724>,  <31.099836, 33.620163, 36.281528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554775, 33.484001, 35.591724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761219, 33.167564, 35.460392>,  <30.885084, 32.977703, 35.381592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761219, 33.167564, 35.460392>,  <30.554775, 33.484001, 35.591724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761219, 33.167564, 35.460392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612333, -0.608815, 0.504373,
		-0.598894, -0.059272, -0.798632,
		0.516114, -0.791095, -0.328322,
		30.916052, 32.930237, 35.361893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071079, 32.992069, 35.452885>,  <30.554775, 33.484001, 35.591724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071079, 32.992069, 35.452885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391926, 32.753651, 35.467522>,  <30.584433, 32.610600, 35.476303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391926, 32.753651, 35.467522>,  <30.071079, 32.992069, 35.452885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391926, 32.753651, 35.467522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563023, -0.734405, 0.379018,
		-0.199040, -0.324618, -0.924666,
		0.802115, -0.596048, 0.036592,
		30.632561, 32.574837, 35.478500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746174, 32.361092, 35.314587>,  <30.071079, 32.992069, 35.452885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746174, 32.361092, 35.314587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098440, 32.243309, 35.463028>,  <30.309801, 32.172638, 35.552094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098440, 32.243309, 35.463028>,  <29.746174, 32.361092, 35.314587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098440, 32.243309, 35.463028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446633, -0.777239, 0.443192,
		0.157935, -0.556052, -0.816004,
		0.880668, -0.294459, 0.371104,
		30.362640, 32.154972, 35.574360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966692, 31.656908, 35.138947>,  <29.746174, 32.361092, 35.314587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966692, 31.656908, 35.138947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147478, 31.735291, 35.487045>,  <30.255949, 31.782320, 35.695904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147478, 31.735291, 35.487045>,  <29.966692, 31.656908, 35.138947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147478, 31.735291, 35.487045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414316, -0.817847, 0.399334,
		0.789982, -0.541042, -0.288448,
		0.451963, 0.195958, 0.870247,
		30.283068, 31.794079, 35.748119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395304, 31.058636, 35.413212>,  <29.966692, 31.656908, 35.138947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395304, 31.058636, 35.413212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255186, 31.256624, 35.731281>,  <30.171116, 31.375418, 35.922123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255186, 31.256624, 35.731281>,  <30.395304, 31.058636, 35.413212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255186, 31.256624, 35.731281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296356, -0.863918, 0.407209,
		0.888519, -0.093011, 0.449313,
		-0.350295, 0.494969, 0.795172,
		30.150097, 31.405115, 35.969833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028366, 30.656319, 35.312023>,  <30.395304, 31.058636, 35.413212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028366, 30.656319, 35.312023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847530, 30.869787, 35.597908>,  <30.739029, 30.997868, 35.769440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847530, 30.869787, 35.597908>,  <31.028366, 30.656319, 35.312023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847530, 30.869787, 35.597908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397528, -0.837842, 0.374156,
		0.798490, -0.114965, 0.590929,
		-0.452090, 0.533671, 0.714710,
		30.711903, 31.029888, 35.812321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282295, 30.383867, 35.952999>,  <31.028366, 30.656319, 35.312023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282295, 30.383867, 35.952999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928076, 30.569313, 35.964752>,  <30.715544, 30.680580, 35.971806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928076, 30.569313, 35.964752>,  <31.282295, 30.383867, 35.952999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928076, 30.569313, 35.964752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401365, -0.795430, 0.454090,
		0.233894, 0.390326, 0.890471,
		-0.885551, 0.463613, 0.029382,
		30.662411, 30.708397, 35.973568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167238, 30.313986, 36.609600>,  <31.282295, 30.383867, 35.952999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167238, 30.313986, 36.609600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838980, 30.356609, 36.385036>,  <30.642025, 30.382183, 36.250298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838980, 30.356609, 36.385036>,  <31.167238, 30.313986, 36.609600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838980, 30.356609, 36.385036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310921, -0.907567, 0.282225,
		-0.479446, 0.406162, 0.777923,
		-0.820646, 0.106561, -0.561413,
		30.592787, 30.388578, 36.216614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564644, 29.803068, 36.472816>,  <31.167238, 30.313986, 36.609600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564644, 29.803068, 36.472816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189205, 29.665152, 36.477856>,  <29.963942, 29.582401, 36.480877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189205, 29.665152, 36.477856>,  <30.564644, 29.803068, 36.472816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189205, 29.665152, 36.477856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344767, 0.935868, -0.072714,
		0.013284, -0.072592, -0.997273,
		-0.938594, -0.344793, 0.012595,
		29.907627, 29.561714, 36.481636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260094, 29.813250, 35.787418>,  <30.564644, 29.803068, 36.472816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260094, 29.813250, 35.787418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011257, 29.878201, 36.093788>,  <29.861956, 29.917171, 36.277611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011257, 29.878201, 36.093788>,  <30.260094, 29.813250, 35.787418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011257, 29.878201, 36.093788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004182, 0.977554, -0.210642,
		-0.782934, -0.134241, -0.607448,
		-0.622090, 0.162379, 0.765922,
		29.824631, 29.926914, 36.323566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680861, 30.195026, 35.526230>,  <30.260094, 29.813250, 35.787418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680861, 30.195026, 35.526230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766069, 30.270723, 35.909649>,  <29.817194, 30.316141, 36.139698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766069, 30.270723, 35.909649>,  <29.680861, 30.195026, 35.526230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766069, 30.270723, 35.909649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317085, 0.914573, -0.251027,
		-0.924164, 0.357414, 0.134818,
		0.213021, 0.189241, 0.958546,
		29.829975, 30.327496, 36.197212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462595, 30.894958, 35.718761>,  <29.680861, 30.195026, 35.526230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462595, 30.894958, 35.718761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751379, 30.754002, 35.956951>,  <29.924650, 30.669428, 36.099865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751379, 30.754002, 35.956951>,  <29.462595, 30.894958, 35.718761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751379, 30.754002, 35.956951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435852, 0.900009, 0.004176,
		-0.537408, 0.256525, 0.803360,
		0.721960, -0.352390, 0.595479,
		29.967966, 30.648285, 36.135593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583260, 31.241276, 36.405109>,  <29.462595, 30.894958, 35.718761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583260, 31.241276, 36.405109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926931, 31.080553, 36.278389>,  <30.133135, 30.984119, 36.202358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926931, 31.080553, 36.278389>,  <29.583260, 31.241276, 36.405109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926931, 31.080553, 36.278389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432373, 0.901210, 0.029584,
		0.273617, -0.162394, 0.948031,
		0.859179, -0.401808, -0.316801,
		30.184685, 30.960011, 36.183350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064417, 31.689405, 36.744503>,  <29.583260, 31.241276, 36.405109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064417, 31.689405, 36.744503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272242, 31.493298, 36.464592>,  <30.396936, 31.375633, 36.296646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.272242, 31.493298, 36.464592>,  <30.064417, 31.689405, 36.744503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272242, 31.493298, 36.464592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418682, 0.860018, -0.291676,
		0.744821, -0.141440, 0.652101,
		0.519564, -0.490270, -0.699778,
		30.428110, 31.346216, 36.254658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839825, 31.807186, 36.705124>,  <30.064417, 31.689405, 36.744503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839825, 31.807186, 36.705124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717573, 31.728600, 36.332458>,  <30.644222, 31.681448, 36.108860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717573, 31.728600, 36.332458>,  <30.839825, 31.807186, 36.705124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717573, 31.728600, 36.332458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466037, 0.822394, -0.326308,
		0.830302, -0.533917, -0.159784,
		-0.305627, -0.196469, -0.931661,
		30.625885, 31.669659, 36.052959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427938, 31.798569, 36.246819>,  <30.839825, 31.807186, 36.705124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427938, 31.798569, 36.246819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123426, 31.919086, 36.017151>,  <30.940720, 31.991398, 35.879349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123426, 31.919086, 36.017151>,  <31.427938, 31.798569, 36.246819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123426, 31.919086, 36.017151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564421, 0.743796, -0.358047,
		0.319188, -0.596648, -0.736294,
		-0.761281, 0.301296, -0.574172,
		30.895042, 32.009476, 35.844898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687538, 31.906521, 35.601566>,  <31.427938, 31.798569, 36.246819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687538, 31.906521, 35.601566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341028, 32.094894, 35.534882>,  <31.133123, 32.207920, 35.494873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341028, 32.094894, 35.534882>,  <31.687538, 31.906521, 35.601566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341028, 32.094894, 35.534882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435411, 0.548130, -0.714122,
		-0.244927, -0.691211, -0.679881,
		-0.866273, 0.470935, -0.166709,
		31.081146, 32.236176, 35.484867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550020, 31.856554, 34.956947>,  <31.687538, 31.906521, 35.601566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550020, 31.856554, 34.956947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370308, 32.189510, 35.086727>,  <31.262482, 32.389286, 35.164597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370308, 32.189510, 35.086727>,  <31.550020, 31.856554, 34.956947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370308, 32.189510, 35.086727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581422, 0.548165, -0.601219,
		-0.678304, -0.081471, -0.730251,
		-0.449279, 0.832393, 0.324454,
		31.235523, 32.439228, 35.184063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799397, 32.349403, 34.553375>,  <31.550020, 31.856554, 34.956947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799397, 32.349403, 34.553375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650784, 32.552052, 34.864578>,  <31.561615, 32.673641, 35.051300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650784, 32.552052, 34.864578>,  <31.799397, 32.349403, 34.553375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650784, 32.552052, 34.864578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684935, 0.715283, -0.138686,
		-0.626758, 0.481360, -0.612753,
		-0.371534, 0.506619, 0.778010,
		31.539324, 32.704037, 35.097980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621035, 32.946232, 34.277908>,  <31.799397, 32.349403, 34.553375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621035, 32.946232, 34.277908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721695, 32.969673, 34.664326>,  <31.782091, 32.983738, 34.896175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721695, 32.969673, 34.664326>,  <31.621035, 32.946232, 34.277908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721695, 32.969673, 34.664326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749187, 0.620107, -0.232779,
		-0.612692, 0.782325, 0.112142,
		0.251649, 0.058607, 0.966042,
		31.797190, 32.987255, 34.954140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628933, 33.665123, 34.620045>,  <31.621035, 32.946232, 34.277908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628933, 33.665123, 34.620045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899620, 33.438679, 34.808331>,  <32.062031, 33.302811, 34.921303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899620, 33.438679, 34.808331>,  <31.628933, 33.665123, 34.620045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899620, 33.438679, 34.808331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679060, 0.726971, -0.101935,
		-0.284486, 0.388621, 0.876380,
		0.676717, -0.566115, 0.470710,
		32.102634, 33.268845, 34.949543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825474, 34.099796, 35.086746>,  <31.628933, 33.665123, 34.620045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825474, 34.099796, 35.086746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100277, 33.810623, 35.057388>,  <32.265160, 33.637119, 35.039772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100277, 33.810623, 35.057388>,  <31.825474, 34.099796, 35.086746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100277, 33.810623, 35.057388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686014, 0.678573, -0.262531,
		0.239597, 0.130010, 0.962128,
		0.687006, -0.722936, -0.073395,
		32.306377, 33.593742, 35.035370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528294, 34.311176, 35.334850>,  <31.825474, 34.099796, 35.086746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528294, 34.311176, 35.334850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588486, 34.012062, 35.076183>,  <32.624599, 33.832596, 34.920982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588486, 34.012062, 35.076183>,  <32.528294, 34.311176, 35.334850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588486, 34.012062, 35.076183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919649, 0.345908, -0.185994,
		0.362770, -0.566718, 0.739749,
		0.150479, -0.747782, -0.646667,
		32.633629, 33.787727, 34.882183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963150, 33.788052, 35.506195>,  <32.528294, 34.311176, 35.334850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963150, 33.788052, 35.506195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999130, 33.801888, 35.108059>,  <33.020718, 33.810188, 34.869175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999130, 33.801888, 35.108059>,  <32.963150, 33.788052, 35.506195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999130, 33.801888, 35.108059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898075, 0.429220, 0.096079,
		0.430545, -0.902538, 0.007548,
		0.089954, 0.034588, -0.995345,
		33.026115, 33.812263, 34.809456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570389, 34.099789, 36.012508>,  <32.963150, 33.788052, 35.506195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570389, 34.099789, 36.012508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779713, 34.437538, 36.058434>,  <33.905308, 34.640186, 36.085987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779713, 34.437538, 36.058434>,  <33.570389, 34.099789, 36.012508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779713, 34.437538, 36.058434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822796, -0.465629, -0.325878,
		-0.221701, 0.265003, -0.938415,
		0.523311, 0.844371, 0.114813,
		33.936707, 34.690849, 36.092876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013073, 34.320553, 35.461143>,  <33.570389, 34.099789, 36.012508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013073, 34.320553, 35.461143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193962, 34.446518, 35.794930>,  <34.302494, 34.522095, 35.995201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193962, 34.446518, 35.794930>,  <34.013073, 34.320553, 35.461143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193962, 34.446518, 35.794930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871586, -0.354599, -0.338523,
		0.189295, 0.880393, -0.434829,
		0.452223, 0.314910, 0.834462,
		34.329628, 34.540993, 36.045269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548485, 34.911640, 35.386578>,  <34.013073, 34.320553, 35.461143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548485, 34.911640, 35.386578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621704, 34.648708, 35.678989>,  <34.665634, 34.490948, 35.854439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621704, 34.648708, 35.678989>,  <34.548485, 34.911640, 35.386578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621704, 34.648708, 35.678989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822632, -0.304749, -0.480005,
		0.538304, 0.689234, 0.484959,
		0.183045, -0.657332, 0.731033,
		34.676617, 34.451508, 35.898300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207939, 35.056244, 35.503117>,  <34.548485, 34.911640, 35.386578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207939, 35.056244, 35.503117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120884, 34.684555, 35.622570>,  <35.068649, 34.461540, 35.694241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120884, 34.684555, 35.622570>,  <35.207939, 35.056244, 35.503117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120884, 34.684555, 35.622570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768129, -0.351834, -0.534968,
		0.602173, 0.112959, 0.790334,
		-0.217637, -0.929222, 0.298632,
		35.055592, 34.405788, 35.712158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755489, 34.741009, 35.821091>,  <35.207939, 35.056244, 35.503117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755489, 34.741009, 35.821091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570107, 34.431221, 35.648857>,  <35.458878, 34.245350, 35.545517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570107, 34.431221, 35.648857>,  <35.755489, 34.741009, 35.821091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570107, 34.431221, 35.648857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817284, -0.185823, -0.545450,
		0.342420, -0.604707, 0.719081,
		-0.463459, -0.774467, -0.430588,
		35.431068, 34.198879, 35.519680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288780, 34.240555, 35.871105>,  <35.755489, 34.741009, 35.821091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288780, 34.240555, 35.871105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038097, 34.160122, 35.569958>,  <35.887688, 34.111862, 35.389271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038097, 34.160122, 35.569958>,  <36.288780, 34.240555, 35.871105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038097, 34.160122, 35.569958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777145, -0.090211, -0.622823,
		0.057324, -0.975411, 0.212809,
		-0.626705, -0.201086, -0.752864,
		35.850086, 34.099796, 35.344097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401886, 33.582966, 35.511368>,  <36.288780, 34.240555, 35.871105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401886, 33.582966, 35.511368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231792, 33.850437, 35.267387>,  <36.129734, 34.010921, 35.120998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231792, 33.850437, 35.267387>,  <36.401886, 33.582966, 35.511368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231792, 33.850437, 35.267387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802590, -0.032912, -0.595622,
		-0.418356, -0.742820, -0.522682,
		-0.425238, 0.668681, -0.609949,
		36.104221, 34.051041, 35.084404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660217, 33.363468, 34.921776>,  <36.401886, 33.582966, 35.511368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660217, 33.363468, 34.921776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558437, 33.748466, 34.884140>,  <36.497368, 33.979465, 34.861557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558437, 33.748466, 34.884140>,  <36.660217, 33.363468, 34.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558437, 33.748466, 34.884140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810960, 0.159354, -0.562983,
		-0.526877, -0.219555, -0.821095,
		-0.254450, 0.962498, -0.094090,
		36.482101, 34.037216, 34.855911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606022, 33.578171, 34.144115>,  <36.660217, 33.363468, 34.921776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606022, 33.578171, 34.144115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679852, 33.907681, 34.358524>,  <36.724148, 34.105389, 34.487171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679852, 33.907681, 34.358524>,  <36.606022, 33.578171, 34.144115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679852, 33.907681, 34.358524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606764, 0.333536, -0.721521,
		-0.773156, 0.458413, -0.438277,
		0.184573, 0.823779, 0.536023,
		36.735222, 34.154816, 34.519333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540730, 34.261299, 33.694424>,  <36.606022, 33.578171, 34.144115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540730, 34.261299, 33.694424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765942, 34.355396, 34.011322>,  <36.901070, 34.411854, 34.201462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765942, 34.355396, 34.011322>,  <36.540730, 34.261299, 33.694424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765942, 34.355396, 34.011322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711482, 0.349747, -0.609483,
		-0.420463, 0.906828, 0.029546,
		0.563030, 0.235244, 0.792248,
		36.934853, 34.425968, 34.248997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697098, 34.986492, 33.636501>,  <36.540730, 34.261299, 33.694424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697098, 34.986492, 33.636501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967518, 34.811310, 33.873531>,  <37.129768, 34.706200, 34.015751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967518, 34.811310, 33.873531>,  <36.697098, 34.986492, 33.636501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967518, 34.811310, 33.873531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724934, 0.539389, -0.428404,
		-0.132005, 0.719202, 0.682146,
		0.676051, -0.437960, 0.592576,
		37.170334, 34.679920, 34.051304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009274, 35.367840, 33.160614>,  <36.697098, 34.986492, 33.636501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009274, 35.367840, 33.160614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647232, 35.354877, 32.991032>,  <36.430008, 35.347099, 32.889282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647232, 35.354877, 32.991032>,  <37.009274, 35.367840, 33.160614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647232, 35.354877, 32.991032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425166, -0.079456, -0.901621,
		-0.004471, -0.996312, 0.085693,
		-0.905104, -0.032403, -0.423953,
		36.375702, 35.345158, 32.863846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954987, 34.797985, 32.901188>,  <37.009274, 35.367840, 33.160614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954987, 34.797985, 32.901188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714054, 35.033566, 32.685658>,  <36.569496, 35.174915, 32.556339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714054, 35.033566, 32.685658>,  <36.954987, 34.797985, 32.901188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714054, 35.033566, 32.685658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570664, -0.154290, -0.806559,
		-0.558159, -0.793305, -0.243160,
		-0.602330, 0.588950, -0.538829,
		36.533356, 35.210251, 32.524010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752701, 34.508430, 32.313316>,  <36.954987, 34.797985, 32.901188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752701, 34.508430, 32.313316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692825, 34.893646, 32.223743>,  <36.656898, 35.124775, 32.169998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692825, 34.893646, 32.223743>,  <36.752701, 34.508430, 32.313316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692825, 34.893646, 32.223743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481074, -0.126928, -0.867443,
		-0.863805, -0.237578, -0.444294,
		-0.149692, 0.963040, -0.223933,
		36.647919, 35.182560, 32.156563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355015, 34.493011, 31.724361>,  <36.752701, 34.508430, 32.313316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355015, 34.493011, 31.724361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517529, 34.858173, 31.740065>,  <36.615036, 35.077271, 31.749487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517529, 34.858173, 31.740065>,  <36.355015, 34.493011, 31.724361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517529, 34.858173, 31.740065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471012, -0.172420, -0.865112,
		-0.782993, 0.369975, -0.500040,
		0.406287, 0.912902, 0.039259,
		36.639416, 35.132046, 31.751842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145462, 34.682281, 31.106916>,  <36.355015, 34.493011, 31.724361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145462, 34.682281, 31.106916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448746, 34.919975, 31.214252>,  <36.630718, 35.062592, 31.278654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448746, 34.919975, 31.214252>,  <36.145462, 34.682281, 31.106916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448746, 34.919975, 31.214252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425805, -0.139607, -0.893980,
		-0.493767, 0.792086, -0.358878,
		0.758211, 0.594230, 0.268341,
		36.676208, 35.098244, 31.294754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286686, 35.104256, 30.544029>,  <36.145462, 34.682281, 31.106916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286686, 35.104256, 30.544029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627922, 35.129875, 30.751156>,  <36.832664, 35.145245, 30.875431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627922, 35.129875, 30.751156>,  <36.286686, 35.104256, 30.544029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627922, 35.129875, 30.751156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515254, -0.259663, -0.816755,
		0.082147, 0.963573, -0.254517,
		0.853092, 0.064047, 0.517815,
		36.883850, 35.149090, 30.906500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754772, 35.536549, 30.161158>,  <36.286686, 35.104256, 30.544029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754772, 35.536549, 30.161158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011669, 35.359146, 30.411222>,  <37.165806, 35.252705, 30.561262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011669, 35.359146, 30.411222>,  <36.754772, 35.536549, 30.161158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011669, 35.359146, 30.411222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611194, -0.195885, -0.766858,
		0.462563, 0.874606, 0.145260,
		0.642244, -0.443502, 0.625163,
		37.204342, 35.226097, 30.598772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409557, 35.832211, 29.977798>,  <36.754772, 35.536549, 30.161158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409557, 35.832211, 29.977798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500858, 35.477219, 30.137939>,  <37.555637, 35.264225, 30.234024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500858, 35.477219, 30.137939>,  <37.409557, 35.832211, 29.977798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500858, 35.477219, 30.137939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704644, -0.133176, -0.696951,
		0.671847, 0.441184, 0.594961,
		0.228249, -0.887480, 0.400351,
		37.569332, 35.210976, 30.258045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153282, 35.861958, 29.945169>,  <37.409557, 35.832211, 29.977798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153282, 35.861958, 29.945169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039825, 35.480095, 29.981358>,  <37.971752, 35.250977, 30.003071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039825, 35.480095, 29.981358>,  <38.153282, 35.861958, 29.945169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039825, 35.480095, 29.981358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497569, -0.227172, -0.837149,
		0.819738, -0.192438, 0.539441,
		-0.283645, -0.954652, 0.090471,
		37.954731, 35.193699, 30.008499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746727, 35.531536, 29.754040>,  <38.153282, 35.861958, 29.945169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746727, 35.531536, 29.754040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454769, 35.265587, 29.690554>,  <38.279594, 35.106018, 29.652462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454769, 35.265587, 29.690554>,  <38.746727, 35.531536, 29.754040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454769, 35.265587, 29.690554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435256, -0.273024, -0.857911,
		0.527072, -0.695267, 0.488670,
		-0.729896, -0.664877, -0.158716,
		38.235802, 35.066124, 29.642939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128902, 34.867161, 29.487236>,  <38.746727, 35.531536, 29.754040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128902, 34.867161, 29.487236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749191, 34.824860, 29.368786>,  <38.521366, 34.799480, 29.297716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749191, 34.824860, 29.368786>,  <39.128902, 34.867161, 29.487236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749191, 34.824860, 29.368786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309672, -0.477799, -0.822078,
		-0.054550, -0.872081, 0.486312,
		-0.949278, -0.105753, -0.296123,
		38.464409, 34.793133, 29.279949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116611, 34.200878, 29.177515>,  <39.128902, 34.867161, 29.487236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116611, 34.200878, 29.177515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770332, 34.365948, 29.064186>,  <38.562565, 34.464989, 28.996189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770332, 34.365948, 29.064186>,  <39.116611, 34.200878, 29.177515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770332, 34.365948, 29.064186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081313, -0.442553, -0.893048,
		-0.493928, -0.796143, 0.349558,
		-0.865692, 0.412678, -0.283326,
		38.510624, 34.489750, 28.979189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814720, 33.685658, 28.889198>,  <39.116611, 34.200878, 29.177515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814720, 33.685658, 28.889198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641964, 34.010654, 28.732574>,  <38.538311, 34.205654, 28.638599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641964, 34.010654, 28.732574>,  <38.814720, 33.685658, 28.889198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641964, 34.010654, 28.732574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159867, -0.358300, -0.919817,
		-0.887644, -0.459859, 0.024856,
		-0.431892, 0.812497, -0.391559,
		38.512398, 34.254402, 28.615107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378288, 33.289692, 28.421087>,  <38.814720, 33.685658, 28.889198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378288, 33.289692, 28.421087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376465, 33.670589, 28.298969>,  <38.375370, 33.899128, 28.225698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376465, 33.670589, 28.298969>,  <38.378288, 33.289692, 28.421087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376465, 33.670589, 28.298969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023233, -0.305316, -0.951968,
		-0.999720, 0.002750, 0.023517,
		-0.004562, 0.952247, -0.305295,
		38.375095, 33.956264, 28.207380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745705, 33.420280, 27.997313>,  <38.378288, 33.289692, 28.421087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745705, 33.420280, 27.997313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025829, 33.687641, 27.897078>,  <38.193905, 33.848057, 27.836937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025829, 33.687641, 27.897078>,  <37.745705, 33.420280, 27.997313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025829, 33.687641, 27.897078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157753, -0.197446, -0.967538,
		-0.696183, 0.717113, -0.032832,
		0.700316, 0.668404, -0.250585,
		38.235924, 33.888161, 27.821901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434902, 33.896568, 27.486334>,  <37.745705, 33.420280, 27.997313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434902, 33.896568, 27.486334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827450, 33.928181, 27.416286>,  <38.062981, 33.947147, 27.374258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827450, 33.928181, 27.416286>,  <37.434902, 33.896568, 27.486334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827450, 33.928181, 27.416286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167545, -0.094023, -0.981371,
		-0.094023, 0.992428, -0.079030,
		0.981371, 0.079030, -0.175117,
		38.121861, 33.951889, 27.363750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526917, 34.464890, 26.927275>,  <37.434902, 33.896568, 27.486334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526917, 34.464890, 26.927275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896782, 34.314941, 26.900513>,  <38.118702, 34.224972, 26.884457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896782, 34.314941, 26.900513>,  <37.526917, 34.464890, 26.927275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896782, 34.314941, 26.900513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129184, -0.143532, -0.981178,
		0.358213, 0.915899, -0.181146,
		0.924660, -0.374871, -0.066904,
		38.174179, 34.202480, 26.880442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869530, 34.822388, 26.442871>,  <37.526917, 34.464890, 26.927275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869530, 34.822388, 26.442871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028740, 34.457344, 26.480244>,  <38.124264, 34.238319, 26.502666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028740, 34.457344, 26.480244>,  <37.869530, 34.822388, 26.442871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028740, 34.457344, 26.480244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134556, -0.158821, -0.978095,
		0.907455, 0.376731, -0.186011,
		0.398021, -0.912606, 0.093431,
		38.148148, 34.183563, 26.508272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195053, 34.741245, 25.913097>,  <37.869530, 34.822388, 26.442871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195053, 34.741245, 25.913097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184109, 34.359947, 26.033474>,  <38.177544, 34.131168, 26.105700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184109, 34.359947, 26.033474>,  <38.195053, 34.741245, 25.913097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184109, 34.359947, 26.033474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204064, -0.289390, -0.935207,
		0.978575, -0.086996, -0.186607,
		-0.027357, -0.953250, 0.300943,
		38.175903, 34.073971, 26.123756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483280, 34.362144, 25.331665>,  <38.195053, 34.741245, 25.913097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483280, 34.362144, 25.331665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327473, 34.058262, 25.539940>,  <38.233990, 33.875931, 25.664904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327473, 34.058262, 25.539940>,  <38.483280, 34.362144, 25.331665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327473, 34.058262, 25.539940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137891, -0.510862, -0.848532,
		0.910638, -0.402317, 0.094233,
		-0.389518, -0.759711, 0.520686,
		38.210617, 33.830349, 25.696146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810490, 33.750202, 25.059525>,  <38.483280, 34.362144, 25.331665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810490, 33.750202, 25.059525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470623, 33.619892, 25.225384>,  <38.266701, 33.541706, 25.324900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470623, 33.619892, 25.225384>,  <38.810490, 33.750202, 25.059525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470623, 33.619892, 25.225384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232028, -0.475149, -0.848762,
		0.473526, -0.817376, 0.328130,
		-0.849668, -0.325776, 0.414650,
		38.215721, 33.522160, 25.349779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804607, 33.003242, 25.093422>,  <38.810490, 33.750202, 25.059525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804607, 33.003242, 25.093422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417606, 33.102005, 25.115250>,  <38.185406, 33.161263, 25.128347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417606, 33.102005, 25.115250>,  <38.804607, 33.003242, 25.093422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417606, 33.102005, 25.115250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173254, -0.490090, -0.854280,
		-0.184178, -0.835973, 0.516940,
		-0.967503, 0.246902, 0.054572,
		38.127354, 33.176075, 25.131620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342117, 32.357464, 25.090614>,  <38.804607, 33.003242, 25.093422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342117, 32.357464, 25.090614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084862, 32.644260, 24.983065>,  <37.930508, 32.816338, 24.918535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084862, 32.644260, 24.983065>,  <38.342117, 32.357464, 25.090614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084862, 32.644260, 24.983065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070824, -0.405315, -0.911430,
		-0.762469, -0.567132, 0.311453,
		-0.643138, 0.716995, -0.268874,
		37.891922, 32.859360, 24.902403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768394, 32.034142, 24.698479>,  <38.342117, 32.357464, 25.090614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768394, 32.034142, 24.698479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755260, 32.414593, 24.575657>,  <37.747379, 32.642864, 24.501963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755260, 32.414593, 24.575657>,  <37.768394, 32.034142, 24.698479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755260, 32.414593, 24.575657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151206, -0.308412, -0.939158,
		-0.987957, 0.015594, 0.153942,
		-0.032832, 0.951125, -0.307056,
		37.745411, 32.699932, 24.483540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118767, 32.059849, 24.336735>,  <37.768394, 32.034142, 24.698479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118767, 32.059849, 24.336735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347942, 32.371540, 24.235111>,  <37.485447, 32.558556, 24.174137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347942, 32.371540, 24.235111>,  <37.118767, 32.059849, 24.336735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347942, 32.371540, 24.235111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139834, -0.212498, -0.967104,
		-0.807584, 0.589614, -0.012785,
		0.572935, 0.779231, -0.254058,
		37.519821, 32.605309, 24.158894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886059, 32.273956, 23.755463>,  <37.118767, 32.059849, 24.336735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886059, 32.273956, 23.755463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219761, 32.490707, 23.714697>,  <37.419983, 32.620758, 23.690237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219761, 32.490707, 23.714697>,  <36.886059, 32.273956, 23.755463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219761, 32.490707, 23.714697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072355, -0.075647, -0.994506,
		-0.546611, 0.837045, -0.023902,
		0.834255, 0.541879, -0.101914,
		37.470036, 32.653271, 23.684122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754223, 32.794601, 23.350832>,  <36.886059, 32.273956, 23.755463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754223, 32.794601, 23.350832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151360, 32.757969, 23.320175>,  <37.389641, 32.735989, 23.301781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151360, 32.757969, 23.320175>,  <36.754223, 32.794601, 23.350832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151360, 32.757969, 23.320175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092727, -0.186785, -0.978015,
		0.075251, 0.978123, -0.193940,
		0.992844, -0.091580, -0.076642,
		37.449211, 32.730495, 23.297182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873440, 33.234413, 22.785902>,  <36.754223, 32.794601, 23.350832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873440, 33.234413, 22.785902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183147, 32.987961, 22.843714>,  <37.368973, 32.840088, 22.878401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183147, 32.987961, 22.843714>,  <36.873440, 33.234413, 22.785902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183147, 32.987961, 22.843714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009135, -0.217470, -0.976024,
		0.632789, 0.757027, -0.162752,
		0.774270, -0.616131, 0.144528,
		37.415428, 32.803123, 22.887072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195328, 33.320511, 22.199324>,  <36.873440, 33.234413, 22.785902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195328, 33.320511, 22.199324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351513, 32.978397, 22.335575>,  <37.445225, 32.773129, 22.417326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351513, 32.978397, 22.335575>,  <37.195328, 33.320511, 22.199324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351513, 32.978397, 22.335575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194921, -0.284806, -0.938558,
		0.899745, 0.432872, 0.055505,
		0.390467, -0.855282, 0.340629,
		37.468655, 32.721813, 22.437763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879200, 33.338123, 21.944874>,  <37.195328, 33.320511, 22.199324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879200, 33.338123, 21.944874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788204, 32.952919, 22.002655>,  <37.733608, 32.721798, 22.037323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788204, 32.952919, 22.002655>,  <37.879200, 33.338123, 21.944874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788204, 32.952919, 22.002655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390367, -0.226088, -0.892468,
		0.892111, -0.146637, 0.427358,
		-0.227489, -0.963007, 0.144454,
		37.719959, 32.664017, 22.045992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316700, 33.014843, 21.462063>,  <37.879200, 33.338123, 21.944874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316700, 33.014843, 21.462063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051807, 32.735435, 21.570522>,  <37.892872, 32.567791, 21.635597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051807, 32.735435, 21.570522>,  <38.316700, 33.014843, 21.462063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051807, 32.735435, 21.570522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024702, -0.341318, -0.939623,
		0.748894, -0.628944, 0.208776,
		-0.662230, -0.698521, 0.271146,
		37.853138, 32.525879, 21.651867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539288, 32.454735, 21.121748>,  <38.316700, 33.014843, 21.462063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539288, 32.454735, 21.121748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160709, 32.367657, 21.217127>,  <37.933563, 32.315411, 21.274355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160709, 32.367657, 21.217127>,  <38.539288, 32.454735, 21.121748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160709, 32.367657, 21.217127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144538, -0.374718, -0.915803,
		0.288716, -0.901219, 0.323183,
		-0.946442, -0.217694, 0.238447,
		37.876778, 32.302349, 21.288660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426048, 31.747789, 20.920637>,  <38.539288, 32.454735, 21.121748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426048, 31.747789, 20.920637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057007, 31.897169, 20.959295>,  <37.835583, 31.986797, 20.982491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057007, 31.897169, 20.959295>,  <38.426048, 31.747789, 20.920637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057007, 31.897169, 20.959295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280960, -0.478863, -0.831717,
		-0.264322, -0.794498, 0.546724,
		-0.922603, 0.373449, 0.096648,
		37.780228, 32.009205, 20.988289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975071, 31.224627, 20.905857>,  <38.426048, 31.747789, 20.920637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975071, 31.224627, 20.905857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766018, 31.547728, 20.796762>,  <37.640587, 31.741589, 20.731306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766018, 31.547728, 20.796762>,  <37.975071, 31.224627, 20.905857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766018, 31.547728, 20.796762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154975, -0.404587, -0.901272,
		-0.838352, -0.428771, 0.336634,
		-0.522637, 0.807753, -0.272738,
		37.609226, 31.790054, 20.714941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584297, 31.000528, 20.439251>,  <37.975071, 31.224627, 20.905857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584297, 31.000528, 20.439251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527870, 31.390076, 20.368053>,  <37.494015, 31.623804, 20.325335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527870, 31.390076, 20.368053>,  <37.584297, 31.000528, 20.439251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527870, 31.390076, 20.368053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309979, -0.214199, -0.926300,
		-0.940220, -0.075494, 0.332095,
		-0.141065, 0.973868, -0.177992,
		37.485550, 31.682236, 20.314655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024315, 31.043972, 20.139381>,  <37.584297, 31.000528, 20.439251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024315, 31.043972, 20.139381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196655, 31.384773, 20.020411>,  <37.300060, 31.589254, 19.949028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196655, 31.384773, 20.020411>,  <37.024315, 31.043972, 20.139381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196655, 31.384773, 20.020411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239652, -0.209730, -0.947935,
		-0.870022, 0.479694, 0.113823,
		0.430847, 0.852002, -0.297429,
		37.325909, 31.640373, 19.931181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461208, 31.243774, 19.676760>,  <37.024315, 31.043972, 20.139381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461208, 31.243774, 19.676760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810074, 31.421770, 19.595451>,  <37.019394, 31.528566, 19.546667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810074, 31.421770, 19.595451>,  <36.461208, 31.243774, 19.676760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810074, 31.421770, 19.595451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145917, -0.159972, -0.976277,
		-0.466949, 0.881132, -0.074590,
		0.872162, 0.444988, -0.203271,
		37.071724, 31.555267, 19.534470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389008, 31.778992, 19.158741>,  <36.461208, 31.243774, 19.676760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389008, 31.778992, 19.158741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781200, 31.701548, 19.145069>,  <37.016518, 31.655081, 19.136866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781200, 31.701548, 19.145069>,  <36.389008, 31.778992, 19.158741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781200, 31.701548, 19.145069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038452, -0.018359, -0.999092,
		0.192806, 0.980907, -0.025446,
		0.980483, -0.193609, -0.034178,
		37.075344, 31.643465, 19.134815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646717, 32.171581, 18.604046>,  <36.389008, 31.778992, 19.158741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646717, 32.171581, 18.604046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948093, 31.917839, 18.673233>,  <37.128922, 31.765594, 18.714745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948093, 31.917839, 18.673233>,  <36.646717, 32.171581, 18.604046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948093, 31.917839, 18.673233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184132, -0.048971, -0.981681,
		0.631205, 0.771489, 0.079908,
		0.753443, -0.634355, 0.172967,
		37.174126, 31.727533, 18.725122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327492, 32.462666, 18.296148>,  <36.646717, 32.171581, 18.604046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327492, 32.462666, 18.296148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319012, 32.063366, 18.318205>,  <37.313923, 31.823786, 18.331438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319012, 32.063366, 18.318205>,  <37.327492, 32.462666, 18.296148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319012, 32.063366, 18.318205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014256, -0.054845, -0.998393,
		0.999674, -0.021949, -0.013068,
		-0.021197, -0.998254, 0.055140,
		37.312653, 31.763889, 18.334747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773251, 32.316532, 17.822531>,  <37.327492, 32.462666, 18.296148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773251, 32.316532, 17.822531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579006, 31.971189, 17.877365>,  <37.462460, 31.763983, 17.910267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579006, 31.971189, 17.877365>,  <37.773251, 32.316532, 17.822531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579006, 31.971189, 17.877365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100851, -0.100442, -0.989818,
		0.868340, -0.494489, -0.038295,
		-0.485608, -0.863361, 0.137088,
		37.433323, 31.712181, 17.918491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014259, 31.878622, 17.292742>,  <37.773251, 32.316532, 17.822531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014259, 31.878622, 17.292742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681973, 31.690578, 17.412010>,  <37.482601, 31.577751, 17.483572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681973, 31.690578, 17.412010>,  <38.014259, 31.878622, 17.292742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681973, 31.690578, 17.412010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245774, -0.170877, -0.954147,
		0.499505, -0.865909, 0.026409,
		-0.830717, -0.470110, 0.298171,
		37.432758, 31.549545, 17.501461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028538, 31.289705, 16.929461>,  <38.014259, 31.878622, 17.292742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028538, 31.289705, 16.929461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643475, 31.335566, 17.027555>,  <37.412437, 31.363081, 17.086412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643475, 31.335566, 17.027555>,  <38.028538, 31.289705, 16.929461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643475, 31.335566, 17.027555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265215, -0.217718, -0.939287,
		-0.054294, -0.969255, 0.239995,
		-0.962660, 0.114648, 0.245240,
		37.354675, 31.369961, 17.101128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717949, 30.758350, 16.576376>,  <38.028538, 31.289705, 16.929461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717949, 30.758350, 16.576376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411301, 31.004927, 16.648260>,  <37.227314, 31.152872, 16.691391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411301, 31.004927, 16.648260>,  <37.717949, 30.758350, 16.576376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411301, 31.004927, 16.648260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397256, -0.235452, -0.886989,
		-0.504465, -0.751373, 0.425387,
		-0.766618, 0.616442, 0.179710,
		37.181316, 31.189859, 16.702173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080189, 30.482950, 16.331188>,  <37.717949, 30.758350, 16.576376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080189, 30.482950, 16.331188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053967, 30.882072, 16.334961>,  <37.038231, 31.121546, 16.337225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053967, 30.882072, 16.334961>,  <37.080189, 30.482950, 16.331188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053967, 30.882072, 16.334961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569198, -0.029633, -0.821666,
		-0.819583, -0.059236, 0.569891,
		-0.065560, 0.997804, 0.009430,
		37.034298, 31.181414, 16.337790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379654, 30.797066, 16.410830>,  <37.080189, 30.482950, 16.331188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379654, 30.797066, 16.410830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609814, 31.038792, 16.190386>,  <36.747910, 31.183826, 16.058119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609814, 31.038792, 16.190386>,  <36.379654, 30.797066, 16.410830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609814, 31.038792, 16.190386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698497, 0.012565, -0.715503,
		-0.425464, 0.796647, 0.429341,
		0.575398, 0.604314, -0.551110,
		36.782433, 31.220085, 16.025053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073734, 31.486794, 16.271467>,  <36.379654, 30.797066, 16.410830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073734, 31.486794, 16.271467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310509, 31.321543, 15.994645>,  <36.452572, 31.222393, 15.828552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310509, 31.321543, 15.994645>,  <36.073734, 31.486794, 16.271467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310509, 31.321543, 15.994645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782733, -0.089903, -0.615830,
		0.192199, 0.906225, -0.376586,
		0.591936, -0.413128, -0.692053,
		36.488091, 31.197605, 15.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948471, 31.839556, 15.686200>,  <36.073734, 31.486794, 16.271467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948471, 31.839556, 15.686200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084396, 31.471189, 15.609842>,  <36.165951, 31.250170, 15.564028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084396, 31.471189, 15.609842>,  <35.948471, 31.839556, 15.686200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084396, 31.471189, 15.609842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873330, -0.233657, -0.427433,
		0.349025, 0.311964, -0.883663,
		0.339818, -0.920914, -0.190896,
		36.186340, 31.194916, 15.552573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975533, 31.736359, 14.982001>,  <35.948471, 31.839556, 15.686200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975533, 31.736359, 14.982001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935898, 31.372757, 15.143934>,  <35.912117, 31.154596, 15.241094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935898, 31.372757, 15.143934>,  <35.975533, 31.736359, 14.982001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935898, 31.372757, 15.143934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860842, -0.125759, -0.493088,
		0.499131, -0.397358, -0.770049,
		-0.099091, -0.909006, 0.404832,
		35.906170, 31.100056, 15.265384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299137, 32.080956, 14.917642>,  <35.975533, 31.736359, 14.982001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299137, 32.080956, 14.917642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124786, 32.407234, 14.765505>,  <35.020176, 32.603001, 14.674223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124786, 32.407234, 14.765505>,  <35.299137, 32.080956, 14.917642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124786, 32.407234, 14.765505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747586, 0.563442, 0.351637,
		0.501128, -0.131068, -0.855390,
		-0.435874, 0.815693, -0.380341,
		34.994022, 32.651943, 14.651402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942722, 31.651583, 15.408761>,  <35.299137, 32.080956, 14.917642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942722, 31.651583, 15.408761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584606, 31.538378, 15.546373>,  <34.369736, 31.470455, 15.628941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584606, 31.538378, 15.546373>,  <34.942722, 31.651583, 15.408761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584606, 31.538378, 15.546373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344610, 0.049413, 0.937445,
		-0.282308, 0.957842, 0.053290,
		-0.895291, -0.283013, 0.344032,
		34.316017, 31.453474, 15.649583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521442, 32.178585, 15.739353>,  <34.942722, 31.651583, 15.408761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521442, 32.178585, 15.739353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454472, 31.810736, 15.881491>,  <34.414288, 31.590027, 15.966773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454472, 31.810736, 15.881491>,  <34.521442, 32.178585, 15.739353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454472, 31.810736, 15.881491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211057, 0.318641, 0.924079,
		-0.963028, 0.229712, 0.140743,
		-0.167426, -0.919620, 0.355343,
		34.404243, 31.534849, 15.988093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887901, 32.036972, 16.211977>,  <34.521442, 32.178585, 15.739353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887901, 32.036972, 16.211977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168491, 31.794411, 16.361753>,  <34.336845, 31.648872, 16.451620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168491, 31.794411, 16.361753>,  <33.887901, 32.036972, 16.211977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168491, 31.794411, 16.361753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229315, 0.305405, 0.924198,
		-0.674797, -0.734164, 0.075175,
		0.701472, -0.606408, 0.374441,
		34.378933, 31.612488, 16.474087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656036, 31.567581, 16.747406>,  <33.887901, 32.036972, 16.211977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656036, 31.567581, 16.747406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043957, 31.634365, 16.818533>,  <34.276707, 31.674437, 16.861210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043957, 31.634365, 16.818533>,  <33.656036, 31.567581, 16.747406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043957, 31.634365, 16.818533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217083, 0.258396, 0.941332,
		0.111217, -0.951502, 0.286836,
		0.969796, 0.166960, 0.177817,
		34.334896, 31.684454, 16.871878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782726, 31.219915, 17.422272>,  <33.656036, 31.567581, 16.747406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782726, 31.219915, 17.422272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080196, 31.484898, 17.386259>,  <34.258678, 31.643887, 17.364653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080196, 31.484898, 17.386259>,  <33.782726, 31.219915, 17.422272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080196, 31.484898, 17.386259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031137, 0.168841, 0.985151,
		0.667820, -0.729825, 0.146189,
		0.743671, 0.662456, -0.090031,
		34.303299, 31.683634, 17.359249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252823, 31.167959, 18.094700>,  <33.782726, 31.219915, 17.422272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252823, 31.167959, 18.094700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325691, 31.522655, 17.924757>,  <34.369411, 31.735474, 17.822792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325691, 31.522655, 17.924757>,  <34.252823, 31.167959, 18.094700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325691, 31.522655, 17.924757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055328, 0.422158, 0.904832,
		0.981709, -0.188343, 0.027844,
		0.182173, 0.886741, -0.424857,
		34.380344, 31.788677, 17.797300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822495, 31.540890, 18.552929>,  <34.252823, 31.167959, 18.094700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822495, 31.540890, 18.552929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662045, 31.826332, 18.323195>,  <34.565773, 31.997599, 18.185354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662045, 31.826332, 18.323195>,  <34.822495, 31.540890, 18.552929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662045, 31.826332, 18.323195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130482, 0.665107, 0.735260,
		0.906681, 0.219994, -0.359907,
		-0.401129, 0.713608, -0.574334,
		34.541706, 32.040413, 18.150894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261730, 32.166061, 18.695738>,  <34.822495, 31.540890, 18.552929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261730, 32.166061, 18.695738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910370, 32.269997, 18.535286>,  <34.699554, 32.332355, 18.439014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910370, 32.269997, 18.535286>,  <35.261730, 32.166061, 18.695738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910370, 32.269997, 18.535286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079205, 0.748553, 0.658327,
		0.471322, 0.610044, -0.636947,
		-0.878397, 0.259835, -0.401128,
		34.646851, 32.347946, 18.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254356, 32.813900, 18.853977>,  <35.261730, 32.166061, 18.695738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254356, 32.813900, 18.853977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867043, 32.741322, 18.785278>,  <34.634655, 32.697773, 18.744059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867043, 32.741322, 18.785278>,  <35.254356, 32.813900, 18.853977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867043, 32.741322, 18.785278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247574, 0.604476, 0.757176,
		-0.033569, 0.775685, -0.630228,
		-0.968287, -0.181446, -0.171748,
		34.576557, 32.686890, 18.733753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810028, 33.457741, 18.783644>,  <35.254356, 32.813900, 18.853977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810028, 33.457741, 18.783644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554977, 33.164619, 18.878658>,  <34.401947, 32.988747, 18.935667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554977, 33.164619, 18.878658>,  <34.810028, 33.457741, 18.783644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554977, 33.164619, 18.878658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397214, 0.576961, 0.713678,
		-0.660039, 0.360707, -0.658968,
		-0.637628, -0.732807, 0.237539,
		34.363689, 32.944778, 18.949921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275478, 33.975098, 18.945253>,  <34.810028, 33.457741, 18.783644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275478, 33.975098, 18.945253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220158, 33.615021, 19.110430>,  <34.186966, 33.398972, 19.209536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220158, 33.615021, 19.110430>,  <34.275478, 33.975098, 18.945253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220158, 33.615021, 19.110430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385181, 0.433009, 0.814947,
		-0.912419, -0.046349, -0.406625,
		-0.138300, -0.900197, 0.412939,
		34.178669, 33.344963, 19.234312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542843, 34.036034, 19.255663>,  <34.275478, 33.975098, 18.945253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542843, 34.036034, 19.255663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707882, 33.713516, 19.425207>,  <33.806904, 33.520004, 19.526934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707882, 33.713516, 19.425207>,  <33.542843, 34.036034, 19.255663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707882, 33.713516, 19.425207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403164, 0.255618, 0.878703,
		-0.816837, -0.533435, -0.219600,
		0.412597, -0.806292, 0.423860,
		33.831661, 33.471630, 19.552364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928997, 33.783909, 19.686651>,  <33.542843, 34.036034, 19.255663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928997, 33.783909, 19.686651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277084, 33.646805, 19.828209>,  <33.485935, 33.564541, 19.913143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277084, 33.646805, 19.828209>,  <32.928997, 33.783909, 19.686651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277084, 33.646805, 19.828209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322928, 0.145657, 0.935148,
		-0.372083, -0.928061, 0.016065,
		0.870214, -0.342765, 0.353893,
		33.538147, 33.543976, 19.934378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790722, 33.318977, 20.234497>,  <32.928997, 33.783909, 19.686651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790722, 33.318977, 20.234497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165714, 33.455860, 20.259878>,  <33.390709, 33.537991, 20.275106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165714, 33.455860, 20.259878>,  <32.790722, 33.318977, 20.234497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165714, 33.455860, 20.259878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095820, 0.078503, 0.992298,
		0.334587, -0.936341, 0.106385,
		0.937481, 0.342204, 0.063455,
		33.446960, 33.558521, 20.278915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926708, 33.186607, 20.840584>,  <32.790722, 33.318977, 20.234497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926708, 33.186607, 20.840584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259987, 33.403587, 20.797642>,  <33.459953, 33.533775, 20.771877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259987, 33.403587, 20.797642>,  <32.926708, 33.186607, 20.840584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259987, 33.403587, 20.797642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093545, 0.053073, 0.994200,
		0.545001, -0.838410, -0.006523,
		0.833201, 0.542450, -0.107354,
		33.509949, 33.566322, 20.765436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628094, 32.813904, 21.087547>,  <32.926708, 33.186607, 20.840584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628094, 32.813904, 21.087547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647049, 33.211624, 21.125763>,  <33.658424, 33.450256, 21.148691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647049, 33.211624, 21.125763>,  <33.628094, 32.813904, 21.087547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647049, 33.211624, 21.125763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039246, -0.097425, 0.994469,
		0.998105, -0.043380, -0.043640,
		0.047391, 0.994297, 0.095538,
		33.661266, 33.509914, 21.154425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140038, 32.878399, 21.611122>,  <33.628094, 32.813904, 21.087547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140038, 32.878399, 21.611122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951225, 33.230938, 21.603003>,  <33.837936, 33.442463, 21.598131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951225, 33.230938, 21.603003>,  <34.140038, 32.878399, 21.611122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951225, 33.230938, 21.603003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174416, 0.115936, 0.977823,
		0.864155, 0.458024, -0.208447,
		-0.472032, 0.881347, -0.020300,
		33.809616, 33.495342, 21.596912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568657, 33.280556, 22.065571>,  <34.140038, 32.878399, 21.611122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568657, 33.280556, 22.065571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242195, 33.510338, 22.040627>,  <34.046318, 33.648209, 22.025660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242195, 33.510338, 22.040627>,  <34.568657, 33.280556, 22.065571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242195, 33.510338, 22.040627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138523, 0.299286, 0.944055,
		0.560981, 0.761858, -0.323840,
		-0.816157, 0.574456, -0.062359,
		33.997349, 33.682674, 22.021919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823082, 33.875828, 22.151285>,  <34.568657, 33.280556, 22.065571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823082, 33.875828, 22.151285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432358, 33.880196, 22.236824>,  <34.197926, 33.882816, 22.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432358, 33.880196, 22.236824>,  <34.823082, 33.875828, 22.151285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432358, 33.880196, 22.236824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210956, 0.220294, 0.952349,
		-0.036709, 0.975372, -0.217489,
		-0.976806, 0.010921, 0.213848,
		34.139317, 33.883472, 22.300978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799683, 34.498230, 22.407276>,  <34.823082, 33.875828, 22.151285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799683, 34.498230, 22.407276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471546, 34.304516, 22.528934>,  <34.274662, 34.188290, 22.601929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471546, 34.304516, 22.528934>,  <34.799683, 34.498230, 22.407276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471546, 34.304516, 22.528934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212837, 0.235084, 0.948386,
		-0.530786, 0.842738, -0.089777,
		-0.820346, -0.484282, 0.304145,
		34.225441, 34.159233, 22.620178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314598, 34.913761, 22.730780>,  <34.799683, 34.498230, 22.407276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314598, 34.913761, 22.730780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245796, 34.543251, 22.864899>,  <34.204514, 34.320946, 22.945370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245796, 34.543251, 22.864899>,  <34.314598, 34.913761, 22.730780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245796, 34.543251, 22.864899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044604, 0.332696, 0.941979,
		-0.984085, 0.176982, -0.015910,
		-0.172007, -0.926278, 0.335295,
		34.194195, 34.265369, 22.965487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886787, 35.082752, 23.302471>,  <34.314598, 34.913761, 22.730780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886787, 35.082752, 23.302471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970970, 34.696224, 23.361708>,  <34.021481, 34.464306, 23.397249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970970, 34.696224, 23.361708>,  <33.886787, 35.082752, 23.302471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970970, 34.696224, 23.361708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052163, 0.140168, 0.988753,
		-0.976210, -0.215814, -0.020907,
		0.210456, -0.966321, 0.148091,
		34.034107, 34.406326, 23.406136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313889, 34.828808, 23.709732>,  <33.886787, 35.082752, 23.302471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313889, 34.828808, 23.709732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608002, 34.562538, 23.760691>,  <33.784470, 34.402775, 23.791265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608002, 34.562538, 23.760691>,  <33.313889, 34.828808, 23.709732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608002, 34.562538, 23.760691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157441, 0.015068, 0.987414,
		-0.659218, -0.746088, -0.093725,
		0.735285, -0.665677, 0.127398,
		33.828587, 34.362835, 23.798910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109364, 34.415176, 24.329313>,  <33.313889, 34.828808, 23.709732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109364, 34.415176, 24.329313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502159, 34.348633, 24.293505>,  <33.737839, 34.308704, 24.272018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502159, 34.348633, 24.293505>,  <33.109364, 34.415176, 24.329313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502159, 34.348633, 24.293505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109285, 0.113694, 0.987487,
		-0.154101, -0.979488, 0.129827,
		0.981993, -0.166361, -0.089523,
		33.796757, 34.298725, 24.266647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302402, 33.929646, 24.876724>,  <33.109364, 34.415176, 24.329313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302402, 33.929646, 24.876724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639904, 34.124676, 24.786976>,  <33.842407, 34.241695, 24.733128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639904, 34.124676, 24.786976>,  <33.302402, 33.929646, 24.876724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639904, 34.124676, 24.786976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132126, 0.216480, 0.967305,
		0.520207, -0.845816, 0.118236,
		0.843758, 0.487577, -0.224369,
		33.893032, 34.270950, 24.719666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681797, 33.689781, 25.397486>,  <33.302402, 33.929646, 24.876724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681797, 33.689781, 25.397486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938969, 33.960777, 25.254572>,  <34.093273, 34.123375, 25.168823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938969, 33.960777, 25.254572>,  <33.681797, 33.689781, 25.397486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938969, 33.960777, 25.254572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326255, 0.179796, 0.928025,
		0.692963, -0.713222, -0.105437,
		0.642931, 0.677486, -0.357284,
		34.131847, 34.164024, 25.147387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413395, 33.456299, 25.626759>,  <33.681797, 33.689781, 25.397486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413395, 33.456299, 25.626759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364975, 33.846611, 25.553877>,  <34.335922, 34.080799, 25.510147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364975, 33.846611, 25.553877>,  <34.413395, 33.456299, 25.626759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364975, 33.846611, 25.553877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263608, 0.208564, 0.941813,
		0.957005, 0.065975, -0.282470,
		-0.121049, 0.975781, -0.182205,
		34.328659, 34.139347, 25.499216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018307, 33.806316, 25.997412>,  <34.413395, 33.456299, 25.626759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018307, 33.806316, 25.997412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752872, 34.096416, 25.924025>,  <34.593613, 34.270477, 25.879992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752872, 34.096416, 25.924025>,  <35.018307, 33.806316, 25.997412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752872, 34.096416, 25.924025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143676, 0.364235, 0.920157,
		0.734173, 0.584244, -0.345903,
		-0.663587, 0.725253, -0.183470,
		34.553795, 34.313992, 25.868984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359818, 34.476120, 26.116058>,  <35.018307, 33.806316, 25.997412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359818, 34.476120, 26.116058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965378, 34.511631, 26.172247>,  <34.728714, 34.532940, 26.205961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965378, 34.511631, 26.172247>,  <35.359818, 34.476120, 26.116058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965378, 34.511631, 26.172247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163076, 0.354465, 0.920739,
		0.031953, 0.930845, -0.364015,
		-0.986096, 0.088782, 0.140473,
		34.669548, 34.538265, 26.214388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433868, 35.110855, 26.544077>,  <35.359818, 34.476120, 26.116058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433868, 35.110855, 26.544077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059345, 34.978741, 26.591795>,  <34.834629, 34.899471, 26.620426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059345, 34.978741, 26.591795>,  <35.433868, 35.110855, 26.544077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059345, 34.978741, 26.591795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030984, 0.260688, 0.964926,
		-0.349801, 0.907167, -0.233851,
		-0.936311, -0.330286, 0.119297,
		34.778450, 34.879654, 26.627584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166500, 35.449112, 27.090872>,  <35.433868, 35.110855, 26.544077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166500, 35.449112, 27.090872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885952, 35.165016, 27.066715>,  <34.717625, 34.994560, 27.052221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885952, 35.165016, 27.066715>,  <35.166500, 35.449112, 27.090872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885952, 35.165016, 27.066715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186356, 0.100928, 0.977284,
		-0.688008, 0.696690, -0.203145,
		-0.701367, -0.710237, -0.060393,
		34.675541, 34.951946, 27.048597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505054, 35.726635, 27.324308>,  <35.166500, 35.449112, 27.090872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505054, 35.726635, 27.324308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509201, 35.334114, 27.401182>,  <34.511688, 35.098602, 27.447306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509201, 35.334114, 27.401182>,  <34.505054, 35.726635, 27.324308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509201, 35.334114, 27.401182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073669, 0.190923, 0.978837,
		-0.997229, -0.024305, -0.070312,
		0.010366, -0.981304, 0.192184,
		34.512310, 35.039722, 27.458838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978050, 35.643764, 27.837105>,  <34.505054, 35.726635, 27.324308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978050, 35.643764, 27.837105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214836, 35.322231, 27.860569>,  <34.356907, 35.129311, 27.874647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214836, 35.322231, 27.860569>,  <33.978050, 35.643764, 27.837105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214836, 35.322231, 27.860569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067991, 0.122326, 0.990158,
		-0.803094, -0.582146, 0.127066,
		0.591960, -0.803830, 0.058659,
		34.392426, 35.081081, 27.878166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699211, 35.239296, 28.301701>,  <33.978050, 35.643764, 27.837105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699211, 35.239296, 28.301701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073933, 35.100006, 28.288261>,  <34.298767, 35.016434, 28.280197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073933, 35.100006, 28.288261>,  <33.699211, 35.239296, 28.301701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073933, 35.100006, 28.288261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006967, -0.114586, 0.993389,
		-0.349774, -0.930381, -0.109771,
		0.936808, -0.348226, -0.033597,
		34.354977, 34.995537, 28.278183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597927, 34.626698, 28.620611>,  <33.699211, 35.239296, 28.301701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597927, 34.626698, 28.620611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985081, 34.727257, 28.620958>,  <34.217373, 34.787594, 28.621166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985081, 34.727257, 28.620958>,  <33.597927, 34.626698, 28.620611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985081, 34.727257, 28.620958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022732, -0.090947, 0.995596,
		0.250372, -0.963601, -0.093741,
		0.967883, 0.251400, 0.000866,
		34.275444, 34.802677, 28.621218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881744, 34.229694, 29.033518>,  <33.597927, 34.626698, 28.620611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881744, 34.229694, 29.033518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142010, 34.533039, 29.017929>,  <34.298168, 34.715046, 29.008575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142010, 34.533039, 29.017929>,  <33.881744, 34.229694, 29.033518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142010, 34.533039, 29.017929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139695, -0.069094, 0.987781,
		0.746406, -0.648158, -0.150896,
		0.650664, 0.758365, -0.038972,
		34.337208, 34.760548, 29.006237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383659, 34.131744, 29.508900>,  <33.881744, 34.229694, 29.033518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383659, 34.131744, 29.508900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465942, 34.517197, 29.440657>,  <34.515312, 34.748466, 29.399712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465942, 34.517197, 29.440657>,  <34.383659, 34.131744, 29.508900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465942, 34.517197, 29.440657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119253, 0.148352, 0.981718,
		0.971321, -0.222289, -0.084399,
		0.205704, 0.963628, -0.170606,
		34.527653, 34.806286, 29.389475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016914, 34.231659, 29.742699>,  <34.383659, 34.131744, 29.508900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016914, 34.231659, 29.742699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837936, 34.589153, 29.755548>,  <34.730549, 34.803650, 29.763258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837936, 34.589153, 29.755548>,  <35.016914, 34.231659, 29.742699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837936, 34.589153, 29.755548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312702, 0.122701, 0.941893,
		0.837858, 0.431494, -0.334375,
		-0.447449, 0.893732, 0.032123,
		34.703701, 34.857273, 29.765186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348911, 34.587875, 30.203594>,  <35.016914, 34.231659, 29.742699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348911, 34.587875, 30.203594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036724, 34.836784, 30.179472>,  <34.849411, 34.986130, 30.164999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036724, 34.836784, 30.179472>,  <35.348911, 34.587875, 30.203594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036724, 34.836784, 30.179472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015570, 0.077079, 0.996903,
		0.624997, 0.778994, -0.050469,
		-0.780472, 0.622276, -0.060304,
		34.802582, 35.023468, 30.161381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551079, 35.087975, 30.680895>,  <35.348911, 34.587875, 30.203594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551079, 35.087975, 30.680895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159870, 35.146523, 30.621502>,  <34.925144, 35.181652, 30.585867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159870, 35.146523, 30.621502>,  <35.551079, 35.087975, 30.680895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159870, 35.146523, 30.621502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130460, 0.125892, 0.983429,
		0.162638, 0.981187, -0.104029,
		-0.978023, 0.146371, -0.148480,
		34.866463, 35.190434, 30.576958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418449, 35.720234, 31.049152>,  <35.551079, 35.087975, 30.680895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418449, 35.720234, 31.049152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047443, 35.573441, 31.020765>,  <34.824841, 35.485363, 31.003733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047443, 35.573441, 31.020765>,  <35.418449, 35.720234, 31.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047443, 35.573441, 31.020765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155612, 0.206489, 0.965995,
		-0.339851, 0.907020, -0.248629,
		-0.927516, -0.366984, -0.070968,
		34.769188, 35.463345, 30.999475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891594, 36.324753, 31.125675>,  <35.418449, 35.720234, 31.049152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891594, 36.324753, 31.125675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723793, 35.974453, 31.221245>,  <34.623112, 35.764275, 31.278587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723793, 35.974453, 31.221245>,  <34.891594, 36.324753, 31.125675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723793, 35.974453, 31.221245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279682, 0.375095, 0.883788,
		-0.863594, 0.303928, -0.402284,
		-0.419503, -0.875746, 0.238926,
		34.597942, 35.711731, 31.292923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361919, 36.513527, 31.392681>,  <34.891594, 36.324753, 31.125675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361919, 36.513527, 31.392681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327290, 36.136684, 31.522257>,  <34.306511, 35.910580, 31.600002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327290, 36.136684, 31.522257>,  <34.361919, 36.513527, 31.392681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327290, 36.136684, 31.522257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392233, 0.331129, 0.858200,
		-0.915783, -0.052763, -0.398193,
		-0.086572, -0.942109, 0.323938,
		34.301319, 35.854053, 31.619438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628258, 37.057388, 30.988323>,  <34.361919, 36.513527, 31.392681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628258, 37.057388, 30.988323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641586, 37.457043, 30.998325>,  <34.649582, 37.696835, 31.004326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641586, 37.457043, 30.998325>,  <34.628258, 37.057388, 30.988323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641586, 37.457043, 30.998325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271741, 0.033133, -0.961800,
		-0.961794, 0.025251, 0.272609,
		0.033319, 0.999132, 0.025005,
		34.651581, 37.756783, 31.005827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019115, 37.149761, 30.814308>,  <34.628258, 37.057388, 30.988323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019115, 37.149761, 30.814308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233597, 37.483341, 30.762138>,  <34.362286, 37.683491, 30.730837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233597, 37.483341, 30.762138>,  <34.019115, 37.149761, 30.814308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233597, 37.483341, 30.762138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291312, 0.037813, -0.955880,
		-0.792225, 0.550543, 0.263215,
		0.536206, 0.833950, -0.130424,
		34.394459, 37.733524, 30.723011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525497, 37.586102, 30.598419>,  <34.019115, 37.149761, 30.814308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525497, 37.586102, 30.598419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849838, 37.779484, 30.466482>,  <34.044441, 37.895512, 30.387320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849838, 37.779484, 30.466482>,  <33.525497, 37.586102, 30.598419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849838, 37.779484, 30.466482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333218, -0.081960, -0.939280,
		-0.481135, 0.871523, 0.094639,
		0.810848, 0.483456, -0.329841,
		34.093094, 37.924522, 30.367529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280773, 38.111469, 30.193205>,  <33.525497, 37.586102, 30.598419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280773, 38.111469, 30.193205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662876, 38.067974, 30.083183>,  <33.892139, 38.041878, 30.017170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662876, 38.067974, 30.083183>,  <33.280773, 38.111469, 30.193205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662876, 38.067974, 30.083183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277838, -0.011026, -0.960565,
		0.101417, 0.994009, -0.040744,
		0.955259, -0.108738, -0.275055,
		33.949455, 38.035351, 30.000668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334057, 38.502956, 29.630997>,  <33.280773, 38.111469, 30.193205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334057, 38.502956, 29.630997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640976, 38.247643, 29.606188>,  <33.825127, 38.094452, 29.591303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640976, 38.247643, 29.606188>,  <33.334057, 38.502956, 29.630997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640976, 38.247643, 29.606188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321735, -0.299481, -0.898219,
		0.554746, 0.709155, -0.435150,
		0.767296, -0.638287, -0.062024,
		33.871166, 38.056156, 29.587580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644562, 38.593822, 28.900946>,  <33.334057, 38.502956, 29.630997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644562, 38.593822, 28.900946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789474, 38.253819, 29.053905>,  <33.876423, 38.049816, 29.145681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789474, 38.253819, 29.053905>,  <33.644562, 38.593822, 28.900946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789474, 38.253819, 29.053905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039200, -0.423800, -0.904907,
		0.931243, 0.312844, -0.186857,
		0.362285, -0.850013, 0.382397,
		33.898159, 37.998814, 29.168625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256336, 38.457901, 28.505535>,  <33.644562, 38.593822, 28.900946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256336, 38.457901, 28.505535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111935, 38.118851, 28.661077>,  <34.025295, 37.915421, 28.754404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111935, 38.118851, 28.661077>,  <34.256336, 38.457901, 28.505535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111935, 38.118851, 28.661077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127929, -0.368023, -0.920974,
		0.923750, -0.382217, 0.024420,
		-0.360999, -0.847626, 0.388857,
		34.003635, 37.864563, 28.777735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580257, 37.919270, 28.099253>,  <34.256336, 38.457901, 28.505535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580257, 37.919270, 28.099253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270004, 37.736145, 28.273058>,  <34.083851, 37.626270, 28.377340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270004, 37.736145, 28.273058>,  <34.580257, 37.919270, 28.099253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270004, 37.736145, 28.273058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226900, -0.440149, -0.868784,
		0.588986, -0.772451, 0.237519,
		-0.775637, -0.457808, 0.434511,
		34.037312, 37.598804, 28.403412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614769, 37.286068, 27.837910>,  <34.580257, 37.919270, 28.099253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614769, 37.286068, 27.837910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248848, 37.344604, 27.988489>,  <34.029293, 37.379726, 28.078836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248848, 37.344604, 27.988489>,  <34.614769, 37.286068, 27.837910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248848, 37.344604, 27.988489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403212, -0.276773, -0.872248,
		-0.023455, -0.949727, 0.312200,
		-0.914806, 0.146341, 0.376450,
		33.974407, 37.388508, 28.101423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268127, 36.805077, 27.608469>,  <34.614769, 37.286068, 27.837910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268127, 36.805077, 27.608469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958286, 37.035835, 27.712147>,  <33.772381, 37.174290, 27.774353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958286, 37.035835, 27.712147>,  <34.268127, 36.805077, 27.608469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958286, 37.035835, 27.712147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528681, -0.365711, -0.765997,
		-0.347103, -0.730381, 0.588272,
		-0.774607, 0.576888, 0.259199,
		33.725906, 37.208904, 27.789906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617977, 36.411064, 27.585911>,  <34.268127, 36.805077, 27.608469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617977, 36.411064, 27.585911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531097, 36.800900, 27.563976>,  <33.478970, 37.034801, 27.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531097, 36.800900, 27.563976>,  <33.617977, 36.411064, 27.585911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531097, 36.800900, 27.563976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442293, -0.148340, -0.884518,
		-0.870173, -0.167862, 0.463272,
		-0.217198, 0.974586, -0.054837,
		33.465939, 37.093277, 27.547525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864639, 36.415195, 27.363869>,  <33.617977, 36.411064, 27.585911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864639, 36.415195, 27.363869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053158, 36.757519, 27.278576>,  <33.166267, 36.962914, 27.227400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053158, 36.757519, 27.278576>,  <32.864639, 36.415195, 27.363869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053158, 36.757519, 27.278576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285231, -0.080879, -0.955040,
		-0.834582, 0.510924, 0.205987,
		0.471293, 0.855813, -0.213231,
		33.194546, 37.014263, 27.214607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418739, 36.747742, 27.064713>,  <32.864639, 36.415195, 27.363869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418739, 36.747742, 27.064713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762836, 36.926460, 26.966440>,  <32.969296, 37.033691, 26.907476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762836, 36.926460, 26.966440>,  <32.418739, 36.747742, 27.064713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762836, 36.926460, 26.966440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262798, -0.024391, -0.964543,
		-0.436947, 0.894303, 0.096436,
		0.860241, 0.446797, -0.245679,
		33.020908, 37.060501, 26.892736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218250, 37.420395, 26.754429>,  <32.418739, 36.747742, 27.064713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218250, 37.420395, 26.754429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567734, 37.316551, 26.589878>,  <32.777424, 37.254246, 26.491148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567734, 37.316551, 26.589878>,  <32.218250, 37.420395, 26.754429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567734, 37.316551, 26.589878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368422, 0.199057, -0.908098,
		0.317641, 0.944975, 0.078272,
		0.873710, -0.259611, -0.411379,
		32.829845, 37.238667, 26.466465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360649, 37.870548, 26.196287>,  <32.218250, 37.420395, 26.754429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360649, 37.870548, 26.196287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613132, 37.572090, 26.111588>,  <32.764622, 37.393013, 26.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613132, 37.572090, 26.111588>,  <32.360649, 37.870548, 26.196287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613132, 37.572090, 26.111588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224951, 0.085158, -0.970642,
		0.742275, 0.660310, -0.114095,
		0.631209, -0.746149, -0.211748,
		32.802494, 37.348244, 26.048063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512234, 37.937492, 25.494650>,  <32.360649, 37.870548, 26.196287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512234, 37.937492, 25.494650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652950, 37.566513, 25.545380>,  <32.737381, 37.343925, 25.575817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652950, 37.566513, 25.545380>,  <32.512234, 37.937492, 25.494650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652950, 37.566513, 25.545380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011605, -0.139794, -0.990113,
		0.936005, 0.346845, -0.059941,
		0.351795, -0.927446, 0.126823,
		32.758488, 37.288280, 25.583426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097664, 37.889706, 25.051329>,  <32.512234, 37.937492, 25.494650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097664, 37.889706, 25.051329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019482, 37.500927, 25.103651>,  <32.972572, 37.267658, 25.135044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019482, 37.500927, 25.103651>,  <33.097664, 37.889706, 25.051329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019482, 37.500927, 25.103651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159728, -0.100050, -0.982078,
		0.967617, -0.212849, -0.135692,
		-0.195458, -0.971949, 0.130808,
		32.960846, 37.209343, 25.142893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415844, 37.482918, 24.545118>,  <33.097664, 37.889706, 25.051329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415844, 37.482918, 24.545118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166607, 37.190418, 24.656141>,  <33.017063, 37.014919, 24.722755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166607, 37.190418, 24.656141>,  <33.415844, 37.482918, 24.545118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166607, 37.190418, 24.656141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104346, -0.273975, -0.956059,
		0.775157, -0.624675, 0.094409,
		-0.623092, -0.731245, 0.277556,
		32.979679, 36.971046, 24.739408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701694, 36.831745, 24.365944>,  <33.415844, 37.482918, 24.545118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701694, 36.831745, 24.365944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315002, 36.740772, 24.412775>,  <33.082989, 36.686188, 24.440874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315002, 36.740772, 24.412775>,  <33.701694, 36.831745, 24.365944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315002, 36.740772, 24.412775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032090, -0.346258, -0.937590,
		0.253779, -0.910154, 0.327440,
		-0.966730, -0.227433, 0.117080,
		33.024982, 36.672543, 24.447899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582344, 36.199017, 24.007238>,  <33.701694, 36.831745, 24.365944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582344, 36.199017, 24.007238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217213, 36.358654, 24.041788>,  <32.998135, 36.454437, 24.062517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217213, 36.358654, 24.041788>,  <33.582344, 36.199017, 24.007238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217213, 36.358654, 24.041788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297261, -0.504463, -0.810650,
		-0.279954, -0.765663, 0.579126,
		-0.912832, 0.399097, 0.086375,
		32.943363, 36.478382, 24.067701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112125, 35.686897, 23.838776>,  <33.582344, 36.199017, 24.007238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112125, 35.686897, 23.838776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931499, 36.038631, 23.778297>,  <32.823124, 36.249672, 23.742010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931499, 36.038631, 23.778297>,  <33.112125, 35.686897, 23.838776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931499, 36.038631, 23.778297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171653, -0.251910, -0.952406,
		-0.875570, -0.404123, 0.264694,
		-0.451568, 0.879333, -0.151196,
		32.796028, 36.302433, 23.732939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494343, 35.500412, 23.525553>,  <33.112125, 35.686897, 23.838776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494343, 35.500412, 23.525553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562527, 35.881046, 23.423237>,  <32.603436, 36.109428, 23.361847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562527, 35.881046, 23.423237>,  <32.494343, 35.500412, 23.525553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562527, 35.881046, 23.423237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304095, -0.196117, -0.932236,
		-0.937267, 0.236691, 0.255943,
		0.170457, 0.951586, -0.255791,
		32.613663, 36.166523, 23.346500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938206, 35.751614, 23.082281>,  <32.494343, 35.500412, 23.525553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938206, 35.751614, 23.082281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225388, 36.020260, 23.009096>,  <32.397697, 36.181446, 22.965185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225388, 36.020260, 23.009096>,  <31.938206, 35.751614, 23.082281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225388, 36.020260, 23.009096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137339, -0.121004, -0.983105,
		-0.682408, 0.730952, 0.005363,
		0.717954, 0.671616, -0.182962,
		32.440773, 36.221745, 22.954208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691864, 36.158585, 22.605978>,  <31.938206, 35.751614, 23.082281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691864, 36.158585, 22.605978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081711, 36.238625, 22.565807>,  <32.315617, 36.286648, 22.541704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081711, 36.238625, 22.565807>,  <31.691864, 36.158585, 22.605978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081711, 36.238625, 22.565807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090159, -0.059801, -0.994130,
		-0.204933, 0.977948, -0.040242,
		0.974615, 0.200102, -0.100426,
		32.374096, 36.298656, 22.535679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741983, 36.518478, 22.025486>,  <31.691864, 36.158585, 22.605978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741983, 36.518478, 22.025486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121811, 36.394970, 22.047329>,  <32.349709, 36.320866, 22.060434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121811, 36.394970, 22.047329>,  <31.741983, 36.518478, 22.025486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121811, 36.394970, 22.047329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017309, -0.225504, -0.974088,
		0.313087, 0.924017, -0.219476,
		0.949567, -0.308774, 0.054608,
		32.406681, 36.302338, 22.063711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040237, 36.801144, 21.418140>,  <31.741983, 36.518478, 22.025486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040237, 36.801144, 21.418140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297592, 36.516483, 21.531006>,  <32.452003, 36.345688, 21.598724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297592, 36.516483, 21.531006>,  <32.040237, 36.801144, 21.418140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297592, 36.516483, 21.531006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231600, -0.170368, -0.957777,
		0.729672, 0.681566, 0.055206,
		0.643382, -0.711648, 0.282163,
		32.490608, 36.302990, 21.615654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715084, 36.911842, 21.100267>,  <32.040237, 36.801144, 21.418140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715084, 36.911842, 21.100267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718609, 36.524189, 21.198818>,  <32.720726, 36.291595, 21.257948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718609, 36.524189, 21.198818>,  <32.715084, 36.911842, 21.100267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718609, 36.524189, 21.198818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268551, -0.235041, -0.934150,
		0.963225, 0.074399, 0.258190,
		0.008815, -0.969134, 0.246378,
		32.721252, 36.233448, 21.272732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340984, 36.692001, 21.039427>,  <32.715084, 36.911842, 21.100267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340984, 36.692001, 21.039427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126324, 36.354748, 21.025917>,  <32.997528, 36.152397, 21.017811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126324, 36.354748, 21.025917>,  <33.340984, 36.692001, 21.039427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126324, 36.354748, 21.025917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338135, -0.178203, -0.924072,
		0.773093, -0.507322, 0.380724,
		-0.536648, -0.843130, -0.033776,
		32.965328, 36.101810, 21.015785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799561, 36.149544, 20.837303>,  <33.340984, 36.692001, 21.039427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799561, 36.149544, 20.837303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433544, 36.013859, 20.750004>,  <33.213936, 35.932449, 20.697624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433544, 36.013859, 20.750004>,  <33.799561, 36.149544, 20.837303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433544, 36.013859, 20.750004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361297, -0.448703, -0.817392,
		0.179341, -0.826801, 0.533139,
		-0.915041, -0.339213, -0.218250,
		33.159031, 35.912094, 20.684528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948269, 35.485481, 20.576010>,  <33.799561, 36.149544, 20.837303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948269, 35.485481, 20.576010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568375, 35.552044, 20.469942>,  <33.340439, 35.591980, 20.406301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568375, 35.552044, 20.469942>,  <33.948269, 35.485481, 20.576010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568375, 35.552044, 20.469942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176272, -0.415745, -0.892236,
		-0.258713, -0.894129, 0.365515,
		-0.949735, 0.166403, -0.265169,
		33.283455, 35.601967, 20.390392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691166, 34.873566, 20.147169>,  <33.948269, 35.485481, 20.576010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691166, 34.873566, 20.147169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483963, 35.195572, 20.031504>,  <33.359642, 35.388775, 19.962105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483963, 35.195572, 20.031504>,  <33.691166, 34.873566, 20.147169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483963, 35.195572, 20.031504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230581, -0.194124, -0.953493,
		-0.823713, -0.560590, -0.085064,
		-0.518005, 0.805018, -0.289164,
		33.328560, 35.437077, 19.944754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331203, 34.628326, 19.591696>,  <33.691166, 34.873566, 20.147169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331203, 34.628326, 19.591696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338940, 35.025093, 19.541538>,  <33.343582, 35.263153, 19.511444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338940, 35.025093, 19.541538>,  <33.331203, 34.628326, 19.591696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338940, 35.025093, 19.541538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296287, -0.125467, -0.946822,
		-0.954903, -0.018844, -0.296319,
		0.019336, 0.991919, -0.125392,
		33.344742, 35.322670, 19.503922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865948, 34.748371, 19.024837>,  <33.331203, 34.628326, 19.591696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865948, 34.748371, 19.024837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142559, 35.035679, 19.055510>,  <33.308525, 35.208061, 19.073914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142559, 35.035679, 19.055510>,  <32.865948, 34.748371, 19.024837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142559, 35.035679, 19.055510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183315, -0.071824, -0.980427,
		-0.698700, 0.692051, -0.181338,
		0.691530, 0.718267, 0.076680,
		33.350018, 35.251160, 19.078514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055851, 34.851139, 18.324129>,  <32.865948, 34.748371, 19.024837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055851, 34.851139, 18.324129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323467, 35.105228, 18.478462>,  <33.484039, 35.257683, 18.571062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323467, 35.105228, 18.478462>,  <33.055851, 34.851139, 18.324129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323467, 35.105228, 18.478462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510319, -0.015216, -0.859851,
		-0.540329, 0.772176, -0.334348,
		0.669044, 0.635226, 0.385834,
		33.524181, 35.295795, 18.594212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076736, 35.426453, 17.942087>,  <33.055851, 34.851139, 18.324129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076736, 35.426453, 17.942087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429333, 35.437763, 18.130627>,  <33.640892, 35.444550, 18.243750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429333, 35.437763, 18.130627>,  <33.076736, 35.426453, 17.942087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429333, 35.437763, 18.130627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469605, 0.051899, -0.881350,
		-0.049383, 0.998252, 0.032471,
		0.881494, 0.028275, 0.471347,
		33.693783, 35.446247, 18.272032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409542, 36.040497, 17.776535>,  <33.076736, 35.426453, 17.942087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409542, 36.040497, 17.776535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694691, 35.787945, 17.898630>,  <33.865780, 35.636414, 17.971888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694691, 35.787945, 17.898630>,  <33.409542, 36.040497, 17.776535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694691, 35.787945, 17.898630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429658, 0.049220, -0.901649,
		0.554261, 0.773909, 0.306366,
		0.712874, -0.631381, 0.305235,
		33.908554, 35.598530, 17.990200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126015, 36.308235, 17.626009>,  <33.409542, 36.040497, 17.776535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126015, 36.308235, 17.626009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205364, 35.918400, 17.667616>,  <34.252972, 35.684498, 17.692581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205364, 35.918400, 17.667616>,  <34.126015, 36.308235, 17.626009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205364, 35.918400, 17.667616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540206, 0.020162, -0.841291,
		0.817819, 0.223078, 0.530480,
		0.198369, -0.974592, 0.104019,
		34.264874, 35.626022, 17.698822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871895, 36.222267, 17.607216>,  <34.126015, 36.308235, 17.626009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871895, 36.222267, 17.607216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687668, 35.880192, 17.512108>,  <34.577133, 35.674946, 17.455044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687668, 35.880192, 17.512108>,  <34.871895, 36.222267, 17.607216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687668, 35.880192, 17.512108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353857, 0.068766, -0.932768,
		0.814041, -0.513738, 0.270943,
		-0.460567, -0.855187, -0.237769,
		34.549500, 35.623634, 17.440777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980179, 36.663734, 16.970310>,  <34.871895, 36.222267, 17.607216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980179, 36.663734, 16.970310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279400, 36.923874, 16.917454>,  <35.458935, 37.079956, 16.885740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279400, 36.923874, 16.917454>,  <34.980179, 36.663734, 16.970310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279400, 36.923874, 16.917454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361111, 0.565956, 0.741143,
		0.556775, -0.506708, 0.658216,
		0.748064, 0.650338, -0.132133,
		35.503815, 37.118977, 16.877811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430756, 36.677921, 17.640022>,  <34.980179, 36.663734, 16.970310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430756, 36.677921, 17.640022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437347, 36.999390, 17.402084>,  <35.441303, 37.192272, 17.259321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437347, 36.999390, 17.402084>,  <35.430756, 36.677921, 17.640022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437347, 36.999390, 17.402084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146295, 0.590460, 0.793697,
		0.989104, 0.073942, 0.127304,
		0.016480, 0.803673, -0.594843,
		35.442291, 37.240490, 17.223631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964668, 37.069626, 17.841690>,  <35.430756, 36.677921, 17.640022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964668, 37.069626, 17.841690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719303, 37.313053, 17.640348>,  <35.572083, 37.459110, 17.519543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719303, 37.313053, 17.640348>,  <35.964668, 37.069626, 17.841690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719303, 37.313053, 17.640348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002122, 0.636078, 0.771622,
		0.789758, 0.474393, -0.388889,
		-0.613415, 0.608569, -0.503355,
		35.535278, 37.495625, 17.489342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250797, 37.753006, 18.008972>,  <35.964668, 37.069626, 17.841690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250797, 37.753006, 18.008972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878632, 37.801178, 17.870512>,  <35.655331, 37.830082, 17.787436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878632, 37.801178, 17.870512>,  <36.250797, 37.753006, 18.008972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878632, 37.801178, 17.870512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189763, 0.649716, 0.736111,
		0.313550, 0.750576, -0.581654,
		-0.930418, 0.120431, -0.346150,
		35.599506, 37.837307, 17.766666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179996, 38.391163, 17.987120>,  <36.250797, 37.753006, 18.008972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179996, 38.391163, 17.987120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808544, 38.246170, 18.018730>,  <35.585670, 38.159176, 18.037697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808544, 38.246170, 18.018730>,  <36.179996, 38.391163, 17.987120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808544, 38.246170, 18.018730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208443, 0.685987, 0.697118,
		-0.306903, 0.630895, -0.712588,
		-0.928635, -0.362482, 0.079026,
		35.529953, 38.137424, 18.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809277, 38.885151, 17.986517>,  <36.179996, 38.391163, 17.987120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809277, 38.885151, 17.986517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589283, 38.603069, 18.165497>,  <35.457287, 38.433819, 18.272884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589283, 38.603069, 18.165497>,  <35.809277, 38.885151, 17.986517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589283, 38.603069, 18.165497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123533, 0.598549, 0.791504,
		-0.825991, 0.380037, -0.416306,
		-0.549980, -0.705203, 0.447449,
		35.424290, 38.391510, 18.299732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520031, 39.243832, 18.542494>,  <35.809277, 38.885151, 17.986517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520031, 39.243832, 18.542494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388241, 38.876865, 18.631748>,  <35.309166, 38.656685, 18.685301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388241, 38.876865, 18.631748>,  <35.520031, 39.243832, 18.542494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388241, 38.876865, 18.631748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367846, 0.342388, 0.864558,
		-0.869559, 0.202775, -0.450278,
		-0.329480, -0.917416, 0.223137,
		35.289398, 38.601639, 18.698689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772408, 39.381882, 18.767948>,  <35.520031, 39.243832, 18.542494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772408, 39.381882, 18.767948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884918, 39.036247, 18.934919>,  <34.952423, 38.828869, 19.035101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884918, 39.036247, 18.934919>,  <34.772408, 39.381882, 18.767948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884918, 39.036247, 18.934919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269567, 0.346328, 0.898549,
		-0.920988, -0.365261, -0.135516,
		0.281272, -0.864084, 0.417426,
		34.969299, 38.777023, 19.060146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190834, 39.133682, 19.256023>,  <34.772408, 39.381882, 18.767948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190834, 39.133682, 19.256023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524174, 38.945328, 19.371809>,  <34.724178, 38.832314, 19.441280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524174, 38.945328, 19.371809>,  <34.190834, 39.133682, 19.256023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524174, 38.945328, 19.371809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263497, 0.121920, 0.956925,
		-0.485894, -0.873729, -0.022475,
		0.833352, -0.470886, 0.289465,
		34.774181, 38.804062, 19.458649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014194, 38.625954, 19.670671>,  <34.190834, 39.133682, 19.256023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014194, 38.625954, 19.670671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402481, 38.647312, 19.764357>,  <34.635452, 38.660126, 19.820568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402481, 38.647312, 19.764357>,  <34.014194, 38.625954, 19.670671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402481, 38.647312, 19.764357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233307, -0.022699, 0.972138,
		0.057229, -0.998315, -0.009576,
		0.970718, 0.053401, 0.234213,
		34.693695, 38.663330, 19.834621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224251, 38.031212, 20.037649>,  <34.014194, 38.625954, 19.670671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224251, 38.031212, 20.037649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471077, 38.330666, 20.134630>,  <34.619171, 38.510338, 20.192818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471077, 38.330666, 20.134630>,  <34.224251, 38.031212, 20.037649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471077, 38.330666, 20.134630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215623, -0.135455, 0.967036,
		0.756796, -0.649000, 0.077839,
		0.617063, 0.748633, 0.242451,
		34.656197, 38.555256, 20.207365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340199, 37.856602, 20.730505>,  <34.224251, 38.031212, 20.037649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340199, 37.856602, 20.730505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465721, 38.235554, 20.705250>,  <34.541035, 38.462925, 20.690098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465721, 38.235554, 20.705250>,  <34.340199, 37.856602, 20.730505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465721, 38.235554, 20.705250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188560, 0.127353, 0.973769,
		0.930575, -0.293672, 0.218603,
		0.313809, 0.947385, -0.063137,
		34.559864, 38.519768, 20.686308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897854, 37.901718, 21.150339>,  <34.340199, 37.856602, 20.730505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897854, 37.901718, 21.150339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760593, 38.275581, 21.113115>,  <34.678238, 38.499901, 21.090780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760593, 38.275581, 21.113115>,  <34.897854, 37.901718, 21.150339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760593, 38.275581, 21.113115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026199, 0.108561, 0.993744,
		0.938916, 0.338563, -0.061740,
		-0.343147, 0.934660, -0.093060,
		34.657650, 38.555981, 21.085197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362400, 38.354572, 21.510229>,  <34.897854, 37.901718, 21.150339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362400, 38.354572, 21.510229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041981, 38.589912, 21.466108>,  <34.849728, 38.731117, 21.439636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041981, 38.589912, 21.466108>,  <35.362400, 38.354572, 21.510229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041981, 38.589912, 21.466108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024139, 0.152365, 0.988029,
		0.598111, 0.794123, -0.107849,
		-0.801050, 0.588348, -0.110300,
		34.801666, 38.766418, 21.433018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421295, 38.864243, 22.013702>,  <35.362400, 38.354572, 21.510229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421295, 38.864243, 22.013702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038399, 38.874691, 21.898458>,  <34.808662, 38.880962, 21.829311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038399, 38.874691, 21.898458>,  <35.421295, 38.864243, 22.013702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038399, 38.874691, 21.898458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276249, 0.213116, 0.937159,
		0.085885, 0.976677, -0.196786,
		-0.957241, 0.026126, -0.288110,
		34.751228, 38.882530, 21.812025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214607, 39.590588, 22.222025>,  <35.421295, 38.864243, 22.013702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214607, 39.590588, 22.222025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915119, 39.329948, 22.173298>,  <34.735424, 39.173565, 22.144062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915119, 39.329948, 22.173298>,  <35.214607, 39.590588, 22.222025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915119, 39.329948, 22.173298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272010, 0.134419, 0.952860,
		-0.604503, 0.746564, -0.277882,
		-0.748724, -0.651593, -0.121816,
		34.690502, 39.134472, 22.136753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530018, 39.939693, 22.384926>,  <35.214607, 39.590588, 22.222025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530018, 39.939693, 22.384926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449539, 39.550175, 22.427334>,  <34.401253, 39.316463, 22.452778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449539, 39.550175, 22.427334>,  <34.530018, 39.939693, 22.384926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449539, 39.550175, 22.427334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278270, 0.160595, 0.946982,
		-0.939194, 0.161027, -0.303289,
		-0.201197, -0.973796, 0.106021,
		34.389179, 39.258038, 22.459141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956429, 39.908131, 22.792492>,  <34.530018, 39.939693, 22.384926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956429, 39.908131, 22.792492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130978, 39.551155, 22.838335>,  <34.235706, 39.336971, 22.865841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130978, 39.551155, 22.838335>,  <33.956429, 39.908131, 22.792492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130978, 39.551155, 22.838335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256250, -0.001165, 0.966610,
		-0.862505, -0.451171, -0.229195,
		0.436373, -0.892437, 0.114608,
		34.261890, 39.283424, 22.872717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615135, 39.529202, 23.371519>,  <33.956429, 39.908131, 22.792492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615135, 39.529202, 23.371519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947861, 39.308483, 23.347506>,  <34.147495, 39.176052, 23.333097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947861, 39.308483, 23.347506>,  <33.615135, 39.529202, 23.371519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947861, 39.308483, 23.347506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045849, -0.176094, 0.983305,
		-0.553160, -0.815173, -0.171776,
		0.831812, -0.551801, -0.060033,
		34.197403, 39.142944, 23.329496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513248, 38.843327, 23.695370>,  <33.615135, 39.529202, 23.371519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513248, 38.843327, 23.695370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897316, 38.953751, 23.678051>,  <34.127754, 39.020004, 23.667660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897316, 38.953751, 23.678051>,  <33.513248, 38.843327, 23.695370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897316, 38.953751, 23.678051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134158, -0.319497, 0.938042,
		0.245122, -0.906484, -0.343805,
		0.960165, 0.276059, -0.043296,
		34.185364, 39.036568, 23.665062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965015, 38.263397, 23.806602>,  <33.513248, 38.843327, 23.695370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965015, 38.263397, 23.806602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139057, 38.605797, 23.918282>,  <34.243481, 38.811237, 23.985289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139057, 38.605797, 23.918282>,  <33.965015, 38.263397, 23.806602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139057, 38.605797, 23.918282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071028, -0.341756, 0.937101,
		0.897574, -0.387907, -0.209500,
		0.435106, 0.855997, 0.279198,
		34.269588, 38.862595, 24.002041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427887, 38.055145, 24.362257>,  <33.965015, 38.263397, 23.806602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427887, 38.055145, 24.362257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431068, 38.453415, 24.399275>,  <34.432980, 38.692379, 24.421486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431068, 38.453415, 24.399275>,  <34.427887, 38.055145, 24.362257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431068, 38.453415, 24.399275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216465, -0.092068, 0.971940,
		0.976258, 0.012298, -0.216262,
		0.007958, 0.995677, 0.092544,
		34.433456, 38.752117, 24.427038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117126, 38.152142, 24.806505>,  <34.427887, 38.055145, 24.362257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117126, 38.152142, 24.806505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900856, 38.488026, 24.826744>,  <34.771091, 38.689556, 24.838888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900856, 38.488026, 24.826744>,  <35.117126, 38.152142, 24.806505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900856, 38.488026, 24.826744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124109, 0.020133, 0.992064,
		0.832024, 0.542668, -0.115101,
		-0.540679, 0.839706, 0.050599,
		34.738651, 38.739937, 24.841925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489281, 38.591717, 25.250599>,  <35.117126, 38.152142, 24.806505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489281, 38.591717, 25.250599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114151, 38.730011, 25.262995>,  <34.889072, 38.812988, 25.270432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114151, 38.730011, 25.262995>,  <35.489281, 38.591717, 25.250599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114151, 38.730011, 25.262995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065355, 0.088190, 0.993957,
		0.340909, 0.934180, -0.105302,
		-0.937822, 0.345731, 0.030989,
		34.832806, 38.833729, 25.272291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525330, 39.296036, 25.566553>,  <35.489281, 38.591717, 25.250599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525330, 39.296036, 25.566553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138706, 39.197796, 25.596069>,  <34.906731, 39.138851, 25.613779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138706, 39.197796, 25.596069>,  <35.525330, 39.296036, 25.566553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138706, 39.197796, 25.596069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016551, 0.346879, 0.937764,
		-0.255913, 0.905182, -0.339343,
		-0.966558, -0.245602, 0.073790,
		34.848740, 39.124115, 25.618206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254986, 39.813457, 25.817228>,  <35.525330, 39.296036, 25.566553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254986, 39.813457, 25.817228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956135, 39.561165, 25.901110>,  <34.776825, 39.409790, 25.951439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956135, 39.561165, 25.901110>,  <35.254986, 39.813457, 25.817228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956135, 39.561165, 25.901110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033165, 0.279732, 0.959505,
		-0.663850, 0.723830, -0.188078,
		-0.747130, -0.630730, 0.209706,
		34.731995, 39.371944, 25.964022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719456, 40.195515, 26.171465>,  <35.254986, 39.813457, 25.817228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719456, 40.195515, 26.171465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694328, 39.808964, 26.271196>,  <34.679253, 39.577034, 26.331036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694328, 39.808964, 26.271196>,  <34.719456, 40.195515, 26.171465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694328, 39.808964, 26.271196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018170, 0.248674, 0.968417,
		-0.997859, 0.065366, 0.001938,
		-0.062820, -0.966379, 0.249329,
		34.675484, 39.519051, 26.345995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178730, 40.224369, 26.519821>,  <34.719456, 40.195515, 26.171465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178730, 40.224369, 26.519821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397770, 39.906540, 26.624739>,  <34.529194, 39.715843, 26.687689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397770, 39.906540, 26.624739>,  <34.178730, 40.224369, 26.519821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397770, 39.906540, 26.624739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121339, 0.234748, 0.964453,
		-0.827897, -0.559958, 0.032135,
		0.547597, -0.794569, 0.262292,
		34.562050, 39.668171, 26.703426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876957, 40.023319, 27.164478>,  <34.178730, 40.224369, 26.519821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876957, 40.023319, 27.164478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237949, 39.851425, 27.152807>,  <34.454544, 39.748287, 27.145805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237949, 39.851425, 27.152807>,  <33.876957, 40.023319, 27.164478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237949, 39.851425, 27.152807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113793, 0.172544, 0.978407,
		-0.415423, -0.886315, 0.204619,
		0.902483, -0.429737, -0.029178,
		34.508694, 39.722504, 27.144054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896618, 39.609230, 27.809359>,  <33.876957, 40.023319, 27.164478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896618, 39.609230, 27.809359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262241, 39.625347, 27.647932>,  <34.481617, 39.635017, 27.551075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262241, 39.625347, 27.647932>,  <33.896618, 39.609230, 27.809359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262241, 39.625347, 27.647932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399552, 0.081368, 0.913092,
		0.069615, -0.995870, 0.058282,
		0.914063, 0.040279, -0.403567,
		34.536461, 39.637436, 27.526861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266972, 39.310810, 28.290752>,  <33.896618, 39.609230, 27.809359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266972, 39.310810, 28.290752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542072, 39.516376, 28.085659>,  <34.707130, 39.639717, 27.962603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542072, 39.516376, 28.085659>,  <34.266972, 39.310810, 28.290752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542072, 39.516376, 28.085659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491430, 0.190269, 0.849879,
		0.534322, -0.836474, -0.121697,
		0.687747, 0.513915, -0.512734,
		34.748398, 39.670551, 27.931839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826210, 38.945644, 28.442509>,  <34.266972, 39.310810, 28.290752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826210, 38.945644, 28.442509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960281, 39.301014, 28.317059>,  <35.040726, 39.514236, 28.241789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960281, 39.301014, 28.317059>,  <34.826210, 38.945644, 28.442509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960281, 39.301014, 28.317059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742649, -0.044294, 0.668214,
		0.579765, -0.456885, -0.674633,
		0.335179, 0.888423, -0.313625,
		35.060837, 39.567539, 28.222971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556644, 38.954525, 28.577518>,  <34.826210, 38.945644, 28.442509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556644, 38.954525, 28.577518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506599, 39.349369, 28.537615>,  <35.476574, 39.586277, 28.513672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506599, 39.349369, 28.537615>,  <35.556644, 38.954525, 28.577518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506599, 39.349369, 28.537615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633875, 0.156881, 0.757358,
		0.763249, 0.031522, -0.645335,
		-0.125114, 0.987114, -0.099759,
		35.469067, 39.645504, 28.507687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184055, 39.240559, 28.428762>,  <35.556644, 38.954525, 28.577518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184055, 39.240559, 28.428762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987717, 39.551403, 28.586330>,  <35.869915, 39.737907, 28.680872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987717, 39.551403, 28.586330>,  <36.184055, 39.240559, 28.428762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987717, 39.551403, 28.586330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680127, 0.059193, 0.730701,
		0.544517, 0.626577, -0.557587,
		-0.490846, 0.777109, 0.393920,
		35.840462, 39.784534, 28.704506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692154, 39.635101, 28.690857>,  <36.184055, 39.240559, 28.428762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692154, 39.635101, 28.690857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379868, 39.817749, 28.861494>,  <36.192497, 39.927338, 28.963877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379868, 39.817749, 28.861494>,  <36.692154, 39.635101, 28.690857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379868, 39.817749, 28.861494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548618, 0.174030, 0.817760,
		0.299167, 0.872474, -0.386379,
		-0.780716, 0.456622, 0.426591,
		36.145653, 39.954735, 28.989471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907009, 40.339886, 28.968390>,  <36.692154, 39.635101, 28.690857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907009, 40.339886, 28.968390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587666, 40.240421, 29.187767>,  <36.396061, 40.180744, 29.319393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587666, 40.240421, 29.187767>,  <36.907009, 40.339886, 28.968390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587666, 40.240421, 29.187767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506881, 0.214205, 0.834978,
		-0.325104, 0.944608, -0.044972,
		-0.798360, -0.248659, 0.548443,
		36.348156, 40.165825, 29.352301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764729, 40.945412, 29.434395>,  <36.907009, 40.339886, 28.968390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764729, 40.945412, 29.434395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629097, 40.596638, 29.575680>,  <36.547718, 40.387375, 29.660450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629097, 40.596638, 29.575680>,  <36.764729, 40.945412, 29.434395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629097, 40.596638, 29.575680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410429, 0.200731, 0.889525,
		-0.846507, 0.446587, 0.289803,
		-0.339078, -0.871933, 0.353212,
		36.527374, 40.335056, 29.681643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549572, 41.110947, 30.139214>,  <36.764729, 40.945412, 29.434395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549572, 41.110947, 30.139214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559364, 40.711510, 30.120405>,  <36.565239, 40.471848, 30.109121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559364, 40.711510, 30.120405>,  <36.549572, 41.110947, 30.139214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559364, 40.711510, 30.120405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281083, -0.038261, 0.958920,
		-0.959371, -0.036690, 0.279751,
		0.024479, -0.998594, -0.047019,
		36.566708, 40.411930, 30.106298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251545, 40.896828, 30.782398>,  <36.549572, 41.110947, 30.139214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251545, 40.896828, 30.782398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478275, 40.598713, 30.641968>,  <36.614315, 40.419846, 30.557709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478275, 40.598713, 30.641968>,  <36.251545, 40.896828, 30.782398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478275, 40.598713, 30.641968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365665, -0.154268, 0.917873,
		-0.738238, -0.648652, 0.185083,
		0.566827, -0.745287, -0.351076,
		36.648323, 40.375126, 30.536646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196625, 40.431007, 31.298807>,  <36.251545, 40.896828, 30.782398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196625, 40.431007, 31.298807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520611, 40.341141, 31.082113>,  <36.715004, 40.287220, 30.952097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520611, 40.341141, 31.082113>,  <36.196625, 40.431007, 31.298807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520611, 40.341141, 31.082113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487825, -0.254645, 0.834975,
		-0.325542, -0.940574, -0.096656,
		0.809968, -0.224669, -0.541733,
		36.763603, 40.273739, 30.919594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540241, 39.710407, 31.454140>,  <36.196625, 40.431007, 31.298807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540241, 39.710407, 31.454140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824001, 39.950462, 31.306313>,  <36.994259, 40.094494, 31.217615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824001, 39.950462, 31.306313>,  <36.540241, 39.710407, 31.454140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824001, 39.950462, 31.306313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631239, -0.307767, 0.711910,
		0.313503, -0.738318, -0.597162,
		0.709403, 0.600137, -0.369570,
		37.036823, 40.130505, 31.195442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139984, 39.493618, 31.871634>,  <36.540241, 39.710407, 31.454140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139984, 39.493618, 31.871634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281696, 39.812092, 31.675440>,  <37.366726, 40.003178, 31.557724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281696, 39.812092, 31.675440>,  <37.139984, 39.493618, 31.871634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281696, 39.812092, 31.675440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783127, 0.034047, 0.620929,
		0.511073, -0.604096, -0.611451,
		0.354283, 0.796184, -0.490484,
		37.387981, 40.050945, 31.528294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927483, 39.421772, 31.733589>,  <37.139984, 39.493618, 31.871634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927483, 39.421772, 31.733589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864841, 39.816578, 31.719294>,  <37.827259, 40.053463, 31.710716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864841, 39.816578, 31.719294>,  <37.927483, 39.421772, 31.733589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864841, 39.816578, 31.719294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845870, 0.152710, 0.511061,
		0.509883, 0.049801, -0.858801,
		-0.156599, 0.987015, -0.035739,
		37.817863, 40.112682, 31.708572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957745, 39.221809, 32.501335>,  <37.927483, 39.421772, 31.733589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957745, 39.221809, 32.501335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025524, 38.847958, 32.376266>,  <38.066193, 38.623646, 32.301228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025524, 38.847958, 32.376266>,  <37.957745, 39.221809, 32.501335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025524, 38.847958, 32.376266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834066, -0.033003, 0.550676,
		-0.524995, -0.354098, 0.773947,
		0.169451, -0.934626, -0.312667,
		38.076359, 38.567570, 32.282467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917782, 38.681393, 33.028187>,  <37.957745, 39.221809, 32.501335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917782, 38.681393, 33.028187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200455, 38.562408, 32.771400>,  <38.370060, 38.491020, 32.617329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200455, 38.562408, 32.771400>,  <37.917782, 38.681393, 33.028187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200455, 38.562408, 32.771400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700409, 0.165699, 0.694242,
		-0.100135, -0.940246, 0.325439,
		0.706683, -0.297458, -0.641964,
		38.412460, 38.473171, 32.578812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287006, 37.997581, 33.235905>,  <37.917782, 38.681393, 33.028187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287006, 37.997581, 33.235905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480801, 38.284256, 33.035248>,  <38.597076, 38.456261, 32.914856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480801, 38.284256, 33.035248>,  <38.287006, 37.997581, 33.235905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480801, 38.284256, 33.035248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697906, 0.029086, 0.715599,
		0.527447, -0.696793, -0.486085,
		0.484486, 0.716682, -0.501637,
		38.626148, 38.499260, 32.884758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592079, 37.449238, 32.916473>,  <38.287006, 37.997581, 33.235905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592079, 37.449238, 32.916473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671318, 37.175938, 32.635353>,  <38.718861, 37.011955, 32.466682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671318, 37.175938, 32.635353>,  <38.592079, 37.449238, 32.916473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671318, 37.175938, 32.635353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061629, -0.724270, 0.686757,
		-0.978244, -0.092729, -0.185581,
		0.198093, -0.683253, -0.702798,
		38.730747, 36.970963, 32.424515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212078, 36.946159, 33.142616>,  <38.592079, 37.449238, 32.916473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212078, 36.946159, 33.142616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459236, 36.780056, 32.875553>,  <38.607533, 36.680393, 32.715317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459236, 36.780056, 32.875553>,  <38.212078, 36.946159, 33.142616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459236, 36.780056, 32.875553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019019, -0.841012, 0.540683,
		-0.786029, -0.346785, -0.511761,
		0.617897, -0.415259, -0.667655,
		38.644604, 36.655479, 32.675259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975861, 36.309547, 32.802032>,  <38.212078, 36.946159, 33.142616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975861, 36.309547, 32.802032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373493, 36.296959, 32.843609>,  <38.612072, 36.289406, 32.868557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373493, 36.296959, 32.843609>,  <37.975861, 36.309547, 32.802032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373493, 36.296959, 32.843609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071182, -0.911655, 0.404746,
		0.082024, -0.409750, -0.908502,
		0.994085, -0.031470, 0.103944,
		38.671719, 36.287518, 32.874794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364262, 35.741287, 32.568550>,  <37.975861, 36.309547, 32.802032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364262, 35.741287, 32.568550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579266, 35.851971, 32.887177>,  <38.708267, 35.918381, 33.078354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579266, 35.851971, 32.887177>,  <38.364262, 35.741287, 32.568550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579266, 35.851971, 32.887177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242770, -0.853856, 0.460427,
		0.807557, -0.440866, -0.391777,
		0.537507, 0.276709, 0.796566,
		38.740517, 35.934982, 33.126148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818981, 35.191063, 32.798256>,  <38.364262, 35.741287, 32.568550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818981, 35.191063, 32.798256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725056, 35.430206, 33.104832>,  <38.668701, 35.573692, 33.288776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725056, 35.430206, 33.104832>,  <38.818981, 35.191063, 32.798256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725056, 35.430206, 33.104832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453026, -0.764927, 0.457880,
		0.860018, -0.239702, 0.450457,
		-0.234812, 0.597854, 0.766442,
		38.654613, 35.609562, 33.334763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884418, 34.773109, 33.321945>,  <38.818981, 35.191063, 32.798256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884418, 34.773109, 33.321945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669922, 35.058559, 33.502247>,  <38.541222, 35.229832, 33.610428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669922, 35.058559, 33.502247>,  <38.884418, 34.773109, 33.321945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669922, 35.058559, 33.502247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551629, -0.700502, 0.452773,
		0.638865, -0.005852, 0.769297,
		-0.536244, 0.713627, 0.450754,
		38.509048, 35.272648, 33.637474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668530, 34.431812, 33.929230>,  <38.884418, 34.773109, 33.321945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668530, 34.431812, 33.929230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446686, 34.763504, 33.901558>,  <38.313580, 34.962521, 33.884953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446686, 34.763504, 33.901558>,  <38.668530, 34.431812, 33.929230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446686, 34.763504, 33.901558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647210, -0.377621, 0.662210,
		0.523000, 0.412042, 0.746118,
		-0.554608, 0.829231, -0.069182,
		38.280304, 35.012272, 33.880802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444374, 34.612892, 34.575710>,  <38.668530, 34.431812, 33.929230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444374, 34.612892, 34.575710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174358, 34.757698, 34.318569>,  <38.012348, 34.844582, 34.164284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174358, 34.757698, 34.318569>,  <38.444374, 34.612892, 34.575710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174358, 34.757698, 34.318569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728514, -0.189414, 0.658324,
		0.116554, 0.912727, 0.391592,
		-0.675043, 0.362011, -0.642857,
		37.971844, 34.866302, 34.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761364, 34.268730, 34.920826>,  <38.444374, 34.612892, 34.575710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761364, 34.268730, 34.920826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637688, 34.529541, 34.643913>,  <37.563480, 34.686028, 34.477764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637688, 34.529541, 34.643913>,  <37.761364, 34.268730, 34.920826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637688, 34.529541, 34.643913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931998, -0.062967, 0.356952,
		0.189153, 0.755574, 0.627160,
		-0.309195, 0.652030, -0.692283,
		37.544930, 34.725151, 34.436230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532383, 34.930241, 35.309052>,  <37.761364, 34.268730, 34.920826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532383, 34.930241, 35.309052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359974, 34.784317, 34.978928>,  <37.256527, 34.696762, 34.780853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359974, 34.784317, 34.978928>,  <37.532383, 34.930241, 35.309052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359974, 34.784317, 34.978928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840191, -0.171308, 0.514521,
		-0.329085, 0.915186, -0.232674,
		-0.431024, -0.364812, -0.825306,
		37.230667, 34.674873, 34.731335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894562, 35.292648, 35.096535>,  <37.532383, 34.930241, 35.309052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894562, 35.292648, 35.096535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846062, 34.934666, 34.924793>,  <36.816959, 34.719875, 34.821751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846062, 34.934666, 34.924793>,  <36.894562, 35.292648, 35.096535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846062, 34.934666, 34.924793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843737, -0.134923, 0.519523,
		-0.522882, 0.425254, -0.738752,
		-0.121254, -0.894961, -0.429351,
		36.809685, 34.666176, 34.795986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168400, 35.256733, 34.899158>,  <36.894562, 35.292648, 35.096535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168400, 35.256733, 34.899158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331249, 34.893734, 34.940529>,  <36.428959, 34.675934, 34.965351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331249, 34.893734, 34.940529>,  <36.168400, 35.256733, 34.899158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331249, 34.893734, 34.940529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824987, -0.316770, 0.468030,
		-0.391974, -0.275873, -0.877639,
		0.407127, -0.907497, 0.103426,
		36.453388, 34.621487, 34.971558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934387, 34.630184, 34.533218>,  <36.168400, 35.256733, 34.899158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934387, 34.630184, 34.533218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897884, 34.237720, 34.465107>,  <35.875984, 34.002243, 34.424240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897884, 34.237720, 34.465107>,  <35.934387, 34.630184, 34.533218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897884, 34.237720, 34.465107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786344, -0.033920, 0.616857,
		-0.611012, 0.190193, -0.768434,
		-0.091256, -0.981160, -0.170283,
		35.870506, 33.943371, 34.414021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218300, 34.469128, 34.338017>,  <35.934387, 34.630184, 34.533218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218300, 34.469128, 34.338017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449398, 34.197315, 34.518879>,  <35.588058, 34.034229, 34.627396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449398, 34.197315, 34.518879>,  <35.218300, 34.469128, 34.338017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449398, 34.197315, 34.518879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667186, -0.074057, 0.741200,
		-0.470184, -0.729899, -0.496160,
		0.577745, -0.679532, 0.452158,
		35.622723, 33.993458, 34.654526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819965, 33.911560, 34.453667>,  <35.218300, 34.469128, 34.338017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819965, 33.911560, 34.453667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120811, 33.901432, 34.717083>,  <35.301319, 33.895355, 34.875134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120811, 33.901432, 34.717083>,  <34.819965, 33.911560, 34.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120811, 33.901432, 34.717083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658787, -0.056035, 0.750239,
		0.017905, -0.998108, -0.058825,
		0.752116, -0.025320, 0.658544,
		35.346447, 33.893837, 34.914646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820869, 33.281479, 34.871216>,  <34.819965, 33.911560, 34.453667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820869, 33.281479, 34.871216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017391, 33.569893, 35.066654>,  <35.135303, 33.742943, 35.183918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017391, 33.569893, 35.066654>,  <34.820869, 33.281479, 34.871216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017391, 33.569893, 35.066654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650082, -0.069778, 0.756653,
		0.579669, -0.689374, 0.434451,
		0.491302, 0.721037, 0.488598,
		35.164783, 33.786205, 35.213234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990913, 33.051842, 35.512962>,  <34.820869, 33.281479, 34.871216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990913, 33.051842, 35.512962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964447, 33.448189, 35.559959>,  <34.948566, 33.685997, 35.588158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964447, 33.448189, 35.559959>,  <34.990913, 33.051842, 35.512962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964447, 33.448189, 35.559959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667531, -0.131479, 0.732881,
		0.741636, -0.029935, 0.670134,
		-0.066170, 0.990867, 0.117493,
		34.944595, 33.745449, 35.595207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065647, 33.260391, 36.246155>,  <34.990913, 33.051842, 35.512962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065647, 33.260391, 36.246155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889137, 33.579922, 36.082619>,  <34.783230, 33.771641, 35.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889137, 33.579922, 36.082619>,  <35.065647, 33.260391, 36.246155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889137, 33.579922, 36.082619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794526, -0.136013, 0.591802,
		0.417140, 0.585981, 0.694709,
		-0.441274, 0.798828, -0.408841,
		34.756756, 33.819569, 35.959965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988510, 33.945190, 36.469135>,  <35.065647, 33.260391, 36.246155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988510, 33.945190, 36.469135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663372, 33.749336, 36.595337>,  <34.468288, 33.631824, 36.671059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663372, 33.749336, 36.595337>,  <34.988510, 33.945190, 36.469135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663372, 33.749336, 36.595337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557370, -0.811146, 0.177147,
		0.169181, 0.319845, 0.932243,
		-0.812845, -0.489634, 0.315502,
		34.419518, 33.602448, 36.689987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292072, 34.203236, 37.116001>,  <34.988510, 33.945190, 36.469135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292072, 34.203236, 37.116001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385242, 34.190128, 37.504776>,  <35.441147, 34.182266, 37.738041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385242, 34.190128, 37.504776>,  <35.292072, 34.203236, 37.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385242, 34.190128, 37.504776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547456, -0.821610, -0.158897,
		0.803764, 0.569107, -0.173438,
		0.232928, -0.032765, 0.971942,
		35.455120, 34.180298, 37.796360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067947, 33.981178, 37.120327>,  <35.292072, 34.203236, 37.116001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067947, 33.981178, 37.120327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844910, 33.862030, 37.430260>,  <35.711086, 33.790543, 37.616219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844910, 33.862030, 37.430260>,  <36.067947, 33.981178, 37.120327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844910, 33.862030, 37.430260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328935, -0.936279, -0.123223,
		0.762159, 0.186159, 0.620048,
		-0.557598, -0.297871, 0.774827,
		35.677631, 33.772667, 37.662708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538460, 33.857903, 37.660816>,  <36.067947, 33.981178, 37.120327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538460, 33.857903, 37.660816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200344, 33.647408, 37.697807>,  <35.997475, 33.521111, 37.720001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200344, 33.647408, 37.697807>,  <36.538460, 33.857903, 37.660816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200344, 33.647408, 37.697807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529282, -0.848384, 0.010203,
		0.073090, 0.057573, 0.995662,
		-0.845292, -0.526241, 0.092480,
		35.946758, 33.489536, 37.725552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661602, 34.453705, 37.961220>,  <36.538460, 33.857903, 37.660816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661602, 34.453705, 37.961220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594810, 34.278244, 38.314423>,  <36.554737, 34.172966, 38.526344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594810, 34.278244, 38.314423>,  <36.661602, 34.453705, 37.961220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594810, 34.278244, 38.314423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510804, 0.727533, 0.458012,
		-0.843325, 0.527522, 0.102583,
		-0.166979, -0.438652, 0.883007,
		36.544716, 34.146648, 38.579327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434269, 34.993275, 38.509247>,  <36.661602, 34.453705, 37.961220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434269, 34.993275, 38.509247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563831, 34.682610, 38.725349>,  <36.641567, 34.496208, 38.855011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563831, 34.682610, 38.725349>,  <36.434269, 34.993275, 38.509247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563831, 34.682610, 38.725349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628916, 0.603362, 0.490326,
		-0.706789, 0.180956, 0.683890,
		0.323905, -0.776666, 0.540255,
		36.661003, 34.449612, 38.887424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420475, 35.810917, 38.617264>,  <36.434269, 34.993275, 38.509247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420475, 35.810917, 38.617264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547348, 35.580746, 38.315727>,  <36.623474, 35.442642, 38.134808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547348, 35.580746, 38.315727>,  <36.420475, 35.810917, 38.617264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547348, 35.580746, 38.315727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880862, 0.115764, -0.458999,
		0.351390, 0.809615, -0.470157,
		0.317186, -0.575431, -0.753838,
		36.642502, 35.408115, 38.089577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003048, 36.365986, 38.810188>,  <36.420475, 35.810917, 38.617264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003048, 36.365986, 38.810188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718784, 36.560814, 39.013256>,  <35.548225, 36.677711, 39.135098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718784, 36.560814, 39.013256>,  <36.003048, 36.365986, 38.810188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718784, 36.560814, 39.013256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197043, -0.554921, 0.808231,
		0.675379, 0.674410, 0.298387,
		-0.710660, 0.487067, 0.507670,
		35.505585, 36.706932, 39.165558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183960, 36.696121, 39.562908>,  <36.003048, 36.365986, 38.810188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183960, 36.696121, 39.562908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797604, 36.595737, 39.537357>,  <35.565792, 36.535507, 39.522026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797604, 36.595737, 39.537357>,  <36.183960, 36.696121, 39.562908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797604, 36.595737, 39.537357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135300, -0.699375, 0.701832,
		-0.220804, 0.669249, 0.709473,
		-0.965888, -0.250959, -0.063876,
		35.507835, 36.520451, 39.518196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844395, 36.812199, 40.227188>,  <36.183960, 36.696121, 39.562908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844395, 36.812199, 40.227188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687160, 36.521732, 40.001564>,  <35.592819, 36.347454, 39.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687160, 36.521732, 40.001564>,  <35.844395, 36.812199, 40.227188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687160, 36.521732, 40.001564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211330, -0.668371, 0.713177,
		-0.894886, 0.161138, 0.416189,
		-0.393088, -0.726165, -0.564062,
		35.569233, 36.303883, 39.832344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283978, 36.276325, 40.653744>,  <35.844395, 36.812199, 40.227188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283978, 36.276325, 40.653744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496952, 36.114143, 40.356525>,  <35.624737, 36.016834, 40.178192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496952, 36.114143, 40.356525>,  <35.283978, 36.276325, 40.653744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496952, 36.114143, 40.356525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289450, -0.737695, 0.609939,
		-0.795446, -0.539827, -0.275413,
		0.532432, -0.405455, -0.743049,
		35.656681, 35.992508, 40.133610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016445, 35.514355, 40.541817>,  <35.283978, 36.276325, 40.653744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016445, 35.514355, 40.541817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394711, 35.639050, 40.504864>,  <35.621670, 35.713867, 40.482693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394711, 35.639050, 40.504864>,  <35.016445, 35.514355, 40.541817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394711, 35.639050, 40.504864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240745, -0.480377, 0.843374,
		0.218533, -0.819791, -0.529326,
		0.945667, 0.311737, -0.092382,
		35.678410, 35.732571, 40.477150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435642, 34.902916, 40.658012>,  <35.016445, 35.514355, 40.541817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435642, 34.902916, 40.658012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659729, 35.224026, 40.739704>,  <35.794182, 35.416691, 40.788719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659729, 35.224026, 40.739704>,  <35.435642, 34.902916, 40.658012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659729, 35.224026, 40.739704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322496, -0.438473, 0.838891,
		0.762992, -0.404095, -0.504531,
		0.560214, 0.802776, 0.204233,
		35.827793, 35.464859, 40.800976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118599, 34.742344, 40.834808>,  <35.435642, 34.902916, 40.658012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118599, 34.742344, 40.834808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016914, 35.087219, 41.010078>,  <35.955902, 35.294144, 41.115242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016914, 35.087219, 41.010078>,  <36.118599, 34.742344, 40.834808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016914, 35.087219, 41.010078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386742, -0.324640, 0.863157,
		0.886457, 0.388887, -0.250918,
		-0.254213, 0.862193, 0.438178,
		35.940651, 35.345879, 41.141533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696606, 35.033604, 41.320553>,  <36.118599, 34.742344, 40.834808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696606, 35.033604, 41.320553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348812, 35.175709, 41.457836>,  <36.140137, 35.260971, 41.540207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348812, 35.175709, 41.457836>,  <36.696606, 35.033604, 41.320553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348812, 35.175709, 41.457836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312252, -0.143093, 0.939161,
		0.382759, 0.923750, 0.013486,
		-0.869479, 0.355261, 0.343213,
		36.087967, 35.282288, 41.560799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264423, 34.669350, 41.427399>,  <36.696606, 35.033604, 41.320553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264423, 34.669350, 41.427399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316380, 35.044235, 41.297935>,  <37.347553, 35.269169, 41.220257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316380, 35.044235, 41.297935>,  <37.264423, 34.669350, 41.427399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316380, 35.044235, 41.297935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441233, -0.346956, -0.827608,
		-0.887942, -0.035308, -0.458598,
		0.129892, 0.937217, -0.323656,
		37.355347, 35.325401, 41.200840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922115, 34.773308, 40.692635>,  <37.264423, 34.669350, 41.427399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922115, 34.773308, 40.692635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254578, 34.990753, 40.739391>,  <37.454056, 35.121220, 40.767445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254578, 34.990753, 40.739391>,  <36.922115, 34.773308, 40.692635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254578, 34.990753, 40.739391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371924, -0.387258, -0.843626,
		-0.413339, 0.744659, -0.524054,
		0.831158, 0.543612, 0.116888,
		37.503925, 35.153835, 40.774456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975964, 35.200142, 40.233356>,  <36.922115, 34.773308, 40.692635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975964, 35.200142, 40.233356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348560, 35.138367, 40.365097>,  <37.572117, 35.101303, 40.444141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348560, 35.138367, 40.365097>,  <36.975964, 35.200142, 40.233356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348560, 35.138367, 40.365097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279083, -0.277317, -0.919352,
		0.233319, 0.948285, -0.215217,
		0.931491, -0.154439, 0.329354,
		37.628006, 35.092033, 40.463902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376900, 35.518608, 39.755627>,  <36.975964, 35.200142, 40.233356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376900, 35.518608, 39.755627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611816, 35.247807, 39.933052>,  <37.752766, 35.085323, 40.039509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611816, 35.247807, 39.933052>,  <37.376900, 35.518608, 39.755627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611816, 35.247807, 39.933052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397595, -0.236035, -0.886682,
		0.704987, 0.697100, 0.130553,
		0.587291, -0.677007, 0.443565,
		37.788002, 35.044704, 40.066120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594658, 35.668636, 39.117214>,  <37.376900, 35.518608, 39.755627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594658, 35.668636, 39.117214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924187, 35.554836, 39.313332>,  <38.121902, 35.486557, 39.431004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924187, 35.554836, 39.313332>,  <37.594658, 35.668636, 39.117214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924187, 35.554836, 39.313332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531428, 0.086642, -0.842661,
		0.197254, 0.954754, 0.222566,
		0.823817, -0.284496, 0.490292,
		38.171333, 35.469486, 39.460419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250984, 36.153561, 39.210327>,  <37.594658, 35.668636, 39.117214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250984, 36.153561, 39.210327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387280, 35.777786, 39.195583>,  <38.469055, 35.552322, 39.186737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387280, 35.777786, 39.195583>,  <38.250984, 36.153561, 39.210327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387280, 35.777786, 39.195583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497163, 0.213323, -0.841025,
		0.797952, 0.268242, 0.539740,
		0.340737, -0.939436, -0.036862,
		38.489502, 35.495956, 39.184525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083179, 36.086044, 39.211243>,  <38.250984, 36.153561, 39.210327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083179, 36.086044, 39.211243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871670, 35.828762, 38.989727>,  <38.744762, 35.674393, 38.856815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871670, 35.828762, 38.989727>,  <39.083179, 36.086044, 39.211243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871670, 35.828762, 38.989727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545716, 0.242091, -0.802238,
		0.650072, -0.726415, 0.222997,
		-0.528772, -0.643205, -0.553793,
		38.713039, 35.635799, 38.823589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495430, 35.463711, 39.089443>,  <39.083179, 36.086044, 39.211243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495430, 35.463711, 39.089443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395061, 35.090031, 38.988003>,  <39.334839, 34.865822, 38.927139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395061, 35.090031, 38.988003>,  <39.495430, 35.463711, 39.089443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395061, 35.090031, 38.988003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711994, -0.355606, 0.605483,
		-0.655822, -0.028630, 0.754373,
		-0.250924, -0.934197, -0.253599,
		39.319786, 34.809772, 38.911922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068771, 35.936333, 38.821800>,  <39.495430, 35.463711, 39.089443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068771, 35.936333, 38.821800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954556, 35.633537, 38.586708>,  <39.886028, 35.451859, 38.445652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954556, 35.633537, 38.586708>,  <40.068771, 35.936333, 38.821800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954556, 35.633537, 38.586708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923921, -0.054489, -0.378685,
		0.254637, -0.651147, 0.714960,
		-0.285537, -0.756993, -0.587733,
		39.868893, 35.406441, 38.410389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631458, 35.359303, 38.838753>,  <40.068771, 35.936333, 38.821800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631458, 35.359303, 38.838753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489677, 35.348339, 38.464886>,  <40.404610, 35.341763, 38.240566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489677, 35.348339, 38.464886>,  <40.631458, 35.359303, 38.838753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489677, 35.348339, 38.464886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904733, -0.262614, -0.335399,
		-0.236264, -0.964512, 0.117884,
		-0.354455, -0.027411, -0.934671,
		40.383343, 35.340115, 38.184483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878120, 34.726601, 38.535099>,  <40.631458, 35.359303, 38.838753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878120, 34.726601, 38.535099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815948, 34.994278, 38.244438>,  <40.778645, 35.154884, 38.070042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815948, 34.994278, 38.244438>,  <40.878120, 34.726601, 38.535099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815948, 34.994278, 38.244438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904177, -0.199901, -0.377497,
		-0.397878, -0.715691, -0.574003,
		-0.155427, 0.669197, -0.726648,
		40.769321, 35.195038, 38.026443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812336, 34.387325, 37.890942>,  <40.878120, 34.726601, 38.535099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812336, 34.387325, 37.890942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012783, 34.733467, 37.893665>,  <41.133053, 34.941151, 37.895298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012783, 34.733467, 37.893665>,  <40.812336, 34.387325, 37.890942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012783, 34.733467, 37.893665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845440, -0.487876, -0.217275,
		-0.184698, 0.114636, -0.976087,
		0.501117, 0.865353, 0.006808,
		41.163116, 34.993073, 37.895706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304287, 34.611256, 37.326332>,  <40.812336, 34.387325, 37.890942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304287, 34.611256, 37.326332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429474, 34.809235, 37.650574>,  <41.504585, 34.928020, 37.845119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.429474, 34.809235, 37.650574>,  <41.304287, 34.611256, 37.326332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429474, 34.809235, 37.650574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938673, -0.291248, -0.184576,
		0.144733, 0.818660, -0.555741,
		0.312964, 0.494944, 0.810607,
		41.523361, 34.957718, 37.893757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805286, 35.021965, 37.128899>,  <41.304287, 34.611256, 37.326332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805286, 35.021965, 37.128899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849926, 34.975101, 37.523628>,  <41.876709, 34.946983, 37.760468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849926, 34.975101, 37.523628>,  <41.805286, 35.021965, 37.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849926, 34.975101, 37.523628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982931, -0.133139, -0.126966,
		0.146261, 0.984148, 0.100303,
		0.111599, -0.117161, 0.986823,
		41.883408, 34.939953, 37.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207085, 35.526535, 37.455486>,  <41.805286, 35.021965, 37.128899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207085, 35.526535, 37.455486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276688, 35.208950, 37.688499>,  <42.318451, 35.018398, 37.828308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276688, 35.208950, 37.688499>,  <42.207085, 35.526535, 37.455486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276688, 35.208950, 37.688499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980867, 0.087299, -0.174006,
		0.087299, 0.601669, 0.793960,
		0.174006, -0.793960, 0.582537,
		42.328888, 34.970760, 37.863262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567047, 35.564575, 38.254246>,  <42.207085, 35.526535, 37.455486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567047, 35.564575, 38.254246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631748, 35.250557, 38.015064>,  <42.670570, 35.062145, 37.871555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631748, 35.250557, 38.015064>,  <42.567047, 35.564575, 38.254246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631748, 35.250557, 38.015064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920822, 0.337958, -0.194604,
		0.354854, -0.519128, 0.777551,
		0.161755, -0.785042, -0.597950,
		42.680275, 35.015045, 37.835678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185581, 35.176395, 38.548603>,  <42.567047, 35.564575, 38.254246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185581, 35.176395, 38.548603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084679, 35.230461, 38.165333>,  <43.024136, 35.262901, 37.935371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084679, 35.230461, 38.165333>,  <43.185581, 35.176395, 38.548603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084679, 35.230461, 38.165333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797599, 0.589710, -0.126796,
		0.547905, -0.796223, -0.256569,
		-0.252259, 0.135167, -0.958173,
		43.009003, 35.271011, 37.877880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788872, 35.237160, 38.198929>,  <43.185581, 35.176395, 38.548603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788872, 35.237160, 38.198929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511574, 35.378750, 37.947815>,  <43.345196, 35.463703, 37.797146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511574, 35.378750, 37.947815>,  <43.788872, 35.237160, 38.198929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511574, 35.378750, 37.947815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690432, 0.575995, -0.437645,
		0.206684, -0.736837, -0.643703,
		-0.693242, 0.353979, -0.627785,
		43.303600, 35.484943, 37.759480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947086, 35.136734, 37.445522>,  <43.788872, 35.237160, 38.198929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947086, 35.136734, 37.445522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745747, 35.463634, 37.557770>,  <43.624943, 35.659775, 37.625118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745747, 35.463634, 37.557770>,  <43.947086, 35.136734, 37.445522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745747, 35.463634, 37.557770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655711, 0.572767, -0.491915,
		-0.562744, -0.063602, -0.824181,
		-0.503350, 0.817247, 0.280617,
		43.594742, 35.708809, 37.641956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577705, 34.523640, 37.119587>,  <43.947086, 35.136734, 37.445522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577705, 34.523640, 37.119587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968929, 34.602127, 37.147552>,  <44.203663, 34.649220, 37.164333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968929, 34.602127, 37.147552>,  <43.577705, 34.523640, 37.119587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968929, 34.602127, 37.147552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205264, -0.965015, -0.163135,
		0.035461, 0.173907, -0.984123,
		0.978064, 0.196221, 0.069917,
		44.262348, 34.660992, 37.168530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041145, 34.141201, 36.596054>,  <43.577705, 34.523640, 37.119587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041145, 34.141201, 36.596054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313175, 34.203484, 36.882622>,  <44.476395, 34.240852, 37.054562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313175, 34.203484, 36.882622>,  <44.041145, 34.141201, 36.596054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313175, 34.203484, 36.882622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353288, -0.925848, -0.134142,
		0.642406, 0.344328, -0.684655,
		0.680075, 0.155707, 0.716417,
		44.517197, 34.250195, 37.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544140, 33.958263, 36.234756>,  <44.041145, 34.141201, 36.596054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544140, 33.958263, 36.234756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581581, 33.939865, 36.632576>,  <44.604046, 33.928825, 36.871265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581581, 33.939865, 36.632576>,  <44.544140, 33.958263, 36.234756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581581, 33.939865, 36.632576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243471, -0.967545, -0.067662,
		0.965381, 0.248477, -0.079369,
		0.093605, -0.045996, 0.994546,
		44.609661, 33.926067, 36.930939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229828, 34.337727, 36.169865>,  <44.544140, 33.958263, 36.234756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229828, 34.337727, 36.169865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087418, 34.502281, 35.834244>,  <45.001972, 34.601013, 35.632870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087418, 34.502281, 35.834244>,  <45.229828, 34.337727, 36.169865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087418, 34.502281, 35.834244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934215, 0.177953, -0.309150,
		0.022131, -0.893920, -0.447680,
		-0.356022, 0.411387, -0.839052,
		44.980610, 34.625698, 35.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503651, 34.028919, 35.520748>,  <45.229828, 34.337727, 36.169865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503651, 34.028919, 35.520748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394756, 34.411201, 35.475983>,  <45.329422, 34.640572, 35.449123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394756, 34.411201, 35.475983>,  <45.503651, 34.028919, 35.520748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394756, 34.411201, 35.475983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899206, 0.211274, -0.383135,
		-0.342519, -0.204932, -0.916888,
		-0.272231, 0.955702, -0.111911,
		45.313087, 34.697910, 35.442410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719631, 34.320347, 34.824295>,  <45.503651, 34.028919, 35.520748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719631, 34.320347, 34.824295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693558, 34.628746, 35.077694>,  <45.677914, 34.813786, 35.229733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693558, 34.628746, 35.077694>,  <45.719631, 34.320347, 34.824295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693558, 34.628746, 35.077694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928456, 0.279502, -0.244640,
		-0.365679, 0.572224, -0.734056,
		-0.065181, 0.770998, 0.633493,
		45.674004, 34.860046, 35.267742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185322, 34.964615, 34.602985>,  <45.719631, 34.320347, 34.824295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185322, 34.964615, 34.602985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117069, 34.938175, 34.996231>,  <46.076118, 34.922310, 35.232178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117069, 34.938175, 34.996231>,  <46.185322, 34.964615, 34.602985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117069, 34.938175, 34.996231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949215, 0.256641, 0.182005,
		-0.264339, 0.964244, 0.018953,
		-0.170633, -0.066102, 0.983115,
		46.065880, 34.918346, 35.291164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.745033, 34.833591, 34.905754>,  <46.185322, 34.964615, 34.602985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.745033, 34.833591, 34.905754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579220, 34.890045, 35.265362>,  <46.479733, 34.923920, 35.481129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579220, 34.890045, 35.265362>,  <46.745033, 34.833591, 34.905754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579220, 34.890045, 35.265362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906787, 0.147420, 0.394975,
		-0.076788, 0.978952, -0.189092,
		-0.414537, 0.141137, 0.899021,
		46.454857, 34.932384, 35.535069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353737, 34.675125, 35.186760>,  <46.745033, 34.833591, 34.905754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353737, 34.675125, 35.186760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603241, 34.973198, 35.092426>,  <47.752945, 35.152042, 35.035824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603241, 34.973198, 35.092426>,  <47.353737, 34.675125, 35.186760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603241, 34.973198, 35.092426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779712, 0.572216, -0.254201,
		-0.054477, 0.342446, 0.937957,
		0.623763, 0.745185, -0.235836,
		47.790371, 35.196754, 35.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.136719, 35.908028, 23.109049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185410, 35.511677, 23.132200>,  <39.214622, 35.273869, 23.146091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185410, 35.511677, 23.132200>,  <39.136719, 35.908028, 23.109049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185410, 35.511677, 23.132200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042497, 0.063462, 0.997079,
		-0.991654, -0.118908, 0.049834,
		0.121724, -0.990875, 0.057879,
		39.221928, 35.214413, 23.149565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630390, 35.680367, 23.513741>,  <39.136719, 35.908028, 23.109049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630390, 35.680367, 23.513741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918610, 35.403072, 23.519949>,  <39.091541, 35.236698, 23.523674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.918610, 35.403072, 23.519949>,  <38.630390, 35.680367, 23.513741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918610, 35.403072, 23.519949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048293, 0.072500, 0.996199,
		-0.691723, -0.717057, 0.085718,
		0.720546, -0.693233, 0.015521,
		39.134773, 35.195103, 23.524605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471676, 35.237179, 24.030317>,  <38.630390, 35.680367, 23.513741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471676, 35.237179, 24.030317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865837, 35.195347, 23.976593>,  <39.102333, 35.170246, 23.944359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.865837, 35.195347, 23.976593>,  <38.471676, 35.237179, 24.030317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865837, 35.195347, 23.976593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140974, 0.059148, 0.988245,
		-0.095406, -0.992756, 0.073027,
		0.985405, -0.104579, -0.134309,
		39.161457, 35.163975, 23.936300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727715, 34.602184, 24.401705>,  <38.471676, 35.237179, 24.030317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727715, 34.602184, 24.401705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044994, 34.839951, 24.348772>,  <39.235363, 34.982609, 24.317013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044994, 34.839951, 24.348772>,  <38.727715, 34.602184, 24.401705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044994, 34.839951, 24.348772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195468, -0.042709, 0.979780,
		0.576743, -0.803024, -0.150066,
		0.793196, 0.594414, -0.132334,
		39.282951, 35.018276, 24.309072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128548, 34.388447, 24.880714>,  <38.727715, 34.602184, 24.401705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128548, 34.388447, 24.880714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287922, 34.744896, 24.793869>,  <39.383549, 34.958767, 24.741762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287922, 34.744896, 24.793869>,  <39.128548, 34.388447, 24.880714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287922, 34.744896, 24.793869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215386, 0.139190, 0.966558,
		0.891546, -0.431879, -0.136477,
		0.398440, 0.891127, -0.217115,
		39.407455, 35.012234, 24.728735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742462, 34.288631, 25.097006>,  <39.128548, 34.388447, 24.880714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742462, 34.288631, 25.097006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.686340, 34.684666, 25.099604>,  <39.652668, 34.922287, 25.101162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.686340, 34.684666, 25.099604>,  <39.742462, 34.288631, 25.097006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686340, 34.684666, 25.099604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279377, 0.033295, 0.959604,
		0.949876, 0.136450, -0.281279,
		-0.140303, 0.990087, 0.006495,
		39.644249, 34.981693, 25.101553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251156, 34.678600, 25.531082>,  <39.742462, 34.288631, 25.097006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251156, 34.678600, 25.531082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988037, 34.978798, 25.505581>,  <39.830166, 35.158916, 25.490280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988037, 34.978798, 25.505581>,  <40.251156, 34.678600, 25.531082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988037, 34.978798, 25.505581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159036, 0.221127, 0.962190,
		0.736214, 0.622787, -0.264812,
		-0.657797, 0.750493, -0.063751,
		39.790699, 35.203945, 25.486456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641888, 35.233784, 25.742830>,  <40.251156, 34.678600, 25.531082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641888, 35.233784, 25.742830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255722, 35.320015, 25.801498>,  <40.024025, 35.371754, 25.836699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255722, 35.320015, 25.801498>,  <40.641888, 35.233784, 25.742830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255722, 35.320015, 25.801498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216311, 0.348116, 0.912154,
		0.145581, 0.912328, -0.382705,
		-0.965410, 0.215575, 0.146668,
		39.966099, 35.384689, 25.845499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602196, 35.954403, 26.045160>,  <40.641888, 35.233784, 25.742830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602196, 35.954403, 26.045160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264877, 35.762005, 26.141077>,  <40.062489, 35.646564, 26.198627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264877, 35.762005, 26.141077>,  <40.602196, 35.954403, 26.045160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264877, 35.762005, 26.141077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086123, 0.319459, 0.943678,
		-0.530507, 0.816450, -0.227973,
		-0.843294, -0.480994, 0.239791,
		40.011890, 35.617706, 26.213015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219364, 36.358017, 26.343416>,  <40.602196, 35.954403, 26.045160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219364, 36.358017, 26.343416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038544, 36.034119, 26.493059>,  <39.930050, 35.839779, 26.582846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038544, 36.034119, 26.493059>,  <40.219364, 36.358017, 26.343416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038544, 36.034119, 26.493059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074653, 0.452281, 0.888746,
		-0.888862, 0.373832, -0.264905,
		-0.452052, -0.809748, 0.374108,
		39.902927, 35.791195, 26.605291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777866, 36.666336, 26.726257>,  <40.219364, 36.358017, 26.343416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777866, 36.666336, 26.726257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762192, 36.290569, 26.862471>,  <39.752789, 36.065109, 26.944199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.762192, 36.290569, 26.862471>,  <39.777866, 36.666336, 26.726257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762192, 36.290569, 26.862471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299510, 0.336165, 0.892910,
		-0.953288, -0.067006, -0.294536,
		-0.039183, -0.939417, 0.340531,
		39.750439, 36.008743, 26.964630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079041, 36.505714, 27.113153>,  <39.777866, 36.666336, 26.726257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079041, 36.505714, 27.113153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357502, 36.255379, 27.253832>,  <39.524578, 36.105179, 27.338240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357502, 36.255379, 27.253832>,  <39.079041, 36.505714, 27.113153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357502, 36.255379, 27.253832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265421, 0.230807, 0.936098,
		-0.667022, -0.745018, -0.005434,
		0.696156, -0.625841, 0.351697,
		39.566349, 36.067627, 27.359341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793045, 36.235229, 27.667217>,  <39.079041, 36.505714, 27.113153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793045, 36.235229, 27.667217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182106, 36.165035, 27.728067>,  <39.415543, 36.122917, 27.764578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.182106, 36.165035, 27.728067>,  <38.793045, 36.235229, 27.667217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182106, 36.165035, 27.728067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102892, 0.261627, 0.959669,
		-0.208210, -0.949081, 0.236417,
		0.972657, -0.175488, 0.152126,
		39.473904, 36.112389, 27.773705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815594, 35.981979, 28.234308>,  <38.793045, 36.235229, 27.667217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815594, 35.981979, 28.234308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202133, 36.080711, 28.205353>,  <39.434059, 36.139950, 28.187979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202133, 36.080711, 28.205353>,  <38.815594, 35.981979, 28.234308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202133, 36.080711, 28.205353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053789, 0.469100, 0.881506,
		0.251542, -0.847950, 0.466592,
		0.966350, 0.246833, -0.072387,
		39.492039, 36.154762, 28.183636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191395, 35.714386, 28.845499>,  <38.815594, 35.981979, 28.234308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191395, 35.714386, 28.845499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422344, 36.007534, 28.701532>,  <39.560913, 36.183422, 28.615152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422344, 36.007534, 28.701532>,  <39.191395, 35.714386, 28.845499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422344, 36.007534, 28.701532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111498, 0.365917, 0.923945,
		0.808829, -0.573595, 0.129558,
		0.577377, 0.732867, -0.359919,
		39.595558, 36.227394, 28.593557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829098, 35.706905, 29.197069>,  <39.191395, 35.714386, 28.845499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829098, 35.706905, 29.197069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783291, 36.077484, 29.053633>,  <39.755806, 36.299831, 28.967571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783291, 36.077484, 29.053633>,  <39.829098, 35.706905, 29.197069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783291, 36.077484, 29.053633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060911, 0.366835, 0.928290,
		0.991552, 0.084464, -0.098440,
		-0.114518, 0.926444, -0.358592,
		39.748936, 36.355415, 28.946054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337387, 36.140083, 29.551161>,  <39.829098, 35.706905, 29.197069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337387, 36.140083, 29.551161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112030, 36.438862, 29.409935>,  <39.976814, 36.618130, 29.325199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112030, 36.438862, 29.409935>,  <40.337387, 36.140083, 29.551161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112030, 36.438862, 29.409935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173281, 0.524669, 0.833484,
		0.807812, 0.408401, -0.425028,
		-0.563395, 0.746948, -0.353066,
		39.943012, 36.662945, 29.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747173, 36.850399, 29.448124>,  <40.337387, 36.140083, 29.551161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747173, 36.850399, 29.448124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.366341, 36.971291, 29.466885>,  <40.137840, 37.043827, 29.478142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.366341, 36.971291, 29.466885>,  <40.747173, 36.850399, 29.448124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366341, 36.971291, 29.466885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243971, 0.657994, 0.712405,
		0.184451, 0.689710, -0.700199,
		-0.952080, 0.302232, 0.046902,
		40.080715, 37.061962, 29.480955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783215, 37.557369, 29.556877>,  <40.747173, 36.850399, 29.448124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783215, 37.557369, 29.556877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422031, 37.436062, 29.678659>,  <40.205322, 37.363277, 29.751728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422031, 37.436062, 29.678659>,  <40.783215, 37.557369, 29.556877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422031, 37.436062, 29.678659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064800, 0.604296, 0.794121,
		-0.424810, 0.736788, -0.526004,
		-0.902960, -0.303266, 0.304454,
		40.151142, 37.345081, 29.769997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492767, 38.146408, 29.702452>,  <40.783215, 37.557369, 29.556877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492767, 38.146408, 29.702452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272301, 37.880547, 29.904222>,  <40.140018, 37.721031, 30.025286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272301, 37.880547, 29.904222>,  <40.492767, 38.146408, 29.702452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272301, 37.880547, 29.904222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200428, 0.481383, 0.853287,
		-0.809963, 0.571409, -0.132109,
		-0.551171, -0.664652, 0.504428,
		40.106949, 37.681152, 30.055552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996052, 38.511456, 30.088247>,  <40.492767, 38.146408, 29.702452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996052, 38.511456, 30.088247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073235, 38.165237, 30.273113>,  <40.119545, 37.957504, 30.384033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.073235, 38.165237, 30.273113>,  <39.996052, 38.511456, 30.088247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073235, 38.165237, 30.273113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296820, 0.500436, 0.813303,
		-0.935236, -0.019753, 0.353474,
		0.192956, -0.865548, 0.462162,
		40.131123, 37.905575, 30.411762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783489, 38.621120, 30.804615>,  <39.996052, 38.511456, 30.088247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783489, 38.621120, 30.804615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064308, 38.337086, 30.826183>,  <40.232800, 38.166664, 30.839125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064308, 38.337086, 30.826183>,  <39.783489, 38.621120, 30.804615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064308, 38.337086, 30.826183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323394, 0.385360, 0.864242,
		-0.634464, -0.589302, 0.500178,
		0.702048, -0.710085, 0.053920,
		40.274921, 38.124062, 30.842360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115498, 38.915501, 30.460823>,  <39.783489, 38.621120, 30.804615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115498, 38.915501, 30.460823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012215, 39.300652, 30.492317>,  <38.950245, 39.531742, 30.511213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.012215, 39.300652, 30.492317>,  <39.115498, 38.915501, 30.460823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012215, 39.300652, 30.492317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148675, 0.040923, -0.988039,
		-0.954580, -0.266829, 0.132589,
		-0.258212, 0.962875, 0.078735,
		38.934750, 39.589516, 30.515938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494637, 39.066845, 30.315866>,  <39.115498, 38.915501, 30.460823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494637, 39.066845, 30.315866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620026, 39.437866, 30.234497>,  <38.695259, 39.660480, 30.185677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620026, 39.437866, 30.234497>,  <38.494637, 39.066845, 30.315866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620026, 39.437866, 30.234497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186589, -0.149877, -0.970938,
		-0.931084, 0.342321, 0.126088,
		0.313475, 0.927552, -0.203422,
		38.714069, 39.716133, 30.173471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002426, 39.340099, 29.768387>,  <38.494637, 39.066845, 30.315866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002426, 39.340099, 29.768387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334427, 39.563198, 29.769304>,  <38.533627, 39.697060, 29.769855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334427, 39.563198, 29.769304>,  <38.002426, 39.340099, 29.768387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334427, 39.563198, 29.769304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072002, 0.111227, -0.991183,
		-0.553088, 0.822523, 0.132478,
		0.830006, 0.557750, 0.002295,
		38.583427, 39.730522, 29.769993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812386, 39.903034, 29.357426>,  <38.002426, 39.340099, 29.768387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812386, 39.903034, 29.357426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212185, 39.905861, 29.369722>,  <38.452065, 39.907558, 29.377100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.212185, 39.905861, 29.369722>,  <37.812386, 39.903034, 29.357426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212185, 39.905861, 29.369722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030752, -0.001338, -0.999526,
		-0.007021, 0.999974, -0.001555,
		0.999502, 0.007066, 0.030742,
		38.512035, 39.907982, 29.378944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061943, 40.412327, 28.931644>,  <37.812386, 39.903034, 29.357426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061943, 40.412327, 28.931644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354897, 40.141171, 28.957212>,  <38.530666, 39.978477, 28.972553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.354897, 40.141171, 28.957212>,  <38.061943, 40.412327, 28.931644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354897, 40.141171, 28.957212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071141, -0.017177, -0.997318,
		0.677169, 0.734963, 0.035645,
		0.732380, -0.677889, 0.063918,
		38.574612, 39.937805, 28.976387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557346, 40.607330, 28.477207>,  <38.061943, 40.412327, 28.931644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557346, 40.607330, 28.477207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620102, 40.213837, 28.512209>,  <38.657753, 39.977741, 28.533211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620102, 40.213837, 28.512209>,  <38.557346, 40.607330, 28.477207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620102, 40.213837, 28.512209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011899, -0.086712, -0.996162,
		0.987545, 0.157325, -0.001899,
		0.156886, -0.983732, 0.087504,
		38.667168, 39.918716, 28.538460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961479, 40.472099, 27.965317>,  <38.557346, 40.607330, 28.477207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961479, 40.472099, 27.965317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845749, 40.102753, 28.066267>,  <38.776310, 39.881145, 28.126837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845749, 40.102753, 28.066267>,  <38.961479, 40.472099, 27.965317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845749, 40.102753, 28.066267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044868, -0.276443, -0.959982,
		0.956179, -0.266421, 0.121411,
		-0.289323, -0.923363, 0.252375,
		38.758953, 39.825745, 28.141979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343704, 40.024349, 27.658766>,  <38.961479, 40.472099, 27.965317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343704, 40.024349, 27.658766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040554, 39.773094, 27.729267>,  <38.858665, 39.622341, 27.771568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040554, 39.773094, 27.729267>,  <39.343704, 40.024349, 27.658766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040554, 39.773094, 27.729267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076014, -0.353343, -0.932400,
		0.647958, -0.693244, 0.315537,
		-0.757874, -0.628141, 0.176256,
		38.813190, 39.584652, 27.782145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530106, 39.344757, 27.240311>,  <39.343704, 40.024349, 27.658766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530106, 39.344757, 27.240311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.145840, 39.305992, 27.344418>,  <38.915279, 39.282734, 27.406881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.145840, 39.305992, 27.344418>,  <39.530106, 39.344757, 27.240311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145840, 39.305992, 27.344418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170603, -0.533548, -0.828384,
		0.219147, -0.840199, 0.496025,
		-0.960661, -0.096914, 0.260266,
		38.857643, 39.276917, 27.422497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345497, 38.565502, 27.294666>,  <39.530106, 39.344757, 27.240311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345497, 38.565502, 27.294666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003830, 38.765728, 27.238333>,  <38.798832, 38.885864, 27.204533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.003830, 38.765728, 27.238333>,  <39.345497, 38.565502, 27.294666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003830, 38.765728, 27.238333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205057, -0.573130, -0.793393,
		-0.477860, -0.648811, 0.592193,
		-0.854167, 0.500565, -0.140833,
		38.747581, 38.915897, 27.196083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868500, 38.054207, 27.109591>,  <39.345497, 38.565502, 27.294666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868500, 38.054207, 27.109591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709663, 38.393375, 26.969103>,  <38.614361, 38.596878, 26.884811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.709663, 38.393375, 26.969103>,  <38.868500, 38.054207, 27.109591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709663, 38.393375, 26.969103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391038, -0.502516, -0.771082,
		-0.830308, -0.168847, 0.531111,
		-0.397087, 0.847920, -0.351217,
		38.590538, 38.647751, 26.863737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368355, 37.803902, 26.755381>,  <38.868500, 38.054207, 27.109591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368355, 37.803902, 26.755381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401085, 38.184349, 26.636271>,  <38.420723, 38.412617, 26.564804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401085, 38.184349, 26.636271>,  <38.368355, 37.803902, 26.755381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401085, 38.184349, 26.636271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276655, -0.265361, -0.923605,
		-0.957479, 0.157957, 0.241419,
		0.081826, 0.951122, -0.297777,
		38.425632, 38.469685, 26.546938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707668, 37.987118, 26.372358>,  <38.368355, 37.803902, 26.755381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707668, 37.987118, 26.372358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011730, 38.223209, 26.263700>,  <38.194168, 38.364864, 26.198505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.011730, 38.223209, 26.263700>,  <37.707668, 37.987118, 26.372358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011730, 38.223209, 26.263700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232958, -0.142700, -0.961960,
		-0.606544, 0.794520, 0.029026,
		0.760155, 0.590232, -0.271643,
		38.239777, 38.400280, 26.182207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357521, 38.544662, 25.912479>,  <37.707668, 37.987118, 26.372358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357521, 38.544662, 25.912479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751778, 38.517044, 25.850830>,  <37.988331, 38.500473, 25.813841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751778, 38.517044, 25.850830>,  <37.357521, 38.544662, 25.912479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751778, 38.517044, 25.850830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164255, -0.179829, -0.969888,
		0.039248, 0.981272, -0.188586,
		0.985637, -0.069042, -0.154121,
		38.047470, 38.496330, 25.804594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457130, 38.877251, 25.220684>,  <37.357521, 38.544662, 25.912479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457130, 38.877251, 25.220684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803818, 38.685352, 25.275301>,  <38.011829, 38.570213, 25.308071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.803818, 38.685352, 25.275301>,  <37.457130, 38.877251, 25.220684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803818, 38.685352, 25.275301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010554, -0.256039, -0.966609,
		0.498685, 0.839219, -0.216851,
		0.866719, -0.479745, 0.136540,
		38.063835, 38.541428, 25.316263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975609, 39.180000, 24.759283>,  <37.457130, 38.877251, 25.220684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975609, 39.180000, 24.759283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057785, 38.797428, 24.842258>,  <38.107090, 38.567883, 24.892044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057785, 38.797428, 24.842258>,  <37.975609, 39.180000, 24.759283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057785, 38.797428, 24.842258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083037, -0.194160, -0.977449,
		0.975141, 0.218032, 0.039532,
		0.205440, -0.956433, 0.207438,
		38.119415, 38.510498, 24.904490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386551, 38.975132, 24.290848>,  <37.975609, 39.180000, 24.759283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386551, 38.975132, 24.290848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273155, 38.610325, 24.409409>,  <38.205116, 38.391441, 24.480545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273155, 38.610325, 24.409409>,  <38.386551, 38.975132, 24.290848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273155, 38.610325, 24.409409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024692, -0.315923, -0.948463,
		0.958658, -0.261559, 0.112080,
		-0.283488, -0.912019, 0.296404,
		38.188110, 38.336720, 24.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696198, 38.620388, 23.897800>,  <38.386551, 38.975132, 24.290848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696198, 38.620388, 23.897800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428589, 38.350273, 24.021994>,  <38.268024, 38.188206, 24.096510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428589, 38.350273, 24.021994>,  <38.696198, 38.620388, 23.897800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428589, 38.350273, 24.021994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144369, -0.527858, -0.836973,
		0.729086, -0.515129, 0.450639,
		-0.669022, -0.675283, 0.310485,
		38.227882, 38.147690, 24.115139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.939259, 37.923393, 23.797377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557308, 37.808933, 23.829201>,  <38.328136, 37.740257, 23.848295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557308, 37.808933, 23.829201>,  <38.939259, 37.923393, 23.797377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557308, 37.808933, 23.829201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118872, -0.613687, -0.780549,
		0.272179, -0.735871, 0.620011,
		-0.954876, -0.286151, 0.079558,
		38.270844, 37.723087, 23.853067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991821, 37.170216, 23.833941>,  <38.939259, 37.923393, 23.797377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991821, 37.170216, 23.833941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618378, 37.264435, 23.725945>,  <38.394310, 37.320965, 23.661146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618378, 37.264435, 23.725945>,  <38.991821, 37.170216, 23.833941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618378, 37.264435, 23.725945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053208, -0.654034, -0.754592,
		-0.354324, -0.718858, 0.598078,
		-0.933607, 0.235548, -0.269989,
		38.338295, 37.335098, 23.644947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610500, 36.620491, 23.792641>,  <38.991821, 37.170216, 23.833941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610500, 36.620491, 23.792641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407597, 36.877415, 23.562813>,  <38.285854, 37.031567, 23.424917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407597, 36.877415, 23.562813>,  <38.610500, 36.620491, 23.792641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407597, 36.877415, 23.562813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133110, -0.717109, -0.684132,
		-0.851450, -0.270554, 0.449259,
		-0.507263, 0.642305, -0.574569,
		38.255417, 37.070107, 23.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116600, 36.230553, 23.458946>,  <38.610500, 36.620491, 23.792641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116600, 36.230553, 23.458946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155502, 36.566441, 23.245251>,  <38.178844, 36.767975, 23.117033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155502, 36.566441, 23.245251>,  <38.116600, 36.230553, 23.458946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155502, 36.566441, 23.245251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010766, -0.535865, -0.844236,
		-0.995201, 0.087859, -0.043076,
		0.097257, 0.839720, -0.534239,
		38.184681, 36.818356, 23.084980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799278, 36.063221, 22.916092>,  <38.116600, 36.230553, 23.458946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799278, 36.063221, 22.916092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017906, 36.379135, 22.804735>,  <38.149082, 36.568684, 22.737921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017906, 36.379135, 22.804735>,  <37.799278, 36.063221, 22.916092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017906, 36.379135, 22.804735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023489, -0.346771, -0.937656,
		-0.837086, 0.505953, -0.208085,
		0.546567, 0.789786, -0.278392,
		38.181877, 36.616070, 22.721218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358353, 36.416885, 22.502750>,  <37.799278, 36.063221, 22.916092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358353, 36.416885, 22.502750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738274, 36.503853, 22.412760>,  <37.966225, 36.556034, 22.358767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.738274, 36.503853, 22.412760>,  <37.358353, 36.416885, 22.502750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738274, 36.503853, 22.412760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197201, -0.142226, -0.969992,
		-0.242888, 0.965662, -0.092211,
		0.949798, 0.217415, -0.224974,
		38.023212, 36.569077, 22.345268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384125, 37.054859, 21.996241>,  <37.358353, 36.416885, 22.502750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384125, 37.054859, 21.996241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733238, 36.859825, 21.987164>,  <37.942707, 36.742805, 21.981716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.733238, 36.859825, 21.987164>,  <37.384125, 37.054859, 21.996241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733238, 36.859825, 21.987164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009205, 0.062928, -0.997976,
		0.488024, 0.870806, 0.059410,
		0.872782, -0.487583, -0.022695,
		37.995071, 36.713551, 21.980354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911449, 37.517254, 21.629381>,  <37.384125, 37.054859, 21.996241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911449, 37.517254, 21.629381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026012, 37.136059, 21.589798>,  <38.094749, 36.907341, 21.566048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026012, 37.136059, 21.589798>,  <37.911449, 37.517254, 21.629381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026012, 37.136059, 21.589798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126331, 0.139944, -0.982067,
		0.949742, 0.268771, 0.160473,
		0.286409, -0.952984, -0.098957,
		38.111935, 36.850163, 21.560110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514416, 37.600960, 21.231707>,  <37.911449, 37.517254, 21.629381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514416, 37.600960, 21.231707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386314, 37.222351, 21.216064>,  <38.309456, 36.995186, 21.206680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386314, 37.222351, 21.216064>,  <38.514416, 37.600960, 21.231707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386314, 37.222351, 21.216064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220045, -0.034176, -0.974891,
		0.921423, -0.320814, 0.219223,
		-0.320250, -0.946526, -0.039103,
		38.290237, 36.938393, 21.204334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872360, 37.323967, 20.686054>,  <38.514416, 37.600960, 21.231707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872360, 37.323967, 20.686054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611938, 37.023087, 20.726713>,  <38.455688, 36.842560, 20.751108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611938, 37.023087, 20.726713>,  <38.872360, 37.323967, 20.686054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611938, 37.023087, 20.726713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161709, -0.268297, -0.949667,
		0.741610, -0.601843, 0.296312,
		-0.651049, -0.752198, 0.101648,
		38.416622, 36.797428, 20.757208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156700, 36.775433, 20.280807>,  <38.872360, 37.323967, 20.686054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156700, 36.775433, 20.280807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767941, 36.689816, 20.319992>,  <38.534683, 36.638447, 20.343504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.767941, 36.689816, 20.319992>,  <39.156700, 36.775433, 20.280807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767941, 36.689816, 20.319992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022107, -0.331327, -0.943257,
		0.234357, -0.918917, 0.317284,
		-0.971899, -0.214044, 0.097963,
		38.476372, 36.625603, 20.349380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020660, 36.023556, 20.142157>,  <39.156700, 36.775433, 20.280807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020660, 36.023556, 20.142157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707508, 36.258869, 20.061142>,  <38.519615, 36.400055, 20.012533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707508, 36.258869, 20.061142>,  <39.020660, 36.023556, 20.142157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707508, 36.258869, 20.061142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023786, -0.353596, -0.935096,
		-0.621717, -0.727251, 0.290816,
		-0.782881, 0.588282, -0.202538,
		38.472645, 36.435352, 20.000381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686413, 35.639641, 19.674660>,  <39.020660, 36.023556, 20.142157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686413, 35.639641, 19.674660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.466129, 35.973335, 19.663563>,  <38.333958, 36.173553, 19.656904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.466129, 35.973335, 19.663563>,  <38.686413, 35.639641, 19.674660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466129, 35.973335, 19.663563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288638, -0.221513, -0.931462,
		-0.783205, -0.504956, 0.362781,
		-0.550708, 0.834237, -0.027741,
		38.300919, 36.223606, 19.655241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089909, 35.461304, 19.326866>,  <38.686413, 35.639641, 19.674660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089909, 35.461304, 19.326866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129910, 35.858559, 19.302576>,  <38.153908, 36.096912, 19.288002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129910, 35.858559, 19.302576>,  <38.089909, 35.461304, 19.326866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129910, 35.858559, 19.302576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280386, -0.030430, -0.959405,
		-0.954664, 0.112966, 0.275417,
		0.100000, 0.993133, -0.060725,
		38.159908, 36.156498, 19.284359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536392, 35.635456, 18.973036>,  <38.089909, 35.461304, 19.326866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536392, 35.635456, 18.973036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787052, 35.941673, 18.914713>,  <37.937447, 36.125404, 18.879719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787052, 35.941673, 18.914713>,  <37.536392, 35.635456, 18.973036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787052, 35.941673, 18.914713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185517, -0.035178, -0.982011,
		-0.756896, 0.642428, 0.119976,
		0.626651, 0.765538, -0.145807,
		37.975048, 36.171333, 18.870972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151176, 36.019066, 18.485895>,  <37.536392, 35.635456, 18.973036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151176, 36.019066, 18.485895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528496, 36.149143, 18.459259>,  <37.754887, 36.227192, 18.443277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528496, 36.149143, 18.459259>,  <37.151176, 36.019066, 18.485895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528496, 36.149143, 18.459259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103160, 0.096527, -0.989970,
		-0.315509, 0.940707, 0.124601,
		0.943299, 0.325198, -0.066588,
		37.811485, 36.246704, 18.439283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137501, 36.637825, 18.065979>,  <37.151176, 36.019066, 18.485895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137501, 36.637825, 18.065979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509949, 36.492252, 18.056461>,  <37.733418, 36.404907, 18.050751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509949, 36.492252, 18.056461>,  <37.137501, 36.637825, 18.065979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509949, 36.492252, 18.056461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002144, 0.059774, -0.998210,
		0.364703, 0.929506, 0.054877,
		0.931122, -0.363932, -0.023792,
		37.789284, 36.383072, 18.049324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511753, 37.127724, 17.550964>,  <37.137501, 36.637825, 18.065979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511753, 37.127724, 17.550964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709732, 36.782703, 17.592993>,  <37.828518, 36.575691, 17.618210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709732, 36.782703, 17.592993>,  <37.511753, 37.127724, 17.550964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709732, 36.782703, 17.592993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037411, -0.099656, -0.994318,
		0.868119, 0.496064, -0.017056,
		0.494945, -0.862548, 0.105072,
		37.858215, 36.523937, 17.624514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962723, 37.171360, 17.088551>,  <37.511753, 37.127724, 17.550964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962723, 37.171360, 17.088551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996288, 36.784718, 17.185408>,  <38.016426, 36.552731, 17.243521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996288, 36.784718, 17.185408>,  <37.962723, 37.171360, 17.088551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996288, 36.784718, 17.185408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256058, -0.213922, -0.942694,
		0.963012, 0.141107, 0.229556,
		0.083913, -0.966605, 0.242141,
		38.021461, 36.494736, 17.258051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577602, 36.877205, 16.766966>,  <37.962723, 37.171360, 17.088551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577602, 36.877205, 16.766966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337219, 36.561493, 16.817389>,  <38.192989, 36.372066, 16.847643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.337219, 36.561493, 16.817389>,  <38.577602, 36.877205, 16.766966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337219, 36.561493, 16.817389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033811, -0.132467, -0.990611,
		0.798567, -0.599575, 0.052921,
		-0.600956, -0.789279, 0.126056,
		38.156933, 36.324711, 16.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818363, 36.365562, 16.289751>,  <38.577602, 36.877205, 16.766966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818363, 36.365562, 16.289751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440247, 36.251240, 16.352663>,  <38.213375, 36.182644, 16.390409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440247, 36.251240, 16.352663>,  <38.818363, 36.365562, 16.289751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440247, 36.251240, 16.352663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085875, -0.247101, -0.965177,
		0.314722, -0.925880, 0.209038,
		-0.945291, -0.285811, 0.157278,
		38.156658, 36.165497, 16.399847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777267, 35.627972, 16.100611>,  <38.818363, 36.365562, 16.289751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777267, 35.627972, 16.100611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415657, 35.798199, 16.084511>,  <38.198689, 35.900337, 16.074852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415657, 35.798199, 16.084511>,  <38.777267, 35.627972, 16.100611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415657, 35.798199, 16.084511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210891, -0.525914, -0.823978,
		-0.371828, -0.736412, 0.565191,
		-0.904029, 0.425572, -0.040247,
		38.144447, 35.925869, 16.072437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385002, 35.040359, 15.946623>,  <38.777267, 35.627972, 16.100611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385002, 35.040359, 15.946623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215492, 35.391376, 15.856873>,  <38.113789, 35.601986, 15.803022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215492, 35.391376, 15.856873>,  <38.385002, 35.040359, 15.946623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215492, 35.391376, 15.856873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288914, -0.365737, -0.884740,
		-0.858457, -0.310101, 0.408521,
		-0.423770, 0.877539, -0.224377,
		38.088360, 35.654636, 15.789559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252621, 34.512211, 15.377604>,  <38.385002, 35.040359, 15.946623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252621, 34.512211, 15.377604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056179, 34.169540, 15.314459>,  <37.938313, 33.963940, 15.276571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056179, 34.169540, 15.314459>,  <38.252621, 34.512211, 15.377604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056179, 34.169540, 15.314459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168267, -0.271106, 0.947728,
		-0.854693, 0.438872, 0.277292,
		-0.491106, -0.856676, -0.157865,
		37.908848, 33.912537, 15.267099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682602, 34.436680, 15.931682>,  <38.252621, 34.512211, 15.377604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682602, 34.436680, 15.931682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780846, 34.080044, 15.779498>,  <37.839794, 33.866062, 15.688188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780846, 34.080044, 15.779498>,  <37.682602, 34.436680, 15.931682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780846, 34.080044, 15.779498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184034, -0.342456, 0.921333,
		-0.951738, -0.296309, 0.079970,
		0.245613, -0.891585, -0.380460,
		37.854530, 33.812569, 15.665360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336983, 33.817093, 16.269238>,  <37.682602, 34.436680, 15.931682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336983, 33.817093, 16.269238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682678, 33.677502, 16.124296>,  <37.890095, 33.593746, 16.037331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682678, 33.677502, 16.124296>,  <37.336983, 33.817093, 16.269238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682678, 33.677502, 16.124296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271230, -0.283400, 0.919847,
		-0.423699, -0.893251, -0.150273,
		0.864241, -0.348980, -0.362352,
		37.941952, 33.572807, 16.015591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458538, 33.165001, 16.705027>,  <37.336983, 33.817093, 16.269238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458538, 33.165001, 16.705027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796253, 33.288509, 16.529829>,  <37.998882, 33.362614, 16.424709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796253, 33.288509, 16.529829>,  <37.458538, 33.165001, 16.705027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796253, 33.288509, 16.529829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513762, -0.233931, 0.825424,
		0.152404, -0.921921, -0.356139,
		0.844288, 0.308768, -0.437996,
		38.049538, 33.381138, 16.398430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857513, 32.725643, 17.031511>,  <37.458538, 33.165001, 16.705027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857513, 32.725643, 17.031511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088379, 33.012215, 16.874733>,  <38.226898, 33.184158, 16.780666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.088379, 33.012215, 16.874733>,  <37.857513, 32.725643, 17.031511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088379, 33.012215, 16.874733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441116, 0.130402, 0.887925,
		0.687242, -0.685369, -0.240763,
		0.577161, 0.716425, -0.391945,
		38.261528, 33.227142, 16.757149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579208, 32.523808, 17.368654>,  <37.857513, 32.725643, 17.031511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579208, 32.523808, 17.368654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581230, 32.898579, 17.228865>,  <38.582443, 33.123444, 17.144991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.581230, 32.898579, 17.228865>,  <38.579208, 32.523808, 17.368654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581230, 32.898579, 17.228865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427112, 0.313976, 0.847935,
		0.904185, -0.153550, -0.398588,
		0.005053, 0.936932, -0.349475,
		38.582745, 33.179657, 17.124022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244614, 32.699692, 17.502386>,  <38.579208, 32.523808, 17.368654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244614, 32.699692, 17.502386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004894, 33.019699, 17.491030>,  <38.861061, 33.211704, 17.484215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004894, 33.019699, 17.491030>,  <39.244614, 32.699692, 17.502386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004894, 33.019699, 17.491030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406049, 0.334359, 0.850487,
		0.689898, 0.498171, -0.525229,
		-0.599303, 0.800018, -0.028392,
		38.825104, 33.259705, 17.482512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512352, 33.162430, 17.773899>,  <39.244614, 32.699692, 17.502386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512352, 33.162430, 17.773899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142765, 33.312572, 17.803253>,  <38.921013, 33.402660, 17.820866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142765, 33.312572, 17.803253>,  <39.512352, 33.162430, 17.773899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142765, 33.312572, 17.803253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204647, 0.323111, 0.923969,
		0.323111, 0.868737, -0.375361,
		-0.923969, 0.375361, 0.073384,
		38.865574, 33.425182, 17.825268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559834, 33.806107, 18.079823>,  <39.512352, 33.162430, 17.773899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559834, 33.806107, 18.079823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175526, 33.703831, 18.122793>,  <38.944942, 33.642464, 18.148575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175526, 33.703831, 18.122793>,  <39.559834, 33.806107, 18.079823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175526, 33.703831, 18.122793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025296, 0.304940, 0.952036,
		-0.276189, 0.917405, -0.286509,
		-0.960770, -0.255694, 0.107427,
		38.887295, 33.627121, 18.155022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325970, 34.354145, 18.385405>,  <39.559834, 33.806107, 18.079823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325970, 34.354145, 18.385405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086399, 34.041462, 18.454947>,  <38.942657, 33.853851, 18.496672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086399, 34.041462, 18.454947>,  <39.325970, 34.354145, 18.385405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086399, 34.041462, 18.454947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110917, 0.295981, 0.948732,
		-0.793089, 0.548933, -0.263974,
		-0.598922, -0.781708, 0.173853,
		38.906723, 33.806950, 18.507103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707150, 34.634830, 18.558146>,  <39.325970, 34.354145, 18.385405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707150, 34.634830, 18.558146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.698475, 34.262207, 18.703323>,  <38.693272, 34.038631, 18.790430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.698475, 34.262207, 18.703323>,  <38.707150, 34.634830, 18.558146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698475, 34.262207, 18.703323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168580, 0.361240, 0.917108,
		-0.985449, -0.041299, -0.164875,
		-0.021683, -0.931558, 0.362946,
		38.691971, 33.982738, 18.812208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178066, 34.628120, 19.092695>,  <38.707150, 34.634830, 18.558146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178066, 34.628120, 19.092695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425900, 34.321972, 19.162355>,  <38.574600, 34.138283, 19.204151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425900, 34.321972, 19.162355>,  <38.178066, 34.628120, 19.092695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425900, 34.321972, 19.162355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060494, 0.267767, 0.961583,
		-0.782599, -0.585243, 0.212204,
		0.619580, -0.765370, 0.174151,
		38.611774, 34.092361, 19.214602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938622, 34.419571, 19.697392>,  <38.178066, 34.628120, 19.092695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938622, 34.419571, 19.697392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295219, 34.239040, 19.681665>,  <38.509178, 34.130722, 19.672230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295219, 34.239040, 19.681665>,  <37.938622, 34.419571, 19.697392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295219, 34.239040, 19.681665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107295, 0.126034, 0.986207,
		-0.440144, -0.883415, 0.160783,
		0.891494, -0.451324, -0.039313,
		38.562668, 34.103642, 19.669872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902718, 33.899288, 20.208820>,  <37.938622, 34.419571, 19.697392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902718, 33.899288, 20.208820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289585, 33.974354, 20.140270>,  <38.521706, 34.019394, 20.099140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289585, 33.974354, 20.140270>,  <37.902718, 33.899288, 20.208820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289585, 33.974354, 20.140270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155257, 0.097574, 0.983044,
		0.201206, -0.977374, 0.065234,
		0.967166, 0.187666, -0.171377,
		38.579735, 34.030655, 20.088858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167313, 33.468563, 20.682457>,  <37.902718, 33.899288, 20.208820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167313, 33.468563, 20.682457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439671, 33.749893, 20.600769>,  <38.603085, 33.918694, 20.551756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439671, 33.749893, 20.600769>,  <38.167313, 33.468563, 20.682457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439671, 33.749893, 20.600769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212852, 0.076765, 0.974064,
		0.700765, -0.706706, -0.097436,
		0.680898, 0.703330, -0.204218,
		38.643940, 33.960892, 20.539503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783703, 33.391644, 21.084616>,  <38.167313, 33.468563, 20.682457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783703, 33.391644, 21.084616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796314, 33.778587, 20.984047>,  <38.803879, 34.010754, 20.923706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796314, 33.778587, 20.984047>,  <38.783703, 33.391644, 21.084616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796314, 33.778587, 20.984047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215181, 0.239079, 0.946857,
		0.976065, -0.083952, -0.200621,
		0.031527, 0.967364, -0.251421,
		38.805771, 34.068798, 20.908621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352627, 33.581139, 21.430519>,  <38.783703, 33.391644, 21.084616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352627, 33.581139, 21.430519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.203518, 33.940483, 21.337580>,  <39.114052, 34.156090, 21.281816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.203518, 33.940483, 21.337580>,  <39.352627, 33.581139, 21.430519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203518, 33.940483, 21.337580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295760, 0.352364, 0.887900,
		0.879528, 0.262261, -0.397051,
		-0.372768, 0.898364, -0.232347,
		39.091686, 34.209991, 21.267876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806629, 34.027428, 21.715656>,  <39.352627, 33.581139, 21.430519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806629, 34.027428, 21.715656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479839, 34.246063, 21.642118>,  <39.283768, 34.377243, 21.597996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479839, 34.246063, 21.642118>,  <39.806629, 34.027428, 21.715656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479839, 34.246063, 21.642118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090876, 0.436836, 0.894939,
		0.569474, 0.714432, -0.406554,
		-0.816971, 0.546590, -0.183842,
		39.234749, 34.410042, 21.586966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001404, 34.680450, 21.877951>,  <39.806629, 34.027428, 21.715656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001404, 34.680450, 21.877951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602058, 34.679531, 21.900820>,  <39.362453, 34.678982, 21.914541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602058, 34.679531, 21.900820>,  <40.001404, 34.680450, 21.877951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602058, 34.679531, 21.900820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050881, 0.421429, 0.905433,
		-0.026173, 0.906858, -0.420622,
		-0.998362, -0.002297, 0.057172,
		39.302551, 34.678841, 21.917971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952042, 35.374004, 22.175875>,  <40.001404, 34.680450, 21.877951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952042, 35.374004, 22.175875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615559, 35.174637, 22.259733>,  <39.413670, 35.055016, 22.310047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615559, 35.174637, 22.259733>,  <39.952042, 35.374004, 22.175875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615559, 35.174637, 22.259733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155406, 0.148500, 0.976625,
		-0.517903, 0.854122, -0.047461,
		-0.841205, -0.498422, 0.209644,
		39.363197, 35.025112, 22.322626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378277, 35.733845, 22.462091>,  <39.952042, 35.374004, 22.175875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378277, 35.733845, 22.462091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344425, 35.363121, 22.608437>,  <39.324112, 35.140686, 22.696243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344425, 35.363121, 22.608437>,  <39.378277, 35.733845, 22.462091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344425, 35.363121, 22.608437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030064, 0.369388, 0.928789,
		-0.995959, 0.067605, -0.059126,
		-0.084631, -0.926813, 0.365863,
		39.319035, 35.085075, 22.718195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.602760, 39.714684, 26.142057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558208, 39.339260, 26.272720>,  <38.531475, 39.114006, 26.351118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558208, 39.339260, 26.272720>,  <38.602760, 39.714684, 26.142057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558208, 39.339260, 26.272720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083243, 0.336358, 0.938048,
		-0.990285, 0.077291, -0.115594,
		-0.111384, -0.938557, 0.326657,
		38.524792, 39.057693, 26.370718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030876, 39.770813, 26.525408>,  <38.602760, 39.714684, 26.142057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030876, 39.770813, 26.525408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168545, 39.415928, 26.648304>,  <38.251144, 39.202995, 26.722042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.168545, 39.415928, 26.648304>,  <38.030876, 39.770813, 26.525408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168545, 39.415928, 26.648304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046786, 0.310620, 0.949382,
		-0.937741, -0.341123, 0.065397,
		0.344170, -0.887215, 0.307241,
		38.271797, 39.149765, 26.740477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601028, 39.478165, 27.110334>,  <38.030876, 39.770813, 26.525408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601028, 39.478165, 27.110334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.954945, 39.293541, 27.135986>,  <38.167294, 39.182766, 27.151377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.954945, 39.293541, 27.135986>,  <37.601028, 39.478165, 27.110334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954945, 39.293541, 27.135986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075430, 0.277658, 0.957714,
		-0.459850, -0.842536, 0.280484,
		0.884787, -0.461562, 0.064128,
		38.220379, 39.155071, 27.155226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581703, 39.150799, 27.653828>,  <37.601028, 39.478165, 27.110334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581703, 39.150799, 27.653828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.975342, 39.170895, 27.585672>,  <38.211525, 39.182953, 27.544779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.975342, 39.170895, 27.585672>,  <37.581703, 39.150799, 27.653828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975342, 39.170895, 27.585672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151590, 0.262573, 0.952930,
		0.092612, -0.963603, 0.250781,
		0.984095, 0.050237, -0.170390,
		38.270569, 39.185966, 27.534555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854973, 38.800758, 28.227705>,  <37.581703, 39.150799, 27.653828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854973, 38.800758, 28.227705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.135525, 39.038334, 28.070070>,  <38.303856, 39.180878, 27.975491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.135525, 39.038334, 28.070070>,  <37.854973, 38.800758, 28.227705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135525, 39.038334, 28.070070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317739, 0.234387, 0.918752,
		0.638049, -0.769611, -0.024322,
		0.701381, 0.593937, -0.394085,
		38.345940, 39.216515, 27.951845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415745, 38.630150, 28.449013>,  <37.854973, 38.800758, 28.227705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415745, 38.630150, 28.449013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508423, 39.006958, 28.351917>,  <38.564030, 39.233044, 28.293659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508423, 39.006958, 28.351917>,  <38.415745, 38.630150, 28.449013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508423, 39.006958, 28.351917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416216, 0.129539, 0.899991,
		0.879251, -0.309553, -0.362069,
		0.231693, 0.942017, -0.242738,
		38.577930, 39.289562, 28.279097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145935, 38.714703, 28.706242>,  <38.415745, 38.630150, 28.449013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145935, 38.714703, 28.706242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992245, 39.081448, 28.662912>,  <38.900028, 39.301495, 28.636915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992245, 39.081448, 28.662912>,  <39.145935, 38.714703, 28.706242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992245, 39.081448, 28.662912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384469, 0.265574, 0.884112,
		0.839376, 0.298054, -0.454546,
		-0.384228, 0.916861, -0.108324,
		38.876976, 39.356506, 28.630415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633080, 39.229580, 28.981146>,  <39.145935, 38.714703, 28.706242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633080, 39.229580, 28.981146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.276215, 39.409428, 28.998549>,  <39.062096, 39.517334, 29.008989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.276215, 39.409428, 28.998549>,  <39.633080, 39.229580, 28.981146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276215, 39.409428, 28.998549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195853, 0.298232, 0.934184,
		0.407048, 0.841964, -0.354130,
		-0.892162, 0.449615, 0.043506,
		39.008568, 39.544312, 29.011600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786915, 39.842007, 29.409025>,  <39.633080, 39.229580, 28.981146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786915, 39.842007, 29.409025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387623, 39.856331, 29.390072>,  <39.148048, 39.864925, 29.378700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387623, 39.856331, 29.390072>,  <39.786915, 39.842007, 29.409025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387623, 39.856331, 29.390072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023615, 0.492709, 0.869874,
		0.054499, 0.869457, -0.490994,
		-0.998235, 0.035812, -0.047384,
		39.088154, 39.867073, 29.375856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658020, 40.435493, 29.739376>,  <39.786915, 39.842007, 29.409025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658020, 40.435493, 29.739376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325264, 40.213692, 29.748152>,  <39.125610, 40.080608, 29.753418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325264, 40.213692, 29.748152>,  <39.658020, 40.435493, 29.739376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325264, 40.213692, 29.748152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222487, 0.369479, 0.902211,
		-0.508390, 0.745658, -0.430736,
		-0.831889, -0.554508, 0.021941,
		39.075699, 40.047340, 29.754734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070774, 40.878231, 29.893902>,  <39.658020, 40.435493, 29.739376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070774, 40.878231, 29.893902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006184, 40.500389, 30.008202>,  <38.967430, 40.273685, 30.076782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006184, 40.500389, 30.008202>,  <39.070774, 40.878231, 29.893902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006184, 40.500389, 30.008202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330388, 0.324585, 0.886278,
		-0.929929, 0.048707, -0.364499,
		-0.161478, -0.944602, 0.285749,
		38.957741, 40.217007, 30.093925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702305, 40.945370, 30.577484>,  <39.070774, 40.878231, 29.893902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702305, 40.945370, 30.577484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773624, 40.551933, 30.566521>,  <38.816418, 40.315872, 30.559942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773624, 40.551933, 30.566521>,  <38.702305, 40.945370, 30.577484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773624, 40.551933, 30.566521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368683, -0.092608, 0.924931,
		-0.912294, -0.154812, -0.379147,
		0.178303, -0.983594, -0.027409,
		38.827114, 40.256855, 30.558298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954769, 41.053761, 30.872484>,  <38.702305, 40.945370, 30.577484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954769, 41.053761, 30.872484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782330, 40.753006, 31.072014>,  <37.678867, 40.572556, 31.191732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782330, 40.753006, 31.072014>,  <37.954769, 41.053761, 30.872484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782330, 40.753006, 31.072014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599810, -0.174204, -0.780949,
		0.674080, -0.635865, -0.375889,
		-0.431097, -0.751883, 0.498825,
		37.653000, 40.527439, 31.221661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942173, 40.541096, 30.431341>,  <37.954769, 41.053761, 30.872484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942173, 40.541096, 30.431341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661579, 40.428349, 30.693172>,  <37.493225, 40.360699, 30.850271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.661579, 40.428349, 30.693172>,  <37.942173, 40.541096, 30.431341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661579, 40.428349, 30.693172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553566, -0.362983, -0.749539,
		0.448873, -0.888140, 0.098593,
		-0.701482, -0.281870, 0.654577,
		37.451134, 40.343788, 30.889545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817364, 39.795315, 30.323423>,  <37.942173, 40.541096, 30.431341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817364, 39.795315, 30.323423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493786, 39.962944, 30.488338>,  <37.299637, 40.063522, 30.587288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493786, 39.962944, 30.488338>,  <37.817364, 39.795315, 30.323423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493786, 39.962944, 30.488338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577883, -0.438065, -0.688586,
		-0.107960, -0.795283, 0.596548,
		-0.808947, 0.419075, 0.412287,
		37.251102, 40.088665, 30.612024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312645, 39.330807, 30.089310>,  <37.817364, 39.795315, 30.323423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312645, 39.330807, 30.089310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.111698, 39.646782, 30.229958>,  <36.991131, 39.836365, 30.314346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.111698, 39.646782, 30.229958>,  <37.312645, 39.330807, 30.089310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111698, 39.646782, 30.229958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752534, -0.199168, -0.627714,
		-0.425822, -0.579945, 0.694507,
		-0.502363, 0.789934, 0.351618,
		36.960991, 39.883762, 30.335443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573051, 39.147137, 30.070553>,  <37.312645, 39.330807, 30.089310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573051, 39.147137, 30.070553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555065, 39.546085, 30.093281>,  <36.544273, 39.785454, 30.106916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555065, 39.546085, 30.093281>,  <36.573051, 39.147137, 30.070553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555065, 39.546085, 30.093281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699999, 0.009118, -0.714085,
		-0.712726, -0.071885, 0.697749,
		-0.044970, 0.997371, 0.056817,
		36.541573, 39.845295, 30.110327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840397, 39.322044, 30.172714>,  <36.573051, 39.147137, 30.070553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840397, 39.322044, 30.172714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056908, 39.613194, 30.004328>,  <36.186813, 39.787884, 29.903296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.056908, 39.613194, 30.004328>,  <35.840397, 39.322044, 30.172714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056908, 39.613194, 30.004328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636272, 0.027260, -0.770983,
		-0.549704, 0.685167, 0.477882,
		0.541279, 0.727876, -0.420967,
		36.219292, 39.831558, 29.878038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344341, 39.667408, 30.013556>,  <35.840397, 39.322044, 30.172714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344341, 39.667408, 30.013556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.644577, 39.828152, 29.803747>,  <35.824718, 39.924599, 29.677862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.644577, 39.828152, 29.803747>,  <35.344341, 39.667408, 30.013556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644577, 39.828152, 29.803747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541819, -0.080053, -0.836674,
		-0.378215, 0.912195, 0.157648,
		0.750590, 0.401859, -0.524522,
		35.869755, 39.948711, 29.646391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042732, 40.264580, 29.680321>,  <35.344341, 39.667408, 30.013556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042732, 40.264580, 29.680321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379635, 40.176399, 29.483541>,  <35.581776, 40.123489, 29.365475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379635, 40.176399, 29.483541>,  <35.042732, 40.264580, 29.680321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379635, 40.176399, 29.483541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480948, 0.104939, -0.870446,
		0.243517, 0.969736, -0.017641,
		0.842252, -0.220453, -0.491947,
		35.632309, 40.110264, 29.335957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020241, 40.741524, 29.118376>,  <35.042732, 40.264580, 29.680321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020241, 40.741524, 29.118376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.273716, 40.451241, 29.011202>,  <35.425800, 40.277069, 28.946898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.273716, 40.451241, 29.011202>,  <35.020241, 40.741524, 29.118376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273716, 40.451241, 29.011202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391211, -0.001823, -0.920299,
		0.667382, 0.687999, -0.285060,
		0.633684, -0.725710, -0.267936,
		35.463821, 40.233528, 28.930820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054836, 40.877502, 28.480837>,  <35.020241, 40.741524, 29.118376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054836, 40.877502, 28.480837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.218834, 40.512699, 28.485546>,  <35.317234, 40.293816, 28.488371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.218834, 40.512699, 28.485546>,  <35.054836, 40.877502, 28.480837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218834, 40.512699, 28.485546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278728, -0.137572, -0.950466,
		0.868454, 0.386407, -0.310607,
		0.409998, -0.912011, 0.011773,
		35.341835, 40.239098, 28.489079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419731, 40.768238, 27.891453>,  <35.054836, 40.877502, 28.480837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419731, 40.768238, 27.891453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.308193, 40.401775, 28.006622>,  <35.241272, 40.181896, 28.075724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.308193, 40.401775, 28.006622>,  <35.419731, 40.768238, 27.891453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308193, 40.401775, 28.006622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487409, -0.123314, -0.864423,
		0.827453, -0.381376, -0.412158,
		-0.278846, -0.916158, 0.287923,
		35.224541, 40.126926, 28.092999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678577, 40.416065, 27.323711>,  <35.419731, 40.768238, 27.891453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678577, 40.416065, 27.323711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401722, 40.188953, 27.501953>,  <35.235607, 40.052685, 27.608898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.401722, 40.188953, 27.501953>,  <35.678577, 40.416065, 27.323711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401722, 40.188953, 27.501953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220041, -0.421999, -0.879488,
		0.687403, -0.706781, 0.167147,
		-0.692141, -0.567783, 0.445604,
		35.194080, 40.018620, 27.635633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775227, 39.675484, 27.188658>,  <35.678577, 40.416065, 27.323711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775227, 39.675484, 27.188658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.388023, 39.708717, 27.283367>,  <35.155701, 39.728657, 27.340193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.388023, 39.708717, 27.283367>,  <35.775227, 39.675484, 27.188658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388023, 39.708717, 27.283367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235784, -0.624043, -0.744968,
		0.085860, -0.776960, 0.623667,
		-0.968005, 0.083088, 0.236775,
		35.097622, 39.733643, 27.354399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630241, 38.953033, 27.135799>,  <35.775227, 39.675484, 27.188658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630241, 38.953033, 27.135799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307877, 39.188820, 27.113798>,  <35.114456, 39.330292, 27.100597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307877, 39.188820, 27.113798>,  <35.630241, 38.953033, 27.135799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307877, 39.188820, 27.113798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304129, -0.491922, -0.815793,
		-0.507957, -0.640722, 0.575721,
		-0.805907, 0.589481, -0.055013,
		35.066101, 39.365662, 27.097298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993206, 38.541107, 27.091570>,  <35.630241, 38.953033, 27.135799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993206, 38.541107, 27.091570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.875301, 38.901608, 26.964529>,  <34.804558, 39.117908, 26.888306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.875301, 38.901608, 26.964529>,  <34.993206, 38.541107, 27.091570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875301, 38.901608, 26.964529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259215, -0.395318, -0.881210,
		-0.919741, -0.177420, 0.350141,
		-0.294761, 0.901247, -0.317600,
		34.786873, 39.171982, 26.869249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448360, 38.284580, 26.746210>,  <34.993206, 38.541107, 27.091570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448360, 38.284580, 26.746210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.510925, 38.656807, 26.613800>,  <34.548466, 38.880142, 26.534353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.510925, 38.656807, 26.613800>,  <34.448360, 38.284580, 26.746210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510925, 38.656807, 26.613800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300410, -0.274450, -0.913472,
		-0.940898, 0.242321, 0.236625,
		0.156411, 0.930569, -0.331025,
		34.557850, 38.935978, 26.514492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696602, 38.215668, 26.944378>,  <34.448360, 38.284580, 26.746210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696602, 38.215668, 26.944378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.508705, 37.868069, 27.006586>,  <33.395966, 37.659512, 27.043911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.508705, 37.868069, 27.006586>,  <33.696602, 38.215668, 26.944378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508705, 37.868069, 27.006586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023115, 0.188214, 0.981856,
		-0.882500, 0.457627, -0.108499,
		-0.469745, -0.868996, 0.155521,
		33.367783, 37.607368, 27.053242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323303, 38.361767, 27.621397>,  <33.696602, 38.215668, 26.944378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323303, 38.361767, 27.621397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.355156, 37.964649, 27.585573>,  <33.374268, 37.726379, 27.564079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.355156, 37.964649, 27.585573>,  <33.323303, 38.361767, 27.621397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355156, 37.964649, 27.585573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122726, -0.079395, 0.989260,
		-0.989241, -0.089769, 0.115519,
		0.079633, -0.992793, -0.089558,
		33.379047, 37.666813, 27.558706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780029, 38.059441, 28.121038>,  <33.323303, 38.361767, 27.621397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780029, 38.059441, 28.121038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.063606, 37.796780, 28.018112>,  <33.233753, 37.639183, 27.956356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.063606, 37.796780, 28.018112>,  <32.780029, 38.059441, 28.121038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063606, 37.796780, 28.018112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329464, -0.014238, 0.944061,
		-0.623580, -0.754062, 0.206248,
		0.708944, -0.656649, -0.257315,
		33.276291, 37.599785, 27.940918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871334, 37.670845, 28.639557>,  <32.780029, 38.059441, 28.121038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871334, 37.670845, 28.639557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.211735, 37.548714, 28.468647>,  <33.415977, 37.475433, 28.366102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.211735, 37.548714, 28.468647>,  <32.871334, 37.670845, 28.639557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211735, 37.548714, 28.468647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431378, -0.057585, 0.900332,
		-0.299503, -0.950504, 0.082707,
		0.851006, -0.305330, -0.427273,
		33.467037, 37.457115, 28.340466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060825, 36.952343, 28.899567>,  <32.871334, 37.670845, 28.639557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060825, 36.952343, 28.899567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.376335, 37.164677, 28.775599>,  <33.565639, 37.292076, 28.701218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.376335, 37.164677, 28.775599>,  <33.060825, 36.952343, 28.899567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376335, 37.164677, 28.775599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348471, 0.029184, 0.936865,
		0.506369, -0.846970, -0.161962,
		0.788770, 0.530839, -0.309922,
		33.612965, 37.323929, 28.682621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439495, 36.881271, 29.402496>,  <33.060825, 36.952343, 28.899567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439495, 36.881271, 29.402496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.638180, 37.155994, 29.190241>,  <33.757389, 37.320827, 29.062887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.638180, 37.155994, 29.190241>,  <33.439495, 36.881271, 29.402496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638180, 37.155994, 29.190241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524742, 0.249349, 0.813923,
		0.691323, -0.682730, -0.236543,
		0.496708, 0.686808, -0.530638,
		33.787193, 37.362038, 29.031050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255424, 36.838070, 29.492115>,  <33.439495, 36.881271, 29.402496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255424, 36.838070, 29.492115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.147713, 37.208996, 29.388132>,  <34.083088, 37.431553, 29.325743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.147713, 37.208996, 29.388132>,  <34.255424, 36.838070, 29.492115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147713, 37.208996, 29.388132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546808, 0.369414, 0.751355,
		0.792775, 0.060175, -0.606537,
		-0.269277, 0.927314, -0.259958,
		34.066929, 37.487190, 29.310144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827320, 37.193996, 29.524559>,  <34.255424, 36.838070, 29.492115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827320, 37.193996, 29.524559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.538189, 37.468647, 29.555693>,  <34.364708, 37.633438, 29.574373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.538189, 37.468647, 29.555693>,  <34.827320, 37.193996, 29.524559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538189, 37.468647, 29.555693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522883, 0.469830, 0.711233,
		0.451783, 0.554801, -0.698633,
		-0.722832, 0.686627, 0.077835,
		34.321339, 37.674637, 29.579042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146809, 37.797043, 29.676134>,  <34.827320, 37.193996, 29.524559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146809, 37.797043, 29.676134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.773582, 37.895695, 29.780870>,  <34.549644, 37.954884, 29.843712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.773582, 37.895695, 29.780870>,  <35.146809, 37.797043, 29.676134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773582, 37.895695, 29.780870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336434, 0.340794, 0.877879,
		0.127273, 0.907213, -0.400957,
		-0.933067, 0.246626, 0.261843,
		34.493664, 37.969681, 29.859423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192284, 38.459743, 29.941971>,  <35.146809, 37.797043, 29.676134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192284, 38.459743, 29.941971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853115, 38.300934, 30.082481>,  <34.649612, 38.205647, 30.166788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.853115, 38.300934, 30.082481>,  <35.192284, 38.459743, 29.941971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853115, 38.300934, 30.082481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320268, 0.144381, 0.936260,
		-0.422435, 0.906381, 0.004730,
		-0.847925, -0.397023, 0.351276,
		34.598736, 38.181828, 30.187864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033566, 38.907303, 30.473488>,  <35.192284, 38.459743, 29.941971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033566, 38.907303, 30.473488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845871, 38.560635, 30.541250>,  <34.733253, 38.352634, 30.581907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845871, 38.560635, 30.541250>,  <35.033566, 38.907303, 30.473488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845871, 38.560635, 30.541250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400574, -0.037938, 0.915479,
		-0.786991, 0.497437, 0.364968,
		-0.469239, -0.866670, 0.169404,
		34.705101, 38.300632, 30.592072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795265, 39.016273, 31.134724>,  <35.033566, 38.907303, 30.473488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795265, 39.016273, 31.134724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.749100, 38.623016, 31.078003>,  <34.721401, 38.387062, 31.043970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.749100, 38.623016, 31.078003>,  <34.795265, 39.016273, 31.134724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749100, 38.623016, 31.078003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334358, -0.172876, 0.926455,
		-0.935352, 0.059515, 0.348674,
		-0.115415, -0.983144, -0.141801,
		34.714474, 38.328072, 31.035463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.190708, 37.415703, 23.486946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362389, 37.061497, 23.558107>,  <32.465397, 36.848972, 23.600803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362389, 37.061497, 23.558107>,  <32.190708, 37.415703, 23.486946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362389, 37.061497, 23.558107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324157, 0.032824, 0.945434,
		-0.843038, -0.463445, -0.272958,
		0.429197, -0.885517, 0.177901,
		32.491146, 36.795841, 23.611477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780922, 37.056152, 23.990099>,  <32.190708, 37.415703, 23.486946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780922, 37.056152, 23.990099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129810, 36.864536, 24.029604>,  <32.339142, 36.749569, 24.053307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129810, 36.864536, 24.029604>,  <31.780922, 37.056152, 23.990099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129810, 36.864536, 24.029604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112760, -0.000453, 0.993622,
		-0.475938, -0.877794, -0.054411,
		0.872220, -0.479038, 0.098764,
		32.391476, 36.720825, 24.059233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700508, 36.585140, 24.542612>,  <31.780922, 37.056152, 23.990099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700508, 36.585140, 24.542612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097843, 36.611412, 24.504730>,  <32.336243, 36.627174, 24.482002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097843, 36.611412, 24.504730>,  <31.700508, 36.585140, 24.542612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097843, 36.611412, 24.504730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100352, -0.088849, 0.990977,
		0.056671, -0.993877, -0.094848,
		0.993337, 0.065678, -0.094703,
		32.395844, 36.631115, 24.476320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975105, 36.213989, 25.116953>,  <31.700508, 36.585140, 24.542612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975105, 36.213989, 25.116953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298706, 36.419666, 25.003029>,  <32.492867, 36.543072, 24.934675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298706, 36.419666, 25.003029>,  <31.975105, 36.213989, 25.116953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298706, 36.419666, 25.003029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365757, -0.061055, 0.928706,
		0.460148, -0.855497, -0.237465,
		0.809003, 0.514196, -0.284809,
		32.541409, 36.573925, 24.917585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718464, 35.966000, 25.341280>,  <31.975105, 36.213989, 25.116953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718464, 35.966000, 25.341280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809441, 36.352730, 25.294765>,  <32.864025, 36.584766, 25.266857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809441, 36.352730, 25.294765>,  <32.718464, 35.966000, 25.341280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809441, 36.352730, 25.294765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162053, 0.080175, 0.983520,
		0.960214, -0.242534, -0.138442,
		0.227437, 0.966824, -0.116288,
		32.877670, 36.642776, 25.259878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216702, 36.064507, 25.791180>,  <32.718464, 35.966000, 25.341280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216702, 36.064507, 25.791180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106133, 36.443172, 25.724951>,  <33.039791, 36.670372, 25.685213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106133, 36.443172, 25.724951>,  <33.216702, 36.064507, 25.791180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106133, 36.443172, 25.724951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318129, 0.252708, 0.913746,
		0.906853, 0.199911, -0.371017,
		-0.276427, 0.946665, -0.165571,
		33.023205, 36.727173, 25.675280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724255, 36.472820, 25.950161>,  <33.216702, 36.064507, 25.791180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724255, 36.472820, 25.950161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435341, 36.749065, 25.964911>,  <33.261993, 36.914814, 25.973761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435341, 36.749065, 25.964911>,  <33.724255, 36.472820, 25.950161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435341, 36.749065, 25.964911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376145, 0.347533, 0.858916,
		0.580364, 0.634250, -0.510788,
		-0.722282, 0.690614, 0.036874,
		33.218655, 36.956249, 25.975973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081783, 37.161514, 26.229410>,  <33.724255, 36.472820, 25.950161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081783, 37.161514, 26.229410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687729, 37.146027, 26.296343>,  <33.451294, 37.136734, 26.336502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687729, 37.146027, 26.296343>,  <34.081783, 37.161514, 26.229410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687729, 37.146027, 26.296343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150736, 0.272081, 0.950395,
		-0.082329, 0.961495, -0.262201,
		-0.985140, -0.038722, 0.167332,
		33.392185, 37.134411, 26.346542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941391, 37.805428, 26.390478>,  <34.081783, 37.161514, 26.229410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941391, 37.805428, 26.390478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653362, 37.575058, 26.545303>,  <33.480545, 37.436836, 26.638199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653362, 37.575058, 26.545303>,  <33.941391, 37.805428, 26.390478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653362, 37.575058, 26.545303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256705, 0.297139, 0.919680,
		-0.644672, 0.761594, -0.066119,
		-0.720069, -0.575919, 0.387062,
		33.437340, 37.402283, 26.661423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811943, 38.554134, 26.261780>,  <33.941391, 37.805428, 26.390478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811943, 38.554134, 26.261780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117237, 38.801975, 26.188498>,  <34.300415, 38.950680, 26.144527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117237, 38.801975, 26.188498>,  <33.811943, 38.554134, 26.261780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117237, 38.801975, 26.188498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101977, -0.164478, -0.981095,
		-0.638019, 0.767492, -0.062351,
		0.763238, 0.619599, -0.183207,
		34.346207, 38.987854, 26.133535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593266, 38.815952, 25.627209>,  <33.811943, 38.554134, 26.261780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593266, 38.815952, 25.627209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975864, 38.931686, 25.642134>,  <34.205425, 39.001125, 25.651089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975864, 38.931686, 25.642134>,  <33.593266, 38.815952, 25.627209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975864, 38.931686, 25.642134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028863, 0.033419, -0.999025,
		-0.290301, 0.956644, 0.023614,
		0.956500, 0.289336, 0.037313,
		34.262814, 39.018486, 25.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645138, 39.372467, 25.237013>,  <33.593266, 38.815952, 25.627209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645138, 39.372467, 25.237013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013176, 39.215992, 25.245058>,  <34.233997, 39.122108, 25.249886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013176, 39.215992, 25.245058>,  <33.645138, 39.372467, 25.237013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013176, 39.215992, 25.245058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109687, 0.208023, -0.971954,
		0.376029, 0.896494, 0.234308,
		0.920093, -0.391183, 0.020111,
		34.289204, 39.098637, 25.251091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990925, 39.783623, 24.780952>,  <33.645138, 39.372467, 25.237013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990925, 39.783623, 24.780952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248116, 39.481819, 24.833563>,  <34.402428, 39.300735, 24.865129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248116, 39.481819, 24.833563>,  <33.990925, 39.783623, 24.780952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248116, 39.481819, 24.833563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194510, -0.005231, -0.980887,
		0.740777, 0.656267, 0.143397,
		0.642974, -0.754510, 0.131525,
		34.441010, 39.255466, 24.873020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704529, 39.999409, 24.545782>,  <33.990925, 39.783623, 24.780952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704529, 39.999409, 24.545782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611485, 39.611214, 24.520327>,  <34.555656, 39.378296, 24.505054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611485, 39.611214, 24.520327>,  <34.704529, 39.999409, 24.545782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611485, 39.611214, 24.520327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083519, 0.045258, -0.995478,
		0.968977, -0.236873, 0.070527,
		-0.232610, -0.970486, -0.063637,
		34.541702, 39.320068, 24.501236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189426, 39.802719, 24.104689>,  <34.704529, 39.999409, 24.545782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189426, 39.802719, 24.104689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908634, 39.517975, 24.095943>,  <34.740158, 39.347130, 24.090696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908634, 39.517975, 24.095943>,  <35.189426, 39.802719, 24.104689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908634, 39.517975, 24.095943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144837, -0.112633, -0.983024,
		0.697311, -0.693233, 0.182170,
		-0.701983, -0.711858, -0.021865,
		34.698040, 39.304417, 24.089384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444084, 39.204872, 23.740931>,  <35.189426, 39.802719, 24.104689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444084, 39.204872, 23.740931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046104, 39.171360, 23.718813>,  <34.807316, 39.151253, 23.705542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046104, 39.171360, 23.718813>,  <35.444084, 39.204872, 23.740931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046104, 39.171360, 23.718813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067108, -0.145484, -0.987082,
		0.074657, -0.985807, 0.150372,
		-0.994949, -0.083784, -0.055294,
		34.747620, 39.146225, 23.702225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317719, 38.540756, 23.421432>,  <35.444084, 39.204872, 23.740931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317719, 38.540756, 23.421432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977596, 38.746655, 23.377598>,  <34.773521, 38.870193, 23.351297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977596, 38.746655, 23.377598>,  <35.317719, 38.540756, 23.421432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977596, 38.746655, 23.377598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024458, -0.246655, -0.968795,
		-0.525715, -0.821095, 0.222323,
		-0.850309, 0.514748, -0.109587,
		34.722504, 38.901077, 23.344721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879597, 38.145409, 22.989244>,  <35.317719, 38.540756, 23.421432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879597, 38.145409, 22.989244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691620, 38.497314, 22.960499>,  <34.578835, 38.708458, 22.943253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691620, 38.497314, 22.960499>,  <34.879597, 38.145409, 22.989244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691620, 38.497314, 22.960499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135503, -0.152349, -0.978994,
		-0.872233, -0.450335, 0.190806,
		-0.469945, 0.879766, -0.071862,
		34.550636, 38.761246, 22.938940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256889, 37.962341, 22.594120>,  <34.879597, 38.145409, 22.989244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256889, 37.962341, 22.594120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297684, 38.356270, 22.537945>,  <34.322163, 38.592628, 22.504240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297684, 38.356270, 22.537945>,  <34.256889, 37.962341, 22.594120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297684, 38.356270, 22.537945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167176, -0.122197, -0.978325,
		-0.980638, 0.123255, 0.152176,
		0.101988, 0.984823, -0.140436,
		34.328281, 38.651718, 22.495813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782291, 38.190197, 22.059587>,  <34.256889, 37.962341, 22.594120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782291, 38.190197, 22.059587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057625, 38.480263, 22.066942>,  <34.222824, 38.654301, 22.071356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057625, 38.480263, 22.066942>,  <33.782291, 38.190197, 22.059587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057625, 38.480263, 22.066942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124197, 0.142787, -0.981930,
		-0.714685, 0.673610, 0.188348,
		0.688331, 0.725163, 0.018387,
		34.264126, 38.697811, 22.072458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481441, 38.738503, 21.616543>,  <33.782291, 38.190197, 22.059587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481441, 38.738503, 21.616543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869835, 38.823486, 21.660460>,  <34.102871, 38.874477, 21.686810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869835, 38.823486, 21.660460>,  <33.481441, 38.738503, 21.616543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869835, 38.823486, 21.660460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085631, 0.119789, -0.989099,
		-0.223297, 0.969799, 0.098120,
		0.970982, 0.212461, 0.109794,
		34.161129, 38.887226, 21.693398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637306, 39.354889, 21.218508>,  <33.481441, 38.738503, 21.616543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637306, 39.354889, 21.218508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989876, 39.175007, 21.276272>,  <34.201420, 39.067078, 21.310930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989876, 39.175007, 21.276272>,  <33.637306, 39.354889, 21.218508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989876, 39.175007, 21.276272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249089, 0.182803, -0.951072,
		0.401301, 0.874271, 0.273144,
		0.881426, -0.449703, 0.144412,
		34.254303, 39.040096, 21.319595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189163, 39.752659, 20.946205>,  <33.637306, 39.354889, 21.218508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189163, 39.752659, 20.946205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336731, 39.382233, 20.977957>,  <34.425270, 39.159977, 20.997007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336731, 39.382233, 20.977957>,  <34.189163, 39.752659, 20.946205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336731, 39.382233, 20.977957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254431, 0.018476, -0.966914,
		0.893959, 0.376912, 0.242436,
		0.368921, -0.926065, 0.079381,
		34.447407, 39.104412, 21.001772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.819397, 31.625269, 22.901337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754086, 31.986485, 22.742411>,  <37.714897, 32.203213, 22.647055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754086, 31.986485, 22.742411>,  <37.819397, 31.625269, 22.901337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754086, 31.986485, 22.742411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099355, 0.415725, 0.904047,
		0.981564, 0.108136, -0.157600,
		-0.163278, 0.903039, -0.397317,
		37.705101, 32.257397, 22.623215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431721, 32.009129, 22.944967>,  <37.819397, 31.625269, 22.901337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431721, 32.009129, 22.944967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103264, 32.237251, 22.936253>,  <37.906189, 32.374123, 22.931025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103264, 32.237251, 22.936253>,  <38.431721, 32.009129, 22.944967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103264, 32.237251, 22.936253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248234, 0.391268, 0.886165,
		0.513909, 0.722261, -0.462857,
		-0.821144, 0.570305, -0.021786,
		37.856922, 32.408344, 22.929716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753590, 32.661022, 23.135113>,  <38.431721, 32.009129, 22.944967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753590, 32.661022, 23.135113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357544, 32.666019, 23.191004>,  <38.119919, 32.669018, 23.224539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357544, 32.666019, 23.191004>,  <38.753590, 32.661022, 23.135113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357544, 32.666019, 23.191004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137134, 0.296196, 0.945231,
		-0.029575, 0.955045, -0.294981,
		-0.990111, 0.012496, 0.139729,
		38.060513, 32.669769, 23.232922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568150, 33.320869, 23.519409>,  <38.753590, 32.661022, 23.135113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568150, 33.320869, 23.519409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243549, 33.094910, 23.579224>,  <38.048790, 32.959335, 23.615112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243549, 33.094910, 23.579224>,  <38.568150, 33.320869, 23.519409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243549, 33.094910, 23.579224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119811, 0.411311, 0.903587,
		-0.571938, 0.715344, -0.401459,
		-0.811500, -0.564895, 0.149538,
		38.000099, 32.925442, 23.624084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133846, 33.760540, 23.834597>,  <38.568150, 33.320869, 23.519409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133846, 33.760540, 23.834597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958946, 33.408264, 23.907488>,  <37.854008, 33.196899, 23.951223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958946, 33.408264, 23.907488>,  <38.133846, 33.760540, 23.834597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958946, 33.408264, 23.907488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247980, 0.312834, 0.916865,
		-0.864478, 0.355705, -0.355178,
		-0.437246, -0.880686, 0.182230,
		37.827774, 33.144058, 23.962156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522316, 33.888523, 24.091881>,  <38.133846, 33.760540, 23.834597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522316, 33.888523, 24.091881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624638, 33.526764, 24.228483>,  <37.686031, 33.309708, 24.310444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624638, 33.526764, 24.228483>,  <37.522316, 33.888523, 24.091881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624638, 33.526764, 24.228483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292886, 0.264153, 0.918935,
		-0.921295, -0.335085, -0.197316,
		0.255800, -0.904401, 0.341505,
		37.701378, 33.255444, 24.330935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031445, 33.775635, 24.525654>,  <37.522316, 33.888523, 24.091881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031445, 33.775635, 24.525654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346325, 33.554729, 24.635435>,  <37.535252, 33.422188, 24.701303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346325, 33.554729, 24.635435>,  <37.031445, 33.775635, 24.525654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346325, 33.554729, 24.635435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222452, 0.160791, 0.961593,
		-0.575179, -0.818019, 0.003724,
		0.787200, -0.552259, 0.274454,
		37.582485, 33.389053, 24.717772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835770, 33.413967, 25.156124>,  <37.031445, 33.775635, 24.525654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835770, 33.413967, 25.156124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229561, 33.345207, 25.141973>,  <37.465836, 33.303951, 25.133482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229561, 33.345207, 25.141973>,  <36.835770, 33.413967, 25.156124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229561, 33.345207, 25.141973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078068, 0.248392, 0.965509,
		-0.157186, -0.953284, 0.257957,
		0.984479, -0.171903, -0.035377,
		37.524906, 33.293636, 25.131361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007740, 33.177666, 25.807425>,  <36.835770, 33.413967, 25.156124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007740, 33.177666, 25.807425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363853, 33.293537, 25.666862>,  <37.577522, 33.363060, 25.582525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363853, 33.293537, 25.666862>,  <37.007740, 33.177666, 25.807425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363853, 33.293537, 25.666862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262229, 0.304793, 0.915608,
		0.372339, -0.907296, 0.195389,
		0.890280, 0.289680, -0.351406,
		37.630939, 33.380440, 25.561441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510433, 32.974426, 26.337765>,  <37.007740, 33.177666, 25.807425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510433, 32.974426, 26.337765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708218, 33.248020, 26.123224>,  <37.826889, 33.412178, 25.994501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.708218, 33.248020, 26.123224>,  <37.510433, 32.974426, 26.337765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708218, 33.248020, 26.123224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442937, 0.332647, 0.832558,
		0.747872, -0.649239, -0.138480,
		0.494464, 0.683985, -0.536349,
		37.856556, 33.453217, 25.962320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195721, 32.799713, 26.473190>,  <37.510433, 32.974426, 26.337765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195721, 32.799713, 26.473190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181164, 33.182751, 26.358862>,  <38.172428, 33.412571, 26.290264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181164, 33.182751, 26.358862>,  <38.195721, 32.799713, 26.473190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181164, 33.182751, 26.358862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507711, 0.264068, 0.820060,
		0.860758, -0.115269, -0.495790,
		-0.036395, 0.957591, -0.285822,
		38.170246, 33.470028, 26.273115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849106, 33.101471, 26.566618>,  <38.195721, 32.799713, 26.473190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849106, 33.101471, 26.566618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613419, 33.424519, 26.576189>,  <38.472008, 33.618347, 26.581932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613419, 33.424519, 26.576189>,  <38.849106, 33.101471, 26.566618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613419, 33.424519, 26.576189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442218, 0.297560, 0.846110,
		0.676218, 0.509121, -0.532471,
		-0.589214, 0.807622, 0.023927,
		38.436653, 33.666805, 26.583366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263203, 33.500847, 26.977634>,  <38.849106, 33.101471, 26.566618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263203, 33.500847, 26.977634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915817, 33.695400, 26.939257>,  <38.707386, 33.812130, 26.916229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915817, 33.695400, 26.939257>,  <39.263203, 33.500847, 26.977634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915817, 33.695400, 26.939257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159269, 0.457010, 0.875086,
		0.469472, 0.744699, -0.474362,
		-0.868464, 0.486380, -0.095946,
		38.655277, 33.841312, 26.910473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426926, 34.155685, 27.243664>,  <39.263203, 33.500847, 26.977634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426926, 34.155685, 27.243664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034386, 34.091343, 27.285776>,  <38.798862, 34.052738, 27.311043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034386, 34.091343, 27.285776>,  <39.426926, 34.155685, 27.243664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034386, 34.091343, 27.285776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049349, 0.318499, 0.946638,
		-0.185807, 0.934175, -0.304619,
		-0.981346, -0.160859, 0.105280,
		38.739983, 34.043087, 27.317360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254097, 34.728924, 26.848051>,  <39.426926, 34.155685, 27.243664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254097, 34.728924, 26.848051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430222, 35.081566, 26.780060>,  <39.535896, 35.293152, 26.739265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.430222, 35.081566, 26.780060>,  <39.254097, 34.728924, 26.848051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430222, 35.081566, 26.780060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204098, -0.086081, -0.975158,
		-0.874338, 0.464069, 0.142031,
		0.440315, 0.881606, -0.169980,
		39.562317, 35.346046, 26.729067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854694, 35.228531, 26.493370>,  <39.254097, 34.728924, 26.848051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854694, 35.228531, 26.493370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217178, 35.368080, 26.397810>,  <39.434669, 35.451809, 26.340473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.217178, 35.368080, 26.397810>,  <38.854694, 35.228531, 26.493370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217178, 35.368080, 26.397810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264480, 0.026853, -0.964017,
		-0.329907, 0.936784, 0.116605,
		0.906207, 0.348876, -0.238901,
		39.489040, 35.472744, 26.326139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751717, 35.803749, 26.001263>,  <38.854694, 35.228531, 26.493370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751717, 35.803749, 26.001263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.122478, 35.660328, 25.956909>,  <39.344936, 35.574276, 25.930298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.122478, 35.660328, 25.956909>,  <38.751717, 35.803749, 26.001263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122478, 35.660328, 25.956909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119483, -0.001842, -0.992834,
		0.355781, 0.933507, -0.044548,
		0.926900, -0.358554, -0.110883,
		39.400547, 35.552761, 25.923645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892033, 36.037174, 25.356895>,  <38.751717, 35.803749, 26.001263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892033, 36.037174, 25.356895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215370, 35.806019, 25.401842>,  <39.409370, 35.667324, 25.428810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215370, 35.806019, 25.401842>,  <38.892033, 36.037174, 25.356895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215370, 35.806019, 25.401842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044609, -0.130194, -0.990485,
		0.587022, 0.805662, -0.079462,
		0.808341, -0.577891, 0.112366,
		39.457874, 35.632652, 25.435553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418415, 36.282883, 24.910826>,  <38.892033, 36.037174, 25.356895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418415, 36.282883, 24.910826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491722, 35.896572, 24.984240>,  <39.535706, 35.664783, 25.028288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491722, 35.896572, 24.984240>,  <39.418415, 36.282883, 24.910826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491722, 35.896572, 24.984240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202701, -0.145561, -0.968362,
		0.961939, 0.214668, 0.169088,
		0.183264, -0.965779, 0.183534,
		39.546700, 35.606838, 25.039299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013638, 36.092052, 24.530813>,  <39.418415, 36.282883, 24.910826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013638, 36.092052, 24.530813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813713, 35.750336, 24.587906>,  <39.693760, 35.545303, 24.622162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813713, 35.750336, 24.587906>,  <40.013638, 36.092052, 24.530813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813713, 35.750336, 24.587906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197143, -0.272673, -0.941692,
		0.843402, -0.442526, 0.304703,
		-0.499808, -0.854295, 0.142732,
		39.663773, 35.494049, 24.630726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484161, 35.521053, 24.277151>,  <40.013638, 36.092052, 24.530813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484161, 35.521053, 24.277151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098251, 35.419659, 24.248972>,  <39.866707, 35.358822, 24.232063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098251, 35.419659, 24.248972>,  <40.484161, 35.521053, 24.277151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098251, 35.419659, 24.248972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139188, -0.264539, -0.954278,
		0.223258, -0.930465, 0.290501,
		-0.964771, -0.253484, -0.070449,
		39.808819, 35.343613, 24.227837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469471, 35.039387, 23.722160>,  <40.484161, 35.521053, 24.277151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469471, 35.039387, 23.722160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077019, 35.060429, 23.796589>,  <39.841549, 35.073051, 23.841246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077019, 35.060429, 23.796589>,  <40.469471, 35.039387, 23.722160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077019, 35.060429, 23.796589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190326, -0.432634, -0.881251,
		0.034147, -0.900034, 0.434480,
		-0.981127, 0.052600, 0.186073,
		39.782681, 35.076210, 23.852411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205616, 34.356548, 23.537390>,  <40.469471, 35.039387, 23.722160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205616, 34.356548, 23.537390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906967, 34.622471, 23.527740>,  <39.727776, 34.782024, 23.521952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.906967, 34.622471, 23.527740>,  <40.205616, 34.356548, 23.537390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906967, 34.622471, 23.527740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306318, -0.375752, -0.874631,
		-0.590526, -0.645633, 0.484188,
		-0.746625, 0.664808, -0.024122,
		39.682980, 34.821915, 23.520504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629005, 33.985153, 23.217438>,  <40.205616, 34.356548, 23.537390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629005, 33.985153, 23.217438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470802, 34.351704, 23.192699>,  <39.375881, 34.571632, 23.177856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470802, 34.351704, 23.192699>,  <39.629005, 33.985153, 23.217438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470802, 34.351704, 23.192699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396900, -0.231250, -0.888253,
		-0.828276, -0.326768, 0.455172,
		-0.395512, 0.916377, -0.061844,
		39.352150, 34.626617, 23.174147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880394, 33.931702, 22.976858>,  <39.629005, 33.985153, 23.217438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880394, 33.931702, 22.976858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993313, 34.308102, 22.902203>,  <39.061066, 34.533939, 22.857409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.993313, 34.308102, 22.902203>,  <38.880394, 33.931702, 22.976858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993313, 34.308102, 22.902203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354660, -0.078397, -0.931703,
		-0.891360, 0.329213, 0.311602,
		0.282300, 0.940996, -0.186639,
		39.078003, 34.590401, 22.846210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370129, 34.206768, 22.596653>,  <38.880394, 33.931702, 22.976858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370129, 34.206768, 22.596653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676933, 34.449543, 22.513399>,  <38.861015, 34.595207, 22.463448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676933, 34.449543, 22.513399>,  <38.370129, 34.206768, 22.596653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676933, 34.449543, 22.513399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292004, 0.041349, -0.955523,
		-0.571334, 0.793675, 0.208943,
		0.767014, 0.606935, -0.208133,
		38.907036, 34.631622, 22.450960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003948, 34.558971, 22.029278>,  <38.370129, 34.206768, 22.596653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003948, 34.558971, 22.029278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397846, 34.619759, 21.995392>,  <38.634186, 34.656231, 21.975060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397846, 34.619759, 21.995392>,  <38.003948, 34.558971, 22.029278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397846, 34.619759, 21.995392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038327, -0.285472, -0.957621,
		-0.169709, 0.946262, -0.275293,
		0.984749, 0.151966, -0.084715,
		38.693272, 34.665348, 21.969978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070312, 35.004749, 21.497343>,  <38.003948, 34.558971, 22.029278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070312, 35.004749, 21.497343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413853, 34.802711, 21.531401>,  <38.619976, 34.681488, 21.551836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.413853, 34.802711, 21.531401>,  <38.070312, 35.004749, 21.497343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413853, 34.802711, 21.531401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020273, -0.199616, -0.979664,
		0.511820, 0.839662, -0.181681,
		0.858854, -0.505095, 0.085145,
		38.671509, 34.651184, 21.556944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574436, 35.667267, 21.625912>,  <38.070312, 35.004749, 21.497343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574436, 35.667267, 21.625912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.433327, 36.039570, 21.587458>,  <38.348660, 36.262951, 21.564384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.433327, 36.039570, 21.587458>,  <38.574436, 35.667267, 21.625912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433327, 36.039570, 21.587458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213827, 0.180211, 0.960105,
		0.910948, 0.318148, -0.262595,
		-0.352778, 0.930755, -0.096135,
		38.327492, 36.318798, 21.558617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100544, 36.090706, 21.820749>,  <38.574436, 35.667267, 21.625912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100544, 36.090706, 21.820749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764641, 36.300388, 21.877337>,  <38.563099, 36.426197, 21.911289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.764641, 36.300388, 21.877337>,  <39.100544, 36.090706, 21.820749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764641, 36.300388, 21.877337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282278, 0.198928, 0.938481,
		0.463816, 0.828030, -0.315024,
		-0.839758, 0.524207, 0.141469,
		38.512714, 36.457649, 21.919777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281586, 36.820267, 22.098122>,  <39.100544, 36.090706, 21.820749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281586, 36.820267, 22.098122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899006, 36.740322, 22.183224>,  <38.669460, 36.692356, 22.234285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899006, 36.740322, 22.183224>,  <39.281586, 36.820267, 22.098122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899006, 36.740322, 22.183224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114749, 0.412751, 0.903587,
		-0.268403, 0.888647, -0.371842,
		-0.956448, -0.199857, 0.212755,
		38.612072, 36.680367, 22.247049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928551, 37.517799, 22.264585>,  <39.281586, 36.820267, 22.098122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928551, 37.517799, 22.264585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711250, 37.214104, 22.407940>,  <38.580872, 37.031887, 22.493952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.711250, 37.214104, 22.407940>,  <38.928551, 37.517799, 22.264585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711250, 37.214104, 22.407940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201327, 0.532217, 0.822321,
		-0.815075, 0.374573, -0.441981,
		-0.543250, -0.759236, 0.358386,
		38.548275, 36.986332, 22.515455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291039, 37.905655, 22.405323>,  <38.928551, 37.517799, 22.264585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291039, 37.905655, 22.405323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258884, 37.564610, 22.611853>,  <38.239594, 37.359982, 22.735771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258884, 37.564610, 22.611853>,  <38.291039, 37.905655, 22.405323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258884, 37.564610, 22.611853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414880, 0.499616, 0.760433,
		-0.906318, -0.153087, -0.393893,
		-0.080383, -0.852612, 0.516324,
		38.234768, 37.308826, 22.766750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539589, 37.941669, 22.727400>,  <38.291039, 37.905655, 22.405323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539589, 37.941669, 22.727400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.777283, 37.676380, 22.909401>,  <37.919899, 37.517208, 23.018600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.777283, 37.676380, 22.909401>,  <37.539589, 37.941669, 22.727400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777283, 37.676380, 22.909401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261399, 0.375750, 0.889091,
		-0.760629, -0.647265, 0.049919,
		0.594234, -0.663219, 0.455001,
		37.955551, 37.477413, 23.045900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121548, 37.679512, 23.271513>,  <37.539589, 37.941669, 22.727400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121548, 37.679512, 23.271513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495865, 37.588161, 23.378941>,  <37.720455, 37.533352, 23.443398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495865, 37.588161, 23.378941>,  <37.121548, 37.679512, 23.271513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495865, 37.588161, 23.378941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167957, 0.380995, 0.909194,
		-0.309960, -0.895929, 0.318177,
		0.935796, -0.228374, 0.268571,
		37.776604, 37.519650, 23.459513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048645, 37.459255, 23.975412>,  <37.121548, 37.679512, 23.271513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048645, 37.459255, 23.975412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434078, 37.549953, 23.918720>,  <37.665340, 37.604374, 23.884705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434078, 37.549953, 23.918720>,  <37.048645, 37.459255, 23.975412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434078, 37.549953, 23.918720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041695, 0.396144, 0.917241,
		0.264125, -0.889751, 0.372265,
		0.963587, 0.226745, -0.141730,
		37.723152, 37.617977, 23.876202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292793, 37.300064, 24.559202>,  <37.048645, 37.459255, 23.975412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292793, 37.300064, 24.559202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567921, 37.548897, 24.409580>,  <37.732998, 37.698196, 24.319807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567921, 37.548897, 24.409580>,  <37.292793, 37.300064, 24.559202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567921, 37.548897, 24.409580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077382, 0.449534, 0.889905,
		0.721746, -0.641039, 0.261060,
		0.687819, 0.622084, -0.374054,
		37.774265, 37.735523, 24.297363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871529, 37.233124, 25.038790>,  <37.292793, 37.300064, 24.559202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871529, 37.233124, 25.038790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977009, 37.570724, 24.851974>,  <38.040298, 37.773285, 24.739885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977009, 37.570724, 24.851974>,  <37.871529, 37.233124, 25.038790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977009, 37.570724, 24.851974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331754, 0.375287, 0.865505,
		0.905760, -0.383176, -0.181037,
		0.263700, 0.844000, -0.467040,
		38.056118, 37.823925, 24.711863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539742, 37.363499, 25.230534>,  <37.871529, 37.233124, 25.038790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539742, 37.363499, 25.230534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408318, 37.724781, 25.120071>,  <38.329464, 37.941551, 25.053793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.408318, 37.724781, 25.120071>,  <38.539742, 37.363499, 25.230534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408318, 37.724781, 25.120071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367153, 0.391532, 0.843742,
		0.870201, 0.175825, -0.460257,
		-0.328557, 0.903210, -0.276157,
		38.309750, 37.995743, 25.037224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042011, 37.793171, 25.584482>,  <38.539742, 37.363499, 25.230534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042011, 37.793171, 25.584482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755482, 38.052288, 25.480753>,  <38.583565, 38.207756, 25.418516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755482, 38.052288, 25.480753>,  <39.042011, 37.793171, 25.584482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755482, 38.052288, 25.480753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215531, 0.558887, 0.800745,
		0.663645, 0.517702, -0.539964,
		-0.716325, 0.647789, -0.259321,
		38.540585, 38.246624, 25.402956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287476, 38.479973, 25.559660>,  <39.042011, 37.793171, 25.584482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287476, 38.479973, 25.559660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.897476, 38.489670, 25.648014>,  <38.663475, 38.495487, 25.701027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.897476, 38.489670, 25.648014>,  <39.287476, 38.479973, 25.559660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897476, 38.489670, 25.648014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199491, 0.533358, 0.822030,
		-0.097882, 0.845542, -0.524859,
		-0.974999, 0.024242, 0.220884,
		38.604977, 38.496944, 25.714279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132885, 39.199303, 25.702583>,  <39.287476, 38.479973, 25.559660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132885, 39.199303, 25.702583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.876175, 38.945446, 25.874792>,  <38.722149, 38.793133, 25.978117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.876175, 38.945446, 25.874792>,  <39.132885, 39.199303, 25.702583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876175, 38.945446, 25.874792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054529, 0.522201, 0.851077,
		-0.764949, 0.569679, -0.300531,
		-0.641779, -0.634643, 0.430521,
		38.683640, 38.755054, 26.003948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.021370, 39.781445, 20.745905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903511, 39.399551, 20.729609>,  <34.832794, 39.170414, 20.719830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903511, 39.399551, 20.729609>,  <35.021370, 39.781445, 20.745905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903511, 39.399551, 20.729609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533130, -0.128850, -0.836164,
		0.793067, -0.268096, 0.546964,
		-0.294648, -0.954737, -0.040743,
		34.815117, 39.113129, 20.717386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584003, 39.431461, 20.589565>,  <35.021370, 39.781445, 20.745905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584003, 39.431461, 20.589565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.297745, 39.172150, 20.485584>,  <35.125988, 39.016563, 20.423195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.297745, 39.172150, 20.485584>,  <35.584003, 39.431461, 20.589565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297745, 39.172150, 20.485584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496597, -0.210548, -0.842058,
		0.491157, -0.731711, 0.472613,
		-0.715651, -0.648281, -0.259953,
		35.083050, 38.977665, 20.407598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920353, 38.941326, 20.157200>,  <35.584003, 39.431461, 20.589565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920353, 38.941326, 20.157200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537540, 38.860870, 20.073639>,  <35.307854, 38.812595, 20.023502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.537540, 38.860870, 20.073639>,  <35.920353, 38.941326, 20.157200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537540, 38.860870, 20.073639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261999, -0.290898, -0.920182,
		0.124314, -0.935372, 0.331096,
		-0.957028, -0.201139, -0.208903,
		35.250431, 38.800529, 20.010967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871338, 38.248936, 19.906584>,  <35.920353, 38.941326, 20.157200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871338, 38.248936, 19.906584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547619, 38.429382, 19.756098>,  <35.353390, 38.537651, 19.665806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.547619, 38.429382, 19.756098>,  <35.871338, 38.248936, 19.906584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547619, 38.429382, 19.756098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159985, -0.446981, -0.880121,
		-0.565199, -0.772464, 0.289567,
		-0.809293, 0.451118, -0.376216,
		35.304832, 38.564716, 19.643232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457821, 37.675812, 19.508764>,  <35.871338, 38.248936, 19.906584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457821, 37.675812, 19.508764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308975, 38.023380, 19.378220>,  <35.219669, 38.231922, 19.299892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308975, 38.023380, 19.378220>,  <35.457821, 37.675812, 19.508764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308975, 38.023380, 19.378220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145339, -0.401818, -0.904112,
		-0.916739, -0.288996, 0.275809,
		-0.372110, 0.868921, -0.326360,
		35.197342, 38.284058, 19.280312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964207, 37.440128, 19.068012>,  <35.457821, 37.675812, 19.508764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964207, 37.440128, 19.068012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056034, 37.816959, 18.970211>,  <35.111130, 38.043060, 18.911531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056034, 37.816959, 18.970211>,  <34.964207, 37.440128, 19.068012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056034, 37.816959, 18.970211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118269, -0.222348, -0.967768,
		-0.966079, 0.251089, 0.060374,
		0.229572, 0.942081, -0.244502,
		35.124905, 38.099583, 18.896860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429440, 37.617081, 18.609846>,  <34.964207, 37.440128, 19.068012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429440, 37.617081, 18.609846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734554, 37.863956, 18.532671>,  <34.917625, 38.012081, 18.486366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.734554, 37.863956, 18.532671>,  <34.429440, 37.617081, 18.609846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734554, 37.863956, 18.532671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026984, -0.267729, -0.963116,
		-0.646081, 0.739863, -0.187567,
		0.762792, 0.617190, -0.192940,
		34.963390, 38.049114, 18.474789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331936, 37.993240, 18.074408>,  <34.429440, 37.617081, 18.609846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331936, 37.993240, 18.074408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.714783, 38.094349, 18.017801>,  <34.944492, 38.155014, 17.983837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.714783, 38.094349, 18.017801>,  <34.331936, 37.993240, 18.074408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714783, 38.094349, 18.017801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050981, -0.333910, -0.941225,
		-0.285166, 0.908081, -0.306706,
		0.957121, 0.252769, -0.141515,
		35.001919, 38.170181, 17.975348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389782, 38.131874, 17.343433>,  <34.331936, 37.993240, 18.074408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389782, 38.131874, 17.343433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767910, 38.069683, 17.458111>,  <34.994789, 38.032368, 17.526917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767910, 38.069683, 17.458111>,  <34.389782, 38.131874, 17.343433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767910, 38.069683, 17.458111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169763, -0.515999, -0.839598,
		0.278472, 0.842361, -0.461391,
		0.945322, -0.155478, 0.286693,
		35.051506, 38.023041, 17.544119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776459, 38.265949, 16.787254>,  <34.389782, 38.131874, 17.343433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776459, 38.265949, 16.787254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018684, 38.044846, 17.016251>,  <35.164021, 37.912182, 17.153648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018684, 38.044846, 17.016251>,  <34.776459, 38.265949, 16.787254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018684, 38.044846, 17.016251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379573, -0.431663, -0.818285,
		0.699438, 0.712829, -0.051588,
		0.605566, -0.552759, 0.572492,
		35.200356, 37.879017, 17.187998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441013, 38.389111, 16.570866>,  <34.776459, 38.265949, 16.787254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441013, 38.389111, 16.570866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398415, 38.026489, 16.734238>,  <35.372856, 37.808914, 16.832260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.398415, 38.026489, 16.734238>,  <35.441013, 38.389111, 16.570866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398415, 38.026489, 16.734238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378253, -0.416819, -0.826551,
		0.919556, 0.066462, 0.387299,
		-0.106499, -0.906556, 0.408428,
		35.366467, 37.754520, 16.856766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965607, 38.134926, 16.273155>,  <35.441013, 38.389111, 16.570866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965607, 38.134926, 16.273155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798611, 37.823391, 16.460394>,  <35.698414, 37.636471, 16.572737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798611, 37.823391, 16.460394>,  <35.965607, 38.134926, 16.273155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798611, 37.823391, 16.460394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320112, -0.608173, -0.726398,
		0.850430, -0.153420, 0.503220,
		-0.417488, -0.778838, 0.468097,
		35.673363, 37.589741, 16.600822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440479, 37.599335, 16.245081>,  <35.965607, 38.134926, 16.273155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440479, 37.599335, 16.245081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074760, 37.442245, 16.284750>,  <35.855331, 37.347992, 16.308552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.074760, 37.442245, 16.284750>,  <36.440479, 37.599335, 16.245081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074760, 37.442245, 16.284750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149342, -0.554427, -0.818723,
		0.376516, -0.733743, 0.565559,
		-0.914294, -0.392724, 0.099172,
		35.800472, 37.324429, 16.314501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394135, 36.798855, 16.288910>,  <36.440479, 37.599335, 16.245081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394135, 36.798855, 16.288910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084705, 36.951046, 16.086203>,  <35.899048, 37.042362, 15.964579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084705, 36.951046, 16.086203>,  <36.394135, 36.798855, 16.288910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084705, 36.951046, 16.086203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077683, -0.736723, -0.671717,
		-0.628921, -0.558993, 0.540356,
		-0.773578, 0.380480, -0.506765,
		35.852631, 37.065189, 15.934173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886810, 36.246475, 16.119913>,  <36.394135, 36.798855, 16.288910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886810, 36.246475, 16.119913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275028, 36.150246, 16.114834>,  <37.507961, 36.092506, 16.111786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275028, 36.150246, 16.114834>,  <36.886810, 36.246475, 16.119913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275028, 36.150246, 16.114834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001182, -0.057457, 0.998347,
		-0.240910, -0.968928, -0.056049,
		0.970547, -0.240578, -0.012696,
		37.566193, 36.078072, 16.111025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961514, 35.809021, 16.605541>,  <36.886810, 36.246475, 16.119913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961514, 35.809021, 16.605541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.340790, 35.925842, 16.555517>,  <37.568356, 35.995937, 16.525503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.340790, 35.925842, 16.555517>,  <36.961514, 35.809021, 16.605541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340790, 35.925842, 16.555517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107133, 0.076649, 0.991286,
		0.299097, -0.953325, 0.041389,
		0.948190, 0.292056, -0.125058,
		37.625248, 36.013458, 16.518000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268654, 35.367207, 17.104589>,  <36.961514, 35.809021, 16.605541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268654, 35.367207, 17.104589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532162, 35.660755, 17.038317>,  <37.690266, 35.836884, 16.998552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.532162, 35.660755, 17.038317>,  <37.268654, 35.367207, 17.104589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532162, 35.660755, 17.038317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254002, -0.009660, 0.967155,
		0.708170, -0.679217, -0.192769,
		0.658770, 0.733874, -0.165682,
		37.729794, 35.880917, 16.988613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855373, 35.144421, 17.439386>,  <37.268654, 35.367207, 17.104589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855373, 35.144421, 17.439386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891228, 35.539547, 17.388494>,  <37.912739, 35.776623, 17.357960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.891228, 35.539547, 17.388494>,  <37.855373, 35.144421, 17.439386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891228, 35.539547, 17.388494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359052, 0.087108, 0.929244,
		0.929003, -0.128974, -0.346869,
		0.089634, 0.987815, -0.127232,
		37.918118, 35.835892, 17.350325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474876, 35.360123, 17.729208>,  <37.855373, 35.144421, 17.439386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474876, 35.360123, 17.729208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.302402, 35.719826, 17.699781>,  <38.198917, 35.935650, 17.682125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.302402, 35.719826, 17.699781>,  <38.474876, 35.360123, 17.729208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302402, 35.719826, 17.699781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249323, 0.197112, 0.948148,
		0.867132, 0.390485, -0.309197,
		-0.431184, 0.899260, -0.073565,
		38.173046, 35.989605, 17.677711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974991, 35.867214, 17.978432>,  <38.474876, 35.360123, 17.729208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974991, 35.867214, 17.978432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.613853, 36.037128, 18.005077>,  <38.397171, 36.139076, 18.021065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.613853, 36.037128, 18.005077>,  <38.974991, 35.867214, 17.978432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613853, 36.037128, 18.005077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218743, 0.320376, 0.921689,
		0.370180, 0.846708, -0.382167,
		-0.902839, 0.424787, 0.066614,
		38.343002, 36.164566, 18.025063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069775, 36.529499, 18.365393>,  <38.974991, 35.867214, 17.978432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069775, 36.529499, 18.365393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674641, 36.474457, 18.394388>,  <38.437561, 36.441433, 18.411785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.674641, 36.474457, 18.394388>,  <39.069775, 36.529499, 18.365393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674641, 36.474457, 18.394388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024856, 0.320400, 0.946956,
		-0.153530, 0.937235, -0.313081,
		-0.987831, -0.137605, 0.072487,
		38.378292, 36.433174, 18.416134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726528, 37.184883, 18.664797>,  <39.069775, 36.529499, 18.365393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726528, 37.184883, 18.664797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472549, 36.883190, 18.731697>,  <38.320164, 36.702175, 18.771837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472549, 36.883190, 18.731697>,  <38.726528, 37.184883, 18.664797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472549, 36.883190, 18.731697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084530, 0.283016, 0.955383,
		-0.767917, 0.592481, -0.243456,
		-0.634948, -0.754234, 0.167250,
		38.282066, 36.656921, 18.781872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264942, 37.436432, 19.161654>,  <38.726528, 37.184883, 18.664797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264942, 37.436432, 19.161654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197735, 37.043842, 19.198471>,  <38.157410, 36.808289, 19.220562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.197735, 37.043842, 19.198471>,  <38.264942, 37.436432, 19.161654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197735, 37.043842, 19.198471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108878, 0.111274, 0.987808,
		-0.979753, 0.155945, -0.125557,
		-0.168015, -0.981478, 0.092042,
		38.147331, 36.749397, 19.226084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693851, 37.422344, 19.665131>,  <38.264942, 37.436432, 19.161654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693851, 37.422344, 19.665131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850300, 37.054924, 19.642189>,  <37.944168, 36.834473, 19.628424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850300, 37.054924, 19.642189>,  <37.693851, 37.422344, 19.665131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850300, 37.054924, 19.642189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052521, -0.084495, 0.995039,
		-0.918838, -0.386172, -0.081291,
		0.391125, -0.918549, -0.057355,
		37.967636, 36.779358, 19.624983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246826, 37.028393, 19.927153>,  <37.693851, 37.422344, 19.665131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246826, 37.028393, 19.927153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593624, 36.829876, 19.945152>,  <37.801701, 36.710766, 19.955952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593624, 36.829876, 19.945152>,  <37.246826, 37.028393, 19.927153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593624, 36.829876, 19.945152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046448, 0.009428, 0.998876,
		-0.496155, -0.868106, -0.014877,
		0.866991, -0.496289, 0.044999,
		37.853722, 36.680988, 19.958652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228020, 36.413902, 20.346344>,  <37.246826, 37.028393, 19.927153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228020, 36.413902, 20.346344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620430, 36.486561, 20.373436>,  <37.855877, 36.530155, 20.389690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620430, 36.486561, 20.373436>,  <37.228020, 36.413902, 20.346344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620430, 36.486561, 20.373436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055273, -0.072785, 0.995815,
		0.185817, -0.980666, -0.061364,
		0.981028, 0.181647, 0.067729,
		37.914738, 36.541054, 20.393755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414959, 35.994114, 20.839376>,  <37.228020, 36.413902, 20.346344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414959, 35.994114, 20.839376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729759, 36.240101, 20.819616>,  <37.918640, 36.387691, 20.807760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729759, 36.240101, 20.819616>,  <37.414959, 35.994114, 20.839376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729759, 36.240101, 20.819616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061493, 0.001482, 0.998107,
		0.613875, -0.788552, -0.036649,
		0.787005, 0.614966, -0.049400,
		37.965862, 36.424591, 20.804796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938713, 35.664085, 21.135624>,  <37.414959, 35.994114, 20.839376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938713, 35.664085, 21.135624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038429, 36.051132, 21.151499>,  <38.098259, 36.283360, 21.161024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038429, 36.051132, 21.151499>,  <37.938713, 35.664085, 21.135624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038429, 36.051132, 21.151499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166888, -0.083291, 0.982451,
		0.953940, -0.238294, -0.182247,
		0.249292, 0.967615, 0.039687,
		38.113216, 36.341415, 21.163404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509441, 35.319016, 20.884356>,  <37.938713, 35.664085, 21.135624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509441, 35.319016, 20.884356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698273, 34.983948, 20.994225>,  <38.811573, 34.782906, 21.060146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698273, 34.983948, 20.994225>,  <38.509441, 35.319016, 20.884356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698273, 34.983948, 20.994225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032214, -0.294976, -0.954961,
		0.880968, 0.459665, -0.112267,
		0.472079, -0.837674, 0.274672,
		38.839897, 34.732647, 21.076626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027882, 35.203007, 20.428453>,  <38.509441, 35.319016, 20.884356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027882, 35.203007, 20.428453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954506, 34.841534, 20.583218>,  <38.910480, 34.624649, 20.676075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954506, 34.841534, 20.583218>,  <39.027882, 35.203007, 20.428453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954506, 34.841534, 20.583218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009940, -0.395273, -0.918510,
		0.982980, -0.164647, 0.081492,
		-0.183442, -0.903687, 0.386909,
		38.899475, 34.570427, 20.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559959, 34.847614, 20.101067>,  <39.027882, 35.203007, 20.428453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559959, 34.847614, 20.101067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.275620, 34.592922, 20.220575>,  <39.105015, 34.440105, 20.292280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.275620, 34.592922, 20.220575>,  <39.559959, 34.847614, 20.101067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275620, 34.592922, 20.220575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130860, -0.297641, -0.945667,
		0.691066, -0.711322, 0.128254,
		-0.710847, -0.636734, 0.298773,
		39.062366, 34.401901, 20.310207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742245, 34.230942, 19.691881>,  <39.559959, 34.847614, 20.101067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742245, 34.230942, 19.691881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383865, 34.143211, 19.846375>,  <39.168839, 34.090572, 19.939070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.383865, 34.143211, 19.846375>,  <39.742245, 34.230942, 19.691881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383865, 34.143211, 19.846375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251365, -0.466547, -0.848027,
		0.366188, -0.856873, 0.362871,
		-0.895947, -0.219324, 0.386232,
		39.115082, 34.077415, 19.962244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716648, 33.545063, 19.601662>,  <39.742245, 34.230942, 19.691881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716648, 33.545063, 19.601662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362968, 33.731262, 19.617136>,  <39.150761, 33.842983, 19.626421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362968, 33.731262, 19.617136>,  <39.716648, 33.545063, 19.601662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362968, 33.731262, 19.617136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247302, -0.396264, -0.884204,
		-0.396264, -0.791383, 0.465497,
		0.884204, -0.465497, -0.038685,
		39.097706, 33.870911, 19.628742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270088, 33.051922, 19.525379>,  <39.716648, 33.545063, 19.601662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270088, 33.051922, 19.525379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067806, 33.384869, 19.434673>,  <38.946438, 33.584637, 19.380249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067806, 33.384869, 19.434673>,  <39.270088, 33.051922, 19.525379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067806, 33.384869, 19.434673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335496, -0.431910, -0.837195,
		-0.794797, -0.347298, 0.497677,
		-0.505708, 0.832369, -0.226764,
		38.916096, 33.634579, 19.366644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621441, 32.824104, 19.294039>,  <39.270088, 33.051922, 19.525379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621441, 32.824104, 19.294039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697018, 33.183125, 19.134693>,  <38.742363, 33.398537, 19.039085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.697018, 33.183125, 19.134693>,  <38.621441, 32.824104, 19.294039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697018, 33.183125, 19.134693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389573, -0.303871, -0.869422,
		-0.901406, 0.319463, 0.292249,
		0.188942, 0.897555, -0.398366,
		38.753700, 33.452393, 19.015182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011761, 32.694920, 19.658661>,  <38.621441, 32.824104, 19.294039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011761, 32.694920, 19.658661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807674, 32.363571, 19.751167>,  <37.685223, 32.164764, 19.806671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.807674, 32.363571, 19.751167>,  <38.011761, 32.694920, 19.658661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807674, 32.363571, 19.751167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220412, 0.385865, 0.895839,
		-0.831321, 0.406100, -0.379458,
		-0.510219, -0.828367, 0.231268,
		37.654610, 32.115063, 19.820547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239273, 32.863445, 19.842976>,  <38.011761, 32.694920, 19.658661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239273, 32.863445, 19.842976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311378, 32.504436, 20.003956>,  <37.354641, 32.289032, 20.100544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311378, 32.504436, 20.003956>,  <37.239273, 32.863445, 19.842976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311378, 32.504436, 20.003956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254433, 0.352680, 0.900489,
		-0.950143, -0.264717, -0.164785,
		0.180259, -0.897520, 0.402449,
		37.365456, 32.235180, 20.124691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922985, 32.849167, 20.454288>,  <37.239273, 32.863445, 19.842976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922985, 32.849167, 20.454288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119102, 32.506878, 20.520445>,  <37.236774, 32.301506, 20.560139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.119102, 32.506878, 20.520445>,  <36.922985, 32.849167, 20.454288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119102, 32.506878, 20.520445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103563, 0.131217, 0.985929,
		-0.865380, -0.500527, -0.024285,
		0.490298, -0.855719, 0.165389,
		37.266193, 32.250164, 20.570061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570015, 32.572300, 21.007561>,  <36.922985, 32.849167, 20.454288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570015, 32.572300, 21.007561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935616, 32.410015, 21.007256>,  <37.154976, 32.312645, 21.007072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935616, 32.410015, 21.007256>,  <36.570015, 32.572300, 21.007561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935616, 32.410015, 21.007256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076082, 0.169553, 0.982580,
		-0.398512, -0.898138, 0.185839,
		0.914002, -0.405709, -0.000763,
		37.209816, 32.288303, 21.007027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633667, 32.206852, 21.611132>,  <36.570015, 32.572300, 21.007561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633667, 32.206852, 21.611132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024254, 32.194653, 21.525738>,  <37.258606, 32.187332, 21.474501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024254, 32.194653, 21.525738>,  <36.633667, 32.206852, 21.611132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024254, 32.194653, 21.525738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215601, 0.159950, 0.963292,
		0.004765, -0.986654, 0.162763,
		0.976470, -0.030501, -0.213486,
		37.317196, 32.185501, 21.461693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942825, 31.641857, 21.901211>,  <36.633667, 32.206852, 21.611132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942825, 31.641857, 21.901211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222485, 31.923067, 21.849129>,  <37.390278, 32.091793, 21.817879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.222485, 31.923067, 21.849129>,  <36.942825, 31.641857, 21.901211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222485, 31.923067, 21.849129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206543, -0.024243, 0.978137,
		0.684497, -0.710753, -0.162154,
		0.699145, 0.703024, -0.130207,
		37.432228, 32.133976, 21.810066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392857, 31.448225, 22.332775>,  <36.942825, 31.641857, 21.901211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392857, 31.448225, 22.332775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490520, 31.829212, 22.259901>,  <37.549118, 32.057804, 22.216177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490520, 31.829212, 22.259901>,  <37.392857, 31.448225, 22.332775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490520, 31.829212, 22.259901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126684, 0.154933, 0.979769,
		0.961425, -0.262296, -0.082835,
		0.244156, 0.952468, -0.182185,
		37.563766, 32.114952, 22.205246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.059578, 34.470375, 17.258263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240585, 34.824303, 17.302662>,  <34.349190, 35.036659, 17.329302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240585, 34.824303, 17.302662>,  <34.059578, 34.470375, 17.258263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240585, 34.824303, 17.302662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053909, -0.097100, 0.993814,
		0.890122, -0.455707, 0.003760,
		0.452523, 0.884818, 0.110997,
		34.376343, 35.089748, 17.335960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596012, 34.409809, 17.849470>,  <34.059578, 34.470375, 17.258263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596012, 34.409809, 17.849470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.490768, 34.794224, 17.815592>,  <34.427624, 35.024872, 17.795265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.490768, 34.794224, 17.815592>,  <34.596012, 34.409809, 17.849470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490768, 34.794224, 17.815592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175578, 0.038624, 0.983708,
		0.948655, 0.273694, 0.158575,
		-0.263110, 0.961041, -0.084695,
		34.411835, 35.082535, 17.790184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863583, 34.867043, 18.413507>,  <34.596012, 34.409809, 17.849470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863583, 34.867043, 18.413507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562473, 35.094063, 18.280107>,  <34.381809, 35.230274, 18.200068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562473, 35.094063, 18.280107>,  <34.863583, 34.867043, 18.413507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562473, 35.094063, 18.280107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122455, 0.377046, 0.918064,
		0.646794, 0.731929, -0.214329,
		-0.752769, 0.567553, -0.333499,
		34.336643, 35.264328, 18.180058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842175, 35.417778, 18.853043>,  <34.863583, 34.867043, 18.413507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842175, 35.417778, 18.853043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.479675, 35.433880, 18.684717>,  <34.262177, 35.443542, 18.583721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.479675, 35.433880, 18.684717>,  <34.842175, 35.417778, 18.853043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479675, 35.433880, 18.684717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393626, 0.282650, 0.874739,
		0.154158, 0.958378, -0.240306,
		-0.906253, 0.040257, -0.420815,
		34.207798, 35.445957, 18.558472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534206, 36.044090, 19.177189>,  <34.842175, 35.417778, 18.853043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534206, 36.044090, 19.177189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245033, 35.821144, 19.013863>,  <34.071529, 35.687378, 18.915867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245033, 35.821144, 19.013863>,  <34.534206, 36.044090, 19.177189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245033, 35.821144, 19.013863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582370, 0.173562, 0.794180,
		-0.371777, 0.811926, -0.450064,
		-0.722929, -0.557361, -0.408315,
		34.028156, 35.653934, 18.891369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903839, 36.415607, 19.161512>,  <34.534206, 36.044090, 19.177189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903839, 36.415607, 19.161512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.761112, 36.044510, 19.117752>,  <33.675476, 35.821850, 19.091496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.761112, 36.044510, 19.117752>,  <33.903839, 36.415607, 19.161512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761112, 36.044510, 19.117752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637198, 0.156073, 0.754732,
		-0.683125, 0.339011, -0.646847,
		-0.356818, -0.927746, -0.109400,
		33.654068, 35.766186, 19.084932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299179, 36.598610, 19.427820>,  <33.903839, 36.415607, 19.161512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299179, 36.598610, 19.427820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.287811, 36.198811, 19.433369>,  <33.280991, 35.958931, 19.436697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.287811, 36.198811, 19.433369>,  <33.299179, 36.598610, 19.427820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287811, 36.198811, 19.433369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424987, 0.024640, 0.904864,
		-0.904754, 0.019818, -0.425474,
		-0.028416, -0.999500, 0.013871,
		33.279285, 35.898960, 19.437531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632751, 36.433804, 19.621485>,  <33.299179, 36.598610, 19.427820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632751, 36.433804, 19.621485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.852352, 36.112183, 19.712780>,  <32.984112, 35.919209, 19.767557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.852352, 36.112183, 19.712780>,  <32.632751, 36.433804, 19.621485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852352, 36.112183, 19.712780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385515, -0.001309, 0.922701,
		-0.741603, -0.594554, -0.310694,
		0.549002, -0.804054, 0.228239,
		33.017052, 35.870968, 19.781252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126392, 35.865108, 19.891369>,  <32.632751, 36.433804, 19.621485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126392, 35.865108, 19.891369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.492683, 35.780216, 20.027838>,  <32.712460, 35.729282, 20.109718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.492683, 35.780216, 20.027838>,  <32.126392, 35.865108, 19.891369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492683, 35.780216, 20.027838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337864, 0.052817, 0.939712,
		-0.217454, -0.975791, -0.023338,
		0.915730, -0.212230, 0.341170,
		32.767403, 35.716549, 20.130188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957216, 35.345860, 20.487562>,  <32.126392, 35.865108, 19.891369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957216, 35.345860, 20.487562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.318771, 35.513271, 20.522940>,  <32.535706, 35.613720, 20.544167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.318771, 35.513271, 20.522940>,  <31.957216, 35.345860, 20.487562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318771, 35.513271, 20.522940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179723, 0.183924, 0.966370,
		0.388189, -0.889383, 0.241466,
		0.903886, 0.418531, 0.088445,
		32.589935, 35.638832, 20.549473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172089, 35.056061, 20.984257>,  <31.957216, 35.345860, 20.487562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172089, 35.056061, 20.984257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426170, 35.364967, 20.988579>,  <32.578621, 35.550312, 20.991171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426170, 35.364967, 20.988579>,  <32.172089, 35.056061, 20.984257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426170, 35.364967, 20.988579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084526, 0.055607, 0.994869,
		0.767703, -0.632860, 0.100599,
		0.635206, 0.772267, 0.010803,
		32.616734, 35.596649, 20.991819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679825, 34.949348, 21.525238>,  <32.172089, 35.056061, 20.984257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679825, 34.949348, 21.525238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.687214, 35.345779, 21.472448>,  <32.691647, 35.583637, 21.440775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.687214, 35.345779, 21.472448>,  <32.679825, 34.949348, 21.525238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687214, 35.345779, 21.472448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001399, 0.131973, 0.991252,
		0.999828, -0.018496, 0.001051,
		0.018473, 0.991081, -0.131976,
		32.692757, 35.643105, 21.432856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379169, 34.718700, 21.520325>,  <32.679825, 34.949348, 21.525238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379169, 34.718700, 21.520325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.511410, 34.341560, 21.536983>,  <33.590755, 34.115276, 21.546980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.511410, 34.341560, 21.536983>,  <33.379169, 34.718700, 21.520325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511410, 34.341560, 21.536983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054443, -0.025004, -0.998204,
		0.942198, 0.332277, 0.043065,
		0.330604, -0.942850, 0.041649,
		33.610592, 34.058704, 21.549479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937607, 34.746170, 21.203453>,  <33.379169, 34.718700, 21.520325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937607, 34.746170, 21.203453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835636, 34.359482, 21.194878>,  <33.774456, 34.127468, 21.189732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835636, 34.359482, 21.194878>,  <33.937607, 34.746170, 21.203453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835636, 34.359482, 21.194878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062581, 0.005631, -0.998024,
		0.964934, -0.255762, 0.059063,
		-0.254924, -0.966723, -0.021439,
		33.759159, 34.069466, 21.188446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408672, 34.485386, 20.768293>,  <33.937607, 34.746170, 21.203453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408672, 34.485386, 20.768293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.122776, 34.206470, 20.746632>,  <33.951237, 34.039120, 20.733635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.122776, 34.206470, 20.746632>,  <34.408672, 34.485386, 20.768293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122776, 34.206470, 20.746632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166588, -0.094533, -0.981485,
		0.679259, -0.710529, 0.183727,
		-0.714742, -0.697289, -0.054154,
		33.908352, 33.997284, 20.730385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721294, 33.898628, 20.459686>,  <34.408672, 34.485386, 20.768293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721294, 33.898628, 20.459686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.339870, 33.787960, 20.412064>,  <34.111015, 33.721561, 20.383490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.339870, 33.787960, 20.412064>,  <34.721294, 33.898628, 20.459686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339870, 33.787960, 20.412064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231122, -0.418650, -0.878245,
		0.193139, -0.864978, 0.463153,
		-0.953562, -0.276669, -0.119057,
		34.053802, 33.704960, 20.376347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665825, 33.250038, 20.514250>,  <34.721294, 33.898628, 20.459686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665825, 33.250038, 20.514250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.338917, 33.355343, 20.309212>,  <34.142773, 33.418526, 20.186188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.338917, 33.355343, 20.309212>,  <34.665825, 33.250038, 20.514250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338917, 33.355343, 20.309212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271618, -0.608531, -0.745596,
		-0.508218, -0.748587, 0.425831,
		-0.817275, 0.263262, -0.512596,
		34.093735, 33.434322, 20.155432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441551, 32.495789, 20.293779>,  <34.665825, 33.250038, 20.514250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441551, 32.495789, 20.293779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.282173, 32.786594, 20.070103>,  <34.186546, 32.961079, 19.935896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.282173, 32.786594, 20.070103>,  <34.441551, 32.495789, 20.293779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282173, 32.786594, 20.070103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176405, -0.537553, -0.824572,
		-0.900070, -0.427188, 0.085935,
		-0.398441, 0.727013, -0.559193,
		34.162640, 33.004700, 19.902346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948235, 32.197056, 19.814283>,  <34.441551, 32.495789, 20.293779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948235, 32.197056, 19.814283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.001698, 32.545570, 19.625395>,  <34.033775, 32.754681, 19.512062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.001698, 32.545570, 19.625395>,  <33.948235, 32.197056, 19.814283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001698, 32.545570, 19.625395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097765, -0.485767, -0.868604,
		-0.986193, 0.069932, -0.150109,
		0.133662, 0.871287, -0.472223,
		34.041798, 32.806957, 19.483728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437336, 32.121426, 19.213478>,  <33.948235, 32.197056, 19.814283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437336, 32.121426, 19.213478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.735004, 32.383068, 19.159285>,  <33.913605, 32.540054, 19.126768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.735004, 32.383068, 19.159285>,  <33.437336, 32.121426, 19.213478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735004, 32.383068, 19.159285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185515, -0.397222, -0.898776,
		-0.641710, 0.643710, -0.416947,
		0.744172, 0.654104, -0.135483,
		33.958256, 32.579300, 19.118639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313152, 32.330441, 18.492052>,  <33.437336, 32.121426, 19.213478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313152, 32.330441, 18.492052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.690308, 32.451801, 18.547068>,  <33.916599, 32.524616, 18.580076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.690308, 32.451801, 18.547068>,  <33.313152, 32.330441, 18.492052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690308, 32.451801, 18.547068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271118, -0.459042, -0.846035,
		-0.193551, 0.835003, -0.515081,
		0.942886, 0.303398, 0.137537,
		33.973175, 32.542820, 18.588329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504044, 32.684330, 17.941389>,  <33.313152, 32.330441, 18.492052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504044, 32.684330, 17.941389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.868156, 32.604565, 18.086510>,  <34.086624, 32.556705, 18.173582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.868156, 32.604565, 18.086510>,  <33.504044, 32.684330, 17.941389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868156, 32.604565, 18.086510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230191, -0.484584, -0.843914,
		0.344096, 0.851711, -0.395204,
		0.910280, -0.199416, 0.362799,
		34.141239, 32.544739, 18.195349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949993, 32.969486, 17.518164>,  <33.504044, 32.684330, 17.941389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949993, 32.969486, 17.518164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148983, 32.684208, 17.715694>,  <34.268379, 32.513042, 17.834213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.148983, 32.684208, 17.715694>,  <33.949993, 32.969486, 17.518164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148983, 32.684208, 17.715694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256802, -0.422674, -0.869137,
		0.828594, 0.559193, -0.027121,
		0.497479, -0.713197, 0.493827,
		34.298225, 32.470249, 17.863842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603718, 32.916317, 17.269854>,  <33.949993, 32.969486, 17.518164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603718, 32.916317, 17.269854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.496964, 32.569965, 17.439098>,  <34.432911, 32.362152, 17.540646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.496964, 32.569965, 17.439098>,  <34.603718, 32.916317, 17.269854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496964, 32.569965, 17.439098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202892, -0.479677, -0.853666,
		0.942129, -0.141985, 0.303698,
		-0.266884, -0.865882, 0.423110,
		34.416897, 32.310200, 17.566031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278904, 32.471199, 17.281834>,  <34.603718, 32.916317, 17.269854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278904, 32.471199, 17.281834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.962662, 32.226994, 17.300657>,  <34.772915, 32.080471, 17.311951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.962662, 32.226994, 17.300657>,  <35.278904, 32.471199, 17.281834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962662, 32.226994, 17.300657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341675, -0.503627, -0.793485,
		0.508134, -0.611255, 0.606768,
		-0.790606, -0.610514, 0.047060,
		34.725479, 32.043839, 17.314775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597488, 31.842091, 17.170321>,  <35.278904, 32.471199, 17.281834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597488, 31.842091, 17.170321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214287, 31.789953, 17.068151>,  <34.984367, 31.758671, 17.006851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214287, 31.789953, 17.068151>,  <35.597488, 31.842091, 17.170321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214287, 31.789953, 17.068151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286687, -0.454910, -0.843130,
		-0.006296, -0.880947, 0.473173,
		-0.958004, -0.130345, -0.255420,
		34.926888, 31.750851, 16.991526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167744, 31.546572, 17.452982>,  <35.597488, 31.842091, 17.170321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167744, 31.546572, 17.452982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543243, 31.485096, 17.329613>,  <36.768543, 31.448210, 17.255590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543243, 31.485096, 17.329613>,  <36.167744, 31.546572, 17.452982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543243, 31.485096, 17.329613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291687, -0.122162, 0.948681,
		-0.183484, -0.980538, -0.069849,
		0.938750, -0.153694, -0.308426,
		36.824867, 31.438988, 17.237085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387878, 31.147110, 18.036535>,  <36.167744, 31.546572, 17.452982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387878, 31.147110, 18.036535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720837, 31.255268, 17.843042>,  <36.920612, 31.320164, 17.726946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.720837, 31.255268, 17.843042>,  <36.387878, 31.147110, 18.036535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720837, 31.255268, 17.843042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506565, -0.017284, 0.862029,
		0.224727, -0.962594, -0.151360,
		0.832400, 0.270395, -0.483732,
		36.970558, 31.336386, 17.697922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841415, 30.604513, 18.098942>,  <36.387878, 31.147110, 18.036535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841415, 30.604513, 18.098942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.020229, 30.961124, 18.069729>,  <37.127518, 31.175091, 18.052200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.020229, 30.961124, 18.069729>,  <36.841415, 30.604513, 18.098942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020229, 30.961124, 18.069729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328170, -0.087507, 0.940556,
		0.832142, -0.444432, -0.331692,
		0.447039, 0.891528, -0.073032,
		37.154343, 31.228582, 18.047819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487572, 30.516909, 18.455706>,  <36.841415, 30.604513, 18.098942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487572, 30.516909, 18.455706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409721, 30.909018, 18.441929>,  <37.363010, 31.144283, 18.433662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.409721, 30.909018, 18.441929>,  <37.487572, 30.516909, 18.455706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409721, 30.909018, 18.441929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332784, 0.099020, 0.937790,
		0.922700, 0.171059, -0.345491,
		-0.194627, 0.980272, -0.034440,
		37.351334, 31.203100, 18.431597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998680, 30.768934, 18.950085>,  <37.487572, 30.516909, 18.455706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998680, 30.768934, 18.950085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751400, 31.064917, 18.844032>,  <37.603031, 31.242506, 18.780401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.751400, 31.064917, 18.844032>,  <37.998680, 30.768934, 18.950085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751400, 31.064917, 18.844032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175172, 0.458520, 0.871249,
		0.766253, 0.492163, -0.413077,
		-0.618200, 0.739956, -0.265129,
		37.565941, 31.286903, 18.764494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365719, 31.398355, 19.008062>,  <37.998680, 30.768934, 18.950085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365719, 31.398355, 19.008062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975330, 31.473370, 19.052433>,  <37.741096, 31.518377, 19.079056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975330, 31.473370, 19.052433>,  <38.365719, 31.398355, 19.008062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975330, 31.473370, 19.052433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191047, 0.491781, 0.849501,
		0.104758, 0.850284, -0.515793,
		-0.975975, 0.187533, 0.110926,
		37.682537, 31.529629, 19.085711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283512, 32.160217, 19.253452>,  <38.365719, 31.398355, 19.008062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283512, 32.160217, 19.253452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937222, 31.985758, 19.351667>,  <37.729446, 31.881081, 19.410597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.937222, 31.985758, 19.351667>,  <38.283512, 32.160217, 19.253452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937222, 31.985758, 19.351667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010159, 0.475154, 0.879844,
		-0.500414, 0.764199, -0.406923,
		-0.865727, -0.436152, 0.245536,
		37.677502, 31.854912, 19.425329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114082, 32.818420, 18.763931>,  <38.283512, 32.160217, 19.253452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114082, 32.818420, 18.763931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360443, 33.124779, 18.690100>,  <38.508259, 33.308594, 18.645802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360443, 33.124779, 18.690100>,  <38.114082, 32.818420, 18.763931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360443, 33.124779, 18.690100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218034, -0.059428, -0.974130,
		-0.757049, 0.640215, 0.130389,
		0.615904, 0.765894, -0.184578,
		38.545216, 33.354546, 18.634726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697887, 33.310249, 18.410740>,  <38.114082, 32.818420, 18.763931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697887, 33.310249, 18.410740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077721, 33.401329, 18.324530>,  <38.305618, 33.455978, 18.272804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077721, 33.401329, 18.324530>,  <37.697887, 33.310249, 18.410740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077721, 33.401329, 18.324530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259087, 0.182794, -0.948399,
		-0.176554, 0.956420, 0.232572,
		0.949580, 0.227700, -0.215523,
		38.362595, 33.469639, 18.259872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680813, 33.931328, 17.942087>,  <37.697887, 33.310249, 18.410740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680813, 33.931328, 17.942087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040180, 33.764011, 17.888609>,  <38.255802, 33.663624, 17.856522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.040180, 33.764011, 17.888609>,  <37.680813, 33.931328, 17.942087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040180, 33.764011, 17.888609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128682, 0.040316, -0.990866,
		0.419859, 0.907419, -0.017606,
		0.898421, -0.418289, -0.133696,
		38.309708, 33.638523, 17.848499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140789, 34.348015, 17.484116>,  <37.680813, 33.931328, 17.942087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140789, 34.348015, 17.484116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347744, 34.006077, 17.468390>,  <38.471916, 33.800915, 17.458954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347744, 34.006077, 17.468390>,  <38.140789, 34.348015, 17.484116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347744, 34.006077, 17.468390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212407, -0.083781, -0.973583,
		0.828971, 0.512071, -0.224923,
		0.517388, -0.854848, -0.039315,
		38.502960, 33.749622, 17.456594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664841, 34.463444, 16.967270>,  <38.140789, 34.348015, 17.484116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664841, 34.463444, 16.967270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.608280, 34.069145, 17.003752>,  <38.574345, 33.832565, 17.025640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.608280, 34.069145, 17.003752>,  <38.664841, 34.463444, 16.967270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608280, 34.069145, 17.003752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052005, -0.084605, -0.995057,
		0.988585, -0.145448, -0.039300,
		-0.141404, -0.985742, 0.091204,
		38.565861, 33.773422, 17.031113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957104, 34.245476, 16.404961>,  <38.664841, 34.463444, 16.967270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957104, 34.245476, 16.404961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758938, 33.919071, 16.524092>,  <38.640038, 33.723228, 16.595570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.758938, 33.919071, 16.524092>,  <38.957104, 34.245476, 16.404961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758938, 33.919071, 16.524092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220930, -0.213221, -0.951697,
		0.840094, -0.537280, -0.074648,
		-0.495411, -0.816007, 0.297827,
		38.610313, 33.674271, 16.613440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219284, 33.661392, 16.040543>,  <38.957104, 34.245476, 16.404961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219284, 33.661392, 16.040543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.841698, 33.589626, 16.151350>,  <38.615147, 33.546566, 16.217834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.841698, 33.589626, 16.151350>,  <39.219284, 33.661392, 16.040543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841698, 33.589626, 16.151350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269827, -0.063808, -0.960792,
		0.190059, -0.981701, 0.011821,
		-0.943965, -0.179418, 0.277017,
		38.558510, 33.535801, 16.234455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120720, 33.140400, 15.581935>,  <39.219284, 33.661392, 16.040543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120720, 33.140400, 15.581935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.764084, 33.247383, 15.728106>,  <38.550102, 33.311573, 15.815808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.764084, 33.247383, 15.728106>,  <39.120720, 33.140400, 15.581935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764084, 33.247383, 15.728106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407418, -0.121484, -0.905125,
		-0.197689, -0.955881, 0.217281,
		-0.891588, 0.267458, 0.365427,
		38.496609, 33.327621, 15.837734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527805, 32.740704, 15.235967>,  <39.120720, 33.140400, 15.581935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527805, 32.740704, 15.235967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336010, 33.067963, 15.362919>,  <38.220932, 33.264317, 15.439090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336010, 33.067963, 15.362919>,  <38.527805, 32.740704, 15.235967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336010, 33.067963, 15.362919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365187, 0.142833, -0.919912,
		-0.797952, -0.556991, 0.230288,
		-0.479490, 0.818144, 0.317380,
		38.192162, 33.313404, 15.458133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.553089, 37.298298, 31.230772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.231651, 37.490189, 31.089861>,  <40.038788, 37.605324, 31.005314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.231651, 37.490189, 31.089861>,  <40.553089, 37.298298, 31.230772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231651, 37.490189, 31.089861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020542, -0.613887, -0.789127,
		-0.594814, -0.626907, 0.503175,
		-0.803601, 0.479719, -0.352270,
		39.990574, 37.634106, 30.984179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142521, 36.737919, 30.889149>,  <40.553089, 37.298298, 31.230772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142521, 36.737919, 30.889149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020370, 37.094681, 30.755732>,  <39.947079, 37.308739, 30.675682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020370, 37.094681, 30.755732>,  <40.142521, 36.737919, 30.889149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020370, 37.094681, 30.755732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099000, -0.378112, -0.920451,
		-0.947070, -0.248067, 0.203766,
		-0.305380, 0.891905, -0.333541,
		39.928757, 37.362251, 30.655670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496243, 36.712875, 30.623041>,  <40.142521, 36.737919, 30.889149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496243, 36.712875, 30.623041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664948, 37.029633, 30.446400>,  <39.766171, 37.219688, 30.340414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664948, 37.029633, 30.446400>,  <39.496243, 36.712875, 30.623041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664948, 37.029633, 30.446400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171211, -0.408725, -0.896454,
		-0.890393, 0.453703, -0.036806,
		0.421767, 0.791895, -0.441605,
		39.791477, 37.267200, 30.313919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930286, 37.089062, 30.202148>,  <39.496243, 36.712875, 30.623041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930286, 37.089062, 30.202148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298344, 37.151936, 30.058687>,  <39.519176, 37.189659, 29.972610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.298344, 37.151936, 30.058687>,  <38.930286, 37.089062, 30.202148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298344, 37.151936, 30.058687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333019, -0.167712, -0.927885,
		-0.206001, 0.973224, -0.101973,
		0.920142, 0.157186, -0.358651,
		39.574387, 37.199093, 29.951092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841888, 37.406513, 29.479286>,  <38.930286, 37.089062, 30.202148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841888, 37.406513, 29.479286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228420, 37.304714, 29.464161>,  <39.460339, 37.243633, 29.455086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228420, 37.304714, 29.464161>,  <38.841888, 37.406513, 29.479286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228420, 37.304714, 29.464161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132567, -0.366527, -0.920915,
		0.220514, 0.894923, -0.387925,
		0.966333, -0.254500, -0.037813,
		39.518322, 37.228363, 29.452818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086525, 37.601460, 28.888052>,  <38.841888, 37.406513, 29.479286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086525, 37.601460, 28.888052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331928, 37.304665, 28.996170>,  <39.479172, 37.126587, 29.061041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331928, 37.304665, 28.996170>,  <39.086525, 37.601460, 28.888052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331928, 37.304665, 28.996170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006946, -0.337198, -0.941408,
		0.789657, 0.579441, -0.201720,
		0.613510, -0.741988, 0.270295,
		39.515980, 37.082069, 29.077259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652115, 37.520283, 28.391848>,  <39.086525, 37.601460, 28.888052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652115, 37.520283, 28.391848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670876, 37.152534, 28.548079>,  <39.682133, 36.931885, 28.641817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670876, 37.152534, 28.548079>,  <39.652115, 37.520283, 28.391848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670876, 37.152534, 28.548079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253455, -0.367259, -0.894920,
		0.966210, 0.140970, 0.215793,
		0.046905, -0.919374, 0.390578,
		39.684948, 36.876720, 28.665253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218250, 37.213902, 28.059986>,  <39.652115, 37.520283, 28.391848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218250, 37.213902, 28.059986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039539, 36.907787, 28.245342>,  <39.932312, 36.724117, 28.356556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039539, 36.907787, 28.245342>,  <40.218250, 37.213902, 28.059986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039539, 36.907787, 28.245342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155748, -0.576582, -0.802057,
		0.880986, -0.286166, 0.376793,
		-0.446774, -0.765286, 0.463391,
		39.905506, 36.678204, 28.384359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679649, 36.605888, 27.878260>,  <40.218250, 37.213902, 28.059986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679649, 36.605888, 27.878260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.331272, 36.451599, 28.000029>,  <40.122246, 36.359024, 28.073090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.331272, 36.451599, 28.000029>,  <40.679649, 36.605888, 27.878260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331272, 36.451599, 28.000029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058393, -0.696378, -0.715296,
		0.487902, -0.605206, 0.629030,
		-0.870943, -0.385725, 0.304424,
		40.069988, 36.335880, 28.091356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748306, 35.900471, 27.919928>,  <40.679649, 36.605888, 27.878260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748306, 35.900471, 27.919928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.357498, 35.967182, 27.866840>,  <40.123013, 36.007210, 27.834988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.357498, 35.967182, 27.866840>,  <40.748306, 35.900471, 27.919928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357498, 35.967182, 27.866840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009612, -0.587561, -0.809123,
		-0.212926, -0.791806, 0.572456,
		-0.977021, 0.166781, -0.132718,
		40.064392, 36.017216, 27.827024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438953, 35.210049, 27.798204>,  <40.748306, 35.900471, 27.919928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438953, 35.210049, 27.798204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.168324, 35.470577, 27.660784>,  <40.005947, 35.626896, 27.578331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.168324, 35.470577, 27.660784>,  <40.438953, 35.210049, 27.798204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168324, 35.470577, 27.660784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100855, -0.544109, -0.832931,
		-0.729436, -0.528891, 0.433819,
		-0.676574, 0.651322, -0.343551,
		39.965351, 35.665974, 27.557718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914783, 34.803333, 27.476643>,  <40.438953, 35.210049, 27.798204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914783, 34.803333, 27.476643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855137, 35.168015, 27.323505>,  <39.819347, 35.386822, 27.231623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855137, 35.168015, 27.323505>,  <39.914783, 34.803333, 27.476643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855137, 35.168015, 27.323505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221338, -0.408124, -0.885689,
		-0.963729, -0.047335, 0.262652,
		-0.149119, 0.911699, -0.382844,
		39.810402, 35.441525, 27.208652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155773, 34.732788, 27.587173>,  <39.914783, 34.803333, 27.476643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155773, 34.732788, 27.587173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869076, 34.463024, 27.658100>,  <38.697056, 34.301167, 27.700655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869076, 34.463024, 27.658100>,  <39.155773, 34.732788, 27.587173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869076, 34.463024, 27.658100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136715, 0.385245, 0.912631,
		-0.683800, 0.629884, -0.368325,
		-0.716747, -0.674412, 0.177316,
		38.654053, 34.260700, 27.711294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472576, 35.165169, 27.749208>,  <39.155773, 34.732788, 27.587173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472576, 35.165169, 27.749208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456223, 34.786217, 27.876200>,  <38.446411, 34.558846, 27.952394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456223, 34.786217, 27.876200>,  <38.472576, 35.165169, 27.749208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456223, 34.786217, 27.876200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134003, 0.320071, 0.937869,
		-0.990137, -0.004199, -0.140038,
		-0.040884, -0.947384, 0.317476,
		38.443958, 34.502003, 27.971443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843529, 35.172470, 28.015068>,  <38.472576, 35.165169, 27.749208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843529, 35.172470, 28.015068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051991, 34.893013, 28.211147>,  <38.177067, 34.725338, 28.328794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.051991, 34.893013, 28.211147>,  <37.843529, 35.172470, 28.015068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051991, 34.893013, 28.211147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280628, 0.402148, 0.871507,
		-0.806006, -0.591753, 0.013522,
		0.521155, -0.698645, 0.490197,
		38.208336, 34.683418, 28.358206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436539, 35.105499, 28.539930>,  <37.843529, 35.172470, 28.015068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436539, 35.105499, 28.539930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766930, 34.912590, 28.656666>,  <37.965164, 34.796844, 28.726707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.766930, 34.912590, 28.656666>,  <37.436539, 35.105499, 28.539930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766930, 34.912590, 28.656666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214086, 0.210544, 0.953855,
		-0.521465, -0.850342, 0.070657,
		0.825979, -0.482275, 0.291838,
		38.014725, 34.767906, 28.744217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193947, 34.636322, 29.044836>,  <37.436539, 35.105499, 28.539930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193947, 34.636322, 29.044836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588058, 34.675098, 29.101164>,  <37.824524, 34.698364, 29.134960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588058, 34.675098, 29.101164>,  <37.193947, 34.636322, 29.044836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588058, 34.675098, 29.101164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132754, -0.085178, 0.987482,
		0.107728, -0.991638, -0.071054,
		0.985277, 0.096947, 0.140820,
		37.883640, 34.704182, 29.143410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469315, 34.065407, 29.430395>,  <37.193947, 34.636322, 29.044836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469315, 34.065407, 29.430395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712212, 34.373325, 29.509047>,  <37.857952, 34.558079, 29.556238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712212, 34.373325, 29.509047>,  <37.469315, 34.065407, 29.430395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712212, 34.373325, 29.509047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352208, 0.038982, 0.935109,
		0.712181, -0.637095, 0.294801,
		0.607246, 0.769799, 0.196628,
		37.894386, 34.604263, 29.568035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634193, 33.965923, 30.061340>,  <37.469315, 34.065407, 29.430395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634193, 33.965923, 30.061340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734177, 34.352715, 30.041454>,  <37.794167, 34.584789, 30.029524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734177, 34.352715, 30.041454>,  <37.634193, 33.965923, 30.061340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734177, 34.352715, 30.041454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210266, 0.104327, 0.972062,
		0.945151, -0.232519, 0.229400,
		0.249956, 0.966980, -0.049714,
		37.809162, 34.642807, 30.026541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094486, 34.090195, 30.723936>,  <37.634193, 33.965923, 30.061340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094486, 34.090195, 30.723936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918800, 34.416092, 30.572529>,  <37.813389, 34.611629, 30.481684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918800, 34.416092, 30.572529>,  <38.094486, 34.090195, 30.723936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918800, 34.416092, 30.572529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366583, 0.222126, 0.903481,
		0.820186, 0.535583, 0.201111,
		-0.439217, 0.814746, -0.378520,
		37.787037, 34.660515, 30.458973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059204, 34.562962, 31.316256>,  <38.094486, 34.090195, 30.723936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059204, 34.562962, 31.316256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803307, 34.773663, 31.092375>,  <37.649769, 34.900082, 30.958046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803307, 34.773663, 31.092375>,  <38.059204, 34.562962, 31.316256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803307, 34.773663, 31.092375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427435, 0.361387, 0.828673,
		0.638774, 0.769370, -0.006042,
		-0.639740, 0.526753, -0.559700,
		37.611385, 34.931690, 30.924465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012978, 35.213146, 31.597311>,  <38.059204, 34.562962, 31.316256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012978, 35.213146, 31.597311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667618, 35.193604, 31.396454>,  <37.460400, 35.181877, 31.275940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667618, 35.193604, 31.396454>,  <38.012978, 35.213146, 31.597311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667618, 35.193604, 31.396454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454815, 0.506130, 0.732786,
		0.218351, 0.861072, -0.459213,
		-0.863404, -0.048853, -0.502143,
		37.408596, 35.178947, 31.245811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621826, 35.945988, 31.684103>,  <38.012978, 35.213146, 31.597311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621826, 35.945988, 31.684103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329525, 35.697685, 31.570507>,  <37.154144, 35.548702, 31.502350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329525, 35.697685, 31.570507>,  <37.621826, 35.945988, 31.684103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329525, 35.697685, 31.570507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611217, 0.409737, 0.677148,
		-0.303985, 0.668410, -0.678837,
		-0.730758, -0.620760, -0.283990,
		37.110298, 35.511456, 31.485310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021164, 36.350040, 31.804993>,  <37.621826, 35.945988, 31.684103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021164, 36.350040, 31.804993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908989, 35.967255, 31.775114>,  <36.841682, 35.737583, 31.757187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908989, 35.967255, 31.775114>,  <37.021164, 36.350040, 31.804993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908989, 35.967255, 31.775114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641466, 0.128953, 0.756236,
		-0.714056, 0.259993, -0.650021,
		-0.280438, -0.956961, -0.074697,
		36.824856, 35.680164, 31.752705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415859, 36.444244, 32.008381>,  <37.021164, 36.350040, 31.804993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415859, 36.444244, 32.008381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463318, 36.047188, 32.018082>,  <36.491795, 35.808952, 32.023903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.463318, 36.047188, 32.018082>,  <36.415859, 36.444244, 32.008381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463318, 36.047188, 32.018082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721726, -0.069443, 0.688687,
		-0.681934, -0.099212, -0.724653,
		0.118648, -0.992640, 0.024248,
		36.498913, 35.749397, 32.025356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777691, 36.122265, 31.933256>,  <36.415859, 36.444244, 32.008381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777691, 36.122265, 31.933256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007854, 35.861111, 32.130291>,  <36.145954, 35.704418, 32.248512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007854, 35.861111, 32.130291>,  <35.777691, 36.122265, 31.933256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007854, 35.861111, 32.130291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728875, -0.136147, 0.670973,
		-0.371007, -0.745117, -0.554215,
		0.575408, -0.652889, 0.492586,
		36.180477, 35.665245, 32.278069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289471, 35.646767, 32.156410>,  <35.777691, 36.122265, 31.933256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289471, 35.646767, 32.156410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614746, 35.617828, 32.387402>,  <35.809914, 35.600464, 32.525997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614746, 35.617828, 32.387402>,  <35.289471, 35.646767, 32.156410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614746, 35.617828, 32.387402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581285, -0.150003, 0.799754,
		0.028766, -0.986035, -0.164035,
		0.813191, -0.072346, 0.577483,
		35.858704, 35.596123, 32.560646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949951, 34.999302, 32.365726>,  <35.289471, 35.646767, 32.156410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949951, 34.999302, 32.365726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620098, 35.205551, 32.272667>,  <34.422188, 35.329300, 32.216831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620098, 35.205551, 32.272667>,  <34.949951, 34.999302, 32.365726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620098, 35.205551, 32.272667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011178, -0.396339, -0.918036,
		-0.565566, -0.759638, 0.321068,
		-0.824627, 0.515621, -0.232647,
		34.372711, 35.360237, 32.202873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394611, 34.633244, 32.075256>,  <34.949951, 34.999302, 32.365726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394611, 34.633244, 32.075256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.355927, 34.999725, 31.919714>,  <34.332718, 35.219616, 31.826387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.355927, 34.999725, 31.919714>,  <34.394611, 34.633244, 32.075256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355927, 34.999725, 31.919714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053306, -0.394897, -0.917178,
		-0.993884, -0.067970, 0.087029,
		-0.096708, 0.916208, -0.388859,
		34.326916, 35.274590, 31.803057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773464, 34.698471, 31.579700>,  <34.394611, 34.633244, 32.075256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773464, 34.698471, 31.579700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045368, 34.979107, 31.494196>,  <34.208511, 35.147488, 31.442894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045368, 34.979107, 31.494196>,  <33.773464, 34.698471, 31.579700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045368, 34.979107, 31.494196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080194, -0.360804, -0.929187,
		-0.729033, 0.614486, -0.301525,
		0.679764, 0.701589, -0.213760,
		34.249298, 35.189583, 31.430067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594528, 34.960915, 30.916880>,  <33.773464, 34.698471, 31.579700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594528, 34.960915, 30.916880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974869, 35.082462, 30.940704>,  <34.203072, 35.155392, 30.955000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.974869, 35.082462, 30.940704>,  <33.594528, 34.960915, 30.916880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974869, 35.082462, 30.940704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099784, -0.118596, -0.987916,
		-0.293135, 0.945303, -0.143088,
		0.950849, 0.303871, 0.059562,
		34.260124, 35.173622, 30.958572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617031, 35.324203, 30.455915>,  <33.594528, 34.960915, 30.916880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617031, 35.324203, 30.455915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013641, 35.289021, 30.494165>,  <34.251606, 35.267910, 30.517115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013641, 35.289021, 30.494165>,  <33.617031, 35.324203, 30.455915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013641, 35.289021, 30.494165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091394, -0.050913, -0.994512,
		0.092345, 0.994822, -0.042442,
		0.991524, -0.087959, 0.095623,
		34.311100, 35.262634, 30.522852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784496, 35.807224, 30.014900>,  <33.617031, 35.324203, 30.455915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784496, 35.807224, 30.014900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101624, 35.571659, 30.077667>,  <34.291901, 35.430321, 30.115328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101624, 35.571659, 30.077667>,  <33.784496, 35.807224, 30.014900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101624, 35.571659, 30.077667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150129, -0.060821, -0.986794,
		0.590678, 0.805905, 0.040193,
		0.792818, -0.588912, 0.156915,
		34.339470, 35.394985, 30.124743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364182, 36.069126, 29.743551>,  <33.784496, 35.807224, 30.014900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364182, 36.069126, 29.743551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447651, 35.677933, 29.743050>,  <34.497734, 35.443218, 29.742748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447651, 35.677933, 29.743050>,  <34.364182, 36.069126, 29.743551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447651, 35.677933, 29.743050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100069, 0.022627, -0.994723,
		0.972851, 0.207451, 0.102588,
		0.208678, -0.977984, -0.001254,
		34.510254, 35.384537, 29.742674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764881, 36.073486, 29.246834>,  <34.364182, 36.069126, 29.743551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764881, 36.073486, 29.246834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694431, 35.681873, 29.287781>,  <34.652161, 35.446907, 29.312349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.694431, 35.681873, 29.287781>,  <34.764881, 36.073486, 29.246834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694431, 35.681873, 29.287781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192152, -0.136186, -0.971870,
		0.965431, -0.151505, 0.212109,
		-0.176129, -0.979030, 0.102366,
		34.641594, 35.388165, 29.318491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271420, 35.690872, 28.860666>,  <34.764881, 36.073486, 29.246834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271420, 35.690872, 28.860666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997814, 35.404640, 28.917336>,  <34.833652, 35.232899, 28.951336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.997814, 35.404640, 28.917336>,  <35.271420, 35.690872, 28.860666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997814, 35.404640, 28.917336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224647, -0.391408, -0.892375,
		0.694021, -0.578567, 0.428480,
		-0.684009, -0.715584, 0.141672,
		34.792610, 35.189964, 28.959837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584991, 35.019272, 28.692247>,  <35.271420, 35.690872, 28.860666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584991, 35.019272, 28.692247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189713, 34.973625, 28.651367>,  <34.952545, 34.946236, 28.626839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.189713, 34.973625, 28.651367>,  <35.584991, 35.019272, 28.692247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189713, 34.973625, 28.651367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136411, -0.351871, -0.926056,
		0.069720, -0.929066, 0.363284,
		-0.988196, -0.114120, -0.102203,
		34.893253, 34.939388, 28.620707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515827, 34.471230, 28.322350>,  <35.584991, 35.019272, 28.692247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515827, 34.471230, 28.322350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140182, 34.605831, 28.294531>,  <34.914795, 34.686592, 28.277840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140182, 34.605831, 28.294531>,  <35.515827, 34.471230, 28.322350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140182, 34.605831, 28.294531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012997, -0.237043, -0.971412,
		-0.343366, -0.911361, 0.226983,
		-0.939112, 0.336501, -0.069547,
		34.858448, 34.706779, 28.273666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181080, 34.020546, 27.894394>,  <35.515827, 34.471230, 28.322350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181080, 34.020546, 27.894394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928345, 34.330433, 27.904161>,  <34.776703, 34.516365, 27.910021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.928345, 34.330433, 27.904161>,  <35.181080, 34.020546, 27.894394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928345, 34.330433, 27.904161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194636, -0.128089, -0.972476,
		-0.750266, -0.619199, 0.231719,
		-0.631837, 0.774717, 0.024418,
		34.738792, 34.562847, 27.911488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404610, 33.811649, 27.643944>,  <35.181080, 34.020546, 27.894394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404610, 33.811649, 27.643944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447067, 34.203506, 27.575777>,  <34.472542, 34.438622, 27.534876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447067, 34.203506, 27.575777>,  <34.404610, 33.811649, 27.643944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447067, 34.203506, 27.575777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262381, -0.137719, -0.955086,
		-0.959109, 0.146091, 0.242420,
		0.106144, 0.979638, -0.170419,
		34.478909, 34.497398, 27.524651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895573, 33.889645, 27.100286>,  <34.404610, 33.811649, 27.643944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895573, 33.889645, 27.100286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144505, 34.200619, 27.063843>,  <34.293861, 34.387203, 27.041977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144505, 34.200619, 27.063843>,  <33.895573, 33.889645, 27.100286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144505, 34.200619, 27.063843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171892, 0.022176, -0.984866,
		-0.763651, 0.628570, 0.147436,
		0.622327, 0.777437, -0.091111,
		34.331203, 34.433849, 27.036509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574203, 34.323757, 26.762791>,  <33.895573, 33.889645, 27.100286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574203, 34.323757, 26.762791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935612, 34.492413, 26.732117>,  <34.152454, 34.593605, 26.713713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.935612, 34.492413, 26.732117>,  <33.574203, 34.323757, 26.762791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935612, 34.492413, 26.732117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079835, -0.010201, -0.996756,
		-0.421049, 0.906708, 0.024444,
		0.903517, 0.421635, -0.076683,
		34.206669, 34.618904, 26.709112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463348, 34.938065, 26.331015>,  <33.574203, 34.323757, 26.762791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463348, 34.938065, 26.331015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847347, 34.831181, 26.297548>,  <34.077747, 34.767052, 26.277468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847347, 34.831181, 26.297548>,  <33.463348, 34.938065, 26.331015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847347, 34.831181, 26.297548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037961, 0.171844, -0.984393,
		0.277413, 0.948193, 0.154827,
		0.960001, -0.267206, -0.083666,
		34.135349, 34.751019, 26.272449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645683, 35.250870, 25.690098>,  <33.463348, 34.938065, 26.331015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645683, 35.250870, 25.690098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927738, 34.971294, 25.737894>,  <34.096970, 34.803551, 25.766571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.927738, 34.971294, 25.737894>,  <33.645683, 35.250870, 25.690098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927738, 34.971294, 25.737894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068534, -0.100547, -0.992569,
		0.705755, 0.708083, -0.022999,
		0.705133, -0.698934, 0.119489,
		34.139278, 34.761616, 25.773741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131680, 35.414082, 25.207664>,  <33.645683, 35.250870, 25.690098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131680, 35.414082, 25.207664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196205, 35.030277, 25.300032>,  <34.234921, 34.799995, 25.355452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196205, 35.030277, 25.300032>,  <34.131680, 35.414082, 25.207664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196205, 35.030277, 25.300032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066834, -0.222822, -0.972565,
		0.984638, 0.172317, 0.028184,
		0.161310, -0.959509, 0.230916,
		34.244598, 34.742424, 25.369307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793068, 35.199898, 24.888947>,  <34.131680, 35.414082, 25.207664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793068, 35.199898, 24.888947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556030, 34.884785, 24.956160>,  <34.413807, 34.695717, 24.996487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556030, 34.884785, 24.956160>,  <34.793068, 35.199898, 24.888947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556030, 34.884785, 24.956160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115457, -0.289522, -0.950183,
		0.797182, -0.543675, 0.262524,
		-0.592597, -0.787778, 0.168031,
		34.378250, 34.648453, 25.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113316, 34.782211, 24.464989>,  <34.793068, 35.199898, 24.888947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113316, 34.782211, 24.464989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749832, 34.633713, 24.541336>,  <34.531742, 34.544613, 24.587145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749832, 34.633713, 24.541336>,  <35.113316, 34.782211, 24.464989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749832, 34.633713, 24.541336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078072, -0.298021, -0.951361,
		0.410071, -0.879409, 0.241830,
		-0.908706, -0.371246, 0.190867,
		34.477219, 34.522339, 24.598597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098976, 34.134296, 24.202934>,  <35.113316, 34.782211, 24.464989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098976, 34.134296, 24.202934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.707855, 34.214127, 24.228449>,  <34.473183, 34.262024, 24.243757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.707855, 34.214127, 24.228449>,  <35.098976, 34.134296, 24.202934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707855, 34.214127, 24.228449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134537, -0.364664, -0.921368,
		-0.160622, -0.909499, 0.383420,
		-0.977804, 0.199576, 0.063788,
		34.414513, 34.273998, 24.247585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891697, 33.562004, 24.008795>,  <35.098976, 34.134296, 24.202934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891697, 33.562004, 24.008795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590927, 33.816669, 23.940355>,  <34.410465, 33.969467, 23.899292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590927, 33.816669, 23.940355>,  <34.891697, 33.562004, 24.008795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590927, 33.816669, 23.940355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077558, -0.343160, -0.936069,
		-0.654673, -0.690582, 0.307408,
		-0.751923, 0.636661, -0.171097,
		34.365349, 34.007668, 23.889027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421329, 33.187832, 23.519712>,  <34.891697, 33.562004, 24.008795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421329, 33.187832, 23.519712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285862, 33.564011, 23.507952>,  <34.204582, 33.789719, 23.500895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285862, 33.564011, 23.507952>,  <34.421329, 33.187832, 23.519712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285862, 33.564011, 23.507952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323667, -0.145785, -0.934873,
		-0.883485, -0.307091, 0.353764,
		-0.338664, 0.940448, -0.029403,
		34.184261, 33.846146, 23.499130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767162, 33.095612, 23.262880>,  <34.421329, 33.187832, 23.519712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767162, 33.095612, 23.262880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895096, 33.464191, 23.174664>,  <33.971855, 33.685337, 23.121733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.895096, 33.464191, 23.174664>,  <33.767162, 33.095612, 23.262880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895096, 33.464191, 23.174664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341304, -0.105095, -0.934059,
		-0.883864, 0.374020, 0.280880,
		0.319837, 0.921447, -0.220544,
		33.991047, 33.740627, 23.108500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176113, 33.516594, 23.074209>,  <33.767162, 33.095612, 23.262880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176113, 33.516594, 23.074209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488159, 33.708271, 22.913313>,  <33.675388, 33.823277, 22.816776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488159, 33.708271, 22.913313>,  <33.176113, 33.516594, 23.074209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488159, 33.708271, 22.913313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409273, -0.095400, -0.907411,
		-0.473194, 0.872512, 0.121695,
		0.780117, 0.479188, -0.402238,
		33.722195, 33.852028, 22.792641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856518, 34.040535, 22.658865>,  <33.176113, 33.516594, 23.074209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856518, 34.040535, 22.658865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234608, 33.981735, 22.542286>,  <33.461460, 33.946457, 22.472340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234608, 33.981735, 22.542286>,  <32.856518, 34.040535, 22.658865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234608, 33.981735, 22.542286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276748, 0.112561, -0.954327,
		0.173089, 0.982712, 0.065714,
		0.945225, -0.146997, -0.291446,
		33.518177, 33.937637, 22.454851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970863, 34.449375, 22.087330>,  <32.856518, 34.040535, 22.658865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970863, 34.449375, 22.087330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303650, 34.232277, 22.041260>,  <33.503323, 34.102020, 22.013617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303650, 34.232277, 22.041260>,  <32.970863, 34.449375, 22.087330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303650, 34.232277, 22.041260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039995, 0.148385, -0.988121,
		0.553385, 0.826688, 0.101744,
		0.831965, -0.542742, -0.115177,
		33.553238, 34.069454, 22.006706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111790, 35.239841, 22.032883>,  <32.970863, 34.449375, 22.087330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111790, 35.239841, 22.032883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948116, 35.579330, 21.898869>,  <32.849915, 35.783024, 21.818460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.948116, 35.579330, 21.898869>,  <33.111790, 35.239841, 22.032883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948116, 35.579330, 21.898869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108636, 0.409883, 0.905645,
		0.905964, 0.334175, -0.259918,
		-0.409180, 0.848718, -0.335036,
		32.825363, 35.833946, 21.798357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601402, 35.811195, 22.137550>,  <33.111790, 35.239841, 22.032883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601402, 35.811195, 22.137550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233704, 35.967903, 22.122023>,  <33.013084, 36.061928, 22.112705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.233704, 35.967903, 22.122023>,  <33.601402, 35.811195, 22.137550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233704, 35.967903, 22.122023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156688, 0.454534, 0.876840,
		0.361162, 0.799948, -0.479213,
		-0.919245, 0.391768, -0.038819,
		32.957932, 36.085434, 22.110376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612762, 36.571308, 22.343788>,  <33.601402, 35.811195, 22.137550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612762, 36.571308, 22.343788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228539, 36.482712, 22.411045>,  <32.998005, 36.429554, 22.451399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228539, 36.482712, 22.411045>,  <33.612762, 36.571308, 22.343788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228539, 36.482712, 22.411045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115262, 0.233153, 0.965585,
		-0.253069, 0.946880, -0.198427,
		-0.960557, -0.221489, 0.168144,
		32.940372, 36.416264, 22.461489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333115, 37.117382, 22.693575>,  <33.612762, 36.571308, 22.343788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333115, 37.117382, 22.693575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060097, 36.837231, 22.777105>,  <32.896286, 36.669140, 22.827223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060097, 36.837231, 22.777105>,  <33.333115, 37.117382, 22.693575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060097, 36.837231, 22.777105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040206, 0.321283, 0.946129,
		-0.729740, 0.637377, -0.247449,
		-0.682542, -0.700377, 0.208826,
		32.855335, 36.627117, 22.839752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809898, 37.432369, 23.089195>,  <33.333115, 37.117382, 22.693575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809898, 37.432369, 23.089195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746681, 37.043758, 23.159792>,  <32.708752, 36.810593, 23.202150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746681, 37.043758, 23.159792>,  <32.809898, 37.432369, 23.089195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746681, 37.043758, 23.159792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211827, 0.207933, 0.954931,
		-0.964444, 0.113536, -0.238659,
		-0.158044, -0.971532, 0.176490,
		32.699268, 36.752300, 23.212738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
