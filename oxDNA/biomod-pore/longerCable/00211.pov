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
	<24.359129, 35.253330, 34.952999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398741, 34.884914, 35.103668>,  <24.422508, 34.663864, 35.194069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398741, 34.884914, 35.103668>,  <24.359129, 35.253330, 34.952999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.398741, 34.884914, 35.103668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853445, -0.116038, -0.508101,
		0.511689, 0.371788, 0.774563,
		0.099027, -0.921037, 0.376676,
		24.428450, 34.608604, 35.216671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939835, 35.116264, 35.413013>,  <24.359129, 35.253330, 34.952999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939835, 35.116264, 35.413013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830935, 34.794544, 35.201736>,  <24.765594, 34.601513, 35.074970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830935, 34.794544, 35.201736>,  <24.939835, 35.116264, 35.413013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830935, 34.794544, 35.201736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769492, 0.147591, -0.621368,
		0.577720, -0.575609, 0.578717,
		-0.272251, -0.804295, -0.528193,
		24.749260, 34.553257, 35.043278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942812, 35.328045, 36.172031>,  <24.939835, 35.116264, 35.413013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942812, 35.328045, 36.172031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167173, 34.997845, 36.197124>,  <25.301790, 34.799725, 36.212181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167173, 34.997845, 36.197124>,  <24.942812, 35.328045, 36.172031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167173, 34.997845, 36.197124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656442, -0.489643, -0.573877,
		0.504453, 0.280708, -0.816536,
		0.560902, -0.825502, 0.062733,
		25.335443, 34.750195, 36.215946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638773, 35.474297, 36.457195>,  <24.942812, 35.328045, 36.172031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638773, 35.474297, 36.457195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958080, 35.571693, 36.236839>,  <26.149664, 35.630131, 36.104626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958080, 35.571693, 36.236839>,  <25.638773, 35.474297, 36.457195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958080, 35.571693, 36.236839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536907, 0.702165, -0.467649,
		0.272944, 0.669085, 0.691250,
		0.798269, 0.243495, -0.550887,
		26.197561, 35.644741, 36.071571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412575, 35.668758, 36.631161>,  <25.638773, 35.474297, 36.457195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412575, 35.668758, 36.631161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678547, 35.924690, 36.785297>,  <26.838131, 36.078251, 36.877777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678547, 35.924690, 36.785297>,  <26.412575, 35.668758, 36.631161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678547, 35.924690, 36.785297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490987, 0.763218, -0.420036,
		-0.562849, 0.090099, 0.821635,
		0.664931, 0.639829, 0.385339,
		26.878027, 36.116638, 36.900898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067122, 36.211346, 37.123451>,  <26.412575, 35.668758, 36.631161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067122, 36.211346, 37.123451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353758, 36.300327, 36.859024>,  <26.525740, 36.353718, 36.700367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353758, 36.300327, 36.859024>,  <26.067122, 36.211346, 37.123451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353758, 36.300327, 36.859024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626833, 0.621065, -0.470487,
		0.305902, 0.751526, 0.584493,
		0.716592, 0.222457, -0.661067,
		26.568735, 36.367065, 36.660706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153641, 36.941776, 37.117115>,  <26.067122, 36.211346, 37.123451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153641, 36.941776, 37.117115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297977, 36.795052, 36.774128>,  <26.384579, 36.707016, 36.568336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297977, 36.795052, 36.774128>,  <26.153641, 36.941776, 37.117115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297977, 36.795052, 36.774128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662441, 0.546366, -0.512500,
		0.656480, 0.752949, -0.045841,
		0.360840, -0.366813, -0.857463,
		26.406229, 36.685009, 36.516888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325047, 37.414364, 36.638638>,  <26.153641, 36.941776, 37.117115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325047, 37.414364, 36.638638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243896, 37.105209, 36.398144>,  <26.195206, 36.919716, 36.253849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243896, 37.105209, 36.398144>,  <26.325047, 37.414364, 36.638638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243896, 37.105209, 36.398144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668276, 0.558068, -0.491902,
		0.715715, 0.301995, -0.629723,
		-0.202876, -0.772890, -0.601234,
		26.183033, 36.873341, 36.217773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304615, 37.656666, 35.928448>,  <26.325047, 37.414364, 36.638638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304615, 37.656666, 35.928448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076509, 37.328403, 35.942955>,  <25.939646, 37.131447, 35.951660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076509, 37.328403, 35.942955>,  <26.304615, 37.656666, 35.928448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076509, 37.328403, 35.942955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704428, 0.465827, -0.535525,
		0.422587, -0.330942, -0.843740,
		-0.570264, -0.820660, 0.036272,
		25.905430, 37.082207, 35.953835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165220, 37.673576, 35.265499>,  <26.304615, 37.656666, 35.928448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165220, 37.673576, 35.265499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906330, 37.446190, 35.468655>,  <25.750996, 37.309757, 35.590549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906330, 37.446190, 35.468655>,  <26.165220, 37.673576, 35.265499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906330, 37.446190, 35.468655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762291, 0.485944, -0.427516,
		-0.003778, -0.663857, -0.747850,
		-0.647223, -0.568464, 0.507888,
		25.712164, 37.275650, 35.621021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663521, 37.515877, 34.735603>,  <26.165220, 37.673576, 35.265499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663521, 37.515877, 34.735603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526859, 37.484989, 35.110264>,  <25.444862, 37.466457, 35.335060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526859, 37.484989, 35.110264>,  <25.663521, 37.515877, 34.735603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526859, 37.484989, 35.110264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865283, 0.414832, -0.281423,
		-0.366823, -0.906616, -0.208539,
		-0.341651, -0.077213, 0.936650,
		25.424364, 37.461826, 35.391258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990957, 37.684311, 34.964237>,  <25.663521, 37.515877, 34.735603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990957, 37.684311, 34.964237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765104, 37.879036, 35.230831>,  <24.629593, 37.995872, 35.390789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765104, 37.879036, 35.230831>,  <24.990957, 37.684311, 34.964237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765104, 37.879036, 35.230831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822219, 0.261597, 0.505493,
		0.071729, 0.833416, -0.547971,
		-0.564634, 0.486811, 0.666486,
		24.595715, 38.025078, 35.430779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083942, 38.396473, 34.963257>,  <24.990957, 37.684311, 34.964237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083942, 38.396473, 34.963257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009609, 38.263302, 35.333042>,  <24.965010, 38.183399, 35.554913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009609, 38.263302, 35.333042>,  <25.083942, 38.396473, 34.963257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009609, 38.263302, 35.333042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879291, 0.363564, 0.307683,
		-0.438536, 0.870047, 0.225178,
		-0.185832, -0.332927, 0.924460,
		24.953859, 38.163425, 35.610378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419668, 38.101604, 35.467533>,  <25.083942, 38.396473, 34.963257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419668, 38.101604, 35.467533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284412, 38.409725, 35.683788>,  <25.203259, 38.594597, 35.813541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284412, 38.409725, 35.683788>,  <25.419668, 38.101604, 35.467533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284412, 38.409725, 35.683788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738911, -0.573082, 0.354383,
		0.582814, -0.279653, 0.762969,
		-0.338139, 0.770306, 0.540639,
		25.182970, 38.640816, 35.845982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.404860, 37.889439, 36.201588>,  <25.419668, 38.101604, 35.467533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.404860, 37.889439, 36.201588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132181, 38.166576, 36.107552>,  <24.968575, 38.332859, 36.051132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132181, 38.166576, 36.107552>,  <25.404860, 37.889439, 36.201588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132181, 38.166576, 36.107552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729847, -0.621498, 0.284718,
		0.051158, 0.365668, 0.929339,
		-0.681694, 0.692841, -0.235087,
		24.927673, 38.374428, 36.037025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876534, 37.848118, 36.750072>,  <25.404860, 37.889439, 36.201588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876534, 37.848118, 36.750072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684500, 38.032543, 36.451561>,  <24.569279, 38.143200, 36.272453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684500, 38.032543, 36.451561>,  <24.876534, 37.848118, 36.750072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684500, 38.032543, 36.451561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860225, -0.414100, 0.297547,
		-0.171847, 0.784819, 0.595423,
		-0.480085, 0.461065, -0.746283,
		24.540474, 38.170864, 36.227676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836582, 37.124680, 36.470234>,  <24.876534, 37.848118, 36.750072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836582, 37.124680, 36.470234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033394, 37.221626, 36.135769>,  <25.151480, 37.279793, 35.935089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033394, 37.221626, 36.135769>,  <24.836582, 37.124680, 36.470234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033394, 37.221626, 36.135769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428047, -0.903701, -0.010061,
		-0.758080, -0.352967, -0.548388,
		0.492027, 0.242362, -0.836164,
		25.181002, 37.294334, 35.884918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807119, 36.540436, 36.150997>,  <24.836582, 37.124680, 36.470234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.807119, 36.540436, 36.150997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090652, 36.758987, 35.972546>,  <25.260773, 36.890118, 35.865475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090652, 36.758987, 35.972546>,  <24.807119, 36.540436, 36.150997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090652, 36.758987, 35.972546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580825, -0.810981, -0.070373,
		-0.400249, -0.209238, -0.892200,
		0.708832, 0.546379, -0.446125,
		25.303303, 36.922901, 35.838707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255049, 35.969650, 35.809231>,  <24.807119, 36.540436, 36.150997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255049, 35.969650, 35.809231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465376, 36.306385, 35.857948>,  <25.591572, 36.508427, 35.887177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465376, 36.306385, 35.857948>,  <25.255049, 35.969650, 35.809231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465376, 36.306385, 35.857948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836374, -0.537773, 0.106198,
		0.154897, 0.046023, -0.986858,
		0.525818, 0.841832, 0.121792,
		25.623121, 36.558933, 35.894485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937216, 35.886223, 35.413681>,  <25.255049, 35.969650, 35.809231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937216, 35.886223, 35.413681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008459, 36.185112, 35.669785>,  <26.051205, 36.364445, 35.823448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008459, 36.185112, 35.669785>,  <25.937216, 35.886223, 35.413681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008459, 36.185112, 35.669785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882190, -0.409495, 0.232497,
		0.435911, 0.523423, -0.732127,
		0.178108, 0.747223, 0.640262,
		26.061892, 36.409279, 35.861862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586739, 35.987823, 35.341667>,  <25.937216, 35.886223, 35.413681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586739, 35.987823, 35.341667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507868, 36.148716, 35.699287>,  <26.460546, 36.245251, 35.913860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507868, 36.148716, 35.699287>,  <26.586739, 35.987823, 35.341667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507868, 36.148716, 35.699287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879698, -0.329940, 0.342447,
		0.432727, 0.854020, -0.288785,
		-0.197175, 0.402230, 0.894054,
		26.448715, 36.269386, 35.967503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189348, 36.383373, 35.656853>,  <26.586739, 35.987823, 35.341667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189348, 36.383373, 35.656853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942446, 36.285370, 35.955910>,  <26.794304, 36.226570, 36.135342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942446, 36.285370, 35.955910>,  <27.189348, 36.383373, 35.656853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942446, 36.285370, 35.955910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776339, -0.343834, 0.528276,
		0.127634, 0.906505, 0.402441,
		-0.617257, -0.245005, 0.747640,
		26.757269, 36.211868, 36.180202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723955, 36.791599, 35.731125>,  <27.189348, 36.383373, 35.656853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723955, 36.791599, 35.731125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075903, 36.824730, 35.543949>,  <28.287071, 36.844608, 35.431644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075903, 36.824730, 35.543949>,  <27.723955, 36.791599, 35.731125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075903, 36.824730, 35.543949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275149, -0.891636, 0.359552,
		-0.387452, -0.445112, -0.807314,
		0.879872, 0.082823, -0.467938,
		28.339865, 36.849575, 35.403568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941757, 36.337280, 35.171391>,  <27.723955, 36.791599, 35.731125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941757, 36.337280, 35.171391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245565, 36.462406, 35.399521>,  <28.427851, 36.537479, 35.536400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245565, 36.462406, 35.399521>,  <27.941757, 36.337280, 35.171391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245565, 36.462406, 35.399521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046983, -0.900870, 0.431539,
		0.648783, -0.300968, -0.698927,
		0.759522, 0.312813, 0.570329,
		28.473421, 36.556252, 35.570618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650848, 36.009964, 34.964050>,  <27.941757, 36.337280, 35.171391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650848, 36.009964, 34.964050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615906, 36.082386, 35.355885>,  <28.594940, 36.125839, 35.590984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615906, 36.082386, 35.355885>,  <28.650848, 36.009964, 34.964050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615906, 36.082386, 35.355885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153047, -0.969230, 0.192792,
		0.984350, 0.166764, 0.056956,
		-0.087355, 0.181058, 0.979585,
		28.589699, 36.136703, 35.649761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144547, 35.702175, 35.294117>,  <28.650848, 36.009964, 34.964050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144547, 35.702175, 35.294117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864361, 35.750824, 35.575417>,  <28.696249, 35.780014, 35.744194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864361, 35.750824, 35.575417>,  <29.144547, 35.702175, 35.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864361, 35.750824, 35.575417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036466, -0.990184, 0.134931,
		0.712755, 0.068870, 0.698024,
		-0.700465, 0.121627, 0.703247,
		28.654221, 35.787312, 35.786392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393085, 35.351406, 35.854290>,  <29.144547, 35.702175, 35.294117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393085, 35.351406, 35.854290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003616, 35.411190, 35.923138>,  <28.769936, 35.447060, 35.964447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003616, 35.411190, 35.923138>,  <29.393085, 35.351406, 35.854290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003616, 35.411190, 35.923138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046046, -0.868451, 0.493631,
		0.223256, 0.472709, 0.852469,
		-0.973672, 0.149459, 0.172120,
		28.711515, 35.456028, 35.974773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202646, 34.769764, 36.176151>,  <29.393085, 35.351406, 35.854290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202646, 34.769764, 36.176151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839115, 34.936546, 36.181473>,  <28.620996, 35.036617, 36.184666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839115, 34.936546, 36.181473>,  <29.202646, 34.769764, 36.176151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839115, 34.936546, 36.181473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375663, -0.831856, 0.408525,
		0.181402, 0.366283, 0.912651,
		-0.908830, 0.416956, 0.013301,
		28.566465, 35.061634, 36.185463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884224, 34.867905, 36.890633>,  <29.202646, 34.769764, 36.176151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884224, 34.867905, 36.890633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607809, 34.807472, 36.607891>,  <28.441961, 34.771214, 36.438248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.607809, 34.807472, 36.607891>,  <28.884224, 34.867905, 36.890633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607809, 34.807472, 36.607891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328584, -0.805368, 0.493371,
		-0.643818, 0.573198, 0.506894,
		-0.691036, -0.151084, -0.706855,
		28.400497, 34.762146, 36.395836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135298, 34.650959, 37.184818>,  <28.884224, 34.867905, 36.890633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135298, 34.650959, 37.184818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182268, 34.515419, 36.811424>,  <28.210451, 34.434093, 36.587387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182268, 34.515419, 36.811424>,  <28.135298, 34.650959, 37.184818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182268, 34.515419, 36.811424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320261, -0.902685, 0.287388,
		-0.940023, 0.265211, -0.214521,
		0.117427, -0.338854, -0.933482,
		28.217497, 34.413761, 36.531380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516447, 34.382629, 36.978519>,  <28.135298, 34.650959, 37.184818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516447, 34.382629, 36.978519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807459, 34.195358, 36.777916>,  <27.982065, 34.082996, 36.657555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807459, 34.195358, 36.777916>,  <27.516447, 34.382629, 36.978519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807459, 34.195358, 36.777916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334550, -0.880272, 0.336447,
		-0.598981, -0.076995, -0.797053,
		0.727528, -0.468180, -0.501508,
		28.025717, 34.054905, 36.627464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111231, 33.955372, 36.508572>,  <27.516447, 34.382629, 36.978519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111231, 33.955372, 36.508572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480886, 33.839752, 36.608505>,  <27.702681, 33.770382, 36.668465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480886, 33.839752, 36.608505>,  <27.111231, 33.955372, 36.508572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480886, 33.839752, 36.608505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355700, -0.889605, 0.286496,
		0.139443, -0.353628, -0.924934,
		0.924139, -0.289050, 0.249835,
		27.758129, 33.753036, 36.683456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142031, 33.226227, 36.333508>,  <27.111231, 33.955372, 36.508572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142031, 33.226227, 36.333508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432434, 33.327583, 36.589230>,  <27.606676, 33.388397, 36.742661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432434, 33.327583, 36.589230>,  <27.142031, 33.226227, 36.333508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432434, 33.327583, 36.589230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302014, -0.717710, 0.627439,
		0.617821, -0.648603, -0.444535,
		0.726006, 0.253389, 0.639304,
		27.650236, 33.403599, 36.781021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520176, 32.675182, 36.537064>,  <27.142031, 33.226227, 36.333508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520176, 32.675182, 36.537064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528688, 32.964508, 36.813141>,  <27.533796, 33.138103, 36.978786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528688, 32.964508, 36.813141>,  <27.520176, 32.675182, 36.537064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528688, 32.964508, 36.813141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242278, -0.666038, 0.705474,
		0.969973, -0.182233, 0.161068,
		0.021283, 0.723315, 0.690190,
		27.535074, 33.181503, 37.020199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907482, 32.463787, 37.174980>,  <27.520176, 32.675182, 36.537064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907482, 32.463787, 37.174980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613827, 32.726437, 37.244125>,  <27.437634, 32.884026, 37.285610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613827, 32.726437, 37.244125>,  <27.907482, 32.463787, 37.174980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613827, 32.726437, 37.244125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333286, -0.570280, 0.750800,
		0.591573, 0.493581, 0.637510,
		-0.734140, 0.656626, 0.172859,
		27.393585, 32.923424, 37.295982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862562, 32.926613, 37.812756>,  <27.907482, 32.463787, 37.174980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862562, 32.926613, 37.812756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477142, 32.897060, 37.709904>,  <27.245892, 32.879330, 37.648193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477142, 32.897060, 37.709904>,  <27.862562, 32.926613, 37.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477142, 32.897060, 37.709904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206780, -0.404190, 0.890995,
		-0.169759, 0.911686, 0.374179,
		-0.963547, -0.073882, -0.257134,
		27.188078, 32.874897, 37.632763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986891, 33.542088, 38.012516>,  <27.862562, 32.926613, 37.812756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986891, 33.542088, 38.012516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927673, 33.359558, 37.661552>,  <27.892143, 33.250038, 37.450974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927673, 33.359558, 37.661552>,  <27.986891, 33.542088, 38.012516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927673, 33.359558, 37.661552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481731, 0.741549, -0.466949,
		0.863724, -0.491804, 0.110046,
		-0.148043, -0.456327, -0.877410,
		27.883261, 33.222660, 37.398331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606819, 33.513691, 37.671963>,  <27.986891, 33.542088, 38.012516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606819, 33.513691, 37.671963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324537, 33.483463, 37.390175>,  <28.155169, 33.465328, 37.221104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324537, 33.483463, 37.390175>,  <28.606819, 33.513691, 37.671963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324537, 33.483463, 37.390175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545733, 0.576118, -0.608493,
		0.451838, -0.813866, -0.365329,
		-0.705704, -0.075568, -0.704466,
		28.112825, 33.460793, 37.178837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871815, 33.164158, 37.043999>,  <28.606819, 33.513691, 37.671963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871815, 33.164158, 37.043999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553402, 33.382603, 36.939621>,  <28.362354, 33.513672, 36.876995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553402, 33.382603, 36.939621>,  <28.871815, 33.164158, 37.043999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553402, 33.382603, 36.939621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544126, 0.456905, -0.703679,
		-0.265063, -0.702137, -0.660866,
		-0.796033, 0.546114, -0.260943,
		28.314592, 33.546436, 36.861340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735882, 33.052921, 36.354698>,  <28.871815, 33.164158, 37.043999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735882, 33.052921, 36.354698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648264, 33.412411, 36.506657>,  <28.595694, 33.628105, 36.597832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648264, 33.412411, 36.506657>,  <28.735882, 33.052921, 36.354698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648264, 33.412411, 36.506657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512437, 0.437297, -0.739040,
		-0.830318, 0.032793, -0.556325,
		-0.219044, 0.898719, 0.379899,
		28.582550, 33.682026, 36.620625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848928, 33.455563, 35.778820>,  <28.735882, 33.052921, 36.354698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848928, 33.455563, 35.778820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618454, 33.646053, 36.044518>,  <28.480169, 33.760349, 36.203934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618454, 33.646053, 36.044518>,  <28.848928, 33.455563, 35.778820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618454, 33.646053, 36.044518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013248, 0.807159, -0.590185,
		-0.817212, -0.348856, -0.458764,
		-0.576185, 0.476228, 0.664242,
		28.445599, 33.788921, 36.243790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483112, 33.893353, 35.303040>,  <28.848928, 33.455563, 35.778820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483112, 33.893353, 35.303040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403948, 34.049194, 35.662827>,  <28.356449, 34.142700, 35.878696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403948, 34.049194, 35.662827>,  <28.483112, 33.893353, 35.303040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403948, 34.049194, 35.662827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050555, 0.920451, -0.387575,
		-0.978915, -0.031234, -0.201866,
		-0.197913, 0.389609, 0.899464,
		28.344574, 34.166077, 35.932667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959888, 34.414425, 35.196651>,  <28.483112, 33.893353, 35.303040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959888, 34.414425, 35.196651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145121, 34.506428, 35.539032>,  <28.256260, 34.561630, 35.744461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145121, 34.506428, 35.539032>,  <27.959888, 34.414425, 35.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145121, 34.506428, 35.539032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205292, 0.911645, -0.356033,
		-0.862212, 0.340592, 0.374949,
		0.463082, 0.230002, 0.855952,
		28.284046, 34.575428, 35.795818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889284, 35.105808, 35.220165>,  <27.959888, 34.414425, 35.196651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889284, 35.105808, 35.220165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143028, 35.027802, 35.519379>,  <28.295275, 34.980999, 35.698906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143028, 35.027802, 35.519379>,  <27.889284, 35.105808, 35.220165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143028, 35.027802, 35.519379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368989, 0.926693, -0.071326,
		-0.679289, 0.321264, 0.659816,
		0.634361, -0.195014, 0.748035,
		28.333336, 34.969296, 35.743790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837961, 35.195869, 34.388317>,  <27.889284, 35.105808, 35.220165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837961, 35.195869, 34.388317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831381, 35.417191, 34.055191>,  <27.827433, 35.549984, 33.855316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831381, 35.417191, 34.055191>,  <27.837961, 35.195869, 34.388317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831381, 35.417191, 34.055191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573609, 0.687454, 0.445399,
		0.818964, -0.470384, -0.328689,
		-0.016449, 0.553305, -0.832816,
		27.826447, 35.583183, 33.805347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450275, 35.308182, 34.004398>,  <27.837961, 35.195869, 34.388317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450275, 35.308182, 34.004398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224874, 35.634930, 33.955093>,  <28.089634, 35.830978, 33.925510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224874, 35.634930, 33.955093>,  <28.450275, 35.308182, 34.004398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224874, 35.634930, 33.955093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701254, 0.551848, 0.451338,
		0.436703, 0.167894, -0.883800,
		-0.563500, 0.816869, -0.123258,
		28.055824, 35.879990, 33.918118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736256, 35.817055, 33.596363>,  <28.450275, 35.308182, 34.004398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736256, 35.817055, 33.596363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489801, 36.015583, 33.841000>,  <28.341928, 36.134701, 33.987782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489801, 36.015583, 33.841000>,  <28.736256, 35.817055, 33.596363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489801, 36.015583, 33.841000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785762, 0.333722, 0.520776,
		0.054371, 0.801433, -0.595608,
		-0.616134, 0.496321, 0.611591,
		28.304960, 36.164478, 34.024479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924942, 36.511879, 33.576000>,  <28.736256, 35.817055, 33.596363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924942, 36.511879, 33.576000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720453, 36.437344, 33.911602>,  <28.597761, 36.392624, 34.112965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720453, 36.437344, 33.911602>,  <28.924942, 36.511879, 33.576000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720453, 36.437344, 33.911602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707522, 0.462964, 0.533925,
		-0.487921, 0.866569, -0.104838,
		-0.511220, -0.186338, 0.839007,
		28.567087, 36.381443, 34.163303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634840, 37.090958, 33.803806>,  <28.924942, 36.511879, 33.576000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634840, 37.090958, 33.803806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707800, 36.838688, 34.105530>,  <28.751575, 36.687325, 34.286564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707800, 36.838688, 34.105530>,  <28.634840, 37.090958, 33.803806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707800, 36.838688, 34.105530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787533, 0.553023, 0.271950,
		-0.588661, 0.544437, 0.597550,
		0.182400, -0.630677, 0.754305,
		28.762520, 36.649487, 34.331821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837622, 37.498734, 34.372169>,  <28.634840, 37.090958, 33.803806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837622, 37.498734, 34.372169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016294, 37.142475, 34.406151>,  <29.123499, 36.928719, 34.426540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016294, 37.142475, 34.406151>,  <28.837622, 37.498734, 34.372169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016294, 37.142475, 34.406151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754316, 0.425960, 0.499566,
		-0.481126, -0.159064, 0.862100,
		0.446683, -0.890650, 0.084955,
		29.150299, 36.875278, 34.431637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965696, 37.258434, 35.153648>,  <28.837622, 37.498734, 34.372169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965696, 37.258434, 35.153648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243708, 37.167038, 34.880966>,  <29.410515, 37.112202, 34.717358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243708, 37.167038, 34.880966>,  <28.965696, 37.258434, 35.153648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243708, 37.167038, 34.880966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703565, 0.411432, 0.579413,
		0.148085, -0.882335, 0.446716,
		0.695030, -0.228491, -0.681708,
		29.452217, 37.098492, 34.676453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587357, 36.780926, 35.461479>,  <28.965696, 37.258434, 35.153648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587357, 36.780926, 35.461479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702751, 37.005436, 35.151192>,  <29.771988, 37.140144, 34.965019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702751, 37.005436, 35.151192>,  <29.587357, 36.780926, 35.461479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702751, 37.005436, 35.151192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783744, 0.326970, 0.528050,
		0.550020, -0.760301, -0.345572,
		0.288485, 0.561278, -0.775721,
		29.789297, 37.173820, 34.918476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220917, 36.573227, 35.285110>,  <29.587357, 36.780926, 35.461479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220917, 36.573227, 35.285110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110912, 36.953758, 35.229481>,  <30.044910, 37.182076, 35.196102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110912, 36.953758, 35.229481>,  <30.220917, 36.573227, 35.285110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110912, 36.953758, 35.229481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698578, 0.297105, 0.650935,
		0.660573, 0.081860, -0.746285,
		-0.275011, 0.951329, -0.139074,
		30.028410, 37.239159, 35.187759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924528, 36.410744, 34.778130>,  <30.220917, 36.573227, 35.285110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924528, 36.410744, 34.778130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167461, 36.229740, 34.516937>,  <31.313221, 36.121140, 34.360222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167461, 36.229740, 34.516937>,  <30.924528, 36.410744, 34.778130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167461, 36.229740, 34.516937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769614, 0.131215, 0.624881,
		-0.197085, -0.882053, 0.427949,
		0.607332, -0.452510, -0.652980,
		31.349661, 36.093987, 34.321045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993565, 35.744678, 34.895283>,  <30.924528, 36.410744, 34.778130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993565, 35.744678, 34.895283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320360, 35.903206, 34.727730>,  <31.516438, 35.998322, 34.627197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320360, 35.903206, 34.727730>,  <30.993565, 35.744678, 34.895283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320360, 35.903206, 34.727730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492379, -0.101333, 0.864462,
		0.300153, -0.912505, -0.277925,
		0.816989, 0.396315, -0.418883,
		31.565456, 36.022099, 34.602066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510643, 35.301548, 35.095108>,  <30.993565, 35.744678, 34.895283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510643, 35.301548, 35.095108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669016, 35.648857, 34.975544>,  <31.764040, 35.857243, 34.903805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669016, 35.648857, 34.975544>,  <31.510643, 35.301548, 35.095108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669016, 35.648857, 34.975544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519369, 0.056705, 0.852667,
		0.757293, -0.492843, -0.428500,
		0.395933, 0.868268, -0.298910,
		31.787796, 35.909336, 34.885872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250496, 35.232887, 35.014790>,  <31.510643, 35.301548, 35.095108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250496, 35.232887, 35.014790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210056, 35.626621, 35.072563>,  <32.185791, 35.862862, 35.107227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210056, 35.626621, 35.072563>,  <32.250496, 35.232887, 35.014790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210056, 35.626621, 35.072563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474632, -0.079869, 0.876553,
		0.874359, 0.157173, -0.459123,
		-0.101101, 0.984336, 0.144434,
		32.179726, 35.921921, 35.115894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822762, 35.508778, 35.327583>,  <32.250496, 35.232887, 35.014790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822762, 35.508778, 35.327583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542652, 35.779423, 35.418625>,  <32.374584, 35.941811, 35.473251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542652, 35.779423, 35.418625>,  <32.822762, 35.508778, 35.327583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542652, 35.779423, 35.418625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345604, 0.042348, 0.937424,
		0.624635, 0.735120, -0.263495,
		-0.700278, 0.676613, 0.227609,
		32.332569, 35.982407, 35.486908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195461, 36.072559, 35.526154>,  <32.822762, 35.508778, 35.327583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195461, 36.072559, 35.526154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833759, 36.064518, 35.696762>,  <32.616737, 36.059692, 35.799129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833759, 36.064518, 35.696762>,  <33.195461, 36.072559, 35.526154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833759, 36.064518, 35.696762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421092, 0.123579, 0.898560,
		-0.070776, 0.992131, -0.103280,
		-0.904252, -0.020107, 0.426525,
		32.562485, 36.058487, 35.824718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886784, 36.752357, 35.899956>,  <33.195461, 36.072559, 35.526154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886784, 36.752357, 35.899956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794605, 36.401039, 36.067524>,  <32.739300, 36.190247, 36.168064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794605, 36.401039, 36.067524>,  <32.886784, 36.752357, 35.899956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794605, 36.401039, 36.067524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361948, 0.322250, 0.874727,
		-0.903266, 0.353201, 0.243637,
		-0.230443, -0.878296, 0.418918,
		32.725471, 36.137550, 36.193199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271927, 36.712841, 36.514507>,  <32.886784, 36.752357, 35.899956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271927, 36.712841, 36.514507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607635, 36.495525, 36.505939>,  <32.809059, 36.365135, 36.500801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607635, 36.495525, 36.505939>,  <32.271927, 36.712841, 36.514507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607635, 36.495525, 36.505939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341249, 0.495678, 0.798657,
		-0.423285, -0.677599, 0.601406,
		0.839273, -0.543288, -0.021417,
		32.859417, 36.332539, 36.499516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621870, 36.578136, 36.296772>,  <32.271927, 36.712841, 36.514507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621870, 36.578136, 36.296772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991644, 36.576038, 36.144249>,  <32.213509, 36.574780, 36.052734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991644, 36.576038, 36.144249>,  <31.621870, 36.578136, 36.296772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991644, 36.576038, 36.144249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363171, -0.317097, -0.876103,
		-0.116317, 0.948379, -0.295039,
		0.924433, -0.005244, -0.381307,
		32.268974, 36.574467, 36.029858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587713, 36.966835, 35.707760>,  <31.621870, 36.578136, 36.296772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587713, 36.966835, 35.707760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890030, 36.712048, 35.647034>,  <32.071419, 36.559174, 35.610596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890030, 36.712048, 35.647034>,  <31.587713, 36.966835, 35.707760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890030, 36.712048, 35.647034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353147, -0.201254, -0.913665,
		0.551424, 0.744154, -0.377050,
		0.755790, -0.636971, -0.151819,
		32.116768, 36.520958, 35.601486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973341, 37.172127, 35.129211>,  <31.587713, 36.966835, 35.707760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973341, 37.172127, 35.129211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041801, 36.778126, 35.137989>,  <32.082878, 36.541725, 35.143257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041801, 36.778126, 35.137989>,  <31.973341, 37.172127, 35.129211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041801, 36.778126, 35.137989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176019, -0.052488, -0.982987,
		0.969394, 0.164377, -0.182362,
		0.171152, -0.985000, 0.021948,
		32.093147, 36.482624, 35.144573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351830, 37.026340, 34.531330>,  <31.973341, 37.172127, 35.129211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351830, 37.026340, 34.531330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187763, 36.678719, 34.641968>,  <32.089325, 36.470146, 34.708351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187763, 36.678719, 34.641968>,  <32.351830, 37.026340, 34.531330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187763, 36.678719, 34.641968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304004, -0.155652, -0.939869,
		0.859853, -0.469587, -0.200354,
		-0.410165, -0.869057, 0.276594,
		32.064713, 36.418003, 34.724945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566166, 36.560936, 34.009525>,  <32.351830, 37.026340, 34.531330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566166, 36.560936, 34.009525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248821, 36.404015, 34.195721>,  <32.058414, 36.309864, 34.307438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248821, 36.404015, 34.195721>,  <32.566166, 36.560936, 34.009525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248821, 36.404015, 34.195721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389783, -0.259997, -0.883442,
		0.467600, -0.882328, 0.053359,
		-0.793359, -0.392300, 0.465492,
		32.010815, 36.286324, 34.335369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398743, 35.744488, 33.817722>,  <32.566166, 36.560936, 34.009525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398743, 35.744488, 33.817722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095692, 35.982838, 33.924259>,  <31.913860, 36.125847, 33.988182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095692, 35.982838, 33.924259>,  <32.398743, 35.744488, 33.817722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095692, 35.982838, 33.924259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546724, -0.356499, -0.757629,
		-0.356499, -0.719615, 0.595871,
		0.757629, -0.595871, -0.266339,
		31.868402, 36.161598, 34.004162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770575, 35.428616, 34.097168>,  <32.398743, 35.744488, 33.817722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770575, 35.428616, 34.097168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732807, 35.764942, 33.883957>,  <31.710146, 35.966740, 33.756031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732807, 35.764942, 33.883957>,  <31.770575, 35.428616, 34.097168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732807, 35.764942, 33.883957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279740, -0.536252, -0.796354,
		-0.955422, 0.073918, 0.285841,
		-0.094418, 0.840815, -0.533024,
		31.704481, 36.017185, 33.724049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102158, 35.443165, 33.774723>,  <31.770575, 35.428616, 34.097168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102158, 35.443165, 33.774723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353262, 35.663162, 33.554386>,  <31.503923, 35.795158, 33.422184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353262, 35.663162, 33.554386>,  <31.102158, 35.443165, 33.774723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353262, 35.663162, 33.554386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181539, -0.584698, -0.790678,
		-0.756943, 0.596355, -0.267205,
		0.627759, 0.549990, -0.550845,
		31.541590, 35.828159, 33.389133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799942, 35.586029, 33.190052>,  <31.102158, 35.443165, 33.774723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799942, 35.586029, 33.190052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185741, 35.637600, 33.097858>,  <31.417221, 35.668545, 33.042542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185741, 35.637600, 33.097858>,  <30.799942, 35.586029, 33.190052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185741, 35.637600, 33.097858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167186, -0.377498, -0.910793,
		-0.204435, 0.916991, -0.342540,
		0.964497, 0.128930, -0.230482,
		31.475090, 35.676277, 33.028713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771135, 35.823498, 32.517220>,  <30.799942, 35.586029, 33.190052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771135, 35.823498, 32.517220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136307, 35.669071, 32.570152>,  <31.355410, 35.576416, 32.601910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136307, 35.669071, 32.570152>,  <30.771135, 35.823498, 32.517220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136307, 35.669071, 32.570152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007746, -0.307793, -0.951422,
		0.408046, 0.869605, -0.278003,
		0.912929, -0.386070, 0.132330,
		31.410185, 35.553249, 32.609852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171177, 36.001575, 31.942188>,  <30.771135, 35.823498, 32.517220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171177, 36.001575, 31.942188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366623, 35.693001, 32.105228>,  <31.483891, 35.507854, 32.203053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366623, 35.693001, 32.105228>,  <31.171177, 36.001575, 31.942188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366623, 35.693001, 32.105228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049746, -0.441770, -0.895748,
		0.871079, 0.457954, -0.177480,
		0.488617, -0.771438, 0.407598,
		31.513208, 35.461571, 32.227509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776802, 35.924892, 31.564373>,  <31.171177, 36.001575, 31.942188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776802, 35.924892, 31.564373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745275, 35.570972, 31.748077>,  <31.726360, 35.358620, 31.858299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745275, 35.570972, 31.748077>,  <31.776802, 35.924892, 31.564373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745275, 35.570972, 31.748077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174333, -0.465827, -0.867533,
		0.981528, 0.011689, 0.190963,
		-0.078815, -0.884799, 0.459260,
		31.721630, 35.305534, 31.885855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328236, 35.444691, 31.274111>,  <31.776802, 35.924892, 31.564373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328236, 35.444691, 31.274111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062504, 35.202099, 31.448856>,  <31.903065, 35.056545, 31.553703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062504, 35.202099, 31.448856>,  <32.328236, 35.444691, 31.274111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062504, 35.202099, 31.448856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013169, -0.574890, -0.818125,
		0.747325, -0.549257, 0.373929,
		-0.664329, -0.606481, 0.436863,
		31.863205, 35.020153, 31.579916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686852, 34.760303, 31.215458>,  <32.328236, 35.444691, 31.274111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686852, 34.760303, 31.215458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294140, 34.708805, 31.271351>,  <32.058514, 34.677906, 31.304888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294140, 34.708805, 31.271351>,  <32.686852, 34.760303, 31.215458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294140, 34.708805, 31.271351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063321, -0.471678, -0.879494,
		0.179144, -0.872321, 0.454933,
		-0.981783, -0.128749, 0.139734,
		31.999605, 34.670181, 31.313271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644234, 34.148731, 31.030787>,  <32.686852, 34.760303, 31.215458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644234, 34.148731, 31.030787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264904, 34.274384, 31.012877>,  <32.037308, 34.349773, 31.002131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264904, 34.274384, 31.012877>,  <32.644234, 34.148731, 31.030787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264904, 34.274384, 31.012877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144245, -0.552473, -0.820955,
		-0.282625, -0.772071, 0.569235,
		-0.948323, 0.314132, -0.044775,
		31.980408, 34.368622, 30.999443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202438, 33.567593, 30.935839>,  <32.644234, 34.148731, 31.030787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202438, 33.567593, 30.935839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984732, 33.882732, 30.820553>,  <31.854107, 34.071815, 30.751381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984732, 33.882732, 30.820553>,  <32.202438, 33.567593, 30.935839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984732, 33.882732, 30.820553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216946, -0.464056, -0.858829,
		-0.810375, -0.404904, 0.423490,
		-0.544267, 0.787848, -0.288217,
		31.821451, 34.119087, 30.734087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701406, 33.249203, 30.502289>,  <32.202438, 33.567593, 30.935839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701406, 33.249203, 30.502289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703131, 33.640419, 30.418945>,  <31.704165, 33.875149, 30.368940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703131, 33.640419, 30.418945>,  <31.701406, 33.249203, 30.502289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703131, 33.640419, 30.418945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358709, -0.192981, -0.913283,
		-0.933439, 0.078676, 0.350001,
		0.004310, 0.978043, -0.208357,
		31.704424, 33.933830, 30.356438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092024, 33.397221, 30.154205>,  <31.701406, 33.249203, 30.502289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092024, 33.397221, 30.154205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312241, 33.707405, 30.030548>,  <31.444370, 33.893517, 29.956354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312241, 33.707405, 30.030548>,  <31.092024, 33.397221, 30.154205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312241, 33.707405, 30.030548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278935, -0.178157, -0.943639,
		-0.786829, 0.605743, 0.118220,
		0.550541, 0.775459, -0.309142,
		31.477404, 33.940044, 29.937805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657793, 33.804501, 29.886534>,  <31.092024, 33.397221, 30.154205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657793, 33.804501, 29.886534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006514, 33.939453, 29.744471>,  <31.215746, 34.020424, 29.659233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006514, 33.939453, 29.744471>,  <30.657793, 33.804501, 29.886534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006514, 33.939453, 29.744471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369525, -0.023020, -0.928936,
		-0.321584, 0.941086, 0.104603,
		0.871800, 0.337384, -0.355157,
		31.268053, 34.040668, 29.637924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526581, 34.273590, 29.362013>,  <30.657793, 33.804501, 29.886534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526581, 34.273590, 29.362013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915609, 34.202480, 29.302019>,  <31.149027, 34.159813, 29.266022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915609, 34.202480, 29.302019>,  <30.526581, 34.273590, 29.362013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915609, 34.202480, 29.302019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172465, -0.118518, -0.977860,
		0.156064, 0.976908, -0.145927,
		0.972574, -0.177776, -0.149986,
		31.207382, 34.149147, 29.257023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708105, 34.702026, 28.857176>,  <30.526581, 34.273590, 29.362013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708105, 34.702026, 28.857176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983419, 34.411850, 28.856342>,  <31.148607, 34.237743, 28.855843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983419, 34.411850, 28.856342>,  <30.708105, 34.702026, 28.857176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983419, 34.411850, 28.856342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102480, -0.094386, -0.990247,
		0.718166, 0.681785, -0.139307,
		0.688284, -0.725438, -0.002084,
		31.189905, 34.194218, 28.855717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199656, 34.893913, 28.329367>,  <30.708105, 34.702026, 28.857176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199656, 34.893913, 28.329367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231529, 34.498486, 28.380548>,  <31.250654, 34.261227, 28.411257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231529, 34.498486, 28.380548>,  <31.199656, 34.893913, 28.329367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231529, 34.498486, 28.380548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066111, -0.133319, -0.988866,
		0.994625, 0.070339, -0.075980,
		0.079686, -0.988574, 0.127952,
		31.255434, 34.201912, 28.418934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523983, 34.764076, 27.773113>,  <31.199656, 34.893913, 28.329367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523983, 34.764076, 27.773113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425356, 34.393623, 27.887289>,  <31.366180, 34.171352, 27.955793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425356, 34.393623, 27.887289>,  <31.523983, 34.764076, 27.773113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425356, 34.393623, 27.887289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079387, -0.274240, -0.958379,
		0.965869, -0.258965, -0.005905,
		-0.246568, -0.926137, 0.285439,
		31.351385, 34.115784, 27.972921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797651, 34.273178, 27.237406>,  <31.523983, 34.764076, 27.773113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797651, 34.273178, 27.237406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503622, 34.074837, 27.422361>,  <31.327206, 33.955833, 27.533335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503622, 34.074837, 27.422361>,  <31.797651, 34.273178, 27.237406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503622, 34.074837, 27.422361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358161, -0.295074, -0.885806,
		0.575666, -0.816739, 0.039305,
		-0.735071, -0.495851, 0.462388,
		31.283100, 33.926083, 27.561077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704351, 33.625957, 26.996979>,  <31.797651, 34.273178, 27.237406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704351, 33.625957, 26.996979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342871, 33.686813, 27.157068>,  <31.125982, 33.723328, 27.253122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342871, 33.686813, 27.157068>,  <31.704351, 33.625957, 26.996979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342871, 33.686813, 27.157068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428159, -0.315594, -0.846806,
		-0.002525, -0.936618, 0.350343,
		-0.903700, 0.152141, 0.400225,
		31.071760, 33.732456, 27.277136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471760, 32.967892, 26.952236>,  <31.704351, 33.625957, 26.996979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471760, 32.967892, 26.952236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179977, 33.241478, 26.955799>,  <31.004908, 33.405632, 26.957937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179977, 33.241478, 26.955799>,  <31.471760, 32.967892, 26.952236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179977, 33.241478, 26.955799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328300, -0.338652, -0.881779,
		-0.600095, -0.646142, 0.471579,
		-0.729456, 0.683971, 0.008906,
		30.961140, 33.446671, 26.958471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915495, 32.688084, 26.495680>,  <31.471760, 32.967892, 26.952236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915495, 32.688084, 26.495680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751648, 33.050163, 26.540989>,  <30.653339, 33.267410, 26.568174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751648, 33.050163, 26.540989>,  <30.915495, 32.688084, 26.495680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751648, 33.050163, 26.540989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430396, -0.082277, -0.898883,
		-0.804347, -0.416950, 0.423295,
		-0.409617, 0.905198, 0.113274,
		30.628763, 33.321724, 26.574970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197012, 32.714500, 26.404814>,  <30.915495, 32.688084, 26.495680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197012, 32.714500, 26.404814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317955, 33.091663, 26.348951>,  <30.390520, 33.317963, 26.315434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317955, 33.091663, 26.348951>,  <30.197012, 32.714500, 26.404814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317955, 33.091663, 26.348951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334985, -0.032054, -0.941678,
		-0.892393, 0.331505, 0.306169,
		0.302357, 0.942909, -0.139654,
		30.408663, 33.374535, 26.307055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635136, 32.884148, 26.031794>,  <30.197012, 32.714500, 26.404814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635136, 32.884148, 26.031794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895840, 33.179974, 25.964554>,  <30.052261, 33.357468, 25.924210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895840, 33.179974, 25.964554>,  <29.635136, 32.884148, 26.031794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895840, 33.179974, 25.964554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282348, 0.030891, -0.958815,
		-0.703910, 0.672379, 0.228947,
		0.651760, 0.739562, -0.168101,
		30.091368, 33.401844, 25.914124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226910, 33.431198, 25.838131>,  <29.635136, 32.884148, 26.031794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226910, 33.431198, 25.838131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600538, 33.446442, 25.696112>,  <29.824715, 33.455585, 25.610899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600538, 33.446442, 25.696112>,  <29.226910, 33.431198, 25.838131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600538, 33.446442, 25.696112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352135, -0.066755, -0.933566,
		-0.059276, 0.997042, -0.048935,
		0.934070, 0.038107, -0.355050,
		29.880760, 33.457874, 25.589596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228893, 34.010132, 25.320362>,  <29.226910, 33.431198, 25.838131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228893, 34.010132, 25.320362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548836, 33.778671, 25.256620>,  <29.740801, 33.639793, 25.218376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548836, 33.778671, 25.256620>,  <29.228893, 34.010132, 25.320362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548836, 33.778671, 25.256620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266509, -0.104525, -0.958148,
		0.537779, 0.808848, -0.237821,
		0.799854, -0.578653, -0.159354,
		29.788792, 33.605076, 25.208815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451075, 34.152119, 24.637037>,  <29.228893, 34.010132, 25.320362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451075, 34.152119, 24.637037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691206, 33.839527, 24.705038>,  <29.835285, 33.651974, 24.745838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691206, 33.839527, 24.705038>,  <29.451075, 34.152119, 24.637037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691206, 33.839527, 24.705038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067811, -0.162062, -0.984448,
		0.796874, 0.602519, -0.044298,
		0.600327, -0.781477, 0.170001,
		29.871304, 33.605083, 24.756039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135292, 34.195827, 24.326429>,  <29.451075, 34.152119, 24.637037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135292, 34.195827, 24.326429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035856, 33.810589, 24.367691>,  <29.976194, 33.579445, 24.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035856, 33.810589, 24.367691>,  <30.135292, 34.195827, 24.326429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035856, 33.810589, 24.367691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145786, -0.142487, -0.979002,
		0.957574, -0.228333, 0.175827,
		-0.248592, -0.963100, 0.103154,
		29.961279, 33.521660, 24.398638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654535, 33.924274, 23.825611>,  <30.135292, 34.195827, 24.326429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654535, 33.924274, 23.825611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411976, 33.612446, 23.888277>,  <30.266439, 33.425346, 23.925877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411976, 33.612446, 23.888277>,  <30.654535, 33.924274, 23.825611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411976, 33.612446, 23.888277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193253, -0.335603, -0.921967,
		0.771318, -0.528805, 0.354165,
		-0.606400, -0.779574, 0.156664,
		30.230055, 33.378574, 23.935276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076723, 33.281261, 23.774137>,  <30.654535, 33.924274, 23.825611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076723, 33.281261, 23.774137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693356, 33.197506, 23.696585>,  <30.463335, 33.147255, 23.650053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693356, 33.197506, 23.696585>,  <31.076723, 33.281261, 23.774137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693356, 33.197506, 23.696585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275563, -0.502546, -0.819459,
		0.074148, -0.838812, 0.539349,
		-0.958419, -0.209386, -0.193883,
		30.405830, 33.134689, 23.638420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096762, 32.520748, 23.617800>,  <31.076723, 33.281261, 23.774137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096762, 32.520748, 23.617800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732821, 32.612583, 23.479551>,  <30.514456, 32.667683, 23.396603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732821, 32.612583, 23.479551>,  <31.096762, 32.520748, 23.617800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732821, 32.612583, 23.479551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254554, -0.348945, -0.901909,
		-0.327664, -0.908587, 0.259049,
		-0.909856, 0.229581, -0.345621,
		30.459864, 32.681458, 23.375864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907104, 32.003613, 23.270548>,  <31.096762, 32.520748, 23.617800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907104, 32.003613, 23.270548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669449, 32.282921, 23.110842>,  <30.526855, 32.450504, 23.015018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669449, 32.282921, 23.110842>,  <30.907104, 32.003613, 23.270548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669449, 32.282921, 23.110842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251757, -0.310005, -0.916796,
		-0.763947, -0.645224, 0.008392,
		-0.594140, 0.698272, -0.399267,
		30.491207, 32.492401, 22.991062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578516, 31.646431, 22.681765>,  <30.907104, 32.003613, 23.270548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578516, 31.646431, 22.681765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532219, 32.039551, 22.624199>,  <30.504440, 32.275421, 22.589659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532219, 32.039551, 22.624199>,  <30.578516, 31.646431, 22.681765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532219, 32.039551, 22.624199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276165, -0.107334, -0.955098,
		-0.954115, -0.150291, -0.258992,
		-0.115744, 0.982798, -0.143915,
		30.497496, 32.334389, 22.581024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108706, 31.746038, 22.090229>,  <30.578516, 31.646431, 22.681765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108706, 31.746038, 22.090229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302082, 32.093925, 22.129976>,  <30.418108, 32.302658, 22.153824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302082, 32.093925, 22.129976>,  <30.108706, 31.746038, 22.090229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302082, 32.093925, 22.129976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098761, 0.058600, -0.993384,
		-0.869789, 0.490055, -0.057565,
		0.483440, 0.869719, 0.099367,
		30.447115, 32.354843, 22.159786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789078, 32.127308, 21.480877>,  <30.108706, 31.746038, 22.090229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789078, 32.127308, 21.480877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127377, 32.308426, 21.593792>,  <30.330357, 32.417095, 21.661541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127377, 32.308426, 21.593792>,  <29.789078, 32.127308, 21.480877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127377, 32.308426, 21.593792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221733, 0.182952, -0.957791,
		-0.485328, 0.872643, 0.054333,
		0.845749, 0.452795, 0.282285,
		30.381102, 32.444263, 21.678478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832447, 32.812447, 21.129412>,  <29.789078, 32.127308, 21.480877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832447, 32.812447, 21.129412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198875, 32.679569, 21.219267>,  <30.418732, 32.599842, 21.273180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198875, 32.679569, 21.219267>,  <29.832447, 32.812447, 21.129412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198875, 32.679569, 21.219267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245570, 0.021846, -0.969133,
		0.317030, 0.942959, 0.101588,
		0.916072, -0.332192, 0.224636,
		30.473698, 32.579910, 21.286657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286541, 33.254261, 20.626324>,  <29.832447, 32.812447, 21.129412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286541, 33.254261, 20.626324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505337, 32.940315, 20.742798>,  <30.636614, 32.751945, 20.812683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505337, 32.940315, 20.742798>,  <30.286541, 33.254261, 20.626324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505337, 32.940315, 20.742798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542909, 0.067819, -0.837049,
		0.637224, 0.615942, 0.463208,
		0.546988, -0.784867, 0.291185,
		30.669434, 32.704857, 20.830153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065300, 33.403076, 20.509291>,  <30.286541, 33.254261, 20.626324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065300, 33.403076, 20.509291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987171, 33.010788, 20.507177>,  <30.940294, 32.775414, 20.505909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987171, 33.010788, 20.507177>,  <31.065300, 33.403076, 20.509291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987171, 33.010788, 20.507177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554613, -0.106010, -0.825328,
		0.808860, -0.164135, 0.564629,
		-0.195322, -0.980725, -0.005284,
		30.928574, 32.716572, 20.505592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644861, 33.107212, 20.296085>,  <31.065300, 33.403076, 20.509291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644861, 33.107212, 20.296085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382446, 32.815060, 20.220030>,  <31.224997, 32.639767, 20.174397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382446, 32.815060, 20.220030>,  <31.644861, 33.107212, 20.296085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382446, 32.815060, 20.220030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421005, -0.145056, -0.895385,
		0.626393, -0.667457, 0.402657,
		-0.656039, -0.730384, -0.190141,
		31.185635, 32.595943, 20.162987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014339, 32.693619, 19.912308>,  <31.644861, 33.107212, 20.296085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014339, 32.693619, 19.912308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638744, 32.585678, 19.827002>,  <31.413387, 32.520912, 19.775818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638744, 32.585678, 19.827002>,  <32.014339, 32.693619, 19.912308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638744, 32.585678, 19.827002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266842, -0.180316, -0.946721,
		0.217019, -0.945868, 0.241322,
		-0.938988, -0.269852, -0.213265,
		31.357048, 32.504723, 19.763021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083721, 32.134533, 19.514326>,  <32.014339, 32.693619, 19.912308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083721, 32.134533, 19.514326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713476, 32.260860, 19.430902>,  <31.491329, 32.336658, 19.380848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713476, 32.260860, 19.430902>,  <32.083721, 32.134533, 19.514326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713476, 32.260860, 19.430902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167975, -0.151009, -0.974156,
		-0.339155, -0.936724, 0.086725,
		-0.925613, 0.315822, -0.208562,
		31.435793, 32.355606, 19.368334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814487, 31.624615, 19.054098>,  <32.083721, 32.134533, 19.514326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814487, 31.624615, 19.054098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634027, 31.979063, 19.011675>,  <31.525751, 32.191734, 18.986221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634027, 31.979063, 19.011675>,  <31.814487, 31.624615, 19.054098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634027, 31.979063, 19.011675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169995, -0.031338, -0.984946,
		-0.876108, -0.462389, -0.136498,
		-0.451151, 0.886123, -0.106060,
		31.498682, 32.244900, 18.979856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371918, 31.463177, 18.457056>,  <31.814487, 31.624615, 19.054098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371918, 31.463177, 18.457056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353401, 31.861597, 18.487371>,  <31.342291, 32.100647, 18.505562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353401, 31.861597, 18.487371>,  <31.371918, 31.463177, 18.457056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353401, 31.861597, 18.487371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285656, 0.059503, -0.956483,
		-0.957213, -0.065925, 0.281773,
		-0.046290, 0.996049, 0.075789,
		31.339514, 32.160412, 18.510109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719706, 31.655485, 18.114624>,  <31.371918, 31.463177, 18.457056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719706, 31.655485, 18.114624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995018, 31.945465, 18.103922>,  <31.160206, 32.119453, 18.097500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995018, 31.945465, 18.103922>,  <30.719706, 31.655485, 18.114624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995018, 31.945465, 18.103922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189122, 0.143704, -0.971382,
		-0.700358, 0.673645, 0.236013,
		0.688282, 0.724950, -0.026757,
		31.201502, 32.162949, 18.095894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412064, 32.188965, 17.870302>,  <30.719706, 31.655485, 18.114624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412064, 32.188965, 17.870302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802637, 32.226734, 17.792675>,  <31.036982, 32.249397, 17.746099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802637, 32.226734, 17.792675>,  <30.412064, 32.188965, 17.870302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802637, 32.226734, 17.792675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206577, 0.148564, -0.967086,
		-0.062489, 0.984384, 0.164569,
		0.976433, 0.094428, -0.194068,
		31.095568, 32.255062, 17.734455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623774, 32.864273, 17.597252>,  <30.412064, 32.188965, 17.870302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623774, 32.864273, 17.597252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825182, 32.542953, 17.470016>,  <30.946026, 32.350163, 17.393675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825182, 32.542953, 17.470016>,  <30.623774, 32.864273, 17.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825182, 32.542953, 17.470016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278933, 0.197307, -0.939823,
		0.817720, 0.561943, -0.124719,
		0.503519, -0.803299, -0.318086,
		30.976238, 32.301964, 17.374590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104082, 33.045341, 17.014343>,  <30.623774, 32.864273, 17.597252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104082, 33.045341, 17.014343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963102, 32.675968, 16.953604>,  <30.878513, 32.454346, 16.917160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963102, 32.675968, 16.953604>,  <31.104082, 33.045341, 17.014343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963102, 32.675968, 16.953604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198989, 0.232500, -0.952022,
		0.914430, -0.305325, -0.265697,
		-0.352451, -0.923428, -0.151849,
		30.857367, 32.398941, 16.908049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517784, 32.633801, 16.492426>,  <31.104082, 33.045341, 17.014343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517784, 32.633801, 16.492426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156687, 32.463264, 16.515368>,  <30.940029, 32.360943, 16.529133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156687, 32.463264, 16.515368>,  <31.517784, 32.633801, 16.492426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156687, 32.463264, 16.515368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147974, 0.182568, -0.971994,
		0.403930, -0.885947, -0.227899,
		-0.902742, -0.426341, 0.057352,
		30.885864, 32.335361, 16.532574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420322, 32.552773, 15.733985>,  <31.517784, 32.633801, 16.492426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420322, 32.552773, 15.733985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417755, 32.423763, 15.355369>,  <31.416214, 32.346359, 15.128199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417755, 32.423763, 15.355369>,  <31.420322, 32.552773, 15.733985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417755, 32.423763, 15.355369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695915, 0.681176, -0.227381,
		0.718095, 0.657253, -0.228819,
		-0.006419, -0.322520, -0.946541,
		31.415829, 32.327007, 15.071406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526985, 33.103210, 15.362955>,  <31.420322, 32.552773, 15.733985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526985, 33.103210, 15.362955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358219, 32.866421, 15.088276>,  <31.256960, 32.724346, 14.923469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358219, 32.866421, 15.088276>,  <31.526985, 33.103210, 15.362955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358219, 32.866421, 15.088276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611703, 0.744911, -0.266323,
		0.669186, 0.307690, -0.676401,
		-0.421913, -0.591976, -0.686698,
		31.231646, 32.688828, 14.882266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654913, 33.758408, 15.765017>,  <31.526985, 33.103210, 15.362955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654913, 33.758408, 15.765017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454071, 34.086514, 15.874605>,  <31.333567, 34.283379, 15.940358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454071, 34.086514, 15.874605>,  <31.654913, 33.758408, 15.765017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454071, 34.086514, 15.874605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485688, 0.005345, 0.874116,
		0.715541, 0.571961, -0.401076,
		-0.502104, 0.820264, 0.273970,
		31.303440, 34.332592, 15.956797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187977, 34.249355, 16.099880>,  <31.654913, 33.758408, 15.765017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187977, 34.249355, 16.099880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823500, 34.374332, 16.207293>,  <31.604815, 34.449318, 16.271740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823500, 34.374332, 16.207293>,  <32.187977, 34.249355, 16.099880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823500, 34.374332, 16.207293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361485, 0.293655, 0.884927,
		0.197633, 0.903408, -0.380520,
		-0.911191, 0.312443, 0.268533,
		31.550142, 34.468067, 16.287853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130001, 35.000938, 16.330070>,  <32.187977, 34.249355, 16.099880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130001, 35.000938, 16.330070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863060, 34.793892, 16.544256>,  <31.702896, 34.669666, 16.672768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863060, 34.793892, 16.544256>,  <32.130001, 35.000938, 16.330070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863060, 34.793892, 16.544256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417022, 0.335980, 0.844518,
		-0.617038, 0.786889, -0.008360,
		-0.667350, -0.517613, 0.535462,
		31.662855, 34.638607, 16.704895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032307, 35.325203, 16.896866>,  <32.130001, 35.000938, 16.330070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032307, 35.325203, 16.896866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919453, 34.957951, 17.008173>,  <31.851740, 34.737598, 17.074957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919453, 34.957951, 17.008173>,  <32.032307, 35.325203, 16.896866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919453, 34.957951, 17.008173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426815, 0.139643, 0.893492,
		-0.859202, 0.370855, 0.352475,
		-0.282136, -0.918132, 0.278268,
		31.834812, 34.682510, 17.091654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732481, 35.467308, 17.507689>,  <32.032307, 35.325203, 16.896866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732481, 35.467308, 17.507689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842487, 35.082787, 17.501276>,  <31.908491, 34.852074, 17.497429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842487, 35.082787, 17.501276>,  <31.732481, 35.467308, 17.507689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842487, 35.082787, 17.501276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260708, 0.058514, 0.963643,
		-0.925417, -0.269198, 0.266712,
		0.275017, -0.961306, -0.016032,
		31.924992, 34.794395, 17.496466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355606, 35.105415, 18.029154>,  <31.732481, 35.467308, 17.507689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355606, 35.105415, 18.029154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690166, 34.897251, 17.960323>,  <31.890902, 34.772354, 17.919025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690166, 34.897251, 17.960323>,  <31.355606, 35.105415, 18.029154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690166, 34.897251, 17.960323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223474, 0.037102, 0.974004,
		-0.500495, -0.853111, 0.147330,
		0.836400, -0.520408, -0.172078,
		31.941086, 34.741127, 17.908699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363407, 34.730972, 18.589825>,  <31.355606, 35.105415, 18.029154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363407, 34.730972, 18.589825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737064, 34.727592, 18.447104>,  <31.961258, 34.725563, 18.361471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737064, 34.727592, 18.447104>,  <31.363407, 34.730972, 18.589825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737064, 34.727592, 18.447104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355915, 0.096360, 0.929537,
		0.026525, -0.995311, 0.093022,
		0.934142, -0.008452, -0.356802,
		32.017307, 34.725060, 18.340063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711676, 34.276272, 19.128271>,  <31.363407, 34.730972, 18.589825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711676, 34.276272, 19.128271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016682, 34.439690, 18.927607>,  <32.199684, 34.537739, 18.807209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016682, 34.439690, 18.927607>,  <31.711676, 34.276272, 19.128271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016682, 34.439690, 18.927607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553981, -0.011787, 0.832446,
		0.334176, -0.912663, -0.235313,
		0.762516, 0.408542, -0.501660,
		32.245438, 34.562252, 18.777109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285473, 33.881718, 19.349300>,  <31.711676, 34.276272, 19.128271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285473, 33.881718, 19.349300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429844, 34.224865, 19.202991>,  <32.516468, 34.430756, 19.115206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429844, 34.224865, 19.202991>,  <32.285473, 33.881718, 19.349300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429844, 34.224865, 19.202991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644441, 0.054081, 0.762739,
		0.674113, -0.511013, -0.533327,
		0.360927, 0.857870, -0.365774,
		32.538120, 34.482227, 19.093260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021523, 33.840996, 19.365726>,  <32.285473, 33.881718, 19.349300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021523, 33.840996, 19.365726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931503, 34.230526, 19.378511>,  <32.877491, 34.464245, 19.386183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931503, 34.230526, 19.378511>,  <33.021523, 33.840996, 19.365726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931503, 34.230526, 19.378511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468478, 0.079383, 0.879902,
		0.854332, 0.212992, -0.474079,
		-0.225046, 0.973824, 0.031963,
		32.863991, 34.522675, 19.388100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607502, 34.174774, 19.666716>,  <33.021523, 33.840996, 19.365726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607502, 34.174774, 19.666716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317993, 34.448467, 19.702442>,  <33.144287, 34.612682, 19.723879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317993, 34.448467, 19.702442>,  <33.607502, 34.174774, 19.666716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317993, 34.448467, 19.702442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301635, 0.197305, 0.932785,
		0.620619, 0.702066, -0.349193,
		-0.723774, 0.684232, 0.089317,
		33.100861, 34.653736, 19.729237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906265, 34.690079, 20.049725>,  <33.607502, 34.174774, 19.666716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906265, 34.690079, 20.049725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519608, 34.788651, 20.077662>,  <33.287613, 34.847794, 20.094423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519608, 34.788651, 20.077662>,  <33.906265, 34.690079, 20.049725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519608, 34.788651, 20.077662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145984, 0.305991, 0.940775,
		0.210467, 0.919587, -0.331758,
		-0.966640, 0.246433, 0.069844,
		33.229614, 34.862579, 20.098616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876759, 35.297405, 20.340897>,  <33.906265, 34.690079, 20.049725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876759, 35.297405, 20.340897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516205, 35.137554, 20.407595>,  <33.299873, 35.041645, 20.447613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516205, 35.137554, 20.407595>,  <33.876759, 35.297405, 20.340897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516205, 35.137554, 20.407595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099254, 0.184147, 0.977875,
		-0.421487, 0.897993, -0.126323,
		-0.901386, -0.399624, 0.166745,
		33.245789, 35.017666, 20.457619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462910, 35.827610, 20.616467>,  <33.876759, 35.297405, 20.340897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462910, 35.827610, 20.616467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304203, 35.479515, 20.733273>,  <33.208981, 35.270660, 20.803356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304203, 35.479515, 20.733273>,  <33.462910, 35.827610, 20.616467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304203, 35.479515, 20.733273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052764, 0.295980, 0.953736,
		-0.916403, 0.393816, -0.071517,
		-0.396764, -0.870233, 0.292016,
		33.185173, 35.218445, 20.820877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957394, 35.992397, 21.116289>,  <33.462910, 35.827610, 20.616467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957394, 35.992397, 21.116289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048195, 35.613564, 21.207066>,  <33.102676, 35.386265, 21.261532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048195, 35.613564, 21.207066>,  <32.957394, 35.992397, 21.116289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048195, 35.613564, 21.207066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072205, 0.248751, 0.965872,
		-0.971214, -0.202868, 0.124851,
		0.227001, -0.947084, 0.226943,
		33.116295, 35.329437, 21.275148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642281, 35.888668, 21.757454>,  <32.957394, 35.992397, 21.116289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642281, 35.888668, 21.757454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889725, 35.574459, 21.750853>,  <33.038193, 35.385933, 21.746893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889725, 35.574459, 21.750853>,  <32.642281, 35.888668, 21.757454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889725, 35.574459, 21.750853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106683, 0.063168, 0.992284,
		-0.778423, -0.615596, 0.122879,
		0.618609, -0.785526, -0.016502,
		33.075306, 35.338802, 21.745901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402409, 35.460018, 22.209982>,  <32.642281, 35.888668, 21.757454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402409, 35.460018, 22.209982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766468, 35.303169, 22.156511>,  <32.984905, 35.209061, 22.124430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766468, 35.303169, 22.156511>,  <32.402409, 35.460018, 22.209982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766468, 35.303169, 22.156511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147486, 0.005156, 0.989051,
		-0.387136, -0.919900, 0.062524,
		0.910150, -0.392119, -0.133676,
		33.039513, 35.185535, 22.116409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456623, 34.971603, 22.775757>,  <32.402409, 35.460018, 22.209982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456623, 34.971603, 22.775757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821228, 35.057240, 22.635294>,  <33.039989, 35.108624, 22.551016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821228, 35.057240, 22.635294>,  <32.456623, 34.971603, 22.775757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821228, 35.057240, 22.635294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332343, 0.119537, 0.935553,
		0.242272, -0.969471, 0.037807,
		0.911511, 0.214093, -0.351158,
		33.094681, 35.121468, 22.529947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839073, 34.653049, 23.268318>,  <32.456623, 34.971603, 22.775757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839073, 34.653049, 23.268318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095173, 34.914261, 23.106514>,  <33.248833, 35.070988, 23.009432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095173, 34.914261, 23.106514>,  <32.839073, 34.653049, 23.268318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095173, 34.914261, 23.106514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238137, 0.331917, 0.912755,
		0.730322, -0.680721, 0.056999,
		0.640251, 0.653032, -0.404511,
		33.287247, 35.110168, 22.985161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506264, 34.625034, 23.655561>,  <32.839073, 34.653049, 23.268318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506264, 34.625034, 23.655561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500931, 34.984837, 23.480881>,  <33.497730, 35.200718, 23.376072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500931, 34.984837, 23.480881>,  <33.506264, 34.625034, 23.655561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500931, 34.984837, 23.480881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279190, 0.422721, 0.862183,
		0.960143, -0.110426, -0.256770,
		-0.013334, 0.899507, -0.436703,
		33.496929, 35.254688, 23.349871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040409, 35.004627, 24.012892>,  <33.506264, 34.625034, 23.655561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040409, 35.004627, 24.012892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835293, 35.284782, 23.814295>,  <33.712223, 35.452873, 23.695137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835293, 35.284782, 23.814295>,  <34.040409, 35.004627, 24.012892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835293, 35.284782, 23.814295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092589, 0.620060, 0.779072,
		0.853505, 0.353533, -0.382810,
		-0.512793, 0.700386, -0.496491,
		33.681454, 35.494900, 23.665348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453182, 35.633381, 24.033897>,  <34.040409, 35.004627, 24.012892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453182, 35.633381, 24.033897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064911, 35.722137, 23.996902>,  <33.831947, 35.775391, 23.974705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064911, 35.722137, 23.996902>,  <34.453182, 35.633381, 24.033897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064911, 35.722137, 23.996902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049372, 0.560541, 0.826654,
		0.235271, 0.797846, -0.555058,
		-0.970675, 0.221892, -0.092488,
		33.773708, 35.788704, 23.969156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478230, 36.336555, 24.307568>,  <34.453182, 35.633381, 24.033897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478230, 36.336555, 24.307568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099953, 36.207363, 24.292833>,  <33.872986, 36.129848, 24.283993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099953, 36.207363, 24.292833>,  <34.478230, 36.336555, 24.307568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099953, 36.207363, 24.292833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200279, 0.489639, 0.848612,
		-0.256050, 0.809899, -0.527732,
		-0.945688, -0.322981, -0.036834,
		33.816246, 36.110470, 24.281782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122570, 36.929649, 24.463951>,  <34.478230, 36.336555, 24.307568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122570, 36.929649, 24.463951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860897, 36.639549, 24.549795>,  <33.703892, 36.465488, 24.601301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860897, 36.639549, 24.549795>,  <34.122570, 36.929649, 24.463951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860897, 36.639549, 24.549795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268002, 0.487618, 0.830906,
		-0.707260, 0.486050, -0.513360,
		-0.654185, -0.725248, 0.214611,
		33.664642, 36.421974, 24.614178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473656, 37.248779, 24.548046>,  <34.122570, 36.929649, 24.463951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473656, 37.248779, 24.548046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492878, 36.904766, 24.751236>,  <33.504414, 36.698360, 24.873150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492878, 36.904766, 24.751236>,  <33.473656, 37.248779, 24.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492878, 36.904766, 24.751236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178022, 0.493044, 0.851596,
		-0.982852, -0.131357, -0.129409,
		0.048058, -0.860031, 0.507974,
		33.507294, 36.646755, 24.903627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943832, 37.336540, 24.910448>,  <33.473656, 37.248779, 24.548046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943832, 37.336540, 24.910448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124264, 37.045292, 25.116890>,  <33.232521, 36.870541, 25.240755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124264, 37.045292, 25.116890>,  <32.943832, 37.336540, 24.910448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124264, 37.045292, 25.116890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152245, 0.507028, 0.848378,
		-0.879403, -0.461259, 0.117856,
		0.451078, -0.728123, 0.516106,
		33.259586, 36.826855, 25.271721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524181, 37.336864, 25.589859>,  <32.943832, 37.336540, 24.910448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524181, 37.336864, 25.589859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823723, 37.079185, 25.652113>,  <33.003448, 36.924580, 25.689466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823723, 37.079185, 25.652113>,  <32.524181, 37.336864, 25.589859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823723, 37.079185, 25.652113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199958, 0.004271, 0.979795,
		-0.631847, -0.764847, -0.125614,
		0.748857, -0.644198, 0.155636,
		33.048382, 36.885925, 25.698803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325893, 36.699650, 25.943256>,  <32.524181, 37.336864, 25.589859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325893, 36.699650, 25.943256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711197, 36.767498, 26.026543>,  <32.942379, 36.808205, 26.076515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711197, 36.767498, 26.026543>,  <32.325893, 36.699650, 25.943256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711197, 36.767498, 26.026543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205393, -0.034217, 0.978081,
		0.173026, -0.984915, 0.001878,
		0.963263, 0.169620, 0.208215,
		33.000175, 36.818382, 26.089006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505157, 36.271435, 26.524979>,  <32.325893, 36.699650, 25.943256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505157, 36.271435, 26.524979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805885, 36.534958, 26.514107>,  <32.986320, 36.693073, 26.507584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805885, 36.534958, 26.514107>,  <32.505157, 36.271435, 26.524979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805885, 36.534958, 26.514107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064740, 0.114778, 0.991279,
		0.656186, -0.743501, 0.128944,
		0.751817, 0.658811, -0.027181,
		33.031429, 36.732601, 26.505953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120136, 36.013302, 26.963867>,  <32.505157, 36.271435, 26.524979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120136, 36.013302, 26.963867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174595, 36.408073, 26.929386>,  <33.207272, 36.644936, 26.908697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174595, 36.408073, 26.929386>,  <33.120136, 36.013302, 26.963867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174595, 36.408073, 26.929386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042161, 0.081160, 0.995809,
		0.989791, -0.139213, -0.030560,
		0.136149, 0.986931, -0.086200,
		33.215439, 36.704151, 26.903526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695259, 36.240425, 27.451910>,  <33.120136, 36.013302, 26.963867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695259, 36.240425, 27.451910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505600, 36.577820, 27.350946>,  <33.391804, 36.780258, 27.290369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505600, 36.577820, 27.350946>,  <33.695259, 36.240425, 27.451910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505600, 36.577820, 27.350946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122345, 0.347022, 0.929843,
		0.871905, 0.410000, -0.267736,
		-0.474146, 0.843490, -0.252408,
		33.363358, 36.830868, 27.275225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163532, 36.781952, 27.629644>,  <33.695259, 36.240425, 27.451910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163532, 36.781952, 27.629644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793789, 36.934254, 27.619968>,  <33.571941, 37.025635, 27.614162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793789, 36.934254, 27.619968>,  <34.163532, 36.781952, 27.629644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793789, 36.934254, 27.619968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133929, 0.383195, 0.913907,
		0.357243, 0.841539, -0.405204,
		-0.924359, 0.380755, -0.024188,
		33.516479, 37.048481, 27.612713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001171, 37.587460, 27.699263>,  <34.163532, 36.781952, 27.629644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001171, 37.587460, 27.699263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669468, 37.408211, 27.832836>,  <33.470444, 37.300663, 27.912979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669468, 37.408211, 27.832836>,  <34.001171, 37.587460, 27.699263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669468, 37.408211, 27.832836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027377, 0.564232, 0.825163,
		-0.558190, 0.693418, -0.455627,
		-0.829261, -0.448124, 0.333932,
		33.420689, 37.273773, 27.933016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799206, 37.991100, 28.305784>,  <34.001171, 37.587460, 27.699263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799206, 37.991100, 28.305784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525688, 37.699562, 28.319687>,  <33.361580, 37.524639, 28.328028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525688, 37.699562, 28.319687>,  <33.799206, 37.991100, 28.305784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525688, 37.699562, 28.319687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364037, 0.382037, 0.849426,
		-0.632382, 0.568177, -0.526562,
		-0.683791, -0.728850, 0.034756,
		33.320553, 37.480907, 28.330114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189590, 38.304928, 28.521963>,  <33.799206, 37.991100, 28.305784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189590, 38.304928, 28.521963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088257, 37.922779, 28.582754>,  <33.027458, 37.693489, 28.619228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088257, 37.922779, 28.582754>,  <33.189590, 38.304928, 28.521963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088257, 37.922779, 28.582754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383425, 0.243398, 0.890922,
		-0.888149, 0.167424, -0.427972,
		-0.253329, -0.955367, 0.151979,
		33.012257, 37.636169, 28.628347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451504, 38.246075, 28.869993>,  <33.189590, 38.304928, 28.521963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451504, 38.246075, 28.869993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676682, 37.928078, 28.960394>,  <32.811790, 37.737278, 29.014635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676682, 37.928078, 28.960394>,  <32.451504, 38.246075, 28.869993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676682, 37.928078, 28.960394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237682, 0.106175, 0.965523,
		-0.791579, -0.597255, -0.129185,
		0.562947, -0.794993, 0.226003,
		32.845566, 37.689579, 29.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998474, 37.667244, 29.289083>,  <32.451504, 38.246075, 28.869993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998474, 37.667244, 29.289083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384651, 37.630592, 29.386671>,  <32.616360, 37.608601, 29.445223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384651, 37.630592, 29.386671>,  <31.998474, 37.667244, 29.289083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384651, 37.630592, 29.386671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226630, 0.166993, 0.959558,
		-0.128666, -0.981691, 0.140456,
		0.965445, -0.091631, 0.243967,
		32.674286, 37.603104, 29.459862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939785, 37.467052, 29.972433>,  <31.998474, 37.667244, 29.289083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939785, 37.467052, 29.972433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334373, 37.531940, 29.962973>,  <32.571125, 37.570873, 29.957296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334373, 37.531940, 29.962973>,  <31.939785, 37.467052, 29.972433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334373, 37.531940, 29.962973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006415, 0.182354, 0.983212,
		0.163804, -0.969759, 0.180928,
		0.986472, 0.162215, -0.023650,
		32.630314, 37.580605, 29.955877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173683, 37.154335, 30.574848>,  <31.939785, 37.467052, 29.972433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173683, 37.154335, 30.574848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473572, 37.403904, 30.486628>,  <32.653503, 37.553646, 30.433695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473572, 37.403904, 30.486628>,  <32.173683, 37.154335, 30.574848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473572, 37.403904, 30.486628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259440, 0.029482, 0.965309,
		0.608779, -0.780931, -0.139767,
		0.749720, 0.623921, -0.220553,
		32.698486, 37.591080, 30.420462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633343, 37.054047, 31.142756>,  <32.173683, 37.154335, 30.574848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633343, 37.054047, 31.142756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753292, 37.403381, 30.989202>,  <32.825260, 37.612980, 30.897072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753292, 37.403381, 30.989202>,  <32.633343, 37.054047, 31.142756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753292, 37.403381, 30.989202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217410, 0.329248, 0.918874,
		0.928876, -0.359004, -0.091140,
		0.299871, 0.873334, -0.383881,
		32.843254, 37.665382, 30.874039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356339, 37.092278, 31.328184>,  <32.633343, 37.054047, 31.142756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356339, 37.092278, 31.328184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249546, 37.469154, 31.247200>,  <33.185471, 37.695282, 31.198610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249546, 37.469154, 31.247200>,  <33.356339, 37.092278, 31.328184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249546, 37.469154, 31.247200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197565, 0.259135, 0.945419,
		0.943233, 0.212412, -0.255329,
		-0.266983, 0.942194, -0.202459,
		33.169453, 37.751812, 31.186462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899948, 37.509632, 31.548622>,  <33.356339, 37.092278, 31.328184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899948, 37.509632, 31.548622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578564, 37.747498, 31.560152>,  <33.385735, 37.890217, 31.567070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578564, 37.747498, 31.560152>,  <33.899948, 37.509632, 31.548622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578564, 37.747498, 31.560152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213997, 0.243279, 0.946055,
		0.555571, 0.766285, -0.322721,
		-0.803459, 0.594662, 0.028824,
		33.337524, 37.925896, 31.568800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057404, 38.246365, 31.953989>,  <33.899948, 37.509632, 31.548622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057404, 38.246365, 31.953989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659485, 38.212448, 31.931406>,  <33.420734, 38.192097, 31.917856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659485, 38.212448, 31.931406>,  <34.057404, 38.246365, 31.953989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659485, 38.212448, 31.931406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082642, 0.347704, 0.933955,
		-0.059563, 0.933762, -0.352902,
		-0.994798, -0.084794, -0.056458,
		33.361046, 38.187012, 31.914469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630585, 38.070419, 31.495836>,  <34.057404, 38.246365, 31.953989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630585, 38.070419, 31.495836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886124, 37.772175, 31.571661>,  <35.039448, 37.593227, 31.617155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886124, 37.772175, 31.571661>,  <34.630585, 38.070419, 31.495836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886124, 37.772175, 31.571661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288411, 0.003683, -0.957500,
		0.713229, 0.666366, 0.217397,
		0.638846, -0.745616, 0.189561,
		35.077778, 37.548489, 31.628529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194202, 38.226738, 31.061848>,  <34.630585, 38.070419, 31.495836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194202, 38.226738, 31.061848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299355, 37.857391, 31.173769>,  <35.362446, 37.635784, 31.240923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299355, 37.857391, 31.173769>,  <35.194202, 38.226738, 31.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299355, 37.857391, 31.173769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346824, -0.180185, -0.920460,
		0.900337, 0.339015, 0.272878,
		0.262881, -0.923365, 0.279805,
		35.378220, 37.580383, 31.257711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936543, 38.092720, 30.887613>,  <35.194202, 38.226738, 31.061848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936543, 38.092720, 30.887613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751831, 37.737976, 30.881424>,  <35.641006, 37.525127, 30.877710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751831, 37.737976, 30.881424>,  <35.936543, 38.092720, 30.887613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751831, 37.737976, 30.881424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400635, -0.192978, -0.895685,
		0.791363, -0.419804, 0.444421,
		-0.461775, -0.886862, -0.015472,
		35.613297, 37.471916, 30.876781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472992, 37.592064, 30.735527>,  <35.936543, 38.092720, 30.887613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472992, 37.592064, 30.735527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121979, 37.425385, 30.640623>,  <35.911369, 37.325378, 30.583681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121979, 37.425385, 30.640623>,  <36.472992, 37.592064, 30.735527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121979, 37.425385, 30.640623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349851, -0.218009, -0.911086,
		0.327924, -0.882516, 0.337093,
		-0.877537, -0.416699, -0.237259,
		35.858719, 37.300373, 30.569445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480591, 36.930336, 30.641056>,  <36.472992, 37.592064, 30.735527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480591, 36.930336, 30.641056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164669, 37.001293, 30.406197>,  <35.975117, 37.043869, 30.265282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164669, 37.001293, 30.406197>,  <36.480591, 36.930336, 30.641056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164669, 37.001293, 30.406197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469025, -0.442197, -0.764511,
		-0.395254, -0.879201, 0.266047,
		-0.789804, 0.177394, -0.587147,
		35.927727, 37.054512, 30.230053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523495, 36.389843, 30.117798>,  <36.480591, 36.930336, 30.641056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523495, 36.389843, 30.117798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269142, 36.640041, 29.936953>,  <36.116531, 36.790161, 29.828445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269142, 36.640041, 29.936953>,  <36.523495, 36.389843, 30.117798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269142, 36.640041, 29.936953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440656, -0.186689, -0.878049,
		-0.633623, -0.757562, -0.156917,
		-0.635881, 0.625498, -0.452114,
		36.078377, 36.827690, 29.801319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380299, 35.893211, 29.627516>,  <36.523495, 36.389843, 30.117798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380299, 35.893211, 29.627516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267220, 36.259789, 29.514221>,  <36.199371, 36.479733, 29.446243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267220, 36.259789, 29.514221>,  <36.380299, 35.893211, 29.627516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267220, 36.259789, 29.514221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368583, -0.168828, -0.914135,
		-0.885567, -0.362819, -0.290057,
		-0.282696, 0.916438, -0.283238,
		36.182411, 36.534721, 29.429251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260475, 35.772690, 28.983015>,  <36.380299, 35.893211, 29.627516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260475, 35.772690, 28.983015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279747, 36.172211, 28.986580>,  <36.291309, 36.411922, 28.988720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279747, 36.172211, 28.986580>,  <36.260475, 35.772690, 28.983015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279747, 36.172211, 28.986580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287302, -0.005311, -0.957826,
		-0.956628, 0.048710, -0.287212,
		0.048181, 0.998799, 0.008914,
		36.294201, 36.471851, 28.989254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827644, 35.995426, 28.497377>,  <36.260475, 35.772690, 28.983015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827644, 35.995426, 28.497377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091820, 36.294102, 28.529083>,  <36.250324, 36.473305, 28.548107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091820, 36.294102, 28.529083>,  <35.827644, 35.995426, 28.497377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091820, 36.294102, 28.529083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323171, -0.187375, -0.927605,
		-0.677776, 0.638242, -0.365056,
		0.660439, 0.746684, 0.079263,
		36.289951, 36.518108, 28.552862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722290, 36.405437, 27.893082>,  <35.827644, 35.995426, 28.497377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722290, 36.405437, 27.893082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080956, 36.514393, 28.032679>,  <36.296154, 36.579765, 28.116436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080956, 36.514393, 28.032679>,  <35.722290, 36.405437, 27.893082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080956, 36.514393, 28.032679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375672, -0.051089, -0.925343,
		-0.234221, 0.960831, -0.148138,
		0.896667, 0.272386, 0.348991,
		36.349957, 36.596107, 28.137377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913441, 37.011906, 27.536629>,  <35.722290, 36.405437, 27.893082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913441, 37.011906, 27.536629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257538, 36.848778, 27.659050>,  <36.463997, 36.750900, 27.732504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257538, 36.848778, 27.659050>,  <35.913441, 37.011906, 27.536629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257538, 36.848778, 27.659050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380954, 0.115089, -0.917403,
		0.338915, 0.905779, 0.254366,
		0.860239, -0.407823, 0.306055,
		36.515610, 36.726429, 27.750866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291851, 37.327984, 27.157063>,  <35.913441, 37.011906, 27.536629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291851, 37.327984, 27.157063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549667, 37.055847, 27.296608>,  <36.704357, 36.892567, 27.380335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549667, 37.055847, 27.296608>,  <36.291851, 37.327984, 27.157063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549667, 37.055847, 27.296608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450457, -0.030779, -0.892268,
		0.617782, 0.732251, 0.286625,
		0.644542, -0.680339, 0.348862,
		36.743031, 36.851746, 27.401266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043167, 37.485428, 26.941322>,  <36.291851, 37.327984, 27.157063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043167, 37.485428, 26.941322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004395, 37.092258, 27.003881>,  <36.981133, 36.856358, 27.041418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004395, 37.092258, 27.003881>,  <37.043167, 37.485428, 26.941322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004395, 37.092258, 27.003881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278193, -0.177632, -0.943957,
		0.955622, -0.047988, 0.290661,
		-0.096929, -0.982926, 0.156399,
		36.975315, 36.797382, 27.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528015, 37.182129, 26.491999>,  <37.043167, 37.485428, 26.941322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528015, 37.182129, 26.491999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265518, 36.891190, 26.572306>,  <37.108021, 36.716625, 26.620489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265518, 36.891190, 26.572306>,  <37.528015, 37.182129, 26.491999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265518, 36.891190, 26.572306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121581, -0.364528, -0.923221,
		0.744689, -0.581449, 0.327651,
		-0.656244, -0.727349, 0.200766,
		37.068645, 36.672985, 26.632536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784996, 36.534634, 26.095774>,  <37.528015, 37.182129, 26.491999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784996, 36.534634, 26.095774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402920, 36.438175, 26.164429>,  <37.173676, 36.380302, 26.205622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402920, 36.438175, 26.164429>,  <37.784996, 36.534634, 26.095774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402920, 36.438175, 26.164429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097081, -0.292554, -0.951308,
		0.279616, -0.925344, 0.256034,
		-0.955191, -0.241145, 0.171636,
		37.116364, 36.365833, 26.215919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686722, 35.869312, 25.827194>,  <37.784996, 36.534634, 26.095774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686722, 35.869312, 25.827194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319286, 36.022251, 25.867222>,  <37.098827, 36.114014, 25.891237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319286, 36.022251, 25.867222>,  <37.686722, 35.869312, 25.827194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319286, 36.022251, 25.867222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250216, -0.366621, -0.896092,
		-0.305926, -0.848177, 0.432441,
		-0.918586, 0.382342, 0.100069,
		37.043713, 36.136955, 25.897242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228531, 35.333958, 25.894247>,  <37.686722, 35.869312, 25.827194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228531, 35.333958, 25.894247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995682, 35.632320, 25.764788>,  <36.855972, 35.811340, 25.687113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995682, 35.632320, 25.764788>,  <37.228531, 35.333958, 25.894247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995682, 35.632320, 25.764788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302217, -0.568013, -0.765523,
		-0.754849, -0.347817, 0.556081,
		-0.582124, 0.745911, -0.323648,
		36.821045, 35.856094, 25.667694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583927, 34.994720, 25.694031>,  <37.228531, 35.333958, 25.894247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583927, 34.994720, 25.694031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583752, 35.352280, 25.514721>,  <36.583649, 35.566814, 25.407135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583752, 35.352280, 25.514721>,  <36.583927, 34.994720, 25.694031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583752, 35.352280, 25.514721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322375, -0.424468, -0.846110,
		-0.946612, 0.144144, 0.288354,
		-0.000436, 0.893896, -0.448275,
		36.583622, 35.620449, 25.380239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019485, 35.025158, 25.162634>,  <36.583927, 34.994720, 25.694031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019485, 35.025158, 25.162634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252628, 35.316822, 25.019192>,  <36.392513, 35.491821, 24.933126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252628, 35.316822, 25.019192>,  <36.019485, 35.025158, 25.162634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252628, 35.316822, 25.019192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117780, -0.360849, -0.925157,
		-0.803993, 0.581471, -0.124443,
		0.582857, 0.729164, -0.358605,
		36.427486, 35.535572, 24.911610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638931, 35.297207, 24.603035>,  <36.019485, 35.025158, 25.162634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638931, 35.297207, 24.603035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010876, 35.415615, 24.515656>,  <36.234043, 35.486660, 24.463228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010876, 35.415615, 24.515656>,  <35.638931, 35.297207, 24.603035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010876, 35.415615, 24.515656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138191, -0.269258, -0.953102,
		-0.340959, 0.916445, -0.209466,
		0.929866, 0.296022, -0.218451,
		36.289837, 35.504421, 24.450121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550869, 35.694500, 23.922081>,  <35.638931, 35.297207, 24.603035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550869, 35.694500, 23.922081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935829, 35.594994, 23.965727>,  <36.166805, 35.535290, 23.991915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935829, 35.594994, 23.965727>,  <35.550869, 35.694500, 23.922081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935829, 35.594994, 23.965727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007563, -0.376978, -0.926192,
		0.271541, 0.892190, -0.360921,
		0.962397, -0.248769, 0.109112,
		36.224548, 35.520363, 23.998461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909454, 36.002213, 23.371084>,  <35.550869, 35.694500, 23.922081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909454, 36.002213, 23.371084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114986, 35.685879, 23.504087>,  <36.238304, 35.496078, 23.583889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114986, 35.685879, 23.504087>,  <35.909454, 36.002213, 23.371084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114986, 35.685879, 23.504087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037140, -0.366715, -0.929592,
		0.857089, 0.489999, -0.159056,
		0.513827, -0.790836, 0.332506,
		36.269135, 35.448627, 23.603840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442421, 35.923561, 22.851807>,  <35.909454, 36.002213, 23.371084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442421, 35.923561, 22.851807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404572, 35.570038, 23.035082>,  <36.381863, 35.357925, 23.145046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404572, 35.570038, 23.035082>,  <36.442421, 35.923561, 22.851807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404572, 35.570038, 23.035082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035947, -0.462986, -0.885636,
		0.994864, -0.067332, 0.075579,
		-0.094624, -0.883804, 0.458187,
		36.376183, 35.304897, 23.172539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848911, 35.619850, 22.506845>,  <36.442421, 35.923561, 22.851807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848911, 35.619850, 22.506845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609375, 35.361675, 22.696499>,  <36.465652, 35.206772, 22.810291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609375, 35.361675, 22.696499>,  <36.848911, 35.619850, 22.506845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609375, 35.361675, 22.696499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198298, -0.454092, -0.868607,
		0.775931, -0.614177, 0.143940,
		-0.598840, -0.645435, 0.474134,
		36.429722, 35.168045, 22.838739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957779, 35.033318, 22.127131>,  <36.848911, 35.619850, 22.506845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957779, 35.033318, 22.127131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611469, 34.956444, 22.311954>,  <36.403683, 34.910320, 22.422850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611469, 34.956444, 22.311954>,  <36.957779, 35.033318, 22.127131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611469, 34.956444, 22.311954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329587, -0.475809, -0.815462,
		0.376573, -0.858295, 0.348601,
		-0.865775, -0.192186, 0.462060,
		36.351738, 34.898788, 22.450573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765598, 34.263699, 22.187487>,  <36.957779, 35.033318, 22.127131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765598, 34.263699, 22.187487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411640, 34.443733, 22.235468>,  <36.199265, 34.551754, 22.264257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411640, 34.443733, 22.235468>,  <36.765598, 34.263699, 22.187487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411640, 34.443733, 22.235468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408768, -0.626894, -0.663259,
		-0.223324, -0.635947, 0.738714,
		-0.884893, 0.450084, 0.119955,
		36.146172, 34.578758, 22.271454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389343, 33.736042, 22.153603>,  <36.765598, 34.263699, 22.187487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389343, 33.736042, 22.153603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121868, 34.027534, 22.094521>,  <35.961384, 34.202431, 22.059071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121868, 34.027534, 22.094521>,  <36.389343, 33.736042, 22.153603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121868, 34.027534, 22.094521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413652, -0.529661, -0.740507,
		-0.617865, -0.434064, 0.655615,
		-0.668682, 0.728730, -0.147708,
		35.921265, 34.246155, 22.050209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730137, 33.402935, 22.106691>,  <36.389343, 33.736042, 22.153603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730137, 33.402935, 22.106691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690708, 33.764694, 21.940630>,  <35.667049, 33.981750, 21.840994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690708, 33.764694, 21.940630>,  <35.730137, 33.402935, 22.106691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690708, 33.764694, 21.940630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526474, -0.401413, -0.749462,
		-0.844458, 0.144693, 0.515708,
		-0.098570, 0.904396, -0.415153,
		35.661137, 34.036015, 21.816084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095654, 33.319016, 21.952900>,  <35.730137, 33.402935, 22.106691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095654, 33.319016, 21.952900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216206, 33.618538, 21.716782>,  <35.288536, 33.798252, 21.575109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216206, 33.618538, 21.716782>,  <35.095654, 33.319016, 21.952900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216206, 33.618538, 21.716782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568723, -0.355732, -0.741626,
		-0.765324, 0.559230, 0.318654,
		0.301385, 0.748810, -0.590297,
		35.306622, 33.843182, 21.539692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458870, 33.565594, 21.573997>,  <35.095654, 33.319016, 21.952900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458870, 33.565594, 21.573997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776085, 33.699284, 21.370275>,  <34.966412, 33.779499, 21.248043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776085, 33.699284, 21.370275>,  <34.458870, 33.565594, 21.573997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776085, 33.699284, 21.370275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425237, -0.294933, -0.855680,
		-0.436199, 0.895158, -0.091768,
		0.793035, 0.334224, -0.509304,
		35.013996, 33.799549, 21.217484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197289, 33.834675, 20.941080>,  <34.458870, 33.565594, 21.573997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197289, 33.834675, 20.941080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583908, 33.772762, 20.859270>,  <34.815880, 33.735615, 20.810184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583908, 33.772762, 20.859270>,  <34.197289, 33.834675, 20.941080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583908, 33.772762, 20.859270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254969, -0.493121, -0.831759,
		0.027885, 0.856081, -0.516088,
		0.966547, -0.154779, -0.204523,
		34.873871, 33.726330, 20.797913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296978, 33.985798, 20.199829>,  <34.197289, 33.834675, 20.941080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296978, 33.985798, 20.199829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578888, 33.734230, 20.331137>,  <34.748032, 33.583290, 20.409922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578888, 33.734230, 20.331137>,  <34.296978, 33.985798, 20.199829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578888, 33.734230, 20.331137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240132, -0.646885, -0.723793,
		0.667559, 0.431281, -0.606929,
		0.704771, -0.628918, 0.328269,
		34.790318, 33.545555, 20.429617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619568, 33.714993, 19.719551>,  <34.296978, 33.985798, 20.199829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619568, 33.714993, 19.719551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701355, 33.413353, 19.969198>,  <34.750427, 33.232368, 20.118986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701355, 33.413353, 19.969198>,  <34.619568, 33.714993, 19.719551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701355, 33.413353, 19.969198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337924, -0.652768, -0.678012,
		0.918694, -0.072271, -0.388301,
		0.204469, -0.754102, 0.624117,
		34.762695, 33.187122, 20.156433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797134, 33.281273, 19.297649>,  <34.619568, 33.714993, 19.719551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797134, 33.281273, 19.297649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763252, 33.046413, 19.619661>,  <34.742924, 32.905499, 19.812868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763252, 33.046413, 19.619661>,  <34.797134, 33.281273, 19.297649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763252, 33.046413, 19.619661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292154, -0.757790, -0.583439,
		0.952612, -0.284616, -0.107347,
		-0.084710, -0.587153, 0.805032,
		34.737839, 32.870266, 19.861172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234257, 32.740753, 19.155512>,  <34.797134, 33.281273, 19.297649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234257, 32.740753, 19.155512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968647, 32.631535, 19.433941>,  <34.809280, 32.566002, 19.600998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968647, 32.631535, 19.433941>,  <35.234257, 32.740753, 19.155512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968647, 32.631535, 19.433941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214787, -0.822042, -0.527365,
		0.716197, -0.499691, 0.487208,
		-0.664025, -0.273051, 0.696071,
		34.769440, 32.549618, 19.642761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334869, 32.071823, 19.237967>,  <35.234257, 32.740753, 19.155512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334869, 32.071823, 19.237967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967049, 32.137337, 19.380848>,  <34.746357, 32.176643, 19.466578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967049, 32.137337, 19.380848>,  <35.334869, 32.071823, 19.237967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967049, 32.137337, 19.380848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336900, -0.796509, -0.502068,
		0.202286, -0.582021, 0.787612,
		-0.919553, 0.163785, 0.357206,
		34.691181, 32.186474, 19.488010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125729, 31.495430, 19.600925>,  <35.334869, 32.071823, 19.237967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125729, 31.495430, 19.600925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789532, 31.680590, 19.488291>,  <34.587814, 31.791687, 19.420710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789532, 31.680590, 19.488291>,  <35.125729, 31.495430, 19.600925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789532, 31.680590, 19.488291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304071, -0.833132, -0.461986,
		-0.448451, -0.302676, 0.840999,
		-0.840496, 0.462902, -0.281584,
		34.537384, 31.819460, 19.403816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547813, 31.034283, 19.679953>,  <35.125729, 31.495430, 19.600925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547813, 31.034283, 19.679953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420013, 31.304186, 19.413834>,  <34.343334, 31.466127, 19.254162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420013, 31.304186, 19.413834>,  <34.547813, 31.034283, 19.679953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420013, 31.304186, 19.413834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492576, -0.718048, -0.491707,
		-0.809500, 0.170612, 0.561784,
		-0.319497, 0.674758, -0.665299,
		34.324165, 31.506613, 19.214245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339771, 30.337212, 19.387756>,  <34.547813, 31.034283, 19.679953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339771, 30.337212, 19.387756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638130, 30.073284, 19.351381>,  <34.817146, 29.914927, 19.329557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638130, 30.073284, 19.351381>,  <34.339771, 30.337212, 19.387756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638130, 30.073284, 19.351381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450188, 0.398813, 0.798924,
		-0.490879, -0.636856, 0.594518,
		0.745901, -0.659820, -0.090936,
		34.861900, 29.875338, 19.324100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422371, 29.910154, 19.976280>,  <34.339771, 30.337212, 19.387756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422371, 29.910154, 19.976280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777962, 29.930246, 19.794207>,  <34.991318, 29.942303, 19.684963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777962, 29.930246, 19.794207>,  <34.422371, 29.910154, 19.976280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777962, 29.930246, 19.794207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430758, 0.245660, 0.868388,
		0.155441, -0.968054, 0.196749,
		0.888980, 0.050232, -0.455183,
		35.044655, 29.945316, 19.657652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903904, 29.643942, 20.383324>,  <34.422371, 29.910154, 19.976280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903904, 29.643942, 20.383324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121048, 29.905390, 20.172388>,  <35.251335, 30.062258, 20.045826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121048, 29.905390, 20.172388>,  <34.903904, 29.643942, 20.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121048, 29.905390, 20.172388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544888, 0.203694, 0.813391,
		0.639064, -0.728897, -0.245572,
		0.542857, 0.653619, -0.527341,
		35.283905, 30.101475, 20.014185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485069, 29.693701, 20.749926>,  <34.903904, 29.643942, 20.383324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485069, 29.693701, 20.749926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584290, 29.979603, 20.488361>,  <35.643822, 30.151144, 20.331423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584290, 29.979603, 20.488361>,  <35.485069, 29.693701, 20.749926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584290, 29.979603, 20.488361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697493, 0.336670, 0.632579,
		0.672291, -0.613007, -0.415027,
		0.248048, 0.714756, -0.653909,
		35.658703, 30.194029, 20.292189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201614, 29.752281, 20.732496>,  <35.485069, 29.693701, 20.749926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201614, 29.752281, 20.732496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090050, 30.120684, 20.623716>,  <36.023109, 30.341724, 20.558449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090050, 30.120684, 20.623716>,  <36.201614, 29.752281, 20.732496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090050, 30.120684, 20.623716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686465, 0.389250, 0.614207,
		0.671544, -0.015373, -0.740805,
		-0.278916, 0.921004, -0.271952,
		36.006374, 30.396984, 20.542131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868858, 30.076298, 20.703867>,  <36.201614, 29.752281, 20.732496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868858, 30.076298, 20.703867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588612, 30.361689, 20.707460>,  <36.420464, 30.532923, 20.709616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588612, 30.361689, 20.707460>,  <36.868858, 30.076298, 20.703867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588612, 30.361689, 20.707460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463990, 0.445991, 0.765379,
		0.542076, 0.540407, -0.643517,
		-0.700619, 0.713479, 0.008983,
		36.378426, 30.575733, 20.710155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250694, 30.700888, 20.656090>,  <36.868858, 30.076298, 20.703867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250694, 30.700888, 20.656090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895752, 30.818012, 20.798563>,  <36.682789, 30.888287, 20.884047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895752, 30.818012, 20.798563>,  <37.250694, 30.700888, 20.656090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895752, 30.818012, 20.798563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456760, 0.452586, 0.765857,
		0.063047, 0.842276, -0.535348,
		-0.887353, 0.292810, 0.356184,
		36.629547, 30.905855, 20.905418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284134, 31.463182, 20.816711>,  <37.250694, 30.700888, 20.656090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284134, 31.463182, 20.816711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989525, 31.315636, 21.043503>,  <36.812759, 31.227108, 21.179579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989525, 31.315636, 21.043503>,  <37.284134, 31.463182, 20.816711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989525, 31.315636, 21.043503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225025, 0.656857, 0.719654,
		-0.637883, 0.657628, -0.400788,
		-0.736525, -0.368868, 0.566981,
		36.768566, 31.204975, 21.213596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960144, 32.033829, 21.059464>,  <37.284134, 31.463182, 20.816711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960144, 32.033829, 21.059464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863140, 31.755705, 21.330088>,  <36.804939, 31.588831, 21.492462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863140, 31.755705, 21.330088>,  <36.960144, 32.033829, 21.059464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863140, 31.755705, 21.330088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133760, 0.666755, 0.733176,
		-0.960884, 0.268299, -0.068690,
		-0.242510, -0.695309, 0.676561,
		36.790386, 31.547112, 21.533056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436382, 32.346008, 21.507235>,  <36.960144, 32.033829, 21.059464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436382, 32.346008, 21.507235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607628, 32.041351, 21.701811>,  <36.710377, 31.858559, 21.818556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607628, 32.041351, 21.701811>,  <36.436382, 32.346008, 21.507235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607628, 32.041351, 21.701811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173164, 0.597423, 0.783007,
		-0.886979, -0.250984, 0.387655,
		0.428116, -0.761638, 0.486440,
		36.736061, 31.812860, 21.847742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187557, 32.477020, 22.224592>,  <36.436382, 32.346008, 21.507235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187557, 32.477020, 22.224592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478954, 32.205910, 22.264425>,  <36.653793, 32.043243, 22.288324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478954, 32.205910, 22.264425>,  <36.187557, 32.477020, 22.224592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478954, 32.205910, 22.264425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331620, 0.476103, 0.814465,
		-0.599436, -0.560310, 0.571602,
		0.728495, -0.677774, 0.099583,
		36.697502, 32.002579, 22.294300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245762, 32.256050, 22.986588>,  <36.187557, 32.477020, 22.224592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245762, 32.256050, 22.986588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606007, 32.176674, 22.831913>,  <36.822151, 32.129047, 22.739109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606007, 32.176674, 22.831913>,  <36.245762, 32.256050, 22.986588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606007, 32.176674, 22.831913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426631, 0.233721, 0.873705,
		-0.082999, -0.951839, 0.295151,
		0.900609, -0.198437, -0.386685,
		36.876190, 32.117142, 22.715908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622101, 31.791483, 23.423979>,  <36.245762, 32.256050, 22.986588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622101, 31.791483, 23.423979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923828, 31.958982, 23.221729>,  <37.104862, 32.059483, 23.100380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923828, 31.958982, 23.221729>,  <36.622101, 31.791483, 23.423979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923828, 31.958982, 23.221729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555343, 0.003775, 0.831613,
		0.350146, -0.908094, -0.229701,
		0.754316, 0.418749, -0.505625,
		37.150124, 32.084606, 23.070042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169472, 31.560745, 23.628613>,  <36.622101, 31.791483, 23.423979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169472, 31.560745, 23.628613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346764, 31.858692, 23.429127>,  <37.453140, 32.037460, 23.309435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346764, 31.858692, 23.429127>,  <37.169472, 31.560745, 23.628613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346764, 31.858692, 23.429127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617848, 0.149237, 0.772005,
		0.649468, -0.650309, -0.394068,
		0.443232, 0.744867, -0.498717,
		37.479733, 32.082153, 23.279512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819069, 31.488596, 23.759068>,  <37.169472, 31.560745, 23.628613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819069, 31.488596, 23.759068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756851, 31.869175, 23.652819>,  <37.719521, 32.097523, 23.589069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756851, 31.869175, 23.652819>,  <37.819069, 31.488596, 23.759068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756851, 31.869175, 23.652819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498538, 0.307745, 0.810403,
		0.852799, -0.006369, -0.522200,
		-0.155543, 0.951448, -0.265620,
		37.710190, 32.154610, 23.573133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424576, 31.769718, 23.873720>,  <37.819069, 31.488596, 23.759068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424576, 31.769718, 23.873720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168686, 32.077141, 23.870331>,  <38.015152, 32.261593, 23.868298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168686, 32.077141, 23.870331>,  <38.424576, 31.769718, 23.873720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168686, 32.077141, 23.870331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386096, 0.330873, 0.861077,
		0.664588, 0.547583, -0.508405,
		-0.639728, 0.768554, -0.008475,
		37.976768, 32.307709, 23.867788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921516, 32.451008, 23.994455>,  <38.424576, 31.769718, 23.873720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921516, 32.451008, 23.994455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544888, 32.539135, 24.096365>,  <38.318913, 32.592010, 24.157511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544888, 32.539135, 24.096365>,  <38.921516, 32.451008, 23.994455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544888, 32.539135, 24.096365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335534, 0.547406, 0.766657,
		0.029441, 0.807346, -0.589344,
		-0.941568, 0.220316, 0.254776,
		38.262417, 32.605228, 24.172798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006184, 32.938683, 24.414896>,  <38.921516, 32.451008, 23.994455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006184, 32.938683, 24.414896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613560, 32.897358, 24.479225>,  <38.377983, 32.872562, 24.517822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613560, 32.897358, 24.479225>,  <39.006184, 32.938683, 24.414896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613560, 32.897358, 24.479225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057230, 0.643908, 0.762960,
		-0.182378, 0.758096, -0.626122,
		-0.981561, -0.103314, 0.160821,
		38.319092, 32.866364, 24.527472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779034, 33.546951, 24.431437>,  <39.006184, 32.938683, 24.414896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779034, 33.546951, 24.431437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523548, 33.326675, 24.646391>,  <38.370258, 33.194508, 24.775364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523548, 33.326675, 24.646391>,  <38.779034, 33.546951, 24.431437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523548, 33.326675, 24.646391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005522, 0.701669, 0.712482,
		-0.769423, 0.452105, -0.451208,
		-0.638715, -0.550692, 0.537384,
		38.331932, 33.161469, 24.807606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335911, 34.044682, 24.661060>,  <38.779034, 33.546951, 24.431437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335911, 34.044682, 24.661060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287872, 33.733101, 24.907249>,  <38.259048, 33.546150, 25.054962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287872, 33.733101, 24.907249>,  <38.335911, 34.044682, 24.661060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287872, 33.733101, 24.907249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150789, 0.627078, 0.764223,
		-0.981244, -0.001029, -0.192765,
		-0.120093, -0.778956, 0.615472,
		38.251846, 33.499413, 25.091890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708866, 34.125797, 25.141857>,  <38.335911, 34.044682, 24.661060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708866, 34.125797, 25.141857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938755, 33.859676, 25.332464>,  <38.076687, 33.700005, 25.446829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938755, 33.859676, 25.332464>,  <37.708866, 34.125797, 25.141857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938755, 33.859676, 25.332464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141331, 0.492849, 0.858560,
		-0.806052, -0.560780, 0.189223,
		0.574722, -0.665301, 0.476518,
		38.111172, 33.660088, 25.475420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275593, 34.043285, 25.745550>,  <37.708866, 34.125797, 25.141857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275593, 34.043285, 25.745550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614532, 33.863647, 25.858910>,  <37.817898, 33.755867, 25.926926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614532, 33.863647, 25.858910>,  <37.275593, 34.043285, 25.745550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614532, 33.863647, 25.858910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145875, 0.316297, 0.937378,
		-0.510607, -0.835627, 0.202502,
		0.847349, -0.449092, 0.283401,
		37.868736, 33.728920, 25.943930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113834, 33.646004, 26.329550>,  <37.275593, 34.043285, 25.745550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113834, 33.646004, 26.329550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502335, 33.740681, 26.339796>,  <37.735435, 33.797489, 26.345943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502335, 33.740681, 26.339796>,  <37.113834, 33.646004, 26.329550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502335, 33.740681, 26.339796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108080, 0.342480, 0.933288,
		0.212130, -0.909222, 0.358214,
		0.971247, 0.236694, 0.025618,
		37.793709, 33.811691, 26.347481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245472, 33.398289, 26.928644>,  <37.113834, 33.646004, 26.329550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245472, 33.398289, 26.928644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543915, 33.648624, 26.837732>,  <37.722980, 33.798824, 26.783186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543915, 33.648624, 26.837732>,  <37.245472, 33.398289, 26.928644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543915, 33.648624, 26.837732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006763, 0.334204, 0.942476,
		0.665796, -0.704722, 0.245118,
		0.746103, 0.625839, -0.227278,
		37.767746, 33.836376, 26.769548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670609, 33.315651, 27.401966>,  <37.245472, 33.398289, 26.928644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670609, 33.315651, 27.401966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765663, 33.676476, 27.257849>,  <37.822697, 33.892971, 27.171379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765663, 33.676476, 27.257849>,  <37.670609, 33.315651, 27.401966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765663, 33.676476, 27.257849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022715, 0.365656, 0.930473,
		0.971089, -0.229297, 0.066402,
		0.237635, 0.902063, -0.360293,
		37.836952, 33.947094, 27.149761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162849, 33.508877, 27.925367>,  <37.670609, 33.315651, 27.401966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162849, 33.508877, 27.925367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063110, 33.850925, 27.743555>,  <38.003265, 34.056152, 27.634468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063110, 33.850925, 27.743555>,  <38.162849, 33.508877, 27.925367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063110, 33.850925, 27.743555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229710, 0.508188, 0.830047,
		0.940774, 0.102564, -0.323147,
		-0.249353, 0.855117, -0.454530,
		37.988304, 34.107460, 27.607197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696556, 33.834854, 27.920763>,  <38.162849, 33.508877, 27.925367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696556, 33.834854, 27.920763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384628, 34.085163, 27.927639>,  <38.197472, 34.235348, 27.931765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384628, 34.085163, 27.927639>,  <38.696556, 33.834854, 27.920763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384628, 34.085163, 27.927639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316751, 0.370742, 0.873052,
		0.539955, 0.686267, -0.487324,
		-0.779819, 0.625769, 0.017191,
		38.150684, 34.272896, 27.932796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985313, 34.342857, 28.165693>,  <38.696556, 33.834854, 27.920763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985313, 34.342857, 28.165693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593113, 34.400150, 28.219517>,  <38.357792, 34.434525, 28.251810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593113, 34.400150, 28.219517>,  <38.985313, 34.342857, 28.165693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593113, 34.400150, 28.219517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175235, 0.327268, 0.928541,
		0.088961, 0.934013, -0.345986,
		-0.980499, 0.143233, 0.134557,
		38.298962, 34.443119, 28.259884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947979, 35.017036, 28.345304>,  <38.985313, 34.342857, 28.165693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947979, 35.017036, 28.345304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606281, 34.863842, 28.485926>,  <38.401264, 34.771927, 28.570297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606281, 34.863842, 28.485926>,  <38.947979, 35.017036, 28.345304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606281, 34.863842, 28.485926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251195, 0.287971, 0.924107,
		-0.455158, 0.877721, -0.149793,
		-0.854244, -0.382987, 0.351552,
		38.350010, 34.748947, 28.591391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675327, 35.574127, 28.664812>,  <38.947979, 35.017036, 28.345304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675327, 35.574127, 28.664812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506317, 35.247025, 28.821144>,  <38.404911, 35.050762, 28.914944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506317, 35.247025, 28.821144>,  <38.675327, 35.574127, 28.664812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506317, 35.247025, 28.821144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145955, 0.364192, 0.919816,
		-0.894521, 0.445690, -0.034525,
		-0.422526, -0.817756, 0.390828,
		38.379559, 35.001698, 28.938393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133556, 35.830826, 29.097773>,  <38.675327, 35.574127, 28.664812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133556, 35.830826, 29.097773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202267, 35.457424, 29.223671>,  <38.243492, 35.233383, 29.299210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202267, 35.457424, 29.223671>,  <38.133556, 35.830826, 29.097773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202267, 35.457424, 29.223671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005658, 0.318557, 0.947887,
		-0.985120, -0.164604, 0.049438,
		0.171775, -0.933503, 0.314748,
		38.253799, 35.177372, 29.318096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626087, 35.611389, 29.686758>,  <38.133556, 35.830826, 29.097773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626087, 35.611389, 29.686758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967205, 35.403461, 29.706881>,  <38.171875, 35.278706, 29.718954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967205, 35.403461, 29.706881>,  <37.626087, 35.611389, 29.686758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967205, 35.403461, 29.706881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099055, 0.255574, 0.961702,
		-0.512768, -0.815150, 0.269442,
		0.852794, -0.519820, 0.050306,
		38.223042, 35.247517, 29.721972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646835, 35.447784, 30.427681>,  <37.626087, 35.611389, 29.686758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646835, 35.447784, 30.427681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013615, 35.356178, 30.296984>,  <38.233681, 35.301216, 30.218565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013615, 35.356178, 30.296984>,  <37.646835, 35.447784, 30.427681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013615, 35.356178, 30.296984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343294, 0.035442, 0.938559,
		-0.203362, -0.972778, 0.111117,
		0.916948, -0.229013, -0.326741,
		38.288700, 35.287476, 30.198961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870773, 35.019291, 30.922178>,  <37.646835, 35.447784, 30.427681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870773, 35.019291, 30.922178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219807, 35.108494, 30.748339>,  <38.429226, 35.162014, 30.644035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219807, 35.108494, 30.748339>,  <37.870773, 35.019291, 30.922178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219807, 35.108494, 30.748339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418242, 0.118548, 0.900567,
		0.252351, -0.967582, 0.010172,
		0.872578, 0.223004, -0.434599,
		38.481579, 35.175396, 30.617960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325260, 34.606804, 31.132736>,  <37.870773, 35.019291, 30.922178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325260, 34.606804, 31.132736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569191, 34.895161, 31.001026>,  <38.715549, 35.068176, 30.922001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569191, 34.895161, 31.001026>,  <38.325260, 34.606804, 31.132736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569191, 34.895161, 31.001026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482116, -0.007682, 0.876074,
		0.629027, -0.693003, -0.352239,
		0.609828, 0.720894, -0.329275,
		38.752140, 35.111427, 30.902243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000267, 34.464554, 31.311401>,  <38.325260, 34.606804, 31.132736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000267, 34.464554, 31.311401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001568, 34.860939, 31.257765>,  <39.002350, 35.098770, 31.225582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001568, 34.860939, 31.257765>,  <39.000267, 34.464554, 31.311401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001568, 34.860939, 31.257765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335064, 0.125261, 0.933831,
		0.942189, -0.047968, -0.331629,
		0.003254, 0.990964, -0.134092,
		39.002544, 35.158230, 31.217537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515686, 34.620651, 31.666796>,  <39.000267, 34.464554, 31.311401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515686, 34.620651, 31.666796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360146, 34.981857, 31.593740>,  <39.266819, 35.198582, 31.549908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360146, 34.981857, 31.593740>,  <39.515686, 34.620651, 31.666796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360146, 34.981857, 31.593740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325374, 0.320072, 0.889767,
		0.861930, 0.286565, -0.418279,
		-0.388856, 0.903014, -0.182639,
		39.243488, 35.252762, 31.538948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065262, 35.071644, 31.734171>,  <39.515686, 34.620651, 31.666796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065262, 35.071644, 31.734171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724918, 35.268539, 31.807646>,  <39.520714, 35.386677, 31.851730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724918, 35.268539, 31.807646>,  <40.065262, 35.071644, 31.734171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724918, 35.268539, 31.807646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354673, 0.280202, 0.892017,
		0.387618, 0.824128, -0.412997,
		-0.850858, 0.492240, 0.183685,
		39.469662, 35.416210, 31.862751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286175, 35.787617, 31.946053>,  <40.065262, 35.071644, 31.734171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286175, 35.787617, 31.946053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914177, 35.733181, 32.082630>,  <39.690979, 35.700520, 32.164577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914177, 35.733181, 32.082630>,  <40.286175, 35.787617, 31.946053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914177, 35.733181, 32.082630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295014, 0.277751, 0.914233,
		-0.219250, 0.950966, -0.218161,
		-0.929998, -0.136085, 0.341445,
		39.635178, 35.692356, 32.185062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149185, 36.422764, 32.392567>,  <40.286175, 35.787617, 31.946053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149185, 36.422764, 32.392567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886791, 36.133835, 32.480133>,  <39.729355, 35.960476, 32.532673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886791, 36.133835, 32.480133>,  <40.149185, 36.422764, 32.392567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886791, 36.133835, 32.480133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047550, 0.249916, 0.967099,
		-0.753271, 0.644816, -0.129596,
		-0.655989, -0.722326, 0.218916,
		39.689995, 35.917137, 32.545807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376118, 36.557785, 33.168781>,  <40.149185, 36.422764, 32.392567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376118, 36.557785, 33.168781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589832, 36.657429, 33.491886>,  <40.718063, 36.717216, 33.685749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589832, 36.657429, 33.491886>,  <40.376118, 36.557785, 33.168781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589832, 36.657429, 33.491886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413824, 0.910330, -0.007022,
		-0.737078, -0.330519, 0.589469,
		0.534290, 0.249113, 0.807760,
		40.750118, 36.732162, 33.734215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908134, 36.953270, 33.633652>,  <40.376118, 36.557785, 33.168781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908134, 36.953270, 33.633652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300999, 37.019226, 33.669815>,  <40.536716, 37.058800, 33.691513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300999, 37.019226, 33.669815>,  <39.908134, 36.953270, 33.633652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300999, 37.019226, 33.669815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122873, 0.926659, -0.355255,
		-0.142359, 0.337808, 0.930387,
		0.982159, 0.164893, 0.090411,
		40.595646, 37.068695, 33.696938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133949, 37.424114, 34.172359>,  <39.908134, 36.953270, 33.633652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133949, 37.424114, 34.172359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407017, 37.451088, 33.881317>,  <40.570858, 37.467274, 33.706692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407017, 37.451088, 33.881317>,  <40.133949, 37.424114, 34.172359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407017, 37.451088, 33.881317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360001, 0.897544, -0.254586,
		0.635891, 0.435738, 0.637004,
		0.682672, 0.067433, -0.727607,
		40.611820, 37.471317, 33.663036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527760, 38.102459, 34.313713>,  <40.133949, 37.424114, 34.172359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527760, 38.102459, 34.313713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603317, 38.016663, 33.930397>,  <40.648651, 37.965183, 33.700409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603317, 38.016663, 33.930397>,  <40.527760, 38.102459, 34.313713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603317, 38.016663, 33.930397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283883, 0.922261, -0.262384,
		0.940069, 0.321603, 0.113317,
		0.188891, -0.214490, -0.958287,
		40.659985, 37.952316, 33.642910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858963, 38.671951, 33.979065>,  <40.527760, 38.102459, 34.313713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858963, 38.671951, 33.979065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726337, 38.453312, 33.671482>,  <40.646763, 38.322128, 33.486931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726337, 38.453312, 33.671482>,  <40.858963, 38.671951, 33.979065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726337, 38.453312, 33.671482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221185, 0.837382, -0.499868,
		0.917139, 0.004345, -0.398543,
		-0.331561, -0.546600, -0.768958,
		40.626869, 38.289333, 33.440796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202286, 39.042816, 33.386086>,  <40.858963, 38.671951, 33.979065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202286, 39.042816, 33.386086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856880, 38.858555, 33.303963>,  <40.649639, 38.747997, 33.254688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856880, 38.858555, 33.303963>,  <41.202286, 39.042816, 33.386086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856880, 38.858555, 33.303963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293420, 0.789972, -0.538375,
		0.410190, -0.404651, -0.817314,
		-0.863509, -0.460653, -0.205306,
		40.597828, 38.720360, 33.242371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998997, 39.459576, 32.827187>,  <41.202286, 39.042816, 33.386086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998997, 39.459576, 32.827187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676037, 39.232853, 32.892712>,  <40.482262, 39.096821, 32.932026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676037, 39.232853, 32.892712>,  <40.998997, 39.459576, 32.827187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676037, 39.232853, 32.892712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580092, 0.711966, -0.395726,
		0.107671, -0.414535, -0.903641,
		-0.807404, -0.566803, 0.163810,
		40.433815, 39.062813, 32.941856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637131, 39.504993, 32.254753>,  <40.998997, 39.459576, 32.827187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637131, 39.504993, 32.254753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363552, 39.393517, 32.524437>,  <40.199406, 39.326630, 32.686245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363552, 39.393517, 32.524437>,  <40.637131, 39.504993, 32.254753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363552, 39.393517, 32.524437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630336, 0.691013, -0.353803,
		-0.367285, -0.666958, -0.648281,
		-0.683943, -0.278689, 0.674206,
		40.158371, 39.309910, 32.726700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822392, 39.428059, 31.983232>,  <40.637131, 39.504993, 32.254753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822392, 39.428059, 31.983232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772186, 39.543594, 32.362877>,  <39.742062, 39.612915, 32.590664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772186, 39.543594, 32.362877>,  <39.822392, 39.428059, 31.983232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772186, 39.543594, 32.362877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567550, 0.763765, -0.307490,
		-0.813716, -0.577263, 0.068072,
		-0.125512, 0.288844, 0.949113,
		39.734531, 39.630249, 32.647610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120296, 39.651550, 32.027161>,  <39.822392, 39.428059, 31.983232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120296, 39.651550, 32.027161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289227, 39.831673, 32.341835>,  <39.390583, 39.939747, 32.530640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289227, 39.831673, 32.341835>,  <39.120296, 39.651550, 32.027161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289227, 39.831673, 32.341835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613368, 0.780969, -0.117758,
		-0.667402, -0.432794, 0.606023,
		0.422321, 0.450307, 0.786682,
		39.415924, 39.966766, 32.577839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581902, 39.773056, 32.583118>,  <39.120296, 39.651550, 32.027161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581902, 39.773056, 32.583118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882507, 40.036430, 32.566719>,  <39.062870, 40.194454, 32.556881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882507, 40.036430, 32.566719>,  <38.581902, 39.773056, 32.583118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882507, 40.036430, 32.566719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642680, 0.716665, -0.270838,
		-0.148949, 0.229888, 0.961751,
		0.751516, 0.658439, -0.040998,
		39.107964, 40.233963, 32.554420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478764, 40.356064, 33.016697>,  <38.581902, 39.773056, 32.583118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478764, 40.356064, 33.016697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772411, 40.622986, 32.966457>,  <38.948601, 40.783138, 32.936314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772411, 40.622986, 32.966457>,  <38.478764, 40.356064, 33.016697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772411, 40.622986, 32.966457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672315, 0.688397, -0.272217,
		-0.095189, 0.284282, 0.954003,
		0.734120, 0.667303, -0.125599,
		38.992649, 40.823177, 32.928776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463100, 41.025108, 33.460068>,  <38.478764, 40.356064, 33.016697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463100, 41.025108, 33.460068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643517, 41.120266, 33.115982>,  <38.751766, 41.177361, 32.909531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643517, 41.120266, 33.115982>,  <38.463100, 41.025108, 33.460068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643517, 41.120266, 33.115982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660901, 0.736766, -0.142780,
		0.599813, 0.632918, 0.489530,
		0.451037, 0.237890, -0.860218,
		38.778828, 41.191631, 32.857918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513718, 41.714287, 33.484974>,  <38.463100, 41.025108, 33.460068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513718, 41.714287, 33.484974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576122, 41.648067, 33.095459>,  <38.613564, 41.608337, 32.861752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576122, 41.648067, 33.095459>,  <38.513718, 41.714287, 33.484974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576122, 41.648067, 33.095459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572421, 0.788280, -0.225719,
		0.804982, 0.592629, 0.028214,
		0.156008, -0.165549, -0.973784,
		38.622925, 41.598404, 32.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778488, 42.340763, 33.150867>,  <38.513718, 41.714287, 33.484974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778488, 42.340763, 33.150867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615623, 42.128826, 32.853279>,  <38.517906, 42.001663, 32.674728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615623, 42.128826, 32.853279>,  <38.778488, 42.340763, 33.150867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615623, 42.128826, 32.853279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441614, 0.827202, -0.347439,
		0.799499, 0.187083, -0.570791,
		-0.407159, -0.529846, -0.743965,
		38.493477, 41.969872, 32.630089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954441, 42.639538, 32.605762>,  <38.778488, 42.340763, 33.150867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954441, 42.639538, 32.605762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624527, 42.433201, 32.513126>,  <38.426579, 42.309399, 32.457546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624527, 42.433201, 32.513126>,  <38.954441, 42.639538, 32.605762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624527, 42.433201, 32.513126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446498, 0.845451, -0.293007,
		0.346940, -0.138265, -0.927640,
		-0.824786, -0.515845, -0.231586,
		38.377090, 42.278446, 32.443649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857925, 42.902603, 32.003048>,  <38.954441, 42.639538, 32.605762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857925, 42.902603, 32.003048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504997, 42.767258, 32.133904>,  <38.293240, 42.686050, 32.212418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504997, 42.767258, 32.133904>,  <38.857925, 42.902603, 32.003048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504997, 42.767258, 32.133904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449125, 0.813105, -0.370334,
		-0.140689, -0.473679, -0.869388,
		-0.882323, -0.338361, 0.327136,
		38.240299, 42.665749, 32.232044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418140, 43.051517, 31.425425>,  <38.857925, 42.902603, 32.003048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418140, 43.051517, 31.425425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163868, 42.993401, 31.728687>,  <38.011307, 42.958530, 31.910645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163868, 42.993401, 31.728687>,  <38.418140, 43.051517, 31.425425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163868, 42.993401, 31.728687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477935, 0.845331, -0.238733,
		-0.606210, -0.514108, -0.606797,
		-0.635679, -0.145288, 0.758159,
		37.973164, 42.949814, 31.956135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685795, 43.086414, 31.136536>,  <38.418140, 43.051517, 31.425425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685795, 43.086414, 31.136536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673897, 43.155537, 31.530338>,  <37.666759, 43.197010, 31.766621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673897, 43.155537, 31.530338>,  <37.685795, 43.086414, 31.136536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673897, 43.155537, 31.530338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513303, 0.842510, -0.163391,
		-0.857692, -0.510210, 0.063644,
		-0.029743, 0.172808, 0.984506,
		37.664974, 43.207378, 31.825689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947365, 43.278019, 31.274811>,  <37.685795, 43.086414, 31.136536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947365, 43.278019, 31.274811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181095, 43.436291, 31.558220>,  <37.321331, 43.531254, 31.728266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181095, 43.436291, 31.558220>,  <36.947365, 43.278019, 31.274811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181095, 43.436291, 31.558220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430606, 0.891208, -0.142574,
		-0.687855, -0.221785, 0.691135,
		0.584324, 0.395677, 0.708523,
		37.356392, 43.554993, 31.770777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481388, 43.653961, 31.820042>,  <36.947365, 43.278019, 31.274811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481388, 43.653961, 31.820042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858219, 43.779007, 31.771458>,  <37.084320, 43.854034, 31.742308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858219, 43.779007, 31.771458>,  <36.481388, 43.653961, 31.820042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858219, 43.779007, 31.771458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322683, 0.943595, -0.074193,
		0.091414, 0.109089, 0.989819,
		0.942082, 0.312616, -0.121459,
		37.140842, 43.872791, 31.735020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694965, 44.036560, 32.361858>,  <36.481388, 43.653961, 31.820042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694965, 44.036560, 32.361858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838528, 44.180206, 32.017250>,  <36.924664, 44.266396, 31.810484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838528, 44.180206, 32.017250>,  <36.694965, 44.036560, 32.361858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838528, 44.180206, 32.017250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474218, 0.865172, 0.163081,
		0.803930, 0.350018, 0.480815,
		0.358906, 0.359117, -0.861523,
		36.946201, 44.287941, 31.758793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281136, 44.611637, 32.369194>,  <36.694965, 44.036560, 32.361858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281136, 44.611637, 32.369194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017162, 44.611061, 32.068665>,  <36.858780, 44.610714, 31.888348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017162, 44.611061, 32.068665>,  <37.281136, 44.611637, 32.369194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017162, 44.611061, 32.068665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336965, 0.894353, 0.294258,
		0.671524, 0.447360, -0.590698,
		-0.659932, -0.001443, -0.751324,
		36.819183, 44.610630, 31.843267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626064, 44.948116, 31.896084>,  <37.281136, 44.611637, 32.369194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626064, 44.948116, 31.896084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989223, 45.107304, 31.948748>,  <38.207119, 45.202816, 31.980345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989223, 45.107304, 31.948748>,  <37.626064, 44.948116, 31.896084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989223, 45.107304, 31.948748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229783, -0.209809, -0.950358,
		-0.350591, 0.893085, -0.281933,
		0.907902, 0.397970, 0.131658,
		38.261593, 45.226696, 31.988245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930103, 44.238480, 32.142090>,  <37.626064, 44.948116, 31.896084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930103, 44.238480, 32.142090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578770, 44.110161, 32.283859>,  <37.367970, 44.033169, 32.368919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578770, 44.110161, 32.283859>,  <37.930103, 44.238480, 32.142090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578770, 44.110161, 32.283859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312079, -0.946404, -0.083227,
		0.362125, 0.037506, 0.931375,
		-0.878335, -0.320801, 0.354421,
		37.315269, 44.013920, 32.390186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020737, 43.853661, 32.808807>,  <37.930103, 44.238480, 32.142090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020737, 43.853661, 32.808807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735096, 43.740971, 32.552464>,  <37.563713, 43.673359, 32.398659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735096, 43.740971, 32.552464>,  <38.020737, 43.853661, 32.808807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735096, 43.740971, 32.552464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399047, -0.915968, -0.041991,
		-0.575174, -0.285717, 0.766512,
		-0.714098, -0.281723, -0.640856,
		37.520866, 43.656452, 32.360207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569561, 43.299141, 33.138725>,  <38.020737, 43.853661, 32.808807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569561, 43.299141, 33.138725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574615, 43.282471, 32.739105>,  <37.577648, 43.272469, 32.499332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574615, 43.282471, 32.739105>,  <37.569561, 43.299141, 33.138725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574615, 43.282471, 32.739105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321167, -0.946022, 0.043526,
		-0.946938, -0.321412, 0.001434,
		0.012634, -0.041677, -0.999051,
		37.578407, 43.269966, 32.439388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168423, 42.672924, 32.926395>,  <37.569561, 43.299141, 33.138725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168423, 42.672924, 32.926395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416553, 42.776733, 32.630329>,  <37.565434, 42.839020, 32.452690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416553, 42.776733, 32.630329>,  <37.168423, 42.672924, 32.926395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416553, 42.776733, 32.630329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397337, -0.917604, 0.011268,
		-0.676253, -0.301084, -0.672331,
		0.620326, 0.259522, -0.740165,
		37.602650, 42.854591, 32.408279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974342, 42.210316, 32.307083>,  <37.168423, 42.672924, 32.926395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974342, 42.210316, 32.307083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349258, 42.344509, 32.344891>,  <37.574207, 42.425026, 32.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349258, 42.344509, 32.344891>,  <36.974342, 42.210316, 32.307083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349258, 42.344509, 32.344891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328841, -0.941059, 0.079193,
		0.115513, -0.043146, -0.992368,
		0.937294, 0.335479, 0.094516,
		37.630447, 42.445152, 32.373245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463917, 41.842503, 31.881058>,  <36.974342, 42.210316, 32.307083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463917, 41.842503, 31.881058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694458, 41.975964, 32.179451>,  <37.832783, 42.056042, 32.358486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694458, 41.975964, 32.179451>,  <37.463917, 41.842503, 31.881058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694458, 41.975964, 32.179451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457849, -0.887969, 0.043416,
		0.676895, 0.316524, -0.664549,
		0.576356, 0.333651, 0.745983,
		37.867367, 42.076057, 32.403244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932926, 41.318096, 31.665676>,  <37.463917, 41.842503, 31.881058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932926, 41.318096, 31.665676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100574, 41.516148, 31.970093>,  <38.201164, 41.634979, 32.152744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100574, 41.516148, 31.970093>,  <37.932926, 41.318096, 31.665676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100574, 41.516148, 31.970093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536426, -0.811313, 0.232417,
		0.732522, 0.310834, -0.605635,
		0.419117, 0.495130, 0.761044,
		38.226311, 41.664688, 32.198406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585468, 41.020767, 31.581120>,  <37.932926, 41.318096, 31.665676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585468, 41.020767, 31.581120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595818, 41.212383, 31.932085>,  <38.602028, 41.327351, 32.142666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595818, 41.212383, 31.932085>,  <38.585468, 41.020767, 31.581120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595818, 41.212383, 31.932085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676656, -0.654463, 0.337364,
		0.735844, 0.584979, -0.341075,
		0.025870, 0.479038, 0.877413,
		38.603580, 41.356094, 32.195309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325813, 41.219807, 31.744730>,  <38.585468, 41.020767, 31.581120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325813, 41.219807, 31.744730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134247, 41.217651, 32.095867>,  <39.019306, 41.216358, 32.306549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134247, 41.217651, 32.095867>,  <39.325813, 41.219807, 31.744730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134247, 41.217651, 32.095867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668156, -0.650840, 0.360521,
		0.569393, 0.759196, 0.315298,
		-0.478915, -0.005390, 0.877845,
		38.990574, 41.216034, 32.359222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786335, 41.371922, 32.473534>,  <39.325813, 41.219807, 31.744730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786335, 41.371922, 32.473534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481609, 41.118149, 32.525887>,  <39.298775, 40.965885, 32.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481609, 41.118149, 32.525887>,  <39.786335, 41.371922, 32.473534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481609, 41.118149, 32.525887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617061, -0.649220, 0.444690,
		-0.197151, 0.419537, 0.886070,
		-0.761818, -0.634431, 0.130886,
		39.253063, 40.927818, 32.565151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662048, 41.215004, 33.103718>,  <39.786335, 41.371922, 32.473534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662048, 41.215004, 33.103718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528778, 40.896835, 32.901215>,  <39.448814, 40.705933, 32.779713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528778, 40.896835, 32.901215>,  <39.662048, 41.215004, 33.103718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528778, 40.896835, 32.901215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747255, -0.550201, 0.372678,
		-0.574980, -0.254137, 0.777697,
		-0.333178, -0.795420, -0.506260,
		39.428825, 40.658211, 32.749336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746113, 40.673553, 33.619144>,  <39.662048, 41.215004, 33.103718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746113, 40.673553, 33.619144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667576, 40.434017, 33.308575>,  <39.620453, 40.290295, 33.122234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667576, 40.434017, 33.308575>,  <39.746113, 40.673553, 33.619144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667576, 40.434017, 33.308575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477891, -0.749868, 0.457513,
		-0.856196, -0.281219, 0.433410,
		-0.196339, -0.598844, -0.776426,
		39.608673, 40.254364, 33.075645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572063, 40.087223, 33.891724>,  <39.746113, 40.673553, 33.619144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572063, 40.087223, 33.891724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642311, 39.983448, 33.511860>,  <39.684460, 39.921185, 33.283943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642311, 39.983448, 33.511860>,  <39.572063, 40.087223, 33.891724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642311, 39.983448, 33.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419642, -0.852891, 0.310607,
		-0.890538, -0.453066, -0.040916,
		0.175622, -0.259437, -0.949657,
		39.694996, 39.905617, 33.226963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882706, 39.457634, 33.833229>,  <39.572063, 40.087223, 33.891724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882706, 39.457634, 33.833229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755665, 39.468971, 33.454109>,  <39.679440, 39.475773, 33.226639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755665, 39.468971, 33.454109>,  <39.882706, 39.457634, 33.833229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755665, 39.468971, 33.454109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353829, -0.923814, -0.146198,
		-0.879733, -0.381792, 0.283379,
		-0.317607, 0.028347, -0.947799,
		39.660381, 39.477474, 33.169769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365379, 38.899876, 33.654747>,  <39.882706, 39.457634, 33.833229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365379, 38.899876, 33.654747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584343, 39.009357, 33.338413>,  <39.715721, 39.075047, 33.148613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584343, 39.009357, 33.338413>,  <39.365379, 38.899876, 33.654747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584343, 39.009357, 33.338413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306830, -0.944838, -0.114613,
		-0.778585, -0.179912, -0.601197,
		0.547413, 0.273701, -0.790839,
		39.748566, 39.091469, 33.101162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413170, 38.310978, 33.240143>,  <39.365379, 38.899876, 33.654747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413170, 38.310978, 33.240143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726856, 38.530838, 33.124977>,  <39.915070, 38.662754, 33.055878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726856, 38.530838, 33.124977>,  <39.413170, 38.310978, 33.240143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726856, 38.530838, 33.124977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586127, -0.808481, 0.053044,
		-0.203616, -0.210352, -0.956186,
		0.784216, 0.549646, -0.287913,
		39.962120, 38.695732, 33.038605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728649, 37.941753, 32.701298>,  <39.413170, 38.310978, 33.240143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728649, 37.941753, 32.701298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991215, 38.182289, 32.883511>,  <40.148754, 38.326611, 32.992840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991215, 38.182289, 32.883511>,  <39.728649, 37.941753, 32.701298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991215, 38.182289, 32.883511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580485, -0.788273, 0.204113,
		0.481825, 0.130447, -0.866503,
		0.656415, 0.601339, 0.455533,
		40.188141, 38.362690, 33.020172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320717, 37.898594, 32.309097>,  <39.728649, 37.941753, 32.701298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320717, 37.898594, 32.309097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403915, 38.000805, 32.686764>,  <40.453835, 38.062130, 32.913364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403915, 38.000805, 32.686764>,  <40.320717, 37.898594, 32.309097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403915, 38.000805, 32.686764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528635, -0.841521, 0.111294,
		0.822972, 0.475969, -0.310113,
		0.207994, 0.255528, 0.944163,
		40.466312, 38.077465, 32.970013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150673, 37.916039, 32.457218>,  <40.320717, 37.898594, 32.309097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150673, 37.916039, 32.457218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919277, 37.836823, 32.773731>,  <40.780441, 37.789295, 32.963638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919277, 37.836823, 32.773731>,  <41.150673, 37.916039, 32.457218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919277, 37.836823, 32.773731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571862, -0.790216, 0.220303,
		0.581659, 0.579949, 0.570378,
		-0.578486, -0.198036, 0.791287,
		40.745731, 37.777412, 33.011116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477562, 37.379986, 32.725178>,  <41.150673, 37.916039, 32.457218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477562, 37.379986, 32.725178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208546, 37.420101, 33.018471>,  <41.047138, 37.444168, 33.194447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208546, 37.420101, 33.018471>,  <41.477562, 37.379986, 32.725178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208546, 37.420101, 33.018471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421906, -0.762044, 0.491206,
		0.608020, 0.639711, 0.470193,
		-0.672538, 0.100286, 0.733236,
		41.006783, 37.450188, 33.238441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872158, 37.275387, 33.344990>,  <41.477562, 37.379986, 32.725178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872158, 37.275387, 33.344990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490482, 37.206657, 33.442970>,  <41.261478, 37.165421, 33.501759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490482, 37.206657, 33.442970>,  <41.872158, 37.275387, 33.344990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490482, 37.206657, 33.442970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249421, -0.908976, 0.333995,
		0.165266, 0.379790, 0.910191,
		-0.954189, -0.171823, 0.244950,
		41.204227, 37.155109, 33.516457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756836, 37.159336, 34.033245>,  <41.872158, 37.275387, 33.344990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756836, 37.159336, 34.033245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481682, 36.960354, 33.821827>,  <41.316589, 36.840965, 33.694977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481682, 36.960354, 33.821827>,  <41.756836, 37.159336, 34.033245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481682, 36.960354, 33.821827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338568, -0.864036, 0.372577,
		-0.642019, 0.077343, 0.762778,
		-0.687883, -0.497454, -0.528542,
		41.275318, 36.811119, 33.663265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306103, 36.927017, 34.515835>,  <41.756836, 37.159336, 34.033245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306103, 36.927017, 34.515835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358669, 36.681870, 34.204163>,  <41.390209, 36.534782, 34.017159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358669, 36.681870, 34.204163>,  <41.306103, 36.927017, 34.515835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358669, 36.681870, 34.204163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215520, -0.749537, 0.625896,
		-0.967616, -0.250182, 0.033584,
		0.131415, -0.612865, -0.779183,
		41.398094, 36.498009, 33.970409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031353, 36.298096, 34.732025>,  <41.306103, 36.927017, 34.515835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031353, 36.298096, 34.732025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272514, 36.228554, 34.420570>,  <41.417210, 36.186829, 34.233696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272514, 36.228554, 34.420570>,  <41.031353, 36.298096, 34.732025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272514, 36.228554, 34.420570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272692, -0.872282, 0.405911,
		-0.749763, -0.457054, -0.478494,
		0.602905, -0.173855, -0.778640,
		41.453384, 36.176395, 34.186977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902794, 35.608540, 34.271881>,  <41.031353, 36.298096, 34.732025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902794, 35.608540, 34.271881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282604, 35.731045, 34.299038>,  <41.510490, 35.804550, 34.315331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282604, 35.731045, 34.299038>,  <40.902794, 35.608540, 34.271881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282604, 35.731045, 34.299038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260611, -0.890602, 0.372706,
		0.174612, -0.336199, -0.925463,
		0.949522, 0.306265, 0.067893,
		41.567459, 35.822926, 34.319405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324909, 35.111912, 33.957783>,  <40.902794, 35.608540, 34.271881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324909, 35.111912, 33.957783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514027, 35.308762, 34.250160>,  <41.627495, 35.426872, 34.425587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514027, 35.308762, 34.250160>,  <41.324909, 35.111912, 33.957783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514027, 35.308762, 34.250160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097684, -0.853671, 0.511569,
		0.875745, -0.170463, -0.451679,
		0.472789, 0.492126, 0.730946,
		41.655865, 35.456398, 34.469444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103283, 34.867245, 34.189823>,  <41.324909, 35.111912, 33.957783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103283, 34.867245, 34.189823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967312, 35.053646, 34.516575>,  <41.885731, 35.165485, 34.712624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.967312, 35.053646, 34.516575>,  <42.103283, 34.867245, 34.189823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967312, 35.053646, 34.516575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387351, -0.722128, 0.573141,
		0.856976, 0.511245, 0.064964,
		-0.339927, 0.466005, 0.816877,
		41.865334, 35.193447, 34.761639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510857, 34.668800, 34.705692>,  <42.103283, 34.867245, 34.189823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510857, 34.668800, 34.705692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235157, 34.839817, 34.939667>,  <42.069736, 34.942429, 35.080051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235157, 34.839817, 34.939667>,  <42.510857, 34.668800, 34.705692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235157, 34.839817, 34.939667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413521, -0.430785, 0.802138,
		0.594930, 0.794751, 0.120118,
		-0.689245, 0.427545, 0.584933,
		42.028385, 34.968082, 35.115147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235394, 34.600567, 35.387066>,  <42.510857, 34.668800, 34.705692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235394, 34.600567, 35.387066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189316, 34.648426, 35.781509>,  <42.161667, 34.677143, 36.018177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189316, 34.648426, 35.781509>,  <42.235394, 34.600567, 35.387066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189316, 34.648426, 35.781509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352260, 0.933123, -0.072069,
		-0.928786, 0.339065, -0.149639,
		-0.115196, 0.119648, 0.986111,
		42.154758, 34.684322, 36.077343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665272, 35.187061, 35.598129>,  <42.235394, 34.600567, 35.387066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665272, 35.187061, 35.598129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006020, 35.110359, 35.793087>,  <42.210468, 35.064339, 35.910061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006020, 35.110359, 35.793087>,  <41.665272, 35.187061, 35.598129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006020, 35.110359, 35.793087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412028, 0.819846, -0.397599,
		-0.323347, 0.539522, 0.777408,
		0.851868, -0.191752, 0.487393,
		42.261581, 35.052834, 35.939304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988888, 35.688545, 36.140366>,  <41.665272, 35.187061, 35.598129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988888, 35.688545, 36.140366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275467, 35.480888, 35.953949>,  <42.447414, 35.356293, 35.842098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275467, 35.480888, 35.953949>,  <41.988888, 35.688545, 36.140366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275467, 35.480888, 35.953949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528271, 0.840027, -0.123635,
		0.455669, -0.157616, 0.876084,
		0.716447, -0.519146, -0.466038,
		42.490402, 35.325146, 35.814137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743847, 35.725651, 36.203007>,  <41.988888, 35.688545, 36.140366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743847, 35.725651, 36.203007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811680, 35.570847, 35.840469>,  <42.852379, 35.477966, 35.622948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811680, 35.570847, 35.840469>,  <42.743847, 35.725651, 36.203007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811680, 35.570847, 35.840469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699572, 0.695041, -0.165883,
		0.694146, -0.605923, 0.388610,
		0.169587, -0.387008, -0.906347,
		42.862556, 35.454742, 35.568565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507118, 35.685261, 36.048035>,  <42.743847, 35.725651, 36.203007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507118, 35.685261, 36.048035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300468, 35.688572, 35.705566>,  <43.176479, 35.690559, 35.500084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300468, 35.688572, 35.705566>,  <43.507118, 35.685261, 36.048035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300468, 35.688572, 35.705566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674594, 0.619730, -0.401070,
		0.527274, -0.784771, -0.325755,
		-0.516629, 0.008279, -0.856170,
		43.145481, 35.691055, 35.448715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848591, 35.515949, 35.397827>,  <43.507118, 35.685261, 36.048035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848591, 35.515949, 35.397827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552685, 35.755527, 35.275177>,  <43.375141, 35.899273, 35.201588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552685, 35.755527, 35.275177>,  <43.848591, 35.515949, 35.397827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552685, 35.755527, 35.275177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670326, 0.616408, -0.413164,
		-0.058457, -0.511181, -0.857483,
		-0.739761, 0.598945, -0.306625,
		43.330757, 35.935211, 35.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205120, 35.812443, 34.786556>,  <43.848591, 35.515949, 35.397827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205120, 35.812443, 34.786556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885036, 36.015682, 34.913990>,  <43.692986, 36.137627, 34.990452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885036, 36.015682, 34.913990>,  <44.205120, 35.812443, 34.786556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885036, 36.015682, 34.913990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405245, 0.849709, -0.337298,
		-0.442089, -0.140802, -0.885851,
		-0.800208, 0.508103, 0.318588,
		43.644974, 36.168114, 35.009567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864555, 36.100201, 34.664509>,  <44.205120, 35.812443, 34.786556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864555, 36.100201, 34.664509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889645, 36.499405, 34.661800>,  <44.904697, 36.738926, 34.660175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889645, 36.499405, 34.661800>,  <44.864555, 36.100201, 34.664509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889645, 36.499405, 34.661800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901867, -0.059584, -0.427884,
		-0.427435, 0.020737, -0.903808,
		0.062725, 0.998008, -0.006767,
		44.908463, 36.798809, 34.659771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021587, 36.271687, 33.926266>,  <44.864555, 36.100201, 34.664509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021587, 36.271687, 33.926266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153885, 36.555016, 34.175713>,  <45.233265, 36.725014, 34.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.153885, 36.555016, 34.175713>,  <45.021587, 36.271687, 33.926266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153885, 36.555016, 34.175713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892437, -0.019886, -0.450734,
		-0.306862, 0.705613, -0.638706,
		0.330745, 0.708318, 0.623613,
		45.253109, 36.767509, 34.362797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495907, 36.446701, 33.494019>,  <45.021587, 36.271687, 33.926266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495907, 36.446701, 33.494019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553055, 36.550930, 33.875946>,  <45.587345, 36.613468, 34.105103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553055, 36.550930, 33.875946>,  <45.495907, 36.446701, 33.494019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553055, 36.550930, 33.875946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974022, -0.208268, -0.088908,
		0.175692, 0.942722, -0.283563,
		0.142873, 0.260576, 0.954823,
		45.595917, 36.629105, 34.162392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102459, 37.021072, 33.687286>,  <45.495907, 36.446701, 33.494019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102459, 37.021072, 33.687286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056286, 36.730057, 33.957802>,  <46.028580, 36.555447, 34.120110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056286, 36.730057, 33.957802>,  <46.102459, 37.021072, 33.687286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056286, 36.730057, 33.957802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968786, -0.232830, -0.085113,
		0.219383, 0.645352, 0.731705,
		-0.115435, -0.727537, 0.676287,
		46.021656, 36.511795, 34.160686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583866, 37.102116, 34.153896>,  <46.102459, 37.021072, 33.687286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583866, 37.102116, 34.153896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492237, 36.712761, 34.151207>,  <46.437260, 36.479149, 34.149593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492237, 36.712761, 34.151207>,  <46.583866, 37.102116, 34.153896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492237, 36.712761, 34.151207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973274, -0.228918, -0.018316,
		0.016291, -0.010735, 0.999810,
		-0.229071, -0.973387, -0.006719,
		46.423515, 36.420746, 34.149193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906860, 36.597332, 34.673969>,  <46.583866, 37.102116, 34.153896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906860, 36.597332, 34.673969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822693, 36.448620, 34.312305>,  <46.772194, 36.359394, 34.095306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.822693, 36.448620, 34.312305>,  <46.906860, 36.597332, 34.673969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.822693, 36.448620, 34.312305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953341, -0.282838, -0.105565,
		-0.216483, -0.884184, 0.413949,
		-0.210419, -0.371781, -0.904158,
		46.759567, 36.337086, 34.041058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.229042, 35.818207, 34.620537>,  <46.906860, 36.597332, 34.673969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.229042, 35.818207, 34.620537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200207, 36.024048, 34.278782>,  <47.182907, 36.147552, 34.073727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.200207, 36.024048, 34.278782>,  <47.229042, 35.818207, 34.620537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200207, 36.024048, 34.278782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942283, -0.245677, -0.227476,
		-0.326965, -0.821475, -0.467196,
		-0.072087, 0.514608, -0.854390,
		47.178581, 36.178429, 34.022465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.655052, 35.461800, 34.971539>,  <47.229042, 35.818207, 34.620537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.655052, 35.461800, 34.971539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663532, 35.079792, 34.853218>,  <47.668621, 34.850590, 34.782227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663532, 35.079792, 34.853218>,  <47.655052, 35.461800, 34.971539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.663532, 35.079792, 34.853218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323229, -0.286524, 0.901902,
		-0.946083, 0.076490, -0.314763,
		0.021201, -0.955015, -0.295799,
		47.669891, 34.793289, 34.764477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.438248, 30.155535, 26.471289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161118, 30.440561, 26.427025>,  <32.994839, 30.611578, 26.400467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.161118, 30.440561, 26.427025>,  <33.438248, 30.155535, 26.471289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161118, 30.440561, 26.427025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144028, 0.287102, 0.947010,
		0.706578, 0.640173, -0.301540,
		-0.692823, 0.712567, -0.110657,
		32.953270, 30.654331, 26.393827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706562, 30.752655, 26.867805>,  <33.438248, 30.155535, 26.471289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706562, 30.752655, 26.867805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317429, 30.813669, 26.798151>,  <33.083946, 30.850277, 26.756357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.317429, 30.813669, 26.798151>,  <33.706562, 30.752655, 26.867805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317429, 30.813669, 26.798151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092601, 0.433014, 0.896618,
		0.212170, 0.888388, -0.407126,
		-0.972836, 0.152535, -0.174138,
		33.025578, 30.859430, 26.745909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540375, 31.496250, 26.822266>,  <33.706562, 30.752655, 26.867805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540375, 31.496250, 26.822266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.210274, 31.300133, 26.934383>,  <33.012211, 31.182463, 27.001654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.210274, 31.300133, 26.934383>,  <33.540375, 31.496250, 26.822266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210274, 31.300133, 26.934383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043362, 0.549851, 0.834137,
		-0.563091, 0.676223, -0.475028,
		-0.825257, -0.490293, 0.280294,
		32.962696, 31.153046, 27.018471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096474, 32.100204, 27.068916>,  <33.540375, 31.496250, 26.822266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096474, 32.100204, 27.068916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.958923, 31.751972, 27.209682>,  <32.876392, 31.543034, 27.294142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.958923, 31.751972, 27.209682>,  <33.096474, 32.100204, 27.068916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958923, 31.751972, 27.209682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020498, 0.381639, 0.924084,
		-0.938792, 0.310556, -0.149082,
		-0.343875, -0.870578, 0.351914,
		32.855762, 31.490799, 27.315256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532341, 32.275955, 27.415844>,  <33.096474, 32.100204, 27.068916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532341, 32.275955, 27.415844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.612110, 31.913687, 27.565502>,  <32.659973, 31.696325, 27.655296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.612110, 31.913687, 27.565502>,  <32.532341, 32.275955, 27.415844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612110, 31.913687, 27.565502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110466, 0.400157, 0.909764,
		-0.973667, -0.140100, 0.179847,
		0.199425, -0.905674, 0.374143,
		32.671936, 31.641985, 27.677746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044010, 32.215317, 28.021908>,  <32.532341, 32.275955, 27.415844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044010, 32.215317, 28.021908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339516, 31.948259, 28.058735>,  <32.516819, 31.788025, 28.080832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339516, 31.948259, 28.058735>,  <32.044010, 32.215317, 28.021908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339516, 31.948259, 28.058735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143805, 0.289618, 0.946278,
		-0.658442, -0.685837, 0.309971,
		0.738765, -0.667644, 0.092070,
		32.561146, 31.747967, 28.086355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964048, 31.929115, 28.639952>,  <32.044010, 32.215317, 28.021908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964048, 31.929115, 28.639952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.350044, 31.872736, 28.551476>,  <32.581642, 31.838909, 28.498390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.350044, 31.872736, 28.551476>,  <31.964048, 31.929115, 28.639952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350044, 31.872736, 28.551476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252831, 0.275542, 0.927444,
		-0.069774, -0.950900, 0.301532,
		0.964991, -0.140948, -0.221191,
		32.639542, 31.830452, 28.485119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244293, 31.627056, 29.226894>,  <31.964048, 31.929115, 28.639952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244293, 31.627056, 29.226894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.567097, 31.774183, 29.042095>,  <32.760780, 31.862459, 28.931215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.567097, 31.774183, 29.042095>,  <32.244293, 31.627056, 29.226894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567097, 31.774183, 29.042095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315683, 0.392468, 0.863894,
		0.499076, -0.843017, 0.200612,
		0.807011, 0.367819, -0.461997,
		32.809200, 31.884529, 28.903496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846485, 31.408701, 29.632912>,  <32.244293, 31.627056, 29.226894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846485, 31.408701, 29.632912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982327, 31.723328, 29.426619>,  <33.063831, 31.912104, 29.302843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.982327, 31.723328, 29.426619>,  <32.846485, 31.408701, 29.632912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982327, 31.723328, 29.426619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381853, 0.385805, 0.839847,
		0.859570, -0.482146, -0.169334,
		0.339599, 0.786568, -0.515735,
		33.084206, 31.959297, 29.271898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370644, 31.569437, 30.023430>,  <32.846485, 31.408701, 29.632912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370644, 31.569437, 30.023430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315536, 31.888372, 29.788389>,  <33.282475, 32.079735, 29.647366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.315536, 31.888372, 29.788389>,  <33.370644, 31.569437, 30.023430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315536, 31.888372, 29.788389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205114, 0.603363, 0.770637,
		0.968994, -0.014359, -0.246666,
		-0.137764, 0.797337, -0.587600,
		33.274208, 32.127575, 29.612108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928654, 31.909966, 30.175011>,  <33.370644, 31.569437, 30.023430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928654, 31.909966, 30.175011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.697662, 32.185528, 29.999773>,  <33.559067, 32.350864, 29.894630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.697662, 32.185528, 29.999773>,  <33.928654, 31.909966, 30.175011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697662, 32.185528, 29.999773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463462, 0.718396, 0.518759,
		0.672099, 0.096534, -0.734141,
		-0.577482, 0.688904, -0.438093,
		33.524418, 32.392200, 29.868345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409622, 32.370266, 29.883005>,  <33.928654, 31.909966, 30.175011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409622, 32.370266, 29.883005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.069809, 32.572304, 29.943903>,  <33.865921, 32.693527, 29.980442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.069809, 32.572304, 29.943903>,  <34.409622, 32.370266, 29.883005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069809, 32.572304, 29.943903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495497, 0.664942, 0.558869,
		0.181047, 0.550213, -0.815161,
		-0.849532, 0.505091, 0.152243,
		33.814949, 32.723831, 29.989576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541405, 33.106270, 29.727179>,  <34.409622, 32.370266, 29.883005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541405, 33.106270, 29.727179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215725, 33.120892, 29.958950>,  <34.020317, 33.129665, 30.098013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.215725, 33.120892, 29.958950>,  <34.541405, 33.106270, 29.727179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215725, 33.120892, 29.958950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450117, 0.670098, 0.590223,
		-0.366698, 0.741372, -0.562050,
		-0.814203, 0.036555, 0.579428,
		33.971462, 33.131859, 30.132778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337475, 33.760571, 29.861572>,  <34.541405, 33.106270, 29.727179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337475, 33.760571, 29.861572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.187981, 33.599117, 30.195614>,  <34.098282, 33.502243, 30.396038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.187981, 33.599117, 30.195614>,  <34.337475, 33.760571, 29.861572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187981, 33.599117, 30.195614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602880, 0.578507, 0.549423,
		-0.704880, 0.708807, 0.027134,
		-0.373738, -0.403636, 0.835103,
		34.075859, 33.478027, 30.446144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321869, 34.214973, 30.375587>,  <34.337475, 33.760571, 29.861572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321869, 34.214973, 30.375587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.285145, 33.894871, 30.612623>,  <34.263111, 33.702808, 30.754845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.285145, 33.894871, 30.612623>,  <34.321869, 34.214973, 30.375587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285145, 33.894871, 30.612623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600454, 0.430249, 0.674048,
		-0.794372, 0.417705, 0.441016,
		-0.091806, -0.800255, 0.592591,
		34.257603, 33.654793, 30.790400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086605, 34.569927, 30.944374>,  <34.321869, 34.214973, 30.375587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086605, 34.569927, 30.944374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246426, 34.213406, 31.030102>,  <34.342316, 33.999493, 31.081539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246426, 34.213406, 31.030102>,  <34.086605, 34.569927, 30.944374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246426, 34.213406, 31.030102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384221, 0.375089, 0.843612,
		-0.832307, -0.254718, 0.492325,
		0.399549, -0.891306, 0.214321,
		34.366291, 33.946014, 31.094398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945782, 34.538769, 31.674086>,  <34.086605, 34.569927, 30.944374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945782, 34.538769, 31.674086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232487, 34.268066, 31.606859>,  <34.404510, 34.105644, 31.566523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232487, 34.268066, 31.606859>,  <33.945782, 34.538769, 31.674086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232487, 34.268066, 31.606859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523729, 0.363343, 0.770512,
		-0.460383, -0.640299, 0.614869,
		0.716767, -0.676756, -0.168066,
		34.447517, 34.065041, 31.556438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215847, 34.348053, 32.374977>,  <33.945782, 34.538769, 31.674086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215847, 34.348053, 32.374977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514805, 34.225674, 32.139084>,  <34.694180, 34.152245, 31.997547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514805, 34.225674, 32.139084>,  <34.215847, 34.348053, 32.374977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514805, 34.225674, 32.139084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663958, 0.312495, 0.679343,
		-0.023554, -0.899301, 0.436696,
		0.747399, -0.305949, -0.589737,
		34.739025, 34.133888, 31.962162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719738, 34.104698, 32.868500>,  <34.215847, 34.348053, 32.374977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719738, 34.104698, 32.868500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912556, 34.178936, 32.525993>,  <35.028248, 34.223476, 32.320488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912556, 34.178936, 32.525993>,  <34.719738, 34.104698, 32.868500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912556, 34.178936, 32.525993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767196, 0.382578, 0.514824,
		0.423137, -0.905091, 0.042032,
		0.482043, 0.185594, -0.856265,
		35.057167, 34.234615, 32.269115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356361, 33.837311, 32.898525>,  <34.719738, 34.104698, 32.868500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356361, 33.837311, 32.898525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400391, 34.135765, 32.635872>,  <35.426807, 34.314838, 32.478279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400391, 34.135765, 32.635872>,  <35.356361, 33.837311, 32.898525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400391, 34.135765, 32.635872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878789, 0.235583, 0.415006,
		0.464342, -0.622722, -0.629764,
		0.110071, 0.746135, -0.656633,
		35.433411, 34.359604, 32.438881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124798, 33.799770, 32.663300>,  <35.356361, 33.837311, 32.898525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124798, 33.799770, 32.663300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945045, 34.151424, 32.599815>,  <35.837196, 34.362415, 32.561726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945045, 34.151424, 32.599815>,  <36.124798, 33.799770, 32.663300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945045, 34.151424, 32.599815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704364, 0.457954, 0.542356,
		0.549483, 0.131934, -0.825022,
		-0.449377, 0.879131, -0.158708,
		35.810234, 34.415165, 32.552204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745800, 34.178268, 32.857536>,  <36.124798, 33.799770, 32.663300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745800, 34.178268, 32.857536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125755, 34.206589, 32.979328>,  <37.353729, 34.223579, 33.052402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125755, 34.206589, 32.979328>,  <36.745800, 34.178268, 32.857536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125755, 34.206589, 32.979328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306501, -0.402381, -0.862639,
		0.061439, 0.912730, -0.403917,
		0.949885, 0.070801, 0.304475,
		37.410721, 34.227829, 33.070671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119751, 34.502666, 32.264259>,  <36.745800, 34.178268, 32.857536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119751, 34.502666, 32.264259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366234, 34.303638, 32.508461>,  <37.514122, 34.184223, 32.654984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.366234, 34.303638, 32.508461>,  <37.119751, 34.502666, 32.264259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366234, 34.303638, 32.508461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340838, -0.530339, -0.776254,
		0.710013, 0.686416, -0.157209,
		0.616207, -0.497568, 0.610504,
		37.551098, 34.154369, 32.691612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698601, 34.315899, 31.802902>,  <37.119751, 34.502666, 32.264259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698601, 34.315899, 31.802902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768322, 34.066635, 32.107872>,  <37.810154, 33.917076, 32.290855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768322, 34.066635, 32.107872>,  <37.698601, 34.315899, 31.802902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768322, 34.066635, 32.107872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235070, -0.725558, -0.646767,
		0.956222, 0.291955, 0.020021,
		0.174300, -0.623160, 0.762424,
		37.820614, 33.879688, 32.336597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357365, 34.028553, 31.690594>,  <37.698601, 34.315899, 31.802902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357365, 34.028553, 31.690594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153103, 33.789452, 31.937792>,  <38.030544, 33.645988, 32.086109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153103, 33.789452, 31.937792>,  <38.357365, 34.028553, 31.690594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153103, 33.789452, 31.937792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074770, -0.746930, -0.660685,
		0.856527, -0.291176, 0.426119,
		-0.510657, -0.597756, 0.617995,
		37.999905, 33.610126, 32.123192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685547, 33.404926, 31.746843>,  <38.357365, 34.028553, 31.690594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685547, 33.404926, 31.746843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.295944, 33.349586, 31.818594>,  <38.062183, 33.316383, 31.861645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.295944, 33.349586, 31.818594>,  <38.685547, 33.404926, 31.746843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295944, 33.349586, 31.818594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051183, -0.636954, -0.769201,
		0.220678, -0.758385, 0.613314,
		-0.974003, -0.138354, 0.179378,
		38.003742, 33.308079, 31.872408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612900, 32.758011, 31.568108>,  <38.685547, 33.404926, 31.746843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612900, 32.758011, 31.568108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229019, 32.868515, 31.588713>,  <37.998692, 32.934818, 31.601076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229019, 32.868515, 31.588713>,  <38.612900, 32.758011, 31.568108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229019, 32.868515, 31.588713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211980, -0.591312, -0.778084,
		-0.184497, -0.757647, 0.626045,
		-0.959701, 0.276263, 0.051511,
		37.941109, 32.951393, 31.604166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342674, 32.150429, 31.456463>,  <38.612900, 32.758011, 31.568108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342674, 32.150429, 31.456463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061314, 32.420620, 31.367962>,  <37.892498, 32.582737, 31.314861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061314, 32.420620, 31.367962>,  <38.342674, 32.150429, 31.456463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061314, 32.420620, 31.367962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314132, -0.574650, -0.755710,
		-0.637613, -0.462063, 0.616399,
		-0.703400, 0.675481, -0.221255,
		37.850292, 32.623264, 31.301586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712341, 31.768503, 31.373684>,  <38.342674, 32.150429, 31.456463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712341, 31.768503, 31.373684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673256, 32.118267, 31.183586>,  <37.649803, 32.328125, 31.069527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.673256, 32.118267, 31.183586>,  <37.712341, 31.768503, 31.373684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673256, 32.118267, 31.183586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151809, -0.485038, -0.861216,
		-0.983568, -0.012008, 0.180140,
		-0.097716, 0.874411, -0.475244,
		37.643940, 32.380589, 31.041014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075535, 31.691715, 31.064278>,  <37.712341, 31.768503, 31.373684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075535, 31.691715, 31.064278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236015, 31.995626, 30.859621>,  <37.332302, 32.177971, 30.736826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236015, 31.995626, 30.859621>,  <37.075535, 31.691715, 31.064278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236015, 31.995626, 30.859621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445014, -0.326545, -0.833865,
		-0.800625, 0.562235, 0.207101,
		0.401200, 0.759776, -0.511643,
		37.356377, 32.223560, 30.706129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472824, 32.002956, 30.666582>,  <37.075535, 31.691715, 31.064278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472824, 32.002956, 30.666582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812870, 32.101826, 30.480589>,  <37.016899, 32.161148, 30.368994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812870, 32.101826, 30.480589>,  <36.472824, 32.002956, 30.666582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812870, 32.101826, 30.480589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390204, -0.297265, -0.871421,
		-0.353616, 0.922246, -0.156260,
		0.850115, 0.247175, -0.464982,
		37.067905, 32.175980, 30.341095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201225, 32.273865, 30.070578>,  <36.472824, 32.002956, 30.666582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201225, 32.273865, 30.070578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588314, 32.196945, 30.005409>,  <36.820568, 32.150795, 29.966309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588314, 32.196945, 30.005409>,  <36.201225, 32.273865, 30.070578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588314, 32.196945, 30.005409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229837, -0.408063, -0.883550,
		0.103424, 0.892472, -0.439087,
		0.967718, -0.192298, -0.162920,
		36.878628, 32.139256, 29.956533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416180, 32.700699, 29.494907>,  <36.201225, 32.273865, 30.070578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416180, 32.700699, 29.494907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654224, 32.380024, 29.517315>,  <36.797050, 32.187618, 29.530760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654224, 32.380024, 29.517315>,  <36.416180, 32.700699, 29.494907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654224, 32.380024, 29.517315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227261, -0.234741, -0.945118,
		0.770843, 0.549716, -0.321889,
		0.595108, -0.801691, 0.056019,
		36.832756, 32.139515, 29.534121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619804, 32.656651, 28.813156>,  <36.416180, 32.700699, 29.494907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619804, 32.656651, 28.813156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705486, 32.304619, 28.982664>,  <36.756893, 32.093399, 29.084370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.705486, 32.304619, 28.982664>,  <36.619804, 32.656651, 28.813156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705486, 32.304619, 28.982664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339791, -0.473880, -0.812392,
		0.915784, 0.030023, -0.400549,
		0.214202, -0.880078, 0.423770,
		36.769749, 32.040596, 29.109795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635178, 32.218658, 28.263409>,  <36.619804, 32.656651, 28.813156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635178, 32.218658, 28.263409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627666, 31.941841, 28.552052>,  <36.623161, 31.775749, 28.725237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627666, 31.941841, 28.552052>,  <36.635178, 32.218658, 28.263409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627666, 31.941841, 28.552052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492902, -0.621529, -0.608893,
		0.869883, -0.367113, -0.329443,
		-0.018774, -0.692048, 0.721608,
		36.622036, 31.734226, 28.768534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019703, 31.527822, 28.185923>,  <36.635178, 32.218658, 28.263409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019703, 31.527822, 28.185923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721050, 31.440754, 28.437372>,  <36.541859, 31.388514, 28.588242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721050, 31.440754, 28.437372>,  <37.019703, 31.527822, 28.185923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721050, 31.440754, 28.437372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327456, -0.702294, -0.632105,
		0.579068, -0.677793, 0.453075,
		-0.746628, -0.217670, 0.628623,
		36.497063, 31.375454, 28.625959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963196, 30.849047, 28.282705>,  <37.019703, 31.527822, 28.185923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963196, 30.849047, 28.282705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602955, 30.996851, 28.374252>,  <36.386810, 31.085533, 28.429180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602955, 30.996851, 28.374252>,  <36.963196, 30.849047, 28.282705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602955, 30.996851, 28.374252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429504, -0.675800, -0.599016,
		-0.066673, -0.637774, 0.767332,
		-0.900600, 0.369511, 0.228869,
		36.332775, 31.107704, 28.442913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584023, 30.245815, 28.310205>,  <36.963196, 30.849047, 28.282705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584023, 30.245815, 28.310205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292999, 30.520197, 28.314816>,  <36.118385, 30.684826, 28.317581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292999, 30.520197, 28.314816>,  <36.584023, 30.245815, 28.310205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292999, 30.520197, 28.314816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541625, -0.564002, -0.623333,
		-0.421076, -0.459752, 0.781872,
		-0.727556, 0.685952, 0.011525,
		36.074734, 30.725983, 28.318274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949940, 29.961796, 28.407948>,  <36.584023, 30.245815, 28.310205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949940, 29.961796, 28.407948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841846, 30.297321, 28.218903>,  <35.776989, 30.498636, 28.105476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.841846, 30.297321, 28.218903>,  <35.949940, 29.961796, 28.407948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841846, 30.297321, 28.218903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414409, -0.544414, -0.729300,
		-0.869045, -0.001227, 0.494732,
		-0.270234, 0.838815, -0.472612,
		35.760777, 30.548965, 28.077120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336311, 29.877306, 28.150213>,  <35.949940, 29.961796, 28.407948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336311, 29.877306, 28.150213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441658, 30.200924, 27.940037>,  <35.504864, 30.395094, 27.813931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441658, 30.200924, 27.940037>,  <35.336311, 29.877306, 28.150213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441658, 30.200924, 27.940037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453252, -0.377036, -0.807717,
		-0.851588, 0.450882, 0.267402,
		0.263365, 0.809042, -0.525442,
		35.520668, 30.443636, 27.782404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.708580, 30.041437, 27.674152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991539, 30.258804, 27.493359>,  <35.161312, 30.389225, 27.384882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.991539, 30.258804, 27.493359>,  <34.708580, 30.041437, 27.674152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991539, 30.258804, 27.493359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400193, -0.219163, -0.889839,
		-0.582613, 0.810348, 0.062437,
		0.707395, 0.543419, -0.451983,
		35.203758, 30.421829, 27.357763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375233, 30.381777, 27.213367>,  <34.708580, 30.041437, 27.674152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375233, 30.381777, 27.213367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759304, 30.412836, 27.106016>,  <34.989746, 30.431471, 27.041605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759304, 30.412836, 27.106016>,  <34.375233, 30.381777, 27.213367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759304, 30.412836, 27.106016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220327, -0.380220, -0.898270,
		-0.171792, 0.921631, -0.347971,
		0.960179, 0.077648, -0.268379,
		35.047359, 30.436131, 27.025503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376350, 30.782629, 26.572054>,  <34.375233, 30.381777, 27.213367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376350, 30.782629, 26.572054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713596, 30.567892, 26.584476>,  <34.915943, 30.439051, 26.591930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713596, 30.567892, 26.584476>,  <34.376350, 30.782629, 26.572054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713596, 30.567892, 26.584476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117177, -0.239780, -0.963730,
		0.524817, 0.808892, -0.265067,
		0.843111, -0.536842, 0.031057,
		34.966530, 30.406839, 26.593794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635460, 30.886017, 25.953655>,  <34.376350, 30.782629, 26.572054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635460, 30.886017, 25.953655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849884, 30.569000, 26.069942>,  <34.978539, 30.378790, 26.139715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849884, 30.569000, 26.069942>,  <34.635460, 30.886017, 25.953655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849884, 30.569000, 26.069942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151082, -0.428887, -0.890635,
		0.830552, 0.433510, -0.349647,
		0.536058, -0.792544, 0.290717,
		35.010700, 30.331238, 26.157158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126503, 30.769363, 25.394739>,  <34.635460, 30.886017, 25.953655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126503, 30.769363, 25.394739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.063351, 30.436497, 25.607370>,  <35.025459, 30.236776, 25.734949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.063351, 30.436497, 25.607370>,  <35.126503, 30.769363, 25.394739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063351, 30.436497, 25.607370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106180, -0.520902, -0.846987,
		0.981733, -0.190165, -0.006120,
		-0.157880, -0.832165, 0.531579,
		35.015987, 30.186848, 25.766844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521534, 30.245152, 25.017714>,  <35.126503, 30.769363, 25.394739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521534, 30.245152, 25.017714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266911, 30.035982, 25.244463>,  <35.114136, 29.910480, 25.380512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.266911, 30.035982, 25.244463>,  <35.521534, 30.245152, 25.017714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266911, 30.035982, 25.244463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172951, -0.619513, -0.765696,
		0.751585, -0.585452, 0.303917,
		-0.636559, -0.522923, 0.566872,
		35.075943, 29.879105, 25.414524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723557, 29.651976, 24.820942>,  <35.521534, 30.245152, 25.017714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723557, 29.651976, 24.820942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359936, 29.613636, 24.983143>,  <35.141762, 29.590631, 25.080463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.359936, 29.613636, 24.983143>,  <35.723557, 29.651976, 24.820942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359936, 29.613636, 24.983143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241455, -0.671955, -0.700126,
		0.339585, -0.734363, 0.587701,
		-0.909056, -0.095849, 0.405501,
		35.087219, 29.584881, 25.104794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523586, 28.967583, 24.778057>,  <35.723557, 29.651976, 24.820942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523586, 28.967583, 24.778057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165894, 29.144209, 24.807364>,  <34.951279, 29.250185, 24.824947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165894, 29.144209, 24.807364>,  <35.523586, 28.967583, 24.778057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165894, 29.144209, 24.807364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330781, -0.541649, -0.772787,
		-0.301550, -0.715287, 0.630422,
		-0.894233, 0.441565, 0.073269,
		34.897625, 29.276678, 24.829344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051323, 28.449898, 24.608690>,  <35.523586, 28.967583, 24.778057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051323, 28.449898, 24.608690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859829, 28.796761, 24.553780>,  <34.744930, 29.004879, 24.520834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859829, 28.796761, 24.553780>,  <35.051323, 28.449898, 24.608690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859829, 28.796761, 24.553780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433799, -0.369575, -0.821726,
		-0.763301, -0.333840, 0.553102,
		-0.478737, 0.867160, -0.137277,
		34.716209, 29.056908, 24.512596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305653, 28.318781, 24.477976>,  <35.051323, 28.449898, 24.608690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305653, 28.318781, 24.477976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364845, 28.678280, 24.312881>,  <34.400360, 28.893980, 24.213825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364845, 28.678280, 24.312881>,  <34.305653, 28.318781, 24.477976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364845, 28.678280, 24.312881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449592, -0.310580, -0.837500,
		-0.880890, 0.309499, 0.358110,
		0.147984, 0.898749, -0.412735,
		34.409241, 28.947905, 24.189060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702141, 28.489809, 24.032263>,  <34.305653, 28.318781, 24.477976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702141, 28.489809, 24.032263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979355, 28.746988, 23.901834>,  <34.145683, 28.901297, 23.823578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.979355, 28.746988, 23.901834>,  <33.702141, 28.489809, 24.032263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979355, 28.746988, 23.901834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394911, -0.039819, -0.917856,
		-0.603119, 0.764873, 0.226311,
		0.693032, 0.642949, -0.326073,
		34.187263, 28.939873, 23.804012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314724, 28.890350, 23.568298>,  <33.702141, 28.489809, 24.032263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314724, 28.890350, 23.568298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701801, 28.912090, 23.469824>,  <33.934048, 28.925135, 23.410740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701801, 28.912090, 23.469824>,  <33.314724, 28.890350, 23.568298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701801, 28.912090, 23.469824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222212, -0.277384, -0.934708,
		-0.119090, 0.959221, -0.256346,
		0.967698, 0.054351, -0.246184,
		33.992111, 28.928396, 23.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267948, 29.131632, 22.939709>,  <33.314724, 28.890350, 23.568298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267948, 29.131632, 22.939709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641781, 28.991627, 22.965157>,  <33.866081, 28.907623, 22.980425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641781, 28.991627, 22.965157>,  <33.267948, 29.131632, 22.939709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641781, 28.991627, 22.965157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021649, -0.122546, -0.992227,
		0.355089, 0.928694, -0.106952,
		0.934582, -0.350014, 0.063620,
		33.922157, 28.886623, 22.984243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633724, 29.482992, 22.348373>,  <33.267948, 29.131632, 22.939709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633724, 29.482992, 22.348373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834862, 29.149517, 22.439680>,  <33.955544, 28.949432, 22.494465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.834862, 29.149517, 22.439680>,  <33.633724, 29.482992, 22.348373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834862, 29.149517, 22.439680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116666, -0.327128, -0.937751,
		0.856466, 0.444914, -0.261759,
		0.502847, -0.833690, 0.228268,
		33.985714, 28.899410, 22.508160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018902, 29.418617, 21.777130>,  <33.633724, 29.482992, 22.348373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018902, 29.418617, 21.777130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009979, 29.051979, 21.936806>,  <34.004627, 28.831995, 22.032612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009979, 29.051979, 21.936806>,  <34.018902, 29.418617, 21.777130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009979, 29.051979, 21.936806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169634, -0.390028, -0.905043,
		0.985255, -0.087904, -0.146786,
		-0.022306, -0.916597, 0.399188,
		34.003288, 28.777000, 22.056562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611183, 29.091015, 21.521273>,  <34.018902, 29.418617, 21.777130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611183, 29.091015, 21.521273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355560, 28.805782, 21.636593>,  <34.202187, 28.634644, 21.705786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355560, 28.805782, 21.636593>,  <34.611183, 29.091015, 21.521273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355560, 28.805782, 21.636593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024264, -0.355952, -0.934189,
		0.768776, -0.603997, 0.210172,
		-0.639058, -0.713082, 0.288302,
		34.163841, 28.591858, 21.723083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767075, 28.507479, 21.244530>,  <34.611183, 29.091015, 21.521273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767075, 28.507479, 21.244530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381443, 28.429129, 21.316282>,  <34.150063, 28.382118, 21.359335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381443, 28.429129, 21.316282>,  <34.767075, 28.507479, 21.244530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381443, 28.429129, 21.316282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123500, -0.267335, -0.955657,
		0.235144, -0.943486, 0.233543,
		-0.964083, -0.195874, 0.179382,
		34.092216, 28.370367, 21.370096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642323, 27.960003, 20.762878>,  <34.767075, 28.507479, 21.244530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642323, 27.960003, 20.762878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271965, 28.023180, 20.900156>,  <34.049751, 28.061087, 20.982523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271965, 28.023180, 20.900156>,  <34.642323, 27.960003, 20.762878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271965, 28.023180, 20.900156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375372, -0.281877, -0.882973,
		-0.042718, -0.946362, 0.320273,
		-0.925889, 0.157941, 0.343196,
		33.994198, 28.070562, 21.003115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270859, 27.313358, 20.589199>,  <34.642323, 27.960003, 20.762878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270859, 27.313358, 20.589199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043816, 27.641924, 20.611460>,  <33.907589, 27.839064, 20.624817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043816, 27.641924, 20.611460>,  <34.270859, 27.313358, 20.589199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043816, 27.641924, 20.611460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433294, -0.240568, -0.868552,
		-0.700054, -0.517112, 0.492463,
		-0.567609, 0.821415, 0.055651,
		33.873531, 27.888348, 20.628155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679646, 27.123093, 20.234474>,  <34.270859, 27.313358, 20.589199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679646, 27.123093, 20.234474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607830, 27.515842, 20.258751>,  <33.564739, 27.751493, 20.273317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.607830, 27.515842, 20.258751>,  <33.679646, 27.123093, 20.234474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607830, 27.515842, 20.258751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442643, -0.025538, -0.896334,
		-0.878539, -0.187795, 0.439206,
		-0.179543, 0.981876, 0.060690,
		33.553967, 27.810406, 20.276958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935024, 27.178629, 20.086473>,  <33.679646, 27.123093, 20.234474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935024, 27.178629, 20.086473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112423, 27.529112, 20.011034>,  <33.218861, 27.739403, 19.965771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.112423, 27.529112, 20.011034>,  <32.935024, 27.178629, 20.086473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112423, 27.529112, 20.011034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298163, -0.054204, -0.952974,
		-0.845228, 0.478873, 0.237214,
		0.443496, 0.876209, -0.188597,
		33.245472, 27.791975, 19.954454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446167, 27.549974, 19.649736>,  <32.935024, 27.178629, 20.086473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446167, 27.549974, 19.649736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810894, 27.703184, 19.590559>,  <33.029728, 27.795111, 19.555052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810894, 27.703184, 19.590559>,  <32.446167, 27.549974, 19.649736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810894, 27.703184, 19.590559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150341, -0.023858, -0.988346,
		-0.382091, 0.923430, 0.035831,
		0.911814, 0.383025, -0.147946,
		33.084438, 27.818092, 19.546175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460670, 28.102142, 19.158747>,  <32.446167, 27.549974, 19.649736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460670, 28.102142, 19.158747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823284, 27.935446, 19.131857>,  <33.040852, 27.835428, 19.115723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823284, 27.935446, 19.131857>,  <32.460670, 28.102142, 19.158747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823284, 27.935446, 19.131857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095087, -0.046437, -0.994385,
		0.411279, 0.907839, -0.081724,
		0.906536, -0.416741, -0.067225,
		33.095245, 27.810423, 19.111689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785030, 28.462608, 18.829432>,  <32.460670, 28.102142, 19.158747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785030, 28.462608, 18.829432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830536, 28.749662, 18.554605>,  <31.857840, 28.921894, 18.389709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830536, 28.749662, 18.554605>,  <31.785030, 28.462608, 18.829432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830536, 28.749662, 18.554605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179867, 0.665250, 0.724631,
		0.977090, -0.206018, -0.053396,
		0.113766, 0.717634, -0.687065,
		31.864666, 28.964952, 18.348486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403755, 28.900675, 18.900043>,  <31.785030, 28.462608, 18.829432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403755, 28.900675, 18.900043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090858, 29.105530, 18.758162>,  <31.903122, 29.228443, 18.673033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.090858, 29.105530, 18.758162>,  <32.403755, 28.900675, 18.900043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090858, 29.105530, 18.758162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036970, 0.606530, 0.794201,
		0.621881, 0.608141, -0.493385,
		-0.782239, 0.512139, -0.354706,
		31.856186, 29.259171, 18.651751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535686, 29.638760, 18.789398>,  <32.403755, 28.900675, 18.900043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535686, 29.638760, 18.789398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153587, 29.564161, 18.881237>,  <31.924328, 29.519403, 18.936340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153587, 29.564161, 18.881237>,  <32.535686, 29.638760, 18.789398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153587, 29.564161, 18.881237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071843, 0.606683, 0.791691,
		-0.286939, 0.772759, -0.566136,
		-0.955251, -0.186494, 0.229599,
		31.867012, 29.508213, 18.950117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215176, 30.245148, 18.909927>,  <32.535686, 29.638760, 18.789398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215176, 30.245148, 18.909927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985497, 29.978039, 19.099403>,  <31.847689, 29.817774, 19.213089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985497, 29.978039, 19.099403>,  <32.215176, 30.245148, 18.909927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985497, 29.978039, 19.099403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047489, 0.550435, 0.833527,
		-0.817339, 0.501103, -0.284346,
		-0.574197, -0.667770, 0.473688,
		31.813238, 29.777708, 19.241510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818758, 30.695000, 19.288147>,  <32.215176, 30.245148, 18.909927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818758, 30.695000, 19.288147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746656, 30.331686, 19.439157>,  <31.703396, 30.113697, 19.529764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746656, 30.331686, 19.439157>,  <31.818758, 30.695000, 19.288147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746656, 30.331686, 19.439157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112641, 0.400350, 0.909413,
		-0.977149, 0.121399, -0.174474,
		-0.180252, -0.908285, 0.377527,
		31.692581, 30.059200, 19.552416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131878, 30.617512, 19.632133>,  <31.818758, 30.695000, 19.288147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131878, 30.617512, 19.632133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381243, 30.357023, 19.805233>,  <31.530863, 30.200731, 19.909092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381243, 30.357023, 19.805233>,  <31.131878, 30.617512, 19.632133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381243, 30.357023, 19.805233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275090, 0.335399, 0.901018,
		-0.731903, -0.680750, 0.029948,
		0.623413, -0.651219, 0.432747,
		31.568266, 30.161657, 19.935057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749855, 30.435715, 20.102697>,  <31.131878, 30.617512, 19.632133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749855, 30.435715, 20.102697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119324, 30.330345, 20.214006>,  <31.341005, 30.267124, 20.280792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119324, 30.330345, 20.214006>,  <30.749855, 30.435715, 20.102697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119324, 30.330345, 20.214006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175605, 0.354459, 0.918434,
		-0.340573, -0.897200, 0.281145,
		0.923674, -0.263424, 0.278272,
		31.396425, 30.251318, 20.297487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622400, 30.357910, 20.760605>,  <30.749855, 30.435715, 20.102697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622400, 30.357910, 20.760605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.021866, 30.341433, 20.773094>,  <31.261545, 30.331545, 20.780588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.021866, 30.341433, 20.773094>,  <30.622400, 30.357910, 20.760605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021866, 30.341433, 20.773094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013273, 0.379420, 0.925129,
		-0.049958, -0.924307, 0.378366,
		0.998663, -0.041196, 0.031224,
		31.321465, 30.329075, 20.782461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949476, 29.888807, 21.289457>,  <30.622400, 30.357910, 20.760605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949476, 29.888807, 21.289457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.256220, 30.136578, 21.222239>,  <31.440266, 30.285240, 21.181908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.256220, 30.136578, 21.222239>,  <30.949476, 29.888807, 21.289457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256220, 30.136578, 21.222239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078500, 0.169341, 0.982426,
		0.636998, -0.766573, 0.081236,
		0.766858, 0.619427, -0.168046,
		31.486277, 30.322405, 21.171825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525297, 29.701263, 21.822275>,  <30.949476, 29.888807, 21.289457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525297, 29.701263, 21.822275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653902, 30.052393, 21.680260>,  <31.731066, 30.263071, 21.595051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653902, 30.052393, 21.680260>,  <31.525297, 29.701263, 21.822275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653902, 30.052393, 21.680260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491436, 0.165810, 0.854984,
		0.809396, -0.449367, -0.378085,
		0.321512, 0.877825, -0.355041,
		31.750355, 30.315741, 21.573748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281227, 29.759853, 21.878069>,  <31.525297, 29.701263, 21.822275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281227, 29.759853, 21.878069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137115, 30.132984, 21.880404>,  <32.050648, 30.356863, 21.881805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137115, 30.132984, 21.880404>,  <32.281227, 29.759853, 21.878069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137115, 30.132984, 21.880404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469487, 0.175912, 0.865238,
		0.806090, 0.314468, -0.501327,
		-0.360279, 0.932826, 0.005838,
		32.029030, 30.412832, 21.882154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831841, 30.230516, 22.011238>,  <32.281227, 29.759853, 21.878069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831841, 30.230516, 22.011238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495647, 30.426653, 22.103458>,  <32.293930, 30.544334, 22.158791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495647, 30.426653, 22.103458>,  <32.831841, 30.230516, 22.011238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495647, 30.426653, 22.103458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319727, 0.105287, 0.941642,
		0.437452, 0.865147, -0.245268,
		-0.840482, 0.490342, 0.230553,
		32.243504, 30.573755, 22.172625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162182, 30.755201, 22.460892>,  <32.831841, 30.230516, 22.011238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162182, 30.755201, 22.460892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768536, 30.773710, 22.529438>,  <32.532349, 30.784815, 22.570566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768536, 30.773710, 22.529438>,  <33.162182, 30.755201, 22.460892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768536, 30.773710, 22.529438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177349, 0.215798, 0.960197,
		0.007450, 0.975341, -0.220577,
		-0.984120, 0.046273, 0.171368,
		32.473301, 30.787592, 22.580849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037224, 31.401972, 22.837883>,  <33.162182, 30.755201, 22.460892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037224, 31.401972, 22.837883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748676, 31.134649, 22.910547>,  <32.575550, 30.974257, 22.954145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748676, 31.134649, 22.910547>,  <33.037224, 31.401972, 22.837883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748676, 31.134649, 22.910547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028395, 0.233546, 0.971931,
		-0.691972, 0.706276, -0.149496,
		-0.721366, -0.668304, 0.181662,
		32.532265, 30.934158, 22.965046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677574, 31.781277, 23.354048>,  <33.037224, 31.401972, 22.837883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677574, 31.781277, 23.354048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562805, 31.398838, 23.377888>,  <32.493942, 31.169374, 23.392191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562805, 31.398838, 23.377888>,  <32.677574, 31.781277, 23.354048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562805, 31.398838, 23.377888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026377, 0.054305, 0.998176,
		-0.957590, 0.287973, 0.009637,
		-0.286924, -0.956098, 0.059598,
		32.476727, 31.112009, 23.395767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128918, 31.698572, 23.919464>,  <32.677574, 31.781277, 23.354048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128918, 31.698572, 23.919464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227818, 31.313604, 23.874531>,  <32.287159, 31.082624, 23.847570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227818, 31.313604, 23.874531>,  <32.128918, 31.698572, 23.919464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227818, 31.313604, 23.874531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104960, -0.088648, 0.990517,
		-0.963249, -0.256699, 0.079096,
		0.247253, -0.962417, -0.112333,
		32.301994, 31.024879, 23.840832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705059, 31.314093, 24.324800>,  <32.128918, 31.698572, 23.919464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705059, 31.314093, 24.324800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.024319, 31.076563, 24.284143>,  <32.215874, 30.934044, 24.259750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.024319, 31.076563, 24.284143>,  <31.705059, 31.314093, 24.324800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024319, 31.076563, 24.284143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002220, -0.165810, 0.986155,
		-0.602458, -0.787323, -0.131022,
		0.798147, -0.593827, -0.101641,
		32.263763, 30.898415, 24.253651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596897, 30.750748, 24.760738>,  <31.705059, 31.314093, 24.324800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596897, 30.750748, 24.760738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992767, 30.732307, 24.706455>,  <32.230289, 30.721243, 24.673885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992767, 30.732307, 24.706455>,  <31.596897, 30.750748, 24.760738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992767, 30.732307, 24.706455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129407, -0.119570, 0.984356,
		-0.061603, -0.991755, -0.112370,
		0.989676, -0.046098, -0.135706,
		32.289669, 30.718477, 24.665743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805214, 30.123013, 25.175459>,  <31.596897, 30.750748, 24.760738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805214, 30.123013, 25.175459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135548, 30.341164, 25.118101>,  <32.333748, 30.472054, 25.083687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135548, 30.341164, 25.118101>,  <31.805214, 30.123013, 25.175459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135548, 30.341164, 25.118101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217329, -0.073170, 0.973352,
		0.520352, -0.834991, -0.178953,
		0.825834, 0.545378, -0.143393,
		32.383297, 30.504776, 25.075083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290531, 29.763651, 25.592682>,  <31.805214, 30.123013, 25.175459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290531, 29.763651, 25.592682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443588, 30.131227, 25.554457>,  <32.535423, 30.351774, 25.531523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443588, 30.131227, 25.554457>,  <32.290531, 29.763651, 25.592682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443588, 30.131227, 25.554457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179585, 0.027482, 0.983358,
		0.906275, -0.393436, -0.154512,
		0.382642, 0.918941, -0.095561,
		32.558380, 30.406910, 25.525789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940201, 29.783762, 25.925623>,  <32.290531, 29.763651, 25.592682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940201, 29.783762, 25.925623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799545, 30.158190, 25.930050>,  <32.715153, 30.382847, 25.932705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.799545, 30.158190, 25.930050>,  <32.940201, 29.783762, 25.925623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799545, 30.158190, 25.930050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286529, 0.096367, 0.953213,
		0.891209, 0.338354, -0.302097,
		-0.351635, 0.936072, 0.011065,
		32.694054, 30.439011, 25.933369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.129784, 30.856522, 29.594061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.999580, 31.210415, 29.460617>,  <36.921459, 31.422750, 29.380550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.999580, 31.210415, 29.460617>,  <37.129784, 30.856522, 29.594061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999580, 31.210415, 29.460617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676193, 0.464432, 0.571897,
		0.660913, -0.039427, -0.749426,
		-0.325509, 0.884731, -0.333609,
		36.901928, 31.475834, 29.360535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739689, 31.239683, 29.745249>,  <37.129784, 30.856522, 29.594061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739689, 31.239683, 29.745249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457592, 31.517275, 29.687252>,  <37.288334, 31.683830, 29.652454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457592, 31.517275, 29.687252>,  <37.739689, 31.239683, 29.745249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457592, 31.517275, 29.687252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454956, 0.599851, 0.658175,
		0.543733, 0.398209, -0.738772,
		-0.705244, 0.693980, -0.144991,
		37.246017, 31.725470, 29.643755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149345, 31.834784, 29.724327>,  <37.739689, 31.239683, 29.745249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149345, 31.834784, 29.724327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767071, 31.914467, 29.811018>,  <37.537704, 31.962276, 29.863033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767071, 31.914467, 29.811018>,  <38.149345, 31.834784, 29.724327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767071, 31.914467, 29.811018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293933, 0.605507, 0.739571,
		0.016098, 0.770504, -0.637231,
		-0.955691, 0.199209, 0.216729,
		37.480362, 31.974230, 29.876038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121513, 32.591568, 29.705072>,  <38.149345, 31.834784, 29.724327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121513, 32.591568, 29.705072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.824848, 32.440907, 29.927090>,  <37.646851, 32.350510, 30.060299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.824848, 32.440907, 29.927090>,  <38.121513, 32.591568, 29.705072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824848, 32.440907, 29.927090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170531, 0.694402, 0.699089,
		-0.648734, 0.613140, -0.450781,
		-0.741663, -0.376651, 0.555041,
		37.602348, 32.327911, 30.093601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889389, 33.193966, 30.011581>,  <38.121513, 32.591568, 29.705072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889389, 33.193966, 30.011581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.696209, 32.910759, 30.217678>,  <37.580303, 32.740833, 30.341337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.696209, 32.910759, 30.217678>,  <37.889389, 33.193966, 30.011581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696209, 32.910759, 30.217678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060113, 0.560217, 0.826162,
		-0.873584, 0.429965, -0.227994,
		-0.482947, -0.708016, 0.515243,
		37.551323, 32.698353, 30.372252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490257, 33.493954, 30.496317>,  <37.889389, 33.193966, 30.011581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490257, 33.493954, 30.496317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495205, 33.129272, 30.660580>,  <37.498173, 32.910461, 30.759138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495205, 33.129272, 30.660580>,  <37.490257, 33.493954, 30.496317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495205, 33.129272, 30.660580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098097, 0.407603, 0.907875,
		-0.995100, -0.051510, -0.084396,
		0.012365, -0.911705, 0.410659,
		37.498913, 32.855762, 30.783777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839401, 33.316818, 30.866375>,  <37.490257, 33.493954, 30.496317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839401, 33.316818, 30.866375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134270, 33.091770, 31.016062>,  <37.311192, 32.956741, 31.105875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.134270, 33.091770, 31.016062>,  <36.839401, 33.316818, 30.866375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134270, 33.091770, 31.016062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117517, 0.438629, 0.890951,
		-0.665407, -0.700762, 0.257228,
		0.737172, -0.562617, 0.374218,
		37.355423, 32.922985, 31.128326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735428, 33.345028, 31.598728>,  <36.839401, 33.316818, 30.866375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735428, 33.345028, 31.598728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114285, 33.216835, 31.592833>,  <37.341599, 33.139919, 31.589296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.114285, 33.216835, 31.592833>,  <36.735428, 33.345028, 31.598728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114285, 33.216835, 31.592833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130889, 0.344064, 0.929778,
		-0.292910, -0.882558, 0.367825,
		0.947139, -0.320486, -0.014738,
		37.398426, 33.120689, 31.588411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820633, 33.027180, 32.245224>,  <36.735428, 33.345028, 31.598728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820633, 33.027180, 32.245224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.191582, 33.119381, 32.127342>,  <37.414150, 33.174702, 32.056614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.191582, 33.119381, 32.127342>,  <36.820633, 33.027180, 32.245224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191582, 33.119381, 32.127342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180631, 0.413971, 0.892188,
		0.327645, -0.880624, 0.342271,
		0.927373, 0.230497, -0.294704,
		37.469795, 33.188530, 32.038929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148521, 32.939186, 32.855633>,  <36.820633, 33.027180, 32.245224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148521, 32.939186, 32.855633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414627, 33.126720, 32.623215>,  <37.574291, 33.239243, 32.483765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414627, 33.126720, 32.623215>,  <37.148521, 32.939186, 32.855633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414627, 33.126720, 32.623215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137038, 0.688346, 0.712320,
		0.733924, -0.553506, 0.393683,
		0.665263, 0.468840, -0.581045,
		37.614208, 33.267372, 32.448902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700932, 33.068829, 33.300415>,  <37.148521, 32.939186, 32.855633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700932, 33.068829, 33.300415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763329, 33.318901, 32.994522>,  <37.800766, 33.468945, 32.810986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.763329, 33.318901, 32.994522>,  <37.700932, 33.068829, 33.300415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763329, 33.318901, 32.994522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082038, 0.763332, 0.640776,
		0.984345, -0.162695, 0.067788,
		0.155996, 0.625184, -0.764729,
		37.810127, 33.506454, 32.765102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356579, 33.469578, 33.368885>,  <37.700932, 33.068829, 33.300415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356579, 33.469578, 33.368885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111126, 33.690254, 33.142929>,  <37.963856, 33.822659, 33.007355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111126, 33.690254, 33.142929>,  <38.356579, 33.469578, 33.368885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111126, 33.690254, 33.142929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016735, 0.706168, 0.707846,
		0.789417, 0.443808, -0.424093,
		-0.613629, 0.551688, -0.564888,
		37.927036, 33.855762, 32.973461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612816, 34.196056, 33.498867>,  <38.356579, 33.469578, 33.368885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612816, 34.196056, 33.498867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.234310, 34.196438, 33.369507>,  <38.007206, 34.196667, 33.291889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.234310, 34.196438, 33.369507>,  <38.612816, 34.196056, 33.498867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234310, 34.196438, 33.369507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273464, 0.531485, 0.801711,
		0.172647, 0.847067, -0.502664,
		-0.946261, 0.000953, -0.323401,
		37.950432, 34.196724, 33.272488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374928, 34.850281, 33.450417>,  <38.612816, 34.196056, 33.498867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374928, 34.850281, 33.450417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.063877, 34.604046, 33.501560>,  <37.877247, 34.456306, 33.532246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.063877, 34.604046, 33.501560>,  <38.374928, 34.850281, 33.450417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063877, 34.604046, 33.501560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336126, 0.578912, 0.742886,
		-0.531331, 0.534712, -0.657093,
		-0.777629, -0.615584, 0.127864,
		37.830589, 34.419369, 33.539921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875786, 35.021713, 32.927216>,  <38.374928, 34.850281, 33.450417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875786, 35.021713, 32.927216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102631, 35.337921, 32.834724>,  <39.238739, 35.527645, 32.779232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102631, 35.337921, 32.834724>,  <38.875786, 35.021713, 32.927216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102631, 35.337921, 32.834724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381950, 0.003692, -0.924175,
		-0.729722, 0.612429, 0.304031,
		0.567115, 0.790516, -0.231224,
		39.272766, 35.575077, 32.765358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455322, 35.607445, 32.703644>,  <38.875786, 35.021713, 32.927216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455322, 35.607445, 32.703644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820171, 35.621830, 32.540310>,  <39.039082, 35.630463, 32.442310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820171, 35.621830, 32.540310>,  <38.455322, 35.607445, 32.703644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820171, 35.621830, 32.540310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409632, 0.116758, -0.904748,
		0.015135, 0.992509, 0.121231,
		0.912125, 0.035967, -0.408331,
		39.093807, 35.632622, 32.417812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353695, 35.970055, 32.062672>,  <38.455322, 35.607445, 32.703644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353695, 35.970055, 32.062672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722290, 35.834946, 31.985971>,  <38.943447, 35.753880, 31.939951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722290, 35.834946, 31.985971>,  <38.353695, 35.970055, 32.062672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722290, 35.834946, 31.985971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243809, -0.118729, -0.962528,
		0.302348, 0.933710, -0.191759,
		0.921490, -0.337771, -0.191749,
		38.998737, 35.733616, 31.928446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627625, 36.390381, 31.427402>,  <38.353695, 35.970055, 32.062672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627625, 36.390381, 31.427402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829304, 36.045715, 31.450478>,  <38.950310, 35.838917, 31.464323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829304, 36.045715, 31.450478>,  <38.627625, 36.390381, 31.427402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829304, 36.045715, 31.450478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146691, -0.151280, -0.977546,
		0.851041, 0.484410, -0.202672,
		0.504193, -0.861662, 0.057687,
		38.980560, 35.787216, 31.467783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084686, 36.434441, 30.813105>,  <38.627625, 36.390381, 31.427402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084686, 36.434441, 30.813105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067566, 36.053688, 30.934486>,  <39.057293, 35.825237, 31.007315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067566, 36.053688, 30.934486>,  <39.084686, 36.434441, 30.813105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067566, 36.053688, 30.934486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061284, -0.300657, -0.951761,
		0.997202, -0.059331, -0.045467,
		-0.042799, -0.951885, 0.303452,
		39.054726, 35.768124, 31.025522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604671, 36.028435, 30.393591>,  <39.084686, 36.434441, 30.813105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604671, 36.028435, 30.393591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329639, 35.783142, 30.549118>,  <39.164619, 35.635967, 30.642435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329639, 35.783142, 30.549118>,  <39.604671, 36.028435, 30.393591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329639, 35.783142, 30.549118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200081, -0.354739, -0.913306,
		0.698000, -0.705764, 0.121214,
		-0.687578, -0.613235, 0.388818,
		39.123367, 35.599171, 30.665764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527920, 35.537327, 29.895866>,  <39.604671, 36.028435, 30.393591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527920, 35.537327, 29.895866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.221245, 35.427895, 30.128193>,  <39.037239, 35.362236, 30.267588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.221245, 35.427895, 30.128193>,  <39.527920, 35.537327, 29.895866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221245, 35.427895, 30.128193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370136, -0.550836, -0.748050,
		0.524589, -0.788499, 0.321054,
		-0.766685, -0.273585, 0.580814,
		38.991238, 35.345818, 30.302437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487328, 34.827873, 29.796667>,  <39.527920, 35.537327, 29.895866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487328, 34.827873, 29.796667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125374, 34.948719, 29.916613>,  <38.908203, 35.021225, 29.988579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125374, 34.948719, 29.916613>,  <39.487328, 34.827873, 29.796667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125374, 34.948719, 29.916613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413600, -0.457505, -0.787162,
		-0.100624, -0.836311, 0.538942,
		-0.904882, 0.302113, 0.299863,
		38.853909, 35.039352, 30.006571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060966, 34.305950, 29.792059>,  <39.487328, 34.827873, 29.796667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060966, 34.305950, 29.792059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826775, 34.629333, 29.768038>,  <38.686260, 34.823364, 29.753626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.826775, 34.629333, 29.768038>,  <39.060966, 34.305950, 29.792059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826775, 34.629333, 29.768038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423351, -0.368077, -0.827824,
		-0.691367, -0.459251, 0.557764,
		-0.585479, 0.808460, -0.060052,
		38.651131, 34.871872, 29.750023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444435, 33.984955, 29.760996>,  <39.060966, 34.305950, 29.792059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444435, 33.984955, 29.760996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398151, 34.353275, 29.612011>,  <38.370380, 34.574268, 29.522619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.398151, 34.353275, 29.612011>,  <38.444435, 33.984955, 29.760996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398151, 34.353275, 29.612011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454836, -0.382477, -0.804261,
		-0.883026, 0.076350, 0.463071,
		-0.115709, 0.920805, -0.372464,
		38.363438, 34.629517, 29.500271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748844, 33.990257, 29.479637>,  <38.444435, 33.984955, 29.760996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748844, 33.990257, 29.479637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927311, 34.310551, 29.319756>,  <38.034389, 34.502728, 29.223827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927311, 34.310551, 29.319756>,  <37.748844, 33.990257, 29.479637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927311, 34.310551, 29.319756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469147, -0.171073, -0.866392,
		-0.762127, 0.574073, 0.299335,
		0.446164, 0.800733, -0.399704,
		38.061161, 34.550770, 29.199844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225597, 34.374687, 29.019033>,  <37.748844, 33.990257, 29.479637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225597, 34.374687, 29.019033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591274, 34.468895, 28.887102>,  <37.810680, 34.525421, 28.807943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.591274, 34.468895, 28.887102>,  <37.225597, 34.374687, 29.019033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591274, 34.468895, 28.887102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310655, -0.115449, -0.943486,
		-0.260290, 0.964988, -0.032376,
		0.914190, 0.235522, -0.329828,
		37.865532, 34.539551, 28.788153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103813, 34.747551, 28.496523>,  <37.225597, 34.374687, 29.019033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103813, 34.747551, 28.496523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482594, 34.662857, 28.399820>,  <37.709862, 34.612041, 28.341799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.482594, 34.662857, 28.399820>,  <37.103813, 34.747551, 28.496523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482594, 34.662857, 28.399820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282486, -0.189731, -0.940321,
		0.153230, 0.958734, -0.239479,
		0.946954, -0.211735, -0.241756,
		37.766682, 34.599335, 28.327293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188713, 35.112793, 27.927212>,  <37.103813, 34.747551, 28.496523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188713, 35.112793, 27.927212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480896, 34.840233, 27.945635>,  <37.656208, 34.676697, 27.956688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480896, 34.840233, 27.945635>,  <37.188713, 35.112793, 27.927212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480896, 34.840233, 27.945635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117972, -0.192312, -0.974217,
		0.672690, 0.706193, -0.220862,
		0.730460, -0.681401, 0.046056,
		37.700035, 34.635811, 27.959452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374794, 35.792107, 27.813456>,  <37.188713, 35.112793, 27.927212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374794, 35.792107, 27.813456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193722, 36.128723, 27.695555>,  <37.085079, 36.330692, 27.624813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.193722, 36.128723, 27.695555>,  <37.374794, 35.792107, 27.813456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193722, 36.128723, 27.695555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222758, 0.213350, 0.951242,
		0.863397, 0.496272, 0.090880,
		-0.452685, 0.841544, -0.294755,
		37.057915, 36.381187, 27.607128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567799, 36.250240, 28.326405>,  <37.374794, 35.792107, 27.813456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567799, 36.250240, 28.326405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.250996, 36.409237, 28.141052>,  <37.060913, 36.504635, 28.029840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.250996, 36.409237, 28.141052>,  <37.567799, 36.250240, 28.326405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250996, 36.409237, 28.141052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378222, 0.276340, 0.883507,
		0.479239, 0.875005, -0.068522,
		-0.792009, 0.397494, -0.463379,
		37.013393, 36.528484, 28.002039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489464, 36.904137, 28.615517>,  <37.567799, 36.250240, 28.326405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489464, 36.904137, 28.615517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131020, 36.834126, 28.452368>,  <36.915955, 36.792118, 28.354479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131020, 36.834126, 28.452368>,  <37.489464, 36.904137, 28.615517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131020, 36.834126, 28.452368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443680, 0.377941, 0.812594,
		0.011921, 0.909134, -0.416334,
		-0.896106, -0.175032, -0.407870,
		36.862186, 36.781616, 28.330008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087967, 37.501472, 28.758347>,  <37.489464, 36.904137, 28.615517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087967, 37.501472, 28.758347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830021, 37.201817, 28.697765>,  <36.675255, 37.022022, 28.661417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.830021, 37.201817, 28.697765>,  <37.087967, 37.501472, 28.758347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830021, 37.201817, 28.697765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555620, 0.323431, 0.765950,
		-0.524818, 0.578086, -0.624806,
		-0.644867, -0.749139, -0.151454,
		36.636562, 36.977074, 28.652328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334820, 37.777744, 28.862490>,  <37.087967, 37.501472, 28.758347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334820, 37.777744, 28.862490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315685, 37.381271, 28.911921>,  <36.304203, 37.143387, 28.941580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.315685, 37.381271, 28.911921>,  <36.334820, 37.777744, 28.862490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315685, 37.381271, 28.911921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576709, 0.128422, 0.806792,
		-0.815548, -0.032675, -0.577767,
		-0.047836, -0.991181, 0.123578,
		36.301334, 37.083916, 28.948994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661510, 37.640385, 28.907045>,  <36.334820, 37.777744, 28.862490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661510, 37.640385, 28.907045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812103, 37.313297, 29.081221>,  <35.902458, 37.117046, 29.185726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812103, 37.313297, 29.081221>,  <35.661510, 37.640385, 28.907045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812103, 37.313297, 29.081221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661977, 0.091372, 0.743934,
		-0.648112, -0.568326, -0.506908,
		0.376480, -0.817714, 0.435438,
		35.925049, 37.067982, 29.211851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096664, 37.277187, 29.071650>,  <35.661510, 37.640385, 28.907045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096664, 37.277187, 29.071650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.387253, 37.152000, 29.316366>,  <35.561607, 37.076889, 29.463196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.387253, 37.152000, 29.316366>,  <35.096664, 37.277187, 29.071650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387253, 37.152000, 29.316366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632990, 0.041806, 0.773031,
		-0.267512, -0.948843, -0.167736,
		0.726472, -0.312970, 0.611791,
		35.605194, 37.058109, 29.499903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756657, 37.175426, 29.731880>,  <35.096664, 37.277187, 29.071650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756657, 37.175426, 29.731880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.112675, 37.072021, 29.882076>,  <35.326286, 37.009979, 29.972193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.112675, 37.072021, 29.882076>,  <34.756657, 37.175426, 29.731880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112675, 37.072021, 29.882076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371433, 0.066316, 0.926088,
		-0.264305, -0.963729, -0.036995,
		0.890045, -0.258511, 0.375488,
		35.379688, 36.994469, 29.994722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653660, 36.710732, 30.311604>,  <34.756657, 37.175426, 29.731880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653660, 36.710732, 30.311604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.010880, 36.877914, 30.378267>,  <35.225212, 36.978226, 30.418266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.010880, 36.877914, 30.378267>,  <34.653660, 36.710732, 30.311604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010880, 36.877914, 30.378267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227015, 0.098721, 0.968875,
		0.388495, -0.903087, 0.183045,
		0.893049, 0.417957, 0.166661,
		35.278793, 37.003304, 30.428267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031029, 36.328659, 30.805399>,  <34.653660, 36.710732, 30.311604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031029, 36.328659, 30.805399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.194714, 36.691902, 30.840908>,  <35.292927, 36.909847, 30.862213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.194714, 36.691902, 30.840908>,  <35.031029, 36.328659, 30.805399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194714, 36.691902, 30.840908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262884, 0.024174, 0.964524,
		0.873747, -0.418037, 0.248619,
		0.409217, 0.908109, 0.088773,
		35.317478, 36.964336, 30.867540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409389, 36.330200, 31.500324>,  <35.031029, 36.328659, 30.805399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409389, 36.330200, 31.500324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424328, 36.721729, 31.419821>,  <35.433292, 36.956646, 31.371519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.424328, 36.721729, 31.419821>,  <35.409389, 36.330200, 31.500324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424328, 36.721729, 31.419821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243164, 0.204249, 0.948237,
		0.969266, 0.013526, 0.245643,
		0.037346, 0.978825, -0.201260,
		35.435532, 37.015377, 31.359444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911003, 36.650845, 31.886366>,  <35.409389, 36.330200, 31.500324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911003, 36.650845, 31.886366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.626865, 36.916958, 31.794447>,  <35.456383, 37.076626, 31.739296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.626865, 36.916958, 31.794447>,  <35.911003, 36.650845, 31.886366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626865, 36.916958, 31.794447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244432, 0.073000, 0.966915,
		0.660048, 0.743013, 0.110762,
		-0.710345, 0.665284, -0.229799,
		35.413761, 37.116543, 31.725508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.453056, 35.035839, 24.042196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080376, 35.180771, 24.052395>,  <36.856766, 35.267731, 24.058514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080376, 35.180771, 24.052395>,  <37.453056, 35.035839, 24.042196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080376, 35.180771, 24.052395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259697, 0.615419, 0.744189,
		0.253954, 0.699981, -0.667483,
		-0.931700, 0.362333, 0.025495,
		36.800865, 35.289471, 24.060043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566105, 35.785397, 24.291656>,  <37.453056, 35.035839, 24.042196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566105, 35.785397, 24.291656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181293, 35.689369, 24.343603>,  <36.950405, 35.631752, 24.374771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181293, 35.689369, 24.343603>,  <37.566105, 35.785397, 24.291656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181293, 35.689369, 24.343603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012312, 0.513493, 0.858006,
		-0.272667, 0.823828, -0.496951,
		-0.962030, -0.240068, 0.129869,
		36.892685, 35.617348, 24.382565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214783, 36.465122, 24.441656>,  <37.566105, 35.785397, 24.291656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214783, 36.465122, 24.441656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972466, 36.180042, 24.583124>,  <36.827076, 36.008995, 24.668005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972466, 36.180042, 24.583124>,  <37.214783, 36.465122, 24.441656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972466, 36.180042, 24.583124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065284, 0.487548, 0.870652,
		-0.792943, 0.504342, -0.341879,
		-0.605788, -0.712697, 0.353672,
		36.790730, 35.966232, 24.689226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575893, 36.818798, 24.703087>,  <37.214783, 36.465122, 24.441656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575893, 36.818798, 24.703087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577728, 36.467686, 24.894701>,  <36.578831, 36.257019, 25.009670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577728, 36.467686, 24.894701>,  <36.575893, 36.818798, 24.703087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577728, 36.467686, 24.894701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153014, 0.472782, 0.867793,
		-0.988213, -0.077282, -0.132144,
		0.004590, -0.877784, 0.479035,
		36.579105, 36.204350, 25.038412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149624, 36.916058, 25.215771>,  <36.575893, 36.818798, 24.703087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149624, 36.916058, 25.215771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329815, 36.585312, 25.350447>,  <36.437931, 36.386864, 25.431252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329815, 36.585312, 25.350447>,  <36.149624, 36.916058, 25.215771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329815, 36.585312, 25.350447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128685, 0.313045, 0.940980,
		-0.883465, -0.467217, 0.034614,
		0.450477, -0.826869, 0.336688,
		36.464958, 36.337250, 25.451452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963036, 36.815914, 25.981897>,  <36.149624, 36.916058, 25.215771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963036, 36.815914, 25.981897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271351, 36.562073, 25.959417>,  <36.456341, 36.409767, 25.945929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271351, 36.562073, 25.959417>,  <35.963036, 36.815914, 25.981897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271351, 36.562073, 25.959417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149136, 0.093968, 0.984342,
		-0.619388, -0.767102, 0.167073,
		0.770790, -0.634606, -0.056200,
		36.502586, 36.371693, 25.942556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865791, 36.284008, 26.555401>,  <35.963036, 36.815914, 25.981897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865791, 36.284008, 26.555401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246361, 36.301628, 26.433516>,  <36.474701, 36.312199, 26.360384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246361, 36.301628, 26.433516>,  <35.865791, 36.284008, 26.555401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246361, 36.301628, 26.433516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289419, 0.209616, 0.933969,
		0.105012, -0.976791, 0.186685,
		0.951425, 0.044048, -0.304714,
		36.531788, 36.314842, 26.342102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322044, 35.657925, 26.779255>,  <35.865791, 36.284008, 26.555401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322044, 35.657925, 26.779255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571289, 35.968651, 26.742847>,  <36.720837, 36.155087, 26.721003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571289, 35.968651, 26.742847>,  <36.322044, 35.657925, 26.779255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571289, 35.968651, 26.742847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012076, 0.125913, 0.991968,
		0.782038, -0.617010, 0.087839,
		0.623114, 0.776817, -0.091017,
		36.758224, 36.201694, 26.715542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927269, 35.536545, 27.230019>,  <36.322044, 35.657925, 26.779255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927269, 35.536545, 27.230019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907055, 35.932880, 27.179914>,  <36.894924, 36.170681, 27.149851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907055, 35.932880, 27.179914>,  <36.927269, 35.536545, 27.230019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907055, 35.932880, 27.179914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048146, 0.122859, 0.991256,
		0.997561, 0.056127, 0.041496,
		-0.050538, 0.990836, -0.125261,
		36.891895, 36.230133, 27.142336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600842, 35.264843, 27.072962>,  <36.927269, 35.536545, 27.230019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600842, 35.264843, 27.072962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732750, 34.921329, 27.229803>,  <37.811897, 34.715221, 27.323908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732750, 34.921329, 27.229803>,  <37.600842, 35.264843, 27.072962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732750, 34.921329, 27.229803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061037, -0.433864, -0.898908,
		0.942084, 0.272504, -0.195495,
		0.329775, -0.858780, 0.392104,
		37.831684, 34.663696, 27.347435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229507, 35.133297, 26.727882>,  <37.600842, 35.264843, 27.072962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229507, 35.133297, 26.727882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128380, 34.768776, 26.857872>,  <38.067703, 34.550064, 26.935865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128380, 34.768776, 26.857872>,  <38.229507, 35.133297, 26.727882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128380, 34.768776, 26.857872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209239, -0.379438, -0.901247,
		0.944617, -0.159857, 0.286610,
		-0.252821, -0.911303, 0.324975,
		38.052532, 34.495384, 26.955364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790897, 34.669312, 26.616999>,  <38.229507, 35.133297, 26.727882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790897, 34.669312, 26.616999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482185, 34.417088, 26.649883>,  <38.296959, 34.265755, 26.669615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482185, 34.417088, 26.649883>,  <38.790897, 34.669312, 26.616999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482185, 34.417088, 26.649883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267495, -0.439223, -0.857630,
		0.576895, -0.639907, 0.507652,
		-0.771776, -0.630557, 0.082213,
		38.250652, 34.227921, 26.674547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084690, 33.963005, 26.478321>,  <38.790897, 34.669312, 26.616999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084690, 33.963005, 26.478321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689991, 33.914986, 26.434656>,  <38.453171, 33.886173, 26.408457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689991, 33.914986, 26.434656>,  <39.084690, 33.963005, 26.478321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689991, 33.914986, 26.434656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154933, -0.497224, -0.853677,
		0.048202, -0.859277, 0.509234,
		-0.986748, -0.120046, -0.109164,
		38.393967, 33.878971, 26.401907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004738, 33.312878, 26.323402>,  <39.084690, 33.963005, 26.478321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004738, 33.312878, 26.323402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638763, 33.430386, 26.212706>,  <38.419178, 33.500889, 26.146288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638763, 33.430386, 26.212706>,  <39.004738, 33.312878, 26.323402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638763, 33.430386, 26.212706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032756, -0.629389, -0.776400,
		-0.402258, -0.719425, 0.566231,
		-0.914940, 0.293765, -0.276742,
		38.364281, 33.518517, 26.129683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605118, 32.695843, 26.167145>,  <39.004738, 33.312878, 26.323402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605118, 32.695843, 26.167145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462517, 33.002914, 25.954138>,  <38.376957, 33.187157, 25.826334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462517, 33.002914, 25.954138>,  <38.605118, 32.695843, 26.167145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462517, 33.002914, 25.954138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016650, -0.564657, -0.825158,
		-0.934147, -0.303034, 0.188518,
		-0.356499, 0.767681, -0.532518,
		38.355568, 33.233219, 25.794382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035706, 32.491432, 25.830744>,  <38.605118, 32.695843, 26.167145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035706, 32.491432, 25.830744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130035, 32.801483, 25.596285>,  <38.186634, 32.987514, 25.455610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130035, 32.801483, 25.596285>,  <38.035706, 32.491432, 25.830744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130035, 32.801483, 25.596285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419026, -0.463104, -0.780994,
		-0.876816, 0.429785, 0.215588,
		0.235820, 0.775125, -0.586148,
		38.200783, 33.034019, 25.420441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382488, 32.616798, 25.491289>,  <38.035706, 32.491432, 25.830744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382488, 32.616798, 25.491289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698891, 32.745831, 25.283348>,  <37.888733, 32.823250, 25.158583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698891, 32.745831, 25.283348>,  <37.382488, 32.616798, 25.491289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698891, 32.745831, 25.283348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325160, -0.498103, -0.803844,
		-0.518241, 0.804884, -0.289116,
		0.791010, 0.322576, -0.519853,
		37.936195, 32.842602, 25.127392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199951, 32.308510, 24.910704>,  <37.382488, 32.616798, 25.491289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199951, 32.308510, 24.910704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532593, 32.503372, 24.804039>,  <37.732178, 32.620289, 24.740040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532593, 32.503372, 24.804039>,  <37.199951, 32.308510, 24.910704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532593, 32.503372, 24.804039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195574, -0.192508, -0.961609,
		-0.519787, 0.851833, -0.064817,
		0.831608, 0.487155, -0.266660,
		37.782074, 32.649517, 24.724041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002193, 32.848862, 24.389345>,  <37.199951, 32.308510, 24.910704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002193, 32.848862, 24.389345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395065, 32.805351, 24.328043>,  <37.630791, 32.779247, 24.291262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395065, 32.805351, 24.328043>,  <37.002193, 32.848862, 24.389345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395065, 32.805351, 24.328043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161247, -0.068889, -0.984507,
		0.096530, 0.991677, -0.085201,
		0.982182, -0.108773, -0.153255,
		37.689720, 32.772720, 24.282066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223881, 33.308956, 23.791304>,  <37.002193, 32.848862, 24.389345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223881, 33.308956, 23.791304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461571, 32.989079, 23.825684>,  <37.604183, 32.797150, 23.846312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461571, 32.989079, 23.825684>,  <37.223881, 33.308956, 23.791304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461571, 32.989079, 23.825684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103581, -0.182061, -0.977816,
		0.797604, 0.572137, -0.191018,
		0.594221, -0.799696, 0.085950,
		37.639835, 32.749168, 23.851469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695118, 33.411259, 23.272135>,  <37.223881, 33.308956, 23.791304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695118, 33.411259, 23.272135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693024, 33.024727, 23.375038>,  <37.691769, 32.792809, 23.436779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693024, 33.024727, 23.375038>,  <37.695118, 33.411259, 23.272135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693024, 33.024727, 23.375038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121814, -0.254729, -0.959310,
		0.992539, -0.036361, -0.116379,
		-0.005237, -0.966329, 0.257257,
		37.691452, 32.734829, 23.452215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054546, 33.105534, 22.709974>,  <37.695118, 33.411259, 23.272135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054546, 33.105534, 22.709974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874638, 32.802238, 22.898773>,  <37.766693, 32.620262, 23.012053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874638, 32.802238, 22.898773>,  <38.054546, 33.105534, 22.709974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874638, 32.802238, 22.898773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353485, -0.334197, -0.873705,
		0.820217, -0.559811, -0.117714,
		-0.449770, -0.758238, 0.471999,
		37.739708, 32.574768, 23.040373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083462, 32.616547, 22.301378>,  <38.054546, 33.105534, 22.709974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083462, 32.616547, 22.301378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801949, 32.470165, 22.544941>,  <37.633041, 32.382336, 22.691078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801949, 32.470165, 22.544941>,  <38.083462, 32.616547, 22.301378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801949, 32.470165, 22.544941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583005, -0.192260, -0.789393,
		0.405951, -0.910556, -0.078045,
		-0.703782, -0.365956, 0.608908,
		37.590813, 32.360378, 22.727613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.400717, 32.408508, 24.122284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.657433, 32.710037, 24.065924>,  <29.811462, 32.890957, 24.032106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.657433, 32.710037, 24.065924>,  <29.400717, 32.408508, 24.122284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657433, 32.710037, 24.065924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055349, 0.137723, 0.988923,
		0.764880, -0.642480, 0.046665,
		0.641790, 0.753825, -0.140902,
		29.849970, 32.936184, 24.023653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948757, 32.272320, 24.544806>,  <29.400717, 32.408508, 24.122284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948757, 32.272320, 24.544806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986252, 32.666679, 24.489351>,  <30.008749, 32.903294, 24.456079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986252, 32.666679, 24.489351>,  <29.948757, 32.272320, 24.544806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986252, 32.666679, 24.489351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241805, 0.112535, 0.963777,
		0.965787, -0.123862, -0.227846,
		0.093734, 0.985898, -0.138635,
		30.014372, 32.962448, 24.447762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648565, 32.528866, 24.782087>,  <29.948757, 32.272320, 24.544806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648565, 32.528866, 24.782087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.400974, 32.842659, 24.797331>,  <30.252420, 33.030933, 24.806477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.400974, 32.842659, 24.797331>,  <30.648565, 32.528866, 24.782087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400974, 32.842659, 24.797331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450299, 0.314704, 0.835579,
		0.643504, 0.534366, -0.548047,
		-0.618978, 0.784483, 0.038111,
		30.215281, 33.078003, 24.808764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979885, 33.053123, 25.034662>,  <30.648565, 32.528866, 24.782087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979885, 33.053123, 25.034662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.612535, 33.198673, 25.096869>,  <30.392126, 33.286003, 25.134192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.612535, 33.198673, 25.096869>,  <30.979885, 33.053123, 25.034662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612535, 33.198673, 25.096869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314563, 0.432856, 0.844799,
		0.240088, 0.824760, -0.511986,
		-0.918372, 0.363878, 0.155515,
		30.337025, 33.307838, 25.143522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110899, 33.764492, 25.150415>,  <30.979885, 33.053123, 25.034662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110899, 33.764492, 25.150415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752504, 33.653873, 25.289400>,  <30.537468, 33.587502, 25.372791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.752504, 33.653873, 25.289400>,  <31.110899, 33.764492, 25.150415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752504, 33.653873, 25.289400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210641, 0.424151, 0.880753,
		-0.390945, 0.862333, -0.321782,
		-0.895987, -0.276546, 0.347462,
		30.483707, 33.570911, 25.393639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091814, 34.263542, 25.646046>,  <31.110899, 33.764492, 25.150415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091814, 34.263542, 25.646046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.799484, 34.002106, 25.724747>,  <30.624086, 33.845242, 25.771967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.799484, 34.002106, 25.724747>,  <31.091814, 34.263542, 25.646046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799484, 34.002106, 25.724747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169861, 0.105033, 0.979855,
		-0.661094, 0.749521, 0.034260,
		-0.730823, -0.653595, 0.196751,
		30.580238, 33.806026, 25.783772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637018, 34.609905, 26.015799>,  <31.091814, 34.263542, 25.646046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637018, 34.609905, 26.015799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.576223, 34.225933, 26.109980>,  <30.539747, 33.995552, 26.166489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.576223, 34.225933, 26.109980>,  <30.637018, 34.609905, 26.015799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576223, 34.225933, 26.109980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195487, 0.204320, 0.959186,
		-0.968857, 0.191812, 0.156599,
		-0.151988, -0.959928, 0.235454,
		30.530626, 33.937954, 26.180616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516726, 34.671909, 26.670280>,  <30.637018, 34.609905, 26.015799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516726, 34.671909, 26.670280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567430, 34.275742, 26.648344>,  <30.597853, 34.038040, 26.635181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.567430, 34.275742, 26.648344>,  <30.516726, 34.671909, 26.670280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567430, 34.275742, 26.648344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158417, -0.034366, 0.986774,
		-0.979201, -0.133774, 0.152542,
		0.126762, -0.990416, -0.054843,
		30.605459, 33.978619, 26.631891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022770, 34.415089, 27.138754>,  <30.516726, 34.671909, 26.670280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022770, 34.415089, 27.138754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.309666, 34.139595, 27.096403>,  <30.481802, 33.974297, 27.070992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.309666, 34.139595, 27.096403>,  <30.022770, 34.415089, 27.138754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309666, 34.139595, 27.096403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150423, 0.004670, 0.988611,
		-0.680399, -0.724996, 0.106951,
		0.717238, -0.688737, -0.105879,
		30.524837, 33.932972, 27.064640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895132, 33.903015, 27.686058>,  <30.022770, 34.415089, 27.138754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895132, 33.903015, 27.686058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.270523, 33.830555, 27.568449>,  <30.495758, 33.787079, 27.497885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.270523, 33.830555, 27.568449>,  <29.895132, 33.903015, 27.686058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270523, 33.830555, 27.568449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281350, -0.092663, 0.955121,
		-0.200265, -0.979080, -0.035995,
		0.938475, -0.181150, -0.294021,
		30.552065, 33.776211, 27.480242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203861, 33.401131, 28.023752>,  <29.895132, 33.903015, 27.686058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203861, 33.401131, 28.023752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.552052, 33.556671, 27.903044>,  <30.760965, 33.649994, 27.830620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.552052, 33.556671, 27.903044>,  <30.203861, 33.401131, 28.023752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552052, 33.556671, 27.903044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312192, 0.037816, 0.949266,
		0.380537, -0.920524, -0.088478,
		0.870476, 0.388853, -0.301770,
		30.813194, 33.673328, 27.812513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814997, 32.990410, 28.299879>,  <30.203861, 33.401131, 28.023752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814997, 32.990410, 28.299879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998859, 33.334934, 28.213284>,  <31.109177, 33.541649, 28.161327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.998859, 33.334934, 28.213284>,  <30.814997, 32.990410, 28.299879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998859, 33.334934, 28.213284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520542, -0.063789, 0.851450,
		0.719551, -0.504064, -0.477667,
		0.459656, 0.861307, -0.216487,
		31.136757, 33.593327, 28.148338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485806, 32.901218, 28.591766>,  <30.814997, 32.990410, 28.299879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485806, 32.901218, 28.591766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411695, 33.291111, 28.541861>,  <31.367229, 33.525047, 28.511917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.411695, 33.291111, 28.541861>,  <31.485806, 32.901218, 28.591766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411695, 33.291111, 28.541861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402825, 0.191140, 0.895097,
		0.896329, 0.115580, -0.428060,
		-0.185275, 0.974734, -0.124766,
		31.356113, 33.583530, 28.504431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090485, 33.258999, 28.752384>,  <31.485806, 32.901218, 28.591766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090485, 33.258999, 28.752384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.818098, 33.550915, 28.776712>,  <31.654667, 33.726063, 28.791309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.818098, 33.550915, 28.776712>,  <32.090485, 33.258999, 28.752384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818098, 33.550915, 28.776712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315476, 0.217390, 0.923697,
		0.660879, 0.648193, -0.378265,
		-0.680965, 0.729786, 0.060821,
		31.613808, 33.769852, 28.794958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859634, 33.238144, 28.965382>,  <32.090485, 33.258999, 28.752384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859634, 33.238144, 28.965382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.002468, 32.918213, 29.158363>,  <33.088169, 32.726254, 29.274153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.002468, 32.918213, 29.158363>,  <32.859634, 33.238144, 28.965382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002468, 32.918213, 29.158363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031988, -0.505732, -0.862097,
		0.933523, 0.323276, -0.155005,
		0.357087, -0.799829, 0.482454,
		33.109592, 32.678265, 29.303099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476376, 32.958324, 28.550428>,  <32.859634, 33.238144, 28.965382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476376, 32.958324, 28.550428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352036, 32.653938, 28.778217>,  <33.277431, 32.471306, 28.914890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.352036, 32.653938, 28.778217>,  <33.476376, 32.958324, 28.550428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352036, 32.653938, 28.778217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016077, -0.594861, -0.803668,
		0.950323, -0.258976, 0.172678,
		-0.310850, -0.760968, 0.569474,
		33.258781, 32.425648, 28.949059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837975, 32.328655, 28.284060>,  <33.476376, 32.958324, 28.550428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837975, 32.328655, 28.284060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.528770, 32.171814, 28.483543>,  <33.343246, 32.077709, 28.603233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.528770, 32.171814, 28.483543>,  <33.837975, 32.328655, 28.284060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528770, 32.171814, 28.483543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152173, -0.648568, -0.745790,
		0.615872, -0.652394, 0.441684,
		-0.773011, -0.392099, 0.498712,
		33.296867, 32.054184, 28.633158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901554, 31.600357, 28.128378>,  <33.837975, 32.328655, 28.284060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901554, 31.600357, 28.128378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.532299, 31.694668, 28.249851>,  <33.310745, 31.751253, 28.322735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.532299, 31.694668, 28.249851>,  <33.901554, 31.600357, 28.128378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532299, 31.694668, 28.249851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380477, -0.673737, -0.633495,
		0.055240, -0.700348, 0.711661,
		-0.923139, 0.235776, 0.303684,
		33.255356, 31.765400, 28.340956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533115, 30.943213, 28.419804>,  <33.901554, 31.600357, 28.128378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533115, 30.943213, 28.419804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263836, 31.217272, 28.308540>,  <33.102268, 31.381708, 28.241783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.263836, 31.217272, 28.308540>,  <33.533115, 30.943213, 28.419804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263836, 31.217272, 28.308540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323400, -0.611079, -0.722492,
		-0.664990, -0.396427, 0.632957,
		-0.673202, 0.685148, -0.278157,
		33.061874, 31.422815, 28.225094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059578, 30.453876, 28.207670>,  <33.533115, 30.943213, 28.419804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059578, 30.453876, 28.207670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936779, 30.796251, 28.041239>,  <32.863098, 31.001677, 27.941380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936779, 30.796251, 28.041239>,  <33.059578, 30.453876, 28.207670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936779, 30.796251, 28.041239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356346, -0.508768, -0.783692,
		-0.882478, -0.092327, 0.461203,
		-0.307001, 0.855938, -0.416077,
		32.844677, 31.053032, 27.916416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344345, 30.386578, 27.847937>,  <33.059578, 30.453876, 28.207670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344345, 30.386578, 27.847937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.498928, 30.720547, 27.691191>,  <32.591679, 30.920927, 27.597143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.498928, 30.720547, 27.691191>,  <32.344345, 30.386578, 27.847937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498928, 30.720547, 27.691191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309712, -0.282726, -0.907824,
		-0.868752, 0.472199, 0.149325,
		0.386456, 0.834922, -0.391865,
		32.614864, 30.971024, 27.573631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800583, 30.681961, 27.349928>,  <32.344345, 30.386578, 27.847937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800583, 30.681961, 27.349928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157642, 30.832558, 27.250786>,  <32.371880, 30.922915, 27.191301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157642, 30.832558, 27.250786>,  <31.800583, 30.681961, 27.349928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157642, 30.832558, 27.250786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206049, -0.148231, -0.967249,
		-0.400899, 0.914485, -0.054743,
		0.892650, 0.376489, -0.247855,
		32.425438, 30.945505, 27.176430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718504, 30.964268, 26.724350>,  <31.800583, 30.681961, 27.349928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718504, 30.964268, 26.724350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118484, 30.968052, 26.725735>,  <32.358471, 30.970322, 26.726566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.118484, 30.968052, 26.725735>,  <31.718504, 30.964268, 26.724350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118484, 30.968052, 26.725735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006221, -0.309557, -0.950861,
		-0.007924, 0.950834, -0.309600,
		0.999949, 0.009461, 0.003463,
		32.418468, 30.970890, 26.726774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928267, 31.485718, 26.189926>,  <31.718504, 30.964268, 26.724350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928267, 31.485718, 26.189926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.237915, 31.239244, 26.247969>,  <32.423706, 31.091360, 26.282793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.237915, 31.239244, 26.247969>,  <31.928267, 31.485718, 26.189926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237915, 31.239244, 26.247969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030293, -0.265016, -0.963768,
		0.632311, 0.741679, -0.223821,
		0.774122, -0.616181, 0.145105,
		32.470150, 31.054390, 26.291500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303867, 31.584539, 25.574974>,  <31.928267, 31.485718, 26.189926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303867, 31.584539, 25.574974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474182, 31.251894, 25.717590>,  <32.576370, 31.052307, 25.803160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.474182, 31.251894, 25.717590>,  <32.303867, 31.584539, 25.574974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474182, 31.251894, 25.717590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134604, -0.331441, -0.933825,
		0.894754, 0.445604, -0.029186,
		0.425789, -0.831615, 0.356539,
		32.601917, 31.002409, 25.824553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916088, 31.582706, 25.305540>,  <32.303867, 31.584539, 25.574974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916088, 31.582706, 25.305540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.798405, 31.207319, 25.377893>,  <32.727795, 30.982086, 25.421305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.798405, 31.207319, 25.377893>,  <32.916088, 31.582706, 25.305540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798405, 31.207319, 25.377893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111819, -0.221758, -0.968669,
		0.949177, -0.264767, 0.170182,
		-0.294211, -0.938468, 0.180882,
		32.710140, 30.925779, 25.432158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464294, 31.210531, 24.969845>,  <32.916088, 31.582706, 25.305540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464294, 31.210531, 24.969845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.131332, 30.991064, 25.001017>,  <32.931557, 30.859385, 25.019720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.131332, 30.991064, 25.001017>,  <33.464294, 31.210531, 24.969845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131332, 30.991064, 25.001017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017252, -0.114897, -0.993228,
		0.553906, -0.828108, 0.086174,
		-0.832400, -0.548668, 0.077929,
		32.881611, 30.826464, 25.024395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555885, 30.672365, 24.589350>,  <33.464294, 31.210531, 24.969845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555885, 30.672365, 24.589350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.159203, 30.719658, 24.609509>,  <32.921192, 30.748034, 24.621605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.159203, 30.719658, 24.609509>,  <33.555885, 30.672365, 24.589350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159203, 30.719658, 24.609509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081154, -0.271965, -0.958879,
		-0.099662, -0.955017, 0.279304,
		-0.991706, 0.118230, 0.050398,
		32.861691, 30.755127, 24.624628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779556, 29.979162, 24.921186>,  <33.555885, 30.672365, 24.589350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779556, 29.979162, 24.921186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.121017, 29.771994, 24.899126>,  <34.325893, 29.647694, 24.885891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.121017, 29.771994, 24.899126>,  <33.779556, 29.979162, 24.921186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121017, 29.771994, 24.899126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210050, 0.245437, 0.946382,
		-0.476614, -0.819463, 0.318307,
		0.853649, -0.517919, -0.055149,
		34.377113, 29.616617, 24.882582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827442, 29.393650, 25.493746>,  <33.779556, 29.979162, 24.921186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827442, 29.393650, 25.493746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207905, 29.452803, 25.385359>,  <34.436184, 29.488295, 25.320326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.207905, 29.452803, 25.385359>,  <33.827442, 29.393650, 25.493746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207905, 29.452803, 25.385359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231218, 0.240284, 0.942763,
		0.204524, -0.959373, 0.194356,
		0.951162, 0.147879, -0.270968,
		34.493252, 29.497168, 25.304068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308655, 29.092007, 26.055254>,  <33.827442, 29.393650, 25.493746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308655, 29.092007, 26.055254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.544037, 29.345396, 25.854286>,  <34.685268, 29.497431, 25.733706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.544037, 29.345396, 25.854286>,  <34.308655, 29.092007, 26.055254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544037, 29.345396, 25.854286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417042, 0.294544, 0.859837,
		0.692670, -0.715508, -0.090859,
		0.588458, 0.633476, -0.502420,
		34.720573, 29.535439, 25.703560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988205, 29.008280, 26.333662>,  <34.308655, 29.092007, 26.055254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988205, 29.008280, 26.333662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993294, 29.378506, 26.182312>,  <34.996346, 29.600641, 26.091501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.993294, 29.378506, 26.182312>,  <34.988205, 29.008280, 26.333662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993294, 29.378506, 26.182312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603555, 0.294591, 0.740903,
		0.797220, -0.237793, -0.554882,
		0.012719, 0.925565, -0.378375,
		34.997108, 29.656176, 26.068800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545937, 29.228455, 26.611568>,  <34.988205, 29.008280, 26.333662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545937, 29.228455, 26.611568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398079, 29.568546, 26.461647>,  <35.309364, 29.772602, 26.371695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.398079, 29.568546, 26.461647>,  <35.545937, 29.228455, 26.611568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398079, 29.568546, 26.461647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484253, 0.520535, 0.703237,
		0.793010, 0.078446, -0.604137,
		-0.369641, 0.850229, -0.374802,
		35.287186, 29.823614, 26.349207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061157, 29.714834, 26.519682>,  <35.545937, 29.228455, 26.611568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061157, 29.714834, 26.519682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.732815, 29.941914, 26.544704>,  <35.535809, 30.078161, 26.559717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.732815, 29.941914, 26.544704>,  <36.061157, 29.714834, 26.519682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732815, 29.941914, 26.544704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432255, 0.545930, 0.717716,
		0.373295, 0.616183, -0.693520,
		-0.820858, 0.567697, 0.062555,
		35.486557, 30.112223, 26.563471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304596, 30.432711, 26.565742>,  <36.061157, 29.714834, 26.519682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304596, 30.432711, 26.565742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930813, 30.424034, 26.707911>,  <35.706543, 30.418829, 26.793211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.930813, 30.424034, 26.707911>,  <36.304596, 30.432711, 26.565742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930813, 30.424034, 26.707911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266396, 0.619729, 0.738220,
		-0.236276, 0.784516, -0.573331,
		-0.934455, -0.021691, 0.355419,
		35.650475, 30.417526, 26.814537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268150, 31.045029, 26.833860>,  <36.304596, 30.432711, 26.565742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268150, 31.045029, 26.833860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954754, 30.853291, 26.992035>,  <35.766716, 30.738247, 27.086939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954754, 30.853291, 26.992035>,  <36.268150, 31.045029, 26.833860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954754, 30.853291, 26.992035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037710, 0.598510, 0.800228,
		-0.620258, 0.641883, -0.450850,
		-0.783491, -0.479346, 0.395436,
		35.719707, 30.709486, 27.110666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926224, 31.537767, 27.167866>,  <36.268150, 31.045029, 26.833860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926224, 31.537767, 27.167866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775143, 31.201679, 27.323492>,  <35.684494, 31.000027, 27.416868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775143, 31.201679, 27.323492>,  <35.926224, 31.537767, 27.167866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775143, 31.201679, 27.323492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019144, 0.427186, 0.903961,
		-0.925728, 0.333983, -0.177436,
		-0.377706, -0.840219, 0.389064,
		35.661831, 30.949614, 27.440210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361561, 31.685326, 27.598013>,  <35.926224, 31.537767, 27.167866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361561, 31.685326, 27.598013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503571, 31.336481, 27.732702>,  <35.588776, 31.127174, 27.813515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503571, 31.336481, 27.732702>,  <35.361561, 31.685326, 27.598013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503571, 31.336481, 27.732702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317471, 0.451252, 0.834017,
		-0.879301, -0.189196, 0.437075,
		0.355024, -0.872110, 0.336722,
		35.610077, 31.074848, 27.833719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161858, 31.620901, 28.301723>,  <35.361561, 31.685326, 27.598013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161858, 31.620901, 28.301723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458195, 31.352253, 28.298178>,  <35.635998, 31.191065, 28.296051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.458195, 31.352253, 28.298178>,  <35.161858, 31.620901, 28.301723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458195, 31.352253, 28.298178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294978, 0.313470, 0.902621,
		-0.603439, -0.671315, 0.430345,
		0.740843, -0.671619, -0.008863,
		35.680447, 31.150766, 28.295519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192810, 31.503340, 29.004784>,  <35.161858, 31.620901, 28.301723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192810, 31.503340, 29.004784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529343, 31.370562, 28.834152>,  <35.731262, 31.290895, 28.731773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.529343, 31.370562, 28.834152>,  <35.192810, 31.503340, 29.004784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529343, 31.370562, 28.834152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530704, 0.357621, 0.768414,
		-0.102518, -0.872880, 0.477044,
		0.841334, -0.331945, -0.426578,
		35.781742, 31.270979, 28.706179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580227, 31.181255, 29.529816>,  <35.192810, 31.503340, 29.004784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580227, 31.181255, 29.529816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864838, 31.214689, 29.250750>,  <36.035606, 31.234751, 29.083309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864838, 31.214689, 29.250750>,  <35.580227, 31.181255, 29.529816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864838, 31.214689, 29.250750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597316, 0.450956, 0.663213,
		0.370053, -0.888624, 0.270941,
		0.711529, 0.083587, -0.697667,
		36.078297, 31.239765, 29.041449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267166, 30.924509, 29.747473>,  <35.580227, 31.181255, 29.529816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267166, 30.924509, 29.747473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376205, 31.171284, 29.452154>,  <36.441631, 31.319347, 29.274963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376205, 31.171284, 29.452154>,  <36.267166, 30.924509, 29.747473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376205, 31.171284, 29.452154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713741, 0.384905, 0.585169,
		0.645184, -0.686469, -0.335406,
		0.272601, 0.616935, -0.738296,
		36.457985, 31.356363, 29.230665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.046589, 31.820326, 22.204258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683315, 31.935261, 22.326008>,  <37.465351, 32.004223, 22.399057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683315, 31.935261, 22.326008>,  <38.046589, 31.820326, 22.204258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683315, 31.935261, 22.326008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417533, -0.673240, -0.610258,
		0.029569, -0.681312, 0.731396,
		-0.908181, 0.287337, 0.304377,
		37.410862, 32.021461, 22.417320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740738, 31.233158, 22.396320>,  <38.046589, 31.820326, 22.204258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740738, 31.233158, 22.396320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.409840, 31.456242, 22.369144>,  <37.211300, 31.590092, 22.352839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.409840, 31.456242, 22.369144>,  <37.740738, 31.233158, 22.396320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409840, 31.456242, 22.369144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363791, -0.623871, -0.691695,
		-0.428150, -0.547490, 0.718987,
		-0.827251, 0.557710, -0.067938,
		37.161663, 31.623554, 22.348763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146275, 30.763084, 22.505083>,  <37.740738, 31.233158, 22.396320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146275, 30.763084, 22.505083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018505, 31.087139, 22.308453>,  <36.941845, 31.281572, 22.190474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018505, 31.087139, 22.308453>,  <37.146275, 30.763084, 22.505083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018505, 31.087139, 22.308453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529069, -0.582837, -0.616756,
		-0.786167, 0.063074, 0.614788,
		-0.319420, 0.810138, -0.491578,
		36.922680, 31.330181, 22.160980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385494, 30.585678, 22.299221>,  <37.146275, 30.763084, 22.505083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385494, 30.585678, 22.299221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518101, 30.879368, 22.062235>,  <36.597664, 31.055582, 21.920044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518101, 30.879368, 22.062235>,  <36.385494, 30.585678, 22.299221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518101, 30.879368, 22.062235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458820, -0.423246, -0.781248,
		-0.824368, 0.530830, 0.196563,
		0.331515, 0.734222, -0.592465,
		36.617554, 31.099634, 21.884495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767433, 30.879223, 21.947765>,  <36.385494, 30.585678, 22.299221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767433, 30.879223, 21.947765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076260, 30.958729, 21.706301>,  <36.261555, 31.006433, 21.561422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.076260, 30.958729, 21.706301>,  <35.767433, 30.879223, 21.947765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076260, 30.958729, 21.706301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596851, -0.099601, -0.796146,
		-0.218373, 0.974973, 0.041736,
		0.772063, 0.198767, -0.603664,
		36.307880, 31.018358, 21.525202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522770, 31.300758, 21.446665>,  <35.767433, 30.879223, 21.947765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522770, 31.300758, 21.446665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867020, 31.196955, 21.271400>,  <36.073570, 31.134672, 21.166243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867020, 31.196955, 21.271400>,  <35.522770, 31.300758, 21.446665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867020, 31.196955, 21.271400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479183, -0.121430, -0.869275,
		0.172378, 0.958076, -0.228858,
		0.860622, -0.259509, -0.438162,
		36.125206, 31.119102, 21.139952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485340, 31.571398, 20.859303>,  <35.522770, 31.300758, 21.446665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485340, 31.571398, 20.859303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747238, 31.271692, 20.819469>,  <35.904377, 31.091869, 20.795570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.747238, 31.271692, 20.819469>,  <35.485340, 31.571398, 20.859303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747238, 31.271692, 20.819469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431708, -0.262555, -0.862956,
		0.620434, 0.608006, -0.495369,
		0.654744, -0.749262, -0.099583,
		35.943661, 31.046913, 20.789595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676785, 31.556082, 20.071510>,  <35.485340, 31.571398, 20.859303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676785, 31.556082, 20.071510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799576, 31.204821, 20.218269>,  <35.873253, 30.994064, 20.306324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799576, 31.204821, 20.218269>,  <35.676785, 31.556082, 20.071510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799576, 31.204821, 20.218269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324061, -0.458923, -0.827269,
		0.894845, 0.135059, -0.425455,
		0.306981, -0.878151, 0.366897,
		35.891670, 30.941376, 20.328339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933868, 31.107922, 19.435524>,  <35.676785, 31.556082, 20.071510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933868, 31.107922, 19.435524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842087, 30.834000, 19.712187>,  <35.787018, 30.669645, 19.878185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.842087, 30.834000, 19.712187>,  <35.933868, 31.107922, 19.435524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842087, 30.834000, 19.712187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298063, -0.627040, -0.719708,
		0.926558, -0.371298, -0.060239,
		-0.229454, -0.684806, 0.691658,
		35.773251, 30.628557, 19.919683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991535, 30.562956, 19.047218>,  <35.933868, 31.107922, 19.435524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991535, 30.562956, 19.047218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798370, 30.413267, 19.363890>,  <35.682472, 30.323454, 19.553892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798370, 30.413267, 19.363890>,  <35.991535, 30.562956, 19.047218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798370, 30.413267, 19.363890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426309, -0.689238, -0.585843,
		0.764890, -0.620410, 0.173307,
		-0.482912, -0.374223, 0.791677,
		35.653496, 30.301001, 19.601393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201199, 29.876415, 19.053823>,  <35.991535, 30.562956, 19.047218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201199, 29.876415, 19.053823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.853809, 29.911369, 19.249010>,  <35.645374, 29.932343, 19.366123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.853809, 29.911369, 19.249010>,  <36.201199, 29.876415, 19.053823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853809, 29.911369, 19.249010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426658, -0.632956, -0.646011,
		0.252411, -0.769241, 0.586991,
		-0.868477, 0.087385, 0.487968,
		35.593266, 29.937584, 19.395401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988750, 29.275213, 19.273676>,  <36.201199, 29.876415, 19.053823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988750, 29.275213, 19.273676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660374, 29.501173, 19.240351>,  <35.463348, 29.636749, 19.220356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660374, 29.501173, 19.240351>,  <35.988750, 29.275213, 19.273676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660374, 29.501173, 19.240351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330637, -0.589223, -0.737221,
		-0.465545, -0.577670, 0.670496,
		-0.820942, 0.564901, -0.083311,
		35.414093, 29.670643, 19.215357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516956, 28.795498, 19.305105>,  <35.988750, 29.275213, 19.273676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516956, 28.795498, 19.305105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369526, 29.124210, 19.131289>,  <35.281067, 29.321438, 19.026999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369526, 29.124210, 19.131289>,  <35.516956, 28.795498, 19.305105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369526, 29.124210, 19.131289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376076, -0.559305, -0.738745,
		-0.850129, -0.108863, 0.515199,
		-0.368575, 0.821783, -0.434540,
		35.258953, 29.370745, 19.000927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813751, 28.722116, 19.218935>,  <35.516956, 28.795498, 19.305105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813751, 28.722116, 19.218935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981449, 28.946169, 18.933144>,  <35.082069, 29.080601, 18.761669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.981449, 28.946169, 18.933144>,  <34.813751, 28.722116, 19.218935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981449, 28.946169, 18.933144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241948, -0.689589, -0.682590,
		-0.875038, 0.459042, -0.153586,
		0.419248, 0.560132, -0.714481,
		35.107224, 29.114208, 18.718800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187637, 28.365770, 19.433029>,  <34.813751, 28.722116, 19.218935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187637, 28.365770, 19.433029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815811, 28.227978, 19.485542>,  <33.592716, 28.145302, 19.517050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815811, 28.227978, 19.485542>,  <34.187637, 28.365770, 19.433029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815811, 28.227978, 19.485542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079546, 0.160295, 0.983859,
		-0.359964, 0.925007, -0.121603,
		-0.929569, -0.344481, 0.131281,
		33.536942, 28.124634, 19.524927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939957, 28.872341, 19.819031>,  <34.187637, 28.365770, 19.433029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939957, 28.872341, 19.819031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697937, 28.556681, 19.861286>,  <33.552727, 28.367285, 19.886639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697937, 28.556681, 19.861286>,  <33.939957, 28.872341, 19.819031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697937, 28.556681, 19.861286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015128, 0.121260, 0.992506,
		-0.796047, 0.602110, -0.061430,
		-0.605046, -0.789151, 0.105637,
		33.516422, 28.319935, 19.892977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379883, 29.056444, 20.203156>,  <33.939957, 28.872341, 19.819031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379883, 29.056444, 20.203156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464073, 28.667450, 20.243095>,  <33.514587, 28.434053, 20.267059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464073, 28.667450, 20.243095>,  <33.379883, 29.056444, 20.203156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464073, 28.667450, 20.243095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062431, 0.115302, 0.991367,
		-0.975604, -0.202423, 0.084982,
		0.210474, -0.972487, 0.099851,
		33.527214, 28.375704, 20.273050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005722, 28.890059, 20.812922>,  <33.379883, 29.056444, 20.203156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005722, 28.890059, 20.812922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.247288, 28.577602, 20.749535>,  <33.392227, 28.390129, 20.711502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.247288, 28.577602, 20.749535>,  <33.005722, 28.890059, 20.812922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247288, 28.577602, 20.749535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165292, -0.071758, 0.983631,
		-0.779723, -0.620220, 0.085780,
		0.603912, -0.781138, -0.158469,
		33.428463, 28.343262, 20.701994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749161, 28.272829, 21.230383>,  <33.005722, 28.890059, 20.812922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749161, 28.272829, 21.230383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140953, 28.245735, 21.154451>,  <33.376026, 28.229479, 21.108892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140953, 28.245735, 21.154451>,  <32.749161, 28.272829, 21.230383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140953, 28.245735, 21.154451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190556, 0.004355, 0.981667,
		-0.065668, -0.997694, 0.017173,
		0.979477, -0.067736, -0.189831,
		33.434795, 28.225414, 21.097502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920017, 28.001625, 21.806164>,  <32.749161, 28.272829, 21.230383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920017, 28.001625, 21.806164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273533, 28.118778, 21.660217>,  <33.485641, 28.189070, 21.572649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.273533, 28.118778, 21.660217>,  <32.920017, 28.001625, 21.806164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273533, 28.118778, 21.660217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314460, 0.205608, 0.926736,
		0.346448, -0.933779, 0.089614,
		0.883792, 0.292886, -0.364868,
		33.538670, 28.206644, 21.550756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394165, 27.692846, 22.259903>,  <32.920017, 28.001625, 21.806164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394165, 27.692846, 22.259903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619038, 27.967928, 22.076157>,  <33.753963, 28.132977, 21.965910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619038, 27.967928, 22.076157>,  <33.394165, 27.692846, 22.259903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619038, 27.967928, 22.076157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438813, 0.222764, 0.870528,
		0.700994, -0.690972, -0.176538,
		0.562184, 0.687702, -0.459364,
		33.787693, 28.174238, 21.938347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874035, 27.677349, 22.661968>,  <33.394165, 27.692846, 22.259903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874035, 27.677349, 22.661968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928375, 28.018341, 22.460049>,  <33.960979, 28.222937, 22.338898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.928375, 28.018341, 22.460049>,  <33.874035, 27.677349, 22.661968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928375, 28.018341, 22.460049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390999, 0.422031, 0.817930,
		0.910311, -0.308488, -0.275988,
		0.135846, 0.852481, -0.504798,
		33.969128, 28.274086, 22.308609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590076, 27.789316, 22.673138>,  <33.874035, 27.677349, 22.661968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590076, 27.789316, 22.673138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400749, 28.140238, 22.641380>,  <34.287151, 28.350792, 22.622326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.400749, 28.140238, 22.641380>,  <34.590076, 27.789316, 22.673138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400749, 28.140238, 22.641380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326502, 0.258431, 0.909181,
		0.818148, 0.404411, -0.408762,
		-0.473319, 0.877306, -0.079394,
		34.258755, 28.403429, 22.617561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971272, 28.194826, 23.104246>,  <34.590076, 27.789316, 22.673138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971272, 28.194826, 23.104246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669506, 28.442368, 23.016718>,  <34.488445, 28.590893, 22.964201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669506, 28.442368, 23.016718>,  <34.971272, 28.194826, 23.104246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669506, 28.442368, 23.016718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175143, 0.511061, 0.841512,
		0.632603, 0.596522, -0.493938,
		-0.754412, 0.618853, -0.218822,
		34.443184, 28.628023, 22.951071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299946, 28.868984, 23.221754>,  <34.971272, 28.194826, 23.104246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299946, 28.868984, 23.221754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902836, 28.892565, 23.263577>,  <34.664570, 28.906713, 23.288670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.902836, 28.892565, 23.263577>,  <35.299946, 28.868984, 23.221754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902836, 28.892565, 23.263577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118592, 0.616179, 0.778627,
		-0.018525, 0.785397, -0.618715,
		-0.992770, 0.058950, 0.104557,
		34.605003, 28.910250, 23.294943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141167, 29.652832, 23.294151>,  <35.299946, 28.868984, 23.221754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141167, 29.652832, 23.294151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.850731, 29.422155, 23.443932>,  <34.676468, 29.283749, 23.533800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.850731, 29.422155, 23.443932>,  <35.141167, 29.652832, 23.294151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850731, 29.422155, 23.443932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075295, 0.474620, 0.876964,
		-0.683460, 0.664953, -0.301197,
		-0.726094, -0.576692, 0.374451,
		34.632904, 29.249147, 23.556267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710503, 30.099150, 23.770376>,  <35.141167, 29.652832, 23.294151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710503, 30.099150, 23.770376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652264, 29.719599, 23.882401>,  <34.617321, 29.491869, 23.949615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.652264, 29.719599, 23.882401>,  <34.710503, 30.099150, 23.770376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652264, 29.719599, 23.882401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013862, 0.285009, 0.958425,
		-0.989246, 0.135665, -0.054651,
		-0.145601, -0.948876, 0.280063,
		34.608585, 29.434937, 23.966419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003689, 30.075327, 24.218538>,  <34.710503, 30.099150, 23.770376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003689, 30.075327, 24.218538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244900, 29.769156, 24.308411>,  <34.389626, 29.585453, 24.362335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244900, 29.769156, 24.308411>,  <34.003689, 30.075327, 24.218538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244900, 29.769156, 24.308411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002828, 0.283705, 0.958908,
		-0.797718, -0.577609, 0.173245,
		0.603024, -0.765428, 0.224683,
		34.425808, 29.539528, 24.375816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363815, 30.272829, 24.003944>,  <34.003689, 30.075327, 24.218538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363815, 30.272829, 24.003944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024624, 30.460978, 24.101667>,  <32.821110, 30.573868, 24.160301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024624, 30.460978, 24.101667>,  <33.363815, 30.272829, 24.003944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024624, 30.460978, 24.101667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241588, 0.067260, -0.968045,
		-0.471775, -0.879900, 0.056602,
		-0.847976, 0.470374, 0.244305,
		32.770229, 30.602089, 24.174959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840511, 29.864672, 23.786209>,  <33.363815, 30.272829, 24.003944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840511, 29.864672, 23.786209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660465, 30.221857, 23.787594>,  <32.552437, 30.436169, 23.788425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.660465, 30.221857, 23.787594>,  <32.840511, 29.864672, 23.786209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660465, 30.221857, 23.787594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204952, -0.099534, -0.973698,
		-0.869132, -0.438986, 0.227816,
		-0.450115, 0.892964, 0.003463,
		32.525429, 30.489746, 23.788633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069458, 29.897038, 23.431135>,  <32.840511, 29.864672, 23.786209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069458, 29.897038, 23.431135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230797, 30.262812, 23.417747>,  <32.327599, 30.482277, 23.409716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.230797, 30.262812, 23.417747>,  <32.069458, 29.897038, 23.431135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230797, 30.262812, 23.417747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402049, 0.144244, -0.904185,
		-0.821991, 0.378155, 0.425828,
		0.403345, 0.914436, -0.033469,
		32.351799, 30.537142, 23.407707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465599, 30.258503, 23.248247>,  <32.069458, 29.897038, 23.431135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465599, 30.258503, 23.248247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794447, 30.461748, 23.145535>,  <31.991756, 30.583694, 23.083906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794447, 30.461748, 23.145535>,  <31.465599, 30.258503, 23.248247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794447, 30.461748, 23.145535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301430, 0.005857, -0.953470,
		-0.482967, 0.861271, 0.157976,
		0.822121, 0.508113, -0.256784,
		32.041084, 30.614182, 23.068499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216038, 30.819098, 22.900997>,  <31.465599, 30.258503, 23.248247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216038, 30.819098, 22.900997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.597317, 30.800140, 22.781551>,  <31.826084, 30.788765, 22.709883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.597317, 30.800140, 22.781551>,  <31.216038, 30.819098, 22.900997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597317, 30.800140, 22.781551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296203, 0.051825, -0.953718,
		0.060677, 0.997531, 0.035361,
		0.953196, -0.047394, -0.298616,
		31.883276, 30.785923, 22.691967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188618, 31.310644, 22.395374>,  <31.216038, 30.819098, 22.900997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188618, 31.310644, 22.395374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519438, 31.093348, 22.337582>,  <31.717930, 30.962969, 22.302906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519438, 31.093348, 22.337582>,  <31.188618, 31.310644, 22.395374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519438, 31.093348, 22.337582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154890, 0.026845, -0.987567,
		0.540367, 0.839147, -0.061941,
		0.827051, -0.543242, -0.144481,
		31.767553, 30.930374, 22.294237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522142, 31.600750, 21.803288>,  <31.188618, 31.310644, 22.395374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522142, 31.600750, 21.803288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675478, 31.233286, 21.841484>,  <31.767479, 31.012808, 21.864401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675478, 31.233286, 21.841484>,  <31.522142, 31.600750, 21.803288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675478, 31.233286, 21.841484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025297, -0.113793, -0.993182,
		0.923261, 0.378310, -0.066861,
		0.383339, -0.918658, 0.095490,
		31.790480, 30.957689, 21.870131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743700, 32.286430, 21.610310>,  <31.522142, 31.600750, 21.803288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743700, 32.286430, 21.610310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366030, 32.370174, 21.508566>,  <31.139427, 32.420422, 21.447519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366030, 32.370174, 21.508566>,  <31.743700, 32.286430, 21.610310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366030, 32.370174, 21.508566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187734, 0.292539, 0.937645,
		0.270714, 0.933054, -0.236905,
		-0.944177, 0.209359, -0.254360,
		31.082777, 32.432983, 21.432259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595917, 32.943829, 21.888876>,  <31.743700, 32.286430, 21.610310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595917, 32.943829, 21.888876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226048, 32.802143, 21.833002>,  <31.004126, 32.717133, 21.799479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226048, 32.802143, 21.833002>,  <31.595917, 32.943829, 21.888876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226048, 32.802143, 21.833002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261197, 0.323165, 0.909583,
		-0.277044, 0.877553, -0.391341,
		-0.924675, -0.354211, -0.139683,
		30.948645, 32.695881, 21.791098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159122, 33.415562, 22.198702>,  <31.595917, 32.943829, 21.888876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159122, 33.415562, 22.198702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910582, 33.102432, 22.185413>,  <30.761457, 32.914555, 22.177441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910582, 33.102432, 22.185413>,  <31.159122, 33.415562, 22.198702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910582, 33.102432, 22.185413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365715, 0.252259, 0.895889,
		-0.692946, 0.568811, -0.443034,
		-0.621351, -0.782827, -0.033221,
		30.724176, 32.867584, 22.175447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494368, 33.607639, 22.404799>,  <31.159122, 33.415562, 22.198702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494368, 33.607639, 22.404799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486139, 33.212482, 22.466295>,  <30.481201, 32.975388, 22.503193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486139, 33.212482, 22.466295>,  <30.494368, 33.607639, 22.404799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486139, 33.212482, 22.466295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550570, 0.139552, 0.823042,
		-0.834535, -0.067714, -0.546778,
		-0.020572, -0.987897, 0.153742,
		30.479967, 32.916115, 22.512419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857889, 33.528919, 22.637325>,  <30.494368, 33.607639, 22.404799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857889, 33.528919, 22.637325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.056784, 33.193775, 22.727436>,  <30.176121, 32.992691, 22.781504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.056784, 33.193775, 22.727436>,  <29.857889, 33.528919, 22.637325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056784, 33.193775, 22.727436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442003, -0.021196, 0.896763,
		-0.746584, -0.545478, -0.380875,
		0.497237, -0.837857, 0.225279,
		30.205956, 32.942417, 22.795019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276260, 33.060184, 22.932003>,  <29.857889, 33.528919, 22.637325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276260, 33.060184, 22.932003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644367, 32.969002, 23.059212>,  <29.865232, 32.914291, 23.135538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.644367, 32.969002, 23.059212>,  <29.276260, 33.060184, 22.932003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644367, 32.969002, 23.059212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340801, -0.067635, 0.937699,
		-0.192250, -0.971318, -0.139933,
		0.920268, -0.227962, 0.318024,
		29.920448, 32.900616, 23.154619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162912, 32.701313, 23.513826>,  <29.276260, 33.060184, 22.932003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162912, 32.701313, 23.513826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.552570, 32.789242, 23.534704>,  <29.786366, 32.841999, 23.547232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.552570, 32.789242, 23.534704>,  <29.162912, 32.701313, 23.513826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552570, 32.789242, 23.534704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060976, 0.033347, 0.997582,
		0.217548, -0.974970, 0.045888,
		0.974143, 0.219820, 0.052196,
		29.844814, 32.855186, 23.550364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.861576, 32.467030, 18.551039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.988506, 32.148598, 18.757170>,  <34.064663, 31.957539, 18.880848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.988506, 32.148598, 18.757170>,  <33.861576, 32.467030, 18.551039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988506, 32.148598, 18.757170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239136, 0.593024, 0.768854,
		-0.917670, -0.120744, 0.378554,
		0.317326, -0.796080, 0.515326,
		34.083706, 31.909773, 18.911768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521351, 32.511654, 19.147238>,  <33.861576, 32.467030, 18.551039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521351, 32.511654, 19.147238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835175, 32.283840, 19.245304>,  <34.023468, 32.147152, 19.304144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.835175, 32.283840, 19.245304>,  <33.521351, 32.511654, 19.147238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835175, 32.283840, 19.245304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147235, 0.555194, 0.818585,
		-0.602325, -0.606128, 0.519435,
		0.784555, -0.569534, 0.245164,
		34.070541, 32.112980, 19.318853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473965, 32.435089, 19.907745>,  <33.521351, 32.511654, 19.147238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473965, 32.435089, 19.907745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.847401, 32.357029, 19.787521>,  <34.071461, 32.310192, 19.715387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.847401, 32.357029, 19.787521>,  <33.473965, 32.435089, 19.907745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847401, 32.357029, 19.787521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355761, 0.605464, 0.711932,
		0.043043, -0.771576, 0.634679,
		0.933585, -0.195150, -0.300558,
		34.127476, 32.298485, 19.697353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830376, 32.165253, 20.455564>,  <33.473965, 32.435089, 19.907745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830376, 32.165253, 20.455564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.124226, 32.283710, 20.211391>,  <34.300533, 32.354786, 20.064888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.124226, 32.283710, 20.211391>,  <33.830376, 32.165253, 20.455564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124226, 32.283710, 20.211391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480124, 0.408788, 0.776127,
		0.479385, -0.863243, 0.158117,
		0.734623, 0.296148, -0.610431,
		34.344612, 32.372555, 20.028263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464809, 32.112885, 20.857660>,  <33.830376, 32.165253, 20.455564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464809, 32.112885, 20.857660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.546017, 32.346771, 20.543491>,  <34.594742, 32.487103, 20.354990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.546017, 32.346771, 20.543491>,  <34.464809, 32.112885, 20.857660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546017, 32.346771, 20.543491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398971, 0.683126, 0.611687,
		0.894207, -0.437545, -0.094598,
		0.203018, 0.584717, -0.785423,
		34.606922, 32.522186, 20.307865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112190, 32.294853, 20.942444>,  <34.464809, 32.112885, 20.857660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112190, 32.294853, 20.942444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.011406, 32.584736, 20.685909>,  <34.950935, 32.758667, 20.531988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.011406, 32.584736, 20.685909>,  <35.112190, 32.294853, 20.942444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011406, 32.584736, 20.685909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511124, 0.662401, 0.547702,
		0.821746, -0.189801, -0.537317,
		-0.251964, 0.724708, -0.641337,
		34.935818, 32.802147, 20.493507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797840, 32.688614, 20.785933>,  <35.112190, 32.294853, 20.942444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797840, 32.688614, 20.785933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496876, 32.932865, 20.687126>,  <35.316299, 33.079414, 20.627842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.496876, 32.932865, 20.687126>,  <35.797840, 32.688614, 20.785933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496876, 32.932865, 20.687126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495631, 0.771828, 0.398286,
		0.433857, 0.177246, -0.883375,
		-0.752408, 0.610627, -0.247014,
		35.271152, 33.116055, 20.613022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161629, 33.353745, 20.697477>,  <35.797840, 32.688614, 20.785933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161629, 33.353745, 20.697477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.779121, 33.470146, 20.709211>,  <35.549618, 33.539986, 20.716251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.779121, 33.470146, 20.709211>,  <36.161629, 33.353745, 20.697477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779121, 33.470146, 20.709211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249282, 0.758474, 0.602142,
		0.152973, 0.583125, -0.797850,
		-0.956273, 0.291001, 0.029336,
		35.492241, 33.557446, 20.718012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137806, 34.078114, 20.552458>,  <36.161629, 33.353745, 20.697477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137806, 34.078114, 20.552458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.799126, 33.994511, 20.748180>,  <35.595917, 33.944351, 20.865614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.799126, 33.994511, 20.748180>,  <36.137806, 34.078114, 20.552458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799126, 33.994511, 20.748180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164287, 0.771991, 0.614035,
		-0.506077, 0.600289, -0.619306,
		-0.846697, -0.209005, 0.489306,
		35.545116, 33.931808, 20.894972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772175, 34.779884, 20.701653>,  <36.137806, 34.078114, 20.552458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772175, 34.779884, 20.701653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.639069, 34.503151, 20.957973>,  <35.559204, 34.337112, 21.111767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.639069, 34.503151, 20.957973>,  <35.772175, 34.779884, 20.701653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639069, 34.503151, 20.957973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219965, 0.603839, 0.766155,
		-0.916995, 0.395907, -0.048760,
		-0.332769, -0.691835, 0.640803,
		35.539238, 34.295601, 21.150215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554668, 35.217304, 21.258575>,  <35.772175, 34.779884, 20.701653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554668, 35.217304, 21.258575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.551338, 34.852760, 21.423189>,  <35.549339, 34.634033, 21.521957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.551338, 34.852760, 21.423189>,  <35.554668, 35.217304, 21.258575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551338, 34.852760, 21.423189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210030, 0.400776, 0.891777,
		-0.977660, 0.093857, 0.188076,
		-0.008323, -0.911356, 0.411535,
		35.548840, 34.579353, 21.546650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988369, 35.115223, 21.803961>,  <35.554668, 35.217304, 21.258575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988369, 35.115223, 21.803961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301853, 34.876678, 21.873413>,  <35.489944, 34.733551, 21.915085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301853, 34.876678, 21.873413>,  <34.988369, 35.115223, 21.803961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301853, 34.876678, 21.873413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143925, 0.446295, 0.883236,
		-0.604221, -0.667212, 0.435597,
		0.783710, -0.596363, 0.173633,
		35.536968, 34.697769, 21.925503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265892, 34.783913, 21.890228>,  <34.988369, 35.115223, 21.803961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265892, 34.783913, 21.890228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.894680, 34.909225, 21.970831>,  <33.671951, 34.984413, 22.019194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.894680, 34.909225, 21.970831>,  <34.265892, 34.783913, 21.890228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894680, 34.909225, 21.970831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294059, -0.284093, -0.912590,
		-0.228650, -0.906170, 0.355772,
		-0.928034, 0.313282, 0.201509,
		33.616268, 35.003212, 22.031284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878349, 34.319450, 21.581272>,  <34.265892, 34.783913, 21.890228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878349, 34.319450, 21.581272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.625286, 34.625328, 21.630228>,  <33.473446, 34.808857, 21.659601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.625286, 34.625328, 21.630228>,  <33.878349, 34.319450, 21.581272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625286, 34.625328, 21.630228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390057, -0.178120, -0.903398,
		-0.669027, -0.619282, 0.410965,
		-0.632660, 0.764698, 0.122388,
		33.435490, 34.854736, 21.666945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192589, 34.037685, 21.401945>,  <33.878349, 34.319450, 21.581272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192589, 34.037685, 21.401945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.181705, 34.437012, 21.381479>,  <33.175175, 34.676609, 21.369200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.181705, 34.437012, 21.381479>,  <33.192589, 34.037685, 21.401945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181705, 34.437012, 21.381479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315975, -0.057149, -0.947045,
		-0.948377, -0.009599, 0.316999,
		-0.027207, 0.998319, -0.051166,
		33.173542, 34.736507, 21.366129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632584, 34.121632, 21.109850>,  <33.192589, 34.037685, 21.401945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632584, 34.121632, 21.109850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.799217, 34.473232, 21.017067>,  <32.899197, 34.684193, 20.961397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.799217, 34.473232, 21.017067>,  <32.632584, 34.121632, 21.109850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799217, 34.473232, 21.017067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275840, -0.120907, -0.953569,
		-0.866238, 0.461227, 0.192097,
		0.416586, 0.879005, -0.231959,
		32.924194, 34.736935, 20.947479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115963, 34.516930, 20.732351>,  <32.632584, 34.121632, 21.109850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115963, 34.516930, 20.732351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.470394, 34.680241, 20.644556>,  <32.683052, 34.778229, 20.591879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.470394, 34.680241, 20.644556>,  <32.115963, 34.516930, 20.732351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470394, 34.680241, 20.644556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213634, -0.060534, -0.975037,
		-0.411373, 0.910848, 0.033584,
		0.886077, 0.408279, -0.219490,
		32.736217, 34.802723, 20.578709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998684, 35.167324, 20.379833>,  <32.115963, 34.516930, 20.732351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998684, 35.167324, 20.379833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.372578, 35.065517, 20.280643>,  <32.596912, 35.004433, 20.221130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.372578, 35.065517, 20.280643>,  <31.998684, 35.167324, 20.379833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372578, 35.065517, 20.280643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264908, -0.033994, -0.963674,
		0.236840, 0.966471, -0.099198,
		0.934736, -0.254515, -0.247975,
		32.653000, 34.989162, 20.206251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185783, 35.568859, 19.806398>,  <31.998684, 35.167324, 20.379833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185783, 35.568859, 19.806398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.472130, 35.289593, 19.802353>,  <32.643936, 35.122032, 19.799925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.472130, 35.289593, 19.802353>,  <32.185783, 35.568859, 19.806398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472130, 35.289593, 19.802353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054882, -0.041819, -0.997617,
		0.696079, 0.714714, -0.068254,
		0.715865, -0.698166, -0.010116,
		32.686890, 35.080143, 19.799318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609444, 35.781147, 19.309164>,  <32.185783, 35.568859, 19.806398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609444, 35.781147, 19.309164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698910, 35.392128, 19.334873>,  <32.752590, 35.158718, 19.350298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698910, 35.392128, 19.334873>,  <32.609444, 35.781147, 19.309164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698910, 35.392128, 19.334873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150992, -0.099719, -0.983492,
		0.962899, 0.210269, -0.169150,
		0.223665, -0.972545, 0.064271,
		32.766010, 35.100365, 19.354155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086735, 35.602692, 18.700403>,  <32.609444, 35.781147, 19.309164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086735, 35.602692, 18.700403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.912197, 35.264240, 18.822821>,  <32.807476, 35.061169, 18.896271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.912197, 35.264240, 18.822821>,  <33.086735, 35.602692, 18.700403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912197, 35.264240, 18.822821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338872, -0.160552, -0.927033,
		0.833529, -0.508214, -0.216675,
		-0.436344, -0.846133, 0.306044,
		32.781296, 35.010399, 18.914635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321518, 35.036480, 18.257856>,  <33.086735, 35.602692, 18.700403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321518, 35.036480, 18.257856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970409, 34.915779, 18.406702>,  <32.759747, 34.843357, 18.496010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970409, 34.915779, 18.406702>,  <33.321518, 35.036480, 18.257856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970409, 34.915779, 18.406702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346836, -0.135567, -0.928077,
		0.330499, -0.943698, 0.014336,
		-0.877767, -0.301756, 0.372113,
		32.707081, 34.825253, 18.518335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202908, 34.647995, 17.802652>,  <33.321518, 35.036480, 18.257856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202908, 34.647995, 17.802652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849861, 34.630096, 17.989836>,  <32.638035, 34.619358, 18.102146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.849861, 34.630096, 17.989836>,  <33.202908, 34.647995, 17.802652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849861, 34.630096, 17.989836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456819, -0.153246, -0.876260,
		0.110922, -0.987175, 0.114816,
		-0.882617, -0.044746, 0.467958,
		32.585075, 34.616673, 18.130222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922829, 33.931503, 17.720682>,  <33.202908, 34.647995, 17.802652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922829, 33.931503, 17.720682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614647, 34.176647, 17.790890>,  <32.429737, 34.323734, 17.833014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.614647, 34.176647, 17.790890>,  <32.922829, 33.931503, 17.720682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614647, 34.176647, 17.790890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347104, -0.172348, -0.921854,
		-0.534718, -0.771166, 0.345512,
		-0.770451, 0.612861, 0.175517,
		32.383511, 34.360504, 17.843544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229023, 33.533012, 17.555483>,  <32.922829, 33.931503, 17.720682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229023, 33.533012, 17.555483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166302, 33.927460, 17.533625>,  <32.128670, 34.164127, 17.520510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.166302, 33.927460, 17.533625>,  <32.229023, 33.533012, 17.555483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166302, 33.927460, 17.533625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459767, -0.121853, -0.879640,
		-0.874086, -0.112810, 0.472491,
		-0.156807, 0.986116, -0.054644,
		32.119259, 34.223293, 17.517231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989939, 33.279686, 18.178886>,  <32.229023, 33.533012, 17.555483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989939, 33.279686, 18.178886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746368, 32.963512, 18.152271>,  <31.600225, 32.773808, 18.136303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746368, 32.963512, 18.152271>,  <31.989939, 33.279686, 18.178886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746368, 32.963512, 18.152271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289804, 0.143604, 0.946251,
		-0.738391, 0.595481, -0.316515,
		-0.608928, -0.790430, -0.066537,
		31.563690, 32.726383, 18.132311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281094, 33.437607, 18.432714>,  <31.989939, 33.279686, 18.178886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281094, 33.437607, 18.432714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292793, 33.038860, 18.462137>,  <31.299814, 32.799614, 18.479792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292793, 33.038860, 18.462137>,  <31.281094, 33.437607, 18.432714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292793, 33.038860, 18.462137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229008, 0.064948, 0.971255,
		-0.972985, -0.045254, -0.226390,
		0.029250, -0.996862, 0.073557,
		31.301569, 32.739803, 18.484203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727764, 33.275597, 18.837599>,  <31.281094, 33.437607, 18.432714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727764, 33.275597, 18.837599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948818, 32.945229, 18.882242>,  <31.081450, 32.747009, 18.909027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948818, 32.945229, 18.882242>,  <30.727764, 33.275597, 18.837599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948818, 32.945229, 18.882242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244366, -0.032548, 0.969137,
		-0.796794, -0.562851, -0.219813,
		0.552634, -0.825917, 0.111607,
		31.114609, 32.697453, 18.915724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247349, 32.840427, 19.262470>,  <30.727764, 33.275597, 18.837599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247349, 32.840427, 19.262470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629681, 32.726845, 19.292816>,  <30.859079, 32.658695, 19.311024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629681, 32.726845, 19.292816>,  <30.247349, 32.840427, 19.262470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629681, 32.726845, 19.292816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129177, -0.173997, 0.976237,
		-0.264006, -0.942918, -0.202992,
		0.955831, -0.283955, 0.075867,
		30.916430, 32.641659, 19.315577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189747, 32.100792, 19.349838>,  <30.247349, 32.840427, 19.262470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189747, 32.100792, 19.349838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525583, 32.258503, 19.499308>,  <30.727085, 32.353130, 19.588989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.525583, 32.258503, 19.499308>,  <30.189747, 32.100792, 19.349838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525583, 32.258503, 19.499308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285070, -0.265768, 0.920925,
		0.462407, -0.879725, -0.110741,
		0.839592, 0.394274, 0.373676,
		30.777460, 32.376785, 19.611410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279799, 31.721403, 19.930248>,  <30.189747, 32.100792, 19.349838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279799, 31.721403, 19.930248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566593, 31.993685, 19.990347>,  <30.738670, 32.157055, 20.026405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566593, 31.993685, 19.990347>,  <30.279799, 31.721403, 19.930248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566593, 31.993685, 19.990347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126587, -0.084811, 0.988323,
		0.685497, -0.727634, 0.025360,
		0.716987, 0.680702, 0.150247,
		30.781689, 32.197895, 20.035421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853619, 31.418671, 20.405695>,  <30.279799, 31.721403, 19.930248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853619, 31.418671, 20.405695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.845009, 31.818119, 20.424854>,  <30.839842, 32.057789, 20.436350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.845009, 31.818119, 20.424854>,  <30.853619, 31.418671, 20.405695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845009, 31.818119, 20.424854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104919, -0.049899, 0.993228,
		0.994248, 0.016354, 0.105849,
		-0.021525, 0.998620, 0.047896,
		30.838551, 32.117706, 20.439222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308622, 31.532209, 21.080894>,  <30.853619, 31.418671, 20.405695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308622, 31.532209, 21.080894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.136662, 31.886349, 21.010078>,  <31.033485, 32.098831, 20.967588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.136662, 31.886349, 21.010078>,  <31.308622, 31.532209, 21.080894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136662, 31.886349, 21.010078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188616, 0.103694, 0.976561,
		0.882954, 0.453220, 0.122412,
		-0.429904, 0.885347, -0.177041,
		31.007690, 32.151955, 20.956966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999443, 31.611401, 21.271057>,  <31.308622, 31.532209, 21.080894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999443, 31.611401, 21.271057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.945908, 31.222481, 21.347706>,  <31.913786, 30.989128, 21.393696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.945908, 31.222481, 21.347706>,  <31.999443, 31.611401, 21.271057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945908, 31.222481, 21.347706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144415, -0.172163, -0.974425,
		0.980424, -0.158090, -0.117373,
		-0.133839, -0.972300, 0.191623,
		31.905756, 30.930790, 21.405193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488182, 31.104773, 21.004419>,  <31.999443, 31.611401, 21.271057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488182, 31.104773, 21.004419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.165508, 30.871954, 21.045370>,  <31.971905, 30.732264, 21.069941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.165508, 30.871954, 21.045370>,  <32.488182, 31.104773, 21.004419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165508, 30.871954, 21.045370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126108, -0.338778, -0.932377,
		0.577370, -0.739223, 0.346688,
		-0.806685, -0.582047, 0.102378,
		31.923502, 30.697340, 21.076084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631275, 30.447191, 20.802250>,  <32.488182, 31.104773, 21.004419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631275, 30.447191, 20.802250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.233170, 30.412952, 20.783838>,  <31.994307, 30.392408, 20.772791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.233170, 30.412952, 20.783838>,  <32.631275, 30.447191, 20.802250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233170, 30.412952, 20.783838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079765, -0.448856, -0.890037,
		0.055525, -0.889495, 0.453559,
		-0.995266, -0.085598, -0.046028,
		31.934589, 30.387274, 20.770029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534210, 29.756882, 20.642784>,  <32.631275, 30.447191, 20.802250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534210, 29.756882, 20.642784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.198856, 29.947617, 20.537153>,  <31.997644, 30.062057, 20.473776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.198856, 29.947617, 20.537153>,  <32.534210, 29.756882, 20.642784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198856, 29.947617, 20.537153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091226, -0.600391, -0.794487,
		-0.537387, -0.641997, 0.546860,
		-0.838387, 0.476834, -0.264075,
		31.947340, 30.090668, 20.457930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327599, 29.157604, 20.398281>,  <32.534210, 29.756882, 20.642784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327599, 29.157604, 20.398281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.097466, 29.457914, 20.268465>,  <31.959385, 29.638100, 20.190575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.097466, 29.457914, 20.268465>,  <32.327599, 29.157604, 20.398281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097466, 29.457914, 20.268465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313414, -0.568867, -0.760370,
		-0.755488, -0.335752, 0.562592,
		-0.575335, 0.750774, -0.324543,
		31.924864, 29.683146, 20.171103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644409, 28.884094, 20.148403>,  <32.327599, 29.157604, 20.398281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644409, 28.884094, 20.148403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.664066, 29.240772, 19.968416>,  <31.675861, 29.454779, 19.860424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.664066, 29.240772, 19.968416>,  <31.644409, 28.884094, 20.148403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664066, 29.240772, 19.968416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417494, -0.390926, -0.820290,
		-0.907350, 0.228169, 0.353065,
		0.049142, 0.891693, -0.449966,
		31.678808, 29.508280, 19.833427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046061, 28.888906, 19.822577>,  <31.644409, 28.884094, 20.148403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046061, 28.888906, 19.822577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.286337, 29.150791, 19.639048>,  <31.430504, 29.307922, 19.528931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.286337, 29.150791, 19.639048>,  <31.046061, 28.888906, 19.822577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286337, 29.150791, 19.639048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387626, -0.263426, -0.883376,
		-0.699224, 0.708489, 0.095546,
		0.600693, 0.654714, -0.458822,
		31.466545, 29.347206, 19.501402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645988, 29.145893, 19.238226>,  <31.046061, 28.888906, 19.822577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645988, 29.145893, 19.238226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031559, 29.214447, 19.156767>,  <31.262901, 29.255579, 19.107891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031559, 29.214447, 19.156767>,  <30.645988, 29.145893, 19.238226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031559, 29.214447, 19.156767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167900, -0.202166, -0.964852,
		-0.206531, 0.964239, -0.166098,
		0.963927, 0.171384, -0.203650,
		31.320738, 29.265862, 19.095673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775345, 29.754082, 18.685740>,  <30.645988, 29.145893, 19.238226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775345, 29.754082, 18.685740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.021008, 29.440832, 18.724785>,  <31.168406, 29.252882, 18.748211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.021008, 29.440832, 18.724785>,  <30.775345, 29.754082, 18.685740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021008, 29.440832, 18.724785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235959, -0.300248, -0.924215,
		0.753082, 0.544583, -0.369185,
		0.614159, -0.783122, 0.097612,
		31.205256, 29.205896, 18.754068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.354809, 35.573421, 32.813320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629868, 35.334122, 32.648769>,  <35.794903, 35.190540, 32.550037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629868, 35.334122, 32.648769>,  <35.354809, 35.573421, 32.813320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629868, 35.334122, 32.648769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712005, -0.444781, -0.543340,
		0.142081, 0.666531, -0.731812,
		0.687649, -0.598252, -0.411378,
		35.836163, 35.154648, 32.525356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215199, 35.570740, 32.074116>,  <35.354809, 35.573421, 32.813320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215199, 35.570740, 32.074116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421741, 35.240833, 32.166317>,  <35.545666, 35.042889, 32.221638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421741, 35.240833, 32.166317>,  <35.215199, 35.570740, 32.074116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421741, 35.240833, 32.166317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661145, -0.555005, -0.504834,
		0.544301, 0.108280, -0.831873,
		0.516357, -0.824770, 0.230501,
		35.576649, 34.993401, 32.235466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601746, 35.199764, 31.475079>,  <35.215199, 35.570740, 32.074116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601746, 35.199764, 31.475079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517570, 34.929871, 31.758051>,  <35.467064, 34.767937, 31.927834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517570, 34.929871, 31.758051>,  <35.601746, 35.199764, 31.475079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517570, 34.929871, 31.758051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480764, -0.558656, -0.675847,
		0.851223, -0.482331, -0.206823,
		-0.210439, -0.674730, 0.707428,
		35.454437, 34.727451, 31.970280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658203, 34.551975, 31.168179>,  <35.601746, 35.199764, 31.475079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658203, 34.551975, 31.168179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489731, 34.438530, 31.512775>,  <35.388645, 34.370461, 31.719534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489731, 34.438530, 31.512775>,  <35.658203, 34.551975, 31.168179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489731, 34.438530, 31.512775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643382, -0.576060, -0.504198,
		0.639268, -0.766627, 0.060154,
		-0.421184, -0.283615, 0.861491,
		35.363377, 34.353447, 31.771223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563271, 33.826416, 31.078186>,  <35.658203, 34.551975, 31.168179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563271, 33.826416, 31.078186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313320, 33.919773, 31.376192>,  <35.163349, 33.975788, 31.554996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313320, 33.919773, 31.376192>,  <35.563271, 33.826416, 31.078186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313320, 33.919773, 31.376192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692673, -0.605983, -0.391137,
		0.360178, -0.760468, 0.540334,
		-0.624880, 0.233396, 0.745017,
		35.125854, 33.989792, 31.599697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320564, 33.168869, 31.282133>,  <35.563271, 33.826416, 31.078186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320564, 33.168869, 31.282133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052402, 33.454636, 31.362310>,  <34.891506, 33.626095, 31.410418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052402, 33.454636, 31.362310>,  <35.320564, 33.168869, 31.282133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052402, 33.454636, 31.362310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709871, -0.538893, -0.453518,
		-0.215980, -0.446329, 0.868414,
		-0.670400, 0.714412, 0.200446,
		34.851284, 33.668961, 31.422443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702488, 32.764481, 31.453596>,  <35.320564, 33.168869, 31.282133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702488, 32.764481, 31.453596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591450, 33.132027, 31.341427>,  <34.524826, 33.352554, 31.274124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.591450, 33.132027, 31.341427>,  <34.702488, 32.764481, 31.453596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591450, 33.132027, 31.341427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727458, -0.391699, -0.563363,
		-0.627494, 0.047613, 0.777164,
		-0.277591, 0.918861, -0.280425,
		34.508171, 33.407684, 31.257299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041920, 32.622684, 31.448353>,  <34.702488, 32.764481, 31.453596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041920, 32.622684, 31.448353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087051, 32.979237, 31.272757>,  <34.114132, 33.193169, 31.167398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087051, 32.979237, 31.272757>,  <34.041920, 32.622684, 31.448353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087051, 32.979237, 31.272757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752693, -0.211737, -0.623394,
		-0.648631, 0.400760, 0.647046,
		0.112828, 0.891380, -0.438989,
		34.120899, 33.246651, 31.141060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359020, 32.920883, 31.471634>,  <34.041920, 32.622684, 31.448353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359020, 32.920883, 31.471634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585754, 33.072140, 31.178867>,  <33.721794, 33.162895, 31.003208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585754, 33.072140, 31.178867>,  <33.359020, 32.920883, 31.471634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585754, 33.072140, 31.178867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564888, -0.468286, -0.679419,
		-0.599662, 0.798573, -0.051835,
		0.566839, 0.378141, -0.731917,
		33.755806, 33.185581, 30.959291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947403, 33.068043, 30.961573>,  <33.359020, 32.920883, 31.471634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947403, 33.068043, 30.961573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264061, 33.073040, 30.717234>,  <33.454056, 33.076038, 30.570629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.264061, 33.073040, 30.717234>,  <32.947403, 33.068043, 30.961573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264061, 33.073040, 30.717234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564975, -0.365630, -0.739674,
		-0.232586, 0.930676, -0.282392,
		0.791648, 0.012493, -0.610850,
		33.501556, 33.076786, 30.533979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727589, 33.320263, 30.351303>,  <32.947403, 33.068043, 30.961573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727589, 33.320263, 30.351303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057682, 33.122776, 30.241585>,  <33.255737, 33.004284, 30.175753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057682, 33.122776, 30.241585>,  <32.727589, 33.320263, 30.351303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057682, 33.122776, 30.241585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504372, -0.425641, -0.751292,
		0.254173, 0.758336, -0.600269,
		0.825230, -0.493717, -0.274297,
		33.305252, 32.974663, 30.159296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602257, 33.282532, 29.627926>,  <32.727589, 33.320263, 30.351303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602257, 33.282532, 29.627926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.886147, 33.007145, 29.687654>,  <33.056480, 32.841911, 29.723492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.886147, 33.007145, 29.687654>,  <32.602257, 33.282532, 29.627926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886147, 33.007145, 29.687654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301274, -0.488221, -0.819069,
		0.636805, 0.536330, -0.553922,
		0.709728, -0.688469, 0.149319,
		33.099064, 32.800606, 29.732450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451145, 33.802631, 29.118114>,  <32.602257, 33.282532, 29.627926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451145, 33.802631, 29.118114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069897, 33.923218, 29.128534>,  <31.841148, 33.995571, 29.134787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069897, 33.923218, 29.128534>,  <32.451145, 33.802631, 29.118114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069897, 33.923218, 29.128534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144777, 0.378741, 0.914109,
		0.265708, 0.875027, -0.404631,
		-0.953120, 0.301468, 0.026050,
		31.783960, 34.013657, 29.136349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486053, 34.491638, 29.210083>,  <32.451145, 33.802631, 29.118114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486053, 34.491638, 29.210083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132755, 34.350174, 29.333242>,  <31.920776, 34.265293, 29.407137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132755, 34.350174, 29.333242>,  <32.486053, 34.491638, 29.210083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132755, 34.350174, 29.333242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111904, 0.478672, 0.870833,
		-0.455363, 0.803614, -0.383208,
		-0.883245, -0.353663, 0.307897,
		31.867783, 34.244076, 29.425611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262825, 35.048161, 29.644556>,  <32.486053, 34.491638, 29.210083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262825, 35.048161, 29.644556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050022, 34.722183, 29.736504>,  <31.922340, 34.526596, 29.791672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050022, 34.722183, 29.736504>,  <32.262825, 35.048161, 29.644556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050022, 34.722183, 29.736504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020250, 0.259155, 0.965623,
		-0.846496, 0.518375, -0.121370,
		-0.532009, -0.814939, 0.229871,
		31.890419, 34.477703, 29.805466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846741, 35.193600, 30.132626>,  <32.262825, 35.048161, 29.644556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846741, 35.193600, 30.132626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.799768, 34.798977, 30.178080>,  <31.771585, 34.562202, 30.205351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.799768, 34.798977, 30.178080>,  <31.846741, 35.193600, 30.132626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799768, 34.798977, 30.178080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087140, 0.124220, 0.988421,
		-0.989251, 0.106167, -0.100555,
		-0.117428, -0.986559, 0.113633,
		31.764540, 34.503010, 30.212170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088573, 35.096600, 30.294052>,  <31.846741, 35.193600, 30.132626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088573, 35.096600, 30.294052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337721, 34.816639, 30.433859>,  <31.487209, 34.648663, 30.517744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.337721, 34.816639, 30.433859>,  <31.088573, 35.096600, 30.294052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337721, 34.816639, 30.433859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347349, 0.152901, 0.925186,
		-0.700986, -0.697676, -0.147874,
		0.622871, -0.699906, 0.349519,
		31.524582, 34.606667, 30.538715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708792, 34.701290, 30.860209>,  <31.088573, 35.096600, 30.294052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708792, 34.701290, 30.860209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099384, 34.632671, 30.912455>,  <31.333740, 34.591499, 30.943802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.099384, 34.632671, 30.912455>,  <30.708792, 34.701290, 30.860209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099384, 34.632671, 30.912455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108988, 0.129990, 0.985507,
		-0.186038, -0.976563, 0.108236,
		0.976479, -0.171545, 0.130617,
		31.392328, 34.581207, 30.951639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736008, 34.314518, 31.519514>,  <30.708792, 34.701290, 30.860209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736008, 34.314518, 31.519514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.103004, 34.461124, 31.457714>,  <31.323202, 34.549088, 31.420633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.103004, 34.461124, 31.457714>,  <30.736008, 34.314518, 31.519514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103004, 34.461124, 31.457714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093265, 0.179366, 0.979352,
		0.386665, -0.912957, 0.130383,
		0.917492, 0.366521, -0.154502,
		31.378252, 34.571079, 31.411364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031908, 34.204998, 32.152225>,  <30.736008, 34.314518, 31.519514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031908, 34.204998, 32.152225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.282213, 34.469154, 31.986187>,  <31.432396, 34.627647, 31.886562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.282213, 34.469154, 31.986187>,  <31.031908, 34.204998, 32.152225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282213, 34.469154, 31.986187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255432, 0.329334, 0.909007,
		0.737003, -0.674854, 0.037402,
		0.625764, 0.660387, -0.415100,
		31.469942, 34.667271, 31.861656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694881, 34.150505, 32.545353>,  <31.031908, 34.204998, 32.152225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694881, 34.150505, 32.545353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.669994, 34.495121, 32.343811>,  <31.655062, 34.701893, 32.222885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.669994, 34.495121, 32.343811>,  <31.694881, 34.150505, 32.545353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669994, 34.495121, 32.343811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188206, 0.505908, 0.841805,
		0.980157, -0.042454, -0.193624,
		-0.062218, 0.861542, -0.503859,
		31.651329, 34.753582, 32.192654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280090, 34.500858, 32.721363>,  <31.694881, 34.150505, 32.545353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280090, 34.500858, 32.721363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058159, 34.799465, 32.574463>,  <31.924999, 34.978630, 32.486320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058159, 34.799465, 32.574463>,  <32.280090, 34.500858, 32.721363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058159, 34.799465, 32.574463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286051, 0.585691, 0.758381,
		0.781240, 0.315722, -0.538502,
		-0.554833, 0.746516, -0.367252,
		31.891708, 35.023418, 32.464287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740723, 35.110161, 32.769920>,  <32.280090, 34.500858, 32.721363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740723, 35.110161, 32.769920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362999, 35.233891, 32.725018>,  <32.136364, 35.308128, 32.698078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.362999, 35.233891, 32.725018>,  <32.740723, 35.110161, 32.769920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362999, 35.233891, 32.725018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148038, 0.704008, 0.694591,
		0.293878, 0.639291, -0.710593,
		-0.944309, 0.309320, -0.112253,
		32.079704, 35.326687, 32.691341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726528, 35.811546, 32.798950>,  <32.740723, 35.110161, 32.769920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726528, 35.811546, 32.798950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334988, 35.759418, 32.862022>,  <32.100063, 35.728142, 32.899868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334988, 35.759418, 32.862022>,  <32.726528, 35.811546, 32.798950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334988, 35.759418, 32.862022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007418, 0.747698, 0.663997,
		-0.204430, 0.651125, -0.730920,
		-0.978853, -0.130318, 0.157682,
		32.041332, 35.720322, 32.909328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470089, 36.561661, 32.767849>,  <32.726528, 35.811546, 32.798950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470089, 36.561661, 32.767849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208252, 36.328732, 32.960682>,  <32.051147, 36.188976, 33.076382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.208252, 36.328732, 32.960682>,  <32.470089, 36.561661, 32.767849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208252, 36.328732, 32.960682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034432, 0.660002, 0.750474,
		-0.755195, 0.474658, -0.452085,
		-0.654595, -0.582321, 0.482087,
		32.011875, 36.154034, 33.105309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902697, 36.979195, 32.907753>,  <32.470089, 36.561661, 32.767849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902697, 36.979195, 32.907753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914547, 36.688877, 33.182663>,  <31.921658, 36.514687, 33.347610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.914547, 36.688877, 33.182663>,  <31.902697, 36.979195, 32.907753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914547, 36.688877, 33.182663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397380, 0.622357, 0.674359,
		-0.917176, -0.293089, -0.269977,
		0.029626, -0.725789, 0.687279,
		31.923435, 36.471142, 33.388847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563198, 37.480461, 32.976719>,  <31.902697, 36.979195, 32.907753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563198, 37.480461, 32.976719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934059, 37.559769, 33.103889>,  <33.156574, 37.607353, 33.180191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934059, 37.559769, 33.103889>,  <32.563198, 37.480461, 32.976719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934059, 37.559769, 33.103889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323358, 0.852056, 0.411631,
		-0.189281, -0.484450, 0.854097,
		0.927153, 0.198265, 0.317928,
		33.212204, 37.619247, 33.199268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294106, 37.862263, 32.460754>,  <32.563198, 37.480461, 32.976719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294106, 37.862263, 32.460754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596169, 38.113705, 32.386353>,  <32.777405, 38.264568, 32.341713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596169, 38.113705, 32.386353>,  <32.294106, 37.862263, 32.460754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596169, 38.113705, 32.386353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065982, -0.209411, -0.975599,
		-0.652215, 0.749003, -0.116662,
		0.755157, 0.628602, -0.186002,
		32.822716, 38.302284, 32.330551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045540, 38.094936, 31.897894>,  <32.294106, 37.862263, 32.460754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045540, 38.094936, 31.897894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437981, 38.171452, 31.909611>,  <32.673443, 38.217361, 31.916641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.437981, 38.171452, 31.909611>,  <32.045540, 38.094936, 31.897894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437981, 38.171452, 31.909611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063590, -0.175706, -0.982387,
		-0.182769, 0.965680, -0.184548,
		0.981097, 0.191285, 0.029294,
		32.732311, 38.228836, 31.918400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226284, 38.612736, 31.399178>,  <32.045540, 38.094936, 31.897894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226284, 38.612736, 31.399178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567951, 38.412292, 31.454718>,  <32.772953, 38.292027, 31.488041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567951, 38.412292, 31.454718>,  <32.226284, 38.612736, 31.399178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567951, 38.412292, 31.454718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026880, -0.309220, -0.950611,
		0.519295, 0.808253, -0.277597,
		0.854172, -0.501109, 0.138851,
		32.824203, 38.261959, 31.496372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752964, 38.904457, 31.015137>,  <32.226284, 38.612736, 31.399178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752964, 38.904457, 31.015137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914032, 38.544865, 31.084061>,  <33.010674, 38.329109, 31.125414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.914032, 38.544865, 31.084061>,  <32.752964, 38.904457, 31.015137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914032, 38.544865, 31.084061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067308, -0.216813, -0.973890,
		0.912869, 0.380554, -0.147812,
		0.402665, -0.898983, 0.172308,
		33.034832, 38.275169, 31.135754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076389, 38.832954, 30.418982>,  <32.752964, 38.904457, 31.015137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076389, 38.832954, 30.418982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.984615, 38.470860, 30.562035>,  <32.929550, 38.253601, 30.647867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.984615, 38.470860, 30.562035>,  <33.076389, 38.832954, 30.418982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984615, 38.470860, 30.562035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002179, -0.367913, -0.929858,
		0.973322, -0.212562, 0.086385,
		-0.229435, -0.905239, 0.357635,
		32.915787, 38.199287, 30.669325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636353, 38.410896, 30.214081>,  <33.076389, 38.832954, 30.418982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636353, 38.410896, 30.214081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337833, 38.148922, 30.261580>,  <33.158722, 37.991737, 30.290079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.337833, 38.148922, 30.261580>,  <33.636353, 38.410896, 30.214081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337833, 38.148922, 30.261580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195119, -0.385829, -0.901701,
		0.636368, -0.649770, 0.415734,
		-0.746300, -0.654931, 0.118747,
		33.113945, 37.952442, 30.297203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924847, 37.863163, 29.971369>,  <33.636353, 38.410896, 30.214081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924847, 37.863163, 29.971369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531887, 37.789135, 29.961258>,  <33.296112, 37.744717, 29.955193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531887, 37.789135, 29.961258>,  <33.924847, 37.863163, 29.971369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531887, 37.789135, 29.961258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099826, -0.405820, -0.908485,
		0.157879, -0.895019, 0.417152,
		-0.982400, -0.185073, -0.025276,
		33.237167, 37.733612, 29.953674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870701, 37.189289, 29.779490>,  <33.924847, 37.863163, 29.971369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870701, 37.189289, 29.779490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511883, 37.332710, 29.676151>,  <33.296593, 37.418762, 29.614149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511883, 37.332710, 29.676151>,  <33.870701, 37.189289, 29.779490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511883, 37.332710, 29.676151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146735, -0.309764, -0.939423,
		-0.416861, -0.880616, 0.225261,
		-0.897048, 0.358555, -0.258346,
		33.242767, 37.440277, 29.598648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529671, 36.629734, 29.339739>,  <33.870701, 37.189289, 29.779490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529671, 36.629734, 29.339739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307919, 36.945045, 29.232948>,  <33.174866, 37.134232, 29.168875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307919, 36.945045, 29.232948>,  <33.529671, 36.629734, 29.339739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307919, 36.945045, 29.232948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069936, -0.275523, -0.958747,
		-0.829320, -0.550181, 0.097615,
		-0.554380, 0.788282, -0.266974,
		33.141605, 37.181530, 29.152857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827347, 36.430725, 29.081993>,  <33.529671, 36.629734, 29.339739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827347, 36.430725, 29.081993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898861, 36.790432, 28.922318>,  <32.941769, 37.006256, 28.826511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898861, 36.790432, 28.922318>,  <32.827347, 36.430725, 29.081993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898861, 36.790432, 28.922318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060513, -0.415010, -0.907802,
		-0.982025, 0.138149, -0.128616,
		0.178789, 0.899267, -0.399191,
		32.952499, 37.060211, 28.802561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428349, 36.427776, 28.373465>,  <32.827347, 36.430725, 29.081993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428349, 36.427776, 28.373465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689949, 36.730358, 28.370243>,  <32.846909, 36.911907, 28.368311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689949, 36.730358, 28.370243>,  <32.428349, 36.427776, 28.373465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689949, 36.730358, 28.370243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129098, -0.122091, -0.984087,
		-0.745397, 0.642554, -0.177504,
		0.654001, 0.756451, -0.008054,
		32.886150, 36.957294, 28.367826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196690, 36.982983, 27.963898>,  <32.428349, 36.427776, 28.373465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196690, 36.982983, 27.963898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594681, 37.023010, 27.965414>,  <32.833473, 37.047028, 27.966324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.594681, 37.023010, 27.965414>,  <32.196690, 36.982983, 27.963898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594681, 37.023010, 27.965414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004056, -0.002425, -0.999989,
		-0.100058, 0.994978, -0.002819,
		0.994973, 0.100068, 0.003793,
		32.893173, 37.053032, 27.966553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299355, 37.576836, 27.483587>,  <32.196690, 36.982983, 27.963898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299355, 37.576836, 27.483587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662125, 37.410145, 27.508337>,  <32.879787, 37.310127, 27.523188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662125, 37.410145, 27.508337>,  <32.299355, 37.576836, 27.483587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662125, 37.410145, 27.508337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160972, 0.207036, -0.964999,
		0.389335, 0.885139, 0.254848,
		0.906921, -0.416732, 0.061876,
		32.934200, 37.285126, 27.526899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767460, 37.938618, 27.076691>,  <32.299355, 37.576836, 27.483587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767460, 37.938618, 27.076691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950798, 37.588825, 27.140190>,  <33.060799, 37.378948, 27.178289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950798, 37.588825, 27.140190>,  <32.767460, 37.938618, 27.076691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950798, 37.588825, 27.140190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178631, -0.084330, -0.980296,
		0.870640, 0.477668, 0.117558,
		0.458342, -0.874484, 0.158748,
		33.088299, 37.326481, 27.187815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443810, 37.977726, 26.754536>,  <32.767460, 37.938618, 27.076691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443810, 37.977726, 26.754536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398975, 37.584515, 26.812628>,  <33.372074, 37.348587, 26.847483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.398975, 37.584515, 26.812628>,  <33.443810, 37.977726, 26.754536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398975, 37.584515, 26.812628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234232, -0.168170, -0.957525,
		0.965698, -0.073307, 0.249107,
		-0.112086, -0.983029, 0.145230,
		33.365349, 37.289604, 26.856197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044422, 37.557938, 26.432629>,  <33.443810, 37.977726, 26.754536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044422, 37.557938, 26.432629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732239, 37.309502, 26.461258>,  <33.544930, 37.160439, 26.478436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.732239, 37.309502, 26.461258>,  <34.044422, 37.557938, 26.432629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732239, 37.309502, 26.461258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290780, -0.461948, -0.837885,
		0.553469, -0.633124, 0.541134,
		-0.780461, -0.621094, 0.071574,
		33.498100, 37.123173, 26.482731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272499, 36.934570, 26.271662>,  <34.044422, 37.557938, 26.432629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272499, 36.934570, 26.271662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879917, 36.897041, 26.204802>,  <33.644367, 36.874523, 26.164686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879917, 36.897041, 26.204802>,  <34.272499, 36.934570, 26.271662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879917, 36.897041, 26.204802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191674, -0.471713, -0.860667,
		0.001907, -0.876746, 0.480950,
		-0.981457, -0.093826, -0.167150,
		33.585480, 36.868893, 26.154657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239544, 36.328232, 25.968435>,  <34.272499, 36.934570, 26.271662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239544, 36.328232, 25.968435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873444, 36.474148, 25.900026>,  <33.653786, 36.561699, 25.858980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873444, 36.474148, 25.900026>,  <34.239544, 36.328232, 25.968435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873444, 36.474148, 25.900026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015390, -0.455834, -0.889932,
		-0.402597, -0.811876, 0.422816,
		-0.915248, 0.364791, -0.171022,
		33.598869, 36.583584, 25.848719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767830, 35.782536, 25.873440>,  <34.239544, 36.328232, 25.968435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767830, 35.782536, 25.873440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576653, 36.083599, 25.692295>,  <33.461948, 36.264236, 25.583609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576653, 36.083599, 25.692295>,  <33.767830, 35.782536, 25.873440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576653, 36.083599, 25.692295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080445, -0.550896, -0.830688,
		-0.874701, -0.360589, 0.323843,
		-0.477940, 0.752655, -0.452862,
		33.433270, 36.309395, 25.556437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235443, 35.488228, 25.493555>,  <33.767830, 35.782536, 25.873440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235443, 35.488228, 25.493555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306751, 35.840614, 25.318228>,  <33.349537, 36.052044, 25.213032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306751, 35.840614, 25.318228>,  <33.235443, 35.488228, 25.493555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306751, 35.840614, 25.318228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013037, -0.447530, -0.894173,
		-0.983895, 0.153693, -0.091268,
		0.178273, 0.880962, -0.438319,
		33.360233, 36.104904, 25.186731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924099, 35.405510, 24.903111>,  <33.235443, 35.488228, 25.493555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924099, 35.405510, 24.903111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149940, 35.717709, 24.795750>,  <33.285446, 35.905029, 24.731333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149940, 35.717709, 24.795750>,  <32.924099, 35.405510, 24.903111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149940, 35.717709, 24.795750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000010, -0.325190, -0.945649,
		-0.825359, 0.533923, -0.183597,
		0.564608, 0.780498, -0.268404,
		33.319324, 35.951859, 24.715229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536026, 35.697716, 24.349846>,  <32.924099, 35.405510, 24.903111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536026, 35.697716, 24.349846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916134, 35.819237, 24.322435>,  <33.144199, 35.892151, 24.305990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916134, 35.819237, 24.322435>,  <32.536026, 35.697716, 24.349846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916134, 35.819237, 24.322435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012845, -0.258076, -0.966039,
		-0.311170, 0.917115, -0.249143,
		0.950267, 0.303803, -0.068525,
		33.201214, 35.910378, 24.301878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551189, 36.170776, 23.745815>,  <32.536026, 35.697716, 24.349846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551189, 36.170776, 23.745815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923092, 36.045582, 23.823362>,  <33.146233, 35.970467, 23.869890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923092, 36.045582, 23.823362>,  <32.551189, 36.170776, 23.745815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923092, 36.045582, 23.823362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087394, -0.323902, -0.942045,
		0.357641, 0.892820, -0.273798,
		0.929761, -0.312986, 0.193868,
		33.202019, 35.951687, 23.881523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930882, 36.420372, 23.097109>,  <32.551189, 36.170776, 23.745815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930882, 36.420372, 23.097109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148518, 36.129795, 23.265039>,  <33.279099, 35.955448, 23.365797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.148518, 36.129795, 23.265039>,  <32.930882, 36.420372, 23.097109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148518, 36.129795, 23.265039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237719, -0.346398, -0.907468,
		0.804648, 0.593542, -0.015782,
		0.544087, -0.726440, 0.419825,
		33.311745, 35.911861, 23.390987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587360, 36.405479, 22.708138>,  <32.930882, 36.420372, 23.097109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587360, 36.405479, 22.708138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552486, 36.058228, 22.903584>,  <33.531563, 35.849876, 23.020851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552486, 36.058228, 22.903584>,  <33.587360, 36.405479, 22.708138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552486, 36.058228, 22.903584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171256, -0.496240, -0.851127,
		0.981362, 0.009474, 0.191937,
		-0.087183, -0.868134, 0.488613,
		33.526333, 35.797787, 23.050167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194080, 35.921764, 22.652716>,  <33.587360, 36.405479, 22.708138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194080, 35.921764, 22.652716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898552, 35.664982, 22.734732>,  <33.721237, 35.510914, 22.783941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898552, 35.664982, 22.734732>,  <34.194080, 35.921764, 22.652716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898552, 35.664982, 22.734732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203689, -0.502746, -0.840094,
		0.642387, -0.578911, 0.502196,
		-0.738816, -0.641957, 0.205040,
		33.676907, 35.472393, 22.796244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348450, 35.385506, 22.255306>,  <34.194080, 35.921764, 22.652716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348450, 35.385506, 22.255306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962421, 35.321926, 22.338612>,  <33.730804, 35.283779, 22.388596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962421, 35.321926, 22.338612>,  <34.348450, 35.385506, 22.255306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962421, 35.321926, 22.338612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111824, -0.468979, -0.876101,
		0.236925, -0.868789, 0.434824,
		-0.965071, -0.158947, 0.208264,
		33.672901, 35.274242, 22.401091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994484, 35.028202, 22.521904>,  <34.348450, 35.385506, 22.255306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994484, 35.028202, 22.521904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362446, 34.908913, 22.420052>,  <35.583221, 34.837337, 22.358940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362446, 34.908913, 22.420052>,  <34.994484, 35.028202, 22.521904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362446, 34.908913, 22.420052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368012, 0.432267, 0.823233,
		-0.135441, -0.851003, 0.507395,
		0.919904, -0.298227, -0.254632,
		35.638416, 34.819443, 22.343662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214119, 34.738312, 23.152628>,  <34.994484, 35.028202, 22.521904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214119, 34.738312, 23.152628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547386, 34.777496, 22.934916>,  <35.747345, 34.801006, 22.804289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547386, 34.777496, 22.934916>,  <35.214119, 34.738312, 23.152628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547386, 34.777496, 22.934916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538120, 0.083359, 0.838736,
		0.127533, -0.991693, 0.016738,
		0.833164, 0.097959, -0.544281,
		35.797337, 34.806885, 22.771631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717045, 34.235607, 23.424337>,  <35.214119, 34.738312, 23.152628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717045, 34.235607, 23.424337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938885, 34.512562, 23.239721>,  <36.071987, 34.678734, 23.128952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938885, 34.512562, 23.239721>,  <35.717045, 34.235607, 23.424337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938885, 34.512562, 23.239721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355754, 0.304123, 0.883713,
		0.752238, -0.654300, -0.077654,
		0.554596, 0.692388, -0.461542,
		36.105263, 34.720280, 23.101259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268032, 34.244148, 23.908112>,  <35.717045, 34.235607, 23.424337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268032, 34.244148, 23.908112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293743, 34.576740, 23.687384>,  <36.309170, 34.776295, 23.554947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.293743, 34.576740, 23.687384>,  <36.268032, 34.244148, 23.908112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293743, 34.576740, 23.687384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414937, 0.480628, 0.772544,
		0.907577, -0.278628, -0.314119,
		0.064278, 0.831483, -0.551820,
		36.313026, 34.826183, 23.521837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977020, 34.442753, 23.987253>,  <36.268032, 34.244148, 23.908112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977020, 34.442753, 23.987253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789459, 34.773602, 23.863321>,  <36.676922, 34.972111, 23.788961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.789459, 34.773602, 23.863321>,  <36.977020, 34.442753, 23.987253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789459, 34.773602, 23.863321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530424, 0.544189, 0.650007,
		0.706242, 0.140451, -0.693899,
		-0.468906, 0.827123, -0.309830,
		36.648788, 35.021740, 23.770372>
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
