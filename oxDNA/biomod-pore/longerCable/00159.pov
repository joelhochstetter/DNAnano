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
	<23.867689, 35.054104, 35.139397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242811, 35.105976, 35.010582>,  <24.467884, 35.137100, 34.933292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242811, 35.105976, 35.010582>,  <23.867689, 35.054104, 35.139397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242811, 35.105976, 35.010582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116565, -0.756149, -0.643935,
		-0.327011, 0.641423, -0.694003,
		0.937804, 0.129678, -0.322036,
		24.524153, 35.144878, 34.913971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988718, 35.318218, 34.406834>,  <23.867689, 35.054104, 35.139397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988718, 35.318218, 34.406834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239523, 35.052422, 34.569462>,  <24.390007, 34.892944, 34.667038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.239523, 35.052422, 34.569462>,  <23.988718, 35.318218, 34.406834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239523, 35.052422, 34.569462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105184, -0.589349, -0.801002,
		0.771874, 0.459474, -0.439424,
		0.627014, -0.664494, 0.406574,
		24.427628, 34.853073, 34.691433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217503, 35.311153, 33.697399>,  <23.988718, 35.318218, 34.406834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217503, 35.311153, 33.697399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481663, 35.043148, 33.833015>,  <24.640160, 34.882343, 33.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481663, 35.043148, 33.833015>,  <24.217503, 35.311153, 33.697399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481663, 35.043148, 33.833015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124656, -0.347416, -0.929389,
		0.740493, 0.656033, -0.145913,
		0.660402, -0.670017, 0.339037,
		24.679783, 34.842144, 33.934727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934458, 35.248833, 33.360260>,  <24.217503, 35.311153, 33.697399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934458, 35.248833, 33.360260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820559, 34.893089, 33.503349>,  <24.752220, 34.679646, 33.589203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820559, 34.893089, 33.503349>,  <24.934458, 35.248833, 33.360260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.820559, 34.893089, 33.503349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115259, -0.402232, -0.908253,
		0.951648, -0.217390, 0.217040,
		-0.284746, -0.889354, 0.357728,
		24.735134, 34.626282, 33.610668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478800, 34.728962, 33.078236>,  <24.934458, 35.248833, 33.360260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478800, 34.728962, 33.078236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121342, 34.571701, 33.164795>,  <24.906868, 34.477345, 33.216732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121342, 34.571701, 33.164795>,  <25.478800, 34.728962, 33.078236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121342, 34.571701, 33.164795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001319, -0.479901, -0.877321,
		0.448776, -0.784298, 0.428342,
		-0.893644, -0.393156, 0.216402,
		24.853249, 34.453754, 33.229717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472065, 34.064247, 32.806095>,  <25.478800, 34.728962, 33.078236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472065, 34.064247, 32.806095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087582, 34.140823, 32.885525>,  <24.856892, 34.186771, 32.933182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087582, 34.140823, 32.885525>,  <25.472065, 34.064247, 32.806095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087582, 34.140823, 32.885525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258465, -0.373770, -0.890782,
		-0.096313, -0.907549, 0.408752,
		-0.961208, 0.191442, 0.198570,
		24.799219, 34.198257, 32.945095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984987, 33.573574, 32.578732>,  <25.472065, 34.064247, 32.806095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984987, 33.573574, 32.578732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708969, 33.862305, 32.557529>,  <24.543358, 34.035542, 32.544807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708969, 33.862305, 32.557529>,  <24.984987, 33.573574, 32.578732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708969, 33.862305, 32.557529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384834, -0.427941, -0.817783,
		-0.612979, -0.543908, 0.573080,
		-0.690043, 0.721825, -0.053004,
		24.501955, 34.078854, 32.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044531, 33.527393, 31.844418>,  <24.984987, 33.573574, 32.578732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044531, 33.527393, 31.844418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434002, 33.499027, 31.757771>,  <25.667685, 33.482006, 31.705782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434002, 33.499027, 31.757771>,  <25.044531, 33.527393, 31.844418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434002, 33.499027, 31.757771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127479, -0.957260, -0.259619,
		-0.188950, 0.280399, -0.941103,
		0.973677, -0.070916, -0.216619,
		25.726105, 33.477753, 31.692785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127495, 33.164482, 31.135265>,  <25.044531, 33.527393, 31.844418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127495, 33.164482, 31.135265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488104, 33.138332, 31.306374>,  <25.704470, 33.122643, 31.409039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488104, 33.138332, 31.306374>,  <25.127495, 33.164482, 31.135265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488104, 33.138332, 31.306374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084247, -0.943094, -0.321678,
		0.424456, 0.326037, -0.844711,
		0.901521, -0.065374, 0.427770,
		25.758560, 33.118721, 31.434704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616325, 33.030106, 30.697809>,  <25.127495, 33.164482, 31.135265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616325, 33.030106, 30.697809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800926, 32.898930, 31.027529>,  <25.911688, 32.820225, 31.225361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.800926, 32.898930, 31.027529>,  <25.616325, 33.030106, 30.697809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800926, 32.898930, 31.027529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027558, -0.923418, -0.382805,
		0.886710, 0.199382, -0.417124,
		0.461504, -0.327942, 0.824299,
		25.939377, 32.800549, 31.274818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177887, 32.585621, 30.508308>,  <25.616325, 33.030106, 30.697809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177887, 32.585621, 30.508308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122841, 32.465500, 30.885855>,  <26.089813, 32.393429, 31.112383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122841, 32.465500, 30.885855>,  <26.177887, 32.585621, 30.508308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122841, 32.465500, 30.885855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081537, -0.946262, -0.312955,
		0.987124, -0.120028, 0.105735,
		-0.137617, -0.300304, 0.943864,
		26.081556, 32.375408, 31.169014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727396, 32.053841, 30.101435>,  <26.177887, 32.585621, 30.508308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727396, 32.053841, 30.101435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021120, 31.783699, 30.128822>,  <26.197353, 31.621614, 30.145254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021120, 31.783699, 30.128822>,  <25.727396, 32.053841, 30.101435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021120, 31.783699, 30.128822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146600, 0.256257, 0.955427,
		-0.662797, -0.691540, 0.287179,
		0.734308, -0.675355, 0.068467,
		26.241413, 31.581093, 30.149363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600647, 31.500902, 30.676167>,  <25.727396, 32.053841, 30.101435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600647, 31.500902, 30.676167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984541, 31.573244, 30.590193>,  <26.214878, 31.616650, 30.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984541, 31.573244, 30.590193>,  <25.600647, 31.500902, 30.676167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984541, 31.573244, 30.590193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196742, 0.113357, 0.973880,
		0.200498, -0.976955, 0.073210,
		0.959736, 0.180857, -0.214936,
		26.272461, 31.627501, 30.525713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114834, 30.920458, 30.926567>,  <25.600647, 31.500902, 30.676167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114834, 30.920458, 30.926567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246286, 30.977285, 31.300053>,  <25.325157, 31.011381, 31.524143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246286, 30.977285, 31.300053>,  <25.114834, 30.920458, 30.926567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246286, 30.977285, 31.300053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362414, 0.893971, -0.263576,
		-0.872157, 0.425010, 0.242298,
		0.328629, 0.142067, 0.933713,
		25.344875, 31.019905, 31.580166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.890675, 31.591133, 31.202072>,  <25.114834, 30.920458, 30.926567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.890675, 31.591133, 31.202072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256113, 31.513573, 31.345039>,  <25.475376, 31.467037, 31.430819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256113, 31.513573, 31.345039>,  <24.890675, 31.591133, 31.202072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256113, 31.513573, 31.345039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286298, 0.930914, -0.226788,
		-0.288750, 0.309520, 0.905992,
		0.913596, -0.193899, 0.357416,
		25.530191, 31.455402, 31.452265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139399, 32.041714, 31.811716>,  <24.890675, 31.591133, 31.202072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139399, 32.041714, 31.811716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479967, 31.962984, 31.617254>,  <25.684307, 31.915747, 31.500578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479967, 31.962984, 31.617254>,  <25.139399, 32.041714, 31.811716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479967, 31.962984, 31.617254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326117, 0.924617, 0.196803,
		0.410771, -0.326105, 0.851424,
		0.851420, -0.196822, -0.486154,
		25.735394, 31.903938, 31.471409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678572, 32.101036, 32.317162>,  <25.139399, 32.041714, 31.811716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678572, 32.101036, 32.317162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845695, 32.177597, 31.961903>,  <25.945969, 32.223534, 31.748747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845695, 32.177597, 31.961903>,  <25.678572, 32.101036, 32.317162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845695, 32.177597, 31.961903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299677, 0.893816, 0.333598,
		0.857689, -0.405537, 0.316085,
		0.417807, 0.191400, -0.888146,
		25.971037, 32.235016, 31.695459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383816, 32.465000, 32.467342>,  <25.678572, 32.101036, 32.317162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383816, 32.465000, 32.467342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244854, 32.551811, 32.102440>,  <26.161478, 32.603897, 31.883499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244854, 32.551811, 32.102440>,  <26.383816, 32.465000, 32.467342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244854, 32.551811, 32.102440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127245, 0.974760, 0.183445,
		0.929042, -0.052350, -0.366251,
		-0.347403, 0.217031, -0.912255,
		26.140633, 32.616920, 31.828764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839088, 32.879536, 32.049461>,  <26.383816, 32.465000, 32.467342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839088, 32.879536, 32.049461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498442, 32.952591, 31.852936>,  <26.294054, 32.996426, 31.735020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498442, 32.952591, 31.852936>,  <26.839088, 32.879536, 32.049461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498442, 32.952591, 31.852936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122310, 0.980697, 0.152555,
		0.509694, 0.069826, -0.857518,
		-0.851618, 0.182639, -0.491315,
		26.242956, 33.007381, 31.705542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983938, 33.359932, 31.421520>,  <26.839088, 32.879536, 32.049461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983938, 33.359932, 31.421520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597931, 33.391438, 31.521545>,  <26.366325, 33.410339, 31.581560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597931, 33.391438, 31.521545>,  <26.983938, 33.359932, 31.421520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597931, 33.391438, 31.521545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095110, 0.994003, 0.053957,
		-0.244316, 0.075853, -0.966724,
		-0.965020, 0.078762, 0.250065,
		26.308424, 33.415066, 31.596565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690775, 33.789230, 30.945684>,  <26.983938, 33.359932, 31.421520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690775, 33.789230, 30.945684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528452, 33.783642, 31.311226>,  <26.431059, 33.780289, 31.530550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528452, 33.783642, 31.311226>,  <26.690775, 33.789230, 30.945684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528452, 33.783642, 31.311226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003592, 0.999900, 0.013687,
		-0.913952, 0.002272, -0.405816,
		-0.405806, -0.013967, 0.913852,
		26.406710, 33.779453, 31.585382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033331, 33.644539, 30.342375>,  <26.690775, 33.789230, 30.945684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033331, 33.644539, 30.342375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935785, 34.017361, 30.449560>,  <26.877258, 34.241055, 30.513872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935785, 34.017361, 30.449560>,  <27.033331, 33.644539, 30.342375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935785, 34.017361, 30.449560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017560, -0.280504, 0.959692,
		0.969650, 0.229329, 0.084772,
		-0.243864, 0.932054, 0.267964,
		26.862625, 34.296978, 30.529949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233603, 32.874508, 30.519476>,  <27.033331, 33.644539, 30.342375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233603, 32.874508, 30.519476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277514, 32.641167, 30.197569>,  <27.303860, 32.501163, 30.004425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277514, 32.641167, 30.197569>,  <27.233603, 32.874508, 30.519476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277514, 32.641167, 30.197569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818646, 0.512253, -0.259644,
		0.563708, -0.630318, 0.533790,
		0.109777, -0.583349, -0.804769,
		27.310446, 32.466164, 29.956139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943354, 32.590572, 30.553888>,  <27.233603, 32.874508, 30.519476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943354, 32.590572, 30.553888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895397, 32.619267, 30.157812>,  <27.866623, 32.636482, 29.920166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895397, 32.619267, 30.157812>,  <27.943354, 32.590572, 30.553888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895397, 32.619267, 30.157812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925819, 0.368187, -0.085423,
		0.358447, -0.926980, -0.110558,
		-0.119892, 0.071737, -0.990192,
		27.859430, 32.640789, 29.860754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465624, 32.195290, 30.234085>,  <27.943354, 32.590572, 30.553888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465624, 32.195290, 30.234085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328876, 32.476967, 29.985174>,  <28.246828, 32.645973, 29.835827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328876, 32.476967, 29.985174>,  <28.465624, 32.195290, 30.234085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328876, 32.476967, 29.985174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939441, 0.272993, -0.207183,
		0.023980, -0.655424, -0.754881,
		-0.341870, 0.704198, -0.622279,
		28.226315, 32.688225, 29.798491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701736, 32.012608, 29.540068>,  <28.465624, 32.195290, 30.234085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701736, 32.012608, 29.540068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908178, 32.093208, 29.207073>,  <29.032043, 32.141567, 29.007277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908178, 32.093208, 29.207073>,  <28.701736, 32.012608, 29.540068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908178, 32.093208, 29.207073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578062, -0.799150, 0.164938,
		-0.632045, -0.566353, -0.528926,
		0.516105, 0.201503, -0.832486,
		29.063009, 32.153660, 28.957327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902176, 31.379778, 29.483463>,  <28.701736, 32.012608, 29.540068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902176, 31.379778, 29.483463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106672, 31.621000, 29.238529>,  <29.229370, 31.765734, 29.091568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106672, 31.621000, 29.238529>,  <28.902176, 31.379778, 29.483463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106672, 31.621000, 29.238529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829635, -0.532292, 0.168438,
		-0.224363, -0.594128, -0.772446,
		0.511241, 0.603057, -0.612336,
		29.260044, 31.801918, 29.054829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937387, 31.141708, 28.759769>,  <28.902176, 31.379778, 29.483463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937387, 31.141708, 28.759769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225489, 31.334320, 28.959515>,  <29.398350, 31.449886, 29.079363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225489, 31.334320, 28.959515>,  <28.937387, 31.141708, 28.759769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225489, 31.334320, 28.959515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589986, -0.803846, -0.075822,
		0.364902, 0.349229, -0.863068,
		0.720252, 0.481530, 0.499365,
		29.441565, 31.478779, 29.109324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590117, 31.110090, 28.242542>,  <28.937387, 31.141708, 28.759769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590117, 31.110090, 28.242542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714575, 31.192226, 28.613707>,  <29.789249, 31.241508, 28.836405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714575, 31.192226, 28.613707>,  <29.590117, 31.110090, 28.242542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714575, 31.192226, 28.613707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647556, -0.760450, -0.048855,
		0.695599, 0.616077, -0.369583,
		0.311147, 0.205342, 0.927913,
		29.807919, 31.253830, 28.892080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326115, 31.031408, 28.189405>,  <29.590117, 31.110090, 28.242542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326115, 31.031408, 28.189405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234447, 31.012154, 28.578283>,  <30.179447, 31.000601, 28.811611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234447, 31.012154, 28.578283>,  <30.326115, 31.031408, 28.189405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234447, 31.012154, 28.578283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419645, -0.906077, 0.054055,
		0.878283, 0.420365, 0.227843,
		-0.229166, -0.048137, 0.972196,
		30.165697, 30.997713, 28.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886585, 30.740496, 28.621546>,  <30.326115, 31.031408, 28.189405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886585, 30.740496, 28.621546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563574, 30.669476, 28.846533>,  <30.369766, 30.626863, 28.981525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563574, 30.669476, 28.846533>,  <30.886585, 30.740496, 28.621546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563574, 30.669476, 28.846533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285259, -0.952237, 0.108959,
		0.516258, 0.248437, 0.819608,
		-0.807530, -0.177550, 0.562469,
		30.321314, 30.616211, 29.015274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052856, 30.377186, 29.266768>,  <30.886585, 30.740496, 28.621546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052856, 30.377186, 29.266768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684587, 30.280823, 29.143917>,  <30.463627, 30.223005, 29.070208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684587, 30.280823, 29.143917>,  <31.052856, 30.377186, 29.266768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684587, 30.280823, 29.143917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188751, -0.963483, 0.189930,
		-0.341664, 0.116893, 0.932524,
		-0.920673, -0.240907, -0.307124,
		30.408386, 30.208551, 29.051781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520166, 30.164347, 29.816185>,  <31.052856, 30.377186, 29.266768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520166, 30.164347, 29.816185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908905, 30.144217, 29.724115>,  <32.142147, 30.132139, 29.668875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908905, 30.144217, 29.724115>,  <31.520166, 30.164347, 29.816185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908905, 30.144217, 29.724115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097410, 0.803697, -0.587012,
		0.214530, 0.592907, 0.776169,
		0.971848, -0.050325, -0.230172,
		32.200459, 30.129120, 29.655064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952127, 30.666431, 30.064075>,  <31.520166, 30.164347, 29.816185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952127, 30.666431, 30.064075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110588, 30.561071, 29.712238>,  <32.205666, 30.497856, 29.501135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110588, 30.561071, 29.712238>,  <31.952127, 30.666431, 30.064075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110588, 30.561071, 29.712238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103475, 0.964674, -0.242273,
		0.912337, 0.004960, 0.409411,
		0.396150, -0.263398, -0.879595,
		32.229431, 30.482052, 29.448360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161541, 31.007437, 30.623987>,  <31.952127, 30.666431, 30.064075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161541, 31.007437, 30.623987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801245, 30.833937, 30.614868>,  <31.585066, 30.729837, 30.609396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801245, 30.833937, 30.614868>,  <32.161541, 31.007437, 30.623987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801245, 30.833937, 30.614868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001774, -0.056162, 0.998420,
		-0.434344, 0.899282, 0.051357,
		-0.900745, -0.433749, -0.022798,
		31.531021, 30.703812, 30.608028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623960, 31.415985, 31.050425>,  <32.161541, 31.007437, 30.623987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623960, 31.415985, 31.050425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571470, 31.019485, 31.044750>,  <31.539976, 30.781586, 31.041346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571470, 31.019485, 31.044750>,  <31.623960, 31.415985, 31.050425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571470, 31.019485, 31.044750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259394, -0.048144, 0.964571,
		-0.956814, 0.122899, 0.263443,
		-0.131228, -0.991251, -0.014186,
		31.532103, 30.722111, 31.040495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998001, 31.250475, 31.453745>,  <31.623960, 31.415985, 31.050425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998001, 31.250475, 31.453745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253033, 30.942547, 31.441956>,  <31.406052, 30.757790, 31.434881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253033, 30.942547, 31.441956>,  <30.998001, 31.250475, 31.453745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253033, 30.942547, 31.441956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243223, 0.164844, 0.955861,
		-0.730983, -0.616605, 0.292339,
		0.637579, -0.769821, -0.029475,
		31.444305, 30.711601, 31.433113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782877, 30.982656, 30.774521>,  <30.998001, 31.250475, 31.453745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782877, 30.982656, 30.774521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605581, 30.972010, 31.132925>,  <30.499205, 30.965622, 31.347967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605581, 30.972010, 31.132925>,  <30.782877, 30.982656, 30.774521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605581, 30.972010, 31.132925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415823, 0.891612, -0.179216,
		-0.794122, -0.452016, -0.406265,
		-0.443239, -0.026615, 0.896008,
		30.472610, 30.964025, 31.401728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006203, 31.110552, 30.658520>,  <30.782877, 30.982656, 30.774521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006203, 31.110552, 30.658520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133045, 31.201014, 31.026932>,  <30.209150, 31.255291, 31.247980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133045, 31.201014, 31.026932>,  <30.006203, 31.110552, 30.658520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133045, 31.201014, 31.026932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194561, 0.966009, -0.170214,
		-0.928219, -0.125221, 0.350326,
		0.317104, 0.226155, 0.921031,
		30.228176, 31.268860, 31.303242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535433, 31.794924, 30.721649>,  <30.006203, 31.110552, 30.658520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535433, 31.794924, 30.721649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840071, 31.799805, 30.980825>,  <30.022854, 31.802734, 31.136332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840071, 31.799805, 30.980825>,  <29.535433, 31.794924, 30.721649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840071, 31.799805, 30.980825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110541, 0.987617, 0.111328,
		-0.638557, -0.156410, 0.753512,
		0.761594, 0.012205, 0.647940,
		30.068548, 31.803467, 31.175207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433825, 32.182995, 31.370436>,  <29.535433, 31.794924, 30.721649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433825, 32.182995, 31.370436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821743, 32.184978, 31.272892>,  <30.054495, 32.186169, 31.214367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821743, 32.184978, 31.272892>,  <29.433825, 32.182995, 31.370436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821743, 32.184978, 31.272892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004037, 0.999330, 0.036381,
		0.243874, -0.036267, 0.969129,
		0.969798, 0.004960, -0.243857,
		30.112682, 32.186466, 31.199736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853836, 32.578659, 31.836285>,  <29.433825, 32.182995, 31.370436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853836, 32.578659, 31.836285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034937, 32.594040, 31.479961>,  <30.143599, 32.603268, 31.266169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034937, 32.594040, 31.479961>,  <29.853836, 32.578659, 31.836285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034937, 32.594040, 31.479961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163158, 0.985774, -0.040369,
		0.876581, 0.163619, 0.452587,
		0.452753, 0.038456, -0.890806,
		30.170763, 32.605576, 31.212719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779346, 33.133293, 31.496477>,  <29.853836, 32.578659, 31.836285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779346, 33.133293, 31.496477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592995, 33.253853, 31.163704>,  <29.481184, 33.326187, 30.964039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592995, 33.253853, 31.163704>,  <29.779346, 33.133293, 31.496477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592995, 33.253853, 31.163704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602214, 0.796857, -0.048550,
		0.648300, -0.523621, -0.552746,
		-0.465882, 0.301396, -0.831934,
		29.453230, 33.344273, 30.914124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294977, 33.286362, 31.058979>,  <29.779346, 33.133293, 31.496477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294977, 33.286362, 31.058979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965614, 33.463200, 30.916679>,  <29.767998, 33.569302, 30.831301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965614, 33.463200, 30.916679>,  <30.294977, 33.286362, 31.058979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965614, 33.463200, 30.916679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466958, 0.884099, 0.017879,
		0.322420, -0.151397, -0.934411,
		-0.823405, 0.442095, -0.355747,
		29.718594, 33.595829, 30.809956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542871, 33.729267, 30.508034>,  <30.294977, 33.286362, 31.058979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542871, 33.729267, 30.508034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184666, 33.844769, 30.643488>,  <29.969742, 33.914070, 30.724760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184666, 33.844769, 30.643488>,  <30.542871, 33.729267, 30.508034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184666, 33.844769, 30.643488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328600, 0.942190, 0.065577,
		-0.300125, 0.170002, -0.938629,
		-0.895515, 0.288752, 0.338637,
		29.916012, 33.931393, 30.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178833, 34.240780, 30.019890>,  <30.542871, 33.729267, 30.508034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178833, 34.240780, 30.019890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105289, 34.255775, 30.412785>,  <30.061163, 34.264774, 30.648521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105289, 34.255775, 30.412785>,  <30.178833, 34.240780, 30.019890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105289, 34.255775, 30.412785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207937, 0.978141, 0.001589,
		-0.960707, 0.204536, -0.187634,
		-0.183858, 0.037490, 0.982238,
		30.050133, 34.267021, 30.707457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704357, 34.727623, 30.118256>,  <30.178833, 34.240780, 30.019890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704357, 34.727623, 30.118256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877546, 34.684845, 30.476271>,  <29.981461, 34.659176, 30.691080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877546, 34.684845, 30.476271>,  <29.704357, 34.727623, 30.118256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877546, 34.684845, 30.476271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179114, 0.983344, 0.030853,
		-0.883431, 0.146955, 0.444919,
		0.432975, -0.106948, 0.895039,
		30.007439, 34.652760, 30.744781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299349, 34.977234, 30.769907>,  <29.704357, 34.727623, 30.118256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299349, 34.977234, 30.769907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696882, 35.020313, 30.780468>,  <29.935402, 35.046162, 30.786804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696882, 35.020313, 30.780468>,  <29.299349, 34.977234, 30.769907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696882, 35.020313, 30.780468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098128, 0.965061, -0.242958,
		-0.051644, 0.238869, 0.969677,
		0.993833, 0.107700, 0.026400,
		29.995031, 35.052624, 30.788387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199581, 35.408318, 30.222929>,  <29.299349, 34.977234, 30.769907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199581, 35.408318, 30.222929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286444, 35.772541, 30.082232>,  <29.338562, 35.991074, 29.997812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286444, 35.772541, 30.082232>,  <29.199581, 35.408318, 30.222929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286444, 35.772541, 30.082232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828150, -0.018894, -0.560189,
		-0.516731, 0.412945, 0.749977,
		0.217157, 0.910560, -0.351743,
		29.351591, 36.045708, 29.976709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621508, 36.000801, 30.312513>,  <29.199581, 35.408318, 30.222929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621508, 36.000801, 30.312513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857845, 35.994835, 29.989855>,  <28.999649, 35.991253, 29.796259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857845, 35.994835, 29.989855>,  <28.621508, 36.000801, 30.312513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857845, 35.994835, 29.989855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806598, -0.032435, -0.590210,
		-0.017359, 0.999362, -0.031197,
		0.590845, -0.014918, -0.806647,
		29.035099, 35.990360, 29.747860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358042, 36.568901, 29.768900>,  <28.621508, 36.000801, 30.312513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358042, 36.568901, 29.768900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569016, 36.289364, 29.575644>,  <28.695601, 36.121639, 29.459690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569016, 36.289364, 29.575644>,  <28.358042, 36.568901, 29.768900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569016, 36.289364, 29.575644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816201, -0.258930, -0.516498,
		0.235854, 0.666759, -0.706969,
		0.527435, -0.698848, -0.483140,
		28.727245, 36.079708, 29.430702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275084, 36.545460, 29.081457>,  <28.358042, 36.568901, 29.768900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275084, 36.545460, 29.081457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350540, 36.162914, 29.170710>,  <28.395815, 35.933388, 29.224260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350540, 36.162914, 29.170710>,  <28.275084, 36.545460, 29.081457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350540, 36.162914, 29.170710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810673, -0.279891, -0.514266,
		0.554276, -0.083874, -0.828096,
		0.188643, -0.956361, 0.223131,
		28.407133, 35.876007, 29.237648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083958, 36.078793, 28.462486>,  <28.275084, 36.545460, 29.081457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083958, 36.078793, 28.462486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039673, 35.872177, 28.802118>,  <28.013102, 35.748207, 29.005898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039673, 35.872177, 28.802118>,  <28.083958, 36.078793, 28.462486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039673, 35.872177, 28.802118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891464, -0.326067, -0.314600,
		0.439358, -0.791752, -0.424374,
		-0.110711, -0.516536, 0.849078,
		28.006460, 35.717216, 29.056843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723673, 36.245964, 28.209084>,  <28.083958, 36.078793, 28.462486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723673, 36.245964, 28.209084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792406, 35.883945, 28.364704>,  <28.833647, 35.666733, 28.458076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792406, 35.883945, 28.364704>,  <28.723673, 36.245964, 28.209084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792406, 35.883945, 28.364704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792819, -0.361461, -0.490697,
		0.584731, -0.224128, -0.779651,
		0.171834, -0.905048, 0.389050,
		28.843956, 35.612431, 28.481419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660875, 35.707001, 27.734789>,  <28.723673, 36.245964, 28.209084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660875, 35.707001, 27.734789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586458, 35.548748, 28.094536>,  <28.541807, 35.453796, 28.310385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586458, 35.548748, 28.094536>,  <28.660875, 35.707001, 27.734789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586458, 35.548748, 28.094536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873540, -0.352432, -0.335736,
		0.449795, -0.848095, -0.280035,
		-0.186043, -0.395634, 0.899367,
		28.530645, 35.430058, 28.364346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561134, 34.999596, 27.562239>,  <28.660875, 35.707001, 27.734789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561134, 34.999596, 27.562239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385094, 35.079865, 27.912334>,  <28.279469, 35.128025, 28.122391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385094, 35.079865, 27.912334>,  <28.561134, 34.999596, 27.562239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385094, 35.079865, 27.912334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871225, -0.331445, -0.362093,
		0.217432, -0.921887, 0.320698,
		-0.440103, 0.200670, 0.875238,
		28.253063, 35.140064, 28.174906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074699, 34.465771, 27.875910>,  <28.561134, 34.999596, 27.562239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074699, 34.465771, 27.875910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931923, 34.826302, 27.974056>,  <27.846258, 35.042622, 28.032944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931923, 34.826302, 27.974056>,  <28.074699, 34.465771, 27.875910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931923, 34.826302, 27.974056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852448, -0.206875, -0.480141,
		-0.382004, -0.380542, 0.842176,
		-0.356939, 0.901327, 0.245365,
		27.824841, 35.096699, 28.047667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585470, 34.884502, 27.555534>,  <28.074699, 34.465771, 27.875910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585470, 34.884502, 27.555534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338074, 34.788719, 27.854902>,  <27.189636, 34.731247, 28.034523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338074, 34.788719, 27.854902>,  <27.585470, 34.884502, 27.555534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338074, 34.788719, 27.854902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691330, 0.286938, 0.663120,
		-0.373541, 0.927537, -0.011921,
		-0.618489, -0.239461, 0.748418,
		27.152527, 34.716881, 28.079428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363899, 35.449764, 27.875353>,  <27.585470, 34.884502, 27.555534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363899, 35.449764, 27.875353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381624, 35.126541, 28.110325>,  <27.392260, 34.932606, 28.251308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381624, 35.126541, 28.110325>,  <27.363899, 35.449764, 27.875353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381624, 35.126541, 28.110325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711167, 0.438480, 0.549523,
		-0.701625, 0.393409, 0.594098,
		0.044313, -0.808062, 0.587428,
		27.394918, 34.884121, 28.286552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308569, 35.726482, 28.617321>,  <27.363899, 35.449764, 27.875353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308569, 35.726482, 28.617321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514730, 35.397041, 28.522640>,  <27.638428, 35.199375, 28.465832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514730, 35.397041, 28.522640>,  <27.308569, 35.726482, 28.617321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514730, 35.397041, 28.522640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760558, 0.312366, 0.569192,
		-0.394853, -0.473391, 0.787396,
		0.515406, -0.823607, -0.236702,
		27.669352, 35.149960, 28.451630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512495, 35.307442, 29.290314>,  <27.308569, 35.726482, 28.617321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512495, 35.307442, 29.290314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746569, 35.280655, 28.967062>,  <27.887012, 35.264584, 28.773111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.746569, 35.280655, 28.967062>,  <27.512495, 35.307442, 29.290314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746569, 35.280655, 28.967062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774651, 0.340808, 0.532697,
		0.239743, -0.937745, 0.251313,
		0.585184, -0.066969, -0.808131,
		27.922123, 35.260563, 28.724623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137144, 35.057476, 29.533823>,  <27.512495, 35.307442, 29.290314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137144, 35.057476, 29.533823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242685, 35.205257, 29.177422>,  <28.306011, 35.293926, 28.963581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242685, 35.205257, 29.177422>,  <28.137144, 35.057476, 29.533823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242685, 35.205257, 29.177422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835907, 0.373336, 0.402343,
		0.481290, -0.850955, -0.210322,
		0.263855, 0.369454, -0.891002,
		28.321842, 35.316093, 28.910122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877712, 34.870323, 29.291904>,  <28.137144, 35.057476, 29.533823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877712, 34.870323, 29.291904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779383, 35.227573, 29.141228>,  <28.720385, 35.441925, 29.050821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779383, 35.227573, 29.141228>,  <28.877712, 34.870323, 29.291904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779383, 35.227573, 29.141228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929884, 0.327002, 0.168481,
		0.273653, -0.308861, -0.910889,
		-0.245825, 0.893126, -0.376690,
		28.705635, 35.495510, 29.028221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458357, 35.153622, 28.921471>,  <28.877712, 34.870323, 29.291904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458357, 35.153622, 28.921471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222013, 35.445744, 29.058605>,  <29.080208, 35.621017, 29.140886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222013, 35.445744, 29.058605>,  <29.458357, 35.153622, 28.921471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222013, 35.445744, 29.058605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806546, 0.524596, 0.272547,
		0.019193, 0.437550, -0.898989,
		-0.590859, 0.730307, 0.342836,
		29.044756, 35.664837, 29.161455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763655, 35.897957, 28.724394>,  <29.458357, 35.153622, 28.921471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763655, 35.897957, 28.724394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535023, 35.910336, 29.052378>,  <29.397842, 35.917763, 29.249168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535023, 35.910336, 29.052378>,  <29.763655, 35.897957, 28.724394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535023, 35.910336, 29.052378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747735, 0.431171, 0.504960,
		-0.337916, 0.901739, -0.269590,
		-0.571582, 0.030947, 0.819961,
		29.363548, 35.919621, 29.298367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734346, 35.567760, 28.104559>,  <29.763655, 35.897957, 28.724394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734346, 35.567760, 28.104559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535490, 35.336342, 27.845905>,  <29.416176, 35.197491, 27.690712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535490, 35.336342, 27.845905>,  <29.734346, 35.567760, 28.104559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535490, 35.336342, 27.845905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063384, 0.719051, -0.692061,
		0.865351, -0.385039, -0.320800,
		-0.497142, -0.578542, -0.646636,
		29.386347, 35.162781, 27.651915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054144, 35.423134, 27.398737>,  <29.734346, 35.567760, 28.104559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054144, 35.423134, 27.398737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665348, 35.348095, 27.342102>,  <29.432072, 35.303070, 27.308121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.665348, 35.348095, 27.342102>,  <30.054144, 35.423134, 27.398737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665348, 35.348095, 27.342102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062587, 0.374066, -0.925288,
		0.226542, -0.908230, -0.351847,
		-0.971988, -0.187596, -0.141585,
		29.373751, 35.291817, 27.299627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440058, 35.180164, 26.754997>,  <30.054144, 35.423134, 27.398737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440058, 35.180164, 26.754997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487034, 35.515850, 26.967386>,  <30.515219, 35.717262, 27.094820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487034, 35.515850, 26.967386>,  <30.440058, 35.180164, 26.754997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487034, 35.515850, 26.967386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984085, -0.026544, -0.175707,
		-0.133361, 0.543155, -0.828973,
		0.117440, 0.839212, 0.530971,
		30.522266, 35.767612, 27.126678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939516, 35.664276, 26.336100>,  <30.440058, 35.180164, 26.754997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939516, 35.664276, 26.336100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925646, 35.806046, 26.709877>,  <30.917324, 35.891106, 26.934143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925646, 35.806046, 26.709877>,  <30.939516, 35.664276, 26.336100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925646, 35.806046, 26.709877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964121, 0.258094, -0.062113,
		-0.263188, 0.898761, -0.350658,
		-0.034677, 0.354424, 0.934441,
		30.915243, 35.912373, 26.990210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026260, 36.417233, 26.384132>,  <30.939516, 35.664276, 26.336100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026260, 36.417233, 26.384132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143541, 36.216537, 26.709658>,  <31.213909, 36.096123, 26.904974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143541, 36.216537, 26.709658>,  <31.026260, 36.417233, 26.384132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143541, 36.216537, 26.709658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945276, 0.279571, -0.168204,
		-0.143126, 0.818598, 0.556248,
		0.293202, -0.501734, 0.813815,
		31.231503, 36.066017, 26.953802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709869, 36.700211, 26.513006>,  <31.026260, 36.417233, 26.384132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709869, 36.700211, 26.513006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722069, 36.423817, 26.801897>,  <31.729389, 36.257980, 26.975231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722069, 36.423817, 26.801897>,  <31.709869, 36.700211, 26.513006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722069, 36.423817, 26.801897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999533, 0.022375, -0.020802,
		-0.001786, 0.722524, 0.691343,
		0.030499, -0.690983, 0.722227,
		31.731218, 36.216522, 27.018564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150566, 36.943153, 27.115526>,  <31.709869, 36.700211, 26.513006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150566, 36.943153, 27.115526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141308, 36.543373, 27.106079>,  <32.135754, 36.303505, 27.100410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141308, 36.543373, 27.106079>,  <32.150566, 36.943153, 27.115526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141308, 36.543373, 27.106079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996159, -0.021062, -0.084989,
		0.084445, -0.025493, 0.996102,
		-0.023147, -0.999453, -0.023616,
		32.134365, 36.243538, 27.098993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677067, 36.783745, 27.438280>,  <32.150566, 36.943153, 27.115526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677067, 36.783745, 27.438280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618797, 36.430969, 27.258963>,  <32.583836, 36.219303, 27.151373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618797, 36.430969, 27.258963>,  <32.677067, 36.783745, 27.438280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618797, 36.430969, 27.258963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880311, 0.091232, -0.465543,
		0.451478, -0.462454, 0.763088,
		-0.145674, -0.881937, -0.448292,
		32.575096, 36.166389, 27.124475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310760, 36.470470, 27.443962>,  <32.677067, 36.783745, 27.438280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310760, 36.470470, 27.443962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092567, 36.278374, 27.169207>,  <32.961651, 36.163116, 27.004354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092567, 36.278374, 27.169207>,  <33.310760, 36.470470, 27.443962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092567, 36.278374, 27.169207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793943, -0.033522, -0.607068,
		0.268512, -0.876497, 0.399568,
		-0.545487, -0.480239, -0.686887,
		32.928921, 36.134300, 26.963140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794029, 35.924015, 27.196943>,  <33.310760, 36.470470, 27.443962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794029, 35.924015, 27.196943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507168, 35.974434, 26.922773>,  <33.335052, 36.004684, 26.758270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507168, 35.974434, 26.922773>,  <33.794029, 35.924015, 27.196943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507168, 35.974434, 26.922773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686325, -0.043109, -0.726016,
		-0.121062, -0.991087, -0.055595,
		-0.717149, 0.126049, -0.685426,
		33.292023, 36.012249, 26.717146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973637, 35.388851, 26.759340>,  <33.794029, 35.924015, 27.196943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973637, 35.388851, 26.759340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736717, 35.660374, 26.585716>,  <33.594566, 35.823288, 26.481543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736717, 35.660374, 26.585716>,  <33.973637, 35.388851, 26.759340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736717, 35.660374, 26.585716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502699, -0.109673, -0.857476,
		-0.629662, -0.726084, -0.276274,
		-0.592300, 0.678803, -0.434059,
		33.559029, 35.864014, 26.455498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937485, 35.206181, 25.954905>,  <33.973637, 35.388851, 26.759340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937485, 35.206181, 25.954905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852600, 35.591373, 26.021393>,  <33.801670, 35.822491, 26.061287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852600, 35.591373, 26.021393>,  <33.937485, 35.206181, 25.954905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852600, 35.591373, 26.021393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587602, 0.261657, -0.765676,
		-0.780825, -0.064816, -0.621378,
		-0.212216, 0.962982, 0.166223,
		33.788937, 35.880268, 26.071260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930351, 35.409492, 25.337126>,  <33.937485, 35.206181, 25.954905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930351, 35.409492, 25.337126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938278, 35.747471, 25.550919>,  <33.943035, 35.950260, 25.679193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938278, 35.747471, 25.550919>,  <33.930351, 35.409492, 25.337126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938278, 35.747471, 25.550919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598410, 0.418236, -0.683362,
		-0.800945, 0.333380, -0.497338,
		0.019815, 0.844948, 0.534482,
		33.944221, 36.000954, 25.711264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985111, 35.867878, 24.816517>,  <33.930351, 35.409492, 25.337126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985111, 35.867878, 24.816517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113865, 36.077843, 25.131697>,  <34.191116, 36.203819, 25.320805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113865, 36.077843, 25.131697>,  <33.985111, 35.867878, 24.816517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113865, 36.077843, 25.131697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596104, 0.534218, -0.599393,
		-0.735563, 0.662632, -0.140946,
		0.321881, 0.524910, 0.787948,
		34.210430, 36.235317, 25.368082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062843, 36.533966, 24.556387>,  <33.985111, 35.867878, 24.816517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062843, 36.533966, 24.556387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263931, 36.523270, 24.902002>,  <34.384583, 36.516853, 25.109371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263931, 36.523270, 24.902002>,  <34.062843, 36.533966, 24.556387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263931, 36.523270, 24.902002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619920, 0.707762, -0.338780,
		-0.602473, 0.705944, 0.372383,
		0.502719, -0.026742, 0.864036,
		34.414745, 36.515247, 25.161213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044014, 37.230633, 24.850636>,  <34.062843, 36.533966, 24.556387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044014, 37.230633, 24.850636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350311, 36.992104, 24.947001>,  <34.534088, 36.848984, 25.004820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350311, 36.992104, 24.947001>,  <34.044014, 37.230633, 24.850636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350311, 36.992104, 24.947001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611186, 0.558082, -0.561246,
		0.200238, 0.577009, 0.791811,
		0.765739, -0.596327, 0.240910,
		34.580032, 36.813206, 25.019274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517246, 37.595116, 25.054956>,  <34.044014, 37.230633, 24.850636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517246, 37.595116, 25.054956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708614, 37.263809, 24.938272>,  <34.823437, 37.065025, 24.868261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708614, 37.263809, 24.938272>,  <34.517246, 37.595116, 25.054956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708614, 37.263809, 24.938272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702760, 0.560319, -0.438372,
		0.526539, 0.004723, 0.850138,
		0.478419, -0.828263, -0.291711,
		34.852139, 37.015331, 24.850760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097610, 37.608334, 25.385660>,  <34.517246, 37.595116, 25.054956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097610, 37.608334, 25.385660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109783, 37.403854, 25.042089>,  <35.117088, 37.281166, 24.835947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109783, 37.403854, 25.042089>,  <35.097610, 37.608334, 25.385660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109783, 37.403854, 25.042089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687346, 0.634596, -0.353331,
		0.725692, -0.579626, 0.370681,
		0.030432, -0.511196, -0.858925,
		35.118912, 37.250496, 24.784412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885529, 37.731525, 25.224648>,  <35.097610, 37.608334, 25.385660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885529, 37.731525, 25.224648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702026, 37.557297, 24.914856>,  <35.591927, 37.452759, 24.728981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702026, 37.557297, 24.914856>,  <35.885529, 37.731525, 25.224648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702026, 37.557297, 24.914856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554017, 0.541234, -0.632559,
		0.694702, -0.719264, -0.006978,
		-0.458754, -0.435574, -0.774481,
		35.564400, 37.426624, 24.682512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368340, 37.579380, 24.695189>,  <35.885529, 37.731525, 25.224648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368340, 37.579380, 24.695189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019650, 37.555706, 24.500626>,  <35.810436, 37.541504, 24.383888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019650, 37.555706, 24.500626>,  <36.368340, 37.579380, 24.695189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019650, 37.555706, 24.500626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365198, 0.583368, -0.725474,
		0.326689, -0.810049, -0.486924,
		-0.871726, -0.059180, -0.486408,
		35.758133, 37.537952, 24.354704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464226, 37.253479, 24.041458>,  <36.368340, 37.579380, 24.695189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464226, 37.253479, 24.041458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144192, 37.491291, 24.009460>,  <35.952171, 37.633976, 23.990261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144192, 37.491291, 24.009460>,  <36.464226, 37.253479, 24.041458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144192, 37.491291, 24.009460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360794, 0.370370, -0.855952,
		-0.479260, -0.713696, -0.510830,
		-0.800086, 0.594528, -0.079994,
		35.904167, 37.669651, 23.985462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451927, 37.308601, 23.382027>,  <36.464226, 37.253479, 24.041458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451927, 37.308601, 23.382027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211506, 37.607819, 23.494576>,  <36.067253, 37.787350, 23.562105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211506, 37.607819, 23.494576>,  <36.451927, 37.308601, 23.382027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211506, 37.607819, 23.494576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182533, 0.471242, -0.862909,
		-0.778088, -0.467291, -0.419782,
		-0.601049, 0.748044, 0.281372,
		36.031193, 37.832233, 23.578987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944172, 37.411911, 22.850006>,  <36.451927, 37.308601, 23.382027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944172, 37.411911, 22.850006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954311, 37.754551, 23.056149>,  <35.960396, 37.960136, 23.179834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954311, 37.754551, 23.056149>,  <35.944172, 37.411911, 22.850006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954311, 37.754551, 23.056149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179489, 0.503243, -0.845299,
		-0.983433, 0.113927, -0.140995,
		0.025348, 0.856602, 0.515355,
		35.961914, 38.011532, 23.210754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404972, 37.964413, 22.503132>,  <35.944172, 37.411911, 22.850006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404972, 37.964413, 22.503132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704048, 38.136013, 22.705883>,  <35.883492, 38.238972, 22.827534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704048, 38.136013, 22.705883>,  <35.404972, 37.964413, 22.503132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704048, 38.136013, 22.705883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323533, 0.431249, -0.842230,
		-0.579906, 0.793715, 0.183643,
		0.747686, 0.428999, 0.506877,
		35.928352, 38.264713, 22.857946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484211, 38.582565, 22.133902>,  <35.404972, 37.964413, 22.503132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484211, 38.582565, 22.133902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811729, 38.586834, 22.363493>,  <36.008240, 38.589394, 22.501247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811729, 38.586834, 22.363493>,  <35.484211, 38.582565, 22.133902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811729, 38.586834, 22.363493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512389, 0.437304, -0.739069,
		-0.258890, 0.899251, 0.352597,
		0.818800, 0.010671, 0.573980,
		36.057369, 38.590034, 22.535686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700428, 39.222561, 22.000380>,  <35.484211, 38.582565, 22.133902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700428, 39.222561, 22.000380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023602, 39.049278, 22.160172>,  <36.217506, 38.945309, 22.256046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023602, 39.049278, 22.160172>,  <35.700428, 39.222561, 22.000380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023602, 39.049278, 22.160172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583927, 0.497396, -0.641581,
		0.079235, 0.751620, 0.654820,
		0.807930, -0.433203, 0.399480,
		36.265980, 38.919319, 22.280016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230846, 39.739422, 22.231026>,  <35.700428, 39.222561, 22.000380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230846, 39.739422, 22.231026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427940, 39.398617, 22.160271>,  <36.546196, 39.194134, 22.117819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427940, 39.398617, 22.160271>,  <36.230846, 39.739422, 22.231026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427940, 39.398617, 22.160271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542892, 0.459857, -0.702709,
		0.680057, 0.250222, 0.689139,
		0.492738, -0.852010, -0.176886,
		36.575760, 39.143013, 22.107204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943336, 39.988003, 22.097155>,  <36.230846, 39.739422, 22.231026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943336, 39.988003, 22.097155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954243, 39.614021, 21.955662>,  <36.960785, 39.389633, 21.870766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954243, 39.614021, 21.955662>,  <36.943336, 39.988003, 22.097155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954243, 39.614021, 21.955662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577822, 0.303496, -0.757636,
		0.815708, -0.183740, 0.548508,
		0.027261, -0.934949, -0.353733,
		36.962421, 39.333538, 21.849543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631622, 39.948586, 21.812908>,  <36.943336, 39.988003, 22.097155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631622, 39.948586, 21.812908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420853, 39.655258, 21.641050>,  <37.294392, 39.479263, 21.537935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420853, 39.655258, 21.641050>,  <37.631622, 39.948586, 21.812908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420853, 39.655258, 21.641050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296466, 0.315178, -0.901538,
		0.796527, -0.602421, 0.051327,
		-0.526928, -0.733316, -0.429645,
		37.262775, 39.435265, 21.512157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077305, 39.668640, 21.368162>,  <37.631622, 39.948586, 21.812908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077305, 39.668640, 21.368162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709473, 39.590157, 21.232000>,  <37.488773, 39.543068, 21.150303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709473, 39.590157, 21.232000>,  <38.077305, 39.668640, 21.368162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709473, 39.590157, 21.232000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283627, 0.268061, -0.920706,
		0.271927, -0.943204, -0.190843,
		-0.919571, -0.196237, -0.340411,
		37.433598, 39.531296, 21.129879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225079, 39.292248, 20.708618>,  <38.077305, 39.668640, 21.368162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225079, 39.292248, 20.708618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854565, 39.442764, 20.700691>,  <37.632256, 39.533073, 20.695934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854565, 39.442764, 20.700691>,  <38.225079, 39.292248, 20.708618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854565, 39.442764, 20.700691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118252, 0.240351, -0.963456,
		-0.357779, -0.894782, -0.267132,
		-0.926289, 0.376293, -0.019817,
		37.576679, 39.555653, 20.694746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885124, 39.099354, 20.016354>,  <38.225079, 39.292248, 20.708618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885124, 39.099354, 20.016354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657539, 39.399418, 20.151136>,  <37.520988, 39.579456, 20.232006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657539, 39.399418, 20.151136>,  <37.885124, 39.099354, 20.016354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657539, 39.399418, 20.151136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017207, 0.398794, -0.916879,
		-0.822182, -0.527469, -0.213992,
		-0.568964, 0.750160, 0.336958,
		37.486851, 39.624466, 20.252224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422039, 39.233746, 19.476433>,  <37.885124, 39.099354, 20.016354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422039, 39.233746, 19.476433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384621, 39.577282, 19.677883>,  <37.362171, 39.783405, 19.798754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384621, 39.577282, 19.677883>,  <37.422039, 39.233746, 19.476433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384621, 39.577282, 19.677883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078395, 0.510625, -0.856222,
		-0.992524, -0.040613, -0.115095,
		-0.093544, 0.858844, 0.503624,
		37.356556, 39.834934, 19.828970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090530, 39.633434, 19.050694>,  <37.422039, 39.233746, 19.476433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090530, 39.633434, 19.050694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245457, 39.912800, 19.291426>,  <37.338413, 40.080421, 19.435865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245457, 39.912800, 19.291426>,  <37.090530, 39.633434, 19.050694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245457, 39.912800, 19.291426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329375, 0.504880, -0.797878,
		-0.861104, 0.507258, -0.034494,
		0.387314, 0.698417, 0.601832,
		37.361652, 40.122326, 19.471975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739853, 40.308548, 18.895409>,  <37.090530, 39.633434, 19.050694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739853, 40.308548, 18.895409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090786, 40.409615, 19.058598>,  <37.301346, 40.470253, 19.156511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090786, 40.409615, 19.058598>,  <36.739853, 40.308548, 18.895409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090786, 40.409615, 19.058598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221267, 0.541398, -0.811128,
		-0.425818, 0.801903, 0.419082,
		0.877337, 0.252664, 0.407972,
		37.353989, 40.485413, 19.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912514, 40.873493, 18.513151>,  <36.739853, 40.308548, 18.895409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912514, 40.873493, 18.513151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251225, 40.764889, 18.696123>,  <37.454453, 40.699726, 18.805906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251225, 40.764889, 18.696123>,  <36.912514, 40.873493, 18.513151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251225, 40.764889, 18.696123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531908, 0.441874, -0.722372,
		-0.005996, 0.855002, 0.518590,
		0.846781, -0.271511, 0.457432,
		37.505260, 40.683434, 18.833353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317825, 41.423443, 18.595634>,  <36.912514, 40.873493, 18.513151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317825, 41.423443, 18.595634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583248, 41.124512, 18.609478>,  <37.742500, 40.945152, 18.617785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583248, 41.124512, 18.609478>,  <37.317825, 41.423443, 18.595634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583248, 41.124512, 18.609478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588127, 0.492493, -0.641527,
		0.462384, 0.446045, 0.766319,
		0.663557, -0.747325, 0.034611,
		37.782314, 40.900314, 18.619862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843872, 41.792736, 18.717524>,  <37.317825, 41.423443, 18.595634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843872, 41.792736, 18.717524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968819, 41.436340, 18.585730>,  <38.043789, 41.222504, 18.506653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968819, 41.436340, 18.585730>,  <37.843872, 41.792736, 18.717524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968819, 41.436340, 18.585730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629949, 0.453894, -0.630194,
		0.711049, -0.010707, 0.703061,
		0.312368, -0.890991, -0.329486,
		38.062531, 41.169044, 18.486883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576702, 41.830700, 18.747791>,  <37.843872, 41.792736, 18.717524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576702, 41.830700, 18.747791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492054, 41.526939, 18.501692>,  <38.441265, 41.344685, 18.354033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492054, 41.526939, 18.501692>,  <38.576702, 41.830700, 18.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492054, 41.526939, 18.501692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698078, 0.323142, -0.638957,
		0.684036, -0.564707, 0.461737,
		-0.211616, -0.759398, -0.615250,
		38.428570, 41.299122, 18.317116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140514, 41.335426, 18.633438>,  <38.576702, 41.830700, 18.747791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140514, 41.335426, 18.633438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911274, 41.348183, 18.305893>,  <38.773731, 41.355839, 18.109365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911274, 41.348183, 18.305893>,  <39.140514, 41.335426, 18.633438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911274, 41.348183, 18.305893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769687, 0.363969, -0.524508,
		0.281312, -0.930865, -0.233140,
		-0.573102, 0.031895, -0.818864,
		38.739342, 41.357750, 18.060234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575603, 41.171448, 18.174873>,  <39.140514, 41.335426, 18.633438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575603, 41.171448, 18.174873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285366, 41.322350, 17.944679>,  <39.111221, 41.412891, 17.806562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285366, 41.322350, 17.944679>,  <39.575603, 41.171448, 18.174873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285366, 41.322350, 17.944679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688074, 0.407365, -0.600507,
		0.007888, -0.831704, -0.555163,
		-0.725598, 0.377257, -0.575487,
		39.067688, 41.435528, 17.772034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813877, 41.033569, 17.519703>,  <39.575603, 41.171448, 18.174873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813877, 41.033569, 17.519703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544827, 41.326397, 17.476538>,  <39.383396, 41.502094, 17.450638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544827, 41.326397, 17.476538>,  <39.813877, 41.033569, 17.519703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544827, 41.326397, 17.476538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482849, 0.323694, -0.813682,
		-0.560744, -0.599408, -0.571205,
		-0.672624, 0.732074, -0.107914,
		39.343040, 41.546021, 17.444164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965305, 41.203434, 16.798519>,  <39.813877, 41.033569, 17.519703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965305, 41.203434, 16.798519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716221, 41.488064, 16.928682>,  <39.566769, 41.658840, 17.006781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716221, 41.488064, 16.928682>,  <39.965305, 41.203434, 16.798519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716221, 41.488064, 16.928682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308889, 0.605668, -0.733317,
		-0.718899, -0.356130, -0.596955,
		-0.622713, 0.711574, 0.325410,
		39.529408, 41.701534, 17.026306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534500, 41.411865, 16.210081>,  <39.965305, 41.203434, 16.798519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534500, 41.411865, 16.210081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579914, 41.686741, 16.497103>,  <39.607162, 41.851665, 16.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579914, 41.686741, 16.497103>,  <39.534500, 41.411865, 16.210081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579914, 41.686741, 16.497103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473661, 0.597428, -0.647090,
		-0.873358, 0.413345, -0.257664,
		0.113535, 0.687187, 0.717554,
		39.613976, 41.892899, 16.712370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374863, 42.117748, 15.922569>,  <39.534500, 41.411865, 16.210081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374863, 42.117748, 15.922569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592075, 42.209270, 16.245745>,  <39.722404, 42.264183, 16.439650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592075, 42.209270, 16.245745>,  <39.374863, 42.117748, 15.922569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592075, 42.209270, 16.245745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420879, 0.758415, -0.497662,
		-0.726619, 0.610291, 0.315546,
		0.543034, 0.228804, 0.807938,
		39.754986, 42.277912, 16.488127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359280, 42.884010, 16.137423>,  <39.374863, 42.117748, 15.922569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359280, 42.884010, 16.137423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697769, 42.701832, 16.248041>,  <39.900864, 42.592525, 16.314413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697769, 42.701832, 16.248041>,  <39.359280, 42.884010, 16.137423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697769, 42.701832, 16.248041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531929, 0.752232, -0.388842,
		-0.030932, 0.476151, 0.878819,
		0.846224, -0.455442, 0.276547,
		39.951637, 42.565201, 16.331005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607746, 43.489017, 16.561422>,  <39.359280, 42.884010, 16.137423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607746, 43.489017, 16.561422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546753, 43.880196, 16.618502>,  <39.510159, 44.114902, 16.652750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546753, 43.880196, 16.618502>,  <39.607746, 43.489017, 16.561422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546753, 43.880196, 16.618502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842772, 0.204084, -0.498082,
		-0.516222, 0.044313, -0.855308,
		-0.152483, 0.977950, 0.142698,
		39.501007, 44.173580, 16.661312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714321, 43.917240, 15.911249>,  <39.607746, 43.489017, 16.561422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714321, 43.917240, 15.911249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766949, 44.140011, 16.239279>,  <39.798527, 44.273674, 16.436096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766949, 44.140011, 16.239279>,  <39.714321, 43.917240, 15.911249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766949, 44.140011, 16.239279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884593, 0.307422, -0.350694,
		-0.447420, 0.771572, -0.452207,
		0.131568, 0.556927, 0.820074,
		39.806419, 44.307091, 16.485302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927048, 44.542782, 15.734462>,  <39.714321, 43.917240, 15.911249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927048, 44.542782, 15.734462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057751, 44.457676, 16.102800>,  <40.136173, 44.406612, 16.323803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057751, 44.457676, 16.102800>,  <39.927048, 44.542782, 15.734462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057751, 44.457676, 16.102800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925791, 0.268040, -0.266582,
		-0.190104, 0.939620, 0.284562,
		0.326760, -0.212767, 0.920847,
		40.155777, 44.393845, 16.379055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402710, 45.058357, 15.929917>,  <39.927048, 44.542782, 15.734462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402710, 45.058357, 15.929917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501396, 44.730640, 16.136953>,  <40.560608, 44.534012, 16.261175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501396, 44.730640, 16.136953>,  <40.402710, 45.058357, 15.929917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501396, 44.730640, 16.136953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961074, 0.138305, -0.239182,
		0.124373, 0.556452, 0.821519,
		0.246714, -0.819288, 0.517590,
		40.575409, 44.484856, 16.292231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934978, 44.676144, 15.631985>,  <40.402710, 45.058357, 15.929917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934978, 44.676144, 15.631985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096542, 44.864197, 15.945885>,  <41.193481, 44.977028, 16.134224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096542, 44.864197, 15.945885>,  <40.934978, 44.676144, 15.631985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096542, 44.864197, 15.945885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555678, -0.555353, 0.618712,
		0.726690, -0.685972, 0.036930,
		0.403910, 0.470133, 0.784749,
		41.217716, 45.005238, 16.181309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021107, 44.116482, 16.134977>,  <40.934978, 44.676144, 15.631985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021107, 44.116482, 16.134977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997429, 44.458881, 16.340412>,  <40.983223, 44.664322, 16.463673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997429, 44.458881, 16.340412>,  <41.021107, 44.116482, 16.134977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997429, 44.458881, 16.340412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660797, -0.419232, 0.622569,
		0.748227, -0.302520, 0.590456,
		-0.059198, 0.855994, 0.513585,
		40.979668, 44.715679, 16.494488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189217, 43.967678, 16.880911>,  <41.021107, 44.116482, 16.134977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189217, 43.967678, 16.880911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975693, 44.301239, 16.824848>,  <40.847576, 44.501377, 16.791210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975693, 44.301239, 16.824848>,  <41.189217, 43.967678, 16.880911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975693, 44.301239, 16.824848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753963, -0.394335, 0.525395,
		0.382862, 0.386135, 0.839235,
		-0.533813, 0.833906, -0.140155,
		40.815548, 44.551411, 16.782801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746204, 44.221443, 17.518021>,  <41.189217, 43.967678, 16.880911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746204, 44.221443, 17.518021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559879, 44.313175, 17.176161>,  <40.448082, 44.368214, 16.971045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559879, 44.313175, 17.176161>,  <40.746204, 44.221443, 17.518021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559879, 44.313175, 17.176161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884581, -0.145865, 0.442989,
		-0.023072, 0.962357, 0.270808,
		-0.465815, 0.229331, -0.854648,
		40.420135, 44.381973, 16.919765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438942, 44.911045, 17.479837>,  <40.746204, 44.221443, 17.518021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438942, 44.911045, 17.479837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230419, 44.659340, 17.249268>,  <40.105305, 44.508316, 17.110926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230419, 44.659340, 17.249268>,  <40.438942, 44.911045, 17.479837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230419, 44.659340, 17.249268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766584, 0.048529, 0.640308,
		-0.374949, 0.775675, -0.507682,
		-0.521308, -0.629264, -0.576424,
		40.074028, 44.470562, 17.076340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608185, 45.105186, 17.415989>,  <40.438942, 44.911045, 17.479837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608185, 45.105186, 17.415989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687195, 44.717762, 17.355488>,  <39.734600, 44.485310, 17.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687195, 44.717762, 17.355488>,  <39.608185, 45.105186, 17.415989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687195, 44.717762, 17.355488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536134, -0.235906, 0.810499,
		-0.820697, -0.079003, -0.565875,
		0.197525, -0.968560, -0.151251,
		39.746452, 44.427193, 17.310112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911667, 44.727997, 17.372122>,  <39.608185, 45.105186, 17.415989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911667, 44.727997, 17.372122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206406, 44.479698, 17.479248>,  <39.383251, 44.330719, 17.543524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206406, 44.479698, 17.479248>,  <38.911667, 44.727997, 17.372122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206406, 44.479698, 17.479248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537328, -0.297326, 0.789225,
		-0.410280, -0.725445, -0.552630,
		0.736850, -0.620747, 0.267815,
		39.427460, 44.293476, 17.559593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485844, 44.063808, 17.374489>,  <38.911667, 44.727997, 17.372122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485844, 44.063808, 17.374489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827621, 44.003387, 17.573330>,  <39.032688, 43.967136, 17.692635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827621, 44.003387, 17.573330>,  <38.485844, 44.063808, 17.374489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827621, 44.003387, 17.573330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512585, -0.401164, 0.759160,
		0.084748, -0.903466, -0.420198,
		0.854445, -0.151050, 0.497101,
		39.083954, 43.958073, 17.722460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444199, 43.406155, 17.758972>,  <38.485844, 44.063808, 17.374489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444199, 43.406155, 17.758972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749012, 43.580708, 17.950336>,  <38.931900, 43.685440, 18.065155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749012, 43.580708, 17.950336>,  <38.444199, 43.406155, 17.758972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749012, 43.580708, 17.950336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397433, -0.268100, 0.877593,
		0.511224, -0.858893, -0.030871,
		0.762035, 0.436378, 0.478411,
		38.977623, 43.711620, 18.093861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708992, 42.873363, 18.308376>,  <38.444199, 43.406155, 17.758972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708992, 42.873363, 18.308376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805523, 43.243614, 18.424974>,  <38.863441, 43.465767, 18.494934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805523, 43.243614, 18.424974>,  <38.708992, 42.873363, 18.308376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805523, 43.243614, 18.424974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506079, -0.136259, 0.851656,
		0.828038, -0.353045, 0.435560,
		0.241323, 0.925631, 0.291497,
		38.877918, 43.521305, 18.512423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224583, 42.879368, 18.832170>,  <38.708992, 42.873363, 18.308376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224583, 42.879368, 18.832170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072968, 43.246304, 18.880850>,  <38.981998, 43.466465, 18.910057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072968, 43.246304, 18.880850>,  <39.224583, 42.879368, 18.832170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072968, 43.246304, 18.880850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301527, -0.246770, 0.920970,
		0.874878, 0.312387, 0.370139,
		-0.379038, 0.917343, 0.121700,
		38.959255, 43.521507, 18.917360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472046, 43.069901, 19.478910>,  <39.224583, 42.879368, 18.832170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472046, 43.069901, 19.478910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151402, 43.289707, 19.384708>,  <38.959015, 43.421589, 19.328188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151402, 43.289707, 19.384708>,  <39.472046, 43.069901, 19.478910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151402, 43.289707, 19.384708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346351, -0.105764, 0.932124,
		0.487306, 0.828764, 0.275105,
		-0.801607, 0.549512, -0.235504,
		38.910919, 43.454559, 19.314056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424793, 43.523270, 20.014851>,  <39.472046, 43.069901, 19.478910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424793, 43.523270, 20.014851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055313, 43.527729, 19.861668>,  <38.833626, 43.530403, 19.769758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055313, 43.527729, 19.861668>,  <39.424793, 43.523270, 20.014851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055313, 43.527729, 19.861668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376210, 0.162608, 0.912154,
		0.072441, 0.986627, -0.146006,
		-0.923698, 0.011148, -0.382959,
		38.778202, 43.531075, 19.746780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091244, 43.928680, 20.449192>,  <39.424793, 43.523270, 20.014851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091244, 43.928680, 20.449192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781834, 43.755363, 20.264187>,  <38.596188, 43.651371, 20.153183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781834, 43.755363, 20.264187>,  <39.091244, 43.928680, 20.449192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781834, 43.755363, 20.264187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384890, -0.258620, 0.885988,
		-0.503510, 0.863348, 0.033278,
		-0.773523, -0.433295, -0.462512,
		38.549778, 43.625374, 20.125433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488064, 44.104870, 20.863081>,  <39.091244, 43.928680, 20.449192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488064, 44.104870, 20.863081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358948, 43.793770, 20.647335>,  <38.281479, 43.607109, 20.517887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358948, 43.793770, 20.647335>,  <38.488064, 44.104870, 20.863081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358948, 43.793770, 20.647335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531899, -0.322302, 0.783074,
		-0.782873, 0.539655, -0.309648,
		-0.322790, -0.777749, -0.539364,
		38.262112, 43.560444, 20.485525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783638, 44.179714, 20.931749>,  <38.488064, 44.104870, 20.863081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783638, 44.179714, 20.931749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901100, 43.806618, 20.848076>,  <37.971577, 43.582760, 20.797873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901100, 43.806618, 20.848076>,  <37.783638, 44.179714, 20.931749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901100, 43.806618, 20.848076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624960, -0.352922, 0.696327,
		-0.723319, -0.073750, -0.686564,
		0.293657, -0.932742, -0.209185,
		37.989197, 43.526794, 20.785320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161499, 43.783897, 20.851654>,  <37.783638, 44.179714, 20.931749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161499, 43.783897, 20.851654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456230, 43.533409, 20.953587>,  <37.633068, 43.383118, 21.014746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456230, 43.533409, 20.953587>,  <37.161499, 43.783897, 20.851654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456230, 43.533409, 20.953587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510318, -0.267908, 0.817191,
		-0.443471, -0.732170, -0.516973,
		0.736823, -0.626221, 0.254830,
		37.677277, 43.345543, 21.030035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882454, 43.163452, 20.965601>,  <37.161499, 43.783897, 20.851654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882454, 43.163452, 20.965601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224106, 43.125954, 21.170216>,  <37.429096, 43.103455, 21.292984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224106, 43.125954, 21.170216>,  <36.882454, 43.163452, 20.965601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224106, 43.125954, 21.170216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498067, -0.430455, 0.752754,
		0.149627, -0.897731, -0.414356,
		0.854132, -0.093745, 0.511538,
		37.480347, 43.097832, 21.323677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778355, 42.498489, 21.159670>,  <36.882454, 43.163452, 20.965601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778355, 42.498489, 21.159670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058762, 42.668167, 21.388977>,  <37.227005, 42.769974, 21.526562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058762, 42.668167, 21.388977>,  <36.778355, 42.498489, 21.159670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058762, 42.668167, 21.388977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387820, -0.447839, 0.805628,
		0.598472, -0.787084, -0.149433,
		0.701018, 0.424193, 0.573266,
		37.269066, 42.795425, 21.560957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994797, 41.935322, 21.675945>,  <36.778355, 42.498489, 21.159670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994797, 41.935322, 21.675945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069698, 42.304188, 21.811319>,  <37.114639, 42.525509, 21.892544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069698, 42.304188, 21.811319>,  <36.994797, 41.935322, 21.675945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069698, 42.304188, 21.811319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333776, -0.264301, 0.904842,
		0.923866, -0.282398, 0.258307,
		0.187255, 0.922169, 0.338437,
		37.125874, 42.580837, 21.912849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317307, 41.810463, 22.270144>,  <36.994797, 41.935322, 21.675945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317307, 41.810463, 22.270144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152515, 42.173588, 22.301514>,  <37.053642, 42.391464, 22.320335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152515, 42.173588, 22.301514>,  <37.317307, 41.810463, 22.270144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152515, 42.173588, 22.301514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251496, -0.196015, 0.947802,
		0.875799, 0.370750, 0.309065,
		-0.411978, 0.907812, 0.078427,
		37.028923, 42.445930, 22.325043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501488, 42.105740, 22.950483>,  <37.317307, 41.810463, 22.270144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501488, 42.105740, 22.950483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195271, 42.327705, 22.820244>,  <37.011539, 42.460884, 22.742100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195271, 42.327705, 22.820244>,  <37.501488, 42.105740, 22.950483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195271, 42.327705, 22.820244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437838, -0.078515, 0.895619,
		0.471428, 0.828194, 0.303069,
		-0.765542, 0.554914, -0.325600,
		36.965607, 42.494179, 22.722565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242611, 42.493622, 23.509571>,  <37.501488, 42.105740, 22.950483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242611, 42.493622, 23.509571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937725, 42.472950, 23.251467>,  <36.754795, 42.460545, 23.096605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937725, 42.472950, 23.251467>,  <37.242611, 42.493622, 23.509571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937725, 42.472950, 23.251467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625172, -0.199776, 0.754486,
		-0.167901, 0.978477, 0.119962,
		-0.762214, -0.051682, -0.645259,
		36.709061, 42.457447, 23.057890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605389, 42.807037, 23.855179>,  <37.242611, 42.493622, 23.509571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605389, 42.807037, 23.855179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489506, 42.568172, 23.555988>,  <36.419975, 42.424854, 23.376474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489506, 42.568172, 23.555988>,  <36.605389, 42.807037, 23.855179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489506, 42.568172, 23.555988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797270, -0.281819, 0.533797,
		-0.529555, 0.750986, -0.394449,
		-0.289711, -0.597158, -0.747978,
		36.402592, 42.389027, 23.331594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877411, 42.911934, 23.780306>,  <36.605389, 42.807037, 23.855179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877411, 42.911934, 23.780306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944954, 42.561028, 23.600576>,  <35.985477, 42.350483, 23.492739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944954, 42.561028, 23.600576>,  <35.877411, 42.911934, 23.780306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944954, 42.561028, 23.600576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856856, -0.355948, 0.372961,
		-0.487122, 0.322029, -0.811794,
		0.168853, -0.877268, -0.449322,
		35.995609, 42.297848, 23.465780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170437, 42.662373, 23.580956>,  <35.877411, 42.911934, 23.780306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170437, 42.662373, 23.580956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384979, 42.330292, 23.520172>,  <35.513706, 42.131042, 23.483702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384979, 42.330292, 23.520172>,  <35.170437, 42.662373, 23.580956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384979, 42.330292, 23.520172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761543, -0.553667, 0.336905,
		-0.363832, -0.064980, -0.929195,
		0.536356, -0.830199, -0.151957,
		35.545887, 42.081230, 23.474585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644421, 42.155678, 23.391487>,  <35.170437, 42.662373, 23.580956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644421, 42.155678, 23.391487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967113, 41.953129, 23.513319>,  <35.160728, 41.831600, 23.586418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967113, 41.953129, 23.513319>,  <34.644421, 42.155678, 23.391487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967113, 41.953129, 23.513319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590909, -0.688107, 0.421112,
		-0.003658, -0.519703, -0.854339,
		0.806730, -0.506377, 0.304580,
		35.209133, 41.801216, 23.604692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520325, 41.384903, 23.210375>,  <34.644421, 42.155678, 23.391487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520325, 41.384903, 23.210375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810818, 41.394585, 23.485182>,  <34.985115, 41.400394, 23.650066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810818, 41.394585, 23.485182>,  <34.520325, 41.384903, 23.210375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810818, 41.394585, 23.485182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481172, -0.695859, 0.533155,
		0.490973, -0.717771, -0.493711,
		0.726236, 0.024205, 0.687019,
		35.028690, 41.401848, 23.691288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402462, 40.748459, 23.481607>,  <34.520325, 41.384903, 23.210375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402462, 40.748459, 23.481607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607265, 40.967865, 23.746025>,  <34.730148, 41.099510, 23.904675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607265, 40.967865, 23.746025>,  <34.402462, 40.748459, 23.481607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607265, 40.967865, 23.746025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465197, -0.469873, 0.750207,
		0.722107, -0.691628, 0.014590,
		0.512009, 0.548517, 0.661042,
		34.760868, 41.132420, 23.944338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561268, 40.220245, 23.873625>,  <34.402462, 40.748459, 23.481607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561268, 40.220245, 23.873625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619152, 40.557430, 24.080881>,  <34.653881, 40.759743, 24.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619152, 40.557430, 24.080881>,  <34.561268, 40.220245, 23.873625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619152, 40.557430, 24.080881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418152, -0.422495, 0.804144,
		0.896776, -0.333028, 0.291349,
		0.144709, 0.842965, 0.518140,
		34.662563, 40.810318, 24.236322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012867, 40.049366, 24.519087>,  <34.561268, 40.220245, 23.873625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012867, 40.049366, 24.519087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805553, 40.383690, 24.591530>,  <34.681164, 40.584286, 24.634995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805553, 40.383690, 24.591530>,  <35.012867, 40.049366, 24.519087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805553, 40.383690, 24.591530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316907, -0.384394, 0.867071,
		0.794323, 0.391998, 0.464100,
		-0.518287, 0.835810, 0.181106,
		34.650066, 40.634434, 24.645863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171432, 40.157486, 25.206142>,  <35.012867, 40.049366, 24.519087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171432, 40.157486, 25.206142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838387, 40.363823, 25.125484>,  <34.638557, 40.487625, 25.077089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838387, 40.363823, 25.125484>,  <35.171432, 40.157486, 25.206142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838387, 40.363823, 25.125484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481130, -0.493301, 0.724685,
		0.274350, 0.700401, 0.658916,
		-0.832614, 0.515842, -0.201647,
		34.588604, 40.518574, 25.064991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957764, 40.335037, 25.858759>,  <35.171432, 40.157486, 25.206142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957764, 40.335037, 25.858759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632038, 40.392540, 25.633825>,  <34.436604, 40.427040, 25.498865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632038, 40.392540, 25.633825>,  <34.957764, 40.335037, 25.858759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632038, 40.392540, 25.633825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569168, -0.387627, 0.725116,
		-0.113735, 0.910538, 0.397474,
		-0.814317, 0.143758, -0.562336,
		34.387741, 40.435669, 25.465124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467453, 40.726334, 26.350830>,  <34.957764, 40.335037, 25.858759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467453, 40.726334, 26.350830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230618, 40.566433, 26.070934>,  <34.088516, 40.470493, 25.902996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230618, 40.566433, 26.070934>,  <34.467453, 40.726334, 26.350830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230618, 40.566433, 26.070934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650016, -0.276355, 0.707889,
		-0.476353, 0.873974, -0.096216,
		-0.592087, -0.399747, -0.699740,
		34.052990, 40.446510, 25.861012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707176, 40.996517, 26.524155>,  <34.467453, 40.726334, 26.350830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707176, 40.996517, 26.524155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638412, 40.673580, 26.298359>,  <33.597153, 40.479820, 26.162882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638412, 40.673580, 26.298359>,  <33.707176, 40.996517, 26.524155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638412, 40.673580, 26.298359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709224, -0.296266, 0.639709,
		-0.683701, 0.510324, -0.521653,
		-0.171911, -0.807339, -0.564491,
		33.586838, 40.431377, 26.129011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030834, 40.963348, 26.381071>,  <33.707176, 40.996517, 26.524155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030834, 40.963348, 26.381071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140114, 40.588776, 26.293028>,  <33.205681, 40.364033, 26.240202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140114, 40.588776, 26.293028>,  <33.030834, 40.963348, 26.381071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140114, 40.588776, 26.293028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797736, -0.348419, 0.492160,
		-0.537567, 0.041129, -0.842218,
		0.273203, -0.936436, -0.220108,
		33.222076, 40.307846, 26.226995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390877, 40.664120, 26.147480>,  <33.030834, 40.963348, 26.381071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390877, 40.664120, 26.147480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635517, 40.358429, 26.229349>,  <32.782303, 40.175014, 26.278471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635517, 40.358429, 26.229349>,  <32.390877, 40.664120, 26.147480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635517, 40.358429, 26.229349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759405, -0.494507, 0.422807,
		-0.221909, -0.414021, -0.882804,
		0.611604, -0.764231, 0.204674,
		32.819000, 40.129158, 26.290751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061462, 40.048618, 25.930134>,  <32.390877, 40.664120, 26.147480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061462, 40.048618, 25.930134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333023, 39.900124, 26.183521>,  <32.495960, 39.811028, 26.335554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333023, 39.900124, 26.183521>,  <32.061462, 40.048618, 25.930134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333023, 39.900124, 26.183521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680484, -0.642155, 0.352958,
		0.275753, -0.670687, -0.688578,
		0.678898, -0.371237, 0.633468,
		32.536694, 39.788754, 26.373562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928505, 39.358261, 25.831268>,  <32.061462, 40.048618, 25.930134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928505, 39.358261, 25.831268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115040, 39.421425, 26.179428>,  <32.226959, 39.459324, 26.388325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115040, 39.421425, 26.179428>,  <31.928505, 39.358261, 25.831268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115040, 39.421425, 26.179428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650411, -0.605701, 0.458359,
		0.599579, -0.779867, -0.179757,
		0.466338, 0.157906, 0.870399,
		32.254940, 39.468796, 26.440548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866901, 38.794678, 26.122452>,  <31.928505, 39.358261, 25.831268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866901, 38.794678, 26.122452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966972, 39.001328, 26.449991>,  <32.027016, 39.125317, 26.646515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966972, 39.001328, 26.449991>,  <31.866901, 38.794678, 26.122452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966972, 39.001328, 26.449991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606675, -0.575477, 0.548427,
		0.754557, -0.633980, 0.169449,
		0.250178, 0.516620, 0.818850,
		32.042027, 39.156315, 26.695646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979427, 38.253235, 26.592154>,  <31.866901, 38.794678, 26.122452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979427, 38.253235, 26.592154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914648, 38.584759, 26.806385>,  <31.875780, 38.783672, 26.934925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914648, 38.584759, 26.806385>,  <31.979427, 38.253235, 26.592154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914648, 38.584759, 26.806385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549017, -0.526665, 0.649003,
		0.819972, -0.188937, 0.540324,
		-0.161949, 0.828811, 0.535580,
		31.866064, 38.833401, 26.967058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969709, 38.033730, 27.303463>,  <31.979427, 38.253235, 26.592154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969709, 38.033730, 27.303463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790190, 38.390884, 27.318094>,  <31.682478, 38.605175, 27.326874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790190, 38.390884, 27.318094>,  <31.969709, 38.033730, 27.303463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790190, 38.390884, 27.318094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547685, -0.307170, 0.778259,
		0.706132, 0.329247, 0.626877,
		-0.448797, 0.892885, 0.036579,
		31.655550, 38.658749, 27.329067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009499, 38.188633, 27.976631>,  <31.969709, 38.033730, 27.303463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009499, 38.188633, 27.976631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739708, 38.466816, 27.877502>,  <31.577833, 38.633728, 27.818026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739708, 38.466816, 27.877502>,  <32.009499, 38.188633, 27.976631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739708, 38.466816, 27.877502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610305, -0.336313, 0.717232,
		0.415462, 0.635002, 0.651279,
		-0.674478, 0.695461, -0.247820,
		31.537365, 38.675453, 27.803156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828871, 38.606754, 28.612671>,  <32.009499, 38.188633, 27.976631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828871, 38.606754, 28.612671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532526, 38.656616, 28.348675>,  <31.354719, 38.686531, 28.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532526, 38.656616, 28.348675>,  <31.828871, 38.606754, 28.612671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532526, 38.656616, 28.348675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667582, -0.244746, 0.703160,
		-0.073881, 0.961541, 0.264537,
		-0.740861, 0.124650, -0.659990,
		31.310268, 38.694012, 28.150679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227299, 38.679207, 29.334673>,  <31.828871, 38.606754, 28.612671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227299, 38.679207, 29.334673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555309, 38.548393, 29.522552>,  <32.752113, 38.469906, 29.635281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555309, 38.548393, 29.522552>,  <32.227299, 38.679207, 29.334673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555309, 38.548393, 29.522552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565488, 0.336420, -0.753024,
		0.088246, 0.883104, 0.460804,
		0.820022, -0.327030, 0.469697,
		32.801315, 38.450283, 29.663462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709557, 39.212116, 29.351824>,  <32.227299, 38.679207, 29.334673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709557, 39.212116, 29.351824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935978, 38.892071, 29.431221>,  <33.071831, 38.700043, 29.478859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935978, 38.892071, 29.431221>,  <32.709557, 39.212116, 29.351824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935978, 38.892071, 29.431221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734939, 0.380721, -0.561174,
		0.373435, 0.463533, 0.803544,
		0.566049, -0.800118, 0.198494,
		33.105793, 38.652035, 29.490768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330971, 39.490246, 29.551685>,  <32.709557, 39.212116, 29.351824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330971, 39.490246, 29.551685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422157, 39.114300, 29.449947>,  <33.476871, 38.888733, 29.388905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422157, 39.114300, 29.449947>,  <33.330971, 39.490246, 29.551685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422157, 39.114300, 29.449947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801869, 0.329403, -0.498498,
		0.552300, -0.090309, 0.828739,
		0.227970, -0.939860, -0.254345,
		33.490547, 38.832340, 29.373644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119450, 39.433449, 29.684240>,  <33.330971, 39.490246, 29.551685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119450, 39.433449, 29.684240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015293, 39.156860, 29.414701>,  <33.952797, 38.990910, 29.252979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015293, 39.156860, 29.414701>,  <34.119450, 39.433449, 29.684240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015293, 39.156860, 29.414701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805547, 0.229149, -0.546429,
		0.532249, -0.685102, 0.497340,
		-0.260394, -0.691467, -0.673846,
		33.937176, 38.949421, 29.212547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758068, 39.149899, 29.541241>,  <34.119450, 39.433449, 29.684240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758068, 39.149899, 29.541241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503487, 39.013435, 29.264536>,  <34.350739, 38.931557, 29.098513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503487, 39.013435, 29.264536>,  <34.758068, 39.149899, 29.541241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503487, 39.013435, 29.264536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683876, 0.165171, -0.710657,
		0.356705, -0.925381, 0.128186,
		-0.636455, -0.341159, -0.691763,
		34.312550, 38.911087, 29.057007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148132, 38.536488, 29.092503>,  <34.758068, 39.149899, 29.541241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148132, 38.536488, 29.092503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864372, 38.719223, 28.877819>,  <34.694115, 38.828865, 28.749010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864372, 38.719223, 28.877819>,  <35.148132, 38.536488, 29.092503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864372, 38.719223, 28.877819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635622, 0.085653, -0.767234,
		-0.304528, -0.885419, -0.351137,
		-0.709399, 0.456835, -0.536708,
		34.651554, 38.856274, 28.716806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195755, 38.195431, 28.503801>,  <35.148132, 38.536488, 29.092503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195755, 38.195431, 28.503801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016808, 38.536987, 28.397425>,  <34.909439, 38.741920, 28.333599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016808, 38.536987, 28.397425>,  <35.195755, 38.195431, 28.503801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016808, 38.536987, 28.397425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744607, 0.190903, -0.639622,
		-0.495401, -0.484168, -0.721221,
		-0.447368, 0.853896, -0.265941,
		34.882599, 38.793156, 28.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302368, 38.221313, 27.746506>,  <35.195755, 38.195431, 28.503801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302368, 38.221313, 27.746506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188400, 38.589447, 27.853689>,  <35.120018, 38.810329, 27.917999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188400, 38.589447, 27.853689>,  <35.302368, 38.221313, 27.746506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188400, 38.589447, 27.853689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653564, 0.391014, -0.648045,
		-0.701194, -0.009516, -0.712907,
		-0.284924, 0.920335, 0.267957,
		35.102924, 38.865547, 27.934076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197838, 38.664806, 27.144476>,  <35.302368, 38.221313, 27.746506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197838, 38.664806, 27.144476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270576, 38.922615, 27.441534>,  <35.314220, 39.077301, 27.619768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270576, 38.922615, 27.441534>,  <35.197838, 38.664806, 27.144476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270576, 38.922615, 27.441534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618003, 0.512529, -0.596142,
		-0.764854, 0.567365, -0.305114,
		0.181851, 0.644523, 0.742644,
		35.325130, 39.115971, 27.664328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204391, 39.245808, 26.779394>,  <35.197838, 38.664806, 27.144476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204391, 39.245808, 26.779394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390129, 39.322414, 27.125273>,  <35.501572, 39.368378, 27.332800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390129, 39.322414, 27.125273>,  <35.204391, 39.245808, 26.779394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390129, 39.322414, 27.125273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700167, 0.518504, -0.490835,
		-0.542354, 0.833351, 0.106669,
		0.464346, 0.191520, 0.864698,
		35.529434, 39.379871, 27.384682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359665, 39.888206, 26.788019>,  <35.204391, 39.245808, 26.779394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359665, 39.888206, 26.788019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618568, 39.802101, 27.080517>,  <35.773911, 39.750439, 27.256016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618568, 39.802101, 27.080517>,  <35.359665, 39.888206, 26.788019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618568, 39.802101, 27.080517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675042, 0.607475, -0.418680,
		-0.354084, 0.764614, 0.538507,
		0.647258, -0.215267, 0.731243,
		35.812744, 39.737522, 27.299891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529205, 40.539127, 27.194603>,  <35.359665, 39.888206, 26.788019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529205, 40.539127, 27.194603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842903, 40.291378, 27.209238>,  <36.031120, 40.142727, 27.218019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842903, 40.291378, 27.209238>,  <35.529205, 40.539127, 27.194603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842903, 40.291378, 27.209238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609237, 0.757565, -0.234362,
		0.117440, 0.206087, 0.971461,
		0.784244, -0.619374, 0.036587,
		36.078175, 40.105564, 27.220215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052399, 40.921844, 27.507227>,  <35.529205, 40.539127, 27.194603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052399, 40.921844, 27.507227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248669, 40.609470, 27.352627>,  <36.366428, 40.422047, 27.259867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248669, 40.609470, 27.352627>,  <36.052399, 40.921844, 27.507227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248669, 40.609470, 27.352627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574353, 0.623437, -0.530513,
		0.655255, 0.038321, 0.754435,
		0.490673, -0.780934, -0.386501,
		36.395870, 40.375191, 27.236677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702446, 41.094776, 27.450212>,  <36.052399, 40.921844, 27.507227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702446, 41.094776, 27.450212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717567, 40.790195, 27.191364>,  <36.726643, 40.607449, 27.036055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717567, 40.790195, 27.191364>,  <36.702446, 41.094776, 27.450212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717567, 40.790195, 27.191364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521164, 0.567561, -0.637387,
		0.852619, -0.313159, 0.418298,
		0.037806, -0.761450, -0.647120,
		36.728909, 40.561760, 26.997229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366154, 41.153549, 27.344177>,  <36.702446, 41.094776, 27.450212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366154, 41.153549, 27.344177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197052, 40.960747, 27.037205>,  <37.095592, 40.845066, 26.853022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197052, 40.960747, 27.037205>,  <37.366154, 41.153549, 27.344177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197052, 40.960747, 27.037205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615754, 0.468551, -0.633487,
		0.664924, -0.740358, 0.098714,
		-0.422755, -0.482005, -0.767430,
		37.070225, 40.816147, 26.806976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930603, 41.039108, 26.886429>,  <37.366154, 41.153549, 27.344177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930603, 41.039108, 26.886429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591206, 41.019131, 26.675688>,  <37.387569, 41.007145, 26.549244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591206, 41.019131, 26.675688>,  <37.930603, 41.039108, 26.886429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591206, 41.019131, 26.675688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413214, 0.559463, -0.718509,
		0.330636, -0.827349, -0.454062,
		-0.848489, -0.049940, -0.526851,
		37.336658, 41.004150, 26.517633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259930, 40.778866, 26.318871>,  <37.930603, 41.039108, 26.886429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259930, 40.778866, 26.318871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897785, 40.898052, 26.197855>,  <37.680496, 40.969563, 26.125246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897785, 40.898052, 26.197855>,  <38.259930, 40.778866, 26.318871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897785, 40.898052, 26.197855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402656, 0.376169, -0.834485,
		-0.134841, -0.877333, -0.460548,
		-0.905365, 0.297965, -0.302541,
		37.626175, 40.987442, 26.107092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153378, 40.533344, 25.590878>,  <38.259930, 40.778866, 26.318871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153378, 40.533344, 25.590878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941326, 40.861893, 25.675077>,  <37.814095, 41.059021, 25.725597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941326, 40.861893, 25.675077>,  <38.153378, 40.533344, 25.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941326, 40.861893, 25.675077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387420, 0.455464, -0.801535,
		-0.754235, -0.343363, -0.559670,
		-0.530127, 0.821373, 0.210501,
		37.782288, 41.108303, 25.738228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722813, 40.608131, 25.033144>,  <38.153378, 40.533344, 25.590878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722813, 40.608131, 25.033144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769695, 40.976345, 25.182213>,  <37.797825, 41.197273, 25.271654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769695, 40.976345, 25.182213>,  <37.722813, 40.608131, 25.033144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769695, 40.976345, 25.182213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370525, 0.307628, -0.876399,
		-0.921398, 0.240804, -0.305024,
		0.117207, 0.920531, 0.372672,
		37.804859, 41.252506, 25.294014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683578, 40.927319, 24.472496>,  <37.722813, 40.608131, 25.033144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683578, 40.927319, 24.472496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768547, 41.230278, 24.719469>,  <37.819530, 41.412052, 24.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768547, 41.230278, 24.719469>,  <37.683578, 40.927319, 24.472496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768547, 41.230278, 24.719469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384024, 0.516312, -0.765472,
		-0.898555, 0.399715, -0.181181,
		0.212425, 0.757397, 0.617435,
		37.832275, 41.457497, 24.904699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466370, 41.532707, 24.152132>,  <37.683578, 40.927319, 24.472496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466370, 41.532707, 24.152132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772305, 41.599743, 24.400948>,  <37.955868, 41.639965, 24.550236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772305, 41.599743, 24.400948>,  <37.466370, 41.532707, 24.152132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772305, 41.599743, 24.400948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395607, 0.639879, -0.658824,
		-0.508442, 0.749979, 0.423107,
		0.764841, 0.167590, 0.622038,
		38.001759, 41.650021, 24.587559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563519, 42.310120, 24.355913>,  <37.466370, 41.532707, 24.152132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563519, 42.310120, 24.355913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909805, 42.110332, 24.368971>,  <38.117577, 41.990459, 24.376806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909805, 42.110332, 24.368971>,  <37.563519, 42.310120, 24.355913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909805, 42.110332, 24.368971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394944, 0.641568, -0.657578,
		0.307496, 0.582169, 0.752679,
		0.865716, -0.499469, 0.032645,
		38.169521, 41.960491, 24.378765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094234, 42.897205, 24.316114>,  <37.563519, 42.310120, 24.355913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094234, 42.897205, 24.316114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309879, 42.564602, 24.262531>,  <38.439266, 42.365040, 24.230381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309879, 42.564602, 24.262531>,  <38.094234, 42.897205, 24.316114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309879, 42.564602, 24.262531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572967, 0.478660, -0.665278,
		0.617306, 0.281907, 0.734480,
		0.539113, -0.831513, -0.133956,
		38.471615, 42.315147, 24.222345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803520, 43.184490, 24.376612>,  <38.094234, 42.897205, 24.316114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803520, 43.184490, 24.376612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779209, 42.839684, 24.175322>,  <38.764622, 42.632801, 24.054548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779209, 42.839684, 24.175322>,  <38.803520, 43.184490, 24.376612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779209, 42.839684, 24.175322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510762, 0.406291, -0.757661,
		0.857571, -0.303078, 0.415590,
		-0.060780, -0.862016, -0.503224,
		38.760975, 42.581078, 24.024355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437515, 43.098366, 24.065575>,  <38.803520, 43.184490, 24.376612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437515, 43.098366, 24.065575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213226, 42.839737, 23.858681>,  <39.078655, 42.684559, 23.734545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213226, 42.839737, 23.858681>,  <39.437515, 43.098366, 24.065575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213226, 42.839737, 23.858681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564663, 0.158282, -0.810001,
		0.605597, -0.746247, 0.276347,
		-0.560720, -0.646577, -0.517234,
		39.045010, 42.645763, 23.703510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895638, 42.557461, 23.656574>,  <39.437515, 43.098366, 24.065575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895638, 42.557461, 23.656574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547985, 42.577389, 23.459747>,  <39.339394, 42.589348, 23.341652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547985, 42.577389, 23.459747>,  <39.895638, 42.557461, 23.656574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547985, 42.577389, 23.459747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494573, 0.094239, -0.864012,
		0.003321, -0.994302, -0.106549,
		-0.869130, 0.049827, -0.492067,
		39.287247, 42.592335, 23.312126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845470, 41.987591, 23.121799>,  <39.895638, 42.557461, 23.656574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845470, 41.987591, 23.121799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619980, 42.300411, 23.015512>,  <39.484684, 42.488102, 22.951740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619980, 42.300411, 23.015512>,  <39.845470, 41.987591, 23.121799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619980, 42.300411, 23.015512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557729, 0.123136, -0.820838,
		-0.609217, -0.610930, -0.505587,
		-0.563731, 0.782050, -0.265717,
		39.450859, 42.535027, 22.935797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717140, 41.800934, 22.479988>,  <39.845470, 41.987591, 23.121799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717140, 41.800934, 22.479988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657307, 42.196243, 22.492287>,  <39.621407, 42.433430, 22.499666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657307, 42.196243, 22.492287>,  <39.717140, 41.800934, 22.479988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657307, 42.196243, 22.492287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348998, 0.081867, -0.933541,
		-0.925108, -0.128912, -0.357151,
		-0.149584, 0.988271, 0.030745,
		39.612431, 42.492725, 22.501511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528702, 41.884914, 21.795713>,  <39.717140, 41.800934, 22.479988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528702, 41.884914, 21.795713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636204, 42.242214, 21.939865>,  <39.700703, 42.456596, 22.026356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636204, 42.242214, 21.939865>,  <39.528702, 41.884914, 21.795713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636204, 42.242214, 21.939865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510424, 0.185217, -0.839739,
		-0.816847, 0.409628, -0.406160,
		0.268753, 0.893252, 0.360378,
		39.716831, 42.510189, 22.047979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413078, 42.439365, 21.276426>,  <39.528702, 41.884914, 21.795713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413078, 42.439365, 21.276426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700340, 42.604744, 21.500324>,  <39.872696, 42.703972, 21.634663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700340, 42.604744, 21.500324>,  <39.413078, 42.439365, 21.276426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700340, 42.604744, 21.500324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523702, 0.208576, -0.825974,
		-0.458248, 0.886315, -0.066735,
		0.718154, 0.413450, 0.559745,
		39.915787, 42.728779, 21.668247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585251, 43.101635, 20.949919>,  <39.413078, 42.439365, 21.276426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585251, 43.101635, 20.949919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893604, 42.984531, 21.176203>,  <40.078617, 42.914268, 21.311974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893604, 42.984531, 21.176203>,  <39.585251, 43.101635, 20.949919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893604, 42.984531, 21.176203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627269, 0.194481, -0.754129,
		0.110756, 0.936200, 0.333560,
		0.770887, -0.292756, 0.565709,
		40.124870, 42.896706, 21.345915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977245, 43.630547, 20.886522>,  <39.585251, 43.101635, 20.949919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977245, 43.630547, 20.886522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198494, 43.320164, 21.007820>,  <40.331242, 43.133934, 21.080599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198494, 43.320164, 21.007820>,  <39.977245, 43.630547, 20.886522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198494, 43.320164, 21.007820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555848, 0.072598, -0.828108,
		0.620558, 0.626599, 0.471467,
		0.553118, -0.775953, 0.303243,
		40.364429, 43.087379, 21.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631283, 43.963619, 20.917278>,  <39.977245, 43.630547, 20.886522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631283, 43.963619, 20.917278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710423, 43.571548, 20.921541>,  <40.757908, 43.336308, 20.924099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710423, 43.571548, 20.921541>,  <40.631283, 43.963619, 20.917278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710423, 43.571548, 20.921541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580490, 0.108398, -0.807020,
		0.789865, 0.165855, 0.590428,
		0.197849, -0.980175, 0.010657,
		40.769779, 43.277496, 20.924738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293762, 44.016296, 20.851894>,  <40.631283, 43.963619, 20.917278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293762, 44.016296, 20.851894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193352, 43.645393, 20.740774>,  <41.133106, 43.422852, 20.674103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193352, 43.645393, 20.740774>,  <41.293762, 44.016296, 20.851894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193352, 43.645393, 20.740774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684655, 0.032790, -0.728130,
		0.684275, -0.372979, 0.626622,
		-0.251030, -0.927260, -0.277799,
		41.118042, 43.367214, 20.657434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878956, 43.585510, 20.699173>,  <41.293762, 44.016296, 20.851894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878956, 43.585510, 20.699173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589466, 43.404591, 20.490694>,  <41.415771, 43.296040, 20.365606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589466, 43.404591, 20.490694>,  <41.878956, 43.585510, 20.699173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589466, 43.404591, 20.490694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590135, -0.014140, -0.807181,
		0.357717, -0.891755, 0.277150,
		-0.723726, -0.452298, -0.521197,
		41.372349, 43.268902, 20.334335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230762, 43.102406, 20.358999>,  <41.878956, 43.585510, 20.699173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230762, 43.102406, 20.358999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900814, 43.160511, 20.140461>,  <41.702847, 43.195374, 20.009338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900814, 43.160511, 20.140461>,  <42.230762, 43.102406, 20.358999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900814, 43.160511, 20.140461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565309, 0.204378, -0.799159,
		-0.004431, -0.968053, -0.250705,
		-0.824867, 0.145267, -0.546344,
		41.653355, 43.204090, 19.976559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344196, 42.745728, 19.687086>,  <42.230762, 43.102406, 20.358999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344196, 42.745728, 19.687086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023922, 42.975052, 19.617544>,  <41.831757, 43.112648, 19.575819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023922, 42.975052, 19.617544>,  <42.344196, 42.745728, 19.687086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023922, 42.975052, 19.617544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309708, 0.147698, -0.939290,
		-0.512826, -0.805916, -0.295818,
		-0.800681, 0.573310, -0.173855,
		41.783718, 43.147045, 19.565388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067028, 42.561432, 19.050611>,  <42.344196, 42.745728, 19.687086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067028, 42.561432, 19.050611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915165, 42.929646, 19.087450>,  <41.824047, 43.150574, 19.109552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915165, 42.929646, 19.087450>,  <42.067028, 42.561432, 19.050611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915165, 42.929646, 19.087450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427955, 0.263015, -0.864684,
		-0.820190, -0.288874, -0.493802,
		-0.379662, 0.920530, 0.092097,
		41.801266, 43.205803, 19.115080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678749, 42.136112, 18.838314>,  <42.067028, 42.561432, 19.050611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678749, 42.136112, 18.838314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819504, 41.762272, 18.817553>,  <42.903957, 41.537968, 18.805096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819504, 41.762272, 18.817553>,  <42.678749, 42.136112, 18.838314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819504, 41.762272, 18.817553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572010, -0.258597, 0.778416,
		-0.740933, -0.244223, -0.625599,
		0.351885, -0.934603, -0.051905,
		42.925068, 41.481892, 18.801981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066002, 41.643131, 18.817198>,  <42.678749, 42.136112, 18.838314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066002, 41.643131, 18.817198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387310, 41.445728, 18.950588>,  <42.580097, 41.327286, 19.030622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387310, 41.445728, 18.950588>,  <42.066002, 41.643131, 18.817198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387310, 41.445728, 18.950588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557919, -0.427429, 0.711359,
		-0.208519, -0.757469, -0.618677,
		0.803272, -0.493503, 0.333479,
		42.628292, 41.297676, 19.050632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946415, 40.923992, 18.814753>,  <42.066002, 41.643131, 18.817198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946415, 40.923992, 18.814753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226131, 40.968555, 19.097193>,  <42.393963, 40.995293, 19.266657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226131, 40.968555, 19.097193>,  <41.946415, 40.923992, 18.814753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226131, 40.968555, 19.097193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551973, -0.543502, 0.632401,
		0.454219, -0.831983, -0.318575,
		0.699293, 0.111404, 0.706101,
		42.435921, 41.001976, 19.309023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027496, 40.276768, 19.080910>,  <41.946415, 40.923992, 18.814753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027496, 40.276768, 19.080910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173695, 40.518719, 19.363905>,  <42.261414, 40.663887, 19.533701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173695, 40.518719, 19.363905>,  <42.027496, 40.276768, 19.080910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173695, 40.518719, 19.363905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474134, -0.533093, 0.700720,
		0.801004, -0.591556, 0.091947,
		0.365499, 0.604875, 0.707487,
		42.283344, 40.700180, 19.576151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127869, 39.855408, 19.605795>,  <42.027496, 40.276768, 19.080910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127869, 39.855408, 19.605795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161068, 40.210670, 19.786589>,  <42.180988, 40.423828, 19.895065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161068, 40.210670, 19.786589>,  <42.127869, 39.855408, 19.605795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161068, 40.210670, 19.786589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490197, -0.358500, 0.794471,
		0.867651, -0.287504, 0.405615,
		0.083000, 0.888155, 0.451987,
		42.185966, 40.477116, 19.922184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276440, 39.741329, 20.269966>,  <42.127869, 39.855408, 19.605795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276440, 39.741329, 20.269966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136204, 40.115898, 20.275703>,  <42.052063, 40.340641, 20.279146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136204, 40.115898, 20.275703>,  <42.276440, 39.741329, 20.269966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136204, 40.115898, 20.275703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486167, -0.195064, 0.851817,
		0.800457, 0.291661, 0.523643,
		-0.350586, 0.936421, 0.014344,
		42.031029, 40.396824, 20.280006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407963, 40.010246, 20.975130>,  <42.276440, 39.741329, 20.269966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407963, 40.010246, 20.975130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135525, 40.257072, 20.817478>,  <41.972061, 40.405167, 20.722887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135525, 40.257072, 20.817478>,  <42.407963, 40.010246, 20.975130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135525, 40.257072, 20.817478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562980, -0.097181, 0.820737,
		0.468148, 0.780887, 0.413586,
		-0.681096, 0.617067, -0.394128,
		41.931194, 40.442192, 20.699240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189499, 40.498146, 21.535162>,  <42.407963, 40.010246, 20.975130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189499, 40.498146, 21.535162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884533, 40.484924, 21.276665>,  <41.701553, 40.476990, 21.121567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884533, 40.484924, 21.276665>,  <42.189499, 40.498146, 21.535162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884533, 40.484924, 21.276665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647051, 0.028355, 0.761920,
		-0.006860, 0.999052, -0.043005,
		-0.762416, -0.033053, -0.646242,
		41.655807, 40.475010, 21.082792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725491, 40.894680, 21.856674>,  <42.189499, 40.498146, 21.535162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725491, 40.894680, 21.856674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501076, 40.701660, 21.587637>,  <41.366425, 40.585850, 21.426214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501076, 40.701660, 21.587637>,  <41.725491, 40.894680, 21.856674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501076, 40.701660, 21.587637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745065, -0.059689, 0.664316,
		-0.360711, 0.873833, -0.326041,
		-0.561041, -0.482548, -0.672593,
		41.332764, 40.556896, 21.385859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081532, 41.178814, 21.863314>,  <41.725491, 40.894680, 21.856674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081532, 41.178814, 21.863314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008205, 40.816589, 21.710291>,  <40.964211, 40.599255, 21.618477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008205, 40.816589, 21.710291>,  <41.081532, 41.178814, 21.863314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008205, 40.816589, 21.710291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614572, -0.198160, 0.763566,
		-0.767265, 0.375083, -0.520208,
		-0.183317, -0.905563, -0.382557,
		40.953209, 40.544922, 21.595524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350033, 41.065998, 21.892668>,  <41.081532, 41.178814, 21.863314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350033, 41.065998, 21.892668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512295, 40.700634, 21.879192>,  <40.609650, 40.481415, 21.871107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512295, 40.700634, 21.879192>,  <40.350033, 41.065998, 21.892668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512295, 40.700634, 21.879192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637575, -0.309177, 0.705626,
		-0.654938, -0.264760, -0.707784,
		0.405652, -0.913407, -0.033687,
		40.633991, 40.426613, 21.869087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763393, 40.656181, 21.793877>,  <40.350033, 41.065998, 21.892668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763393, 40.656181, 21.793877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055355, 40.409840, 21.912504>,  <40.230534, 40.262035, 21.983681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055355, 40.409840, 21.912504>,  <39.763393, 40.656181, 21.793877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055355, 40.409840, 21.912504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603529, -0.376951, 0.702610,
		-0.320913, -0.691831, -0.646826,
		0.729909, -0.615855, 0.296571,
		40.274326, 40.225082, 22.001474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487450, 40.098087, 21.953682>,  <39.763393, 40.656181, 21.793877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487450, 40.098087, 21.953682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824928, 40.086029, 22.168070>,  <40.027416, 40.078796, 22.296701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824928, 40.086029, 22.168070>,  <39.487450, 40.098087, 21.953682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824928, 40.086029, 22.168070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524896, -0.255547, 0.811899,
		0.112492, -0.966327, -0.231427,
		0.843700, -0.030143, 0.535968,
		40.078037, 40.076984, 22.328859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684952, 39.392025, 22.314646>,  <39.487450, 40.098087, 21.953682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684952, 39.392025, 22.314646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867218, 39.663502, 22.545034>,  <39.976578, 39.826389, 22.683268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867218, 39.663502, 22.545034>,  <39.684952, 39.392025, 22.314646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867218, 39.663502, 22.545034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403504, -0.419266, 0.813266,
		0.793442, -0.602987, 0.082808,
		0.455670, 0.678693, 0.575971,
		40.003918, 39.867111, 22.717825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128178, 39.078621, 22.904264>,  <39.684952, 39.392025, 22.314646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128178, 39.078621, 22.904264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066128, 39.453136, 23.030312>,  <40.028896, 39.677845, 23.105940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.066128, 39.453136, 23.030312>,  <40.128178, 39.078621, 22.904264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066128, 39.453136, 23.030312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341962, -0.350152, 0.872041,
		0.926822, 0.027516, 0.374492,
		-0.155124, 0.936289, 0.315120,
		40.019592, 39.734024, 23.124847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375603, 39.099747, 23.587296>,  <40.128178, 39.078621, 22.904264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375603, 39.099747, 23.587296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158794, 39.434101, 23.552643>,  <40.028709, 39.634716, 23.531851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158794, 39.434101, 23.552643>,  <40.375603, 39.099747, 23.587296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158794, 39.434101, 23.552643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261473, -0.069775, 0.962685,
		0.798653, 0.544447, 0.256382,
		-0.542020, 0.835888, -0.086632,
		39.996189, 39.684868, 23.526653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516140, 39.498623, 24.139551>,  <40.375603, 39.099747, 23.587296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516140, 39.498623, 24.139551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152477, 39.610367, 24.016010>,  <39.934280, 39.677414, 23.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152477, 39.610367, 24.016010>,  <40.516140, 39.498623, 24.139551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152477, 39.610367, 24.016010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333316, -0.043526, 0.941810,
		0.249661, 0.959199, 0.132687,
		-0.909159, 0.279360, -0.308850,
		39.879730, 39.694176, 23.923355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251965, 39.825840, 24.686357>,  <40.516140, 39.498623, 24.139551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251965, 39.825840, 24.686357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916931, 39.784859, 24.471708>,  <39.715912, 39.760269, 24.342918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916931, 39.784859, 24.471708>,  <40.251965, 39.825840, 24.686357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916931, 39.784859, 24.471708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486577, -0.306726, 0.818023,
		-0.248404, 0.946268, 0.207057,
		-0.837579, -0.102451, -0.536624,
		39.665657, 39.754124, 24.310720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710125, 40.167534, 25.068655>,  <40.251965, 39.825840, 24.686357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710125, 40.167534, 25.068655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530006, 39.911564, 24.819584>,  <39.421936, 39.757980, 24.670141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530006, 39.911564, 24.819584>,  <39.710125, 40.167534, 25.068655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530006, 39.911564, 24.819584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599395, -0.300238, 0.742013,
		-0.661787, 0.707352, -0.248375,
		-0.450293, -0.639929, -0.622677,
		39.394920, 39.719585, 24.632780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992435, 40.279140, 25.173555>,  <39.710125, 40.167534, 25.068655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992435, 40.279140, 25.173555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033138, 39.915691, 25.011543>,  <39.057560, 39.697620, 24.914337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033138, 39.915691, 25.011543>,  <38.992435, 40.279140, 25.173555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033138, 39.915691, 25.011543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396481, -0.410451, 0.821177,
		-0.912386, 0.077025, -0.402018,
		0.101757, -0.908623, -0.405029,
		39.063667, 39.643105, 24.890034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362137, 39.960278, 25.127964>,  <38.992435, 40.279140, 25.173555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362137, 39.960278, 25.127964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614151, 39.649738, 25.120525>,  <38.765358, 39.463417, 25.116062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614151, 39.649738, 25.120525>,  <38.362137, 39.960278, 25.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614151, 39.649738, 25.120525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423960, -0.363924, 0.829347,
		-0.650628, -0.514632, -0.558424,
		0.630033, -0.776346, -0.018595,
		38.803162, 39.416836, 25.114946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989384, 39.316124, 25.115543>,  <38.362137, 39.960278, 25.127964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989384, 39.316124, 25.115543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352886, 39.237495, 25.262794>,  <38.570988, 39.190319, 25.351145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352886, 39.237495, 25.262794>,  <37.989384, 39.316124, 25.115543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352886, 39.237495, 25.262794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415444, -0.509737, 0.753376,
		0.039559, -0.837573, -0.544891,
		0.908758, -0.196568, 0.368129,
		38.625515, 39.178524, 25.373234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891140, 38.688717, 25.385807>,  <37.989384, 39.316124, 25.115543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891140, 38.688717, 25.385807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236824, 38.801941, 25.552185>,  <38.444237, 38.869877, 25.652012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236824, 38.801941, 25.552185>,  <37.891140, 38.688717, 25.385807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236824, 38.801941, 25.552185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287807, -0.399963, 0.870171,
		0.412675, -0.871726, -0.264186,
		0.864215, 0.283063, 0.415943,
		38.496090, 38.886860, 25.676968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135952, 38.032227, 25.663668>,  <37.891140, 38.688717, 25.385807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135952, 38.032227, 25.663668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338814, 38.321156, 25.851727>,  <38.460533, 38.494514, 25.964561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338814, 38.321156, 25.851727>,  <38.135952, 38.032227, 25.663668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338814, 38.321156, 25.851727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258096, -0.393183, 0.882493,
		0.822300, -0.568906, -0.012977,
		0.507158, 0.722325, 0.470147,
		38.490963, 38.537853, 25.992771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747967, 37.655907, 25.999189>,  <38.135952, 38.032227, 25.663668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747967, 37.655907, 25.999189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640285, 38.000965, 26.170479>,  <38.575676, 38.208000, 26.273252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640285, 38.000965, 26.170479>,  <38.747967, 37.655907, 25.999189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640285, 38.000965, 26.170479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250805, -0.492090, 0.833633,
		0.929854, 0.117013, 0.348826,
		-0.269200, 0.862644, 0.428224,
		38.559525, 38.259758, 26.298946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033489, 37.598190, 26.629997>,  <38.747967, 37.655907, 25.999189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033489, 37.598190, 26.629997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773338, 37.898621, 26.675411>,  <38.617249, 38.078880, 26.702660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773338, 37.898621, 26.675411>,  <39.033489, 37.598190, 26.629997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773338, 37.898621, 26.675411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157959, -0.279924, 0.946938,
		0.743006, 0.597932, 0.300696,
		-0.650377, 0.751079, 0.113537,
		38.578224, 38.123943, 26.709473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169743, 37.816025, 27.218962>,  <39.033489, 37.598190, 26.629997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169743, 37.816025, 27.218962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802601, 37.965313, 27.164925>,  <38.582317, 38.054886, 27.132504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802601, 37.965313, 27.164925>,  <39.169743, 37.816025, 27.218962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802601, 37.965313, 27.164925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246709, -0.269821, 0.930769,
		0.310936, 0.887637, 0.339734,
		-0.917853, 0.373225, -0.135091,
		38.527245, 38.077282, 27.124397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166962, 38.203865, 27.714788>,  <39.169743, 37.816025, 27.218962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166962, 38.203865, 27.714788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780060, 38.171555, 27.618547>,  <38.547916, 38.152168, 27.560802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780060, 38.171555, 27.618547>,  <39.166962, 38.203865, 27.714788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780060, 38.171555, 27.618547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201509, -0.331929, 0.921530,
		-0.154302, 0.939839, 0.304784,
		-0.967257, -0.080777, -0.240603,
		38.489883, 38.147320, 27.546366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786171, 38.510754, 28.303051>,  <39.166962, 38.203865, 27.714788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786171, 38.510754, 28.303051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516903, 38.290668, 28.105425>,  <38.355343, 38.158615, 27.986849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516903, 38.290668, 28.105425>,  <38.786171, 38.510754, 28.303051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516903, 38.290668, 28.105425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381901, -0.313452, 0.869425,
		-0.633237, 0.773958, 0.000880,
		-0.673174, -0.550216, -0.494065,
		38.314949, 38.125603, 27.957205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041328, 38.735962, 28.581158>,  <38.786171, 38.510754, 28.303051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041328, 38.735962, 28.581158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997978, 38.375038, 28.414263>,  <37.971970, 38.158482, 28.314127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997978, 38.375038, 28.414263>,  <38.041328, 38.735962, 28.581158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997978, 38.375038, 28.414263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510563, -0.309606, 0.802166,
		-0.852984, 0.299956, -0.427135,
		-0.108371, -0.902314, -0.417235,
		37.965466, 38.104343, 28.289093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654743, 38.470173, 29.098238>,  <38.041328, 38.735962, 28.581158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654743, 38.470173, 29.098238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745392, 38.144653, 28.884184>,  <37.799782, 37.949341, 28.755751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745392, 38.144653, 28.884184>,  <37.654743, 38.470173, 29.098238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745392, 38.144653, 28.884184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209116, -0.577269, 0.789323,
		-0.951270, -0.066969, -0.300998,
		0.226617, -0.813803, -0.535135,
		37.813377, 37.900513, 28.723644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091732, 38.062134, 29.174246>,  <37.654743, 38.470173, 29.098238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091732, 38.062134, 29.174246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402660, 37.831459, 29.073687>,  <37.589218, 37.693054, 29.013351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402660, 37.831459, 29.073687>,  <37.091732, 38.062134, 29.174246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402660, 37.831459, 29.073687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011519, -0.412593, 0.910842,
		-0.628999, -0.705121, -0.327360,
		0.777321, -0.576690, -0.251399,
		37.635857, 37.658451, 28.998266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866600, 37.390419, 29.450806>,  <37.091732, 38.062134, 29.174246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866600, 37.390419, 29.450806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256256, 37.365780, 29.363842>,  <37.490047, 37.350998, 29.311665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256256, 37.365780, 29.363842>,  <36.866600, 37.390419, 29.450806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256256, 37.365780, 29.363842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119885, -0.674675, 0.728314,
		-0.191539, -0.735541, -0.649840,
		0.974136, -0.061594, -0.217407,
		37.548496, 37.347301, 29.298620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000767, 36.655411, 29.091917>,  <36.866600, 37.390419, 29.450806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000767, 36.655411, 29.091917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308453, 36.823006, 29.284899>,  <37.493065, 36.923561, 29.400688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308453, 36.823006, 29.284899>,  <37.000767, 36.655411, 29.091917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308453, 36.823006, 29.284899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146649, -0.850622, 0.504913,
		0.621938, -0.317633, -0.715753,
		0.769212, 0.418989, 0.482454,
		37.539215, 36.948704, 29.429634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384090, 36.147263, 29.190113>,  <37.000767, 36.655411, 29.091917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384090, 36.147263, 29.190113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599815, 36.397881, 29.415173>,  <37.729252, 36.548252, 29.550209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599815, 36.397881, 29.415173>,  <37.384090, 36.147263, 29.190113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599815, 36.397881, 29.415173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429117, -0.779368, 0.456557,
		0.724567, -0.004785, -0.689188,
		0.539315, 0.626549, 0.562651,
		37.761612, 36.585846, 29.583967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008854, 35.865009, 29.229677>,  <37.384090, 36.147263, 29.190113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008854, 35.865009, 29.229677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997627, 36.105663, 29.548988>,  <37.990891, 36.250057, 29.740576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997627, 36.105663, 29.548988>,  <38.008854, 35.865009, 29.229677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997627, 36.105663, 29.548988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511938, -0.677262, 0.528428,
		0.858564, 0.423499, -0.288993,
		-0.028065, 0.601635, 0.798278,
		37.989208, 36.286156, 29.788471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713963, 35.852783, 29.437263>,  <38.008854, 35.865009, 29.229677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713963, 35.852783, 29.437263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454937, 35.934288, 29.730970>,  <38.299522, 35.983192, 29.907194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454937, 35.934288, 29.730970>,  <38.713963, 35.852783, 29.437263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454937, 35.934288, 29.730970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302342, -0.815788, 0.493030,
		0.699468, 0.541266, 0.466665,
		-0.647560, 0.203766, 0.734265,
		38.260670, 35.995419, 29.951250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100670, 35.733772, 30.119598>,  <38.713963, 35.852783, 29.437263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100670, 35.733772, 30.119598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712276, 35.714745, 30.213341>,  <38.479240, 35.703327, 30.269587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712276, 35.714745, 30.213341>,  <39.100670, 35.733772, 30.119598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712276, 35.714745, 30.213341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169818, -0.827168, 0.535682,
		0.168370, 0.559937, 0.811247,
		-0.970986, -0.047572, 0.234358,
		38.420982, 35.700474, 30.283648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075104, 35.460835, 30.798203>,  <39.100670, 35.733772, 30.119598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075104, 35.460835, 30.798203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698059, 35.389645, 30.685200>,  <38.471832, 35.346931, 30.617399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698059, 35.389645, 30.685200>,  <39.075104, 35.460835, 30.798203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698059, 35.389645, 30.685200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005422, -0.837821, 0.545919,
		-0.333851, 0.516120, 0.788773,
		-0.942610, -0.177979, -0.282505,
		38.415276, 35.336250, 30.600449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807388, 35.235794, 31.387980>,  <39.075104, 35.460835, 30.798203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807388, 35.235794, 31.387980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574421, 35.112309, 31.087187>,  <38.434639, 35.038216, 30.906712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574421, 35.112309, 31.087187>,  <38.807388, 35.235794, 31.387980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574421, 35.112309, 31.087187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142626, -0.949537, 0.279352,
		-0.800277, 0.055448, 0.597062,
		-0.582422, -0.308715, -0.751984,
		38.399693, 35.019695, 30.861591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080795, 34.905819, 31.593218>,  <38.807388, 35.235794, 31.387980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080795, 34.905819, 31.593218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303261, 34.763592, 31.292751>,  <38.436741, 34.678253, 31.112471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303261, 34.763592, 31.292751>,  <38.080795, 34.905819, 31.593218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303261, 34.763592, 31.292751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159589, -0.841338, 0.516413,
		-0.815607, -0.407088, -0.411176,
		0.556163, -0.355571, -0.751167,
		38.470108, 34.656921, 31.067402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671967, 34.339771, 31.368689>,  <38.080795, 34.905819, 31.593218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671967, 34.339771, 31.368689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055054, 34.279167, 31.270849>,  <38.284904, 34.242805, 31.212147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055054, 34.279167, 31.270849>,  <37.671967, 34.339771, 31.368689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055054, 34.279167, 31.270849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003528, -0.843879, 0.536521,
		-0.287696, -0.514698, -0.807662,
		0.957715, -0.151506, -0.244596,
		38.342369, 34.233715, 31.197470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672600, 33.741531, 31.185411>,  <37.671967, 34.339771, 31.368689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672600, 33.741531, 31.185411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063656, 33.794060, 31.251120>,  <38.298290, 33.825577, 31.290545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063656, 33.794060, 31.251120>,  <37.672600, 33.741531, 31.185411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063656, 33.794060, 31.251120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021700, -0.713935, 0.699876,
		0.209185, -0.687788, -0.695118,
		0.977635, 0.131319, 0.164269,
		38.356945, 33.833454, 31.300400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025070, 33.093254, 31.063683>,  <37.672600, 33.741531, 31.185411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025070, 33.093254, 31.063683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253071, 33.311699, 31.309238>,  <38.389870, 33.442764, 31.456572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253071, 33.311699, 31.309238>,  <38.025070, 33.093254, 31.063683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253071, 33.311699, 31.309238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029131, -0.760110, 0.649141,
		0.821127, -0.352129, -0.449173,
		0.570002, 0.546111, 0.613889,
		38.424072, 33.475533, 31.493404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565430, 32.624264, 31.238058>,  <38.025070, 33.093254, 31.063683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565430, 32.624264, 31.238058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601685, 32.921494, 31.503277>,  <38.623436, 33.099831, 31.662409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601685, 32.921494, 31.503277>,  <38.565430, 32.624264, 31.238058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601685, 32.921494, 31.503277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353626, -0.646413, 0.676090,
		0.930985, 0.173191, -0.321359,
		0.090638, 0.743071, 0.663046,
		38.628876, 33.144413, 31.702190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187809, 32.553303, 31.592642>,  <38.565430, 32.624264, 31.238058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187809, 32.553303, 31.592642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972878, 32.790710, 31.832314>,  <38.843918, 32.933155, 31.976116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972878, 32.790710, 31.832314>,  <39.187809, 32.553303, 31.592642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972878, 32.790710, 31.832314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382728, -0.461485, 0.800344,
		0.751532, 0.659368, 0.020811,
		-0.537325, 0.593519, 0.599180,
		38.811680, 32.968765, 32.012066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557606, 32.630615, 32.146610>,  <39.187809, 32.553303, 31.592642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557606, 32.630615, 32.146610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189560, 32.715996, 32.277958>,  <38.968731, 32.767223, 32.356766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189560, 32.715996, 32.277958>,  <39.557606, 32.630615, 32.146610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189560, 32.715996, 32.277958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235312, -0.368927, 0.899178,
		0.313074, 0.904617, 0.289228,
		-0.920116, 0.213451, 0.328369,
		38.913525, 32.780029, 32.376469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595566, 32.954494, 32.784985>,  <39.557606, 32.630615, 32.146610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595566, 32.954494, 32.784985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232933, 32.785755, 32.779854>,  <39.015354, 32.684513, 32.776775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232933, 32.785755, 32.779854>,  <39.595566, 32.954494, 32.784985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232933, 32.785755, 32.779854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105288, -0.255496, 0.961060,
		-0.408696, 0.869924, 0.276042,
		-0.906577, -0.421845, -0.012828,
		38.960960, 32.659203, 32.776005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474586, 32.922268, 33.491467>,  <39.595566, 32.954494, 32.784985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474586, 32.922268, 33.491467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180923, 32.703506, 33.330517>,  <39.004726, 32.572250, 33.233948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180923, 32.703506, 33.330517>,  <39.474586, 32.922268, 33.491467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180923, 32.703506, 33.330517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183072, -0.411226, 0.892960,
		-0.653831, 0.729238, 0.201782,
		-0.734159, -0.546905, -0.402375,
		38.960674, 32.539436, 33.209805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754181, 33.017700, 33.851368>,  <39.474586, 32.922268, 33.491467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754181, 33.017700, 33.851368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778957, 32.661072, 33.671917>,  <38.793823, 32.447094, 33.564247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778957, 32.661072, 33.671917>,  <38.754181, 33.017700, 33.851368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778957, 32.661072, 33.671917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227279, -0.450278, 0.863478,
		-0.971858, 0.048479, -0.230526,
		0.061940, -0.891571, -0.448624,
		38.797539, 32.393600, 33.537331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230862, 32.629986, 34.210838>,  <38.754181, 33.017700, 33.851368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230862, 32.629986, 34.210838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485962, 32.378300, 34.033138>,  <38.639023, 32.227287, 33.926517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485962, 32.378300, 34.033138>,  <38.230862, 32.629986, 34.210838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485962, 32.378300, 34.033138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078135, -0.520949, 0.850004,
		-0.766266, -0.576806, -0.283075,
		0.637755, -0.629211, -0.444254,
		38.677288, 32.189537, 33.899860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146976, 32.036201, 34.610069>,  <38.230862, 32.629986, 34.210838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146976, 32.036201, 34.610069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490879, 31.914206, 34.446217>,  <38.697220, 31.841009, 34.347904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490879, 31.914206, 34.446217>,  <38.146976, 32.036201, 34.610069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490879, 31.914206, 34.446217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113248, -0.668268, 0.735250,
		-0.497981, -0.678530, -0.540012,
		0.859761, -0.304986, -0.409627,
		38.748806, 31.822710, 34.323330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108948, 31.286129, 34.587795>,  <38.146976, 32.036201, 34.610069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108948, 31.286129, 34.587795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481998, 31.429386, 34.570145>,  <38.705830, 31.515341, 34.559555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481998, 31.429386, 34.570145>,  <38.108948, 31.286129, 34.587795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481998, 31.429386, 34.570145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279244, -0.638847, 0.716866,
		0.228550, -0.680889, -0.695813,
		0.932624, 0.358141, -0.044126,
		38.761787, 31.536829, 34.556908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478199, 30.755388, 34.545025>,  <38.108948, 31.286129, 34.587795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478199, 30.755388, 34.545025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688683, 31.046869, 34.720341>,  <38.814972, 31.221758, 34.825531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688683, 31.046869, 34.720341>,  <38.478199, 30.755388, 34.545025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688683, 31.046869, 34.720341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404538, -0.667879, 0.624730,
		0.747965, -0.151434, -0.646232,
		0.526210, 0.728702, 0.438289,
		38.846546, 31.265480, 34.851826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122250, 30.525566, 34.541676>,  <38.478199, 30.755388, 34.545025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122250, 30.525566, 34.541676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137905, 30.827002, 34.804146>,  <39.147297, 31.007862, 34.961628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137905, 30.827002, 34.804146>,  <39.122250, 30.525566, 34.541676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137905, 30.827002, 34.804146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489287, -0.587022, 0.644983,
		0.871244, 0.295819, -0.391694,
		0.039134, 0.753589, 0.656180,
		39.149647, 31.053078, 35.000999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863651, 30.562216, 34.850960>,  <39.122250, 30.525566, 34.541676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863651, 30.562216, 34.850960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618721, 30.718672, 35.125786>,  <39.471764, 30.812546, 35.290684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618721, 30.718672, 35.125786>,  <39.863651, 30.562216, 34.850960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618721, 30.718672, 35.125786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340426, -0.653908, 0.675659,
		0.713558, 0.647620, 0.267251,
		-0.612328, 0.391142, 0.687068,
		39.435024, 30.836014, 35.331905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293419, 30.658346, 35.406586>,  <39.863651, 30.562216, 34.850960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293419, 30.658346, 35.406586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913952, 30.645691, 35.532459>,  <39.686272, 30.638098, 35.607983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913952, 30.645691, 35.532459>,  <40.293419, 30.658346, 35.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913952, 30.645691, 35.532459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255045, -0.664912, 0.702029,
		0.187024, 0.746252, 0.638851,
		-0.948670, -0.031639, 0.314683,
		39.629353, 30.636200, 35.626865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267349, 30.732422, 36.188320>,  <40.293419, 30.658346, 35.406586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267349, 30.732422, 36.188320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932632, 30.533901, 36.095829>,  <39.731804, 30.414789, 36.040337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932632, 30.533901, 36.095829>,  <40.267349, 30.732422, 36.188320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932632, 30.533901, 36.095829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139274, -0.601366, 0.786741,
		-0.529511, 0.626135, 0.572340,
		-0.836792, -0.496300, -0.231225,
		39.681595, 30.385012, 36.026463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837162, 30.678366, 36.811409>,  <40.267349, 30.732422, 36.188320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837162, 30.678366, 36.811409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708546, 30.367722, 36.594711>,  <39.631378, 30.181335, 36.464691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708546, 30.367722, 36.594711>,  <39.837162, 30.678366, 36.811409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708546, 30.367722, 36.594711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076252, -0.549035, 0.832314,
		-0.943822, 0.308929, 0.117317,
		-0.321537, -0.776610, -0.541747,
		39.612083, 30.134739, 36.432186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191097, 30.427837, 37.081566>,  <39.837162, 30.678366, 36.811409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191097, 30.427837, 37.081566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415535, 30.156197, 36.892254>,  <39.550198, 29.993212, 36.778667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415535, 30.156197, 36.892254>,  <39.191097, 30.427837, 37.081566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415535, 30.156197, 36.892254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010772, -0.565726, 0.824523,
		-0.827680, -0.467735, -0.310112,
		0.561097, -0.679101, -0.473278,
		39.583862, 29.952467, 36.750271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922508, 29.872330, 37.289288>,  <39.191097, 30.427837, 37.081566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922508, 29.872330, 37.289288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299305, 29.808914, 37.170956>,  <39.525383, 29.770864, 37.099957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299305, 29.808914, 37.170956>,  <38.922508, 29.872330, 37.289288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299305, 29.808914, 37.170956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228665, -0.342063, 0.911430,
		-0.245688, -0.926207, -0.285969,
		0.941993, -0.158537, -0.295832,
		39.581902, 29.761353, 37.082207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363987, 29.182899, 37.241928>,  <38.922508, 29.872330, 37.289288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363987, 29.182899, 37.241928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612469, 29.474649, 37.356548>,  <39.761559, 29.649700, 37.425320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612469, 29.474649, 37.356548>,  <39.363987, 29.182899, 37.241928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612469, 29.474649, 37.356548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344939, -0.582838, 0.735743,
		0.703648, -0.358204, -0.613653,
		0.621206, 0.729377, 0.286554,
		39.798832, 29.693462, 37.442513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236420, 29.035267, 37.382706>,  <39.363987, 29.182899, 37.241928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236420, 29.035267, 37.382706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102627, 29.342363, 37.601318>,  <40.022350, 29.526621, 37.732487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102627, 29.342363, 37.601318>,  <40.236420, 29.035267, 37.382706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102627, 29.342363, 37.601318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498878, -0.347763, 0.793840,
		0.799528, 0.538173, -0.266691,
		-0.334478, 0.767743, 0.546530,
		40.002285, 29.572687, 37.765278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285244, 28.455763, 36.892418>,  <40.236420, 29.035267, 37.382706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285244, 28.455763, 36.892418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930202, 28.630268, 36.833305>,  <39.717178, 28.734972, 36.797836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930202, 28.630268, 36.833305>,  <40.285244, 28.455763, 36.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930202, 28.630268, 36.833305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439057, 0.704327, -0.557811,
		-0.139264, -0.559999, -0.816705,
		-0.887600, 0.436263, -0.147784,
		39.663921, 28.761147, 36.788971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245564, 29.074282, 36.420380>,  <40.285244, 28.455763, 36.892418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245564, 29.074282, 36.420380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862228, 29.097849, 36.532177>,  <39.632229, 29.111990, 36.599255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862228, 29.097849, 36.532177>,  <40.245564, 29.074282, 36.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862228, 29.097849, 36.532177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134350, 0.770520, -0.623097,
		-0.252069, -0.634687, -0.730502,
		-0.958338, 0.058920, 0.279494,
		39.574726, 29.115524, 36.616024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722446, 28.913399, 35.978878>,  <40.245564, 29.074282, 36.420380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722446, 28.913399, 35.978878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621834, 29.206762, 36.231495>,  <39.561466, 29.382780, 36.383064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621834, 29.206762, 36.231495>,  <39.722446, 28.913399, 35.978878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621834, 29.206762, 36.231495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126345, 0.622055, -0.772712,
		-0.959566, -0.274155, -0.063805,
		-0.251534, 0.733407, 0.631542,
		39.546375, 29.426785, 36.420956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063885, 29.150692, 35.874149>,  <39.722446, 28.913399, 35.978878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063885, 29.150692, 35.874149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301346, 29.439489, 36.016304>,  <39.443821, 29.612768, 36.101597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301346, 29.439489, 36.016304>,  <39.063885, 29.150692, 35.874149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301346, 29.439489, 36.016304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279624, 0.599188, -0.750189,
		-0.754576, 0.345977, 0.557597,
		0.593654, 0.721993, 0.355390,
		39.479443, 29.656088, 36.122921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592274, 29.806898, 35.949051>,  <39.063885, 29.150692, 35.874149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592274, 29.806898, 35.949051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960903, 29.960737, 35.927948>,  <39.182083, 30.053040, 35.915287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960903, 29.960737, 35.927948>,  <38.592274, 29.806898, 35.949051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960903, 29.960737, 35.927948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364206, 0.809568, -0.460384,
		-0.134355, 0.443492, 0.886151,
		0.921576, 0.384596, -0.052753,
		39.237377, 30.076117, 35.912121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415695, 30.537170, 36.064034>,  <38.592274, 29.806898, 35.949051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415695, 30.537170, 36.064034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786751, 30.533461, 35.914688>,  <39.009384, 30.531235, 35.825081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786751, 30.533461, 35.914688>,  <38.415695, 30.537170, 36.064034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786751, 30.533461, 35.914688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159896, 0.893580, -0.419461,
		0.337523, 0.448808, 0.827436,
		0.927638, -0.009274, -0.373366,
		39.065041, 30.530678, 35.802677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630619, 31.180305, 36.178001>,  <38.415695, 30.537170, 36.064034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630619, 31.180305, 36.178001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852356, 31.057407, 35.868603>,  <38.985397, 30.983667, 35.682964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852356, 31.057407, 35.868603>,  <38.630619, 31.180305, 36.178001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852356, 31.057407, 35.868603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207071, 0.849228, -0.485731,
		0.806116, 0.429432, 0.407144,
		0.554346, -0.307247, -0.773498,
		39.018661, 30.965233, 35.636555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004448, 31.871082, 35.971058>,  <38.630619, 31.180305, 36.178001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004448, 31.871082, 35.971058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059212, 31.617048, 35.666973>,  <39.092072, 31.464628, 35.484524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059212, 31.617048, 35.666973>,  <39.004448, 31.871082, 35.971058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059212, 31.617048, 35.666973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217861, 0.729344, -0.648533,
		0.966329, 0.254411, -0.038507,
		0.136909, -0.635085, -0.760212,
		39.100285, 31.426523, 35.438908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423981, 32.240349, 35.450733>,  <39.004448, 31.871082, 35.971058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423981, 32.240349, 35.450733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230991, 31.940773, 35.269047>,  <39.115196, 31.761028, 35.160034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230991, 31.940773, 35.269047>,  <39.423981, 32.240349, 35.450733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230991, 31.940773, 35.269047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054954, 0.543429, -0.837654,
		0.874185, -0.379185, -0.303347,
		-0.482473, -0.748935, -0.454220,
		39.086250, 31.716093, 35.132782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943890, 31.991718, 34.957844>,  <39.423981, 32.240349, 35.450733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943890, 31.991718, 34.957844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630535, 31.746641, 34.916050>,  <39.442524, 31.599594, 34.890976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630535, 31.746641, 34.916050>,  <39.943890, 31.991718, 34.957844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630535, 31.746641, 34.916050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059611, 0.241389, -0.968596,
		0.618673, -0.752554, -0.225623,
		-0.783384, -0.612694, -0.104480,
		39.395519, 31.562834, 34.884705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038849, 31.708359, 34.366653>,  <39.943890, 31.991718, 34.957844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038849, 31.708359, 34.366653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647770, 31.668095, 34.440380>,  <39.413124, 31.643936, 34.484615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647770, 31.668095, 34.440380>,  <40.038849, 31.708359, 34.366653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647770, 31.668095, 34.440380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209366, 0.398272, -0.893054,
		0.016484, -0.911728, -0.410464,
		-0.977698, -0.100658, 0.184319,
		39.354462, 31.637897, 34.495674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797096, 31.833519, 33.708187>,  <40.038849, 31.708359, 34.366653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797096, 31.833519, 33.708187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433002, 31.762493, 33.857826>,  <39.214546, 31.719877, 33.947609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433002, 31.762493, 33.857826>,  <39.797096, 31.833519, 33.708187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433002, 31.762493, 33.857826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399720, 0.140746, -0.905767,
		0.108172, -0.973994, -0.199085,
		-0.910232, -0.177557, 0.374100,
		39.159935, 31.709223, 33.970055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393761, 31.290768, 33.290512>,  <39.797096, 31.833519, 33.708187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393761, 31.290768, 33.290512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146591, 31.540232, 33.482021>,  <38.998291, 31.689911, 33.596928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146591, 31.540232, 33.482021>,  <39.393761, 31.290768, 33.290512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146591, 31.540232, 33.482021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293742, 0.381720, -0.876359,
		-0.729308, -0.682155, -0.052677,
		-0.617920, 0.623662, 0.478769,
		38.961216, 31.727331, 33.625652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076740, 31.465208, 32.761322>,  <39.393761, 31.290768, 33.290512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076740, 31.465208, 32.761322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922913, 31.705273, 33.041870>,  <38.830616, 31.849312, 33.210197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922913, 31.705273, 33.041870>,  <39.076740, 31.465208, 32.761322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922913, 31.705273, 33.041870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263781, 0.656666, -0.706547,
		-0.884606, -0.456721, -0.094220,
		-0.384566, 0.600163, 0.701366,
		38.807541, 31.885321, 33.252281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269707, 31.556581, 32.689030>,  <39.076740, 31.465208, 32.761322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269707, 31.556581, 32.689030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461700, 31.855560, 32.872746>,  <38.576897, 32.034946, 32.982975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461700, 31.855560, 32.872746>,  <38.269707, 31.556581, 32.689030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461700, 31.855560, 32.872746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349752, 0.643167, -0.681182,
		-0.804545, 0.166318, 0.570128,
		0.479980, 0.747445, 0.459287,
		38.605694, 32.079792, 33.010532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783485, 32.202930, 32.614841>,  <38.269707, 31.556581, 32.689030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783485, 32.202930, 32.614841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158936, 32.325806, 32.677597>,  <38.384205, 32.399532, 32.715252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158936, 32.325806, 32.677597>,  <37.783485, 32.202930, 32.614841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158936, 32.325806, 32.677597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163426, 0.796592, -0.582008,
		-0.303765, 0.520648, 0.797905,
		0.938626, 0.307192, 0.156890,
		38.440525, 32.417965, 32.724663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651821, 32.952518, 32.626247>,  <37.783485, 32.202930, 32.614841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651821, 32.952518, 32.626247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033718, 32.862888, 32.548012>,  <38.262856, 32.809109, 32.501068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033718, 32.862888, 32.548012>,  <37.651821, 32.952518, 32.626247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033718, 32.862888, 32.548012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059943, 0.789060, -0.611384,
		0.291333, 0.571990, 0.766781,
		0.954742, -0.224079, -0.195592,
		38.320141, 32.795666, 32.489334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006329, 33.526871, 32.713634>,  <37.651821, 32.952518, 32.626247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006329, 33.526871, 32.713634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226871, 33.310978, 32.459171>,  <38.359196, 33.181442, 32.306496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226871, 33.310978, 32.459171>,  <38.006329, 33.526871, 32.713634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226871, 33.310978, 32.459171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154411, 0.815374, -0.557963,
		0.819858, 0.209405, 0.532901,
		0.551354, -0.539736, -0.636156,
		38.392277, 33.149055, 32.268326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647095, 33.915745, 32.687012>,  <38.006329, 33.526871, 32.713634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647095, 33.915745, 32.687012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611843, 33.685841, 32.361588>,  <38.590694, 33.547897, 32.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611843, 33.685841, 32.361588>,  <38.647095, 33.915745, 32.687012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611843, 33.685841, 32.361588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048043, 0.813339, -0.579803,
		0.994950, -0.090182, -0.044064,
		-0.088126, -0.574759, -0.813564,
		38.585403, 33.513412, 32.117519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198566, 34.176834, 32.287060>,  <38.647095, 33.915745, 32.687012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198566, 34.176834, 32.287060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915634, 34.006981, 32.061008>,  <38.745876, 33.905071, 31.925377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915634, 34.006981, 32.061008>,  <39.198566, 34.176834, 32.287060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915634, 34.006981, 32.061008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155008, 0.686837, -0.710090,
		0.689717, -0.589845, -0.419969,
		-0.707293, -0.424663, -0.565154,
		38.703434, 33.879593, 31.891470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580193, 34.155952, 31.692890>,  <39.198566, 34.176834, 32.287060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580193, 34.155952, 31.692890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195053, 34.088951, 31.608164>,  <38.963970, 34.048748, 31.557329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195053, 34.088951, 31.608164>,  <39.580193, 34.155952, 31.692890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195053, 34.088951, 31.608164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109715, 0.474063, -0.873629,
		0.246750, -0.864411, -0.438073,
		-0.962849, -0.167505, -0.211814,
		38.906200, 34.038700, 31.544619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590084, 33.967438, 31.026356>,  <39.580193, 34.155952, 31.692890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590084, 33.967438, 31.026356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211266, 34.072044, 31.100876>,  <38.983974, 34.134808, 31.145588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211266, 34.072044, 31.100876>,  <39.590084, 33.967438, 31.026356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211266, 34.072044, 31.100876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016728, 0.619607, -0.784734,
		-0.320657, -0.740064, -0.591172,
		-0.947047, 0.261519, 0.186301,
		38.927151, 34.150501, 31.156767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519749, 33.333370, 30.574221>,  <39.590084, 33.967438, 31.026356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519749, 33.333370, 30.574221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477226, 33.666950, 30.357616>,  <39.451714, 33.867096, 30.227654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477226, 33.666950, 30.357616>,  <39.519749, 33.333370, 30.574221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477226, 33.666950, 30.357616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992834, 0.059119, -0.103857,
		-0.054597, -0.548668, -0.834256,
		-0.106303, 0.833948, -0.541508,
		39.445335, 33.917133, 30.195164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936066, 33.341949, 29.919224>,  <39.519749, 33.333370, 30.574221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936066, 33.341949, 29.919224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887615, 33.699924, 30.091000>,  <39.858547, 33.914711, 30.194065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887615, 33.699924, 30.091000>,  <39.936066, 33.341949, 29.919224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887615, 33.699924, 30.091000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992612, 0.112314, 0.045904,
		-0.007150, 0.431825, -0.901929,
		-0.121121, 0.894937, 0.429438,
		39.851280, 33.968407, 30.219831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497894, 33.888180, 29.677799>,  <39.936066, 33.341949, 29.919224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497894, 33.888180, 29.677799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363789, 33.964828, 30.046772>,  <40.283325, 34.010818, 30.268156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363789, 33.964828, 30.046772>,  <40.497894, 33.888180, 29.677799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363789, 33.964828, 30.046772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942037, 0.081598, 0.325435,
		-0.012909, 0.978071, -0.207870,
		-0.335260, 0.191620, 0.922433,
		40.263210, 34.022316, 30.323502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696217, 34.592751, 29.940653>,  <40.497894, 33.888180, 29.677799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696217, 34.592751, 29.940653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665623, 34.313797, 30.225697>,  <40.647266, 34.146427, 30.396723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665623, 34.313797, 30.225697>,  <40.696217, 34.592751, 29.940653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665623, 34.313797, 30.225697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983642, 0.064126, 0.168332,
		-0.163088, 0.713827, 0.681067,
		-0.076486, -0.697380, 0.712609,
		40.642677, 34.104584, 30.439480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102203, 34.798641, 30.536568>,  <40.696217, 34.592751, 29.940653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102203, 34.798641, 30.536568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087925, 34.398991, 30.545258>,  <41.079357, 34.159199, 30.550472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087925, 34.398991, 30.545258>,  <41.102203, 34.798641, 30.536568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087925, 34.398991, 30.545258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993974, -0.033240, 0.104451,
		-0.103638, 0.025322, 0.994293,
		-0.035695, -0.999127, 0.021724,
		41.077217, 34.099251, 30.551775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321159, 34.446877, 31.154575>,  <41.102203, 34.798641, 30.536568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321159, 34.446877, 31.154575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410480, 34.206100, 30.847902>,  <41.464073, 34.061634, 30.663898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410480, 34.206100, 30.847902>,  <41.321159, 34.446877, 31.154575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410480, 34.206100, 30.847902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974742, 0.134910, 0.177980,
		-0.003700, -0.787062, 0.616863,
		0.223302, -0.601941, -0.766683,
		41.477470, 34.025517, 30.617897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970554, 34.139332, 31.382423>,  <41.321159, 34.446877, 31.154575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970554, 34.139332, 31.382423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943970, 34.076015, 30.988361>,  <41.928020, 34.038025, 30.751925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943970, 34.076015, 30.988361>,  <41.970554, 34.139332, 31.382423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943970, 34.076015, 30.988361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992662, -0.110455, -0.049219,
		-0.101024, -0.981195, 0.164470,
		-0.066460, -0.158291, -0.985153,
		41.924030, 34.028526, 30.692816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086128, 34.629284, 32.010773>,  <41.970554, 34.139332, 31.382423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086128, 34.629284, 32.010773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264202, 34.918266, 31.799162>,  <42.371044, 35.091656, 31.672195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264202, 34.918266, 31.799162>,  <42.086128, 34.629284, 32.010773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264202, 34.918266, 31.799162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778103, -0.019736, 0.627827,
		0.443136, -0.691135, -0.570932,
		0.445181, 0.722456, -0.529028,
		42.397755, 35.135002, 31.640453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786278, 34.595512, 31.931108>,  <42.086128, 34.629284, 32.010773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786278, 34.595512, 31.931108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805370, 34.990330, 31.869831>,  <42.816826, 35.227219, 31.833065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805370, 34.990330, 31.869831>,  <42.786278, 34.595512, 31.931108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805370, 34.990330, 31.869831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897576, 0.024909, 0.440156,
		0.438269, -0.158512, -0.884757,
		0.047732, 0.987043, -0.153193,
		42.819691, 35.286442, 31.823874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362801, 34.812984, 31.598450>,  <42.786278, 34.595512, 31.931108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362801, 34.812984, 31.598450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251534, 35.091656, 31.862953>,  <43.184772, 35.258858, 32.021656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251534, 35.091656, 31.862953>,  <43.362801, 34.812984, 31.598450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251534, 35.091656, 31.862953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941800, 0.062528, 0.330307,
		0.188770, 0.714657, -0.673522,
		-0.278170, 0.696675, 0.661260,
		43.168083, 35.300659, 32.061333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674942, 35.539753, 31.693502>,  <43.362801, 34.812984, 31.598450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674942, 35.539753, 31.693502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624908, 35.366875, 32.050728>,  <43.594891, 35.263149, 32.265064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624908, 35.366875, 32.050728>,  <43.674942, 35.539753, 31.693502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624908, 35.366875, 32.050728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979695, 0.088359, 0.179975,
		-0.156694, 0.897443, 0.412363,
		-0.125082, -0.432191, 0.893065,
		43.587383, 35.237217, 32.318649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830063, 36.078426, 32.093319>,  <43.674942, 35.539753, 31.693502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830063, 36.078426, 32.093319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895950, 35.720028, 32.258274>,  <43.935482, 35.504990, 32.357246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895950, 35.720028, 32.258274>,  <43.830063, 36.078426, 32.093319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895950, 35.720028, 32.258274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911527, 0.298010, 0.283388,
		-0.376810, 0.329223, 0.865810,
		0.164722, -0.895992, 0.412389,
		43.945366, 35.451229, 32.381992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051468, 36.250439, 32.850883>,  <43.830063, 36.078426, 32.093319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051468, 36.250439, 32.850883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200630, 35.888741, 32.767658>,  <44.290127, 35.671722, 32.717724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200630, 35.888741, 32.767658>,  <44.051468, 36.250439, 32.850883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200630, 35.888741, 32.767658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898535, 0.295977, 0.324088,
		-0.231473, -0.307802, 0.922864,
		0.372902, -0.904243, -0.208060,
		44.312500, 35.617466, 32.705238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292595, 35.711105, 33.428322>,  <44.051468, 36.250439, 32.850883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292595, 35.711105, 33.428322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526455, 35.634747, 33.112919>,  <44.666771, 35.588932, 32.923676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526455, 35.634747, 33.112919>,  <44.292595, 35.711105, 33.428322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526455, 35.634747, 33.112919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747172, 0.505388, 0.431644,
		0.316104, -0.841512, 0.438106,
		0.584647, -0.190896, -0.788509,
		44.701847, 35.577477, 32.876366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949451, 35.581493, 33.792690>,  <44.292595, 35.711105, 33.428322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949451, 35.581493, 33.792690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964031, 35.696606, 33.409889>,  <44.972778, 35.765675, 33.180210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964031, 35.696606, 33.409889>,  <44.949451, 35.581493, 33.792690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964031, 35.696606, 33.409889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766417, 0.606500, 0.211573,
		0.641308, -0.741175, -0.198453,
		0.036451, 0.287781, -0.957002,
		44.974968, 35.782940, 33.122787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709267, 35.649452, 33.580620>,  <44.949451, 35.581493, 33.792690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709267, 35.649452, 33.580620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453426, 35.869392, 33.365746>,  <45.299923, 36.001358, 33.236820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453426, 35.869392, 33.365746>,  <45.709267, 35.649452, 33.580620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453426, 35.869392, 33.365746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585782, 0.801147, 0.122574,
		0.497763, -0.236275, -0.834510,
		-0.639603, 0.549853, -0.537186,
		45.261547, 36.034348, 33.204590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141792, 36.163857, 33.072281>,  <45.709267, 35.649452, 33.580620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141792, 36.163857, 33.072281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531158, 36.244438, 33.028690>,  <46.764778, 36.292786, 33.002537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531158, 36.244438, 33.028690>,  <46.141792, 36.163857, 33.072281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531158, 36.244438, 33.028690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138394, 0.896441, 0.420999,
		0.182501, -0.394726, 0.900491,
		0.973417, 0.201455, -0.108974,
		46.823185, 36.304874, 32.995998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420391, 36.291378, 33.727753>,  <46.141792, 36.163857, 33.072281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420391, 36.291378, 33.727753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543571, 36.528961, 33.430466>,  <46.617481, 36.671513, 33.252094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543571, 36.528961, 33.430466>,  <46.420391, 36.291378, 33.727753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543571, 36.528961, 33.430466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531520, 0.755313, 0.383391,
		0.789082, 0.276969, 0.548304,
		0.307953, 0.593962, -0.743219,
		46.635960, 36.707150, 33.207500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866768, 35.857700, 34.185654>,  <46.420391, 36.291378, 33.727753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866768, 35.857700, 34.185654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051945, 35.908184, 34.536594>,  <47.163052, 35.938477, 34.747158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051945, 35.908184, 34.536594>,  <46.866768, 35.857700, 34.185654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.051945, 35.908184, 34.536594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198887, -0.949781, 0.241577,
		0.863786, -0.286331, -0.414593,
		0.462944, 0.126213, 0.877356,
		47.190826, 35.946049, 34.799801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.400555, 35.332100, 34.286739>,  <46.866768, 35.857700, 34.185654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.400555, 35.332100, 34.286739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333267, 35.441631, 34.665520>,  <47.292896, 35.507351, 34.892788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.333267, 35.441631, 34.665520>,  <47.400555, 35.332100, 34.286739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333267, 35.441631, 34.665520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014527, -0.959851, 0.280134,
		0.985643, 0.060880, 0.157486,
		-0.168217, 0.273824, 0.946955,
		47.282803, 35.523777, 34.949608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.900955, 35.034683, 34.700916>,  <47.400555, 35.332100, 34.286739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.900955, 35.034683, 34.700916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594269, 35.123253, 34.941952>,  <47.410255, 35.176395, 35.086575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.594269, 35.123253, 34.941952>,  <47.900955, 35.034683, 34.700916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594269, 35.123253, 34.941952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114916, -0.970814, 0.210510,
		0.631617, 0.092154, 0.769784,
		-0.766716, 0.221423, 0.602593,
		47.364254, 35.189678, 35.122730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.046711, 35.001671, 35.526573>,  <47.900955, 35.034683, 34.700916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.046711, 35.001671, 35.526573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682423, 34.914089, 35.386490>,  <47.463848, 34.861538, 35.302441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682423, 34.914089, 35.386490>,  <48.046711, 35.001671, 35.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682423, 34.914089, 35.386490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120758, -0.952023, 0.281193,
		-0.394977, 0.213798, 0.893467,
		-0.910720, -0.218958, -0.350209,
		47.409206, 34.848400, 35.281425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.272758, 35.527245, 21.674417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000824, 35.797367, 21.560034>,  <37.837662, 35.959442, 21.491404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000824, 35.797367, 21.560034>,  <38.272758, 35.527245, 21.674417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000824, 35.797367, 21.560034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498204, -0.139150, 0.855821,
		0.538153, 0.724289, 0.431042,
		-0.679841, 0.675310, -0.285960,
		37.796871, 35.999962, 21.474245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289703, 36.061230, 22.189625>,  <38.272758, 35.527245, 21.674417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289703, 36.061230, 22.189625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941837, 36.010994, 21.998665>,  <37.733116, 35.980854, 21.884089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941837, 36.010994, 21.998665>,  <38.289703, 36.061230, 22.189625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941837, 36.010994, 21.998665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471000, -0.078431, 0.878640,
		-0.147790, 0.988978, 0.009056,
		-0.869665, -0.125589, -0.477399,
		37.680939, 35.973316, 21.855446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817612, 36.461586, 22.580055>,  <38.289703, 36.061230, 22.189625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817612, 36.461586, 22.580055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574699, 36.218380, 22.375498>,  <37.428951, 36.072456, 22.252764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574699, 36.218380, 22.375498>,  <37.817612, 36.461586, 22.580055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574699, 36.218380, 22.375498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483347, -0.228108, 0.845187,
		-0.630541, 0.760449, -0.155357,
		-0.607283, -0.608016, -0.511393,
		37.392513, 36.035976, 22.222080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185699, 36.647308, 22.782909>,  <37.817612, 36.461586, 22.580055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185699, 36.647308, 22.782909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134644, 36.276695, 22.641350>,  <37.104012, 36.054329, 22.556414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134644, 36.276695, 22.641350>,  <37.185699, 36.647308, 22.782909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134644, 36.276695, 22.641350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689403, -0.173646, 0.703258,
		-0.713045, 0.333741, -0.616591,
		-0.127637, -0.926533, -0.353899,
		37.096352, 35.998734, 22.535181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496712, 36.471825, 22.797876>,  <37.185699, 36.647308, 22.782909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496712, 36.471825, 22.797876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677555, 36.115108, 22.790854>,  <36.786060, 35.901077, 22.786640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.677555, 36.115108, 22.790854>,  <36.496712, 36.471825, 22.797876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677555, 36.115108, 22.790854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556990, -0.297641, 0.775353,
		-0.696678, -0.340764, -0.631284,
		0.452108, -0.891790, -0.017557,
		36.813187, 35.847572, 22.785585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026485, 36.090870, 23.187346>,  <36.496712, 36.471825, 22.797876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026485, 36.090870, 23.187346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313271, 35.815132, 23.145832>,  <36.485340, 35.649689, 23.120924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313271, 35.815132, 23.145832>,  <36.026485, 36.090870, 23.187346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313271, 35.815132, 23.145832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385733, -0.516303, 0.764618,
		-0.580668, -0.508170, -0.636072,
		0.716962, -0.689343, -0.103783,
		36.528358, 35.608330, 23.114698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735790, 35.482639, 23.322147>,  <36.026485, 36.090870, 23.187346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735790, 35.482639, 23.322147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124561, 35.425011, 23.396551>,  <36.357822, 35.390434, 23.441195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124561, 35.425011, 23.396551>,  <35.735790, 35.482639, 23.322147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124561, 35.425011, 23.396551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232912, -0.477295, 0.847315,
		-0.033289, -0.866853, -0.497451,
		0.971928, -0.144068, 0.186011,
		36.416142, 35.381790, 23.452354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708008, 34.791725, 23.558723>,  <35.735790, 35.482639, 23.322147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708008, 34.791725, 23.558723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050159, 34.957081, 23.683578>,  <36.255451, 35.056293, 23.758492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050159, 34.957081, 23.683578>,  <35.708008, 34.791725, 23.558723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050159, 34.957081, 23.683578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118320, -0.430722, 0.894695,
		0.504303, -0.802238, -0.319520,
		0.855382, 0.413392, 0.312135,
		36.306774, 35.081097, 23.777220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100327, 34.307129, 23.824287>,  <35.708008, 34.791725, 23.558723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100327, 34.307129, 23.824287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290417, 34.620224, 23.985027>,  <36.404469, 34.808083, 24.081470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290417, 34.620224, 23.985027>,  <36.100327, 34.307129, 23.824287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290417, 34.620224, 23.985027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122970, -0.511318, 0.850548,
		0.871231, -0.354783, -0.339243,
		0.475221, 0.782740, 0.401848,
		36.432983, 34.855045, 24.105581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751839, 34.127312, 24.115747>,  <36.100327, 34.307129, 23.824287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751839, 34.127312, 24.115747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628048, 34.455456, 24.308092>,  <36.553772, 34.652344, 24.423498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628048, 34.455456, 24.308092>,  <36.751839, 34.127312, 24.115747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628048, 34.455456, 24.308092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173604, -0.448444, 0.876789,
		0.934924, 0.354828, -0.003634,
		-0.309479, 0.820363, 0.480861,
		36.535206, 34.701565, 24.452351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153873, 34.118198, 24.713831>,  <36.751839, 34.127312, 24.115747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153873, 34.118198, 24.713831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855194, 34.373028, 24.790335>,  <36.675987, 34.525925, 24.836237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855194, 34.373028, 24.790335>,  <37.153873, 34.118198, 24.713831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855194, 34.373028, 24.790335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108542, -0.166985, 0.979967,
		0.656250, 0.752497, 0.055538,
		-0.746696, 0.637075, 0.191261,
		36.631184, 34.564152, 24.847713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304405, 34.468513, 25.291355>,  <37.153873, 34.118198, 24.713831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304405, 34.468513, 25.291355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909142, 34.527252, 25.309135>,  <36.671982, 34.562496, 25.319803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909142, 34.527252, 25.309135>,  <37.304405, 34.468513, 25.291355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909142, 34.527252, 25.309135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017382, -0.180701, 0.983385,
		0.152441, 0.972514, 0.176009,
		-0.988160, 0.146848, 0.044450,
		36.612694, 34.571308, 25.322470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206161, 34.654610, 25.939634>,  <37.304405, 34.468513, 25.291355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206161, 34.654610, 25.939634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830868, 34.548199, 25.851147>,  <36.605690, 34.484352, 25.798054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830868, 34.548199, 25.851147>,  <37.206161, 34.654610, 25.939634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830868, 34.548199, 25.851147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139499, -0.294238, 0.945497,
		-0.316621, 0.917961, 0.238954,
		-0.938238, -0.266030, -0.221217,
		36.549397, 34.468391, 25.784782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800873, 34.904911, 26.453434>,  <37.206161, 34.654610, 25.939634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800873, 34.904911, 26.453434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573631, 34.631557, 26.270023>,  <36.437286, 34.467545, 26.159977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573631, 34.631557, 26.270023>,  <36.800873, 34.904911, 26.453434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573631, 34.631557, 26.270023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314285, -0.334776, 0.888341,
		-0.760578, 0.648780, -0.024587,
		-0.568107, -0.683380, -0.458525,
		36.403198, 34.426544, 26.132465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198208, 34.905651, 26.782545>,  <36.800873, 34.904911, 26.453434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198208, 34.905651, 26.782545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184887, 34.540890, 26.618927>,  <36.176895, 34.322033, 26.520756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184887, 34.540890, 26.618927>,  <36.198208, 34.905651, 26.782545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184887, 34.540890, 26.618927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310122, -0.379640, 0.871607,
		-0.950113, 0.155884, -0.270157,
		-0.033307, -0.911907, -0.409044,
		36.174896, 34.267319, 26.496214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525589, 34.605549, 26.948498>,  <36.198208, 34.905651, 26.782545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525589, 34.605549, 26.948498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764698, 34.299370, 26.853203>,  <35.908165, 34.115662, 26.796026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764698, 34.299370, 26.853203>,  <35.525589, 34.605549, 26.948498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764698, 34.299370, 26.853203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192144, -0.425319, 0.884412,
		-0.778298, -0.482902, -0.401320,
		0.597773, -0.765448, -0.238238,
		35.944031, 34.069736, 26.781731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112717, 33.995949, 27.012379>,  <35.525589, 34.605549, 26.948498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112717, 33.995949, 27.012379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485420, 33.851173, 27.023912>,  <35.709042, 33.764309, 27.030832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.485420, 33.851173, 27.023912>,  <35.112717, 33.995949, 27.012379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485420, 33.851173, 27.023912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197830, -0.439481, 0.876196,
		-0.304455, -0.822106, -0.481091,
		0.931757, -0.361937, 0.028835,
		35.764946, 33.742592, 27.032562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013550, 33.298042, 27.205694>,  <35.112717, 33.995949, 27.012379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013550, 33.298042, 27.205694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389294, 33.405628, 27.290794>,  <35.614738, 33.470181, 27.341854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389294, 33.405628, 27.290794>,  <35.013550, 33.298042, 27.205694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389294, 33.405628, 27.290794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040037, -0.530123, 0.846975,
		0.340590, -0.804131, -0.487207,
		0.939359, 0.268965, 0.212750,
		35.671101, 33.486317, 27.354620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365044, 32.663666, 27.310946>,  <35.013550, 33.298042, 27.205694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365044, 32.663666, 27.310946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582401, 32.948441, 27.488874>,  <35.712814, 33.119305, 27.595633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.582401, 32.948441, 27.488874>,  <35.365044, 32.663666, 27.310946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582401, 32.948441, 27.488874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011913, -0.536368, 0.843900,
		0.839394, -0.453270, -0.299940,
		0.543393, 0.711938, 0.444824,
		35.745419, 33.162022, 27.622322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856014, 32.230278, 27.819990>,  <35.365044, 32.663666, 27.310946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856014, 32.230278, 27.819990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887882, 32.616192, 27.920265>,  <35.907001, 32.847740, 27.980431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887882, 32.616192, 27.920265>,  <35.856014, 32.230278, 27.819990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887882, 32.616192, 27.920265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276190, -0.263003, 0.924418,
		0.957796, -0.004409, -0.287416,
		0.079667, 0.964785, 0.250685,
		35.911781, 32.905628, 27.995470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514301, 32.304382, 28.136696>,  <35.856014, 32.230278, 27.819990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514301, 32.304382, 28.136696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269569, 32.589886, 28.273056>,  <36.122730, 32.761189, 28.354872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269569, 32.589886, 28.273056>,  <36.514301, 32.304382, 28.136696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269569, 32.589886, 28.273056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210946, -0.268137, 0.940002,
		0.762342, 0.647033, 0.013490,
		-0.611830, 0.713758, 0.340901,
		36.086021, 32.804012, 28.375326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775745, 32.653458, 28.743393>,  <36.514301, 32.304382, 28.136696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775745, 32.653458, 28.743393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391701, 32.746281, 28.805790>,  <36.161274, 32.801975, 28.843229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391701, 32.746281, 28.805790>,  <36.775745, 32.653458, 28.743393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391701, 32.746281, 28.805790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112943, -0.188505, 0.975556,
		0.255788, 0.954262, 0.154777,
		-0.960113, 0.232054, 0.155994,
		36.103668, 32.815899, 28.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939449, 33.301342, 29.057016>,  <36.775745, 32.653458, 28.743393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939449, 33.301342, 29.057016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263828, 33.260525, 29.287479>,  <37.458454, 33.236034, 29.425758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263828, 33.260525, 29.287479>,  <36.939449, 33.301342, 29.057016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263828, 33.260525, 29.287479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567780, -0.100745, -0.816992,
		0.141412, 0.989666, -0.023761,
		0.810943, -0.102041, 0.576159,
		37.507111, 33.229912, 29.460327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472958, 33.815308, 28.952782>,  <36.939449, 33.301342, 29.057016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472958, 33.815308, 28.952782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657516, 33.498386, 29.112467>,  <37.768253, 33.308235, 29.208277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657516, 33.498386, 29.112467>,  <37.472958, 33.815308, 28.952782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657516, 33.498386, 29.112467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570396, -0.079731, -0.817491,
		0.679529, 0.604897, 0.415138,
		0.461398, -0.792302, 0.399211,
		37.795937, 33.260696, 29.232229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167561, 33.900169, 28.690987>,  <37.472958, 33.815308, 28.952782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167561, 33.900169, 28.690987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201939, 33.530937, 28.840939>,  <38.222565, 33.309399, 28.930910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201939, 33.530937, 28.840939>,  <38.167561, 33.900169, 28.690987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201939, 33.530937, 28.840939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610122, -0.248703, -0.752262,
		0.787633, 0.293372, 0.541819,
		0.085940, -0.923082, 0.374879,
		38.227722, 33.254013, 28.953402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913361, 33.791943, 28.794447>,  <38.167561, 33.900169, 28.690987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913361, 33.791943, 28.794447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727951, 33.441143, 28.743811>,  <38.616707, 33.230663, 28.713428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727951, 33.441143, 28.743811>,  <38.913361, 33.791943, 28.794447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727951, 33.441143, 28.743811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588254, -0.197725, -0.784132,
		0.662651, -0.437928, 0.607547,
		-0.463520, -0.876997, -0.126590,
		38.588894, 33.178043, 28.705833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439457, 33.205433, 28.687302>,  <38.913361, 33.791943, 28.794447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439457, 33.205433, 28.687302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087196, 33.111038, 28.522980>,  <38.875839, 33.054401, 28.424387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087196, 33.111038, 28.522980>,  <39.439457, 33.205433, 28.687302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087196, 33.111038, 28.522980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441987, -0.097051, -0.891756,
		0.170573, -0.966898, 0.189771,
		-0.880654, -0.235986, -0.410802,
		38.823002, 33.040241, 28.399738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612671, 32.673515, 28.192987>,  <39.439457, 33.205433, 28.687302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612671, 32.673515, 28.192987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.248970, 32.791153, 28.075157>,  <39.030750, 32.861736, 28.004459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.248970, 32.791153, 28.075157>,  <39.612671, 32.673515, 28.192987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248970, 32.791153, 28.075157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345482, 0.138454, -0.928155,
		-0.232178, -0.945696, -0.227493,
		-0.909250, 0.294092, -0.294575,
		38.976196, 32.879379, 27.986784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605267, 32.471588, 27.536386>,  <39.612671, 32.673515, 28.192987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605267, 32.471588, 27.536386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.272392, 32.692055, 27.512115>,  <39.072666, 32.824337, 27.497553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.272392, 32.692055, 27.512115>,  <39.605267, 32.471588, 27.536386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272392, 32.692055, 27.512115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089307, 0.025228, -0.995685,
		-0.547259, -0.834013, -0.070218,
		-0.832185, 0.551169, -0.060678,
		39.022736, 32.857407, 27.493912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177811, 32.205505, 27.024559>,  <39.605267, 32.471588, 27.536386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177811, 32.205505, 27.024559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040974, 32.578144, 27.073719>,  <38.958874, 32.801727, 27.103214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.040974, 32.578144, 27.073719>,  <39.177811, 32.205505, 27.024559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040974, 32.578144, 27.073719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078850, 0.101871, -0.991668,
		-0.936353, -0.348930, 0.038607,
		-0.342090, 0.931596, 0.122900,
		38.938347, 32.857624, 27.110588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778004, 32.240017, 26.506311>,  <39.177811, 32.205505, 27.024559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778004, 32.240017, 26.506311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863285, 32.619373, 26.600210>,  <38.914452, 32.846985, 26.656549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.863285, 32.619373, 26.600210>,  <38.778004, 32.240017, 26.506311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863285, 32.619373, 26.600210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009695, 0.242314, -0.970150,
		-0.976961, 0.204559, 0.060856,
		0.213199, 0.948388, 0.234748,
		38.927246, 32.903889, 26.670635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293999, 32.733528, 26.127439>,  <38.778004, 32.240017, 26.506311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293999, 32.733528, 26.127439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601334, 32.965641, 26.235460>,  <38.785736, 33.104908, 26.300274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601334, 32.965641, 26.235460>,  <38.293999, 32.733528, 26.127439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601334, 32.965641, 26.235460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065626, 0.491131, -0.868610,
		-0.636671, 0.649664, 0.415436,
		0.768338, 0.580283, 0.270054,
		38.831837, 33.139725, 26.316477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069477, 33.421352, 26.007593>,  <38.293999, 32.733528, 26.127439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069477, 33.421352, 26.007593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466503, 33.462845, 26.033087>,  <38.704720, 33.487740, 26.048384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466503, 33.462845, 26.033087>,  <38.069477, 33.421352, 26.007593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466503, 33.462845, 26.033087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011511, 0.601116, -0.799079,
		-0.121201, 0.792401, 0.597838,
		0.992561, 0.103731, 0.063734,
		38.764271, 33.493965, 26.052208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305859, 34.199242, 25.997440>,  <38.069477, 33.421352, 26.007593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305859, 34.199242, 25.997440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603416, 33.966232, 25.866425>,  <38.781952, 33.826427, 25.787815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603416, 33.966232, 25.866425>,  <38.305859, 34.199242, 25.997440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603416, 33.966232, 25.866425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057262, 0.543873, -0.837212,
		0.665837, 0.604043, 0.437942,
		0.743896, -0.582524, -0.327542,
		38.826584, 33.791473, 25.768162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721405, 34.699181, 25.702364>,  <38.305859, 34.199242, 25.997440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721405, 34.699181, 25.702364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837315, 34.348679, 25.548370>,  <38.906860, 34.138378, 25.455975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.837315, 34.348679, 25.548370>,  <38.721405, 34.699181, 25.702364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837315, 34.348679, 25.548370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298706, 0.464950, -0.833424,
		0.909288, 0.126508, 0.396473,
		0.289775, -0.876252, -0.384984,
		38.924248, 34.085804, 25.432875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341408, 34.832874, 25.425951>,  <38.721405, 34.699181, 25.702364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341408, 34.832874, 25.425951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282768, 34.494835, 25.220301>,  <39.247585, 34.292011, 25.096910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.282768, 34.494835, 25.220301>,  <39.341408, 34.832874, 25.425951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282768, 34.494835, 25.220301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448428, 0.406491, -0.796039,
		0.881715, -0.347246, 0.319373,
		-0.146599, -0.845095, -0.514124,
		39.238789, 34.241306, 25.066063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959557, 34.676704, 25.121746>,  <39.341408, 34.832874, 25.425951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959557, 34.676704, 25.121746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695740, 34.491547, 24.884851>,  <39.537449, 34.380451, 24.742716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695740, 34.491547, 24.884851>,  <39.959557, 34.676704, 25.121746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695740, 34.491547, 24.884851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468946, 0.362371, -0.805467,
		0.587451, -0.808962, -0.021927,
		-0.659538, -0.462890, -0.592235,
		39.497879, 34.352680, 24.707180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331890, 34.575153, 24.496658>,  <39.959557, 34.676704, 25.121746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331890, 34.575153, 24.496658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949757, 34.506123, 24.400698>,  <39.720474, 34.464706, 24.343122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.949757, 34.506123, 24.400698>,  <40.331890, 34.575153, 24.496658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949757, 34.506123, 24.400698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172307, 0.334242, -0.926603,
		0.240089, -0.926553, -0.289579,
		-0.955336, -0.172570, -0.239899,
		39.663155, 34.454350, 24.328728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326103, 34.239510, 23.867516>,  <40.331890, 34.575153, 24.496658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326103, 34.239510, 23.867516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964863, 34.404987, 23.913574>,  <39.748116, 34.504272, 23.941210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.964863, 34.404987, 23.913574>,  <40.326103, 34.239510, 23.867516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964863, 34.404987, 23.913574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008025, 0.284362, -0.958683,
		-0.429344, -0.864868, -0.260129,
		-0.903106, 0.413692, 0.115149,
		39.693932, 34.529095, 23.948118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919525, 34.093670, 23.256092>,  <40.326103, 34.239510, 23.867516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919525, 34.093670, 23.256092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754925, 34.417179, 23.424166>,  <39.656162, 34.611282, 23.525009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754925, 34.417179, 23.424166>,  <39.919525, 34.093670, 23.256092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754925, 34.417179, 23.424166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016095, 0.467402, -0.883898,
		-0.911265, -0.356966, -0.205356,
		-0.411505, 0.808771, 0.420182,
		39.631474, 34.659809, 23.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.476200, 34.435463, 22.715591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515694, 34.696579, 23.016022>,  <39.539391, 34.853249, 23.196280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515694, 34.696579, 23.016022>,  <39.476200, 34.435463, 22.715591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515694, 34.696579, 23.016022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336404, 0.688432, -0.642568,
		-0.936528, 0.316107, -0.151631,
		0.098733, 0.652792, 0.751076,
		39.545315, 34.892418, 23.241344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067127, 35.023510, 22.572992>,  <39.476200, 34.435463, 22.715591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067127, 35.023510, 22.572992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334751, 35.172604, 22.830185>,  <39.495327, 35.262058, 22.984501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334751, 35.172604, 22.830185>,  <39.067127, 35.023510, 22.572992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334751, 35.172604, 22.830185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196757, 0.745442, -0.636869,
		-0.716687, 0.552617, 0.425411,
		0.669064, 0.372734, 0.642980,
		39.535469, 35.284424, 23.023079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952583, 35.781818, 22.619600>,  <39.067127, 35.023510, 22.572992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952583, 35.781818, 22.619600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326576, 35.697193, 22.733471>,  <39.550972, 35.646420, 22.801794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326576, 35.697193, 22.733471>,  <38.952583, 35.781818, 22.619600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326576, 35.697193, 22.733471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349405, 0.687336, -0.636777,
		-0.060952, 0.694846, 0.716571,
		0.934987, -0.211561, 0.284677,
		39.607071, 35.633724, 22.818874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237949, 36.422676, 22.696894>,  <38.952583, 35.781818, 22.619600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237949, 36.422676, 22.696894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570583, 36.202171, 22.669823>,  <39.770164, 36.069870, 22.653580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570583, 36.202171, 22.669823>,  <39.237949, 36.422676, 22.696894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570583, 36.202171, 22.669823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383647, 0.658256, -0.647699,
		0.401599, 0.512652, 0.758884,
		0.831585, -0.551259, -0.067678,
		39.820061, 36.036793, 22.649519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776711, 36.942604, 22.611198>,  <39.237949, 36.422676, 22.696894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776711, 36.942604, 22.611198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891655, 36.582500, 22.480381>,  <39.960621, 36.366440, 22.401890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891655, 36.582500, 22.480381>,  <39.776711, 36.942604, 22.611198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891655, 36.582500, 22.480381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476332, 0.430547, -0.766640,
		0.830983, 0.064517, 0.552543,
		0.287357, -0.900259, -0.327046,
		39.977863, 36.312424, 22.382267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440193, 37.117874, 22.262920>,  <39.776711, 36.942604, 22.611198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440193, 37.117874, 22.262920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.355625, 36.745102, 22.145067>,  <40.304886, 36.521439, 22.074354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.355625, 36.745102, 22.145067>,  <40.440193, 37.117874, 22.262920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355625, 36.745102, 22.145067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432881, 0.180992, -0.883094,
		0.876309, -0.314242, 0.365150,
		-0.211417, -0.931930, -0.294634,
		40.292202, 36.465523, 22.056677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076904, 36.778515, 21.942577>,  <40.440193, 37.117874, 22.262920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076904, 36.778515, 21.942577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768673, 36.569588, 21.796486>,  <40.583733, 36.444233, 21.708832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.768673, 36.569588, 21.796486>,  <41.076904, 36.778515, 21.942577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768673, 36.569588, 21.796486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439150, -0.019825, -0.898195,
		0.461900, -0.852522, 0.244652,
		-0.770581, -0.522315, -0.365228,
		40.537498, 36.412891, 21.686918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345009, 36.557129, 21.380825>,  <41.076904, 36.778515, 21.942577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345009, 36.557129, 21.380825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.958267, 36.501911, 21.294903>,  <40.726223, 36.468781, 21.243349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.958267, 36.501911, 21.294903>,  <41.345009, 36.557129, 21.380825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958267, 36.501911, 21.294903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224756, -0.060895, -0.972510,
		0.121169, -0.988552, 0.089903,
		-0.966852, -0.138044, -0.214804,
		40.668213, 36.460499, 21.230461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279415, 35.903343, 21.047606>,  <41.345009, 36.557129, 21.380825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279415, 35.903343, 21.047606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003819, 36.174923, 20.946157>,  <40.838463, 36.337872, 20.885288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003819, 36.174923, 20.946157>,  <41.279415, 35.903343, 21.047606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003819, 36.174923, 20.946157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453901, 0.131400, -0.881310,
		-0.565037, -0.722333, -0.398709,
		-0.688990, 0.678947, -0.253622,
		40.797123, 36.378609, 20.870071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184860, 35.814747, 20.318726>,  <41.279415, 35.903343, 21.047606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184860, 35.814747, 20.318726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062054, 36.191929, 20.370213>,  <40.988369, 36.418240, 20.401106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.062054, 36.191929, 20.370213>,  <41.184860, 35.814747, 20.318726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062054, 36.191929, 20.370213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504198, 0.275869, -0.818340,
		-0.807171, -0.186344, -0.560134,
		-0.307016, 0.942959, 0.128719,
		40.969948, 36.474815, 20.408829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123730, 36.042828, 19.605675>,  <41.184860, 35.814747, 20.318726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123730, 36.042828, 19.605675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.127060, 36.365185, 19.842474>,  <41.129059, 36.558601, 19.984554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.127060, 36.365185, 19.842474>,  <41.123730, 36.042828, 19.605675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127060, 36.365185, 19.842474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355444, 0.550972, -0.755043,
		-0.934660, 0.216708, -0.281864,
		0.008325, 0.805896, 0.591999,
		41.129559, 36.606953, 20.020073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876080, 36.574242, 19.152597>,  <41.123730, 36.042828, 19.605675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876080, 36.574242, 19.152597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064381, 36.772812, 19.444338>,  <41.177361, 36.891953, 19.619383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.064381, 36.772812, 19.444338>,  <40.876080, 36.574242, 19.152597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064381, 36.772812, 19.444338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507875, 0.523498, -0.684114,
		-0.721424, 0.692470, -0.005682,
		0.470754, 0.496422, 0.729353,
		41.205608, 36.921738, 19.663143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873455, 37.181370, 18.860472>,  <40.876080, 36.574242, 19.152597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873455, 37.181370, 18.860472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148621, 37.235363, 19.145723>,  <41.313721, 37.267757, 19.316874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148621, 37.235363, 19.145723>,  <40.873455, 37.181370, 18.860472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148621, 37.235363, 19.145723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433755, 0.711326, -0.553057,
		-0.581918, 0.689780, 0.430785,
		0.687916, 0.134979, 0.713129,
		41.354996, 37.275856, 19.359661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882153, 37.886581, 18.989590>,  <40.873455, 37.181370, 18.860472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882153, 37.886581, 18.989590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237598, 37.734108, 19.091618>,  <41.450867, 37.642624, 19.152836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237598, 37.734108, 19.091618>,  <40.882153, 37.886581, 18.989590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237598, 37.734108, 19.091618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458183, 0.762899, -0.456128,
		-0.020727, 0.522192, 0.852576,
		0.888616, -0.381182, 0.255072,
		41.504185, 37.619755, 19.168139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224159, 38.472576, 19.266253>,  <40.882153, 37.886581, 18.989590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224159, 38.472576, 19.266253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503635, 38.206921, 19.159857>,  <41.671322, 38.047527, 19.096020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503635, 38.206921, 19.159857>,  <41.224159, 38.472576, 19.266253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503635, 38.206921, 19.159857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587737, 0.744834, -0.315892,
		0.407914, 0.064379, 0.910748,
		0.698693, -0.664137, -0.265990,
		41.713242, 38.007679, 19.080059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815243, 38.888607, 19.354773>,  <41.224159, 38.472576, 19.266253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815243, 38.888607, 19.354773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.914135, 38.575478, 19.126364>,  <41.973473, 38.387600, 18.989319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.914135, 38.575478, 19.126364>,  <41.815243, 38.888607, 19.354773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914135, 38.575478, 19.126364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531776, 0.602257, -0.595400,
		0.809994, -0.156453, 0.565184,
		0.247234, -0.782821, -0.571022,
		41.988304, 38.340630, 18.955057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494175, 39.078587, 19.131294>,  <41.815243, 38.888607, 19.354773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494175, 39.078587, 19.131294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405640, 38.782406, 18.877447>,  <42.352520, 38.604698, 18.725140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.405640, 38.782406, 18.877447>,  <42.494175, 39.078587, 19.131294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405640, 38.782406, 18.877447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383719, 0.532137, -0.754712,
		0.896532, -0.410558, 0.166347,
		-0.221334, -0.740454, -0.634617,
		42.339241, 38.560268, 18.687061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105885, 38.914341, 18.813776>,  <42.494175, 39.078587, 19.131294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105885, 38.914341, 18.813776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.821796, 38.796005, 18.558256>,  <42.651344, 38.725002, 18.404945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.821796, 38.796005, 18.558256>,  <43.105885, 38.914341, 18.813776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821796, 38.796005, 18.558256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463880, 0.485882, -0.740766,
		0.529530, -0.822434, -0.207849,
		-0.710221, -0.295841, -0.638799,
		42.608730, 38.707253, 18.366617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520596, 38.899715, 18.168255>,  <43.105885, 38.914341, 18.813776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520596, 38.899715, 18.168255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.128201, 38.889961, 18.091246>,  <42.892761, 38.884109, 18.045040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.128201, 38.889961, 18.091246>,  <43.520596, 38.899715, 18.168255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128201, 38.889961, 18.091246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167210, 0.397285, -0.902333,
		0.098487, -0.917371, -0.385656,
		-0.980990, -0.024383, -0.192522,
		42.833904, 38.882645, 18.033489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393494, 38.612343, 17.499043>,  <43.520596, 38.899715, 18.168255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393494, 38.612343, 17.499043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.067265, 38.828964, 17.580584>,  <42.871525, 38.958939, 17.629509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.067265, 38.828964, 17.580584>,  <43.393494, 38.612343, 17.499043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067265, 38.828964, 17.580584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008784, 0.363835, -0.931422,
		-0.578585, -0.757854, -0.301492,
		-0.815575, 0.541555, 0.203853,
		42.822594, 38.991432, 17.641739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055260, 38.667904, 16.823742>,  <43.393494, 38.612343, 17.499043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055260, 38.667904, 16.823742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.940754, 38.967480, 17.062786>,  <42.872051, 39.147224, 17.206213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.940754, 38.967480, 17.062786>,  <43.055260, 38.667904, 16.823742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940754, 38.967480, 17.062786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022772, 0.618217, -0.785678,
		-0.957880, -0.238522, -0.159919,
		-0.286266, 0.748943, 0.597609,
		42.854874, 39.192162, 17.242069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731579, 38.993389, 16.327089>,  <43.055260, 38.667904, 16.823742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731579, 38.993389, 16.327089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.740429, 39.238697, 16.642916>,  <42.745739, 39.385880, 16.832411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.740429, 39.238697, 16.642916>,  <42.731579, 38.993389, 16.327089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740429, 39.238697, 16.642916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185587, 0.773513, -0.605999,
		-0.982379, 0.159939, -0.096702,
		0.022122, 0.613267, 0.789566,
		42.747066, 39.422676, 16.879786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410378, 39.460670, 15.825183>,  <42.731579, 38.993389, 16.327089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410378, 39.460670, 15.825183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.613815, 39.791721, 15.920139>,  <42.735878, 39.990353, 15.977113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.613815, 39.791721, 15.920139>,  <42.410378, 39.460670, 15.825183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613815, 39.791721, 15.920139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444467, -0.016235, -0.895648,
		-0.737412, 0.561038, -0.376111,
		0.508599, 0.827631, 0.237391,
		42.766396, 40.040012, 15.991357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785786, 39.324883, 15.320119>,  <42.410378, 39.460670, 15.825183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785786, 39.324883, 15.320119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582802, 39.666004, 15.270769>,  <41.461014, 39.870678, 15.241159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.582802, 39.666004, 15.270769>,  <41.785786, 39.324883, 15.320119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582802, 39.666004, 15.270769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541530, -0.204259, 0.815490,
		0.670249, 0.480635, 0.565469,
		-0.507456, 0.852800, -0.123374,
		41.430565, 39.921844, 15.233757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571442, 39.431141, 15.915914>,  <41.785786, 39.324883, 15.320119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571442, 39.431141, 15.915914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.311874, 39.663521, 15.719381>,  <41.156136, 39.802948, 15.601462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.311874, 39.663521, 15.719381>,  <41.571442, 39.431141, 15.915914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311874, 39.663521, 15.719381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711081, -0.233321, 0.663269,
		0.270689, 0.779781, 0.564508,
		-0.648916, 0.580950, -0.491330,
		41.117199, 39.837807, 15.571982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194248, 39.795353, 16.364491>,  <41.571442, 39.431141, 15.915914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194248, 39.795353, 16.364491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.953865, 39.784679, 16.044956>,  <40.809635, 39.778275, 15.853236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.953865, 39.784679, 16.044956>,  <41.194248, 39.795353, 16.364491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953865, 39.784679, 16.044956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784065, -0.174396, 0.595675,
		-0.155208, 0.984314, 0.083884,
		-0.600960, -0.026683, -0.798834,
		40.773579, 39.776676, 15.805306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744804, 40.336170, 16.518452>,  <41.194248, 39.795353, 16.364491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744804, 40.336170, 16.518452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591816, 40.076679, 16.255281>,  <40.500023, 39.920986, 16.097380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591816, 40.076679, 16.255281>,  <40.744804, 40.336170, 16.518452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591816, 40.076679, 16.255281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769502, -0.170510, 0.615462,
		-0.511450, 0.741673, -0.433981,
		-0.382474, -0.648727, -0.657926,
		40.477074, 39.882061, 16.057903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013252, 40.526279, 16.415905>,  <40.744804, 40.336170, 16.518452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013252, 40.526279, 16.415905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058517, 40.145088, 16.303463>,  <40.085678, 39.916374, 16.235998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058517, 40.145088, 16.303463>,  <40.013252, 40.526279, 16.415905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058517, 40.145088, 16.303463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834502, -0.244718, 0.493680,
		-0.539260, 0.178718, -0.822957,
		0.113163, -0.952981, -0.281107,
		40.092464, 39.859192, 16.219131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375816, 40.305264, 16.420359>,  <40.013252, 40.526279, 16.415905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375816, 40.305264, 16.420359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582733, 39.964520, 16.387506>,  <39.706882, 39.760075, 16.367796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.582733, 39.964520, 16.387506>,  <39.375816, 40.305264, 16.420359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582733, 39.964520, 16.387506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586314, -0.422664, 0.691080,
		-0.623417, -0.309334, -0.718097,
		0.517289, -0.851861, -0.082129,
		39.737919, 39.708961, 16.362867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879086, 39.762867, 16.433426>,  <39.375816, 40.305264, 16.420359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879086, 39.762867, 16.433426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215298, 39.566895, 16.525925>,  <39.417027, 39.449310, 16.581425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215298, 39.566895, 16.525925>,  <38.879086, 39.762867, 16.433426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215298, 39.566895, 16.525925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457424, -0.413058, 0.787494,
		-0.290298, -0.767692, -0.571294,
		0.840530, -0.489932, 0.231250,
		39.467457, 39.419914, 16.595299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706688, 39.090263, 16.559586>,  <38.879086, 39.762867, 16.433426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706688, 39.090263, 16.559586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053875, 39.167694, 16.742521>,  <39.262188, 39.214153, 16.852283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053875, 39.167694, 16.742521>,  <38.706688, 39.090263, 16.559586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053875, 39.167694, 16.742521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379251, -0.336185, 0.862060,
		0.320629, -0.921687, -0.218382,
		0.867966, 0.193579, 0.457342,
		39.314266, 39.225769, 16.879725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923351, 38.381943, 16.819248>,  <38.706688, 39.090263, 16.559586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923351, 38.381943, 16.819248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091522, 38.658283, 17.054522>,  <39.192425, 38.824089, 17.195686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091522, 38.658283, 17.054522>,  <38.923351, 38.381943, 16.819248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091522, 38.658283, 17.054522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082011, -0.616671, 0.782937,
		0.903611, -0.377407, -0.202609,
		0.420429, 0.690855, 0.588182,
		39.217651, 38.865540, 17.230976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476280, 38.060810, 17.140923>,  <38.923351, 38.381943, 16.819248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476280, 38.060810, 17.140923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398689, 38.378471, 17.371296>,  <39.352135, 38.569069, 17.509520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398689, 38.378471, 17.371296>,  <39.476280, 38.060810, 17.140923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398689, 38.378471, 17.371296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114828, -0.601429, 0.790632,
		0.974262, 0.087232, 0.207854,
		-0.193978, 0.794150, 0.575933,
		39.340496, 38.616714, 17.544075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919342, 38.020340, 17.709789>,  <39.476280, 38.060810, 17.140923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919342, 38.020340, 17.709789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600716, 38.221027, 17.844707>,  <39.409542, 38.341438, 17.925659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.600716, 38.221027, 17.844707>,  <39.919342, 38.020340, 17.709789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600716, 38.221027, 17.844707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003943, -0.553602, 0.832772,
		0.604542, 0.664686, 0.439001,
		-0.796564, 0.501714, 0.337296,
		39.361748, 38.371540, 17.945896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080040, 38.196533, 18.394970>,  <39.919342, 38.020340, 17.709789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080040, 38.196533, 18.394970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.687576, 38.268013, 18.365576>,  <39.452099, 38.310902, 18.347939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.687576, 38.268013, 18.365576>,  <40.080040, 38.196533, 18.394970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687576, 38.268013, 18.365576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155700, -0.506028, 0.848347,
		0.114409, 0.843803, 0.524316,
		-0.981156, 0.178695, -0.073486,
		39.393230, 38.321621, 18.343531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813023, 38.340256, 19.129414>,  <40.080040, 38.196533, 18.394970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813023, 38.340256, 19.129414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473347, 38.270924, 18.929878>,  <39.269543, 38.229324, 18.810158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473347, 38.270924, 18.929878>,  <39.813023, 38.340256, 19.129414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473347, 38.270924, 18.929878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356416, -0.508907, 0.783569,
		-0.389679, 0.843190, 0.370379,
		-0.849187, -0.173331, -0.498837,
		39.218590, 38.218925, 18.780228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217323, 38.534908, 19.596342>,  <39.813023, 38.340256, 19.129414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217323, 38.534908, 19.596342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068829, 38.270443, 19.335560>,  <38.979733, 38.111763, 19.179090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068829, 38.270443, 19.335560>,  <39.217323, 38.534908, 19.596342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068829, 38.270443, 19.335560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399339, -0.520197, 0.754933,
		-0.838280, 0.540610, -0.070913,
		-0.371235, -0.661163, -0.651957,
		38.957458, 38.072094, 19.139973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552410, 38.386631, 19.870737>,  <39.217323, 38.534908, 19.596342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552410, 38.386631, 19.870737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596031, 38.087925, 19.608301>,  <38.622204, 37.908703, 19.450840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596031, 38.087925, 19.608301>,  <38.552410, 38.386631, 19.870737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596031, 38.087925, 19.608301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509458, -0.608739, 0.608185,
		-0.853557, 0.267923, -0.446831,
		0.109057, -0.746763, -0.656089,
		38.628750, 37.863895, 19.411474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900387, 38.187702, 19.802067>,  <38.552410, 38.386631, 19.870737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900387, 38.187702, 19.802067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143364, 37.890190, 19.690496>,  <38.289150, 37.711681, 19.623554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.143364, 37.890190, 19.690496>,  <37.900387, 38.187702, 19.802067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143364, 37.890190, 19.690496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507196, -0.633393, 0.584436,
		-0.611362, -0.213543, -0.761995,
		0.607445, -0.743782, -0.278924,
		38.325596, 37.667057, 19.606819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470585, 37.626926, 19.782866>,  <37.900387, 38.187702, 19.802067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470585, 37.626926, 19.782866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827740, 37.448456, 19.807121>,  <38.042034, 37.341373, 19.821674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827740, 37.448456, 19.807121>,  <37.470585, 37.626926, 19.782866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827740, 37.448456, 19.807121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376119, -0.665005, 0.645215,
		-0.247551, -0.598914, -0.761591,
		0.892890, -0.446172, 0.060640,
		38.095608, 37.314606, 19.825314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407764, 36.854229, 19.687254>,  <37.470585, 37.626926, 19.782866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407764, 36.854229, 19.687254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742458, 36.920883, 19.895908>,  <37.943275, 36.960876, 20.021101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742458, 36.920883, 19.895908>,  <37.407764, 36.854229, 19.687254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742458, 36.920883, 19.895908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197653, -0.796462, 0.571473,
		0.510687, -0.581276, -0.633495,
		0.836738, 0.166631, 0.521634,
		37.993481, 36.970871, 20.052399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782173, 36.245609, 19.683849>,  <37.407764, 36.854229, 19.687254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782173, 36.245609, 19.683849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917133, 36.443768, 20.004034>,  <37.998108, 36.562664, 20.196146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917133, 36.443768, 20.004034>,  <37.782173, 36.245609, 19.683849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917133, 36.443768, 20.004034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321295, -0.738662, 0.592578,
		0.884834, -0.457120, -0.090055,
		0.337400, 0.495399, 0.800463,
		38.018353, 36.592388, 20.244173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006035, 35.621677, 20.264788>,  <37.782173, 36.245609, 19.683849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006035, 35.621677, 20.264788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986217, 35.950668, 20.491442>,  <37.974327, 36.148064, 20.627434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986217, 35.950668, 20.491442>,  <38.006035, 35.621677, 20.264788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986217, 35.950668, 20.491442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242089, -0.560300, 0.792121,
		0.968988, -0.097932, 0.226872,
		-0.049542, 0.822480, 0.566633,
		37.971355, 36.197411, 20.661432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265869, 35.443333, 20.914883>,  <38.006035, 35.621677, 20.264788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265869, 35.443333, 20.914883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062370, 35.782459, 20.974739>,  <37.940273, 35.985935, 21.010653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.062370, 35.782459, 20.974739>,  <38.265869, 35.443333, 20.914883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062370, 35.782459, 20.974739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366651, -0.370633, 0.853345,
		0.778939, 0.379268, 0.499409,
		-0.508744, 0.847813, 0.149642,
		37.909748, 36.036804, 21.019632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.924835, 33.190434, 25.442730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575737, 33.370434, 25.518423>,  <39.366280, 33.478436, 25.563839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575737, 33.370434, 25.518423>,  <39.924835, 33.190434, 25.442730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575737, 33.370434, 25.518423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016047, -0.413869, 0.910195,
		0.487910, 0.791332, 0.368424,
		-0.872746, 0.450005, 0.189232,
		39.313911, 33.505436, 25.575193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048412, 33.526878, 26.152784>,  <39.924835, 33.190434, 25.442730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048412, 33.526878, 26.152784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649879, 33.531467, 26.118872>,  <39.410759, 33.534222, 26.098524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649879, 33.531467, 26.118872>,  <40.048412, 33.526878, 26.152784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649879, 33.531467, 26.118872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085339, -0.203815, 0.975283,
		-0.006088, 0.978942, 0.204047,
		-0.996333, 0.011475, -0.084783,
		39.350979, 33.534908, 26.093437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744114, 33.928722, 26.739853>,  <40.048412, 33.526878, 26.152784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744114, 33.928722, 26.739853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458172, 33.686600, 26.599800>,  <39.286606, 33.541328, 26.515768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.458172, 33.686600, 26.599800>,  <39.744114, 33.928722, 26.739853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458172, 33.686600, 26.599800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259309, -0.235545, 0.936631,
		-0.649417, 0.760347, 0.011420,
		-0.714854, -0.605302, -0.350132,
		39.243717, 33.505009, 26.494761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256081, 34.122864, 27.081478>,  <39.744114, 33.928722, 26.739853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256081, 34.122864, 27.081478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.166199, 33.754826, 26.953146>,  <39.112270, 33.534004, 26.876146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.166199, 33.754826, 26.953146>,  <39.256081, 34.122864, 27.081478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166199, 33.754826, 26.953146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283926, -0.253142, 0.924827,
		-0.932145, 0.298903, -0.204357,
		-0.224702, -0.920096, -0.320832,
		39.098789, 33.478798, 26.856897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589310, 34.055344, 27.282501>,  <39.256081, 34.122864, 27.081478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589310, 34.055344, 27.282501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696365, 33.672043, 27.242249>,  <38.760601, 33.442062, 27.218098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.696365, 33.672043, 27.242249>,  <38.589310, 34.055344, 27.282501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696365, 33.672043, 27.242249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171360, -0.150115, 0.973705,
		-0.948158, -0.243362, -0.204382,
		0.267644, -0.958249, -0.100630,
		38.776657, 33.384567, 27.212059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097755, 33.740894, 27.520603>,  <38.589310, 34.055344, 27.282501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097755, 33.740894, 27.520603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374939, 33.452507, 27.519373>,  <38.541248, 33.279472, 27.518635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.374939, 33.452507, 27.519373>,  <38.097755, 33.740894, 27.520603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374939, 33.452507, 27.519373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370757, -0.360004, 0.856117,
		-0.618345, -0.592112, -0.516772,
		0.692957, -0.720972, -0.003077,
		38.582825, 33.236214, 27.518450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728039, 32.989223, 27.470682>,  <38.097755, 33.740894, 27.520603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728039, 32.989223, 27.470682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090542, 32.978947, 27.639462>,  <38.308044, 32.972778, 27.740728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.090542, 32.978947, 27.639462>,  <37.728039, 32.989223, 27.470682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090542, 32.978947, 27.639462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413852, -0.257432, 0.873187,
		0.086188, -0.965955, -0.243933,
		0.906255, -0.025694, 0.421950,
		38.362419, 32.971237, 27.766047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770470, 32.406361, 27.901192>,  <37.728039, 32.989223, 27.470682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770470, 32.406361, 27.901192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069324, 32.626614, 28.050108>,  <38.248638, 32.758766, 28.139458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069324, 32.626614, 28.050108>,  <37.770470, 32.406361, 27.901192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069324, 32.626614, 28.050108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290783, -0.232891, 0.928012,
		0.597693, -0.801605, -0.013887,
		0.747133, 0.550629, 0.372290,
		38.293465, 32.791801, 28.161795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054916, 32.032272, 28.454018>,  <37.770470, 32.406361, 27.901192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054916, 32.032272, 28.454018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.175808, 32.403423, 28.541388>,  <38.248341, 32.626114, 28.593809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.175808, 32.403423, 28.541388>,  <38.054916, 32.032272, 28.454018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175808, 32.403423, 28.541388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339902, -0.109177, 0.934102,
		0.890576, -0.356553, 0.282390,
		0.302226, 0.927874, 0.218423,
		38.266476, 32.681786, 28.606915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240669, 31.988457, 29.145494>,  <38.054916, 32.032272, 28.454018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240669, 31.988457, 29.145494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244072, 32.385578, 29.097721>,  <38.246113, 32.623852, 29.069057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244072, 32.385578, 29.097721>,  <38.240669, 31.988457, 29.145494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244072, 32.385578, 29.097721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182519, 0.118972, 0.975978,
		0.983165, 0.013492, 0.182218,
		0.008511, 0.992806, -0.119432,
		38.246624, 32.683418, 29.061892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666168, 32.418751, 29.755932>,  <38.240669, 31.988457, 29.145494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666168, 32.418751, 29.755932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379616, 32.648560, 29.597576>,  <38.207684, 32.786446, 29.502562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379616, 32.648560, 29.597576>,  <38.666168, 32.418751, 29.755932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379616, 32.648560, 29.597576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352746, 0.191319, 0.915951,
		0.601973, 0.795817, 0.065603,
		-0.716379, 0.574519, -0.395891,
		38.164703, 32.820915, 29.478809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445095, 32.888088, 30.287634>,  <38.666168, 32.418751, 29.755932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445095, 32.888088, 30.287634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144695, 32.986717, 30.042620>,  <37.964455, 33.045895, 29.895611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.144695, 32.986717, 30.042620>,  <38.445095, 32.888088, 30.287634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144695, 32.986717, 30.042620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515456, 0.360847, 0.777235,
		0.412680, 0.899438, -0.143897,
		-0.751000, 0.246576, -0.612536,
		37.919395, 33.060692, 29.858858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238514, 33.632988, 30.290897>,  <38.445095, 32.888088, 30.287634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238514, 33.632988, 30.290897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.911297, 33.415127, 30.216970>,  <37.714966, 33.284409, 30.172615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.911297, 33.415127, 30.216970>,  <38.238514, 33.632988, 30.290897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911297, 33.415127, 30.216970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402408, 0.312401, 0.860508,
		-0.410946, 0.778302, -0.474731,
		-0.818041, -0.544658, -0.184815,
		37.665886, 33.251728, 30.161526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656624, 34.176319, 30.329935>,  <38.238514, 33.632988, 30.290897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656624, 34.176319, 30.329935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494812, 33.810741, 30.342947>,  <37.397724, 33.591393, 30.350754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494812, 33.810741, 30.342947>,  <37.656624, 34.176319, 30.329935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494812, 33.810741, 30.342947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297405, 0.165107, 0.940367,
		-0.864818, 0.370727, -0.338602,
		-0.404525, -0.913948, 0.032531,
		37.373455, 33.536556, 30.352707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705738, 34.685093, 29.792072>,  <37.656624, 34.176319, 30.329935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705738, 34.685093, 29.792072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879875, 34.781376, 30.139069>,  <37.984356, 34.839146, 30.347265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879875, 34.781376, 30.139069>,  <37.705738, 34.685093, 29.792072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879875, 34.781376, 30.139069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216244, 0.963341, -0.158787,
		-0.873909, -0.118463, 0.471433,
		0.435340, 0.240710, 0.867490,
		38.010479, 34.853588, 30.399315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215839, 35.099297, 30.179703>,  <37.705738, 34.685093, 29.792072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215839, 35.099297, 30.179703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578457, 35.181496, 30.327188>,  <37.796028, 35.230816, 30.415680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578457, 35.181496, 30.327188>,  <37.215839, 35.099297, 30.179703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578457, 35.181496, 30.327188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175891, 0.977950, -0.112589,
		-0.383720, 0.037214, 0.922699,
		0.906544, 0.205497, 0.368713,
		37.850418, 35.243145, 30.437803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129150, 35.770649, 30.668175>,  <37.215839, 35.099297, 30.179703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129150, 35.770649, 30.668175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503513, 35.732639, 30.532501>,  <37.728130, 35.709835, 30.451097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503513, 35.732639, 30.532501>,  <37.129150, 35.770649, 30.668175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503513, 35.732639, 30.532501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060390, 0.991954, -0.111267,
		0.347029, 0.083652, 0.934116,
		0.935908, -0.095024, -0.339186,
		37.784286, 35.704132, 30.430746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471050, 36.306667, 30.981920>,  <37.129150, 35.770649, 30.668175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471050, 36.306667, 30.981920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692532, 36.212341, 30.662468>,  <37.825420, 36.155746, 30.470797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692532, 36.212341, 30.662468>,  <37.471050, 36.306667, 30.981920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692532, 36.212341, 30.662468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112701, 0.929018, -0.352453,
		0.825055, 0.285159, 0.487821,
		0.553700, -0.235815, -0.798628,
		37.858643, 36.141598, 30.422880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862736, 36.806812, 30.934410>,  <37.471050, 36.306667, 30.981920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862736, 36.806812, 30.934410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891655, 36.656960, 30.564669>,  <37.909008, 36.567047, 30.342825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891655, 36.656960, 30.564669>,  <37.862736, 36.806812, 30.934410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891655, 36.656960, 30.564669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055197, 0.926859, -0.371328,
		0.995854, -0.024175, 0.087689,
		0.072298, -0.374629, -0.924352,
		37.913345, 36.544571, 30.287363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250565, 37.355579, 30.591221>,  <37.862736, 36.806812, 30.934410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250565, 37.355579, 30.591221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118759, 37.143181, 30.278950>,  <38.039677, 37.015739, 30.091587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118759, 37.143181, 30.278950>,  <38.250565, 37.355579, 30.591221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118759, 37.143181, 30.278950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098362, 0.803051, -0.587736,
		0.939012, -0.270457, -0.212388,
		-0.329516, -0.531001, -0.780677,
		38.019905, 36.983879, 30.044746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556583, 37.471058, 30.019272>,  <38.250565, 37.355579, 30.591221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556583, 37.471058, 30.019272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.248581, 37.300056, 29.829815>,  <38.063782, 37.197456, 29.716141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.248581, 37.300056, 29.829815>,  <38.556583, 37.471058, 30.019272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248581, 37.300056, 29.829815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172611, 0.575086, -0.799676,
		0.614251, -0.697508, -0.369025,
		-0.770001, -0.427503, -0.473645,
		38.017582, 37.171806, 29.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848686, 37.350090, 29.335457>,  <38.556583, 37.471058, 30.019272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848686, 37.350090, 29.335457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449310, 37.351334, 29.313143>,  <38.209686, 37.352077, 29.299753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449310, 37.351334, 29.313143>,  <38.848686, 37.350090, 29.335457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449310, 37.351334, 29.313143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048571, 0.541767, -0.839124,
		0.027618, -0.840523, -0.541071,
		-0.998438, 0.003106, -0.055787,
		38.149780, 37.352264, 29.296406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726139, 36.937153, 28.753677>,  <38.848686, 37.350090, 29.335457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726139, 36.937153, 28.753677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.412804, 37.176666, 28.820410>,  <38.224800, 37.320374, 28.860449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.412804, 37.176666, 28.820410>,  <38.726139, 36.937153, 28.753677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412804, 37.176666, 28.820410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026426, 0.300235, -0.953499,
		-0.621029, -0.742507, -0.251010,
		-0.783342, 0.598784, 0.166833,
		38.177799, 37.356300, 28.870459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406483, 36.859612, 28.212036>,  <38.726139, 36.937153, 28.753677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406483, 36.859612, 28.212036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243057, 37.189976, 28.367447>,  <38.145000, 37.388195, 28.460693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243057, 37.189976, 28.367447>,  <38.406483, 36.859612, 28.212036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243057, 37.189976, 28.367447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143077, 0.362460, -0.920951,
		-0.901446, -0.431856, -0.029919,
		-0.408563, 0.825907, 0.388527,
		38.120487, 37.437748, 28.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794422, 36.930267, 27.816183>,  <38.406483, 36.859612, 28.212036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794422, 36.930267, 27.816183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.882278, 37.289989, 27.967447>,  <37.934990, 37.505821, 28.058207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.882278, 37.289989, 27.967447>,  <37.794422, 36.930267, 27.816183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882278, 37.289989, 27.967447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009113, 0.385719, -0.922571,
		-0.975539, 0.206079, 0.076523,
		0.219638, 0.899307, 0.378162,
		37.948170, 37.559780, 28.080896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405731, 37.296719, 27.511896>,  <37.794422, 36.930267, 27.816183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405731, 37.296719, 27.511896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675613, 37.560364, 27.644768>,  <37.837543, 37.718552, 27.724491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675613, 37.560364, 27.644768>,  <37.405731, 37.296719, 27.511896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675613, 37.560364, 27.644768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100120, 0.527627, -0.843555,
		-0.731261, 0.535897, 0.421985,
		0.674709, 0.659108, 0.332180,
		37.878025, 37.758095, 27.744421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226063, 37.920654, 27.257439>,  <37.405731, 37.296719, 27.511896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226063, 37.920654, 27.257439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607952, 38.004963, 27.341425>,  <37.837086, 38.055550, 27.391817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607952, 38.004963, 27.341425>,  <37.226063, 37.920654, 27.257439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607952, 38.004963, 27.341425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075443, 0.511161, -0.856167,
		-0.287780, 0.833241, 0.472115,
		0.954720, 0.210770, 0.209964,
		37.894367, 38.068195, 27.404413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316841, 38.589394, 26.970980>,  <37.226063, 37.920654, 27.257439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316841, 38.589394, 26.970980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684696, 38.434399, 26.996637>,  <37.905411, 38.341404, 27.012032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684696, 38.434399, 26.996637>,  <37.316841, 38.589394, 26.970980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684696, 38.434399, 26.996637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238262, 0.420564, -0.875418,
		0.312233, 0.820355, 0.479091,
		0.919642, -0.387483, 0.064145,
		37.960590, 38.318153, 27.015881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010284, 39.226887, 27.498352>,  <37.316841, 38.589394, 26.970980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010284, 39.226887, 27.498352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.730560, 39.499355, 27.411661>,  <36.562725, 39.662838, 27.359646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.730560, 39.499355, 27.411661>,  <37.010284, 39.226887, 27.498352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730560, 39.499355, 27.411661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659776, -0.498414, 0.562387,
		0.275062, 0.536275, 0.797966,
		-0.699312, 0.681170, -0.216727,
		36.520767, 39.703705, 27.346643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708172, 39.356518, 28.080999>,  <37.010284, 39.226887, 27.498352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708172, 39.356518, 28.080999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.412731, 39.484596, 27.843702>,  <36.235466, 39.561443, 27.701324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.412731, 39.484596, 27.843702>,  <36.708172, 39.356518, 28.080999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412731, 39.484596, 27.843702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673089, -0.399327, 0.622486,
		-0.037580, 0.859076, 0.510466,
		-0.738606, 0.320196, -0.593242,
		36.191151, 39.580654, 27.665730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179436, 39.699593, 28.471510>,  <36.708172, 39.356518, 28.080999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179436, 39.699593, 28.471510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.976738, 39.569141, 28.152298>,  <35.855118, 39.490871, 27.960772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.976738, 39.569141, 28.152298>,  <36.179436, 39.699593, 28.471510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976738, 39.569141, 28.152298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777870, -0.226099, 0.586343,
		-0.371657, 0.917888, -0.139112,
		-0.506744, -0.326129, -0.798029,
		35.824715, 39.471302, 27.912889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418056, 39.965221, 28.615192>,  <36.179436, 39.699593, 28.471510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418056, 39.965221, 28.615192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.396549, 39.709274, 28.308550>,  <35.383644, 39.555706, 28.124565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.396549, 39.709274, 28.308550>,  <35.418056, 39.965221, 28.615192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396549, 39.709274, 28.308550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910578, -0.283665, 0.300636,
		-0.409825, 0.714219, -0.567393,
		-0.053770, -0.639863, -0.766605,
		35.380417, 39.517315, 28.078568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800827, 40.063488, 28.273813>,  <35.418056, 39.965221, 28.615192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800827, 40.063488, 28.273813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894497, 39.685135, 28.183954>,  <34.950699, 39.458122, 28.130039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.894497, 39.685135, 28.183954>,  <34.800827, 40.063488, 28.273813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894497, 39.685135, 28.183954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919660, -0.290454, 0.264317,
		-0.315264, 0.144710, -0.937906,
		0.234169, -0.945884, -0.224653,
		34.964748, 39.401371, 28.116560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233543, 39.851353, 27.982622>,  <34.800827, 40.063488, 28.273813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233543, 39.851353, 27.982622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.436016, 39.522148, 28.085716>,  <34.557499, 39.324623, 28.147573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.436016, 39.522148, 28.085716>,  <34.233543, 39.851353, 27.982622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436016, 39.522148, 28.085716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770320, -0.297077, 0.564228,
		-0.387800, -0.484141, -0.784359,
		0.506181, -0.823015, 0.257736,
		34.587872, 39.275242, 28.163036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688820, 39.321468, 27.972586>,  <34.233543, 39.851353, 27.982622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688820, 39.321468, 27.972586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.996811, 39.204250, 28.199305>,  <34.181606, 39.133919, 28.335335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.996811, 39.204250, 28.199305>,  <33.688820, 39.321468, 27.972586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996811, 39.204250, 28.199305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637474, -0.391706, 0.663471,
		0.027590, -0.872175, -0.488414,
		0.769978, -0.293046, 0.566796,
		34.227806, 39.116337, 28.369343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590008, 38.572937, 27.973364>,  <33.688820, 39.321468, 27.972586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590008, 38.572937, 27.973364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.818455, 38.669365, 28.287231>,  <33.955524, 38.727222, 28.475552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.818455, 38.669365, 28.287231>,  <33.590008, 38.572937, 27.973364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818455, 38.669365, 28.287231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659632, -0.434169, 0.613500,
		0.488576, -0.867976, -0.088944,
		0.571121, 0.241071, 0.784669,
		33.989792, 38.741688, 28.522633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673038, 37.979836, 28.347672>,  <33.590008, 38.572937, 27.973364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673038, 37.979836, 28.347672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.733658, 38.274548, 28.611244>,  <33.770031, 38.451374, 28.769388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.733658, 38.274548, 28.611244>,  <33.673038, 37.979836, 28.347672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733658, 38.274548, 28.611244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524965, -0.504847, 0.685231,
		0.837523, -0.449760, 0.310275,
		0.151548, 0.736780, 0.658929,
		33.779121, 38.495583, 28.808924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769192, 37.665089, 28.916832>,  <33.673038, 37.979836, 28.347672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769192, 37.665089, 28.916832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.688175, 38.026455, 29.067999>,  <33.639565, 38.243275, 29.158699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.688175, 38.026455, 29.067999>,  <33.769192, 37.665089, 28.916832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688175, 38.026455, 29.067999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502741, -0.427102, 0.751556,
		0.840375, -0.037774, 0.540688,
		-0.202540, 0.903414, 0.377916,
		33.627415, 38.297478, 29.181374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938988, 37.724564, 29.548187>,  <33.769192, 37.665089, 28.916832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938988, 37.724564, 29.548187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.684578, 38.033062, 29.558390>,  <33.531933, 38.218163, 29.564510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.684578, 38.033062, 29.558390>,  <33.938988, 37.724564, 29.548187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684578, 38.033062, 29.558390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465052, -0.409468, 0.784896,
		0.615794, 0.487350, 0.619102,
		-0.636021, 0.771250, 0.025505,
		33.493771, 38.264439, 29.566042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900066, 38.008369, 30.194876>,  <33.938988, 37.724564, 29.548187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900066, 38.008369, 30.194876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.552898, 38.087582, 30.012665>,  <33.344597, 38.135109, 29.903337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.552898, 38.087582, 30.012665>,  <33.900066, 38.008369, 30.194876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552898, 38.087582, 30.012665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496093, -0.391268, 0.775114,
		-0.024738, 0.898718, 0.437828,
		-0.867917, 0.198029, -0.455527,
		33.292522, 38.146992, 29.876007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.020145, 41.690025, 25.358276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690620, 41.713806, 25.132782>,  <38.492905, 41.728073, 24.997486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690620, 41.713806, 25.132782>,  <39.020145, 41.690025, 25.358276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690620, 41.713806, 25.132782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559594, -0.244015, 0.792030,
		-0.090474, 0.967947, 0.234291,
		-0.823814, 0.059450, -0.563735,
		38.443478, 41.731640, 24.963661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582069, 42.166965, 25.693939>,  <39.020145, 41.690025, 25.358276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582069, 42.166965, 25.693939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336788, 41.970871, 25.446180>,  <38.189617, 41.853214, 25.297525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336788, 41.970871, 25.446180>,  <38.582069, 42.166965, 25.693939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336788, 41.970871, 25.446180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528180, -0.328595, 0.782976,
		-0.587370, 0.807278, -0.057434,
		-0.613206, -0.490232, -0.619395,
		38.152824, 41.823803, 25.260363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810646, 42.376698, 25.879841>,  <38.582069, 42.166965, 25.693939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810646, 42.376698, 25.879841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834908, 42.023075, 25.694469>,  <37.849464, 41.810902, 25.583246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834908, 42.023075, 25.694469>,  <37.810646, 42.376698, 25.879841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834908, 42.023075, 25.694469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542436, -0.418935, 0.728187,
		-0.837905, 0.207217, -0.504951,
		0.060649, -0.884055, -0.463430,
		37.853104, 41.757858, 25.555441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048489, 42.172047, 25.800037>,  <37.810646, 42.376698, 25.879841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048489, 42.172047, 25.800037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252331, 41.828285, 25.783409>,  <37.374638, 41.622028, 25.773432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252331, 41.828285, 25.783409>,  <37.048489, 42.172047, 25.800037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252331, 41.828285, 25.783409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637977, -0.409841, 0.651932,
		-0.577311, -0.305706, -0.757137,
		0.509605, -0.859403, -0.041573,
		37.405212, 41.570465, 25.770937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529633, 41.658783, 25.768156>,  <37.048489, 42.172047, 25.800037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529633, 41.658783, 25.768156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855209, 41.443466, 25.855555>,  <37.050556, 41.314278, 25.907993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855209, 41.443466, 25.855555>,  <36.529633, 41.658783, 25.768156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855209, 41.443466, 25.855555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568939, -0.662513, 0.487222,
		-0.117511, -0.520881, -0.845502,
		0.813941, -0.538293, 0.218496,
		37.099392, 41.281979, 25.921103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277111, 40.929901, 25.666794>,  <36.529633, 41.658783, 25.768156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277111, 40.929901, 25.666794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605461, 40.934032, 25.895199>,  <36.802471, 40.936512, 26.032242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605461, 40.934032, 25.895199>,  <36.277111, 40.929901, 25.666794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605461, 40.934032, 25.895199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427218, -0.652422, 0.625963,
		0.379006, -0.757785, -0.531146,
		0.820877, 0.010328, 0.571011,
		36.851723, 40.937130, 26.066502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481071, 40.192802, 25.769444>,  <36.277111, 40.929901, 25.666794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481071, 40.192802, 25.769444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648811, 40.373158, 26.084620>,  <36.749454, 40.481369, 26.273726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648811, 40.373158, 26.084620>,  <36.481071, 40.192802, 25.769444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648811, 40.373158, 26.084620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415766, -0.676183, 0.608207,
		0.807024, -0.582649, -0.096092,
		0.419346, 0.450886, 0.787941,
		36.774616, 40.508423, 26.321001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783783, 39.652901, 26.121010>,  <36.481071, 40.192802, 25.769444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783783, 39.652901, 26.121010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759663, 39.936832, 26.401724>,  <36.745190, 40.107193, 26.570152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759663, 39.936832, 26.401724>,  <36.783783, 39.652901, 26.121010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759663, 39.936832, 26.401724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429134, -0.653211, 0.623826,
		0.901226, -0.263540, 0.344004,
		-0.060304, 0.709832, 0.701785,
		36.741573, 40.149780, 26.612259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972492, 39.380772, 26.681892>,  <36.783783, 39.652901, 26.121010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972492, 39.380772, 26.681892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770786, 39.693058, 26.829512>,  <36.649765, 39.880432, 26.918083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770786, 39.693058, 26.829512>,  <36.972492, 39.380772, 26.681892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770786, 39.693058, 26.829512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377726, -0.583725, 0.718741,
		0.776558, 0.223034, 0.589249,
		-0.504263, 0.780718, 0.369051,
		36.619507, 39.927273, 26.940228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788750, 39.159275, 26.746092>,  <36.972492, 39.380772, 26.681892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788750, 39.159275, 26.746092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008427, 38.825001, 26.747580>,  <38.140232, 38.624435, 26.748472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008427, 38.825001, 26.747580>,  <37.788750, 39.159275, 26.746092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008427, 38.825001, 26.747580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505732, 0.328801, -0.797575,
		0.665302, 0.439901, 0.603209,
		0.549189, -0.835690, 0.003719,
		38.173183, 38.574295, 26.748695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409565, 39.433239, 26.874857>,  <37.788750, 39.159275, 26.746092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409565, 39.433239, 26.874857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450672, 39.074158, 26.703482>,  <38.475338, 38.858707, 26.600657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450672, 39.074158, 26.703482>,  <38.409565, 39.433239, 26.874857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450672, 39.074158, 26.703482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510026, 0.417346, -0.752128,
		0.853998, -0.141219, 0.500745,
		0.102770, -0.897708, -0.428438,
		38.481503, 38.804844, 26.574951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067692, 39.440044, 26.710842>,  <38.409565, 39.433239, 26.874857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067692, 39.440044, 26.710842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892357, 39.166615, 26.477404>,  <38.787155, 39.002556, 26.337341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892357, 39.166615, 26.477404>,  <39.067692, 39.440044, 26.710842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892357, 39.166615, 26.477404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601144, 0.259737, -0.755753,
		0.668195, -0.682102, 0.297074,
		-0.438339, -0.683574, -0.583597,
		38.760857, 38.961544, 26.302324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582237, 39.105003, 26.292496>,  <39.067692, 39.440044, 26.710842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582237, 39.105003, 26.292496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255054, 39.004700, 26.085396>,  <39.058746, 38.944515, 25.961136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255054, 39.004700, 26.085396>,  <39.582237, 39.105003, 26.292496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255054, 39.004700, 26.085396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457850, 0.261155, -0.849807,
		0.348315, -0.932156, -0.098801,
		-0.817955, -0.250764, -0.517751,
		39.009666, 38.929470, 25.930071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800117, 38.670425, 25.715876>,  <39.582237, 39.105003, 26.292496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800117, 38.670425, 25.715876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446869, 38.835484, 25.626593>,  <39.234921, 38.934521, 25.573023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446869, 38.835484, 25.626593>,  <39.800117, 38.670425, 25.715876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446869, 38.835484, 25.626593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352838, 0.270623, -0.895694,
		-0.309203, -0.869760, -0.384591,
		-0.883119, 0.412650, -0.223207,
		39.181934, 38.959278, 25.559631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690453, 38.520016, 24.951132>,  <39.800117, 38.670425, 25.715876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690453, 38.520016, 24.951132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415688, 38.803230, 25.016649>,  <39.250828, 38.973160, 25.055960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415688, 38.803230, 25.016649>,  <39.690453, 38.520016, 24.951132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415688, 38.803230, 25.016649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178215, 0.382617, -0.906556,
		-0.704546, -0.593537, -0.389009,
		-0.686916, 0.708038, 0.163794,
		39.209614, 39.015640, 25.065788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184914, 38.447582, 24.392599>,  <39.690453, 38.520016, 24.951132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184914, 38.447582, 24.392599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163807, 38.822071, 24.531565>,  <39.151142, 39.046764, 24.614944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163807, 38.822071, 24.531565>,  <39.184914, 38.447582, 24.392599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163807, 38.822071, 24.531565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184759, 0.351043, -0.917950,
		-0.981367, 0.015754, -0.191498,
		-0.052763, 0.936227, 0.347413,
		39.147980, 39.102940, 24.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873989, 38.756588, 23.841726>,  <39.184914, 38.447582, 24.392599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873989, 38.756588, 23.841726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010441, 39.057377, 24.067352>,  <39.092312, 39.237850, 24.202728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010441, 39.057377, 24.067352>,  <38.873989, 38.756588, 23.841726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010441, 39.057377, 24.067352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195124, 0.530343, -0.825023,
		-0.919544, 0.391498, 0.034185,
		0.341125, 0.751975, 0.564064,
		39.112778, 39.282970, 24.236572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606598, 39.420578, 23.632175>,  <38.873989, 38.756588, 23.841726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606598, 39.420578, 23.632175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968468, 39.447594, 23.800463>,  <39.185589, 39.463802, 23.901436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968468, 39.447594, 23.800463>,  <38.606598, 39.420578, 23.632175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968468, 39.447594, 23.800463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251712, 0.711968, -0.655547,
		-0.343812, 0.698956, 0.627099,
		0.904674, 0.067537, 0.420719,
		39.239868, 39.467854, 23.926678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707314, 40.103985, 23.562428>,  <38.606598, 39.420578, 23.632175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707314, 40.103985, 23.562428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074154, 39.991737, 23.675697>,  <39.294258, 39.924389, 23.743658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074154, 39.991737, 23.675697>,  <38.707314, 40.103985, 23.562428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074154, 39.991737, 23.675697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396600, 0.570012, -0.719580,
		0.040514, 0.772231, 0.634049,
		0.917097, -0.280617, 0.283173,
		39.349281, 39.907551, 23.760649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237457, 40.703300, 23.390615>,  <38.707314, 40.103985, 23.562428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237457, 40.703300, 23.390615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488518, 40.394703, 23.432280>,  <39.639153, 40.209545, 23.457279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488518, 40.394703, 23.432280>,  <39.237457, 40.703300, 23.390615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488518, 40.394703, 23.432280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503719, 0.300451, -0.809936,
		0.593566, 0.560826, 0.577195,
		0.627652, -0.771494, 0.104161,
		39.676815, 40.163254, 23.463528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969177, 40.988129, 23.408321>,  <39.237457, 40.703300, 23.390615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969177, 40.988129, 23.408321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971199, 40.596928, 23.324909>,  <39.972412, 40.362206, 23.274862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971199, 40.596928, 23.324909>,  <39.969177, 40.988129, 23.408321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971199, 40.596928, 23.324909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725553, 0.147091, -0.672262,
		0.688147, -0.147899, 0.710337,
		0.005057, -0.978003, -0.208528,
		39.972717, 40.303528, 23.262350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674740, 40.808029, 23.291824>,  <39.969177, 40.988129, 23.408321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674740, 40.808029, 23.291824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455914, 40.519798, 23.121416>,  <40.324619, 40.346859, 23.019171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455914, 40.519798, 23.121416>,  <40.674740, 40.808029, 23.291824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455914, 40.519798, 23.121416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629641, -0.018848, -0.776657,
		0.551610, -0.693121, 0.464015,
		-0.547063, -0.720575, -0.426021,
		40.291794, 40.303627, 22.993610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142117, 40.274326, 23.031456>,  <40.674740, 40.808029, 23.291824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142117, 40.274326, 23.031456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814011, 40.203278, 22.813974>,  <40.617146, 40.160648, 22.683485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814011, 40.203278, 22.813974>,  <41.142117, 40.274326, 23.031456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814011, 40.203278, 22.813974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571894, -0.237947, -0.785059,
		0.010068, -0.954899, 0.296758,
		-0.820265, -0.177618, -0.543706,
		40.567932, 40.149994, 22.650862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.276108, 39.237469, 20.738157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654362, 39.305676, 20.848940>,  <36.881313, 39.346600, 20.915409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654362, 39.305676, 20.848940>,  <36.276108, 39.237469, 20.738157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654362, 39.305676, 20.848940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152445, -0.519825, 0.840561,
		0.287301, -0.837081, -0.465568,
		0.945631, 0.170521, 0.276955,
		36.938049, 39.356831, 20.932026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633530, 38.541965, 20.882580>,  <36.276108, 39.237469, 20.738157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633530, 38.541965, 20.882580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.851467, 38.809090, 21.085430>,  <36.982231, 38.969364, 21.207140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.851467, 38.809090, 21.085430>,  <36.633530, 38.541965, 20.882580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851467, 38.809090, 21.085430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133730, -0.527831, 0.838755,
		0.827805, -0.524809, -0.198279,
		0.544845, 0.667810, 0.507124,
		37.014919, 39.009434, 21.237568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120621, 38.140274, 21.362667>,  <36.633530, 38.541965, 20.882580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120621, 38.140274, 21.362667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034389, 38.505096, 21.502193>,  <36.982651, 38.723991, 21.585909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034389, 38.505096, 21.502193>,  <37.120621, 38.140274, 21.362667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034389, 38.505096, 21.502193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100114, -0.375978, 0.921204,
		0.971342, 0.163667, 0.172361,
		-0.215575, 0.912060, 0.348818,
		36.969715, 38.778713, 21.606838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299477, 38.050587, 22.061928>,  <37.120621, 38.140274, 21.362667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299477, 38.050587, 22.061928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101665, 38.398102, 22.072054>,  <36.982979, 38.606613, 22.078129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.101665, 38.398102, 22.072054>,  <37.299477, 38.050587, 22.061928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101665, 38.398102, 22.072054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322834, -0.210647, 0.922716,
		0.806981, 0.448139, 0.384647,
		-0.494530, 0.868792, 0.025314,
		36.953308, 38.658741, 22.079647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400379, 38.325237, 22.711130>,  <37.299477, 38.050587, 22.061928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400379, 38.325237, 22.711130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066010, 38.497574, 22.575125>,  <36.865387, 38.600975, 22.493523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066010, 38.497574, 22.575125>,  <37.400379, 38.325237, 22.711130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066010, 38.497574, 22.575125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448174, -0.178228, 0.875999,
		0.316818, 0.884652, 0.342078,
		-0.835922, 0.430843, -0.340013,
		36.815231, 38.626827, 22.473122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124165, 38.741474, 23.315273>,  <37.400379, 38.325237, 22.711130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124165, 38.741474, 23.315273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.811321, 38.670368, 23.076372>,  <36.623615, 38.627705, 22.933031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.811321, 38.670368, 23.076372>,  <37.124165, 38.741474, 23.315273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811321, 38.670368, 23.076372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534936, -0.300073, 0.789810,
		-0.319618, 0.937207, 0.139597,
		-0.782105, -0.177762, -0.597255,
		36.576691, 38.617039, 22.897196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597416, 39.021851, 23.674259>,  <37.124165, 38.741474, 23.315273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597416, 39.021851, 23.674259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403751, 38.794170, 23.408447>,  <36.287552, 38.657562, 23.248960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.403751, 38.794170, 23.408447>,  <36.597416, 39.021851, 23.674259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403751, 38.794170, 23.408447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675094, -0.240142, 0.697553,
		-0.556627, 0.786349, -0.267995,
		-0.484163, -0.569199, -0.664529,
		36.258503, 38.623409, 23.209089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827381, 39.081161, 23.966225>,  <36.597416, 39.021851, 23.674259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827381, 39.081161, 23.966225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865135, 38.759747, 23.731138>,  <35.887787, 38.566898, 23.590086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865135, 38.759747, 23.731138>,  <35.827381, 39.081161, 23.966225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865135, 38.759747, 23.731138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668780, -0.488484, 0.560462,
		-0.737445, 0.340153, -0.583499,
		0.094387, -0.803542, -0.587717,
		35.893452, 38.518684, 23.554823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105106, 38.744366, 23.890249>,  <35.827381, 39.081161, 23.966225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105106, 38.744366, 23.890249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371613, 38.461327, 23.796101>,  <35.531517, 38.291504, 23.739611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371613, 38.461327, 23.796101>,  <35.105106, 38.744366, 23.890249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371613, 38.461327, 23.796101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425740, -0.620072, 0.658981,
		-0.612225, -0.338865, -0.714389,
		0.666278, -0.707588, -0.235355,
		35.571491, 38.249046, 23.725489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737541, 38.184692, 23.814354>,  <35.105106, 38.744366, 23.890249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737541, 38.184692, 23.814354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108360, 38.043388, 23.864632>,  <35.330853, 37.958607, 23.894798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108360, 38.043388, 23.864632>,  <34.737541, 38.184692, 23.814354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108360, 38.043388, 23.864632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372562, -0.830023, 0.415042,
		-0.042286, -0.431592, -0.901077,
		0.927043, -0.353257, 0.125696,
		35.386475, 37.937412, 23.902340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590740, 37.513294, 23.784477>,  <34.737541, 38.184692, 23.814354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590740, 37.513294, 23.784477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963661, 37.501648, 23.928680>,  <35.187412, 37.494659, 24.015202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963661, 37.501648, 23.928680>,  <34.590740, 37.513294, 23.784477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963661, 37.501648, 23.928680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261407, -0.743110, 0.615998,
		0.249961, -0.668536, -0.700414,
		0.932301, -0.029117, 0.360508,
		35.243351, 37.492912, 24.036833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738117, 36.836403, 23.693628>,  <34.590740, 37.513294, 23.784477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738117, 36.836403, 23.693628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983810, 36.985222, 23.971992>,  <35.131226, 37.074512, 24.139011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.983810, 36.985222, 23.971992>,  <34.738117, 36.836403, 23.693628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983810, 36.985222, 23.971992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159653, -0.805052, 0.571316,
		0.772804, -0.462027, -0.435092,
		0.614235, 0.372051, 0.695912,
		35.168079, 37.096836, 24.180765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397438, 36.375149, 23.848665>,  <34.738117, 36.836403, 23.693628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397438, 36.375149, 23.848665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329937, 36.602379, 24.170860>,  <35.289436, 36.738716, 24.364178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329937, 36.602379, 24.170860>,  <35.397438, 36.375149, 23.848665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329937, 36.602379, 24.170860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386747, -0.789836, 0.476011,
		0.906614, -0.231191, 0.352990,
		-0.168755, 0.568076, 0.805489,
		35.279312, 36.772800, 24.412506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506466, 35.944965, 24.521776>,  <35.397438, 36.375149, 23.848665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506466, 35.944965, 24.521776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311325, 36.276451, 24.631493>,  <35.194241, 36.475342, 24.697323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.311325, 36.276451, 24.631493>,  <35.506466, 35.944965, 24.521776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311325, 36.276451, 24.631493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473055, -0.515062, 0.714794,
		0.733637, 0.218956, 0.643300,
		-0.487848, 0.828715, 0.274291,
		35.164970, 36.525066, 24.713779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208344, 35.833771, 24.966997>,  <35.506466, 35.944965, 24.521776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208344, 35.833771, 24.966997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311855, 35.476814, 24.819126>,  <36.373962, 35.262638, 24.730404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.311855, 35.476814, 24.819126>,  <36.208344, 35.833771, 24.966997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311855, 35.476814, 24.819126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437024, 0.449472, -0.779093,
		0.861418, 0.040059, 0.506314,
		0.258783, -0.892396, -0.369677,
		36.389492, 35.209095, 24.708223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941444, 35.772530, 24.766563>,  <36.208344, 35.833771, 24.966997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941444, 35.772530, 24.766563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758804, 35.510712, 24.525536>,  <36.649220, 35.353622, 24.380919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758804, 35.510712, 24.525536>,  <36.941444, 35.772530, 24.766563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758804, 35.510712, 24.525536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441199, 0.421551, -0.792236,
		0.772565, -0.627590, 0.096302,
		-0.456604, -0.654542, -0.602567,
		36.621822, 35.314350, 24.344765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335239, 35.640663, 24.218620>,  <36.941444, 35.772530, 24.766563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335239, 35.640663, 24.218620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016933, 35.454155, 24.064035>,  <36.825951, 35.342251, 23.971285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.016933, 35.454155, 24.064035>,  <37.335239, 35.640663, 24.218620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016933, 35.454155, 24.064035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369259, 0.132229, -0.919871,
		0.480010, -0.874705, 0.066951,
		-0.795763, -0.466269, -0.386464,
		36.778206, 35.314274, 23.948097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618683, 35.196461, 23.736568>,  <37.335239, 35.640663, 24.218620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618683, 35.196461, 23.736568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234318, 35.244022, 23.636566>,  <37.003696, 35.272560, 23.576565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.234318, 35.244022, 23.636566>,  <37.618683, 35.196461, 23.736568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234318, 35.244022, 23.636566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267460, 0.165634, -0.949226,
		-0.071462, -0.978992, -0.190964,
		-0.960915, 0.118909, -0.250005,
		36.946045, 35.279694, 23.561565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498573, 34.763248, 23.156939>,  <37.618683, 35.196461, 23.736568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498573, 34.763248, 23.156939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206402, 35.034832, 23.127316>,  <37.031097, 35.197784, 23.109541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.206402, 35.034832, 23.127316>,  <37.498573, 34.763248, 23.156939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206402, 35.034832, 23.127316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177871, 0.084411, -0.980427,
		-0.659423, -0.729303, -0.182424,
		-0.730427, 0.678963, -0.074059,
		36.987274, 35.238522, 23.105097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252441, 34.661987, 22.535971>,  <37.498573, 34.763248, 23.156939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252441, 34.661987, 22.535971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113903, 35.027920, 22.619049>,  <37.030781, 35.247478, 22.668896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113903, 35.027920, 22.619049>,  <37.252441, 34.661987, 22.535971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113903, 35.027920, 22.619049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221244, 0.294809, -0.929590,
		-0.911645, -0.276007, -0.304506,
		-0.346345, 0.914826, 0.207696,
		37.009998, 35.302368, 22.681358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862194, 34.828735, 21.959478>,  <37.252441, 34.661987, 22.535971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862194, 34.828735, 21.959478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933784, 35.184528, 22.127663>,  <36.976738, 35.398003, 22.228573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933784, 35.184528, 22.127663>,  <36.862194, 34.828735, 21.959478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933784, 35.184528, 22.127663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259535, 0.369540, -0.892234,
		-0.949004, 0.268812, -0.164714,
		0.178974, 0.889483, 0.420462,
		36.987476, 35.451374, 22.253801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585369, 35.226082, 21.524185>,  <36.862194, 34.828735, 21.959478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585369, 35.226082, 21.524185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820526, 35.472382, 21.734039>,  <36.961620, 35.620159, 21.859951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.820526, 35.472382, 21.734039>,  <36.585369, 35.226082, 21.524185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820526, 35.472382, 21.734039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270479, 0.461596, -0.844849,
		-0.762383, 0.638580, 0.104819,
		0.587888, 0.615748, 0.524636,
		36.996891, 35.657104, 21.891430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516041, 35.894440, 21.279112>,  <36.585369, 35.226082, 21.524185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516041, 35.894440, 21.279112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877186, 35.921864, 21.448879>,  <37.093872, 35.938316, 21.550739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877186, 35.921864, 21.448879>,  <36.516041, 35.894440, 21.279112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877186, 35.921864, 21.448879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336707, 0.501073, -0.797217,
		-0.267320, 0.862685, 0.429319,
		0.902867, 0.068557, 0.424418,
		37.148045, 35.942432, 21.576204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667088, 36.553921, 21.077463>,  <36.516041, 35.894440, 21.279112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667088, 36.553921, 21.077463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015350, 36.394447, 21.192711>,  <37.224308, 36.298763, 21.261860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015350, 36.394447, 21.192711>,  <36.667088, 36.553921, 21.077463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015350, 36.394447, 21.192711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487370, 0.619866, -0.615009,
		0.066599, 0.675881, 0.733995,
		0.870652, -0.398686, 0.288122,
		37.276546, 36.274841, 21.279148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162861, 37.126190, 21.141094>,  <36.667088, 36.553921, 21.077463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162861, 37.126190, 21.141094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411320, 36.813042, 21.126724>,  <37.560394, 36.625153, 21.118101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411320, 36.813042, 21.126724>,  <37.162861, 37.126190, 21.141094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411320, 36.813042, 21.126724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550486, 0.468481, -0.691007,
		0.557799, 0.409441, 0.721955,
		0.621148, -0.782869, -0.035927,
		37.597664, 36.578182, 21.115946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790848, 37.402248, 21.178904>,  <37.162861, 37.126190, 21.141094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790848, 37.402248, 21.178904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845242, 37.037270, 21.024529>,  <37.877876, 36.818283, 20.931904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845242, 37.037270, 21.024529>,  <37.790848, 37.402248, 21.178904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845242, 37.037270, 21.024529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533854, 0.395649, -0.747302,
		0.834570, -0.104415, 0.540916,
		0.135983, -0.912447, -0.385940,
		37.886036, 36.763535, 20.908747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605854, 37.268147, 21.165758>,  <37.790848, 37.402248, 21.178904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605854, 37.268147, 21.165758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419769, 37.056900, 20.881596>,  <38.308121, 36.930153, 20.711098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419769, 37.056900, 20.881596>,  <38.605854, 37.268147, 21.165758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419769, 37.056900, 20.881596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542588, 0.463976, -0.700232,
		0.699414, -0.711211, 0.070704,
		-0.465208, -0.528115, -0.710406,
		38.280209, 36.898464, 20.668474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144760, 37.109955, 20.707041>,  <38.605854, 37.268147, 21.165758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144760, 37.109955, 20.707041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802135, 37.086708, 20.501934>,  <38.596561, 37.072758, 20.378870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.802135, 37.086708, 20.501934>,  <39.144760, 37.109955, 20.707041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802135, 37.086708, 20.501934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389717, 0.578474, -0.716581,
		0.338269, -0.813628, -0.472847,
		-0.856559, -0.058121, -0.512764,
		38.545166, 37.069271, 20.348104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414421, 36.519707, 21.036823>,  <39.144760, 37.109955, 20.707041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414421, 36.519707, 21.036823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811077, 36.502438, 21.085464>,  <40.049072, 36.492077, 21.114649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.811077, 36.502438, 21.085464>,  <39.414421, 36.519707, 21.036823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811077, 36.502438, 21.085464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128851, -0.382105, 0.915092,
		0.006957, -0.923110, -0.384474,
		0.991640, -0.043174, 0.121602,
		40.108570, 36.489487, 21.121944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494987, 35.916519, 21.163267>,  <39.414421, 36.519707, 21.036823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494987, 35.916519, 21.163267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835171, 36.053440, 21.323046>,  <40.039280, 36.135593, 21.418913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.835171, 36.053440, 21.323046>,  <39.494987, 35.916519, 21.163267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835171, 36.053440, 21.323046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219693, -0.458830, 0.860936,
		0.477976, -0.819942, -0.315013,
		0.850455, 0.342301, 0.399445,
		40.090309, 36.156132, 21.442879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989544, 35.346241, 21.428940>,  <39.494987, 35.916519, 21.163267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989544, 35.346241, 21.428940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072441, 35.676624, 21.638645>,  <40.122177, 35.874855, 21.764469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072441, 35.676624, 21.638645>,  <39.989544, 35.346241, 21.428940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072441, 35.676624, 21.638645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170330, -0.497248, 0.850724,
		0.963348, -0.265602, 0.037635,
		0.207241, 0.825954, 0.524263,
		40.134613, 35.924412, 21.795923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431484, 35.175217, 21.983665>,  <39.989544, 35.346241, 21.428940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431484, 35.175217, 21.983665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337879, 35.542931, 22.110256>,  <40.281715, 35.763557, 22.186211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.337879, 35.542931, 22.110256>,  <40.431484, 35.175217, 21.983665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337879, 35.542931, 22.110256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152001, -0.356107, 0.922000,
		0.960278, 0.167656, 0.223066,
		-0.234015, 0.919282, 0.316477,
		40.267673, 35.818714, 22.205200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838680, 35.270596, 22.624912>,  <40.431484, 35.175217, 21.983665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838680, 35.270596, 22.624912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512848, 35.502331, 22.613382>,  <40.317348, 35.641373, 22.606464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.512848, 35.502331, 22.613382>,  <40.838680, 35.270596, 22.624912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512848, 35.502331, 22.613382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270869, -0.335973, 0.902082,
		0.512926, 0.742624, 0.430601,
		-0.814578, 0.579338, -0.028824,
		40.268475, 35.676132, 22.604734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771072, 35.595711, 23.309557>,  <40.838680, 35.270596, 22.624912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771072, 35.595711, 23.309557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.406704, 35.585896, 23.144817>,  <40.188084, 35.580006, 23.045973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.406704, 35.585896, 23.144817>,  <40.771072, 35.595711, 23.309557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406704, 35.585896, 23.144817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369064, -0.397775, 0.839980,
		-0.184432, 0.917155, 0.353287,
		-0.910921, -0.024534, -0.411851,
		40.133427, 35.578537, 23.021261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339272, 35.855907, 23.846691>,  <40.771072, 35.595711, 23.309557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339272, 35.855907, 23.846691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069088, 35.706673, 23.592272>,  <39.906979, 35.617130, 23.439621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069088, 35.706673, 23.592272>,  <40.339272, 35.855907, 23.846691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069088, 35.706673, 23.592272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476605, -0.437291, 0.762643,
		-0.562670, 0.818280, 0.117558,
		-0.675462, -0.373088, -0.636047,
		39.866447, 35.594746, 23.401457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800903, 35.809368, 24.202162>,  <40.339272, 35.855907, 23.846691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800903, 35.809368, 24.202162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710991, 35.562645, 23.900427>,  <39.657043, 35.414612, 23.719387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710991, 35.562645, 23.900427>,  <39.800903, 35.809368, 24.202162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710991, 35.562645, 23.900427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373449, -0.660501, 0.651363,
		-0.900006, 0.428119, -0.081879,
		-0.224779, -0.616808, -0.754335,
		39.643559, 35.377602, 23.674126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057053, 35.652927, 24.203604>,  <39.800903, 35.809368, 24.202162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057053, 35.652927, 24.203604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240608, 35.351151, 24.015888>,  <39.350742, 35.170082, 23.903259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.240608, 35.351151, 24.015888>,  <39.057053, 35.652927, 24.203604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240608, 35.351151, 24.015888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434325, -0.651253, 0.622280,
		-0.775101, -0.081735, -0.626528,
		0.458890, -0.754446, -0.469287,
		39.378277, 35.124817, 23.875103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506523, 35.129704, 24.155416>,  <39.057053, 35.652927, 24.203604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506523, 35.129704, 24.155416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861839, 34.955421, 24.097319>,  <39.075027, 34.850853, 24.062460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861839, 34.955421, 24.097319>,  <38.506523, 35.129704, 24.155416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861839, 34.955421, 24.097319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256356, -0.732769, 0.630342,
		-0.381076, -0.522693, -0.762609,
		0.888292, -0.435707, -0.145245,
		39.128326, 34.824711, 24.053745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378613, 34.437485, 23.921936>,  <38.506523, 35.129704, 24.155416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378613, 34.437485, 23.921936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751911, 34.459953, 24.063866>,  <38.975891, 34.473434, 24.149023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751911, 34.459953, 24.063866>,  <38.378613, 34.437485, 23.921936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751911, 34.459953, 24.063866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206013, -0.725473, 0.656695,
		0.294302, -0.685955, -0.665472,
		0.933244, 0.056171, 0.354823,
		39.031883, 34.476803, 24.170313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498493, 33.743233, 24.095533>,  <38.378613, 34.437485, 23.921936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498493, 33.743233, 24.095533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801250, 33.933701, 24.274584>,  <38.982906, 34.047981, 24.382013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.801250, 33.933701, 24.274584>,  <38.498493, 33.743233, 24.095533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801250, 33.933701, 24.274584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015662, -0.671517, 0.740824,
		0.653347, -0.567737, -0.500811,
		0.756896, 0.476172, 0.447625,
		39.028320, 34.076553, 24.408871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961334, 33.223579, 24.382059>,  <38.498493, 33.743233, 24.095533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961334, 33.223579, 24.382059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091309, 33.524559, 24.611229>,  <39.169292, 33.705147, 24.748732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.091309, 33.524559, 24.611229>,  <38.961334, 33.223579, 24.382059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091309, 33.524559, 24.611229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129235, -0.564787, 0.815055,
		0.936863, -0.338884, -0.086279,
		0.324938, 0.752445, 0.572924,
		39.188789, 33.750294, 24.783106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418419, 32.966412, 24.910986>,  <38.961334, 33.223579, 24.382059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418419, 32.966412, 24.910986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279301, 33.301506, 25.079388>,  <39.195831, 33.502563, 25.180428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.279301, 33.301506, 25.079388>,  <39.418419, 32.966412, 24.910986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279301, 33.301506, 25.079388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036326, -0.436658, 0.898894,
		0.936867, 0.327923, 0.121435,
		-0.347794, 0.837733, 0.421003,
		39.174961, 33.552826, 25.205688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.351830, 39.682323, 22.436794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.011635, 39.835384, 22.292435>,  <40.807518, 39.927223, 22.205818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.011635, 39.835384, 22.292435>,  <41.351830, 39.682323, 22.436794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011635, 39.835384, 22.292435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393018, 0.006286, -0.919510,
		-0.349588, -0.923869, -0.155737,
		-0.850485, 0.382657, -0.360899,
		40.756489, 39.950180, 22.184164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119301, 39.216927, 21.800951>,  <41.351830, 39.682323, 22.436794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119301, 39.216927, 21.800951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.970104, 39.587948, 21.810078>,  <40.880585, 39.810562, 21.815554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.970104, 39.587948, 21.810078>,  <41.119301, 39.216927, 21.800951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970104, 39.587948, 21.810078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396250, 0.181484, -0.900028,
		-0.838963, -0.326665, -0.435236,
		-0.372996, 0.927552, 0.022817,
		40.858204, 39.866215, 21.816923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924805, 39.340187, 21.157566>,  <41.119301, 39.216927, 21.800951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924805, 39.340187, 21.157566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946297, 39.712318, 21.302673>,  <40.959190, 39.935596, 21.389738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946297, 39.712318, 21.302673>,  <40.924805, 39.340187, 21.157566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946297, 39.712318, 21.302673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404091, 0.311959, -0.859879,
		-0.913139, 0.192791, -0.359177,
		0.053728, 0.930329, 0.362767,
		40.962414, 39.991417, 21.411503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654125, 39.781559, 20.634457>,  <40.924805, 39.340187, 21.157566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654125, 39.781559, 20.634457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886242, 40.014927, 20.861750>,  <41.025513, 40.154945, 20.998125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.886242, 40.014927, 20.861750>,  <40.654125, 39.781559, 20.634457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886242, 40.014927, 20.861750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421055, 0.382320, -0.822523,
		-0.697120, 0.716559, -0.023794,
		0.580290, 0.583416, 0.568234,
		41.060329, 40.189953, 21.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743614, 40.413967, 20.213106>,  <40.654125, 39.781559, 20.634457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743614, 40.413967, 20.213106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032429, 40.413105, 20.489847>,  <41.205719, 40.412590, 20.655891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032429, 40.413105, 20.489847>,  <40.743614, 40.413967, 20.213106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032429, 40.413105, 20.489847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651708, 0.337803, -0.679092,
		-0.232248, 0.941214, 0.245308,
		0.722037, -0.002151, 0.691851,
		41.249039, 40.412460, 20.697403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003441, 41.133259, 20.098043>,  <40.743614, 40.413967, 20.213106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003441, 41.133259, 20.098043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.275253, 40.916950, 20.296358>,  <41.438339, 40.787163, 20.415346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.275253, 40.916950, 20.296358>,  <41.003441, 41.133259, 20.098043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275253, 40.916950, 20.296358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722167, 0.373967, -0.581913,
		0.129276, 0.753467, 0.644651,
		0.679531, -0.540773, 0.495784,
		41.479111, 40.754719, 20.445093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591343, 41.589771, 20.263512>,  <41.003441, 41.133259, 20.098043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591343, 41.589771, 20.263512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711781, 41.208359, 20.267990>,  <41.784042, 40.979511, 20.270678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.711781, 41.208359, 20.267990>,  <41.591343, 41.589771, 20.263512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711781, 41.208359, 20.267990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740642, 0.226447, -0.632591,
		0.600658, 0.198763, 0.774405,
		0.301098, -0.953528, 0.011195,
		41.802109, 40.922302, 20.271349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308918, 41.673649, 20.390369>,  <41.591343, 41.589771, 20.263512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308918, 41.673649, 20.390369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.276985, 41.299416, 20.252789>,  <42.257824, 41.074875, 20.170240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.276985, 41.299416, 20.252789>,  <42.308918, 41.673649, 20.390369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276985, 41.299416, 20.252789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795236, 0.148269, -0.587891,
		0.601021, -0.320457, 0.732176,
		-0.079834, -0.935587, -0.343952,
		42.253036, 41.018738, 20.149603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996540, 41.337322, 20.444563>,  <42.308918, 41.673649, 20.390369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996540, 41.337322, 20.444563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.782169, 41.144417, 20.167376>,  <42.653549, 41.028675, 20.001062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.782169, 41.144417, 20.167376>,  <42.996540, 41.337322, 20.444563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782169, 41.144417, 20.167376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763734, 0.072921, -0.641399,
		0.359856, -0.872985, 0.329242,
		-0.535923, -0.482265, -0.692970,
		42.621391, 40.999737, 19.959484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451439, 40.876087, 20.089947>,  <42.996540, 41.337322, 20.444563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451439, 40.876087, 20.089947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.146542, 40.936745, 19.838236>,  <42.963604, 40.973137, 19.687210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.146542, 40.936745, 19.838236>,  <43.451439, 40.876087, 20.089947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146542, 40.936745, 19.838236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647288, 0.181483, -0.740326,
		0.001938, -0.971632, -0.236491,
		-0.762244, 0.151643, -0.629277,
		42.917870, 40.982239, 19.649452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617207, 40.599968, 19.485182>,  <43.451439, 40.876087, 20.089947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617207, 40.599968, 19.485182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.310852, 40.816814, 19.346888>,  <43.127041, 40.946922, 19.263910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.310852, 40.816814, 19.346888>,  <43.617207, 40.599968, 19.485182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310852, 40.816814, 19.346888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498334, 0.160687, -0.851964,
		-0.406308, -0.824797, -0.393223,
		-0.765883, 0.542116, -0.345736,
		43.081089, 40.979450, 19.243166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588284, 40.378704, 18.860802>,  <43.617207, 40.599968, 19.485182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588284, 40.378704, 18.860802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.378109, 40.718433, 18.840513>,  <43.252007, 40.922272, 18.828341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.378109, 40.718433, 18.840513>,  <43.588284, 40.378704, 18.860802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378109, 40.718433, 18.840513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578700, 0.313040, -0.753069,
		-0.623719, -0.425041, -0.655984,
		-0.525434, 0.849321, -0.050722,
		43.220478, 40.973228, 18.825296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509228, 40.523460, 18.076502>,  <43.588284, 40.378704, 18.860802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509228, 40.523460, 18.076502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482674, 40.849026, 18.307373>,  <43.466740, 41.044365, 18.445896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482674, 40.849026, 18.307373>,  <43.509228, 40.523460, 18.076502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482674, 40.849026, 18.307373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509205, 0.525094, -0.681899,
		-0.858081, 0.248633, -0.449309,
		-0.066387, 0.813915, 0.577178,
		43.462757, 41.093201, 18.480526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148544, 41.149498, 17.854090>,  <43.509228, 40.523460, 18.076502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148544, 41.149498, 17.854090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.409786, 41.303524, 18.114914>,  <43.566532, 41.395939, 18.271408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.409786, 41.303524, 18.114914>,  <43.148544, 41.149498, 17.854090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409786, 41.303524, 18.114914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417680, 0.535075, -0.734328,
		-0.631667, 0.751943, 0.188623,
		0.653100, 0.385067, 0.652061,
		43.605717, 41.419044, 18.310532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843235, 40.382687, 17.783161>,  <43.148544, 41.149498, 17.854090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843235, 40.382687, 17.783161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.780552, 40.095413, 17.511971>,  <42.742943, 39.923050, 17.349257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.780552, 40.095413, 17.511971>,  <42.843235, 40.382687, 17.783161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780552, 40.095413, 17.511971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305384, -0.617585, 0.724796,
		-0.939247, 0.320623, -0.122543,
		-0.156705, -0.718185, -0.677978,
		42.733540, 39.879959, 17.308577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236500, 40.159946, 17.926577>,  <42.843235, 40.382687, 17.783161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236500, 40.159946, 17.926577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.397404, 39.857349, 17.720312>,  <42.493946, 39.675793, 17.596554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.397404, 39.857349, 17.720312>,  <42.236500, 40.159946, 17.926577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397404, 39.857349, 17.720312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288655, -0.639310, 0.712714,
		-0.868830, -0.137848, -0.475534,
		0.402260, -0.756492, -0.515661,
		42.518082, 39.630402, 17.565615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708469, 39.635731, 17.796963>,  <42.236500, 40.159946, 17.926577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708469, 39.635731, 17.796963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.064472, 39.454353, 17.777897>,  <42.278072, 39.345528, 17.766457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.064472, 39.454353, 17.777897>,  <41.708469, 39.635731, 17.796963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064472, 39.454353, 17.777897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298844, -0.659104, 0.690125,
		-0.344351, -0.599973, -0.722118,
		0.890008, -0.453447, -0.047665,
		42.331474, 39.318317, 17.763597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529388, 38.990494, 17.701447>,  <41.708469, 39.635731, 17.796963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529388, 38.990494, 17.701447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916161, 38.940998, 17.790648>,  <42.148224, 38.911301, 17.844168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916161, 38.940998, 17.790648>,  <41.529388, 38.990494, 17.701447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916161, 38.940998, 17.790648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240235, -0.735436, 0.633578,
		0.085606, -0.666200, -0.740843,
		0.966932, -0.123738, 0.223002,
		42.206242, 38.903877, 17.857548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638634, 38.267887, 17.628813>,  <41.529388, 38.990494, 17.701447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638634, 38.267887, 17.628813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.945900, 38.413887, 17.839224>,  <42.130260, 38.501488, 17.965471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.945900, 38.413887, 17.839224>,  <41.638634, 38.267887, 17.628813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945900, 38.413887, 17.839224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109802, -0.734318, 0.669866,
		0.630771, -0.572324, -0.523997,
		0.768161, 0.364996, 0.526029,
		42.176350, 38.523384, 17.997032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069908, 37.701252, 17.789675>,  <41.638634, 38.267887, 17.628813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069908, 37.701252, 17.789675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.150040, 37.980629, 18.064499>,  <42.198116, 38.148254, 18.229393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.150040, 37.980629, 18.064499>,  <42.069908, 37.701252, 17.789675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150040, 37.980629, 18.064499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228037, -0.648775, 0.726009,
		0.952821, -0.302114, 0.029304,
		0.200326, 0.698439, 0.687060,
		42.210136, 38.190163, 18.270617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342121, 37.317810, 18.234694>,  <42.069908, 37.701252, 17.789675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342121, 37.317810, 18.234694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250923, 37.639103, 18.454819>,  <42.196205, 37.831879, 18.586893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250923, 37.639103, 18.454819>,  <42.342121, 37.317810, 18.234694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250923, 37.639103, 18.454819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264079, -0.595025, 0.759084,
		0.937168, 0.027738, 0.347776,
		-0.227990, 0.803229, 0.550313,
		42.182526, 37.880070, 18.619913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773361, 37.298557, 18.844496>,  <42.342121, 37.317810, 18.234694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773361, 37.298557, 18.844496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.430332, 37.491241, 18.916626>,  <42.224514, 37.606853, 18.959904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.430332, 37.491241, 18.916626>,  <42.773361, 37.298557, 18.844496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430332, 37.491241, 18.916626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209204, -0.646939, 0.733283,
		0.469890, 0.591122, 0.655575,
		-0.857577, 0.481711, 0.180325,
		42.173058, 37.635754, 18.970724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639591, 37.231941, 19.538612>,  <42.773361, 37.298557, 18.844496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639591, 37.231941, 19.538612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.272812, 37.340477, 19.421600>,  <42.052742, 37.405598, 19.351393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.272812, 37.340477, 19.421600>,  <42.639591, 37.231941, 19.538612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272812, 37.340477, 19.421600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398546, -0.587945, 0.703905,
		0.019006, 0.762034, 0.647259,
		-0.916952, 0.271341, -0.292530,
		41.997726, 37.421879, 19.333841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385151, 37.315777, 20.195230>,  <42.639591, 37.231941, 19.538612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385151, 37.315777, 20.195230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.068825, 37.318501, 19.950422>,  <41.879028, 37.320133, 19.803537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.068825, 37.318501, 19.950422>,  <42.385151, 37.315777, 20.195230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068825, 37.318501, 19.950422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551672, -0.441010, 0.707932,
		-0.265086, 0.897476, 0.352513,
		-0.790814, 0.006808, -0.612019,
		41.831581, 37.320541, 19.766817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836582, 37.625301, 20.564325>,  <42.385151, 37.315777, 20.195230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836582, 37.625301, 20.564325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.640553, 37.405006, 20.294062>,  <41.522934, 37.272831, 20.131905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.640553, 37.405006, 20.294062>,  <41.836582, 37.625301, 20.564325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640553, 37.405006, 20.294062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626708, -0.316127, 0.712251,
		-0.605856, 0.772498, -0.190224,
		-0.490078, -0.550736, -0.675658,
		41.493530, 37.239784, 20.091364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126575, 37.835793, 20.478775>,  <41.836582, 37.625301, 20.564325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126575, 37.835793, 20.478775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111824, 37.452778, 20.364401>,  <41.102974, 37.222969, 20.295776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111824, 37.452778, 20.364401>,  <41.126575, 37.835793, 20.478775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111824, 37.452778, 20.364401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646326, -0.195374, 0.737626,
		-0.762170, 0.212007, -0.611678,
		-0.036875, -0.957539, -0.285934,
		41.100761, 37.165516, 20.278620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425602, 37.646053, 20.530222>,  <41.126575, 37.835793, 20.478775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425602, 37.646053, 20.530222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595604, 37.286583, 20.486839>,  <40.697605, 37.070900, 20.460810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595604, 37.286583, 20.486839>,  <40.425602, 37.646053, 20.530222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595604, 37.286583, 20.486839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729296, -0.410923, 0.547056,
		-0.536191, -0.153402, -0.830040,
		0.425002, -0.898672, -0.108458,
		40.723106, 37.016983, 20.454302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807602, 37.142063, 20.458988>,  <40.425602, 37.646053, 20.530222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807602, 37.142063, 20.458988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.109829, 36.911163, 20.582853>,  <40.291164, 36.772621, 20.657173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.109829, 36.911163, 20.582853>,  <39.807602, 37.142063, 20.458988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109829, 36.911163, 20.582853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499199, -0.201299, 0.842781,
		-0.424163, -0.791364, -0.440260,
		0.755570, -0.577254, 0.309664,
		40.336498, 36.737988, 20.675753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296001, 36.919945, 19.895111>,  <39.807602, 37.142063, 20.458988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296001, 36.919945, 19.895111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914928, 37.038223, 19.866945>,  <38.686283, 37.109192, 19.850046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914928, 37.038223, 19.866945>,  <39.296001, 36.919945, 19.895111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914928, 37.038223, 19.866945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208190, 0.465973, -0.859957,
		-0.221475, -0.833926, -0.505486,
		-0.952683, 0.295696, -0.070413,
		38.629124, 37.126930, 19.845821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065132, 36.684868, 19.243252>,  <39.296001, 36.919945, 19.895111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065132, 36.684868, 19.243252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822395, 36.982552, 19.354891>,  <38.676754, 37.161160, 19.421875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.822395, 36.982552, 19.354891>,  <39.065132, 36.684868, 19.243252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822395, 36.982552, 19.354891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222793, 0.496338, -0.839054,
		-0.762957, -0.446994, -0.467004,
		-0.606844, 0.744207, 0.279097,
		38.640343, 37.205814, 19.438620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722076, 36.872803, 18.579868>,  <39.065132, 36.684868, 19.243252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722076, 36.872803, 18.579868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705017, 37.170868, 18.846073>,  <38.694782, 37.349709, 19.005796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.705017, 37.170868, 18.846073>,  <38.722076, 36.872803, 18.579868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705017, 37.170868, 18.846073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023630, 0.666686, -0.744964,
		-0.998810, -0.016049, -0.046044,
		-0.042653, 0.745166, 0.665514,
		38.692223, 37.394417, 19.045727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470795, 37.320488, 18.205950>,  <38.722076, 36.872803, 18.579868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470795, 37.320488, 18.205950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612671, 37.550098, 18.501163>,  <38.697796, 37.687862, 18.678291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612671, 37.550098, 18.501163>,  <38.470795, 37.320488, 18.205950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612671, 37.550098, 18.501163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036799, 0.780172, -0.624481,
		-0.934261, 0.248654, 0.255594,
		0.354687, 0.574023, 0.738034,
		38.719078, 37.722305, 18.722574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174290, 37.946831, 18.086712>,  <38.470795, 37.320488, 18.205950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174290, 37.946831, 18.086712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488354, 38.058208, 18.307981>,  <38.676792, 38.125034, 18.440742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.488354, 38.058208, 18.307981>,  <38.174290, 37.946831, 18.086712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488354, 38.058208, 18.307981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149838, 0.781274, -0.605936,
		-0.600898, 0.558641, 0.571701,
		0.785156, 0.278443, 0.553172,
		38.723900, 38.141743, 18.473932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119408, 38.649826, 18.117565>,  <38.174290, 37.946831, 18.086712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119408, 38.649826, 18.117565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499725, 38.558868, 18.201740>,  <38.727917, 38.504295, 18.252245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.499725, 38.558868, 18.201740>,  <38.119408, 38.649826, 18.117565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499725, 38.558868, 18.201740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309081, 0.743140, -0.593475,
		-0.021436, 0.629315, 0.776854,
		0.950794, -0.227389, 0.210439,
		38.784962, 38.490650, 18.264872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547424, 39.379803, 18.272022>,  <38.119408, 38.649826, 18.117565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547424, 39.379803, 18.272022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795948, 39.081223, 18.176695>,  <38.945061, 38.902077, 18.119499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795948, 39.081223, 18.176695>,  <38.547424, 39.379803, 18.272022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795948, 39.081223, 18.176695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401435, 0.564424, -0.721301,
		0.672925, 0.352480, 0.650330,
		0.621307, -0.746447, -0.238318,
		38.982342, 38.857288, 18.105200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601299, 39.955570, 18.708591>,  <38.547424, 39.379803, 18.272022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601299, 39.955570, 18.708591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338097, 40.255577, 18.681772>,  <38.180176, 40.435581, 18.665680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338097, 40.255577, 18.681772>,  <38.601299, 39.955570, 18.708591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338097, 40.255577, 18.681772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350301, -0.226071, 0.908945,
		0.666567, 0.621583, 0.411489,
		-0.658011, 0.750018, -0.067049,
		38.140694, 40.480583, 18.661657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639164, 40.466579, 19.310230>,  <38.601299, 39.955570, 18.708591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639164, 40.466579, 19.310230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270329, 40.519489, 19.164766>,  <38.049026, 40.551235, 19.077488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270329, 40.519489, 19.164766>,  <38.639164, 40.466579, 19.310230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270329, 40.519489, 19.164766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379238, -0.121996, 0.917222,
		0.076959, 0.983677, 0.162654,
		-0.922093, 0.132274, -0.363659,
		37.993702, 40.559170, 19.055668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448639, 41.050499, 19.641819>,  <38.639164, 40.466579, 19.310230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448639, 41.050499, 19.641819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131680, 40.845329, 19.509747>,  <37.941505, 40.722229, 19.430504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.131680, 40.845329, 19.509747>,  <38.448639, 41.050499, 19.641819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131680, 40.845329, 19.509747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319491, -0.112132, 0.940932,
		-0.519647, 0.851081, -0.075021,
		-0.792397, -0.512921, -0.330181,
		37.893959, 40.691452, 19.410692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780842, 41.253887, 19.995781>,  <38.448639, 41.050499, 19.641819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780842, 41.253887, 19.995781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.655735, 40.900257, 19.856882>,  <37.580673, 40.688080, 19.773542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.655735, 40.900257, 19.856882>,  <37.780842, 41.253887, 19.995781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655735, 40.900257, 19.856882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332785, -0.240422, 0.911840,
		-0.889625, 0.400750, -0.219013,
		-0.312765, -0.884079, -0.347249,
		37.561905, 40.635033, 19.752707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348804, 40.986107, 20.463263>,  <37.780842, 41.253887, 19.995781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348804, 40.986107, 20.463263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360649, 40.637196, 20.268021>,  <37.367756, 40.427849, 20.150875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360649, 40.637196, 20.268021>,  <37.348804, 40.986107, 20.463263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360649, 40.637196, 20.268021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291730, -0.474601, 0.830450,
		-0.956042, 0.117808, -0.268522,
		0.029607, -0.872282, -0.488107,
		37.369530, 40.375511, 20.121588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697529, 40.577526, 20.570450>,  <37.348804, 40.986107, 20.463263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697529, 40.577526, 20.570450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965343, 40.289001, 20.499533>,  <37.126034, 40.115887, 20.456982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.965343, 40.289001, 20.499533>,  <36.697529, 40.577526, 20.570450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965343, 40.289001, 20.499533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358202, -0.522653, 0.773644,
		-0.650700, -0.454476, -0.608310,
		0.669538, -0.721308, -0.177296,
		37.166206, 40.072609, 20.446344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375923, 40.053150, 20.772606>,  <36.697529, 40.577526, 20.570450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375923, 40.053150, 20.772606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745090, 39.902515, 20.740604>,  <36.966591, 39.812134, 20.721403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745090, 39.902515, 20.740604>,  <36.375923, 40.053150, 20.772606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745090, 39.902515, 20.740604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217657, -0.681789, 0.698419,
		-0.317565, -0.627170, -0.711203,
		0.922918, -0.376591, -0.080004,
		37.021965, 39.789539, 20.716602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.336308, 44.378948, 19.275572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.472904, 44.009190, 19.207598>,  <41.554863, 43.787334, 19.166813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.472904, 44.009190, 19.207598>,  <41.336308, 44.378948, 19.275572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472904, 44.009190, 19.207598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696768, -0.370330, 0.614305,
		-0.630792, -0.091375, -0.770553,
		0.341491, -0.924395, -0.169934,
		41.575352, 43.731873, 19.156618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827271, 44.009205, 19.371202>,  <41.336308, 44.378948, 19.275572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827271, 44.009205, 19.371202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109531, 43.728519, 19.410505>,  <41.278889, 43.560108, 19.434088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109531, 43.728519, 19.410505>,  <40.827271, 44.009205, 19.371202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109531, 43.728519, 19.410505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535242, -0.437026, 0.722858,
		-0.464308, -0.562668, -0.683976,
		0.705645, -0.701722, 0.098249,
		41.321228, 43.518005, 19.439983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594589, 43.367485, 19.276031>,  <40.827271, 44.009205, 19.371202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594589, 43.367485, 19.276031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.921268, 43.292297, 19.494268>,  <41.117275, 43.247185, 19.625210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.921268, 43.292297, 19.494268>,  <40.594589, 43.367485, 19.276031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921268, 43.292297, 19.494268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568553, -0.423878, 0.705036,
		0.098742, -0.886000, -0.453049,
		0.816699, -0.187965, 0.545593,
		41.166279, 43.235909, 19.657946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455250, 42.728119, 19.599180>,  <40.594589, 43.367485, 19.276031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455250, 42.728119, 19.599180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.745491, 42.894886, 19.818151>,  <40.919636, 42.994946, 19.949533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.745491, 42.894886, 19.818151>,  <40.455250, 42.728119, 19.599180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745491, 42.894886, 19.818151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345172, -0.467687, 0.813711,
		0.595277, -0.779388, -0.195447,
		0.725604, 0.416920, 0.547427,
		40.963173, 43.019962, 19.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676456, 42.214420, 20.141130>,  <40.455250, 42.728119, 19.599180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676456, 42.214420, 20.141130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.791367, 42.564938, 20.295834>,  <40.860313, 42.775249, 20.388655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.791367, 42.564938, 20.295834>,  <40.676456, 42.214420, 20.141130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791367, 42.564938, 20.295834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467851, -0.223964, 0.854960,
		0.835815, -0.426557, 0.345634,
		0.287280, 0.876293, 0.386758,
		40.877552, 42.827824, 20.411861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811710, 42.014370, 20.884827>,  <40.676456, 42.214420, 20.141130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811710, 42.014370, 20.884827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.777416, 42.412773, 20.874819>,  <40.756840, 42.651814, 20.868814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.777416, 42.412773, 20.874819>,  <40.811710, 42.014370, 20.884827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777416, 42.412773, 20.874819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394530, -0.010882, 0.918819,
		0.914875, 0.088644, 0.393886,
		-0.085734, 0.996004, -0.025017,
		40.751698, 42.711575, 20.867313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308815, 42.291744, 21.450506>,  <40.811710, 42.014370, 20.884827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308815, 42.291744, 21.450506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.019112, 42.549480, 21.352312>,  <40.845287, 42.704124, 21.293396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.019112, 42.549480, 21.352312>,  <41.308815, 42.291744, 21.450506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019112, 42.549480, 21.352312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372858, -0.066497, 0.925503,
		0.580019, 0.761838, 0.288410,
		-0.724262, 0.644345, -0.245488,
		40.801834, 42.742783, 21.278666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070290, 42.507683, 22.137079>,  <41.308815, 42.291744, 21.450506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070290, 42.507683, 22.137079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.789688, 42.667580, 21.901077>,  <40.621326, 42.763519, 21.759476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.789688, 42.667580, 21.901077>,  <41.070290, 42.507683, 22.137079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789688, 42.667580, 21.901077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588955, 0.140985, 0.795773,
		0.401286, 0.905720, 0.136530,
		-0.701499, 0.399743, -0.590004,
		40.579239, 42.787502, 21.724075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737835, 43.144001, 22.570646>,  <41.070290, 42.507683, 22.137079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737835, 43.144001, 22.570646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483925, 43.020985, 22.287104>,  <40.331577, 42.947174, 22.116978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483925, 43.020985, 22.287104>,  <40.737835, 43.144001, 22.570646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483925, 43.020985, 22.287104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726294, -0.075637, 0.683210,
		-0.263733, 0.948522, -0.175355,
		-0.634776, -0.307545, -0.708855,
		40.293491, 42.928722, 22.074448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139957, 43.579727, 22.613317>,  <40.737835, 43.144001, 22.570646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139957, 43.579727, 22.613317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014618, 43.239944, 22.443501>,  <39.939415, 43.036076, 22.341610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.014618, 43.239944, 22.443501>,  <40.139957, 43.579727, 22.613317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014618, 43.239944, 22.443501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821373, 0.018060, 0.570104,
		-0.476611, 0.527352, -0.703379,
		-0.313349, -0.849455, -0.424545,
		39.920612, 42.985107, 22.316137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474888, 43.772549, 22.483397>,  <40.139957, 43.579727, 22.613317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474888, 43.772549, 22.483397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.529087, 43.376438, 22.495949>,  <39.561607, 43.138771, 22.503479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.529087, 43.376438, 22.495949>,  <39.474888, 43.772549, 22.483397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529087, 43.376438, 22.495949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651015, -0.065116, 0.756267,
		-0.746873, -0.122904, -0.653511,
		0.135502, -0.990280, 0.031379,
		39.569736, 43.079353, 22.505362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737839, 43.441807, 22.399523>,  <39.474888, 43.772549, 22.483397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737839, 43.441807, 22.399523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003136, 43.204197, 22.581617>,  <39.162315, 43.061630, 22.690874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.003136, 43.204197, 22.581617>,  <38.737839, 43.441807, 22.399523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003136, 43.204197, 22.581617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646024, -0.147329, 0.748964,
		-0.377836, -0.790839, -0.481471,
		0.663245, -0.594027, 0.455234,
		39.202110, 43.025990, 22.718187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669403, 42.978855, 21.834316>,  <38.737839, 43.441807, 22.399523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669403, 42.978855, 21.834316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296669, 42.984413, 21.689266>,  <38.073029, 42.987747, 21.602236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296669, 42.984413, 21.689266>,  <38.669403, 42.978855, 21.834316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296669, 42.984413, 21.689266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362208, -0.025681, -0.931743,
		-0.022243, -0.999574, 0.018904,
		-0.931832, 0.013877, -0.362625,
		38.017120, 42.988583, 21.580479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588463, 42.438305, 21.252258>,  <38.669403, 42.978855, 21.834316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588463, 42.438305, 21.252258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318893, 42.725079, 21.180889>,  <38.157154, 42.897144, 21.138067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318893, 42.725079, 21.180889>,  <38.588463, 42.438305, 21.252258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318893, 42.725079, 21.180889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409488, 0.161457, -0.897915,
		-0.614941, -0.678184, -0.402386,
		-0.673919, 0.716937, -0.178421,
		38.116718, 42.940159, 21.127363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240173, 42.270786, 20.538691>,  <38.588463, 42.438305, 21.252258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240173, 42.270786, 20.538691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.158882, 42.654732, 20.615999>,  <38.110107, 42.885101, 20.662384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.158882, 42.654732, 20.615999>,  <38.240173, 42.270786, 20.538691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158882, 42.654732, 20.615999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346877, 0.255168, -0.902533,
		-0.915629, -0.116377, -0.384812,
		-0.203226, 0.959867, 0.193270,
		38.097916, 42.942692, 20.673981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801788, 42.449471, 19.972647>,  <38.240173, 42.270786, 20.538691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801788, 42.449471, 19.972647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975159, 42.776028, 20.125298>,  <38.079182, 42.971962, 20.216888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.975159, 42.776028, 20.125298>,  <37.801788, 42.449471, 19.972647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975159, 42.776028, 20.125298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112586, 0.371100, -0.921742,
		-0.894130, 0.442470, 0.068928,
		0.433423, 0.816398, 0.381628,
		38.105186, 43.020947, 20.239786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619038, 43.006138, 19.533157>,  <37.801788, 42.449471, 19.972647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619038, 43.006138, 19.533157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.916756, 43.192600, 19.724459>,  <38.095387, 43.304478, 19.839239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.916756, 43.192600, 19.724459>,  <37.619038, 43.006138, 19.533157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916756, 43.192600, 19.724459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316224, 0.384763, -0.867156,
		-0.588241, 0.796655, 0.138969,
		0.744295, 0.466152, 0.478255,
		38.140045, 43.332447, 19.867935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594116, 43.633785, 19.237753>,  <37.619038, 43.006138, 19.533157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594116, 43.633785, 19.237753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.965519, 43.610737, 19.384476>,  <38.188362, 43.596909, 19.472509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.965519, 43.610737, 19.384476>,  <37.594116, 43.633785, 19.237753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965519, 43.610737, 19.384476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354435, 0.431960, -0.829329,
		-0.110658, 0.900050, 0.421503,
		0.928510, -0.057624, 0.366809,
		38.244072, 43.593449, 19.494518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871273, 44.206345, 19.025902>,  <37.594116, 43.633785, 19.237753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871273, 44.206345, 19.025902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184410, 43.978619, 19.126324>,  <38.372292, 43.841984, 19.186577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.184410, 43.978619, 19.126324>,  <37.871273, 44.206345, 19.025902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184410, 43.978619, 19.126324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532360, 0.403986, -0.743901,
		0.322095, 0.716011, 0.619341,
		0.782846, -0.569319, 0.251054,
		38.419266, 43.807823, 19.201639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443390, 44.683174, 19.101439>,  <37.871273, 44.206345, 19.025902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443390, 44.683174, 19.101439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560688, 44.311665, 19.010765>,  <38.631065, 44.088760, 18.956360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.560688, 44.311665, 19.010765>,  <38.443390, 44.683174, 19.101439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560688, 44.311665, 19.010765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521357, 0.354103, -0.776400,
		0.801371, 0.109489, 0.588062,
		0.293242, -0.928775, -0.226685,
		38.648659, 44.033031, 18.942759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206936, 44.665379, 18.979395>,  <38.443390, 44.683174, 19.101439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206936, 44.665379, 18.979395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104008, 44.313080, 18.820362>,  <39.042252, 44.101700, 18.724943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104008, 44.313080, 18.820362>,  <39.206936, 44.665379, 18.979395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104008, 44.313080, 18.820362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572691, 0.192400, -0.796874,
		0.778338, -0.432746, 0.454886,
		-0.257324, -0.880746, -0.397582,
		39.026810, 44.048855, 18.701088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844994, 44.366138, 18.863588>,  <39.206936, 44.665379, 18.979395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844994, 44.366138, 18.863588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584045, 44.175457, 18.627905>,  <39.427479, 44.061047, 18.486494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584045, 44.175457, 18.627905>,  <39.844994, 44.366138, 18.863588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584045, 44.175457, 18.627905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656463, 0.033129, -0.753631,
		0.378782, -0.878437, 0.291329,
		-0.652366, -0.476708, -0.589209,
		39.388336, 44.032444, 18.451141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210773, 43.886055, 18.480455>,  <39.844994, 44.366138, 18.863588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210773, 43.886055, 18.480455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882137, 43.941563, 18.259281>,  <39.684956, 43.974869, 18.126577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882137, 43.941563, 18.259281>,  <40.210773, 43.886055, 18.480455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882137, 43.941563, 18.259281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552809, -0.043029, -0.832196,
		-0.139278, -0.989389, -0.041362,
		-0.821586, 0.138772, -0.552936,
		39.635662, 43.983196, 18.093401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336254, 43.427181, 17.898020>,  <40.210773, 43.886055, 18.480455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336254, 43.427181, 17.898020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.053764, 43.690010, 17.792566>,  <39.884270, 43.847706, 17.729294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.053764, 43.690010, 17.792566>,  <40.336254, 43.427181, 17.898020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053764, 43.690010, 17.792566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403178, 0.067162, -0.912653,
		-0.581973, -0.750830, -0.312349,
		-0.706226, 0.657072, -0.263632,
		39.841896, 43.887131, 17.713476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123203, 43.184956, 17.247423>,  <40.336254, 43.427181, 17.898020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123203, 43.184956, 17.247423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.011047, 43.568436, 17.266508>,  <39.943752, 43.798523, 17.277960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.011047, 43.568436, 17.266508>,  <40.123203, 43.184956, 17.247423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011047, 43.568436, 17.266508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408434, 0.164143, -0.897908,
		-0.868656, -0.232276, -0.437589,
		-0.280390, 0.958700, 0.047714,
		39.926929, 43.856045, 17.280823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213730, 42.388157, 17.598286>,  <40.123203, 43.184956, 17.247423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213730, 42.388157, 17.598286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.062744, 42.438328, 17.231289>,  <39.972153, 42.468430, 17.011091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.062744, 42.438328, 17.231289>,  <40.213730, 42.388157, 17.598286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062744, 42.438328, 17.231289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873697, -0.376583, 0.307961,
		-0.306884, 0.917852, 0.251734,
		-0.377461, 0.125431, -0.917491,
		39.949505, 42.475956, 16.956041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569828, 42.803772, 17.642441>,  <40.213730, 42.388157, 17.598286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569828, 42.803772, 17.642441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.588375, 42.513947, 17.367382>,  <39.599503, 42.340050, 17.202347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.588375, 42.513947, 17.367382>,  <39.569828, 42.803772, 17.642441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588375, 42.513947, 17.367382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782686, -0.454087, 0.425685,
		-0.620687, 0.518471, -0.588163,
		0.046372, -0.724564, -0.687645,
		39.602287, 42.296577, 17.161089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879189, 42.727802, 17.563612>,  <39.569828, 42.803772, 17.642441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879189, 42.727802, 17.563612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.055523, 42.410248, 17.396086>,  <39.161324, 42.219715, 17.295570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.055523, 42.410248, 17.396086>,  <38.879189, 42.727802, 17.563612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055523, 42.410248, 17.396086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728188, -0.589129, 0.350243,
		-0.524787, 0.150572, -0.837811,
		0.440842, -0.793886, -0.418812,
		39.187775, 42.172081, 17.270441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374596, 42.400040, 17.157736>,  <38.879189, 42.727802, 17.563612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374596, 42.400040, 17.157736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.661678, 42.134693, 17.242443>,  <38.833927, 41.975487, 17.293268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.661678, 42.134693, 17.242443>,  <38.374596, 42.400040, 17.157736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661678, 42.134693, 17.242443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695068, -0.664028, 0.275586,
		-0.042192, -0.344984, -0.937660,
		0.717705, -0.663365, 0.211770,
		38.876991, 41.935684, 17.305975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172794, 41.756207, 16.913986>,  <38.374596, 42.400040, 17.157736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172794, 41.756207, 16.913986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441406, 41.632488, 17.183323>,  <38.602573, 41.558258, 17.344925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441406, 41.632488, 17.183323>,  <38.172794, 41.756207, 16.913986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441406, 41.632488, 17.183323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634822, -0.708828, 0.307513,
		0.382169, -0.633954, -0.672346,
		0.671527, -0.309297, 0.673340,
		38.642864, 41.539700, 17.385324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117752, 41.026165, 16.987837>,  <38.172794, 41.756207, 16.913986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117752, 41.026165, 16.987837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295094, 41.149380, 17.324539>,  <38.401501, 41.223309, 17.526560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295094, 41.149380, 17.324539>,  <38.117752, 41.026165, 16.987837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295094, 41.149380, 17.324539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527017, -0.670040, 0.522780,
		0.725043, -0.675397, -0.134728,
		0.443357, 0.308034, 0.841754,
		38.428101, 41.241791, 17.577065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203575, 40.413895, 17.381943>,  <38.117752, 41.026165, 16.987837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203575, 40.413895, 17.381943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.252804, 40.689140, 17.667980>,  <38.282341, 40.854286, 17.839602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.252804, 40.689140, 17.667980>,  <38.203575, 40.413895, 17.381943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252804, 40.689140, 17.667980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554914, -0.549677, 0.624440,
		0.822754, -0.473665, 0.314192,
		0.123072, 0.688110, 0.715092,
		38.289726, 40.895573, 17.882507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626312, 40.089668, 18.011805>,  <38.203575, 40.413895, 17.381943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626312, 40.089668, 18.011805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.442898, 40.416965, 18.150497>,  <38.332848, 40.613342, 18.233713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.442898, 40.416965, 18.150497>,  <38.626312, 40.089668, 18.011805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442898, 40.416965, 18.150497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397472, -0.537797, 0.743499,
		0.794834, 0.203105, 0.571828,
		-0.458535, 0.818244, 0.346731,
		38.305336, 40.662437, 18.254517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175041, 39.700844, 18.213833>,  <38.626312, 40.089668, 18.011805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175041, 39.700844, 18.213833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.199383, 39.358353, 18.008635>,  <39.213985, 39.152859, 17.885515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.199383, 39.358353, 18.008635>,  <39.175041, 39.700844, 18.213833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199383, 39.358353, 18.008635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509813, 0.468516, -0.721514,
		0.858130, -0.217628, 0.465028,
		0.060851, -0.856231, -0.512997,
		39.217640, 39.101482, 17.854736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923519, 39.720882, 17.918320>,  <39.175041, 39.700844, 18.213833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923519, 39.720882, 17.918320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.727684, 39.455299, 17.692234>,  <39.610184, 39.295952, 17.556583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.727684, 39.455299, 17.692234>,  <39.923519, 39.720882, 17.918320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727684, 39.455299, 17.692234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586863, 0.228509, -0.776773,
		0.644897, -0.712004, 0.277774,
		-0.489592, -0.663954, -0.565213,
		39.580807, 39.256115, 17.522671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412735, 39.424625, 17.486246>,  <39.923519, 39.720882, 17.918320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412735, 39.424625, 17.486246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064068, 39.371559, 17.297529>,  <39.854866, 39.339718, 17.184299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064068, 39.371559, 17.297529>,  <40.412735, 39.424625, 17.486246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064068, 39.371559, 17.297529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436327, 0.228304, -0.870342,
		0.223152, -0.964512, -0.141134,
		-0.871678, -0.132638, -0.471790,
		39.802567, 39.331760, 17.155991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578175, 38.902725, 16.924732>,  <40.412735, 39.424625, 17.486246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578175, 38.902725, 16.924732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247711, 39.115086, 16.849245>,  <40.049435, 39.242500, 16.803953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247711, 39.115086, 16.849245>,  <40.578175, 38.902725, 16.924732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247711, 39.115086, 16.849245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300031, 0.131010, -0.944890,
		-0.476917, -0.837247, -0.267521,
		-0.826154, 0.530899, -0.188719,
		39.999866, 39.274357, 16.792629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419952, 38.585720, 16.193844>,  <40.578175, 38.902725, 16.924732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419952, 38.585720, 16.193844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213089, 38.922607, 16.254793>,  <40.088970, 39.124741, 16.291363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.213089, 38.922607, 16.254793>,  <40.419952, 38.585720, 16.193844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213089, 38.922607, 16.254793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305866, 0.348136, -0.886142,
		-0.799371, -0.411668, -0.437647,
		-0.517157, 0.842218, 0.152375,
		40.057941, 39.175274, 16.300507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031166, 38.708794, 15.606483>,  <40.419952, 38.585720, 16.193844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031166, 38.708794, 15.606483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077682, 39.057217, 15.797366>,  <40.105591, 39.266270, 15.911897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077682, 39.057217, 15.797366>,  <40.031166, 38.708794, 15.606483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077682, 39.057217, 15.797366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419499, 0.392435, -0.818545,
		-0.900276, 0.295376, -0.319774,
		0.116288, 0.871061, 0.477210,
		40.112568, 39.318535, 15.940529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026794, 39.145527, 15.094882>,  <40.031166, 38.708794, 15.606483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026794, 39.145527, 15.094882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149769, 39.378231, 15.396089>,  <40.223553, 39.517853, 15.576813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.149769, 39.378231, 15.396089>,  <40.026794, 39.145527, 15.094882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149769, 39.378231, 15.396089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756858, 0.330144, -0.564065,
		-0.576758, 0.743340, -0.338816,
		0.307434, 0.581765, 0.753016,
		40.242001, 39.552761, 15.621994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099953, 39.774857, 14.728774>,  <40.026794, 39.145527, 15.094882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099953, 39.774857, 14.728774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.301350, 39.789188, 15.074078>,  <40.422188, 39.797787, 15.281260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.301350, 39.789188, 15.074078>,  <40.099953, 39.774857, 14.728774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301350, 39.789188, 15.074078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795484, 0.370720, -0.479346,
		-0.337202, 0.928053, 0.158152,
		0.503489, 0.035829, 0.863259,
		40.452396, 39.799938, 15.333055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284012, 40.527203, 14.825058>,  <40.099953, 39.774857, 14.728774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284012, 40.527203, 14.825058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.525059, 40.293865, 15.042892>,  <40.669685, 40.153862, 15.173592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.525059, 40.293865, 15.042892>,  <40.284012, 40.527203, 14.825058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525059, 40.293865, 15.042892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796821, 0.402208, -0.450895,
		0.043989, 0.705651, 0.707193,
		0.602613, -0.583340, 0.544584,
		40.705841, 40.118862, 15.206266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.889156, 33.055336, 28.868462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288254, 33.028511, 28.869904>,  <35.527714, 33.012417, 28.870768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288254, 33.028511, 28.869904>,  <34.889156, 33.055336, 28.868462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288254, 33.028511, 28.869904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034323, 0.463055, -0.885665,
		0.057728, 0.883789, 0.464312,
		0.997742, -0.067064, 0.003603,
		35.587578, 33.008392, 28.870985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237019, 33.703751, 28.798969>,  <34.889156, 33.055336, 28.868462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237019, 33.703751, 28.798969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.503433, 33.438793, 28.661776>,  <35.663280, 33.279819, 28.579460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.503433, 33.438793, 28.661776>,  <35.237019, 33.703751, 28.798969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503433, 33.438793, 28.661776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210519, 0.608040, -0.765486,
		0.715599, 0.437635, 0.544421,
		0.666033, -0.662392, -0.342982,
		35.703243, 33.240074, 28.558882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761280, 34.103951, 28.409252>,  <35.237019, 33.703751, 28.798969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761280, 34.103951, 28.409252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825809, 33.729111, 28.285437>,  <35.864525, 33.504208, 28.211147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825809, 33.729111, 28.285437>,  <35.761280, 34.103951, 28.409252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825809, 33.729111, 28.285437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367463, 0.348128, -0.862425,
		0.915940, 0.025384, 0.400511,
		0.161321, -0.937103, -0.309537,
		35.874207, 33.447979, 28.192575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529312, 34.003468, 28.215378>,  <35.761280, 34.103951, 28.409252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529312, 34.003468, 28.215378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272205, 33.756737, 28.033661>,  <36.117943, 33.608700, 27.924631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.272205, 33.756737, 28.033661>,  <36.529312, 34.003468, 28.215378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272205, 33.756737, 28.033661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340071, 0.301637, -0.890711,
		0.686445, -0.727008, 0.015883,
		-0.642764, -0.616825, -0.454292,
		36.079376, 33.571690, 27.897373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879349, 33.716805, 27.666979>,  <36.529312, 34.003468, 28.215378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879349, 33.716805, 27.666979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494633, 33.650974, 27.579464>,  <36.263802, 33.611477, 27.526955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494633, 33.650974, 27.579464>,  <36.879349, 33.716805, 27.666979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494633, 33.650974, 27.579464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149389, 0.354210, -0.923157,
		0.229421, -0.920572, -0.316092,
		-0.961795, -0.164571, -0.218786,
		36.206093, 33.601604, 27.513828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017570, 33.388462, 27.021877>,  <36.879349, 33.716805, 27.666979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017570, 33.388462, 27.021877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624485, 33.462219, 27.015144>,  <36.388634, 33.506474, 27.011105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624485, 33.462219, 27.015144>,  <37.017570, 33.388462, 27.021877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624485, 33.462219, 27.015144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099737, 0.450553, -0.887161,
		-0.155999, -0.873500, -0.461153,
		-0.982709, 0.184390, -0.016834,
		36.329674, 33.517536, 27.010094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729786, 33.087086, 26.479546>,  <37.017570, 33.388462, 27.021877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729786, 33.087086, 26.479546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469528, 33.376667, 26.571241>,  <36.313374, 33.550415, 26.626259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469528, 33.376667, 26.571241>,  <36.729786, 33.087086, 26.479546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469528, 33.376667, 26.571241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003599, 0.304810, -0.952406,
		-0.759375, -0.618851, -0.200929,
		-0.650643, 0.723957, 0.229238,
		36.274334, 33.593853, 26.640013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433571, 33.198772, 25.891373>,  <36.729786, 33.087086, 26.479546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433571, 33.198772, 25.891373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322392, 33.526337, 26.092222>,  <36.255684, 33.722874, 26.212732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.322392, 33.526337, 26.092222>,  <36.433571, 33.198772, 25.891373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322392, 33.526337, 26.092222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133771, 0.484632, -0.864429,
		-0.951236, -0.307438, -0.025157,
		-0.277950, 0.818910, 0.502126,
		36.239006, 33.772011, 26.242861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703094, 33.518234, 25.662109>,  <36.433571, 33.198772, 25.891373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703094, 33.518234, 25.662109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954105, 33.790707, 25.812952>,  <36.104710, 33.954189, 25.903458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954105, 33.790707, 25.812952>,  <35.703094, 33.518234, 25.662109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954105, 33.790707, 25.812952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121401, 0.564022, -0.816787,
		-0.769074, 0.466773, 0.436633,
		0.627524, 0.681177, 0.377108,
		36.142365, 33.995060, 25.926085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388008, 34.092117, 25.500626>,  <35.703094, 33.518234, 25.662109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388008, 34.092117, 25.500626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760643, 34.215954, 25.576830>,  <35.984226, 34.290257, 25.622553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760643, 34.215954, 25.576830>,  <35.388008, 34.092117, 25.500626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760643, 34.215954, 25.576830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009127, 0.543843, -0.839137,
		-0.363393, 0.779994, 0.509465,
		0.931591, 0.309587, 0.190510,
		36.040119, 34.308830, 25.633984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332741, 34.767651, 25.354092>,  <35.388008, 34.092117, 25.500626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332741, 34.767651, 25.354092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725471, 34.691921, 25.348902>,  <35.961109, 34.646484, 25.345787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.725471, 34.691921, 25.348902>,  <35.332741, 34.767651, 25.354092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725471, 34.691921, 25.348902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113325, 0.639781, -0.760156,
		0.152220, 0.744872, 0.649611,
		0.981828, -0.189328, -0.012975,
		36.020020, 34.635124, 25.345009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630165, 35.367409, 25.046396>,  <35.332741, 34.767651, 25.354092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630165, 35.367409, 25.046396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960037, 35.147579, 24.992918>,  <36.157959, 35.015682, 24.960831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.960037, 35.147579, 24.992918>,  <35.630165, 35.367409, 25.046396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960037, 35.147579, 24.992918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283541, 0.606233, -0.743025,
		0.489398, 0.574848, 0.655774,
		0.824678, -0.549574, -0.133696,
		36.207439, 34.982708, 24.952808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428463, 35.943413, 25.571030>,  <35.630165, 35.367409, 25.046396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428463, 35.943413, 25.571030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235722, 36.270451, 25.444948>,  <35.120079, 36.466675, 25.369299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235722, 36.270451, 25.444948>,  <35.428463, 35.943413, 25.571030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235722, 36.270451, 25.444948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786269, -0.244647, 0.567388,
		0.386782, 0.521230, 0.760735,
		-0.481851, 0.817598, -0.315202,
		35.091167, 36.515732, 25.350388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261074, 36.392765, 26.204817>,  <35.428463, 35.943413, 25.571030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261074, 36.392765, 26.204817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013000, 36.441067, 25.894773>,  <34.864159, 36.470047, 25.708748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013000, 36.441067, 25.894773>,  <35.261074, 36.392765, 26.204817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013000, 36.441067, 25.894773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780271, -0.196912, 0.593635,
		-0.080946, 0.972957, 0.216340,
		-0.620181, 0.120751, -0.775109,
		34.826946, 36.477291, 25.662241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625641, 36.914536, 26.469397>,  <35.261074, 36.392765, 26.204817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625641, 36.914536, 26.469397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485653, 36.741734, 26.136919>,  <34.401661, 36.638050, 25.937431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485653, 36.741734, 26.136919>,  <34.625641, 36.914536, 26.469397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485653, 36.741734, 26.136919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910705, -0.050903, 0.409908,
		-0.219394, 0.900432, -0.375617,
		-0.349974, -0.432008, -0.831196,
		34.380661, 36.612133, 25.887560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962589, 37.118000, 26.347521>,  <34.625641, 36.914536, 26.469397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962589, 37.118000, 26.347521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951202, 36.779419, 26.134838>,  <33.944370, 36.576271, 26.007229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.951202, 36.779419, 26.134838>,  <33.962589, 37.118000, 26.347521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951202, 36.779419, 26.134838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855643, -0.254366, 0.450747,
		-0.516783, 0.467782, -0.717019,
		-0.028466, -0.846450, -0.531706,
		33.942661, 36.525482, 25.975327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321537, 37.064400, 25.938055>,  <33.962589, 37.118000, 26.347521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321537, 37.064400, 25.938055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460587, 36.693779, 25.995544>,  <33.544018, 36.471405, 26.030039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460587, 36.693779, 25.995544>,  <33.321537, 37.064400, 25.938055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460587, 36.693779, 25.995544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863851, -0.256884, 0.433328,
		-0.364580, -0.274793, -0.889702,
		0.347626, -0.926552, 0.143725,
		33.564873, 36.415813, 26.038662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722233, 36.611305, 25.776051>,  <33.321537, 37.064400, 25.938055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722233, 36.611305, 25.776051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968407, 36.376747, 25.986719>,  <33.116112, 36.236012, 26.113121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.968407, 36.376747, 25.986719>,  <32.722233, 36.611305, 25.776051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968407, 36.376747, 25.986719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779984, -0.356922, 0.514035,
		-0.113448, -0.727149, -0.677041,
		0.615430, -0.586397, 0.526672,
		33.153034, 36.200829, 26.144720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252522, 36.177063, 25.953259>,  <32.722233, 36.611305, 25.776051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252522, 36.177063, 25.953259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587955, 36.070408, 26.143286>,  <32.789215, 36.006416, 26.257301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587955, 36.070408, 26.143286>,  <32.252522, 36.177063, 25.953259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587955, 36.070408, 26.143286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540014, -0.291766, 0.789467,
		-0.071890, -0.918574, -0.388655,
		0.838580, -0.266634, 0.475068,
		32.839531, 35.990417, 26.285807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324875, 35.444324, 26.039877>,  <32.252522, 36.177063, 25.953259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324875, 35.444324, 26.039877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511826, 35.659195, 26.320734>,  <32.623997, 35.788116, 26.489248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.511826, 35.659195, 26.320734>,  <32.324875, 35.444324, 26.039877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511826, 35.659195, 26.320734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635656, -0.347783, 0.689194,
		0.614411, -0.768432, 0.178914,
		0.467376, 0.537176, 0.702140,
		32.652039, 35.820347, 26.531376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231564, 35.056534, 26.518417>,  <32.324875, 35.444324, 26.039877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231564, 35.056534, 26.518417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323517, 35.403027, 26.695862>,  <32.378689, 35.610924, 26.802328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323517, 35.403027, 26.695862>,  <32.231564, 35.056534, 26.518417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323517, 35.403027, 26.695862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709330, -0.162951, 0.685783,
		0.666336, -0.472318, 0.576986,
		0.229888, 0.866235, 0.443610,
		32.392483, 35.662895, 26.828945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221870, 34.931561, 27.271589>,  <32.231564, 35.056534, 26.518417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221870, 34.931561, 27.271589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180504, 35.325352, 27.214869>,  <32.155685, 35.561626, 27.180836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.180504, 35.325352, 27.214869>,  <32.221870, 34.931561, 27.271589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180504, 35.325352, 27.214869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806356, 0.000483, 0.591430,
		0.582319, 0.175505, 0.793790,
		-0.103416, 0.984479, -0.141801,
		32.149479, 35.620697, 27.172329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805250, 35.223396, 27.841669>,  <32.221870, 34.931561, 27.271589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805250, 35.223396, 27.841669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794638, 35.533585, 27.589338>,  <31.788271, 35.719696, 27.437939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794638, 35.533585, 27.589338>,  <31.805250, 35.223396, 27.841669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794638, 35.533585, 27.589338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903210, 0.251828, 0.347555,
		0.428378, 0.578992, 0.693730,
		-0.026530, 0.775468, -0.630829,
		31.786678, 35.766224, 27.400089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467243, 35.677631, 28.190985>,  <31.805250, 35.223396, 27.841669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467243, 35.677631, 28.190985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420094, 35.813969, 27.817904>,  <31.391804, 35.895771, 27.594055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420094, 35.813969, 27.817904>,  <31.467243, 35.677631, 28.190985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420094, 35.813969, 27.817904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954310, 0.220836, 0.201306,
		0.274587, 0.913816, 0.299236,
		-0.117874, 0.340840, -0.932702,
		31.384731, 35.916222, 27.538094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111620, 36.318558, 28.258829>,  <31.467243, 35.677631, 28.190985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111620, 36.318558, 28.258829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047218, 36.191998, 27.884884>,  <31.008577, 36.116062, 27.660517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047218, 36.191998, 27.884884>,  <31.111620, 36.318558, 28.258829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047218, 36.191998, 27.884884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961643, 0.263432, 0.076460,
		0.222080, 0.911313, -0.346683,
		-0.161006, -0.316405, -0.934861,
		30.998917, 36.097076, 27.604425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611994, 36.798405, 27.904837>,  <31.111620, 36.318558, 28.258829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611994, 36.798405, 27.904837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582420, 36.465111, 27.685658>,  <30.564676, 36.265133, 27.554150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582420, 36.465111, 27.685658>,  <30.611994, 36.798405, 27.904837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582420, 36.465111, 27.685658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997095, 0.071851, 0.025279,
		0.018308, 0.548227, -0.836129,
		-0.073935, -0.833238, -0.547950,
		30.560240, 36.215141, 27.521273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951628, 37.522259, 28.131865>,  <30.611994, 36.798405, 27.904837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951628, 37.522259, 28.131865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.788198, 37.862541, 28.264153>,  <30.690142, 38.066711, 28.343525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.788198, 37.862541, 28.264153>,  <30.951628, 37.522259, 28.131865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788198, 37.862541, 28.264153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244272, 0.451041, -0.858425,
		-0.879432, -0.269943, -0.392085,
		-0.408572, 0.850701, 0.330720,
		30.665627, 38.117752, 28.363369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603346, 37.963413, 27.622734>,  <30.951628, 37.522259, 28.131865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603346, 37.963413, 27.622734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.682131, 38.237434, 27.903276>,  <30.729403, 38.401848, 28.071602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.682131, 38.237434, 27.903276>,  <30.603346, 37.963413, 27.622734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682131, 38.237434, 27.903276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353888, 0.617465, -0.702496,
		-0.914314, 0.386567, -0.120816,
		0.196962, 0.685057, 0.701358,
		30.741219, 38.442951, 28.113684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330339, 38.643593, 27.342522>,  <30.603346, 37.963413, 27.622734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330339, 38.643593, 27.342522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.617155, 38.692703, 27.616976>,  <30.789244, 38.722168, 27.781649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.617155, 38.692703, 27.616976>,  <30.330339, 38.643593, 27.342522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617155, 38.692703, 27.616976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560187, 0.484270, -0.672067,
		-0.414786, 0.866262, 0.278464,
		0.717038, 0.122772, 0.686137,
		30.832266, 38.729534, 27.822817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523052, 39.348358, 27.283339>,  <30.330339, 38.643593, 27.342522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523052, 39.348358, 27.283339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823511, 39.140602, 27.446318>,  <31.003786, 39.015949, 27.544106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823511, 39.140602, 27.446318>,  <30.523052, 39.348358, 27.283339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823511, 39.140602, 27.446318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654016, 0.501680, -0.566198,
		0.089669, 0.691775, 0.716524,
		0.751148, -0.519388, 0.407447,
		31.048855, 38.984787, 27.568552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036564, 39.779282, 27.324831>,  <30.523052, 39.348358, 27.283339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036564, 39.779282, 27.324831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215260, 39.421425, 27.322605>,  <31.322477, 39.206711, 27.321270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215260, 39.421425, 27.322605>,  <31.036564, 39.779282, 27.324831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215260, 39.421425, 27.322605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752964, 0.379336, -0.537727,
		0.483185, 0.236036, 0.843101,
		0.446741, -0.894646, -0.005564,
		31.349281, 39.153030, 27.320936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616301, 39.950108, 27.642950>,  <31.036564, 39.779282, 27.324831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616301, 39.950108, 27.642950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697567, 39.605728, 27.456409>,  <31.746326, 39.399101, 27.344484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697567, 39.605728, 27.456409>,  <31.616301, 39.950108, 27.642950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697567, 39.605728, 27.456409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749179, 0.443350, -0.492109,
		0.630440, -0.249400, 0.735082,
		0.203167, -0.860953, -0.466351,
		31.758516, 39.347443, 27.316504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330894, 40.014481, 27.675360>,  <31.616301, 39.950108, 27.642950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330894, 40.014481, 27.675360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235348, 39.743118, 27.397453>,  <32.178020, 39.580299, 27.230709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235348, 39.743118, 27.397453>,  <32.330894, 40.014481, 27.675360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235348, 39.743118, 27.397453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662908, 0.408897, -0.627181,
		0.709574, -0.610380, 0.352052,
		-0.238866, -0.678410, -0.694768,
		32.163689, 39.539597, 27.189022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967323, 39.660622, 27.561975>,  <32.330894, 40.014481, 27.675360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967323, 39.660622, 27.561975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739891, 39.618839, 27.235588>,  <32.603432, 39.593769, 27.039755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.739891, 39.618839, 27.235588>,  <32.967323, 39.660622, 27.561975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739891, 39.618839, 27.235588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784140, 0.231035, -0.575976,
		0.248683, -0.967322, -0.049451,
		-0.568579, -0.104460, -0.815970,
		32.569317, 39.587502, 26.990797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362000, 39.176468, 27.155979>,  <32.967323, 39.660622, 27.561975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362000, 39.176468, 27.155979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115936, 39.395657, 26.929245>,  <32.968296, 39.527172, 26.793205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115936, 39.395657, 26.929245>,  <33.362000, 39.176468, 27.155979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115936, 39.395657, 26.929245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739269, 0.151083, -0.656243,
		-0.273966, -0.822737, -0.498042,
		-0.615161, 0.547975, -0.566833,
		32.931389, 39.560051, 26.759195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621925, 39.159920, 26.525301>,  <33.362000, 39.176468, 27.155979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621925, 39.159920, 26.525301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351471, 39.442345, 26.441090>,  <33.189198, 39.611797, 26.390562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.351471, 39.442345, 26.441090>,  <33.621925, 39.159920, 26.525301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351471, 39.442345, 26.441090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497421, 0.226653, -0.837377,
		-0.543521, -0.670901, -0.504457,
		-0.676134, 0.706060, -0.210530,
		33.148632, 39.654163, 26.377930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403984, 39.072327, 25.865240>,  <33.621925, 39.159920, 26.525301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403984, 39.072327, 25.865240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389721, 39.452614, 25.988436>,  <33.381165, 39.680786, 26.062353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389721, 39.452614, 25.988436>,  <33.403984, 39.072327, 25.865240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389721, 39.452614, 25.988436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474237, 0.287369, -0.832177,
		-0.879675, 0.116389, -0.461114,
		-0.035654, 0.950722, 0.307987,
		33.379025, 39.737831, 26.080832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487049, 39.379471, 25.258709>,  <33.403984, 39.072327, 25.865240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487049, 39.379471, 25.258709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519020, 39.686050, 25.513636>,  <33.538204, 39.869999, 25.666592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519020, 39.686050, 25.513636>,  <33.487049, 39.379471, 25.258709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519020, 39.686050, 25.513636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395951, 0.562343, -0.725943,
		-0.914787, 0.310369, -0.258528,
		0.079929, 0.766447, 0.637314,
		33.542999, 39.915985, 25.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363731, 39.928665, 24.848732>,  <33.487049, 39.379471, 25.258709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363731, 39.928665, 24.848732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570648, 40.109890, 25.139153>,  <33.694798, 40.218624, 25.313404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.570648, 40.109890, 25.139153>,  <33.363731, 39.928665, 24.848732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570648, 40.109890, 25.139153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534531, 0.491499, -0.687536,
		-0.668348, 0.743751, 0.012071,
		0.517288, 0.453061, 0.726050,
		33.725834, 40.245808, 25.356968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386074, 40.641674, 24.655539>,  <33.363731, 39.928665, 24.848732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386074, 40.641674, 24.655539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692520, 40.562984, 24.900282>,  <33.876389, 40.515770, 25.047127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692520, 40.562984, 24.900282>,  <33.386074, 40.641674, 24.655539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692520, 40.562984, 24.900282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606631, 0.535800, -0.587296,
		-0.212295, 0.821107, 0.529825,
		0.766113, -0.196728, 0.611857,
		33.922356, 40.503967, 25.083839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518513, 41.259151, 24.852091>,  <33.386074, 40.641674, 24.655539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518513, 41.259151, 24.852091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844391, 41.035652, 24.914152>,  <34.039917, 40.901550, 24.951389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844391, 41.035652, 24.914152>,  <33.518513, 41.259151, 24.852091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844391, 41.035652, 24.914152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552906, 0.667786, -0.498355,
		0.174847, 0.491792, 0.852977,
		0.814693, -0.558751, 0.155154,
		34.088799, 40.868027, 24.960699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111229, 41.780453, 24.876648>,  <33.518513, 41.259151, 24.852091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111229, 41.780453, 24.876648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283070, 41.423382, 24.822153>,  <34.386173, 41.209137, 24.789455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283070, 41.423382, 24.822153>,  <34.111229, 41.780453, 24.876648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283070, 41.423382, 24.822153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638758, 0.407049, -0.652916,
		0.638301, 0.193473, 0.745077,
		0.429605, -0.892681, -0.136238,
		34.411949, 41.155579, 24.781282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791447, 41.940411, 24.898907>,  <34.111229, 41.780453, 24.876648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791447, 41.940411, 24.898907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762169, 41.595783, 24.697973>,  <34.744602, 41.389008, 24.577414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762169, 41.595783, 24.697973>,  <34.791447, 41.940411, 24.898907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762169, 41.595783, 24.697973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648559, 0.341516, -0.680249,
		0.757637, -0.375584, 0.533782,
		-0.073195, -0.861571, -0.502333,
		34.740211, 41.337311, 24.547274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459770, 41.662518, 24.871815>,  <34.791447, 41.940411, 24.898907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459770, 41.662518, 24.871815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268364, 41.481110, 24.571058>,  <35.153522, 41.372265, 24.390604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.268364, 41.481110, 24.571058>,  <35.459770, 41.662518, 24.871815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268364, 41.481110, 24.571058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701578, 0.317455, -0.637974,
		0.528028, -0.832790, 0.166275,
		-0.478514, -0.453523, -0.751892,
		35.124809, 41.345055, 24.345491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929844, 41.316502, 24.559855>,  <35.459770, 41.662518, 24.871815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929844, 41.316502, 24.559855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639622, 41.373093, 24.290468>,  <35.465488, 41.407047, 24.128836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639622, 41.373093, 24.290468>,  <35.929844, 41.316502, 24.559855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639622, 41.373093, 24.290468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655450, 0.440225, -0.613668,
		0.209657, -0.886672, -0.412137,
		-0.725555, 0.141475, -0.673465,
		35.421955, 41.415535, 24.088428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283047, 41.112045, 24.027487>,  <35.929844, 41.316502, 24.559855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283047, 41.112045, 24.027487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956432, 41.295094, 23.886721>,  <35.760464, 41.404922, 23.802261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956432, 41.295094, 23.886721>,  <36.283047, 41.112045, 24.027487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956432, 41.295094, 23.886721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521932, 0.324714, -0.788763,
		-0.246685, -0.827732, -0.503990,
		-0.816538, 0.457625, -0.351918,
		35.711472, 41.432381, 23.781145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409477, 41.084988, 23.322519>,  <36.283047, 41.112045, 24.027487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409477, 41.084988, 23.322519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135212, 41.371120, 23.376442>,  <35.970654, 41.542801, 23.408794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.135212, 41.371120, 23.376442>,  <36.409477, 41.084988, 23.322519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135212, 41.371120, 23.376442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500971, 0.598079, -0.625563,
		-0.528108, -0.361390, -0.768439,
		-0.685660, 0.715331, 0.134805,
		35.929516, 41.585720, 23.416883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161636, 41.284294, 22.664408>,  <36.409477, 41.084988, 23.322519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161636, 41.284294, 22.664408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136555, 41.576427, 22.936493>,  <36.121506, 41.751705, 23.099743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136555, 41.576427, 22.936493>,  <36.161636, 41.284294, 22.664408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136555, 41.576427, 22.936493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364025, 0.651336, -0.665768,
		-0.929276, 0.205867, -0.306699,
		-0.062704, 0.730328, 0.680212,
		36.117744, 41.795525, 23.140556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884243, 41.789028, 22.334953>,  <36.161636, 41.284294, 22.664408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884243, 41.789028, 22.334953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054283, 41.990505, 22.635773>,  <36.156307, 42.111393, 22.816265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054283, 41.990505, 22.635773>,  <35.884243, 41.789028, 22.334953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054283, 41.990505, 22.635773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245033, 0.735798, -0.631317,
		-0.871348, 0.452651, 0.189367,
		0.425102, 0.503695, 0.752050,
		36.181812, 42.141613, 22.861387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752964, 42.489109, 22.226374>,  <35.884243, 41.789028, 22.334953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752964, 42.489109, 22.226374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043339, 42.503666, 22.501093>,  <36.217564, 42.512402, 22.665924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043339, 42.503666, 22.501093>,  <35.752964, 42.489109, 22.226374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043339, 42.503666, 22.501093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476794, 0.693051, -0.540691,
		-0.495666, 0.719969, 0.485757,
		0.725935, 0.036397, 0.686799,
		36.261120, 42.514584, 22.707132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944061, 43.218861, 22.303591>,  <35.752964, 42.489109, 22.226374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944061, 43.218861, 22.303591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249130, 42.993805, 22.431196>,  <36.432171, 42.858772, 22.507759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.249130, 42.993805, 22.431196>,  <35.944061, 43.218861, 22.303591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249130, 42.993805, 22.431196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610027, 0.461828, -0.643880,
		0.214943, 0.685676, 0.695448,
		0.762671, -0.562640, 0.319014,
		36.477932, 42.825012, 22.526899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514206, 43.664188, 22.245682>,  <35.944061, 43.218861, 22.303591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514206, 43.664188, 22.245682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668648, 43.297859, 22.289845>,  <36.761314, 43.078060, 22.316341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668648, 43.297859, 22.289845>,  <36.514206, 43.664188, 22.245682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668648, 43.297859, 22.289845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744674, 0.238819, -0.623238,
		0.544408, 0.322855, 0.774199,
		0.386109, -0.915822, 0.110407,
		36.784481, 43.023113, 22.322968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324860, 43.707420, 22.575920>,  <36.514206, 43.664188, 22.245682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324860, 43.707420, 22.575920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242088, 43.377094, 22.366077>,  <37.192425, 43.178898, 22.240171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242088, 43.377094, 22.366077>,  <37.324860, 43.707420, 22.575920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242088, 43.377094, 22.366077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676596, 0.266526, -0.686428,
		0.706683, -0.496984, 0.503592,
		-0.206923, -0.825815, -0.524607,
		37.180012, 43.129349, 22.208696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960304, 43.268875, 22.517103>,  <37.324860, 43.707420, 22.575920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960304, 43.268875, 22.517103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712017, 43.243198, 22.204542>,  <37.563046, 43.227791, 22.017006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712017, 43.243198, 22.204542>,  <37.960304, 43.268875, 22.517103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712017, 43.243198, 22.204542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710180, 0.376252, -0.595045,
		0.332201, -0.924291, -0.187958,
		-0.620714, -0.064191, -0.781404,
		37.525803, 43.223942, 21.970121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117939, 42.586536, 22.773294>,  <37.960304, 43.268875, 22.517103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117939, 42.586536, 22.773294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.484726, 42.550529, 22.928766>,  <38.704796, 42.528923, 23.022049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.484726, 42.550529, 22.928766>,  <38.117939, 42.586536, 22.773294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484726, 42.550529, 22.928766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396587, -0.311893, 0.863389,
		0.043504, -0.945843, -0.321696,
		0.916966, -0.090019, 0.388678,
		38.759815, 42.523525, 23.045370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272705, 41.850876, 22.978418>,  <38.117939, 42.586536, 22.773294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272705, 41.850876, 22.978418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499588, 42.098209, 23.196020>,  <38.635719, 42.246609, 23.326580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499588, 42.098209, 23.196020>,  <38.272705, 41.850876, 22.978418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499588, 42.098209, 23.196020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272424, -0.482489, 0.832460,
		0.777214, -0.620377, -0.105222,
		0.567207, 0.618334, 0.544003,
		38.669750, 42.283710, 23.359221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792248, 41.478241, 23.353523>,  <38.272705, 41.850876, 22.978418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792248, 41.478241, 23.353523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789787, 41.805229, 23.583900>,  <38.788311, 42.001423, 23.722126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.789787, 41.805229, 23.583900>,  <38.792248, 41.478241, 23.353523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789787, 41.805229, 23.583900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252046, -0.558625, 0.790197,
		0.967696, -0.140305, 0.209475,
		-0.006150, 0.817467, 0.575942,
		38.787941, 42.050468, 23.756683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062630, 41.219864, 23.949854>,  <38.792248, 41.478241, 23.353523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062630, 41.219864, 23.949854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.887749, 41.567753, 24.041447>,  <38.782822, 41.776485, 24.096403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.887749, 41.567753, 24.041447>,  <39.062630, 41.219864, 23.949854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887749, 41.567753, 24.041447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355357, -0.400944, 0.844373,
		0.826181, 0.287792, 0.484357,
		-0.437204, 0.869724, 0.228983,
		38.756588, 41.828671, 24.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231197, 41.284344, 24.652615>,  <39.062630, 41.219864, 23.949854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231197, 41.284344, 24.652615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908398, 41.505795, 24.570396>,  <38.714718, 41.638664, 24.521065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.908398, 41.505795, 24.570396>,  <39.231197, 41.284344, 24.652615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908398, 41.505795, 24.570396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339005, -0.149292, 0.928864,
		0.483554, 0.819276, 0.308160,
		-0.807002, 0.553623, -0.205547,
		38.666298, 41.671883, 24.508732>
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
