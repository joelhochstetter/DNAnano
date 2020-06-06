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
	<4.286574, 14.995646, 14.557502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.145806, 15.124166, 14.909164>,  <4.061346, 15.201279, 15.120162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.145806, 15.124166, 14.909164>,  <4.286574, 14.995646, 14.557502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.145806, 15.124166, 14.909164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746989, 0.662395, 0.056930,
		-0.564058, 0.676755, -0.473119,
		-0.351919, 0.321302, 0.879157,
		4.040231, 15.220557, 15.172912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.442583, 15.640903, 14.485902>,  <4.286574, 14.995646, 14.557502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.442583, 15.640903, 14.485902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.391607, 15.585167, 14.878706>,  <4.361022, 15.551725, 15.114388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.391607, 15.585167, 14.878706>,  <4.442583, 15.640903, 14.485902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.391607, 15.585167, 14.878706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738353, 0.647760, 0.187730,
		-0.662265, 0.748994, 0.020332,
		-0.127438, -0.139339, 0.982010,
		4.353376, 15.543365, 15.173309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.304974, 16.309702, 14.913125>,  <4.442583, 15.640903, 14.485902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.304974, 16.309702, 14.913125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481024, 16.032454, 15.141466>,  <4.586655, 15.866105, 15.278471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481024, 16.032454, 15.141466>,  <4.304974, 16.309702, 14.913125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481024, 16.032454, 15.141466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636280, 0.689320, 0.346390,
		-0.633590, 0.210767, 0.744407,
		0.440127, -0.693120, 0.570853,
		4.613062, 15.824517, 15.312722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.410849, 16.578112, 15.693059>,  <4.304974, 16.309702, 14.913125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.410849, 16.578112, 15.693059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.673964, 16.279577, 15.652473>,  <4.831833, 16.100456, 15.628122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.673964, 16.279577, 15.652473>,  <4.410849, 16.578112, 15.693059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.673964, 16.279577, 15.652473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709477, 0.568721, 0.416172,
		-0.252900, -0.345739, 0.903607,
		0.657788, -0.746338, -0.101464,
		4.871300, 16.055676, 15.622034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.684718, 16.191746, 16.280075>,  <4.410849, 16.578112, 15.693059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.684718, 16.191746, 16.280075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.971114, 16.185282, 16.000906>,  <5.142951, 16.181404, 15.833404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.971114, 16.185282, 16.000906>,  <4.684718, 16.191746, 16.280075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.971114, 16.185282, 16.000906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528874, 0.665125, 0.527164,
		0.455689, -0.746557, 0.484768,
		0.715989, -0.016158, -0.697925,
		5.185910, 16.180435, 15.791529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383694, 16.175365, 16.597254>,  <4.684718, 16.191746, 16.280075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383694, 16.175365, 16.597254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.421235, 16.343054, 16.236046>,  <5.443760, 16.443666, 16.019321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.421235, 16.343054, 16.236046>,  <5.383694, 16.175365, 16.597254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.421235, 16.343054, 16.236046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438728, 0.796791, 0.415501,
		0.893705, -0.435177, -0.109142,
		0.093853, 0.419220, -0.903021,
		5.449391, 16.468821, 15.965139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.025800, 16.548162, 16.630875>,  <5.383694, 16.175365, 16.597254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.025800, 16.548162, 16.630875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.845471, 16.693745, 16.304857>,  <5.737274, 16.781094, 16.109247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.845471, 16.693745, 16.304857>,  <6.025800, 16.548162, 16.630875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.845471, 16.693745, 16.304857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587282, 0.808571, 0.036224,
		0.672206, -0.462330, -0.578265,
		-0.450821, 0.363955, -0.815044,
		5.710225, 16.802931, 16.060345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.608603, 16.834723, 16.208214>,  <6.025800, 16.548162, 16.630875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.608603, 16.834723, 16.208214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.250741, 16.966398, 16.087399>,  <6.036025, 17.045404, 16.014910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.250741, 16.966398, 16.087399>,  <6.608603, 16.834723, 16.208214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.250741, 16.966398, 16.087399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387954, 0.907714, -0.159833,
		0.221550, -0.260173, -0.939801,
		-0.894655, 0.329189, -0.302039,
		5.982345, 17.065155, 15.996787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.688567, 17.234085, 15.607819>,  <6.608603, 16.834723, 16.208214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.688567, 17.234085, 15.607819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.348890, 17.379030, 15.761477>,  <6.145084, 17.465998, 15.853671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.348890, 17.379030, 15.761477>,  <6.688567, 17.234085, 15.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.348890, 17.379030, 15.761477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298569, 0.929453, -0.216733,
		-0.435579, -0.069355, -0.897475,
		-0.849192, 0.362362, 0.384144,
		6.094132, 17.487740, 15.876719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.472461, 17.878729, 15.177200>,  <6.688567, 17.234085, 15.607819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.472461, 17.878729, 15.177200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.277321, 17.915966, 15.524380>,  <6.160236, 17.938309, 15.732687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.277321, 17.915966, 15.524380>,  <6.472461, 17.878729, 15.177200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.277321, 17.915966, 15.524380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022601, 0.992617, -0.119168,
		-0.872634, -0.077753, -0.482145,
		-0.487851, 0.093093, 0.867949,
		6.130965, 17.943893, 15.784764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.957396, 18.312986, 15.016234>,  <6.472461, 17.878729, 15.177200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.957396, 18.312986, 15.016234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.007696, 18.337240, 15.412317>,  <6.037876, 18.351791, 15.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.007696, 18.337240, 15.412317>,  <5.957396, 18.312986, 15.016234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.007696, 18.337240, 15.412317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018614, 0.998099, -0.058752,
		-0.991888, -0.011044, 0.126639,
		0.125749, 0.060633, 0.990208,
		6.045420, 18.355431, 15.709379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.626510, 18.907820, 15.123606>,  <5.957396, 18.312986, 15.016234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.626510, 18.907820, 15.123606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.821938, 18.852625, 15.468224>,  <5.939195, 18.819508, 15.674994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.821938, 18.852625, 15.468224>,  <5.626510, 18.907820, 15.123606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.821938, 18.852625, 15.468224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139207, 0.987095, 0.079154,
		-0.861347, 0.081261, 0.501475,
		0.488571, -0.137988, 0.861543,
		5.968509, 18.811228, 15.726686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.251180, 19.178614, 15.755821>,  <5.626510, 18.907820, 15.123606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.251180, 19.178614, 15.755821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.641832, 19.167883, 15.841120>,  <5.876224, 19.161444, 15.892299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.641832, 19.167883, 15.841120>,  <5.251180, 19.178614, 15.755821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.641832, 19.167883, 15.841120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003518, 0.994042, 0.108944,
		-0.214899, -0.105648, 0.970905,
		0.976630, -0.026828, 0.213247,
		5.934821, 19.159834, 15.905094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.242184, 19.673321, 16.238529>,  <5.251180, 19.178614, 15.755821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.242184, 19.673321, 16.238529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.629344, 19.623741, 16.151070>,  <5.861639, 19.593994, 16.098595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.629344, 19.623741, 16.151070>,  <5.242184, 19.673321, 16.238529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.629344, 19.623741, 16.151070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107195, 0.990429, -0.086940,
		0.227332, 0.060711, 0.971923,
		0.967899, -0.123949, -0.218649,
		5.919713, 19.586555, 16.085476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.537497, 20.205019, 16.633976>,  <5.242184, 19.673321, 16.238529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.537497, 20.205019, 16.633976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.790783, 20.094131, 16.344927>,  <5.942755, 20.027599, 16.171497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.790783, 20.094131, 16.344927>,  <5.537497, 20.205019, 16.633976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.790783, 20.094131, 16.344927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298132, 0.948972, -0.102809,
		0.714251, -0.150338, 0.683552,
		0.633216, -0.277221, -0.722625,
		5.980748, 20.010965, 16.128139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.208656, 20.484404, 16.849823>,  <5.537497, 20.205019, 16.633976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.208656, 20.484404, 16.849823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.180715, 20.423195, 16.455523>,  <6.163949, 20.386471, 16.218943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.180715, 20.423195, 16.455523>,  <6.208656, 20.484404, 16.849823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.180715, 20.423195, 16.455523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173258, 0.971286, -0.163053,
		0.982396, -0.182179, -0.041336,
		-0.069854, -0.153021, -0.985751,
		6.159759, 20.377289, 16.159798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.766060, 20.971195, 16.609997>,  <6.208656, 20.484404, 16.849823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.766060, 20.971195, 16.609997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.542665, 20.848139, 16.301853>,  <6.408628, 20.774305, 16.116968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.542665, 20.848139, 16.301853>,  <6.766060, 20.971195, 16.609997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.542665, 20.848139, 16.301853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237152, 0.830707, -0.503671,
		0.794891, -0.463985, -0.390981,
		-0.558486, -0.307641, -0.770357,
		6.375120, 20.755846, 16.070745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.213536, 21.030550, 16.121166>,  <6.766060, 20.971195, 16.609997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.213536, 21.030550, 16.121166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.862658, 21.025705, 15.929173>,  <6.652131, 21.022799, 15.813978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.862658, 21.025705, 15.929173>,  <7.213536, 21.030550, 16.121166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.862658, 21.025705, 15.929173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252958, 0.838029, -0.483445,
		0.408093, -0.545491, -0.732052,
		-0.877196, -0.012112, -0.479980,
		6.599499, 21.022072, 15.785179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.357152, 21.135681, 15.370750>,  <7.213536, 21.030550, 16.121166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.357152, 21.135681, 15.370750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.987136, 21.269278, 15.443139>,  <6.765126, 21.349436, 15.486572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.987136, 21.269278, 15.443139>,  <7.357152, 21.135681, 15.370750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.987136, 21.269278, 15.443139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234384, 0.876738, -0.419994,
		-0.298937, -0.346095, -0.889300,
		-0.925041, 0.333990, 0.180971,
		6.709624, 21.369474, 15.497430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.182550, 21.563843, 14.807861>,  <7.357152, 21.135681, 15.370750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.182550, 21.563843, 14.807861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.911249, 21.662676, 15.084679>,  <6.748468, 21.721975, 15.250769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.911249, 21.662676, 15.084679>,  <7.182550, 21.563843, 14.807861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.911249, 21.662676, 15.084679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163667, 0.867321, -0.470071,
		-0.716370, -0.432092, -0.547823,
		-0.678252, 0.247084, 0.692042,
		6.707773, 21.736801, 15.292292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.730315, 22.054340, 14.447497>,  <7.182550, 21.563843, 14.807861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.730315, 22.054340, 14.447497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.628543, 22.135027, 14.825826>,  <6.567480, 22.183439, 15.052822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.628543, 22.135027, 14.825826>,  <6.730315, 22.054340, 14.447497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.628543, 22.135027, 14.825826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055388, 0.973360, -0.222491,
		-0.965504, -0.108995, -0.236480,
		-0.254431, 0.201717, 0.945820,
		6.552214, 22.195541, 15.109571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.086081, 22.368305, 14.413845>,  <6.730315, 22.054340, 14.447497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.086081, 22.368305, 14.413845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.268696, 22.460785, 14.757501>,  <6.378265, 22.516273, 14.963694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.268696, 22.460785, 14.757501>,  <6.086081, 22.368305, 14.413845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.268696, 22.460785, 14.757501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187846, 0.968926, -0.160923,
		-0.869647, -0.087918, 0.485782,
		0.456539, 0.231199, 0.859139,
		6.405658, 22.530144, 15.015243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.741399, 22.961092, 14.650062>,  <6.086081, 22.368305, 14.413845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.741399, 22.961092, 14.650062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.072866, 22.954016, 14.873846>,  <6.271746, 22.949770, 15.008117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.072866, 22.954016, 14.873846>,  <5.741399, 22.961092, 14.650062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.072866, 22.954016, 14.873846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084121, 0.984213, 0.155718,
		-0.553383, -0.176101, 0.814098,
		0.828668, -0.017689, 0.559461,
		6.321466, 22.948709, 15.041684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.624479, 23.233616, 15.329235>,  <5.741399, 22.961092, 14.650062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.624479, 23.233616, 15.329235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.013997, 23.281664, 15.251986>,  <6.247708, 23.310492, 15.205636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.013997, 23.281664, 15.251986>,  <5.624479, 23.233616, 15.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.013997, 23.281664, 15.251986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087950, 0.981977, 0.167289,
		0.209738, -0.145920, 0.966808,
		0.973794, 0.120118, -0.193124,
		6.306135, 23.317699, 15.194048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.822268, 23.709614, 15.904291>,  <5.624479, 23.233616, 15.329235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.822268, 23.709614, 15.904291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.105799, 23.730001, 15.622876>,  <6.275917, 23.742233, 15.454027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.105799, 23.730001, 15.622876>,  <5.822268, 23.709614, 15.904291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.105799, 23.730001, 15.622876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094183, 0.981617, 0.166004,
		0.699066, -0.183930, 0.690997,
		0.708827, 0.050968, -0.703538,
		6.318447, 23.745293, 15.411815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.499432, 23.885138, 16.123308>,  <5.822268, 23.709614, 15.904291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.499432, 23.885138, 16.123308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488245, 23.994518, 15.738716>,  <6.481534, 24.060146, 15.507961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.488245, 23.994518, 15.738716>,  <6.499432, 23.885138, 16.123308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.488245, 23.994518, 15.738716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194419, 0.944976, 0.263102,
		0.980520, -0.179572, -0.079592,
		-0.027967, 0.273451, -0.961479,
		6.479856, 24.076553, 15.450273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.099935, 24.190233, 15.943777>,  <6.499432, 23.885138, 16.123308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.099935, 24.190233, 15.943777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.828638, 24.345440, 15.694160>,  <6.665860, 24.438564, 15.544389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.828638, 24.345440, 15.694160>,  <7.099935, 24.190233, 15.943777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.828638, 24.345440, 15.694160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254218, 0.920685, 0.296163,
		0.689463, 0.042227, -0.723088,
		-0.678243, 0.388015, -0.624044,
		6.625165, 24.461845, 15.506947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.458009, 24.793242, 15.550071>,  <7.099935, 24.190233, 15.943777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.458009, 24.793242, 15.550071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.062635, 24.811102, 15.608042>,  <6.825411, 24.821817, 15.642824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.062635, 24.811102, 15.608042>,  <7.458009, 24.793242, 15.550071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.062635, 24.811102, 15.608042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090580, 0.940300, 0.328070,
		-0.121626, 0.337404, -0.933470,
		-0.988434, 0.044652, 0.144927,
		6.766105, 24.824497, 15.651520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.061304, 24.655739, 15.218485>,  <7.458009, 24.793242, 15.550071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.061304, 24.655739, 15.218485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.198357, 24.601656, 15.590361>,  <8.280588, 24.569206, 15.813486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.198357, 24.601656, 15.590361>,  <8.061304, 24.655739, 15.218485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.198357, 24.601656, 15.590361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638557, 0.759371, -0.124901,
		-0.689092, 0.636455, 0.346521,
		0.342632, -0.135205, 0.929690,
		8.301147, 24.561094, 15.869267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.213293, 25.317041, 15.618301>,  <8.061304, 24.655739, 15.218485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.213293, 25.317041, 15.618301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.429986, 25.012653, 15.761103>,  <8.560002, 24.830021, 15.846784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.429986, 25.012653, 15.761103>,  <8.213293, 25.317041, 15.618301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.429986, 25.012653, 15.761103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832478, 0.544454, -0.102711,
		-0.116211, 0.352839, 0.928439,
		0.541733, -0.760970, 0.357002,
		8.592505, 24.784363, 15.868203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.720902, 25.639944, 15.868788>,  <8.213293, 25.317041, 15.618301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.720902, 25.639944, 15.868788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.865257, 25.274048, 15.796110>,  <8.951870, 25.054510, 15.752503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.865257, 25.274048, 15.796110>,  <8.720902, 25.639944, 15.868788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.865257, 25.274048, 15.796110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865689, 0.401042, -0.299580,
		0.346904, -0.049177, 0.936610,
		0.360888, -0.914739, -0.181695,
		8.973523, 24.999626, 15.741602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.408000, 25.405308, 16.260687>,  <8.720902, 25.639944, 15.868788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.408000, 25.405308, 16.260687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397619, 25.547701, 16.634340>,  <9.391391, 25.633137, 16.858532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.397619, 25.547701, 16.634340>,  <9.408000, 25.405308, 16.260687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.397619, 25.547701, 16.634340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294211, 0.890339, -0.347470,
		-0.955388, -0.283850, 0.081629,
		-0.025952, 0.355985, 0.934132,
		9.389833, 25.654497, 16.914579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.706580, 24.804541, 15.833787>,  <9.408000, 25.405308, 16.260687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.706580, 24.804541, 15.833787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.949813, 24.559490, 16.035748>,  <10.095753, 24.412460, 16.156923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.949813, 24.559490, 16.035748>,  <9.706580, 24.804541, 15.833787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.949813, 24.559490, 16.035748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152860, -0.533742, -0.831717,
		0.779019, 0.582931, -0.230912,
		0.608081, -0.612626, 0.504903,
		10.132237, 24.375702, 16.187218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.346377, 24.536146, 15.337389>,  <9.706580, 24.804541, 15.833787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.346377, 24.536146, 15.337389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.350715, 24.300117, 15.660300>,  <10.353317, 24.158501, 15.854047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.350715, 24.300117, 15.660300>,  <10.346377, 24.536146, 15.337389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.350715, 24.300117, 15.660300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042800, -0.806860, -0.589190,
		0.999025, -0.028162, -0.034005,
		0.010844, -0.590071, 0.807278,
		10.353968, 24.123096, 15.902484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.869236, 23.929897, 15.241270>,  <10.346377, 24.536146, 15.337389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.869236, 23.929897, 15.241270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569553, 23.842323, 15.491312>,  <10.389744, 23.789780, 15.641337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569553, 23.842323, 15.491312>,  <10.869236, 23.929897, 15.241270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.569553, 23.842323, 15.491312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108433, -0.890511, -0.441851,
		0.653399, -0.398820, 0.643438,
		-0.749207, -0.218935, 0.625105,
		10.344791, 23.776644, 15.678843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953753, 23.258432, 15.396139>,  <10.869236, 23.929897, 15.241270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953753, 23.258432, 15.396139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569186, 23.304884, 15.495893>,  <10.338447, 23.332756, 15.555745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.569186, 23.304884, 15.495893>,  <10.953753, 23.258432, 15.396139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.569186, 23.304884, 15.495893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168920, -0.964714, -0.201975,
		0.217129, -0.236309, 0.947108,
		-0.961416, 0.116131, 0.249384,
		10.280762, 23.339724, 15.570707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.782134, 22.797333, 15.955866>,  <10.953753, 23.258432, 15.396139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.782134, 22.797333, 15.955866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.439341, 22.867498, 15.762037>,  <10.233665, 22.909597, 15.645741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.439341, 22.867498, 15.762037>,  <10.782134, 22.797333, 15.955866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.439341, 22.867498, 15.762037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169918, -0.983885, -0.055660,
		-0.486525, 0.034637, 0.872979,
		-0.856983, 0.175415, -0.484571,
		10.182245, 22.920122, 15.616666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.299160, 22.346766, 16.274593>,  <10.782134, 22.797333, 15.955866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.299160, 22.346766, 16.274593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122596, 22.456476, 15.932850>,  <10.016657, 22.522303, 15.727804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122596, 22.456476, 15.932850>,  <10.299160, 22.346766, 16.274593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122596, 22.456476, 15.932850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456157, -0.888518, -0.049564,
		-0.772707, 0.367844, 0.517314,
		-0.441411, 0.274275, -0.854359,
		9.990172, 22.538759, 15.676542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.617310, 22.269384, 16.470558>,  <10.299160, 22.346766, 16.274593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.617310, 22.269384, 16.470558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.638688, 22.223061, 16.073826>,  <9.651515, 22.195267, 15.835786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.638688, 22.223061, 16.073826>,  <9.617310, 22.269384, 16.470558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.638688, 22.223061, 16.073826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358338, -0.929321, 0.089202,
		-0.932061, 0.350644, -0.091169,
		0.053447, -0.115811, -0.991832,
		9.654722, 22.188316, 15.776277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.019612, 21.853014, 16.318974>,  <9.617310, 22.269384, 16.470558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.019612, 21.853014, 16.318974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.261488, 21.801361, 16.004604>,  <9.406613, 21.770370, 15.815983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.261488, 21.801361, 16.004604>,  <9.019612, 21.853014, 16.318974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.261488, 21.801361, 16.004604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337184, -0.935483, -0.105725,
		-0.721567, 0.328932, -0.609217,
		0.604689, -0.129131, -0.785924,
		9.442895, 21.762621, 15.768827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.671934, 21.602285, 15.664218>,  <9.019612, 21.853014, 16.318974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.671934, 21.602285, 15.664218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.054298, 21.485750, 15.649487>,  <9.283717, 21.415829, 15.640650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.054298, 21.485750, 15.649487>,  <8.671934, 21.602285, 15.664218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.054298, 21.485750, 15.649487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292190, -0.931120, -0.218268,
		0.029301, 0.219405, -0.975194,
		0.955911, -0.291337, -0.036825,
		9.341072, 21.398350, 15.638440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.667779, 21.271059, 15.085005>,  <8.671934, 21.602285, 15.664218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.667779, 21.271059, 15.085005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.997021, 21.115932, 15.250943>,  <9.194566, 21.022856, 15.350506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.997021, 21.115932, 15.250943>,  <8.667779, 21.271059, 15.085005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.997021, 21.115932, 15.250943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328363, -0.921024, -0.209506,
		0.463333, 0.036225, -0.885444,
		0.823104, -0.387818, 0.414846,
		9.243952, 20.999588, 15.375397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.714920, 20.627481, 14.736830>,  <8.667779, 21.271059, 15.085005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.714920, 20.627481, 14.736830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.000273, 20.573769, 15.011947>,  <9.171484, 20.541542, 15.177016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.000273, 20.573769, 15.011947>,  <8.714920, 20.627481, 14.736830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.000273, 20.573769, 15.011947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014880, -0.978346, -0.206440,
		0.700619, 0.157505, -0.695935,
		0.713381, -0.134280, 0.687791,
		9.214287, 20.533485, 15.218284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.235069, 20.114939, 14.390832>,  <8.714920, 20.627481, 14.736830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.235069, 20.114939, 14.390832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337011, 20.132523, 14.777224>,  <9.398176, 20.143074, 15.009059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337011, 20.132523, 14.777224>,  <9.235069, 20.114939, 14.390832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.337011, 20.132523, 14.777224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086104, -0.993966, 0.067951,
		0.963138, -0.100492, -0.249531,
		0.254854, 0.043961, 0.965980,
		9.413467, 20.145710, 15.067018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.753480, 19.695940, 14.495862>,  <9.235069, 20.114939, 14.390832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.753480, 19.695940, 14.495862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569540, 19.722223, 14.850087>,  <9.459176, 19.737993, 15.062622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.569540, 19.722223, 14.850087>,  <9.753480, 19.695940, 14.495862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.569540, 19.722223, 14.850087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194589, -0.980477, -0.028292,
		0.866414, -0.185331, 0.463658,
		-0.459849, 0.065710, 0.885563,
		9.431585, 19.741936, 15.115756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.003778, 19.070038, 14.959714>,  <9.753480, 19.695940, 14.495862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.003778, 19.070038, 14.959714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.646156, 19.207335, 15.074848>,  <9.431583, 19.289713, 15.143929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.646156, 19.207335, 15.074848>,  <10.003778, 19.070038, 14.959714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.646156, 19.207335, 15.074848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390536, -0.911991, -0.125512,
		0.219422, -0.224625, 0.949420,
		-0.894055, 0.343243, 0.287835,
		9.377939, 19.310307, 15.161199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.743836, 18.494633, 15.364062>,  <10.003778, 19.070038, 14.959714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.743836, 18.494633, 15.364062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.418649, 18.715540, 15.290217>,  <9.223536, 18.848083, 15.245911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.418649, 18.715540, 15.290217>,  <9.743836, 18.494633, 15.364062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.418649, 18.715540, 15.290217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518625, -0.830871, -0.201698,
		-0.264780, -0.068229, 0.961892,
		-0.812969, 0.552267, -0.184613,
		9.174758, 18.881220, 15.234834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.139454, 18.108456, 15.703412>,  <9.743836, 18.494633, 15.364062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.139454, 18.108456, 15.703412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.992817, 18.358173, 15.427480>,  <8.904835, 18.508005, 15.261921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.992817, 18.358173, 15.427480>,  <9.139454, 18.108456, 15.703412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.992817, 18.358173, 15.427480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687792, -0.681155, -0.250936,
		-0.626540, 0.382469, 0.679091,
		-0.366591, 0.624295, -0.689831,
		8.882839, 18.545462, 15.220531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.395061, 18.169451, 15.849797>,  <9.139454, 18.108456, 15.703412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.395061, 18.169451, 15.849797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.470901, 18.248911, 15.465175>,  <8.516406, 18.296587, 15.234402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.470901, 18.248911, 15.465175>,  <8.395061, 18.169451, 15.849797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.470901, 18.248911, 15.465175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644674, -0.713469, -0.274515,
		-0.740572, 0.671938, -0.007209,
		0.189601, 0.198651, -0.961556,
		8.527781, 18.308506, 15.176708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.809562, 17.998928, 15.449333>,  <8.395061, 18.169451, 15.849797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.809562, 17.998928, 15.449333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.045627, 18.043495, 15.129510>,  <8.187265, 18.070236, 14.937615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.045627, 18.043495, 15.129510>,  <7.809562, 17.998928, 15.449333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.045627, 18.043495, 15.129510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580399, -0.629849, -0.516167,
		-0.561111, 0.768685, -0.307047,
		0.590163, 0.111417, -0.799559,
		8.222675, 18.076920, 14.889643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.333686, 18.070030, 14.868590>,  <7.809562, 17.998928, 15.449333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.333686, 18.070030, 14.868590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.680511, 17.963451, 14.700205>,  <7.888606, 17.899504, 14.599174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.680511, 17.963451, 14.700205>,  <7.333686, 18.070030, 14.868590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.680511, 17.963451, 14.700205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435717, -0.815268, -0.381431,
		-0.241567, 0.514145, -0.822982,
		0.867062, -0.266446, -0.420963,
		7.940629, 17.883518, 14.573915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.160899, 17.839405, 14.138142>,  <7.333686, 18.070030, 14.868590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.160899, 17.839405, 14.138142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.493202, 17.653568, 14.260777>,  <7.692584, 17.542067, 14.334357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.493202, 17.653568, 14.260777>,  <7.160899, 17.839405, 14.138142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.493202, 17.653568, 14.260777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388280, -0.878332, -0.278875,
		0.398848, 0.112636, -0.910073,
		0.830758, -0.464592, 0.306587,
		7.742430, 17.514191, 14.352753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.327209, 17.355717, 13.549759>,  <7.160899, 17.839405, 14.138142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.327209, 17.355717, 13.549759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.533366, 17.237804, 13.871622>,  <7.657061, 17.167057, 14.064740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.533366, 17.237804, 13.871622>,  <7.327209, 17.355717, 13.549759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.533366, 17.237804, 13.871622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055951, -0.948547, -0.311654,
		0.855125, 0.115603, -0.505368,
		0.515393, -0.294778, 0.804658,
		7.687984, 17.149370, 14.113020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.667725, 16.831194, 13.351044>,  <7.327209, 17.355717, 13.549759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.667725, 16.831194, 13.351044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.665053, 16.804319, 13.750131>,  <7.663449, 16.788195, 13.989583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.665053, 16.804319, 13.750131>,  <7.667725, 16.831194, 13.351044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.665053, 16.804319, 13.750131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160936, -0.984662, -0.067386,
		0.986942, -0.161019, -0.004235,
		-0.006680, -0.067187, 0.997718,
		7.663049, 16.784163, 14.049446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.104418, 16.245316, 13.514606>,  <7.667725, 16.831194, 13.351044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.104418, 16.245316, 13.514606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.878100, 16.276617, 13.842937>,  <7.742310, 16.295399, 14.039935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.878100, 16.276617, 13.842937>,  <8.104418, 16.245316, 13.514606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.878100, 16.276617, 13.842937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238181, -0.968560, -0.071840,
		0.789397, -0.236152, 0.566643,
		-0.565793, 0.078253, 0.820825,
		7.708363, 16.300093, 14.089184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.433049, 15.854742, 14.088186>,  <8.104418, 16.245316, 13.514606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.433049, 15.854742, 14.088186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.038086, 15.897260, 14.041326>,  <7.801108, 15.922771, 14.013209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.038086, 15.897260, 14.041326>,  <8.433049, 15.854742, 14.088186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.038086, 15.897260, 14.041326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076769, -0.969532, -0.232624,
		-0.138309, -0.220701, 0.965485,
		-0.987410, 0.106293, -0.117152,
		7.741863, 15.929148, 14.006180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.082559, 15.397392, 14.548298>,  <8.433049, 15.854742, 14.088186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.082559, 15.397392, 14.548298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.823477, 15.459310, 14.249897>,  <7.668028, 15.496460, 14.070857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.823477, 15.459310, 14.249897>,  <8.082559, 15.397392, 14.548298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.823477, 15.459310, 14.249897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083234, -0.958907, -0.271238,
		-0.757332, -0.237775, 0.608204,
		-0.647704, 0.154794, -0.746001,
		7.629166, 15.505748, 14.026096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.682729, 14.829445, 14.452868>,  <8.082559, 15.397392, 14.548298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.682729, 14.829445, 14.452868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.698668, 15.024755, 14.104156>,  <7.708232, 15.141942, 13.894930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.698668, 15.024755, 14.104156>,  <7.682729, 14.829445, 14.452868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.698668, 15.024755, 14.104156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181803, -0.861451, -0.474182,
		-0.982527, -0.139597, -0.123097,
		0.039848, 0.488277, -0.871779,
		7.710623, 15.171239, 13.842623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.131938, 14.632304, 14.988833>,  <7.682729, 14.829445, 14.452868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.131938, 14.632304, 14.988833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.441555, 14.593710, 15.239128>,  <8.627325, 14.570554, 15.389305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.441555, 14.593710, 15.239128>,  <8.131938, 14.632304, 14.988833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.441555, 14.593710, 15.239128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615575, -0.116445, -0.779428,
		0.148067, 0.988499, -0.030740,
		0.774044, -0.096485, 0.625737,
		8.673768, 14.564764, 15.426849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.741014, 15.010318, 15.199845>,  <8.131938, 14.632304, 14.988833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.741014, 15.010318, 15.199845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067056, 15.010361, 15.431570>,  <9.262681, 15.010386, 15.570605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067056, 15.010361, 15.431570>,  <8.741014, 15.010318, 15.199845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.067056, 15.010361, 15.431570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224319, -0.921930, 0.315794,
		0.534120, -0.387357, -0.751446,
		0.815105, 0.000108, 0.579313,
		9.311587, 15.010393, 15.605364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.133544, 14.334281, 15.180448>,  <8.741014, 15.010318, 15.199845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.133544, 14.334281, 15.180448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.154270, 14.531238, 15.527980>,  <9.166706, 14.649412, 15.736499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.154270, 14.531238, 15.527980>,  <9.133544, 14.334281, 15.180448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.154270, 14.531238, 15.527980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285627, -0.826348, 0.485351,
		0.956939, -0.273310, 0.097822,
		0.051816, 0.492392, 0.868830,
		9.169815, 14.678955, 15.788629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.555796, 14.020383, 15.630211>,  <9.133544, 14.334281, 15.180448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.555796, 14.020383, 15.630211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288085, 14.221224, 15.849286>,  <9.127459, 14.341728, 15.980731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.288085, 14.221224, 15.849286>,  <9.555796, 14.020383, 15.630211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.288085, 14.221224, 15.849286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356820, -0.863753, 0.355824,
		0.651728, 0.042718, 0.757249,
		-0.669276, 0.502102, 0.547689,
		9.087302, 14.371855, 16.013594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.656103, 14.009019, 16.365875>,  <9.555796, 14.020383, 15.630211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.656103, 14.009019, 16.365875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.270182, 14.038536, 16.264914>,  <9.038629, 14.056246, 16.204336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.270182, 14.038536, 16.264914>,  <9.656103, 14.009019, 16.365875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.270182, 14.038536, 16.264914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151252, -0.940884, 0.303084,
		-0.215116, 0.330593, 0.918931,
		-0.964805, 0.073792, -0.252402,
		8.980741, 14.060674, 16.189194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.159142, 13.444085, 16.570568>,  <9.656103, 14.009019, 16.365875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.159142, 13.444085, 16.570568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324384, 13.513990, 16.213064>,  <10.423529, 13.555933, 15.998562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.324384, 13.513990, 16.213064>,  <10.159142, 13.444085, 16.570568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.324384, 13.513990, 16.213064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489959, -0.869922, 0.056362,
		-0.767649, -0.461188, -0.444995,
		0.413104, 0.174763, -0.893758,
		10.448315, 13.566420, 15.944937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.227595, 13.755237, 17.246370>,  <10.159142, 13.444085, 16.570568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.227595, 13.755237, 17.246370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.600572, 13.734912, 17.389463>,  <10.824357, 13.722717, 17.475319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.600572, 13.734912, 17.389463>,  <10.227595, 13.755237, 17.246370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.600572, 13.734912, 17.389463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357411, 0.015600, 0.933817,
		-0.053035, -0.998586, -0.003617,
		0.932440, -0.050817, 0.357733,
		10.880303, 13.719668, 17.496784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.109032, 13.597218, 18.000107>,  <10.227595, 13.755237, 17.246370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.109032, 13.597218, 18.000107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.500172, 13.680931, 18.001333>,  <10.734856, 13.731159, 18.002069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.500172, 13.680931, 18.001333>,  <10.109032, 13.597218, 18.000107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.500172, 13.680931, 18.001333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038522, 0.165563, 0.985447,
		0.205736, -0.963736, 0.169958,
		0.977849, 0.209289, 0.003063,
		10.793527, 13.743716, 18.002253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.438633, 13.210926, 18.561218>,  <10.109032, 13.597218, 18.000107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.438633, 13.210926, 18.561218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.711044, 13.493041, 18.482454>,  <10.874491, 13.662310, 18.435196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.711044, 13.493041, 18.482454>,  <10.438633, 13.210926, 18.561218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.711044, 13.493041, 18.482454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071531, 0.331696, 0.940671,
		0.728756, -0.626537, 0.276344,
		0.681027, 0.705287, -0.196909,
		10.915353, 13.704627, 18.423382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.863256, 13.224342, 19.148994>,  <10.438633, 13.210926, 18.561218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.863256, 13.224342, 19.148994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.959776, 13.568568, 18.969572>,  <11.017688, 13.775104, 18.861917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.959776, 13.568568, 18.969572>,  <10.863256, 13.224342, 19.148994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.959776, 13.568568, 18.969572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053099, 0.449816, 0.891541,
		0.968997, -0.238946, 0.062845,
		0.241299, 0.860564, -0.448558,
		11.032166, 13.826737, 18.835005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.437733, 13.489565, 19.560390>,  <10.863256, 13.224342, 19.148994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.437733, 13.489565, 19.560390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.257553, 13.782382, 19.355955>,  <11.149446, 13.958072, 19.233294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.257553, 13.782382, 19.355955>,  <11.437733, 13.489565, 19.560390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.257553, 13.782382, 19.355955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058233, 0.595324, 0.801373,
		0.890901, 0.331215, -0.310792,
		-0.450449, 0.732042, -0.511087,
		11.122418, 14.001995, 19.202629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.922768, 14.109226, 19.593010>,  <11.437733, 13.489565, 19.560390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.922768, 14.109226, 19.593010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.546964, 14.230680, 19.529600>,  <11.321482, 14.303552, 19.491554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.546964, 14.230680, 19.529600>,  <11.922768, 14.109226, 19.593010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.546964, 14.230680, 19.529600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100264, 0.686325, 0.720350,
		0.327521, 0.660881, -0.675253,
		-0.939509, 0.303633, -0.158523,
		11.265111, 14.321770, 19.482042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.949135, 14.852813, 19.499483>,  <11.922768, 14.109226, 19.593010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.949135, 14.852813, 19.499483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.572329, 14.776278, 19.609753>,  <11.346245, 14.730356, 19.675915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.572329, 14.776278, 19.609753>,  <11.949135, 14.852813, 19.499483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.572329, 14.776278, 19.609753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074803, 0.681111, 0.728349,
		-0.327125, 0.706738, -0.627304,
		-0.942016, -0.191337, 0.275675,
		11.289723, 14.718876, 19.692455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.592650, 15.482854, 19.709118>,  <11.949135, 14.852813, 19.499483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.592650, 15.482854, 19.709118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295107, 15.276216, 19.878729>,  <11.116581, 15.152232, 19.980495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295107, 15.276216, 19.878729>,  <11.592650, 15.482854, 19.709118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295107, 15.276216, 19.878729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174100, 0.462771, 0.869213,
		-0.645262, 0.720396, -0.254297,
		-0.743859, -0.516597, 0.424029,
		11.071949, 15.121237, 20.005938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.106180, 15.975244, 19.935301>,  <11.592650, 15.482854, 19.709118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.106180, 15.975244, 19.935301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063258, 15.643294, 20.154316>,  <11.037505, 15.444124, 20.285725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.063258, 15.643294, 20.154316>,  <11.106180, 15.975244, 19.935301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063258, 15.643294, 20.154316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041140, 0.546538, 0.836423,
		-0.993375, 0.112278, -0.024505,
		-0.107305, -0.829874, 0.547536,
		11.031067, 15.394332, 20.318577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.531339, 16.049212, 20.366037>,  <11.106180, 15.975244, 19.935301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.531339, 16.049212, 20.366037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.770365, 15.773608, 20.530077>,  <10.913780, 15.608246, 20.628500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.770365, 15.773608, 20.530077>,  <10.531339, 16.049212, 20.366037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.770365, 15.773608, 20.530077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135433, 0.417378, 0.898584,
		-0.790299, -0.592504, 0.156096,
		0.597566, -0.689010, 0.410098,
		10.949635, 15.566905, 20.653107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.248683, 15.772270, 20.888639>,  <10.531339, 16.049212, 20.366037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.248683, 15.772270, 20.888639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.623804, 15.685525, 20.997082>,  <10.848877, 15.633478, 21.062147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.623804, 15.685525, 20.997082>,  <10.248683, 15.772270, 20.888639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.623804, 15.685525, 20.997082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207327, 0.276524, 0.938376,
		-0.278467, -0.936218, 0.214363,
		0.937802, -0.216863, 0.271106,
		10.905145, 15.620466, 21.078413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.140873, 15.465090, 21.556440>,  <10.248683, 15.772270, 20.888639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.140873, 15.465090, 21.556440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526540, 15.570626, 21.545343>,  <10.757940, 15.633948, 21.538685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526540, 15.570626, 21.545343>,  <10.140873, 15.465090, 21.556440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.526540, 15.570626, 21.545343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015291, 0.049139, 0.998675,
		0.264856, -0.963313, 0.043344,
		0.964167, 0.263842, -0.027744,
		10.815790, 15.649778, 21.537020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.337419, 15.283401, 22.153336>,  <10.140873, 15.465090, 21.556440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.337419, 15.283401, 22.153336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645080, 15.505498, 22.026773>,  <10.829677, 15.638756, 21.950836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645080, 15.505498, 22.026773>,  <10.337419, 15.283401, 22.153336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645080, 15.505498, 22.026773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308068, 0.111636, 0.944792,
		0.559909, -0.824163, -0.085187,
		0.769153, 0.555241, -0.316404,
		10.875826, 15.672071, 21.931852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.910874, 14.844432, 22.401196>,  <10.337419, 15.283401, 22.153336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.910874, 14.844432, 22.401196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.956104, 15.241022, 22.375305>,  <10.983242, 15.478976, 22.359772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.956104, 15.241022, 22.375305>,  <10.910874, 14.844432, 22.401196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.956104, 15.241022, 22.375305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274620, 0.031417, 0.961040,
		0.954881, -0.126444, -0.268727,
		0.113075, 0.991476, -0.064724,
		10.990026, 15.538465, 22.355888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.471517, 14.979291, 22.790094>,  <10.910874, 14.844432, 22.401196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.471517, 14.979291, 22.790094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285028, 15.328877, 22.735214>,  <11.173136, 15.538630, 22.702286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285028, 15.328877, 22.735214>,  <11.471517, 14.979291, 22.790094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285028, 15.328877, 22.735214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172227, 0.241783, 0.954924,
		0.867742, 0.421575, -0.263244,
		-0.466220, 0.873966, -0.137198,
		11.145163, 15.591067, 22.694056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782479, 15.356056, 23.319281>,  <11.471517, 14.979291, 22.790094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.782479, 15.356056, 23.319281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453972, 15.555789, 23.208874>,  <11.256867, 15.675629, 23.142630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453972, 15.555789, 23.208874>,  <11.782479, 15.356056, 23.319281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.453972, 15.555789, 23.208874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149170, 0.279029, 0.948626,
		0.550695, 0.820250, -0.154673,
		-0.821269, 0.499331, -0.276017,
		11.207591, 15.705588, 23.126068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.822014, 16.060947, 23.531507>,  <11.782479, 15.356056, 23.319281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.822014, 16.060947, 23.531507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.427094, 16.001848, 23.508141>,  <11.190143, 15.966389, 23.494120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.427094, 16.001848, 23.508141>,  <11.822014, 16.060947, 23.531507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.427094, 16.001848, 23.508141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106986, 0.346436, 0.931953,
		-0.117455, 0.926365, -0.357843,
		-0.987299, -0.147746, -0.058417,
		11.130905, 15.957524, 23.490616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.479046, 16.666851, 23.816339>,  <11.822014, 16.060947, 23.531507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.479046, 16.666851, 23.816339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200308, 16.380642, 23.836063>,  <11.033065, 16.208916, 23.847897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200308, 16.380642, 23.836063>,  <11.479046, 16.666851, 23.816339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.200308, 16.380642, 23.836063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153729, 0.216160, 0.964180,
		-0.700552, 0.664305, -0.260627,
		-0.696846, -0.715524, 0.049309,
		10.991254, 16.165985, 23.850857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.866194, 16.973089, 24.102884>,  <11.479046, 16.666851, 23.816339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.866194, 16.973089, 24.102884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.798789, 16.587429, 24.184881>,  <10.758347, 16.356033, 24.234079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.798789, 16.587429, 24.184881>,  <10.866194, 16.973089, 24.102884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.798789, 16.587429, 24.184881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204684, 0.237660, 0.949538,
		-0.964214, 0.118050, -0.237395,
		-0.168512, -0.964149, 0.204992,
		10.748236, 16.298185, 24.246378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.357626, 17.047405, 24.593275>,  <10.866194, 16.973089, 24.102884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.357626, 17.047405, 24.593275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485168, 16.669405, 24.622410>,  <10.561694, 16.442604, 24.639891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.485168, 16.669405, 24.622410>,  <10.357626, 17.047405, 24.593275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.485168, 16.669405, 24.622410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063850, 0.098089, 0.993127,
		-0.945650, -0.312014, 0.091615,
		0.318855, -0.945001, 0.072835,
		10.580825, 16.385904, 24.644260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.911614, 16.666935, 25.122984>,  <10.357626, 17.047405, 24.593275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.911614, 16.666935, 25.122984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272189, 16.497644, 25.086559>,  <10.488534, 16.396070, 25.064705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272189, 16.497644, 25.086559>,  <9.911614, 16.666935, 25.122984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.272189, 16.497644, 25.086559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112046, 0.024909, 0.993391,
		-0.418162, -0.905681, 0.069875,
		0.901436, -0.423228, -0.091061,
		10.542620, 16.370676, 25.059240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.961740, 16.279573, 25.654242>,  <9.911614, 16.666935, 25.122984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.961740, 16.279573, 25.654242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.346282, 16.301926, 25.546406>,  <10.577006, 16.315336, 25.481705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.346282, 16.301926, 25.546406>,  <9.961740, 16.279573, 25.654242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.346282, 16.301926, 25.546406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274538, -0.120856, 0.953951,
		0.020726, -0.991096, -0.131527,
		0.961353, 0.055881, -0.269588,
		10.634688, 16.318689, 25.465528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.146888, 15.926222, 26.196367>,  <9.961740, 16.279573, 25.654242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.146888, 15.926222, 26.196367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.474491, 16.104836, 26.052237>,  <10.671053, 16.212004, 25.965759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.474491, 16.104836, 26.052237>,  <10.146888, 15.926222, 26.196367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.474491, 16.104836, 26.052237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382934, 0.042293, 0.922807,
		0.427304, -0.893767, -0.136354,
		0.819008, 0.446533, -0.360326,
		10.720194, 16.238796, 25.944139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.773700, 15.576208, 26.342072>,  <10.146888, 15.926222, 26.196367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.773700, 15.576208, 26.342072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.887257, 15.954331, 26.277824>,  <10.955391, 16.181206, 26.239277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.887257, 15.954331, 26.277824>,  <10.773700, 15.576208, 26.342072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.887257, 15.954331, 26.277824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314018, 0.066611, 0.947077,
		0.905979, -0.319305, -0.277934,
		0.283893, 0.945308, -0.160615,
		10.972425, 16.237925, 26.229639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.425196, 15.625798, 26.720688>,  <10.773700, 15.576208, 26.342072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.425196, 15.625798, 26.720688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.315169, 16.007492, 26.673740>,  <11.249154, 16.236509, 26.645573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.315169, 16.007492, 26.673740>,  <11.425196, 15.625798, 26.720688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.315169, 16.007492, 26.673740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230759, 0.184034, 0.955448,
		0.933321, 0.235727, -0.270820,
		-0.275065, 0.954235, -0.117367,
		11.232650, 16.293762, 26.638531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.009748, 16.079506, 26.849186>,  <11.425196, 15.625798, 26.720688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.009748, 16.079506, 26.849186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.670745, 16.283457, 26.908184>,  <11.467343, 16.405828, 26.943583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.670745, 16.283457, 26.908184>,  <12.009748, 16.079506, 26.849186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.670745, 16.283457, 26.908184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308536, 0.247129, 0.918550,
		0.431898, 0.823985, -0.366759,
		-0.847508, 0.509878, 0.147494,
		11.416492, 16.436420, 26.952433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120881, 16.709558, 27.359556>,  <12.009748, 16.079506, 26.849186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120881, 16.709558, 27.359556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.722605, 16.680243, 27.336836>,  <11.483639, 16.662653, 27.323204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.722605, 16.680243, 27.336836>,  <12.120881, 16.709558, 27.359556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.722605, 16.680243, 27.336836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076238, 0.298359, 0.951404,
		-0.052780, 0.951635, -0.302662,
		-0.995692, -0.073290, -0.056803,
		11.423897, 16.658257, 27.319796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.694579, 17.395142, 27.400957>,  <12.120881, 16.709558, 27.359556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.694579, 17.395142, 27.400957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.448555, 17.100943, 27.514622>,  <11.300941, 16.924423, 27.582821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.448555, 17.100943, 27.514622>,  <11.694579, 17.395142, 27.400957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.448555, 17.100943, 27.514622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137491, 0.454912, 0.879859,
		-0.776401, 0.502096, -0.380922,
		-0.615059, -0.735496, 0.284161,
		11.264037, 16.880293, 27.599871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.066141, 17.655952, 27.703724>,  <11.694579, 17.395142, 27.400957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.066141, 17.655952, 27.703724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067857, 17.284086, 27.851074>,  <11.068886, 17.060966, 27.939484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067857, 17.284086, 27.851074>,  <11.066141, 17.655952, 27.703724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.067857, 17.284086, 27.851074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199665, 0.360166, 0.911271,
		-0.979855, -0.077459, -0.184078,
		0.004288, -0.929667, 0.368376,
		11.069143, 17.005186, 27.961588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.702552, 17.766504, 28.243635>,  <11.066141, 17.655952, 27.703724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.702552, 17.766504, 28.243635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814218, 17.394489, 28.339214>,  <10.881217, 17.171280, 28.396563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814218, 17.394489, 28.339214>,  <10.702552, 17.766504, 28.243635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.814218, 17.394489, 28.339214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057491, 0.232208, 0.970966,
		-0.958521, -0.284796, 0.011355,
		0.279164, -0.930038, 0.238950,
		10.897966, 17.115479, 28.410900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.270330, 17.621424, 28.781298>,  <10.702552, 17.766504, 28.243635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.270330, 17.621424, 28.781298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.535208, 17.325434, 28.828518>,  <10.694134, 17.147840, 28.856850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.535208, 17.325434, 28.828518>,  <10.270330, 17.621424, 28.781298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.535208, 17.325434, 28.828518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036301, 0.125679, 0.991407,
		-0.748453, -0.660788, 0.056361,
		0.662193, -0.739976, 0.118052,
		10.733866, 17.103441, 28.863934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.019581, 17.230011, 29.347332>,  <10.270330, 17.621424, 28.781298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.019581, 17.230011, 29.347332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.412750, 17.159084, 29.327658>,  <10.648652, 17.116528, 29.315853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.412750, 17.159084, 29.327658>,  <10.019581, 17.230011, 29.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.412750, 17.159084, 29.327658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071188, 0.119949, 0.990224,
		-0.169685, -0.976817, 0.130524,
		0.982924, -0.177318, -0.049184,
		10.707627, 17.105890, 29.312902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.160424, 16.607433, 29.748615>,  <10.019581, 17.230011, 29.347332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.160424, 16.607433, 29.748615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.471805, 16.856398, 29.716080>,  <10.658633, 17.005777, 29.696558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.471805, 16.856398, 29.716080>,  <10.160424, 16.607433, 29.748615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.471805, 16.856398, 29.716080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017251, 0.108318, 0.993967,
		0.627468, -0.775157, 0.073583,
		0.778451, 0.622413, -0.081338,
		10.705340, 17.043121, 29.691679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.614836, 16.356464, 30.347488>,  <10.160424, 16.607433, 29.748615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.614836, 16.356464, 30.347488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756438, 16.714897, 30.240372>,  <10.841400, 16.929958, 30.176102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756438, 16.714897, 30.240372>,  <10.614836, 16.356464, 30.347488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756438, 16.714897, 30.240372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139703, 0.232454, 0.962522,
		0.924750, -0.378150, -0.042895,
		0.354007, 0.896084, -0.267791,
		10.862640, 16.983723, 30.160034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.164591, 16.419777, 30.633915>,  <10.614836, 16.356464, 30.347488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.164591, 16.419777, 30.633915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.046709, 16.799242, 30.587978>,  <10.975980, 17.026920, 30.560417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.046709, 16.799242, 30.587978>,  <11.164591, 16.419777, 30.633915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.046709, 16.799242, 30.587978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003515, 0.119101, 0.992876,
		0.955582, 0.293008, -0.031765,
		-0.294704, 0.948663, -0.114840,
		10.958298, 17.083841, 30.553526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615443, 16.823797, 31.109354>,  <11.164591, 16.419777, 30.633915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.615443, 16.823797, 31.109354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293167, 17.048986, 31.035677>,  <11.099802, 17.184099, 30.991470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.293167, 17.048986, 31.035677>,  <11.615443, 16.823797, 31.109354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.293167, 17.048986, 31.035677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035372, 0.264674, 0.963689,
		0.591281, 0.782949, -0.193332,
		-0.805689, 0.562973, -0.184191,
		11.051460, 17.217878, 30.980419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768187, 17.362797, 31.527344>,  <11.615443, 16.823797, 31.109354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768187, 17.362797, 31.527344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.373117, 17.355995, 31.465103>,  <11.136076, 17.351913, 31.427759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.373117, 17.355995, 31.465103>,  <11.768187, 17.362797, 31.527344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.373117, 17.355995, 31.465103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156440, 0.140080, 0.977703,
		0.005170, 0.989994, -0.141014,
		-0.987674, -0.017005, -0.155599,
		11.076816, 17.350893, 31.418423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.590237, 17.877682, 32.006355>,  <11.768187, 17.362797, 31.527344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.590237, 17.877682, 32.006355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258133, 17.662891, 31.946590>,  <11.058870, 17.534018, 31.910730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.258133, 17.662891, 31.946590>,  <11.590237, 17.877682, 32.006355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258133, 17.662891, 31.946590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127705, -0.077669, 0.988766,
		-0.542549, 0.840014, -0.004089,
		-0.830260, -0.536977, -0.149414,
		11.009055, 17.501799, 31.901766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.024410, 18.143351, 32.481678>,  <11.590237, 17.877682, 32.006355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.024410, 18.143351, 32.481678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.898808, 17.772366, 32.400478>,  <10.823446, 17.549774, 32.351757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.898808, 17.772366, 32.400478>,  <11.024410, 18.143351, 32.481678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.898808, 17.772366, 32.400478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304032, -0.104330, 0.946932,
		-0.899424, 0.359063, -0.249218,
		-0.314007, -0.927464, -0.203003,
		10.804605, 17.494127, 32.339577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.486592, 17.964907, 32.975254>,  <11.024410, 18.143351, 32.481678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.486592, 17.964907, 32.975254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546564, 17.595301, 32.834560>,  <10.582547, 17.373537, 32.750145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546564, 17.595301, 32.834560>,  <10.486592, 17.964907, 32.975254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.546564, 17.595301, 32.834560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222712, -0.378179, 0.898543,
		-0.963286, -0.056381, -0.262489,
		0.149929, -0.924014, -0.351738,
		10.591543, 17.318096, 32.729038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.021410, 17.593626, 33.288113>,  <10.486592, 17.964907, 32.975254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.021410, 17.593626, 33.288113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.292342, 17.321463, 33.176208>,  <10.454902, 17.158165, 33.109066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.292342, 17.321463, 33.176208>,  <10.021410, 17.593626, 33.288113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.292342, 17.321463, 33.176208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130944, -0.485709, 0.864257,
		-0.723933, -0.548754, -0.418080,
		0.677330, -0.680409, -0.279764,
		10.495542, 17.117340, 33.092278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.799228, 16.907404, 33.372711>,  <10.021410, 17.593626, 33.288113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.799228, 16.907404, 33.372711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.198107, 16.893074, 33.398983>,  <10.437434, 16.884476, 33.414745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.198107, 16.893074, 33.398983>,  <9.799228, 16.907404, 33.372711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.198107, 16.893074, 33.398983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074815, -0.476562, 0.875952,
		-0.000079, -0.878411, -0.477906,
		0.997197, -0.035824, 0.065681,
		10.497266, 16.882326, 33.418686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.885164, 16.192867, 33.437363>,  <9.799228, 16.907404, 33.372711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.885164, 16.192867, 33.437363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.169055, 16.428926, 33.591255>,  <10.339389, 16.570562, 33.683590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.169055, 16.428926, 33.591255>,  <9.885164, 16.192867, 33.437363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.169055, 16.428926, 33.591255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170520, -0.385970, 0.906615,
		0.683530, -0.709052, -0.173301,
		0.709725, 0.590147, 0.384729,
		10.381972, 16.605970, 33.706673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.154996, 15.811708, 34.012646>,  <9.885164, 16.192867, 33.437363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.154996, 15.811708, 34.012646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.236416, 16.196892, 34.083389>,  <10.285268, 16.428001, 34.125835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.236416, 16.196892, 34.083389>,  <10.154996, 15.811708, 34.012646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.236416, 16.196892, 34.083389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066955, -0.166528, 0.983761,
		0.976772, -0.212087, 0.030578,
		0.203551, 0.962958, 0.176860,
		10.297482, 16.485779, 34.136448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.547050, 15.783073, 34.628979>,  <10.154996, 15.811708, 34.012646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.547050, 15.783073, 34.628979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.454836, 16.162607, 34.715294>,  <10.399507, 16.390327, 34.767082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.454836, 16.162607, 34.715294>,  <10.547050, 15.783073, 34.628979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.454836, 16.162607, 34.715294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038396, -0.230461, 0.972324,
		0.972306, 0.215872, 0.089561,
		-0.230538, 0.948835, 0.215790,
		10.385674, 16.447258, 34.780029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.156973, 16.090193, 34.982212>,  <10.547050, 15.783073, 34.628979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.156973, 16.090193, 34.982212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415849, 16.074959, 34.677662>,  <11.571175, 16.065819, 34.494930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415849, 16.074959, 34.677662>,  <11.156973, 16.090193, 34.982212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.415849, 16.074959, 34.677662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120182, 0.991359, 0.052571,
		0.752796, -0.125527, 0.646175,
		0.647190, -0.038083, -0.761377,
		11.610005, 16.063534, 34.449249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946681, 16.334438, 35.187035>,  <11.156973, 16.090193, 34.982212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946681, 16.334438, 35.187035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832650, 16.388090, 34.807404>,  <11.764232, 16.420280, 34.579624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832650, 16.388090, 34.807404>,  <11.946681, 16.334438, 35.187035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832650, 16.388090, 34.807404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124731, 0.986932, 0.102013,
		0.950354, -0.089298, -0.298082,
		-0.285078, 0.134128, -0.949073,
		11.747127, 16.428329, 34.522682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420918, 16.725922, 34.874981>,  <11.946681, 16.334438, 35.187035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420918, 16.725922, 34.874981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.053057, 16.774837, 34.725700>,  <11.832339, 16.804188, 34.636131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.053057, 16.774837, 34.725700>,  <12.420918, 16.725922, 34.874981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.053057, 16.774837, 34.725700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133771, 0.991000, -0.004913,
		0.369241, -0.054442, -0.927737,
		-0.919655, 0.122290, -0.373201,
		11.777160, 16.811525, 34.613739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.555715, 17.210073, 34.398830>,  <12.420918, 16.725922, 34.874981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.555715, 17.210073, 34.398830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.184945, 17.225420, 34.548145>,  <11.962483, 17.234629, 34.637733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.184945, 17.225420, 34.548145>,  <12.555715, 17.210073, 34.398830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.184945, 17.225420, 34.548145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105172, 0.981452, 0.160281,
		-0.360210, 0.187827, -0.913767,
		-0.926924, 0.038368, 0.373284,
		11.906868, 17.236931, 34.660130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.677790, 16.698265, 34.036610>,  <12.555715, 17.210073, 34.398830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.677790, 16.698265, 34.036610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844282, 16.847357, 34.368351>,  <12.944178, 16.936811, 34.567394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844282, 16.847357, 34.368351>,  <12.677790, 16.698265, 34.036610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844282, 16.847357, 34.368351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766314, 0.634742, 0.099326,
		-0.489402, -0.676886, 0.549829,
		0.416232, 0.372731, 0.829351,
		12.969151, 16.959177, 34.617157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993269, 16.016058, 34.184319>,  <12.677790, 16.698265, 34.036610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993269, 16.016058, 34.184319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.633016, 16.066521, 34.017971>,  <12.416863, 16.096798, 33.918163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.633016, 16.066521, 34.017971>,  <12.993269, 16.016058, 34.184319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.633016, 16.066521, 34.017971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382586, -0.223710, -0.896427,
		-0.206116, -0.966457, 0.153219,
		-0.900636, 0.126149, -0.415863,
		12.362825, 16.104368, 33.893211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.706957, 15.418646, 33.913574>,  <12.993269, 16.016058, 34.184319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.706957, 15.418646, 33.913574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.491539, 15.692822, 33.717556>,  <12.362288, 15.857327, 33.599945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.491539, 15.692822, 33.717556>,  <12.706957, 15.418646, 33.913574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.491539, 15.692822, 33.717556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172653, -0.479481, -0.860400,
		-0.824719, -0.547971, 0.139879,
		-0.538544, 0.685438, -0.490046,
		12.329976, 15.898453, 33.570541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.149367, 15.068191, 33.410393>,  <12.706957, 15.418646, 33.913574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.149367, 15.068191, 33.410393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.231025, 15.430186, 33.261089>,  <12.280019, 15.647384, 33.171509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.231025, 15.430186, 33.261089>,  <12.149367, 15.068191, 33.410393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.231025, 15.430186, 33.261089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202878, -0.412121, -0.888255,
		-0.957688, 0.105605, -0.267734,
		0.204143, 0.904989, -0.373258,
		12.292268, 15.701683, 33.149113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.635374, 15.212695, 32.871616>,  <12.149367, 15.068191, 33.410393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.635374, 15.212695, 32.871616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968929, 15.418937, 32.792843>,  <12.169063, 15.542682, 32.745579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.968929, 15.418937, 32.792843>,  <11.635374, 15.212695, 32.871616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.968929, 15.418937, 32.792843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041058, -0.297876, -0.953721,
		-0.550405, 0.803382, -0.227226,
		0.833887, 0.515604, -0.196938,
		12.219095, 15.573618, 32.733761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.510433, 15.540774, 32.205833>,  <11.635374, 15.212695, 32.871616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.510433, 15.540774, 32.205833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908461, 15.563508, 32.238354>,  <12.147277, 15.577148, 32.257866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908461, 15.563508, 32.238354>,  <11.510433, 15.540774, 32.205833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908461, 15.563508, 32.238354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085799, -0.081834, -0.992946,
		-0.049781, 0.995024, -0.086307,
		0.995068, 0.056835, 0.081298,
		12.206981, 15.580559, 32.262745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.718770, 15.804221, 31.572594>,  <11.510433, 15.540774, 32.205833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.718770, 15.804221, 31.572594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.057872, 15.663993, 31.731796>,  <12.261333, 15.579856, 31.827318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.057872, 15.663993, 31.731796>,  <11.718770, 15.804221, 31.572594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.057872, 15.663993, 31.731796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294917, -0.312134, -0.903104,
		0.440834, 0.882991, -0.161224,
		0.847756, -0.350571, 0.398008,
		12.312199, 15.558822, 31.851198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164020, 16.030085, 31.158709>,  <11.718770, 15.804221, 31.572594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164020, 16.030085, 31.158709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331718, 15.715304, 31.339790>,  <12.432338, 15.526436, 31.448439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331718, 15.715304, 31.339790>,  <12.164020, 16.030085, 31.158709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.331718, 15.715304, 31.339790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361027, -0.313007, -0.878457,
		0.833002, 0.531728, 0.152884,
		0.419247, -0.786951, 0.452703,
		12.457493, 15.479219, 31.475601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.724976, 15.876557, 30.765461>,  <12.164020, 16.030085, 31.158709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.724976, 15.876557, 30.765461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.649452, 15.540286, 30.968483>,  <12.604138, 15.338524, 31.090296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.649452, 15.540286, 30.968483>,  <12.724976, 15.876557, 30.765461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.649452, 15.540286, 30.968483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278088, -0.541467, -0.793398,
		0.941816, -0.008656, 0.336016,
		-0.188809, -0.840677, 0.507555,
		12.592810, 15.288083, 31.120750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312859, 15.531600, 30.677938>,  <12.724976, 15.876557, 30.765461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312859, 15.531600, 30.677938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.038433, 15.261371, 30.785952>,  <12.873777, 15.099233, 30.850760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.038433, 15.261371, 30.785952>,  <13.312859, 15.531600, 30.677938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.038433, 15.261371, 30.785952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279048, -0.587115, -0.759887,
		0.671900, -0.445978, 0.591315,
		-0.686063, -0.675573, 0.270033,
		12.832614, 15.058699, 30.866962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675714, 14.965626, 30.576958>,  <13.312859, 15.531600, 30.677938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675714, 14.965626, 30.576958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292326, 14.852580, 30.592285>,  <13.062294, 14.784753, 30.601480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292326, 14.852580, 30.592285>,  <13.675714, 14.965626, 30.576958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292326, 14.852580, 30.592285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140689, -0.585395, -0.798448,
		0.248083, -0.759897, 0.600843,
		-0.958468, -0.282614, 0.038318,
		13.004786, 14.767796, 30.603781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659784, 14.278942, 30.398893>,  <13.675714, 14.965626, 30.576958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659784, 14.278942, 30.398893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276567, 14.376307, 30.338364>,  <13.046636, 14.434727, 30.302046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276567, 14.376307, 30.338364>,  <13.659784, 14.278942, 30.398893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.276567, 14.376307, 30.338364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050920, -0.664118, -0.745892,
		-0.282058, -0.706892, 0.648650,
		-0.958045, 0.243414, -0.151325,
		12.989153, 14.449331, 30.292967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320417, 13.694345, 30.465715>,  <13.659784, 14.278942, 30.398893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320417, 13.694345, 30.465715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108980, 13.942842, 30.234320>,  <12.982118, 14.091940, 30.095482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108980, 13.942842, 30.234320>,  <13.320417, 13.694345, 30.465715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.108980, 13.942842, 30.234320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107273, -0.627126, -0.771496,
		-0.842070, -0.469864, 0.264852,
		-0.528594, 0.621242, -0.578487,
		12.950402, 14.129214, 30.060774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765639, 13.233605, 30.155569>,  <13.320417, 13.694345, 30.465715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765639, 13.233605, 30.155569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.823986, 13.569681, 29.946646>,  <12.858994, 13.771326, 29.821291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.823986, 13.569681, 29.946646>,  <12.765639, 13.233605, 30.155569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.823986, 13.569681, 29.946646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153813, -0.540796, -0.826971,
		-0.977274, 0.040291, -0.208116,
		0.145868, 0.840189, -0.522308,
		12.867746, 13.821737, 29.789953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.522820, 13.039480, 29.501270>,  <12.765639, 13.233605, 30.155569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.522820, 13.039480, 29.501270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.713840, 13.369013, 29.379124>,  <12.828452, 13.566732, 29.305836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.713840, 13.369013, 29.379124>,  <12.522820, 13.039480, 29.501270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.713840, 13.369013, 29.379124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164871, -0.425412, -0.889855,
		-0.862997, 0.374603, -0.338981,
		0.477549, 0.823831, -0.305368,
		12.857105, 13.616162, 29.287514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.281204, 13.238584, 28.877001>,  <12.522820, 13.039480, 29.501270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.281204, 13.238584, 28.877001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632521, 13.429015, 28.894680>,  <12.843310, 13.543274, 28.905287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632521, 13.429015, 28.894680>,  <12.281204, 13.238584, 28.877001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632521, 13.429015, 28.894680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285853, -0.448747, -0.846708,
		-0.383267, 0.756290, -0.530219,
		0.878291, 0.476080, 0.044198,
		12.896008, 13.571839, 28.907940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423388, 13.564941, 28.269154>,  <12.281204, 13.238584, 28.877001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423388, 13.564941, 28.269154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789030, 13.525249, 28.426411>,  <13.008415, 13.501432, 28.520765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789030, 13.525249, 28.426411>,  <12.423388, 13.564941, 28.269154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789030, 13.525249, 28.426411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314016, -0.440161, -0.841221,
		0.256524, 0.892419, -0.371193,
		0.914106, -0.099233, 0.393145,
		13.063262, 13.495479, 28.544353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.830619, 13.799392, 27.754662>,  <12.423388, 13.564941, 28.269154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.830619, 13.799392, 27.754662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071973, 13.587675, 27.993250>,  <13.216785, 13.460646, 28.136402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.071973, 13.587675, 27.993250>,  <12.830619, 13.799392, 27.754662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.071973, 13.587675, 27.993250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534341, -0.286876, -0.795099,
		0.591952, 0.798469, 0.109725,
		0.603385, -0.529291, 0.596471,
		13.252988, 13.428887, 28.172192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.472407, 14.025405, 27.479593>,  <12.830619, 13.799392, 27.754662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.472407, 14.025405, 27.479593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539795, 13.670269, 27.650875>,  <13.580228, 13.457188, 27.753643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539795, 13.670269, 27.650875>,  <13.472407, 14.025405, 27.479593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.539795, 13.670269, 27.650875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387166, -0.339899, -0.857072,
		0.906488, 0.310176, 0.286478,
		0.168470, -0.887840, 0.428204,
		13.590336, 13.403917, 27.779337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145697, 13.848727, 27.340363>,  <13.472407, 14.025405, 27.479593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145697, 13.848727, 27.340363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.993016, 13.495423, 27.449289>,  <13.901408, 13.283441, 27.514647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.993016, 13.495423, 27.449289>,  <14.145697, 13.848727, 27.340363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.993016, 13.495423, 27.449289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394221, -0.422057, -0.816369,
		0.835999, -0.204255, 0.509299,
		-0.381701, -0.883260, 0.272318,
		13.878506, 13.230446, 27.530985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.680053, 13.325074, 27.187288>,  <14.145697, 13.848727, 27.340363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.680053, 13.325074, 27.187288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.339008, 13.118665, 27.220203>,  <14.134381, 12.994819, 27.239952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.339008, 13.118665, 27.220203>,  <14.680053, 13.325074, 27.187288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.339008, 13.118665, 27.220203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186914, -0.448234, -0.874157,
		0.487971, -0.729935, 0.478622,
		-0.852612, -0.516024, 0.082290,
		14.083224, 12.963858, 27.244890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788538, 12.696071, 26.890676>,  <14.680053, 13.325074, 27.187288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.788538, 12.696071, 26.890676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.392441, 12.745541, 26.864990>,  <14.154782, 12.775223, 26.849579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.392441, 12.745541, 26.864990>,  <14.788538, 12.696071, 26.890676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.392441, 12.745541, 26.864990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007551, -0.412522, -0.910917,
		-0.139148, -0.902513, 0.407563,
		-0.990243, 0.123675, -0.064216,
		14.095368, 12.782643, 26.845726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.515054, 12.102367, 26.485985>,  <14.788538, 12.696071, 26.890676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.515054, 12.102367, 26.485985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189293, 12.334016, 26.471191>,  <13.993836, 12.473005, 26.462315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189293, 12.334016, 26.471191>,  <14.515054, 12.102367, 26.485985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189293, 12.334016, 26.471191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125204, -0.237585, -0.963264,
		-0.566634, -0.779853, 0.265998,
		-0.814401, 0.579122, -0.036983,
		13.944972, 12.507752, 26.460096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905940, 11.734463, 26.129971>,  <14.515054, 12.102367, 26.485985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905940, 11.734463, 26.129971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806224, 12.119861, 26.090921>,  <13.746394, 12.351100, 26.067492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806224, 12.119861, 26.090921>,  <13.905940, 11.734463, 26.129971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806224, 12.119861, 26.090921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177247, -0.144495, -0.973501,
		-0.952070, -0.225381, 0.206798,
		-0.249290, 0.963496, -0.097621,
		13.731437, 12.408910, 26.061636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.365947, 11.758981, 25.610676>,  <13.905940, 11.734463, 26.129971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.365947, 11.758981, 25.610676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.474238, 12.143598, 25.629194>,  <13.539213, 12.374368, 25.640305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.474238, 12.143598, 25.629194>,  <13.365947, 11.758981, 25.610676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.474238, 12.143598, 25.629194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066934, 0.066778, -0.995520,
		-0.960326, 0.266418, 0.082439,
		0.270729, 0.961542, 0.046296,
		13.555457, 12.432060, 25.643084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.011259, 12.078168, 25.092932>,  <13.365947, 11.758981, 25.610676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.011259, 12.078168, 25.092932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314101, 12.325064, 25.178541>,  <13.495807, 12.473201, 25.229906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314101, 12.325064, 25.178541>,  <13.011259, 12.078168, 25.092932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314101, 12.325064, 25.178541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003625, 0.331573, -0.943423,
		-0.653282, 0.713495, 0.253273,
		0.757106, 0.617240, 0.214024,
		13.541233, 12.510236, 25.242748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.897021, 12.846079, 24.878107>,  <13.011259, 12.078168, 25.092932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.897021, 12.846079, 24.878107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296696, 12.836164, 24.890835>,  <13.536500, 12.830215, 24.898472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296696, 12.836164, 24.890835>,  <12.897021, 12.846079, 24.878107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296696, 12.836164, 24.890835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038748, 0.370837, -0.927889,
		0.011202, 0.928367, 0.371495,
		0.999186, -0.024789, 0.031818,
		13.596452, 12.828727, 24.900381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059021, 13.465474, 24.524933>,  <12.897021, 12.846079, 24.878107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059021, 13.465474, 24.524933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392955, 13.245827, 24.509323>,  <13.593315, 13.114038, 24.499958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.392955, 13.245827, 24.509323>,  <13.059021, 13.465474, 24.524933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.392955, 13.245827, 24.509323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062144, 0.164438, -0.984428,
		0.546984, 0.819408, 0.171403,
		0.834834, -0.549118, -0.039023,
		13.643405, 13.081092, 24.497616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624193, 13.916479, 24.252323>,  <13.059021, 13.465474, 24.524933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624193, 13.916479, 24.252323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692030, 13.529799, 24.175661>,  <13.732732, 13.297791, 24.129663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692030, 13.529799, 24.175661>,  <13.624193, 13.916479, 24.252323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.692030, 13.529799, 24.175661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231483, 0.228103, -0.945719,
		0.957943, 0.116021, 0.262459,
		0.169591, -0.966700, -0.191653,
		13.742908, 13.239790, 24.118166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919452, 13.952904, 23.708475>,  <13.624193, 13.916479, 24.252323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919452, 13.952904, 23.708475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885852, 13.554326, 23.711084>,  <13.865692, 13.315180, 23.712650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885852, 13.554326, 23.711084>,  <13.919452, 13.952904, 23.708475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885852, 13.554326, 23.711084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096432, -0.014644, -0.995232,
		0.991789, -0.082971, 0.097319,
		-0.084000, -0.996445, 0.006522,
		13.860652, 13.255393, 23.713041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.478085, 13.782537, 23.324688>,  <13.919452, 13.952904, 23.708475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.478085, 13.782537, 23.324688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198130, 13.497120, 23.311947>,  <14.030157, 13.325870, 23.304302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198130, 13.497120, 23.311947>,  <14.478085, 13.782537, 23.324688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198130, 13.497120, 23.311947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179213, -0.132266, -0.974879,
		0.691405, -0.688013, 0.220447,
		-0.699887, -0.713544, -0.031852,
		13.988164, 13.283057, 23.302391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824430, 13.215260, 23.005272>,  <14.478085, 13.782537, 23.324688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824430, 13.215260, 23.005272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434140, 13.142056, 22.957151>,  <14.199966, 13.098133, 22.928280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434140, 13.142056, 22.957151>,  <14.824430, 13.215260, 23.005272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434140, 13.142056, 22.957151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172291, -0.302318, -0.937507,
		0.135204, -0.935474, 0.326510,
		-0.975723, -0.183010, -0.120299,
		14.141423, 13.087152, 22.921062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753338, 12.538568, 22.715275>,  <14.824430, 13.215260, 23.005272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.753338, 12.538568, 22.715275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413459, 12.725200, 22.617037>,  <14.209532, 12.837179, 22.558094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413459, 12.725200, 22.617037>,  <14.753338, 12.538568, 22.715275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.413459, 12.725200, 22.617037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080736, -0.345166, -0.935063,
		-0.521055, -0.814348, 0.255616,
		-0.849696, 0.466582, -0.245597,
		14.158549, 12.865174, 22.543358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.394333, 12.073351, 22.169420>,  <14.753338, 12.538568, 22.715275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.394333, 12.073351, 22.169420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190963, 12.414884, 22.124741>,  <14.068941, 12.619803, 22.097933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190963, 12.414884, 22.124741>,  <14.394333, 12.073351, 22.169420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190963, 12.414884, 22.124741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069990, -0.170263, -0.982910,
		-0.858257, -0.491918, 0.146326,
		-0.508425, 0.853831, -0.111700,
		14.038435, 12.671033, 22.091230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.760711, 11.919654, 21.779161>,  <14.394333, 12.073351, 22.169420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.760711, 11.919654, 21.779161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.812347, 12.314421, 21.740522>,  <13.843329, 12.551281, 21.717339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.812347, 12.314421, 21.740522>,  <13.760711, 11.919654, 21.779161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.812347, 12.314421, 21.740522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297328, -0.054408, -0.953224,
		-0.946008, 0.151774, 0.286414,
		0.129091, 0.986917, -0.096597,
		13.851075, 12.610496, 21.711544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.150012, 12.020857, 21.412519>,  <13.760711, 11.919654, 21.779161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.150012, 12.020857, 21.412519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414201, 12.319177, 21.377745>,  <13.572714, 12.498169, 21.356880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414201, 12.319177, 21.377745>,  <13.150012, 12.020857, 21.412519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414201, 12.319177, 21.377745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033634, -0.145052, -0.988852,
		-0.750097, 0.650186, -0.120888,
		0.660473, 0.745800, -0.086935,
		13.612343, 12.542917, 21.351664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.830536, 12.490070, 20.913433>,  <13.150012, 12.020857, 21.412519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.830536, 12.490070, 20.913433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227094, 12.542336, 20.916679>,  <13.465028, 12.573696, 20.918627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.227094, 12.542336, 20.916679>,  <12.830536, 12.490070, 20.913433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.227094, 12.542336, 20.916679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015559, -0.056052, -0.998307,
		-0.129989, 0.989841, -0.057602,
		0.991394, 0.130665, 0.008115,
		13.524511, 12.581536, 20.919113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965980, 12.861284, 20.342510>,  <12.830536, 12.490070, 20.913433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965980, 12.861284, 20.342510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326270, 12.710484, 20.428822>,  <13.542444, 12.620003, 20.480608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326270, 12.710484, 20.428822>,  <12.965980, 12.861284, 20.342510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326270, 12.710484, 20.428822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215303, -0.043965, -0.975557,
		0.377274, 0.925168, 0.041569,
		0.900727, -0.377003, 0.215779,
		13.596488, 12.597383, 20.493555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.395114, 13.277955, 19.943836>,  <12.965980, 12.861284, 20.342510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.395114, 13.277955, 19.943836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617765, 12.957338, 20.031195>,  <13.751356, 12.764969, 20.083611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617765, 12.957338, 20.031195>,  <13.395114, 13.277955, 19.943836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617765, 12.957338, 20.031195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391865, 0.021518, -0.919771,
		0.732535, 0.597553, 0.326073,
		0.556628, -0.801541, 0.218397,
		13.784754, 12.716876, 20.096714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.980179, 13.392883, 19.543961>,  <13.395114, 13.277955, 19.943836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.980179, 13.392883, 19.543961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984487, 13.002584, 19.631409>,  <13.987071, 12.768403, 19.683878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984487, 13.002584, 19.631409>,  <13.980179, 13.392883, 19.543961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984487, 13.002584, 19.631409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340528, -0.201987, -0.918282,
		0.940173, 0.084337, 0.330095,
		0.010770, -0.975750, 0.218622,
		13.987718, 12.709858, 19.696995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.672234, 13.119796, 19.562529>,  <13.980179, 13.392883, 19.543961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.672234, 13.119796, 19.562529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.431011, 12.811723, 19.479448>,  <14.286278, 12.626879, 19.429600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.431011, 12.811723, 19.479448>,  <14.672234, 13.119796, 19.562529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.431011, 12.811723, 19.479448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446389, -0.110035, -0.888048,
		0.661106, -0.628259, 0.410159,
		-0.603056, -0.770184, -0.207703,
		14.250094, 12.580667, 19.417137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.158926, 12.508016, 19.195660>,  <14.672234, 13.119796, 19.562529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.158926, 12.508016, 19.195660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.783533, 12.383841, 19.135159>,  <14.558297, 12.309336, 19.098858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.783533, 12.383841, 19.135159>,  <15.158926, 12.508016, 19.195660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783533, 12.383841, 19.135159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281330, -0.433321, -0.856205,
		0.200256, -0.846086, 0.494000,
		-0.938483, -0.310437, -0.151254,
		14.501988, 12.290709, 19.089783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915162, 12.518261, 19.035049>,  <15.158926, 12.508016, 19.195660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915162, 12.518261, 19.035049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311419, 12.565818, 19.008238>,  <16.549173, 12.594352, 18.992151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.311419, 12.565818, 19.008238>,  <15.915162, 12.518261, 19.035049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311419, 12.565818, 19.008238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063114, 0.036391, 0.997343,
		0.121017, -0.992240, 0.028547,
		0.990642, 0.118894, -0.067028,
		16.608612, 12.601485, 18.988129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.204023, 12.186280, 19.587791>,  <15.915162, 12.518261, 19.035049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.204023, 12.186280, 19.587791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481546, 12.458417, 19.493330>,  <16.648060, 12.621699, 19.436653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481546, 12.458417, 19.493330>,  <16.204023, 12.186280, 19.587791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481546, 12.458417, 19.493330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101462, 0.232301, 0.967338,
		0.712979, -0.695105, 0.092143,
		0.693806, 0.680342, -0.236152,
		16.689688, 12.662519, 19.422483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685316, 12.039797, 20.024969>,  <16.204023, 12.186280, 19.587791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685316, 12.039797, 20.024969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762745, 12.422298, 19.937237>,  <16.809202, 12.651800, 19.884598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.762745, 12.422298, 19.937237>,  <16.685316, 12.039797, 20.024969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.762745, 12.422298, 19.937237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155171, 0.190904, 0.969267,
		0.968737, -0.221657, -0.111429,
		0.193572, 0.956255, -0.219331,
		16.820816, 12.709175, 19.871437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329773, 12.144922, 20.372091>,  <16.685316, 12.039797, 20.024969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329773, 12.144922, 20.372091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.169237, 12.504013, 20.299416>,  <17.072916, 12.719467, 20.255810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.169237, 12.504013, 20.299416>,  <17.329773, 12.144922, 20.372091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.169237, 12.504013, 20.299416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343339, 0.331356, 0.878818,
		0.849143, 0.290325, -0.441212,
		-0.401341, 0.897727, -0.181689,
		17.048834, 12.773332, 20.244909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791214, 12.630993, 20.556410>,  <17.329773, 12.144922, 20.372091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791214, 12.630993, 20.556410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443220, 12.828173, 20.551857>,  <17.234425, 12.946481, 20.549126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443220, 12.828173, 20.551857>,  <17.791214, 12.630993, 20.556410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443220, 12.828173, 20.551857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221153, 0.410724, 0.884532,
		0.440704, 0.767012, -0.466340,
		-0.869984, 0.492949, -0.011381,
		17.182224, 12.976057, 20.548443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.958481, 13.339654, 20.716991>,  <17.791214, 12.630993, 20.556410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.958481, 13.339654, 20.716991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576628, 13.258586, 20.804264>,  <17.347515, 13.209945, 20.856627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576628, 13.258586, 20.804264>,  <17.958481, 13.339654, 20.716991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576628, 13.258586, 20.804264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097437, 0.479751, 0.871977,
		-0.281395, 0.853677, -0.438238,
		-0.954632, -0.202670, 0.218179,
		17.290237, 13.197785, 20.869719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735277, 14.000445, 20.984030>,  <17.958481, 13.339654, 20.716991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735277, 14.000445, 20.984030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458910, 13.733730, 21.095764>,  <17.293091, 13.573702, 21.162806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.458910, 13.733730, 21.095764>,  <17.735277, 14.000445, 20.984030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458910, 13.733730, 21.095764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023295, 0.406727, 0.913253,
		-0.722559, 0.624475, -0.296547,
		-0.690917, -0.666787, 0.279336,
		17.251635, 13.533694, 21.179565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.226349, 14.384574, 21.355951>,  <17.735277, 14.000445, 20.984030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.226349, 14.384574, 21.355951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165121, 14.001222, 21.452345>,  <17.128384, 13.771210, 21.510181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165121, 14.001222, 21.452345>,  <17.226349, 14.384574, 21.355951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165121, 14.001222, 21.452345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130873, 0.261371, 0.956325,
		-0.979511, 0.114846, -0.165434,
		-0.153070, -0.958382, 0.240986,
		17.119200, 13.713707, 21.524641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582239, 14.392325, 21.755138>,  <17.226349, 14.384574, 21.355951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.582239, 14.392325, 21.755138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.781776, 14.062724, 21.862598>,  <16.901499, 13.864964, 21.927074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.781776, 14.062724, 21.862598>,  <16.582239, 14.392325, 21.755138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.781776, 14.062724, 21.862598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269911, 0.146853, 0.951621,
		-0.823591, -0.547223, -0.149151,
		0.498845, -0.824003, 0.268648,
		16.931431, 13.815523, 21.943193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158844, 13.984683, 22.049631>,  <16.582239, 14.392325, 21.755138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158844, 13.984683, 22.049631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.500555, 13.883992, 22.231552>,  <16.705582, 13.823578, 22.340704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.500555, 13.883992, 22.231552>,  <16.158844, 13.984683, 22.049631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.500555, 13.883992, 22.231552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450715, 0.077188, 0.889324,
		-0.258973, -0.964715, -0.047518,
		0.854277, -0.251729, 0.454801,
		16.756838, 13.808475, 22.367992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955518, 13.530314, 22.751331>,  <16.158844, 13.984683, 22.049631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955518, 13.530314, 22.751331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.346113, 13.581189, 22.820953>,  <16.580471, 13.611713, 22.862726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.346113, 13.581189, 22.820953>,  <15.955518, 13.530314, 22.751331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346113, 13.581189, 22.820953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190540, 0.131563, 0.972824,
		0.100831, -0.983115, 0.152704,
		0.976488, 0.127187, 0.174057,
		16.639059, 13.619345, 22.873171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097748, 13.159287, 23.311346>,  <15.955518, 13.530314, 22.751331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.097748, 13.159287, 23.311346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372126, 13.449165, 23.285131>,  <16.536753, 13.623092, 23.269403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.372126, 13.449165, 23.285131>,  <16.097748, 13.159287, 23.311346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372126, 13.449165, 23.285131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006029, 0.084400, 0.996414,
		0.727627, -0.683882, 0.053525,
		0.685947, 0.724695, -0.065535,
		16.577909, 13.666574, 23.265471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.613802, 12.905505, 23.727161>,  <16.097748, 13.159287, 23.311346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.613802, 12.905505, 23.727161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692261, 13.295482, 23.685181>,  <16.739336, 13.529468, 23.659992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692261, 13.295482, 23.685181>,  <16.613802, 12.905505, 23.727161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692261, 13.295482, 23.685181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116125, 0.129371, 0.984773,
		0.973675, -0.180971, 0.138591,
		0.196145, 0.974942, -0.104950,
		16.751104, 13.587964, 23.653696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102764, 13.121494, 24.236773>,  <16.613802, 12.905505, 23.727161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102764, 13.121494, 24.236773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.953850, 13.477003, 24.129822>,  <16.864502, 13.690309, 24.065651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.953850, 13.477003, 24.129822>,  <17.102764, 13.121494, 24.236773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953850, 13.477003, 24.129822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072403, 0.259393, 0.963054,
		0.925290, 0.377890, -0.032218,
		-0.372285, 0.888771, -0.267375,
		16.842165, 13.743634, 24.049610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410379, 13.553245, 24.565609>,  <17.102764, 13.121494, 24.236773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.410379, 13.553245, 24.565609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084423, 13.764348, 24.469753>,  <16.888849, 13.891010, 24.412239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084423, 13.764348, 24.469753>,  <17.410379, 13.553245, 24.565609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084423, 13.764348, 24.469753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139894, 0.222138, 0.964927,
		0.562482, 0.819833, -0.107187,
		-0.814889, 0.527759, -0.239638,
		16.839956, 13.922676, 24.397861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559614, 14.184556, 24.877514>,  <17.410379, 13.553245, 24.565609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559614, 14.184556, 24.877514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163851, 14.157428, 24.826176>,  <16.926394, 14.141150, 24.795372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.163851, 14.157428, 24.826176>,  <17.559614, 14.184556, 24.877514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163851, 14.157428, 24.826176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142792, 0.295563, 0.944591,
		-0.026129, 0.952913, -0.302117,
		-0.989408, -0.067821, -0.128346,
		16.867029, 14.137081, 24.787672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218128, 14.902936, 24.928864>,  <17.559614, 14.184556, 24.877514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218128, 14.902936, 24.928864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.961370, 14.605350, 25.003145>,  <16.807316, 14.426798, 25.047714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.961370, 14.605350, 25.003145>,  <17.218128, 14.902936, 24.928864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.961370, 14.605350, 25.003145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257215, 0.437060, 0.861870,
		-0.722367, 0.505462, -0.471905,
		-0.641893, -0.743967, 0.185705,
		16.768803, 14.382159, 25.058857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643431, 15.185514, 25.285753>,  <17.218128, 14.902936, 24.928864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643431, 15.185514, 25.285753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598211, 14.799566, 25.380617>,  <16.571079, 14.567997, 25.437536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598211, 14.799566, 25.380617>,  <16.643431, 15.185514, 25.285753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598211, 14.799566, 25.380617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490135, 0.261780, 0.831408,
		-0.864285, -0.022252, -0.502510,
		-0.113047, -0.964871, 0.237159,
		16.564297, 14.510105, 25.451765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952486, 15.180820, 25.507156>,  <16.643431, 15.185514, 25.285753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952486, 15.180820, 25.507156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124538, 14.859299, 25.671539>,  <16.227770, 14.666386, 25.770170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124538, 14.859299, 25.671539>,  <15.952486, 15.180820, 25.507156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124538, 14.859299, 25.671539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494358, 0.171180, 0.852237,
		-0.755379, -0.569735, -0.323737,
		0.430132, -0.803803, 0.410959,
		16.253578, 14.618157, 25.794827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482294, 15.083610, 26.013805>,  <15.952486, 15.180820, 25.507156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482294, 15.083610, 26.013805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786592, 14.842943, 26.111183>,  <15.969172, 14.698544, 26.169609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786592, 14.842943, 26.111183>,  <15.482294, 15.083610, 26.013805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786592, 14.842943, 26.111183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316752, -0.016779, 0.948360,
		-0.566511, -0.798572, -0.203343,
		0.760746, -0.601666, 0.243444,
		16.014816, 14.662443, 26.184216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180133, 14.409275, 26.267912>,  <15.482294, 15.083610, 26.013805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180133, 14.409275, 26.267912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546758, 14.455247, 26.421120>,  <15.766732, 14.482830, 26.513044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546758, 14.455247, 26.421120>,  <15.180133, 14.409275, 26.267912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546758, 14.455247, 26.421120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380522, -0.043830, 0.923733,
		0.122956, -0.992406, 0.003562,
		0.916561, 0.114933, 0.383021,
		15.821726, 14.489726, 26.536026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.185501, 14.077077, 26.945782>,  <15.180133, 14.409275, 26.267912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.185501, 14.077077, 26.945782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519647, 14.293532, 26.984434>,  <15.720134, 14.423406, 27.007626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519647, 14.293532, 26.984434>,  <15.185501, 14.077077, 26.945782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519647, 14.293532, 26.984434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086803, -0.043723, 0.995265,
		0.542802, -0.839796, 0.010448,
		0.835363, 0.541139, 0.096630,
		15.770256, 14.455873, 27.013424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568629, 13.817537, 27.489834>,  <15.185501, 14.077077, 26.945782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568629, 13.817537, 27.489834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686362, 14.198717, 27.460840>,  <15.757002, 14.427425, 27.443443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686362, 14.198717, 27.460840>,  <15.568629, 13.817537, 27.489834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686362, 14.198717, 27.460840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289237, 0.161110, 0.943603,
		0.910885, -0.256767, 0.323048,
		0.294332, 0.952951, -0.072486,
		15.774662, 14.484602, 27.439095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794928, 14.131931, 28.225037>,  <15.568629, 13.817537, 27.489834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794928, 14.131931, 28.225037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.722720, 14.462865, 28.012272>,  <15.679396, 14.661425, 27.884613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.722720, 14.462865, 28.012272>,  <15.794928, 14.131931, 28.225037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722720, 14.462865, 28.012272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251033, 0.484133, 0.838211,
		0.950997, 0.284840, 0.120294,
		-0.180518, 0.827334, -0.531914,
		15.668565, 14.711065, 27.852697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249392, 14.607989, 28.445686>,  <15.794928, 14.131931, 28.225037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249392, 14.607989, 28.445686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961223, 14.821218, 28.268225>,  <15.788321, 14.949155, 28.161749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.961223, 14.821218, 28.268225>,  <16.249392, 14.607989, 28.445686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961223, 14.821218, 28.268225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149420, 0.505373, 0.849866,
		0.677248, 0.678553, -0.284431,
		-0.720423, 0.533071, -0.443652,
		15.745096, 14.981138, 28.135130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434713, 15.257694, 28.622742>,  <16.249392, 14.607989, 28.445686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434713, 15.257694, 28.622742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045818, 15.253546, 28.529232>,  <15.812482, 15.251057, 28.473125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.045818, 15.253546, 28.529232>,  <16.434713, 15.257694, 28.622742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.045818, 15.253546, 28.529232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195332, 0.586085, 0.786352,
		0.128856, 0.810183, -0.571838,
		-0.972235, -0.010372, -0.233775,
		15.754148, 15.250434, 28.459099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150160, 15.918463, 28.860456>,  <16.434713, 15.257694, 28.622742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150160, 15.918463, 28.860456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.837779, 15.674038, 28.808743>,  <15.650351, 15.527383, 28.777714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.837779, 15.674038, 28.808743>,  <16.150160, 15.918463, 28.860456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837779, 15.674038, 28.808743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521795, 0.524531, 0.672754,
		-0.343281, 0.592849, -0.728483,
		-0.780954, -0.611063, -0.129284,
		15.603493, 15.490719, 28.769957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620774, 16.351982, 28.911985>,  <16.150160, 15.918463, 28.860456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620774, 16.351982, 28.911985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457592, 15.990408, 28.963324>,  <15.359683, 15.773463, 28.994127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.457592, 15.990408, 28.963324>,  <15.620774, 16.351982, 28.911985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457592, 15.990408, 28.963324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541865, 0.352857, 0.762808,
		-0.734817, 0.241645, -0.633760,
		-0.407955, -0.903936, 0.128346,
		15.335206, 15.719227, 29.001827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.895105, 16.456030, 28.918266>,  <15.620774, 16.351982, 28.911985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.895105, 16.456030, 28.918266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994173, 16.124403, 29.118790>,  <15.053614, 15.925427, 29.239103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994173, 16.124403, 29.118790>,  <14.895105, 16.456030, 28.918266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994173, 16.124403, 29.118790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445361, 0.362094, 0.818866,
		-0.860414, -0.426071, -0.279554,
		0.247670, -0.829066, 0.501307,
		15.068474, 15.875683, 29.269182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367000, 16.440962, 29.257471>,  <14.895105, 16.456030, 28.918266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367000, 16.440962, 29.257471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.613070, 16.196829, 29.457090>,  <14.760714, 16.050348, 29.576862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.613070, 16.196829, 29.457090>,  <14.367000, 16.440962, 29.257471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.613070, 16.196829, 29.457090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353958, 0.351797, 0.866575,
		-0.704464, -0.709740, 0.000385,
		0.615178, -0.610334, 0.499047,
		14.797624, 16.013729, 29.606804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977578, 16.256769, 29.866219>,  <14.367000, 16.440962, 29.257471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977578, 16.256769, 29.866219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360791, 16.158438, 29.925201>,  <14.590719, 16.099440, 29.960590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360791, 16.158438, 29.925201>,  <13.977578, 16.256769, 29.866219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.360791, 16.158438, 29.925201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045176, 0.378489, 0.924502,
		-0.283078, -0.892365, 0.351499,
		0.958032, -0.245826, 0.147456,
		14.648201, 16.084690, 29.969439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.938517, 16.027575, 30.425880>,  <13.977578, 16.256769, 29.866219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.938517, 16.027575, 30.425880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.329670, 16.110117, 30.412254>,  <14.564363, 16.159641, 30.404079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.329670, 16.110117, 30.412254>,  <13.938517, 16.027575, 30.425880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.329670, 16.110117, 30.412254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050793, 0.392318, 0.918426,
		0.202885, -0.896384, 0.394123,
		0.977884, 0.206354, -0.034065,
		14.623035, 16.172024, 30.402035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.190004, 15.774036, 31.005861>,  <13.938517, 16.027575, 30.425880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.190004, 15.774036, 31.005861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461980, 16.041653, 30.885817>,  <14.625165, 16.202223, 30.813789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.461980, 16.041653, 30.885817>,  <14.190004, 15.774036, 31.005861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.461980, 16.041653, 30.885817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109928, 0.497662, 0.860377,
		0.724983, -0.552012, 0.411926,
		0.679938, 0.669041, -0.300114,
		14.665961, 16.242365, 30.795782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697313, 16.003004, 31.587694>,  <14.190004, 15.774036, 31.005861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697313, 16.003004, 31.587694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779312, 16.296598, 31.328699>,  <14.828511, 16.472755, 31.173302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.779312, 16.296598, 31.328699>,  <14.697313, 16.003004, 31.587694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.779312, 16.296598, 31.328699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018446, 0.658523, 0.752334,
		0.978589, -0.166171, 0.121457,
		0.204998, 0.733985, -0.647489,
		14.840812, 16.516794, 31.134453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271461, 16.443165, 31.903519>,  <14.697313, 16.003004, 31.587694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271461, 16.443165, 31.903519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072144, 16.666523, 31.638218>,  <14.952553, 16.800537, 31.479038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072144, 16.666523, 31.638218>,  <15.271461, 16.443165, 31.903519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072144, 16.666523, 31.638218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132759, 0.805106, 0.578083,
		0.856784, 0.200003, -0.475311,
		-0.498293, 0.558394, -0.663249,
		14.922655, 16.834042, 31.439243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.710076, 17.066565, 31.823755>,  <15.271461, 16.443165, 31.903519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.710076, 17.066565, 31.823755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338517, 17.147154, 31.699461>,  <15.115582, 17.195507, 31.624884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338517, 17.147154, 31.699461>,  <15.710076, 17.066565, 31.823755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338517, 17.147154, 31.699461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028356, 0.797907, 0.602113,
		0.369248, 0.568113, -0.735462,
		-0.928898, 0.201474, -0.310735,
		15.059848, 17.207596, 31.606241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704312, 17.814558, 31.500105>,  <15.710076, 17.066565, 31.823755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704312, 17.814558, 31.500105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336658, 17.705231, 31.613585>,  <15.116065, 17.639635, 31.681671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336658, 17.705231, 31.613585>,  <15.704312, 17.814558, 31.500105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.336658, 17.705231, 31.613585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163161, 0.919610, 0.357346,
		-0.358560, 0.282162, -0.889843,
		-0.919137, -0.273318, 0.283698,
		15.060916, 17.623236, 31.698694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.477345, 18.484394, 31.692535>,  <15.704312, 17.814558, 31.500105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.477345, 18.484394, 31.692535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251060, 18.813423, 31.669397>,  <15.115289, 19.010839, 31.655514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251060, 18.813423, 31.669397>,  <15.477345, 18.484394, 31.692535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.251060, 18.813423, 31.669397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021253, -0.055583, -0.998228,
		-0.824329, -0.565939, 0.013962,
		-0.565712, 0.822571, -0.057847,
		15.081346, 19.060194, 31.652044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063131, 18.395119, 31.158598>,  <15.477345, 18.484394, 31.692535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063131, 18.395119, 31.158598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070410, 18.790491, 31.218830>,  <15.074777, 19.027714, 31.254969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070410, 18.790491, 31.218830>,  <15.063131, 18.395119, 31.158598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070410, 18.790491, 31.218830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069770, 0.148982, -0.986375,
		-0.997397, 0.028455, -0.066251,
		0.018197, 0.988430, 0.150580,
		15.075869, 19.087021, 31.264004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.607525, 18.655281, 30.699026>,  <15.063131, 18.395119, 31.158598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.607525, 18.655281, 30.699026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841609, 18.964314, 30.797531>,  <14.982059, 19.149733, 30.856634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.841609, 18.964314, 30.797531>,  <14.607525, 18.655281, 30.699026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841609, 18.964314, 30.797531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051404, 0.267742, -0.962119,
		-0.809250, 0.575702, 0.116972,
		0.585212, 0.772581, 0.246263,
		15.017173, 19.196089, 30.871410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.385324, 19.196066, 30.164532>,  <14.607525, 18.655281, 30.699026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.385324, 19.196066, 30.164532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742795, 19.305031, 30.307154>,  <14.957277, 19.370409, 30.392727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742795, 19.305031, 30.307154>,  <14.385324, 19.196066, 30.164532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742795, 19.305031, 30.307154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348280, 0.079902, -0.933979,
		-0.282917, 0.958857, -0.023470,
		0.893677, 0.272413, 0.356556,
		15.010899, 19.386755, 30.414120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.570562, 19.846537, 29.846436>,  <14.385324, 19.196066, 30.164532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.570562, 19.846537, 29.846436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933229, 19.729799, 29.968277>,  <15.150829, 19.659758, 30.041382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933229, 19.729799, 29.968277>,  <14.570562, 19.846537, 29.846436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933229, 19.729799, 29.968277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350169, 0.118019, -0.929222,
		0.235236, 0.949158, 0.209198,
		0.906667, -0.291841, 0.304604,
		15.205230, 19.642246, 30.059658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964004, 20.362886, 29.604603>,  <14.570562, 19.846537, 29.846436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.964004, 20.362886, 29.604603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194691, 20.040010, 29.654942>,  <15.333103, 19.846285, 29.685144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194691, 20.040010, 29.654942>,  <14.964004, 20.362886, 29.604603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194691, 20.040010, 29.654942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468651, 0.200714, -0.860279,
		0.669150, 0.555118, 0.494046,
		0.576719, -0.807191, 0.125849,
		15.367706, 19.797853, 29.692696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.569135, 20.627968, 29.385489>,  <14.964004, 20.362886, 29.604603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.569135, 20.627968, 29.385489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.617329, 20.230886, 29.383390>,  <15.646245, 19.992638, 29.382132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.617329, 20.230886, 29.383390>,  <15.569135, 20.627968, 29.385489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.617329, 20.230886, 29.383390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389103, 0.052084, -0.919721,
		0.913281, 0.108772, 0.392539,
		0.120484, -0.992701, -0.005244,
		15.653474, 19.933077, 29.381817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316574, 20.563520, 29.286829>,  <15.569135, 20.627968, 29.385489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316574, 20.563520, 29.286829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134840, 20.224863, 29.175995>,  <16.025799, 20.021669, 29.109493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.134840, 20.224863, 29.175995>,  <16.316574, 20.563520, 29.286829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134840, 20.224863, 29.175995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521075, -0.000291, -0.853511,
		0.722538, -0.532162, 0.441296,
		-0.454335, -0.846642, -0.277086,
		15.998540, 19.970871, 29.092869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855347, 20.172068, 29.049383>,  <16.316574, 20.563520, 29.286829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855347, 20.172068, 29.049383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.537918, 19.964211, 28.922754>,  <16.347462, 19.839497, 28.846777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.537918, 19.964211, 28.922754>,  <16.855347, 20.172068, 29.049383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.537918, 19.964211, 28.922754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508942, -0.281698, -0.813403,
		0.333501, -0.806609, 0.488015,
		-0.793571, -0.519642, -0.316571,
		16.299847, 19.808317, 28.827784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002638, 19.480686, 28.843332>,  <16.855347, 20.172068, 29.049383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002638, 19.480686, 28.843332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659939, 19.532745, 28.643715>,  <16.454319, 19.563980, 28.523945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.659939, 19.532745, 28.643715>,  <17.002638, 19.480686, 28.843332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659939, 19.532745, 28.643715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424891, -0.370336, -0.826026,
		-0.292315, -0.919736, 0.261988,
		-0.856750, 0.130143, -0.499042,
		16.402914, 19.571789, 28.494001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032005, 18.904055, 28.400091>,  <17.002638, 19.480686, 28.843332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032005, 18.904055, 28.400091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742689, 19.138472, 28.253992>,  <16.569099, 19.279121, 28.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742689, 19.138472, 28.253992>,  <17.032005, 18.904055, 28.400091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742689, 19.138472, 28.253992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172827, -0.358468, -0.917405,
		-0.668570, -0.726672, 0.157991,
		-0.723288, 0.586044, -0.365249,
		16.525703, 19.314285, 28.144417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386505, 18.558304, 28.134993>,  <17.032005, 18.904055, 28.400091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.386505, 18.558304, 28.134993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458857, 18.901369, 27.942451>,  <16.502268, 19.107208, 27.826927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458857, 18.901369, 27.942451>,  <16.386505, 18.558304, 28.134993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458857, 18.901369, 27.942451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207195, -0.511670, -0.833825,
		-0.961433, 0.051087, -0.270253,
		0.180878, 0.857662, -0.481351,
		16.513121, 19.158669, 27.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956092, 18.508844, 27.565445>,  <16.386505, 18.558304, 28.134993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956092, 18.508844, 27.565445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242846, 18.775217, 27.482876>,  <16.414898, 18.935041, 27.433334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242846, 18.775217, 27.482876>,  <15.956092, 18.508844, 27.565445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242846, 18.775217, 27.482876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184882, -0.467059, -0.864682,
		-0.672232, 0.581713, -0.457946,
		0.716885, 0.665932, -0.206424,
		16.457911, 18.974997, 27.420948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909414, 18.606365, 26.838261>,  <15.956092, 18.508844, 27.565445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909414, 18.606365, 26.838261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274593, 18.713875, 26.961086>,  <16.493700, 18.778379, 27.034782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274593, 18.713875, 26.961086>,  <15.909414, 18.606365, 26.838261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274593, 18.713875, 26.961086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404283, -0.493323, -0.770187,
		-0.055523, 0.827281, -0.559038,
		0.912947, 0.268772, 0.307065,
		16.548477, 18.794506, 27.053205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209011, 18.903446, 26.298143>,  <15.909414, 18.606365, 26.838261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209011, 18.903446, 26.298143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.505177, 18.750334, 26.519146>,  <16.682877, 18.658466, 26.651747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.505177, 18.750334, 26.519146>,  <16.209011, 18.903446, 26.298143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505177, 18.750334, 26.519146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442726, -0.340760, -0.829383,
		0.505745, 0.858697, -0.082836,
		0.740416, -0.382783, 0.552505,
		16.727301, 18.635498, 26.684896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870035, 19.101604, 25.988956>,  <16.209011, 18.903446, 26.298143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870035, 19.101604, 25.988956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.924923, 18.770695, 26.206869>,  <16.957855, 18.572149, 26.337616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.924923, 18.770695, 26.206869>,  <16.870035, 19.101604, 25.988956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.924923, 18.770695, 26.206869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376594, -0.465115, -0.801152,
		0.916159, 0.315095, 0.247724,
		0.137219, -0.827275, 0.544782,
		16.966089, 18.522512, 26.370304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571888, 18.755930, 25.812757>,  <16.870035, 19.101604, 25.988956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571888, 18.755930, 25.812757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.343155, 18.477579, 25.986542>,  <17.205915, 18.310568, 26.090813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.343155, 18.477579, 25.986542>,  <17.571888, 18.755930, 25.812757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343155, 18.477579, 25.986542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375086, -0.692774, -0.615934,
		0.729600, -0.189251, 0.657166,
		-0.571834, -0.695879, 0.434463,
		17.171604, 18.268816, 26.116880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026850, 18.254810, 25.833767>,  <17.571888, 18.755930, 25.812757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026850, 18.254810, 25.833767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662611, 18.092796, 25.866659>,  <17.444069, 17.995588, 25.886395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.662611, 18.092796, 25.866659>,  <18.026850, 18.254810, 25.833767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662611, 18.092796, 25.866659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305178, -0.793111, -0.527106,
		0.278717, -0.454885, 0.845811,
		-0.910595, -0.405036, 0.082233,
		17.389433, 17.971285, 25.891329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144762, 17.488047, 26.054888>,  <18.026850, 18.254810, 25.833767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144762, 17.488047, 26.054888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765900, 17.506414, 25.927900>,  <17.538582, 17.517435, 25.851707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765900, 17.506414, 25.927900>,  <18.144762, 17.488047, 26.054888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765900, 17.506414, 25.927900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112507, -0.879275, -0.462836,
		-0.300394, -0.474095, 0.827645,
		-0.947157, 0.045918, -0.317468,
		17.481752, 17.520189, 25.832661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898209, 16.809628, 26.092081>,  <18.144762, 17.488047, 26.054888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898209, 16.809628, 26.092081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.661945, 16.988087, 25.823135>,  <17.520187, 17.095161, 25.661768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.661945, 16.988087, 25.823135>,  <17.898209, 16.809628, 26.092081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.661945, 16.988087, 25.823135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229129, -0.706217, -0.669894,
		-0.773706, -0.549737, 0.314909,
		-0.590660, 0.446146, -0.672365,
		17.484747, 17.121931, 25.621426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811497, 16.314341, 25.611340>,  <17.898209, 16.809628, 26.092081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811497, 16.314341, 25.611340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.643137, 16.622871, 25.420385>,  <17.542122, 16.807989, 25.305813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.643137, 16.622871, 25.420385>,  <17.811497, 16.314341, 25.611340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643137, 16.622871, 25.420385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118346, -0.475084, -0.871946,
		-0.899354, -0.423498, 0.108679,
		-0.420900, 0.771327, -0.477388,
		17.516867, 16.854269, 25.277168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189074, 16.069031, 25.310921>,  <17.811497, 16.314341, 25.611340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189074, 16.069031, 25.310921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347048, 16.383284, 25.120422>,  <17.441832, 16.571835, 25.006123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.347048, 16.383284, 25.120422>,  <17.189074, 16.069031, 25.310921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347048, 16.383284, 25.120422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136927, -0.562933, -0.815081,
		-0.908448, 0.256692, -0.329896,
		0.394934, 0.785631, -0.476247,
		17.465528, 16.618973, 24.977549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910917, 15.998221, 24.712029>,  <17.189074, 16.069031, 25.310921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910917, 15.998221, 24.712029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193104, 16.273462, 24.644106>,  <17.362415, 16.438606, 24.603354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.193104, 16.273462, 24.644106>,  <16.910917, 15.998221, 24.712029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.193104, 16.273462, 24.644106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245466, -0.461973, -0.852249,
		-0.664879, 0.559551, -0.494811,
		0.705466, 0.688102, -0.169805,
		17.404743, 16.479893, 24.593164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678837, 16.294348, 24.097286>,  <16.910917, 15.998221, 24.712029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678837, 16.294348, 24.097286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068445, 16.380220, 24.126131>,  <17.302210, 16.431744, 24.143438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.068445, 16.380220, 24.126131>,  <16.678837, 16.294348, 24.097286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068445, 16.380220, 24.126131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118314, -0.210853, -0.970331,
		-0.193105, 0.953653, -0.230774,
		0.974019, 0.214679, 0.072114,
		17.360651, 16.444624, 24.147766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816523, 16.680510, 23.419071>,  <16.678837, 16.294348, 24.097286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816523, 16.680510, 23.419071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161692, 16.547707, 23.571461>,  <17.368793, 16.468025, 23.662893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161692, 16.547707, 23.571461>,  <16.816523, 16.680510, 23.419071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161692, 16.547707, 23.571461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254396, -0.365994, -0.895171,
		0.436636, 0.869379, -0.231363,
		0.862921, -0.332006, 0.380972,
		17.420568, 16.448105, 23.685753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404116, 16.994463, 23.049353>,  <16.816523, 16.680510, 23.419071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404116, 16.994463, 23.049353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.531506, 16.654856, 23.217993>,  <17.607939, 16.451092, 23.319176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.531506, 16.654856, 23.217993>,  <17.404116, 16.994463, 23.049353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531506, 16.654856, 23.217993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428881, -0.267578, -0.862823,
		0.845361, 0.455602, 0.278910,
		0.318474, -0.849016, 0.421600,
		17.627048, 16.400150, 23.344473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.982260, 16.948158, 22.715405>,  <17.404116, 16.994463, 23.049353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.982260, 16.948158, 22.715405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938662, 16.582718, 22.872095>,  <17.912502, 16.363453, 22.966110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938662, 16.582718, 22.872095>,  <17.982260, 16.948158, 22.715405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.938662, 16.582718, 22.872095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434870, -0.398189, -0.807671,
		0.893872, 0.082318, 0.440699,
		-0.108996, -0.913602, 0.391728,
		17.905962, 16.308638, 22.989613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694975, 16.605160, 22.676088>,  <17.982260, 16.948158, 22.715405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694975, 16.605160, 22.676088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413578, 16.321081, 22.686787>,  <18.244740, 16.150633, 22.693205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.413578, 16.321081, 22.686787>,  <18.694975, 16.605160, 22.676088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.413578, 16.321081, 22.686787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477195, -0.499907, -0.722757,
		0.526671, -0.495692, 0.690585,
		-0.703493, -0.710199, 0.026744,
		18.202530, 16.108021, 22.694811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.022348, 15.904086, 22.615507>,  <18.694975, 16.605160, 22.676088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.022348, 15.904086, 22.615507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.638895, 15.837651, 22.523039>,  <18.408823, 15.797791, 22.467558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.638895, 15.837651, 22.523039>,  <19.022348, 15.904086, 22.615507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.638895, 15.837651, 22.523039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284492, -0.585858, -0.758837,
		-0.009401, -0.793212, 0.608873,
		-0.958632, -0.166086, -0.231170,
		18.351305, 15.787826, 22.453688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.914095, 15.210711, 22.548685>,  <19.022348, 15.904086, 22.615507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.914095, 15.210711, 22.548685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605099, 15.371068, 22.351690>,  <18.419701, 15.467282, 22.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.605099, 15.371068, 22.351690>,  <18.914095, 15.210711, 22.548685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.605099, 15.371068, 22.351690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277393, -0.484607, -0.829583,
		-0.571238, -0.777457, 0.263149,
		-0.772490, 0.400894, -0.492487,
		18.373352, 15.491336, 22.203945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635050, 14.745055, 22.023907>,  <18.914095, 15.210711, 22.548685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635050, 14.745055, 22.023907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441418, 15.063468, 21.878580>,  <18.325239, 15.254516, 21.791384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441418, 15.063468, 21.878580>,  <18.635050, 14.745055, 22.023907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441418, 15.063468, 21.878580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210805, -0.296885, -0.931354,
		-0.849252, -0.527437, -0.024092,
		-0.484079, 0.796033, -0.363317,
		18.296194, 15.302278, 21.769585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.369984, 14.524188, 21.398014>,  <18.635050, 14.745055, 22.023907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.369984, 14.524188, 21.398014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.340679, 14.921688, 21.364328>,  <18.323097, 15.160189, 21.344116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.340679, 14.921688, 21.364328>,  <18.369984, 14.524188, 21.398014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.340679, 14.921688, 21.364328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195224, -0.068519, -0.978362,
		-0.978018, -0.088117, -0.188984,
		-0.073262, 0.993751, -0.084215,
		18.318701, 15.219813, 21.339064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993864, 14.689836, 20.749104>,  <18.369984, 14.524188, 21.398014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.993864, 14.689836, 20.749104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.202717, 15.022420, 20.825052>,  <18.328028, 15.221971, 20.870621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.202717, 15.022420, 20.825052>,  <17.993864, 14.689836, 20.749104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.202717, 15.022420, 20.825052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175407, 0.113178, -0.977969,
		-0.834633, 0.543932, -0.086750,
		0.522130, 0.831462, 0.189871,
		18.359356, 15.271858, 20.882013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.868954, 15.137106, 20.212570>,  <17.993864, 14.689836, 20.749104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.868954, 15.137106, 20.212570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195990, 15.309397, 20.365421>,  <18.392212, 15.412771, 20.457132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195990, 15.309397, 20.365421>,  <17.868954, 15.137106, 20.212570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195990, 15.309397, 20.365421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301509, 0.245133, -0.921413,
		-0.490550, 0.868553, 0.070550,
		0.817590, 0.430727, 0.382127,
		18.441267, 15.438615, 20.480059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.964613, 15.730106, 19.915894>,  <17.868954, 15.137106, 20.212570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.964613, 15.730106, 19.915894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334503, 15.653735, 20.047609>,  <18.556437, 15.607912, 20.126638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334503, 15.653735, 20.047609>,  <17.964613, 15.730106, 19.915894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334503, 15.653735, 20.047609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367813, 0.225567, -0.902127,
		0.097965, 0.955336, 0.278813,
		0.924725, -0.190928, 0.329287,
		18.611921, 15.596457, 20.146395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328192, 16.180098, 19.582039>,  <17.964613, 15.730106, 19.915894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328192, 16.180098, 19.582039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.597086, 15.917508, 19.718941>,  <18.758423, 15.759954, 19.801081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.597086, 15.917508, 19.718941>,  <18.328192, 16.180098, 19.582039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.597086, 15.917508, 19.718941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634762, 0.273164, -0.722813,
		0.381017, 0.703152, 0.600336,
		0.672238, -0.656475, 0.342254,
		18.798758, 15.720566, 19.821617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.960958, 16.498095, 19.709597>,  <18.328192, 16.180098, 19.582039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.960958, 16.498095, 19.709597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079927, 16.120811, 19.650402>,  <19.151310, 15.894442, 19.614885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079927, 16.120811, 19.650402>,  <18.960958, 16.498095, 19.709597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079927, 16.120811, 19.650402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493621, 0.284592, -0.821794,
		0.817237, 0.171373, 0.550231,
		0.297425, -0.943207, -0.147986,
		19.169155, 15.837850, 19.606007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.682028, 16.534967, 19.447956>,  <18.960958, 16.498095, 19.709597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.682028, 16.534967, 19.447956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523857, 16.179457, 19.355249>,  <19.428955, 15.966150, 19.299625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.523857, 16.179457, 19.355249>,  <19.682028, 16.534967, 19.447956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523857, 16.179457, 19.355249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221352, 0.152682, -0.963168,
		0.891427, -0.432163, 0.136358,
		-0.395426, -0.888776, -0.231765,
		19.405230, 15.912824, 19.285721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255486, 16.100452, 19.048710>,  <19.682028, 16.534967, 19.447956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255486, 16.100452, 19.048710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884314, 15.976568, 18.965738>,  <19.661610, 15.902238, 18.915955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884314, 15.976568, 18.965738>,  <20.255486, 16.100452, 19.048710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884314, 15.976568, 18.965738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169571, 0.144831, -0.974818,
		0.331954, -0.939736, -0.081874,
		-0.927929, -0.309711, -0.207429,
		19.605934, 15.883656, 18.903509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336611, 15.720607, 18.410200>,  <20.255486, 16.100452, 19.048710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336611, 15.720607, 18.410200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.948578, 15.816772, 18.423706>,  <19.715757, 15.874472, 18.431810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.948578, 15.816772, 18.423706>,  <20.336611, 15.720607, 18.410200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.948578, 15.816772, 18.423706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023459, 0.231262, -0.972609,
		-0.241639, -0.942719, -0.229984,
		-0.970083, 0.240415, 0.033767,
		19.657553, 15.888897, 18.433836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.111557, 15.308748, 17.775949>,  <20.336611, 15.720607, 18.410200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.111557, 15.308748, 17.775949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848404, 15.597585, 17.861532>,  <19.690512, 15.770886, 17.912882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.848404, 15.597585, 17.861532>,  <20.111557, 15.308748, 17.775949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848404, 15.597585, 17.861532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026359, 0.261842, -0.964751,
		-0.752660, -0.640331, -0.153228,
		-0.657881, 0.722090, 0.213957,
		19.651039, 15.814212, 17.925718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455311, 15.214076, 17.379807>,  <20.111557, 15.308748, 17.775949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455311, 15.214076, 17.379807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557072, 15.591921, 17.462738>,  <19.618128, 15.818628, 17.512497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557072, 15.591921, 17.462738>,  <19.455311, 15.214076, 17.379807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557072, 15.591921, 17.462738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076718, 0.233420, -0.969345,
		-0.964051, 0.230698, 0.131852,
		0.254403, 0.944613, 0.207330,
		19.633392, 15.875305, 17.524937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186783, 15.013702, 16.751631>,  <19.455311, 15.214076, 17.379807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186783, 15.013702, 16.751631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.186651, 14.831858, 17.107906>,  <19.186571, 14.722751, 17.321672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.186651, 14.831858, 17.107906>,  <19.186783, 15.013702, 16.751631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.186651, 14.831858, 17.107906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675395, -0.656744, -0.335454,
		0.737456, -0.601678, -0.306825,
		-0.000331, -0.454611, 0.890690,
		19.186552, 14.695475, 17.375113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.493017, 14.832538, 16.105343>,  <19.186783, 15.013702, 16.751631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.493017, 14.832538, 16.105343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485506, 15.232462, 16.103239>,  <19.480999, 15.472416, 16.101976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485506, 15.232462, 16.103239>,  <19.493017, 14.832538, 16.105343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485506, 15.232462, 16.103239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894900, 0.019153, 0.445855,
		0.445871, 0.003668, -0.895090,
		-0.018779, 0.999810, -0.005258,
		19.479872, 15.532405, 16.101662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.146652, 15.134767, 15.988229>,  <19.493017, 14.832538, 16.105343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.146652, 15.134767, 15.988229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973055, 15.451594, 16.159939>,  <19.868896, 15.641691, 16.262964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.973055, 15.451594, 16.159939>,  <20.146652, 15.134767, 15.988229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.973055, 15.451594, 16.159939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790971, 0.106888, 0.602445,
		0.431294, 0.601001, -0.672892,
		-0.433994, 0.792069, 0.429274,
		19.842857, 15.689215, 16.288721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912926, 14.813235, 16.306068>,  <20.146652, 15.134767, 15.988229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912926, 14.813235, 16.306068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228416, 14.890153, 16.539625>,  <21.417711, 14.936304, 16.679760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228416, 14.890153, 16.539625>,  <20.912926, 14.813235, 16.306068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.228416, 14.890153, 16.539625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178054, 0.980563, -0.082415,
		-0.588391, -0.038961, 0.807637,
		0.788729, 0.192295, 0.583892,
		21.465034, 14.947842, 16.714792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731873, 15.165852, 16.807755>,  <20.912926, 14.813235, 16.306068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731873, 15.165852, 16.807755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099077, 15.293552, 16.713665>,  <21.319401, 15.370173, 16.657211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.099077, 15.293552, 16.713665>,  <20.731873, 15.165852, 16.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.099077, 15.293552, 16.713665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338047, 0.940131, -0.043335,
		0.207306, 0.119298, 0.970975,
		0.918013, 0.319252, -0.235223,
		21.374481, 15.389328, 16.643099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912161, 15.628721, 17.199804>,  <20.731873, 15.165852, 16.807755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912161, 15.628721, 17.199804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133554, 15.731156, 16.882799>,  <21.266392, 15.792617, 16.692596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133554, 15.731156, 16.882799>,  <20.912161, 15.628721, 17.199804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133554, 15.731156, 16.882799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245883, 0.959385, 0.138286,
		0.795736, 0.118326, 0.593972,
		0.553485, 0.256087, -0.792511,
		21.299601, 15.807982, 16.645046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374466, 16.190926, 17.344751>,  <20.912161, 15.628721, 17.199804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374466, 16.190926, 17.344751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319401, 16.197317, 16.948610>,  <21.286362, 16.201153, 16.710926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.319401, 16.197317, 16.948610>,  <21.374466, 16.190926, 17.344751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319401, 16.197317, 16.948610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359109, 0.931034, 0.064939,
		0.923087, 0.364583, -0.122429,
		-0.137661, 0.015979, -0.990350,
		21.278103, 16.202110, 16.651505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.686663, 16.778866, 17.157276>,  <21.374466, 16.190926, 17.344751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.686663, 16.778866, 17.157276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.455168, 16.695856, 16.841810>,  <21.316271, 16.646049, 16.652531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.455168, 16.695856, 16.841810>,  <21.686663, 16.778866, 17.157276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455168, 16.695856, 16.841810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317418, 0.948141, -0.016561,
		0.751204, 0.240752, -0.614599,
		-0.578739, -0.207525, -0.788666,
		21.281546, 16.633598, 16.605209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753048, 17.360397, 16.608389>,  <21.686663, 16.778866, 17.157276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753048, 17.360397, 16.608389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379585, 17.219889, 16.580418>,  <21.155508, 17.135584, 16.563635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.379585, 17.219889, 16.580418>,  <21.753048, 17.360397, 16.608389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.379585, 17.219889, 16.580418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347094, 0.935554, -0.065309,
		0.088361, -0.036706, -0.995412,
		-0.933659, -0.351272, -0.069926,
		21.099487, 17.114508, 16.559441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.484957, 17.865166, 16.354395>,  <21.753048, 17.360397, 16.608389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.484957, 17.865166, 16.354395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165264, 17.642981, 16.446211>,  <20.973448, 17.509668, 16.501301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165264, 17.642981, 16.446211>,  <21.484957, 17.865166, 16.354395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.165264, 17.642981, 16.446211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526188, 0.831233, 0.179380,
		-0.290439, 0.022586, -0.956627,
		-0.799232, -0.555465, 0.229538,
		20.925495, 17.476341, 16.515072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.963524, 18.227861, 16.048298>,  <21.484957, 17.865166, 16.354395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.963524, 18.227861, 16.048298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782419, 18.000977, 16.323479>,  <20.673758, 17.864845, 16.488588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782419, 18.000977, 16.323479>,  <20.963524, 18.227861, 16.048298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.782419, 18.000977, 16.323479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539542, 0.788560, 0.295072,
		-0.709861, -0.237583, -0.663062,
		-0.452760, -0.567210, 0.687954,
		20.646591, 17.830814, 16.529865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.272957, 18.401066, 16.078663>,  <20.963524, 18.227861, 16.048298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.272957, 18.401066, 16.078663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304998, 18.194616, 16.419767>,  <20.324224, 18.070745, 16.624430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304998, 18.194616, 16.419767>,  <20.272957, 18.401066, 16.078663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304998, 18.194616, 16.419767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617624, 0.645793, 0.448879,
		-0.782383, -0.562642, -0.267039,
		0.080106, -0.516125, 0.852759,
		20.329031, 18.039780, 16.675594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626986, 18.297956, 16.341242>,  <20.272957, 18.401066, 16.078663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626986, 18.297956, 16.341242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.864521, 18.262615, 16.661129>,  <20.007042, 18.241411, 16.853062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.864521, 18.262615, 16.661129>,  <19.626986, 18.297956, 16.341242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.864521, 18.262615, 16.661129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566817, 0.659487, 0.493756,
		-0.571030, -0.746505, 0.341548,
		0.593838, -0.088354, 0.799719,
		20.042673, 18.236109, 16.901045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142052, 18.148941, 16.940298>,  <19.626986, 18.297956, 16.341242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142052, 18.148941, 16.940298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490477, 18.295637, 17.070988>,  <19.699532, 18.383654, 17.149401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490477, 18.295637, 17.070988>,  <19.142052, 18.148941, 16.940298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490477, 18.295637, 17.070988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489692, 0.699977, 0.519840,
		-0.038054, -0.612808, 0.789315,
		0.871065, 0.366739, 0.326725,
		19.751797, 18.405659, 17.169004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.016088, 18.258675, 17.657936>,  <19.142052, 18.148941, 16.940298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.016088, 18.258675, 17.657936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333593, 18.479301, 17.555395>,  <19.524096, 18.611677, 17.493870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333593, 18.479301, 17.555395>,  <19.016088, 18.258675, 17.657936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333593, 18.479301, 17.555395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459739, 0.820034, 0.340857,
		0.398223, -0.152705, 0.904489,
		0.793762, 0.551566, -0.256352,
		19.571722, 18.644772, 17.478489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909151, 18.788712, 18.058477>,  <19.016088, 18.258675, 17.657936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909151, 18.788712, 18.058477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155598, 18.925226, 17.774527>,  <19.303467, 19.007135, 17.604156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155598, 18.925226, 17.774527>,  <18.909151, 18.788712, 18.058477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155598, 18.925226, 17.774527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354015, 0.925078, 0.137490,
		0.703613, 0.166596, 0.690778,
		0.616118, 0.341286, -0.709875,
		19.340433, 19.027613, 17.561563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134024, 19.416809, 18.330297>,  <18.909151, 18.788712, 18.058477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134024, 19.416809, 18.330297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.208172, 19.461821, 17.939816>,  <19.252661, 19.488829, 17.705526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.208172, 19.461821, 17.939816>,  <19.134024, 19.416809, 18.330297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.208172, 19.461821, 17.939816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520383, 0.853933, -0.000379,
		0.833570, 0.508070, 0.216853,
		0.185370, 0.112530, -0.976204,
		19.263783, 19.495579, 17.646954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.136215, 20.057039, 18.249266>,  <19.134024, 19.416809, 18.330297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.136215, 20.057039, 18.249266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130150, 19.968801, 17.859167>,  <19.126511, 19.915859, 17.625107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130150, 19.968801, 17.859167>,  <19.136215, 20.057039, 18.249266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130150, 19.968801, 17.859167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399578, 0.895429, -0.196329,
		0.916574, 0.386710, -0.101723,
		-0.015164, -0.220597, -0.975247,
		19.125601, 19.902622, 17.566593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.430592, 20.559950, 17.863186>,  <19.136215, 20.057039, 18.249266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.430592, 20.559950, 17.863186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187750, 20.378967, 17.601894>,  <19.042046, 20.270378, 17.445120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187750, 20.378967, 17.601894>,  <19.430592, 20.559950, 17.863186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.187750, 20.378967, 17.601894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453458, 0.872334, -0.182782,
		0.652533, 0.185243, -0.734769,
		-0.607105, -0.452459, -0.653226,
		19.005619, 20.243229, 17.405926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193871, 21.066975, 17.350752>,  <19.430592, 20.559950, 17.863186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193871, 21.066975, 17.350752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941816, 20.781595, 17.228168>,  <18.790583, 20.610367, 17.154619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941816, 20.781595, 17.228168>,  <19.193871, 21.066975, 17.350752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941816, 20.781595, 17.228168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649573, 0.700587, -0.295350,
		0.425418, 0.012956, -0.904904,
		-0.630138, -0.713449, -0.306458,
		18.752775, 20.567560, 17.136230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967651, 21.304701, 16.645767>,  <19.193871, 21.066975, 17.350752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967651, 21.304701, 16.645767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.695534, 21.052843, 16.795834>,  <18.532263, 20.901728, 16.885874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.695534, 21.052843, 16.795834>,  <18.967651, 21.304701, 16.645767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.695534, 21.052843, 16.795834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728394, 0.523871, -0.441589,
		0.081506, -0.573679, -0.815015,
		-0.680293, -0.629644, 0.375166,
		18.491446, 20.863951, 16.908384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.495920, 21.107330, 16.046253>,  <18.967651, 21.304701, 16.645767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.495920, 21.107330, 16.046253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300503, 21.034782, 16.387646>,  <18.183252, 20.991255, 16.592482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300503, 21.034782, 16.387646>,  <18.495920, 21.107330, 16.046253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300503, 21.034782, 16.387646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778107, 0.533160, -0.332100,
		-0.394809, -0.826345, -0.401596,
		-0.488545, -0.181368, 0.853481,
		18.153940, 20.980371, 16.643690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.807434, 20.869438, 15.928224>,  <18.495920, 21.107330, 16.046253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.807434, 20.869438, 15.928224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792383, 21.071444, 16.273140>,  <17.783352, 21.192646, 16.480089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792383, 21.071444, 16.273140>,  <17.807434, 20.869438, 15.928224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792383, 21.071444, 16.273140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861223, 0.421268, -0.284302,
		-0.506832, -0.753322, 0.419078,
		-0.037627, 0.505014, 0.862291,
		17.781096, 21.222948, 16.531828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138903, 21.007835, 15.975991>,  <17.807434, 20.869438, 15.928224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138903, 21.007835, 15.975991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308615, 21.246941, 16.248070>,  <17.410442, 21.390404, 16.411316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.308615, 21.246941, 16.248070>,  <17.138903, 21.007835, 15.975991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.308615, 21.246941, 16.248070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808972, 0.587726, -0.011896,
		-0.406880, -0.545212, 0.732934,
		0.424279, 0.597764, 0.680195,
		17.435898, 21.426270, 16.452129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529781, 21.252218, 16.381496>,  <17.138903, 21.007835, 15.975991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.529781, 21.252218, 16.381496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828848, 21.499683, 16.478039>,  <17.008287, 21.648163, 16.535963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.828848, 21.499683, 16.478039>,  <16.529781, 21.252218, 16.381496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828848, 21.499683, 16.478039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605286, 0.784382, -0.135549,
		-0.273173, -0.044742, 0.960924,
		0.747667, 0.618662, 0.241354,
		17.053148, 21.685282, 16.550446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.200594, 21.791035, 16.791677>,  <16.529781, 21.252218, 16.381496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.200594, 21.791035, 16.791677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.544697, 21.948479, 16.662045>,  <16.751158, 22.042946, 16.584265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.544697, 21.948479, 16.662045>,  <16.200594, 21.791035, 16.791677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544697, 21.948479, 16.662045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500352, 0.773915, -0.388207,
		0.098008, 0.496112, 0.862710,
		0.860258, 0.393611, -0.324080,
		16.802774, 22.066563, 16.564821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262733, 22.550667, 17.007191>,  <16.200594, 21.791035, 16.791677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262733, 22.550667, 17.007191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.461315, 22.479780, 16.667278>,  <16.580463, 22.437248, 16.463331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.461315, 22.479780, 16.667278>,  <16.262733, 22.550667, 17.007191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.461315, 22.479780, 16.667278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479697, 0.759881, -0.438716,
		0.723480, 0.625440, 0.292235,
		0.496454, -0.177218, -0.849781,
		16.610252, 22.426615, 16.412344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.524426, 23.226664, 16.763325>,  <16.262733, 22.550667, 17.007191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.524426, 23.226664, 16.763325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488825, 22.998703, 16.436573>,  <16.467464, 22.861927, 16.240522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488825, 22.998703, 16.436573>,  <16.524426, 23.226664, 16.763325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488825, 22.998703, 16.436573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592815, 0.689363, -0.416352,
		0.800406, 0.447201, -0.399201,
		-0.089001, -0.569903, -0.816878,
		16.462124, 22.827732, 16.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795185, 23.488167, 15.992690>,  <16.524426, 23.226664, 16.763325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795185, 23.488167, 15.992690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483135, 23.237919, 15.991451>,  <16.295906, 23.087770, 15.990707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483135, 23.237919, 15.991451>,  <16.795185, 23.488167, 15.992690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483135, 23.237919, 15.991451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611427, 0.763458, -0.208060,
		0.132531, -0.160418, -0.978111,
		-0.780123, -0.625618, -0.003098,
		16.249098, 23.050234, 15.990521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545860, 23.819902, 15.947683>,  <16.795185, 23.488167, 15.992690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545860, 23.819902, 15.947683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737196, 23.481190, 16.040764>,  <17.851997, 23.277962, 16.096611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.737196, 23.481190, 16.040764>,  <17.545860, 23.819902, 15.947683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.737196, 23.481190, 16.040764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816920, 0.526298, 0.235907,
		-0.322232, 0.077254, 0.943503,
		0.478339, -0.846783, 0.232700,
		17.880697, 23.227154, 16.110575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116467, 24.091061, 16.277401>,  <17.545860, 23.819902, 15.947683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.116467, 24.091061, 16.277401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431429, 24.255310, 16.461306>,  <18.620407, 24.353861, 16.571648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431429, 24.255310, 16.461306>,  <18.116467, 24.091061, 16.277401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431429, 24.255310, 16.461306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614424, -0.583000, -0.531596,
		0.049753, 0.701069, -0.711355,
		0.787406, 0.410625, 0.459759,
		18.667650, 24.378498, 16.599234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587030, 24.193933, 15.749090>,  <18.116467, 24.091061, 16.277401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587030, 24.193933, 15.749090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801565, 24.184956, 16.086573>,  <18.930286, 24.179569, 16.289062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801565, 24.184956, 16.086573>,  <18.587030, 24.193933, 15.749090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801565, 24.184956, 16.086573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797529, -0.313665, -0.515328,
		0.276208, 0.949268, -0.150328,
		0.536337, -0.022447, 0.843705,
		18.962467, 24.178221, 16.339684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193354, 24.550983, 15.710166>,  <18.587030, 24.193933, 15.749090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193354, 24.550983, 15.710166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279341, 24.259466, 15.970211>,  <19.330933, 24.084555, 16.126238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.279341, 24.259466, 15.970211>,  <19.193354, 24.550983, 15.710166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.279341, 24.259466, 15.970211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763422, -0.289755, -0.577260,
		0.609078, 0.620403, 0.494090,
		0.214969, -0.728795, 0.650113,
		19.343832, 24.040827, 16.165245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853731, 24.534557, 15.917524>,  <19.193354, 24.550983, 15.710166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853731, 24.534557, 15.917524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728842, 24.156506, 15.955981>,  <19.653908, 23.929674, 15.979055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728842, 24.156506, 15.955981>,  <19.853731, 24.534557, 15.917524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.728842, 24.156506, 15.955981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641800, -0.284461, -0.712162,
		0.700435, -0.160649, 0.695401,
		-0.312223, -0.945132, 0.096142,
		19.635176, 23.872967, 15.984824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513020, 24.050070, 16.154814>,  <19.853731, 24.534557, 15.917524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513020, 24.050070, 16.154814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211023, 23.915182, 15.929861>,  <20.029825, 23.834249, 15.794889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211023, 23.915182, 15.929861>,  <20.513020, 24.050070, 16.154814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.211023, 23.915182, 15.929861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649865, -0.270286, -0.710367,
		0.087545, -0.901792, 0.423210,
		-0.754991, -0.337218, -0.562381,
		19.984526, 23.814016, 15.761147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546843, 23.272005, 16.100142>,  <20.513020, 24.050070, 16.154814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546843, 23.272005, 16.100142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454674, 23.453623, 15.755875>,  <20.399372, 23.562593, 15.549314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454674, 23.453623, 15.755875>,  <20.546843, 23.272005, 16.100142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454674, 23.453623, 15.755875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866169, -0.307373, -0.394047,
		-0.443461, -0.836281, -0.322454,
		-0.230420, 0.454044, -0.860669,
		20.385548, 23.589836, 15.497674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.431467, 22.840570, 15.479233>,  <20.546843, 23.272005, 16.100142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.431467, 22.840570, 15.479233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.567844, 23.202826, 15.378370>,  <20.649670, 23.420177, 15.317853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.567844, 23.202826, 15.378370>,  <20.431467, 22.840570, 15.479233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567844, 23.202826, 15.378370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823018, -0.417173, -0.385498,
		-0.454313, -0.076096, -0.887586,
		0.340942, 0.905636, -0.252155,
		20.670128, 23.474516, 15.302724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977335, 22.367311, 15.635846>,  <20.431467, 22.840570, 15.479233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977335, 22.367311, 15.635846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878160, 22.137043, 15.324172>,  <20.818657, 21.998882, 15.137167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878160, 22.137043, 15.324172>,  <20.977335, 22.367311, 15.635846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878160, 22.137043, 15.324172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458735, -0.778176, 0.428957,
		-0.853282, -0.251086, 0.457018,
		-0.247935, -0.575671, -0.779186,
		20.803780, 21.964342, 15.090416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.662483, 21.717636, 15.935592>,  <20.977335, 22.367311, 15.635846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.662483, 21.717636, 15.935592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.777466, 21.622839, 15.564387>,  <20.846455, 21.565960, 15.341665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.777466, 21.622839, 15.564387>,  <20.662483, 21.717636, 15.935592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777466, 21.622839, 15.564387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308943, -0.894174, 0.324050,
		-0.906600, -0.379852, -0.183818,
		0.287456, -0.236994, -0.928010,
		20.863703, 21.551741, 15.285984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.420034, 21.106758, 15.668026>,  <20.662483, 21.717636, 15.935592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.420034, 21.106758, 15.668026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731415, 21.142292, 15.419472>,  <20.918243, 21.163612, 15.270339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731415, 21.142292, 15.419472>,  <20.420034, 21.106758, 15.668026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.731415, 21.142292, 15.419472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292591, -0.927166, 0.233996,
		-0.555340, -0.363966, -0.747747,
		0.778453, 0.088837, -0.621385,
		20.964951, 21.168943, 15.233056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.487717, 20.433922, 15.391890>,  <20.420034, 21.106758, 15.668026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.487717, 20.433922, 15.391890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825924, 20.606573, 15.266161>,  <21.028849, 20.710165, 15.190723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.825924, 20.606573, 15.266161>,  <20.487717, 20.433922, 15.391890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825924, 20.606573, 15.266161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398232, -0.901904, -0.167274,
		-0.355689, 0.016260, -0.934463,
		0.845516, 0.431630, -0.314322,
		21.079578, 20.736063, 15.171865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.770393, 20.082361, 14.685922>,  <20.487717, 20.433922, 15.391890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.770393, 20.082361, 14.685922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070929, 20.248306, 14.891204>,  <21.251249, 20.347874, 15.014373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070929, 20.248306, 14.891204>,  <20.770393, 20.082361, 14.685922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070929, 20.248306, 14.891204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560584, -0.811563, -0.164654,
		0.348190, 0.411406, -0.842324,
		0.751338, 0.414863, 0.513206,
		21.296329, 20.372765, 15.045165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.410229, 19.776567, 14.366931>,  <20.770393, 20.082361, 14.685922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.410229, 19.776567, 14.366931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556324, 19.932388, 14.705126>,  <21.643982, 20.025881, 14.908043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556324, 19.932388, 14.705126>,  <21.410229, 19.776567, 14.366931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556324, 19.932388, 14.705126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615869, -0.782181, 0.094336,
		0.698073, 0.486254, -0.525596,
		0.365240, 0.389552, 0.845487,
		21.665895, 20.049253, 14.958772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.116726, 19.735373, 14.208733>,  <21.410229, 19.776567, 14.366931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.116726, 19.735373, 14.208733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.072708, 19.764912, 14.605205>,  <22.046297, 19.782635, 14.843087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.072708, 19.764912, 14.605205>,  <22.116726, 19.735373, 14.208733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.072708, 19.764912, 14.605205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621343, -0.773244, 0.126596,
		0.775773, 0.629794, 0.039207,
		-0.110046, 0.073848, 0.991179,
		22.039694, 19.787066, 14.902558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.787617, 19.661074, 14.472925>,  <22.116726, 19.735373, 14.208733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.787617, 19.661074, 14.472925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536699, 19.573441, 14.771857>,  <22.386148, 19.520861, 14.951217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.536699, 19.573441, 14.771857>,  <22.787617, 19.661074, 14.472925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.536699, 19.573441, 14.771857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454825, -0.882018, 0.123202,
		0.632167, 0.417188, 0.652932,
		-0.627296, -0.219085, 0.747330,
		22.348511, 19.507715, 14.996057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.251648, 19.447027, 15.021071>,  <22.787617, 19.661074, 14.472925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.251648, 19.447027, 15.021071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.881718, 19.317593, 15.101062>,  <22.659760, 19.239931, 15.149055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.881718, 19.317593, 15.101062>,  <23.251648, 19.447027, 15.021071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.881718, 19.317593, 15.101062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362131, -0.909876, 0.202449,
		0.116443, 0.259648, 0.958657,
		-0.924825, -0.323586, 0.199975,
		22.604271, 19.220516, 15.161055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364412, 18.978714, 15.537800>,  <23.251648, 19.447027, 15.021071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364412, 18.978714, 15.537800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990541, 18.884678, 15.431132>,  <22.766218, 18.828257, 15.367131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990541, 18.884678, 15.431132>,  <23.364412, 18.978714, 15.537800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.990541, 18.884678, 15.431132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246748, -0.969022, -0.010587,
		-0.255920, -0.075695, 0.963730,
		-0.934676, -0.235089, -0.266669,
		22.710138, 18.814152, 15.351131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010078, 18.530523, 16.064575>,  <23.364412, 18.978714, 15.537800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010078, 18.530523, 16.064575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.849022, 18.477814, 15.702247>,  <22.752388, 18.446188, 15.484849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.849022, 18.477814, 15.702247>,  <23.010078, 18.530523, 16.064575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.849022, 18.477814, 15.702247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290636, -0.956781, 0.009998,
		-0.867991, -0.259239, 0.423540,
		-0.402643, -0.131774, -0.905822,
		22.728230, 18.438282, 15.430500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669271, 17.891853, 16.107967>,  <23.010078, 18.530523, 16.064575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669271, 17.891853, 16.107967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.672108, 17.937763, 15.710622>,  <22.673809, 17.965309, 15.472214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.672108, 17.937763, 15.710622>,  <22.669271, 17.891853, 16.107967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.672108, 17.937763, 15.710622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283470, -0.952872, -0.108073,
		-0.958955, -0.280823, -0.039292,
		0.007091, 0.114775, -0.993366,
		22.674234, 17.972197, 15.412612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.285730, 17.372086, 15.839173>,  <22.669271, 17.891853, 16.107967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.285730, 17.372086, 15.839173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.528612, 17.493847, 15.545604>,  <22.674341, 17.566904, 15.369462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.528612, 17.493847, 15.545604>,  <22.285730, 17.372086, 15.839173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.528612, 17.493847, 15.545604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274432, -0.947203, -0.165812,
		-0.745648, -0.100731, -0.658682,
		0.607203, 0.304401, -0.733924,
		22.710773, 17.585167, 15.325426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108480, 16.948853, 15.204446>,  <22.285730, 17.372086, 15.839173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108480, 16.948853, 15.204446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.475834, 17.105902, 15.184753>,  <22.696245, 17.200130, 15.172938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.475834, 17.105902, 15.184753>,  <22.108480, 16.948853, 15.204446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.475834, 17.105902, 15.184753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384916, -0.915264, -0.118873,
		-0.091731, 0.090221, -0.991688,
		0.918382, 0.392621, -0.049230,
		22.751348, 17.223688, 15.169984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.408457, 16.527594, 14.730874>,  <22.108480, 16.948853, 15.204446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.408457, 16.527594, 14.730874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.718250, 16.706720, 14.909596>,  <22.904127, 16.814196, 15.016829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.718250, 16.706720, 14.909596>,  <22.408457, 16.527594, 14.730874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.718250, 16.706720, 14.909596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451910, -0.885912, 0.104580,
		0.442662, 0.120920, -0.888498,
		0.774485, 0.447815, 0.446805,
		22.950596, 16.841064, 15.043638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048328, 16.213350, 14.432032>,  <22.408457, 16.527594, 14.730874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048328, 16.213350, 14.432032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.210138, 16.381411, 14.756951>,  <23.307224, 16.482246, 14.951903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.210138, 16.381411, 14.756951>,  <23.048328, 16.213350, 14.432032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.210138, 16.381411, 14.756951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644254, -0.761325, 0.072946,
		0.649072, 0.493819, -0.578661,
		0.404527, 0.420152, 0.812299,
		23.331497, 16.507456, 15.000641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.824127, 16.179136, 14.305466>,  <23.048328, 16.213350, 14.432032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.824127, 16.179136, 14.305466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.747551, 16.180979, 14.698063>,  <23.701605, 16.182085, 14.933621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.747551, 16.180979, 14.698063>,  <23.824127, 16.179136, 14.305466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.747551, 16.180979, 14.698063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758114, -0.634435, 0.150849,
		0.623389, 0.772962, 0.117964,
		-0.191441, 0.004607, 0.981493,
		23.690119, 16.182362, 14.992511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463949, 16.071966, 14.647525>,  <23.824127, 16.179136, 14.305466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463949, 16.071966, 14.647525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201601, 16.007456, 14.942502>,  <24.044191, 15.968750, 15.119489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201601, 16.007456, 14.942502>,  <24.463949, 16.071966, 14.647525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201601, 16.007456, 14.942502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706627, -0.474811, 0.524626,
		0.265537, 0.865185, 0.425376,
		-0.655872, -0.161274, 0.737443,
		24.004839, 15.959073, 15.163735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616949, 16.492445, 15.355484>,  <24.463949, 16.071966, 14.647525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616949, 16.492445, 15.355484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444897, 16.131338, 15.356230>,  <24.341665, 15.914675, 15.356677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444897, 16.131338, 15.356230>,  <24.616949, 16.492445, 15.355484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444897, 16.131338, 15.356230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758021, -0.360042, 0.543852,
		-0.490299, 0.235339, 0.839179,
		-0.430129, -0.902765, 0.001864,
		24.315859, 15.860509, 15.356789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616470, 16.205044, 16.020966>,  <24.616949, 16.492445, 15.355484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616470, 16.205044, 16.020966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609428, 15.910226, 15.750721>,  <24.605204, 15.733335, 15.588574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609428, 15.910226, 15.750721>,  <24.616470, 16.205044, 16.020966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609428, 15.910226, 15.750721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908087, -0.294558, 0.297680,
		-0.418411, -0.608274, 0.674488,
		-0.017605, -0.737047, -0.675612,
		24.604147, 15.689112, 15.548038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328182, 16.103233, 15.773823>,  <24.616470, 16.205044, 16.020966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328182, 16.103233, 15.773823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242462, 15.911185, 15.433574>,  <25.191031, 15.795957, 15.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242462, 15.911185, 15.433574>,  <25.328182, 16.103233, 15.773823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242462, 15.911185, 15.433574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957488, -0.275431, -0.085758,
		-0.193114, -0.832840, 0.518734,
		-0.214298, -0.480120, -0.850624,
		25.178173, 15.767149, 15.178387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514908, 15.329408, 15.836218>,  <25.328182, 16.103233, 15.773823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514908, 15.329408, 15.836218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557783, 15.485605, 15.470480>,  <25.583508, 15.579324, 15.251038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557783, 15.485605, 15.470480>,  <25.514908, 15.329408, 15.836218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557783, 15.485605, 15.470480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962945, -0.269689, -0.002292,
		-0.247484, -0.880217, -0.404933,
		0.107188, 0.390495, -0.914344,
		25.589939, 15.602754, 15.196177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874100, 14.757449, 15.425934>,  <25.514908, 15.329408, 15.836218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874100, 14.757449, 15.425934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959528, 15.122631, 15.286850>,  <26.010784, 15.341740, 15.203400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959528, 15.122631, 15.286850>,  <25.874100, 14.757449, 15.425934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959528, 15.122631, 15.286850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974637, -0.223476, 0.011877,
		-0.066862, -0.341428, -0.937527,
		0.213570, 0.912954, -0.347710,
		26.023600, 15.396518, 15.182537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347019, 14.743387, 14.906181>,  <25.874100, 14.757449, 15.425934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347019, 14.743387, 14.906181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390535, 15.072145, 15.129843>,  <26.416645, 15.269401, 15.264040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390535, 15.072145, 15.129843>,  <26.347019, 14.743387, 14.906181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390535, 15.072145, 15.129843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990884, -0.134620, 0.005085,
		0.079453, 0.553504, -0.829048,
		0.108791, 0.821895, 0.559154,
		26.423172, 15.318714, 15.297589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048307, 14.836477, 14.804953>,  <26.347019, 14.743387, 14.906181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048307, 14.836477, 14.804953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907602, 15.029936, 15.125539>,  <26.823179, 15.146011, 15.317891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907602, 15.029936, 15.125539>,  <27.048307, 14.836477, 14.804953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907602, 15.029936, 15.125539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933222, 0.114219, 0.340664,
		0.073218, 0.867778, -0.491528,
		-0.351762, 0.483647, 0.801467,
		26.802074, 15.175030, 15.365979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.044567, 19.939981, 25.476475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.744040, 19.676226, 25.465712>,  <11.563723, 19.517973, 25.459253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.744040, 19.676226, 25.465712>,  <12.044567, 19.939981, 25.476475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.744040, 19.676226, 25.465712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302372, -0.307711, -0.902156,
		0.586593, -0.685943, 0.430570,
		-0.751319, -0.659390, -0.026908,
		11.518643, 19.478409, 25.457640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.299081, 19.283264, 25.254017>,  <12.044567, 19.939981, 25.476475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.299081, 19.283264, 25.254017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.914617, 19.255482, 25.147175>,  <11.683938, 19.238811, 25.083069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.914617, 19.255482, 25.147175>,  <12.299081, 19.283264, 25.254017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.914617, 19.255482, 25.147175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273434, -0.371050, -0.887443,
		-0.037471, -0.926012, 0.375631,
		-0.961161, -0.069457, -0.267107,
		11.626268, 19.234644, 25.067043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.255724, 18.694494, 24.947405>,  <12.299081, 19.283264, 25.254017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.255724, 18.694494, 24.947405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.909322, 18.855806, 24.829151>,  <11.701481, 18.952593, 24.758198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.909322, 18.855806, 24.829151>,  <12.255724, 18.694494, 24.947405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909322, 18.855806, 24.829151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077837, -0.475301, -0.876373,
		-0.493946, -0.781952, 0.380221,
		-0.866001, 0.403286, -0.295639,
		11.649520, 18.976789, 24.740461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.005312, 18.181454, 24.466070>,  <12.255724, 18.694494, 24.947405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.005312, 18.181454, 24.466070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.789212, 18.503479, 24.368086>,  <11.659553, 18.696693, 24.309296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.789212, 18.503479, 24.368086>,  <12.005312, 18.181454, 24.466070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.789212, 18.503479, 24.368086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129561, -0.208053, -0.969499,
		-0.831471, -0.555509, 0.008096,
		-0.540250, 0.805061, -0.244962,
		11.627137, 18.744997, 24.294598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.543620, 17.902679, 24.050259>,  <12.005312, 18.181454, 24.466070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.543620, 17.902679, 24.050259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.557502, 18.288832, 23.946848>,  <11.565830, 18.520523, 23.884802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.557502, 18.288832, 23.946848>,  <11.543620, 17.902679, 24.050259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.557502, 18.288832, 23.946848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182283, -0.248231, -0.951396,
		-0.982634, 0.080142, 0.167357,
		0.034703, 0.965380, -0.258529,
		11.567913, 18.578445, 23.869289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.969100, 18.105158, 23.639563>,  <11.543620, 17.902679, 24.050259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.969100, 18.105158, 23.639563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.249914, 18.375345, 23.549330>,  <11.418403, 18.537458, 23.495190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.249914, 18.375345, 23.549330>,  <10.969100, 18.105158, 23.639563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.249914, 18.375345, 23.549330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081916, -0.238068, -0.967788,
		-0.707416, 0.697899, -0.111800,
		0.702034, 0.675470, -0.225582,
		11.460525, 18.577986, 23.481655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733224, 18.373186, 22.975582>,  <10.969100, 18.105158, 23.639563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.733224, 18.373186, 22.975582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.113646, 18.490343, 23.014999>,  <11.341898, 18.560638, 23.038651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.113646, 18.490343, 23.014999>,  <10.733224, 18.373186, 22.975582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.113646, 18.490343, 23.014999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119772, -0.055402, -0.991254,
		-0.284873, 0.954538, -0.087771,
		0.951053, 0.292894, 0.098544,
		11.398961, 18.578211, 23.044563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.809172, 18.897274, 22.403894>,  <10.733224, 18.373186, 22.975582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.809172, 18.897274, 22.403894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.165787, 18.763693, 22.526295>,  <11.379756, 18.683544, 22.599735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.165787, 18.763693, 22.526295>,  <10.809172, 18.897274, 22.403894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.165787, 18.763693, 22.526295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259113, -0.178087, -0.949287,
		0.371512, 0.925613, -0.072240,
		0.891538, -0.333953, 0.306000,
		11.433249, 18.663507, 22.618095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.258161, 19.295889, 22.020613>,  <10.809172, 18.897274, 22.403894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.258161, 19.295889, 22.020613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.459163, 18.966812, 22.126942>,  <11.579764, 18.769365, 22.190739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.459163, 18.966812, 22.126942>,  <11.258161, 19.295889, 22.020613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.459163, 18.966812, 22.126942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274678, -0.139618, -0.951346,
		0.819780, 0.551073, 0.155817,
		0.502506, -0.822694, 0.265824,
		11.609915, 18.720003, 22.206690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.887466, 19.358999, 21.667374>,  <11.258161, 19.295889, 22.020613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.887466, 19.358999, 21.667374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.884715, 18.968565, 21.754282>,  <11.883064, 18.734304, 21.806427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.884715, 18.968565, 21.754282>,  <11.887466, 19.358999, 21.667374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.884715, 18.968565, 21.754282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442544, -0.197812, -0.874657,
		0.896720, 0.090134, 0.433322,
		-0.006879, -0.976087, 0.217270,
		11.882651, 18.675739, 21.819464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.522486, 19.119261, 21.523239>,  <11.887466, 19.358999, 21.667374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.522486, 19.119261, 21.523239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313335, 18.778511, 21.511189>,  <12.187845, 18.574060, 21.503958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313335, 18.778511, 21.511189>,  <12.522486, 19.119261, 21.523239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313335, 18.778511, 21.511189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547432, -0.308500, -0.777911,
		0.653390, -0.423243, 0.627652,
		-0.522876, -0.851876, -0.030126,
		12.156472, 18.522947, 21.502151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.963353, 18.589125, 21.438236>,  <12.522486, 19.119261, 21.523239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.963353, 18.589125, 21.438236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.618327, 18.454519, 21.287111>,  <12.411311, 18.373756, 21.196436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.618327, 18.454519, 21.287111>,  <12.963353, 18.589125, 21.438236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618327, 18.454519, 21.287111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493983, -0.398710, -0.772665,
		0.109373, -0.853106, 0.510144,
		-0.862565, -0.336511, -0.377812,
		12.359558, 18.353565, 21.173767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106468, 17.888500, 21.255667>,  <12.963353, 18.589125, 21.438236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106468, 17.888500, 21.255667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.754715, 17.940722, 21.072519>,  <12.543663, 17.972054, 20.962631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.754715, 17.940722, 21.072519>,  <13.106468, 17.888500, 21.255667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.754715, 17.940722, 21.072519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321240, -0.547097, -0.772974,
		-0.351412, -0.826826, 0.439169,
		-0.879383, 0.130553, -0.457866,
		12.490900, 17.979887, 20.935160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065355, 17.298990, 20.958399>,  <13.106468, 17.888500, 21.255667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065355, 17.298990, 20.958399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.784728, 17.508629, 20.765266>,  <12.616351, 17.634411, 20.649387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.784728, 17.508629, 20.765266>,  <13.065355, 17.298990, 20.958399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.784728, 17.508629, 20.765266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243045, -0.460948, -0.853496,
		-0.669874, -0.716136, 0.196008,
		-0.701569, 0.524096, -0.482830,
		12.574257, 17.665857, 20.620417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.785328, 16.802290, 20.610622>,  <13.065355, 17.298990, 20.958399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.785328, 16.802290, 20.610622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.692348, 17.140312, 20.418018>,  <12.636561, 17.343124, 20.302456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.692348, 17.140312, 20.418018>,  <12.785328, 16.802290, 20.610622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.692348, 17.140312, 20.418018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298514, -0.409191, -0.862237,
		-0.925666, -0.344162, -0.157145,
		-0.232447, 0.845053, -0.481511,
		12.622614, 17.393827, 20.273565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286438, 16.639481, 20.069834>,  <12.785328, 16.802290, 20.610622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.286438, 16.639481, 20.069834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.485826, 16.970078, 19.965189>,  <12.605458, 17.168436, 19.902403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.485826, 16.970078, 19.965189>,  <12.286438, 16.639481, 20.069834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485826, 16.970078, 19.965189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247853, -0.425050, -0.870575,
		-0.830721, 0.369114, -0.416723,
		0.498469, 0.826491, -0.261612,
		12.635366, 17.218025, 19.886705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133522, 16.764284, 19.276344>,  <12.286438, 16.639481, 20.069834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133522, 16.764284, 19.276344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.454044, 16.990475, 19.354471>,  <12.646358, 17.126188, 19.401346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.454044, 16.990475, 19.354471>,  <12.133522, 16.764284, 19.276344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454044, 16.990475, 19.354471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427768, -0.313322, -0.847846,
		-0.418239, 0.762934, -0.492959,
		0.801306, 0.565474, 0.195316,
		12.694436, 17.160116, 19.413065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.249098, 17.239170, 18.673414>,  <12.133522, 16.764284, 19.276344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.249098, 17.239170, 18.673414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.591452, 17.201004, 18.876730>,  <12.796864, 17.178104, 18.998720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.591452, 17.201004, 18.876730>,  <12.249098, 17.239170, 18.673414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.591452, 17.201004, 18.876730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484446, -0.196129, -0.852552,
		0.181035, 0.975925, -0.121641,
		0.855884, -0.095413, 0.508290,
		12.848217, 17.172380, 19.029217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794458, 17.315998, 18.167753>,  <12.249098, 17.239170, 18.673414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794458, 17.315998, 18.167753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.030796, 17.184713, 18.462557>,  <13.172599, 17.105944, 18.639439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.030796, 17.184713, 18.462557>,  <12.794458, 17.315998, 18.167753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.030796, 17.184713, 18.462557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577313, -0.466129, -0.670399,
		0.563572, 0.821585, -0.085929,
		0.590844, -0.328210, 0.737009,
		13.208049, 17.086250, 18.683659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.408003, 17.336330, 17.919714>,  <12.794458, 17.315998, 18.167753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.408003, 17.336330, 17.919714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.447988, 17.078741, 18.223110>,  <13.471978, 16.924187, 18.405148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.447988, 17.078741, 18.223110>,  <13.408003, 17.336330, 17.919714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447988, 17.078741, 18.223110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680111, -0.512199, -0.524501,
		0.726263, 0.568286, 0.386774,
		0.099961, -0.643974, 0.758489,
		13.477976, 16.885550, 18.450657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.069429, 17.280632, 17.942085>,  <13.408003, 17.336330, 17.919714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.069429, 17.280632, 17.942085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.950712, 16.938486, 18.111914>,  <13.879481, 16.733198, 18.213812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.950712, 16.938486, 18.111914>,  <14.069429, 17.280632, 17.942085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950712, 16.938486, 18.111914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495369, -0.518013, -0.697332,
		0.816409, 0.003356, 0.577465,
		-0.296794, -0.855366, 0.424573,
		13.861674, 16.681877, 18.239286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600642, 16.840595, 18.207640>,  <14.069429, 17.280632, 17.942085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600642, 16.840595, 18.207640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.286653, 16.613779, 18.107815>,  <14.098259, 16.477690, 18.047920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.286653, 16.613779, 18.107815>,  <14.600642, 16.840595, 18.207640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286653, 16.613779, 18.107815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563133, -0.485146, -0.668965,
		0.258257, -0.665656, 0.700146,
		-0.784974, -0.567040, -0.249561,
		14.051160, 16.443666, 18.032948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279372, 16.888138, 18.280008>,  <14.600642, 16.840595, 18.207640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279372, 16.888138, 18.280008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.651349, 17.021553, 18.341925>,  <15.874536, 17.101603, 18.379074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.651349, 17.021553, 18.341925>,  <15.279372, 16.888138, 18.280008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651349, 17.021553, 18.341925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310321, 0.486072, 0.816967,
		0.197249, -0.807767, 0.555522,
		0.929943, 0.333536, 0.154789,
		15.930332, 17.121614, 18.388361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511391, 16.573154, 18.958395>,  <15.279372, 16.888138, 18.280008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511391, 16.573154, 18.958395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.701931, 16.911221, 18.861414>,  <15.816256, 17.114061, 18.803226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.701931, 16.911221, 18.861414>,  <15.511391, 16.573154, 18.958395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.701931, 16.911221, 18.861414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163214, 0.355950, 0.920142,
		0.863974, -0.398739, 0.307500,
		0.476351, 0.845167, -0.242452,
		15.844836, 17.164770, 18.788679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023092, 16.660543, 19.462639>,  <15.511391, 16.573154, 18.958395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023092, 16.660543, 19.462639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.969903, 17.023205, 19.302490>,  <15.937990, 17.240801, 19.206400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.969903, 17.023205, 19.302490>,  <16.023092, 16.660543, 19.462639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969903, 17.023205, 19.302490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105078, 0.388788, 0.915316,
		0.985534, 0.163781, 0.043572,
		-0.132971, 0.906653, -0.400373,
		15.930012, 17.295200, 19.182379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510414, 17.105547, 19.857222>,  <16.023092, 16.660543, 19.462639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510414, 17.105547, 19.857222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.234461, 17.345219, 19.694721>,  <16.068888, 17.489021, 19.597221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.234461, 17.345219, 19.694721>,  <16.510414, 17.105547, 19.857222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234461, 17.345219, 19.694721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071633, 0.501929, 0.861937,
		0.720366, 0.623739, -0.303353,
		-0.689885, 0.599180, -0.406253,
		16.027494, 17.524973, 19.572845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519701, 17.824083, 20.139194>,  <16.510414, 17.105547, 19.857222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519701, 17.824083, 20.139194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.165901, 17.873137, 19.959141>,  <15.953621, 17.902569, 19.851109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.165901, 17.873137, 19.959141>,  <16.519701, 17.824083, 20.139194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165901, 17.873137, 19.959141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238512, 0.710358, 0.662197,
		0.400965, 0.693075, -0.599061,
		-0.884499, 0.122635, -0.450135,
		15.900552, 17.909927, 19.824100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366615, 18.471046, 20.235500>,  <16.519701, 17.824083, 20.139194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366615, 18.471046, 20.235500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.998752, 18.374563, 20.111534>,  <15.778033, 18.316673, 20.037153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.998752, 18.374563, 20.111534>,  <16.366615, 18.471046, 20.235500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998752, 18.374563, 20.111534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392647, 0.549553, 0.737441,
		-0.007560, 0.799882, -0.600110,
		-0.919658, -0.241206, -0.309917,
		15.722855, 18.302202, 20.018559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951437, 19.161121, 20.094450>,  <16.366615, 18.471046, 20.235500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951437, 19.161121, 20.094450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.751210, 18.832598, 20.203911>,  <15.631074, 18.635485, 20.269587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.751210, 18.832598, 20.203911>,  <15.951437, 19.161121, 20.094450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751210, 18.832598, 20.203911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512753, 0.535976, 0.670683,
		-0.697508, 0.195406, -0.689420,
		-0.500567, -0.821308, 0.273652,
		15.601040, 18.586205, 20.286007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225768, 19.307619, 20.079344>,  <15.951437, 19.161121, 20.094450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225768, 19.307619, 20.079344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.267978, 18.989298, 20.317860>,  <15.293303, 18.798306, 20.460970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.267978, 18.989298, 20.317860>,  <15.225768, 19.307619, 20.079344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.267978, 18.989298, 20.317860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562338, 0.446798, 0.695807,
		-0.820147, -0.408742, -0.400361,
		0.105525, -0.795802, 0.596291,
		15.299635, 18.750557, 20.496748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595502, 19.285088, 20.379515>,  <15.225768, 19.307619, 20.079344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.595502, 19.285088, 20.379515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.810829, 19.047022, 20.618176>,  <14.940025, 18.904182, 20.761372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.810829, 19.047022, 20.618176>,  <14.595502, 19.285088, 20.379515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.810829, 19.047022, 20.618176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447785, 0.397774, 0.800790,
		-0.713934, -0.698252, -0.052376,
		0.538319, -0.595165, 0.596651,
		14.972325, 18.868473, 20.797171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136312, 19.059092, 20.932455>,  <14.595502, 19.285088, 20.379515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136312, 19.059092, 20.932455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.513662, 19.012562, 21.056721>,  <14.740072, 18.984644, 21.131279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.513662, 19.012562, 21.056721>,  <14.136312, 19.059092, 20.932455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.513662, 19.012562, 21.056721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222903, 0.471288, 0.853348,
		-0.245676, -0.874275, 0.418672,
		0.943375, -0.116324, 0.310663,
		14.796675, 18.977665, 21.149920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027591, 18.912657, 21.624937>,  <14.136312, 19.059092, 20.932455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027591, 18.912657, 21.624937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.408776, 19.028156, 21.588097>,  <14.637487, 19.097456, 21.565992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.408776, 19.028156, 21.588097>,  <14.027591, 18.912657, 21.624937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.408776, 19.028156, 21.588097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044330, 0.433403, 0.900109,
		0.299821, -0.853690, 0.425818,
		0.952965, 0.288749, -0.092099,
		14.694666, 19.114780, 21.560467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367283, 18.682816, 22.237743>,  <14.027591, 18.912657, 21.624937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367283, 18.682816, 22.237743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.589022, 18.983711, 22.095287>,  <14.722065, 19.164249, 22.009813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.589022, 18.983711, 22.095287>,  <14.367283, 18.682816, 22.237743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.589022, 18.983711, 22.095287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122447, 0.496962, 0.859090,
		0.823229, -0.432625, 0.367599,
		0.554347, 0.752240, -0.356140,
		14.755326, 19.209383, 21.988445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953927, 18.787451, 22.676275>,  <14.367283, 18.682816, 22.237743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953927, 18.787451, 22.676275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.877285, 19.137421, 22.498377>,  <14.831300, 19.347403, 22.391638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.877285, 19.137421, 22.498377>,  <14.953927, 18.787451, 22.676275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877285, 19.137421, 22.498377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038131, 0.446162, 0.894140,
		0.980731, 0.188279, -0.052125,
		-0.191604, 0.874923, -0.444744,
		14.819803, 19.399899, 22.364954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400122, 19.319214, 23.147360>,  <14.953927, 18.787451, 22.676275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400122, 19.319214, 23.147360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.118198, 19.490314, 22.920988>,  <14.949044, 19.592976, 22.785166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.118198, 19.490314, 22.920988>,  <15.400122, 19.319214, 23.147360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118198, 19.490314, 22.920988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304148, 0.538509, 0.785813,
		0.640890, 0.725973, -0.249446,
		-0.704808, 0.427752, -0.565928,
		14.906756, 19.618641, 22.751209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.460315, 20.008934, 23.281349>,  <15.400122, 19.319214, 23.147360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.460315, 20.008934, 23.281349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.084432, 19.970886, 23.149956>,  <14.858902, 19.948057, 23.071119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.084432, 19.970886, 23.149956>,  <15.460315, 20.008934, 23.281349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084432, 19.970886, 23.149956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319355, 0.587650, 0.743424,
		0.122320, 0.803505, -0.582596,
		-0.939708, -0.095119, -0.328484,
		14.802520, 19.942350, 23.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288671, 20.614635, 23.136744>,  <15.460315, 20.008934, 23.281349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288671, 20.614635, 23.136744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.949689, 20.407757, 23.184618>,  <14.746299, 20.283630, 23.213343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.949689, 20.407757, 23.184618>,  <15.288671, 20.614635, 23.136744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949689, 20.407757, 23.184618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286848, 0.635838, 0.716539,
		-0.446693, 0.572904, -0.687202,
		-0.847457, -0.517195, 0.119688,
		14.695452, 20.252598, 23.220524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.724725, 21.126354, 23.226622>,  <15.288671, 20.614635, 23.136744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.724725, 21.126354, 23.226622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.567818, 20.788517, 23.372381>,  <14.473674, 20.585814, 23.459837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.567818, 20.788517, 23.372381>,  <14.724725, 21.126354, 23.226622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.567818, 20.788517, 23.372381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347085, 0.502768, 0.791679,
		-0.851856, 0.184073, -0.490366,
		-0.392267, -0.844595, 0.364398,
		14.450138, 20.535139, 23.481701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.095872, 21.412291, 23.523046>,  <14.724725, 21.126354, 23.226622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.095872, 21.412291, 23.523046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.131414, 21.034414, 23.649328>,  <14.152740, 20.807690, 23.725098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.131414, 21.034414, 23.649328>,  <14.095872, 21.412291, 23.523046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131414, 21.034414, 23.649328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330909, 0.270956, 0.903926,
		-0.939470, -0.184788, -0.288530,
		0.088855, -0.944689, 0.315703,
		14.158071, 20.751007, 23.744040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.398381, 21.116667, 23.698410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.654035, 20.884108, 23.899797>,  <13.807426, 20.744572, 24.020630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.654035, 20.884108, 23.899797>,  <13.398381, 21.116667, 23.698410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654035, 20.884108, 23.899797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503082, 0.179109, 0.845475,
		-0.581735, -0.793658, -0.178018,
		0.639134, -0.581401, 0.503469,
		13.845775, 20.709688, 24.050838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969850, 20.674452, 24.123634>,  <13.398381, 21.116667, 23.698410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969850, 20.674452, 24.123634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.334554, 20.686235, 24.287500>,  <13.553376, 20.693306, 24.385820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.334554, 20.686235, 24.287500>,  <12.969850, 20.674452, 24.123634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.334554, 20.686235, 24.287500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404439, 0.238216, 0.882996,
		-0.071576, -0.970765, 0.229110,
		0.911760, 0.029460, 0.409666,
		13.608082, 20.695074, 24.410400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892589, 20.297640, 24.719105>,  <12.969850, 20.674452, 24.123634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892589, 20.297640, 24.719105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.216451, 20.524353, 24.780048>,  <13.410769, 20.660381, 24.816614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.216451, 20.524353, 24.780048>,  <12.892589, 20.297640, 24.719105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216451, 20.524353, 24.780048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336264, 0.235222, 0.911919,
		0.481023, -0.789574, 0.381038,
		0.809656, 0.566784, 0.152358,
		13.459348, 20.694387, 24.825756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151891, 19.934187, 25.210684>,  <12.892589, 20.297640, 24.719105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151891, 19.934187, 25.210684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.267268, 20.317038, 25.221315>,  <13.336494, 20.546749, 25.227695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.267268, 20.317038, 25.221315>,  <13.151891, 19.934187, 25.210684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.267268, 20.317038, 25.221315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235486, 0.044004, 0.970881,
		0.928088, -0.286305, 0.238083,
		0.288444, 0.957128, 0.026581,
		13.353802, 20.604176, 25.229290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387844, 20.054501, 25.807945>,  <13.151891, 19.934187, 25.210684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387844, 20.054501, 25.807945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.342433, 20.437426, 25.701612>,  <13.315187, 20.667181, 25.637814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.342433, 20.437426, 25.701612>,  <13.387844, 20.054501, 25.807945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.342433, 20.437426, 25.701612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143613, 0.248940, 0.957812,
		0.983101, 0.146914, 0.109221,
		-0.113527, 0.957312, -0.265832,
		13.308375, 20.724619, 25.621862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.759041, 20.353102, 26.324440>,  <13.387844, 20.054501, 25.807945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.759041, 20.353102, 26.324440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.530424, 20.646805, 26.177904>,  <13.393254, 20.823027, 26.089983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.530424, 20.646805, 26.177904>,  <13.759041, 20.353102, 26.324440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530424, 20.646805, 26.177904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092857, 0.385704, 0.917938,
		0.815302, 0.558657, -0.152264,
		-0.571542, 0.734258, -0.366340,
		13.358962, 20.867083, 26.068003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065696, 20.952528, 26.528843>,  <13.759041, 20.353102, 26.324440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065696, 20.952528, 26.528843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.678999, 21.026867, 26.458561>,  <13.446981, 21.071470, 26.416391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.678999, 21.026867, 26.458561>,  <14.065696, 20.952528, 26.528843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.678999, 21.026867, 26.458561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132021, 0.225771, 0.965193,
		0.219048, 0.956289, -0.193726,
		-0.966741, 0.185848, -0.175704,
		13.388976, 21.082621, 26.405849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896835, 21.610050, 26.721519>,  <14.065696, 20.952528, 26.528843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896835, 21.610050, 26.721519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.532684, 21.444618, 26.726650>,  <13.314194, 21.345360, 26.729729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.532684, 21.444618, 26.726650>,  <13.896835, 21.610050, 26.721519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.532684, 21.444618, 26.726650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164751, 0.390743, 0.905636,
		-0.379565, 0.822358, -0.423861,
		-0.910378, -0.413579, 0.012828,
		13.259571, 21.320545, 26.730499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.380843, 22.128618, 26.879852>,  <13.896835, 21.610050, 26.721519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.380843, 22.128618, 26.879852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.215590, 21.778206, 26.979362>,  <13.116439, 21.567959, 27.039068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.215590, 21.778206, 26.979362>,  <13.380843, 22.128618, 26.879852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215590, 21.778206, 26.979362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216413, 0.359797, 0.907586,
		-0.884584, 0.321113, -0.338228,
		-0.413131, -0.876032, 0.248777,
		13.091651, 21.515396, 27.053995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833672, 22.378336, 27.294535>,  <13.380843, 22.128618, 26.879852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833672, 22.378336, 27.294535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.837869, 21.982756, 27.353678>,  <12.840386, 21.745407, 27.389164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.837869, 21.982756, 27.353678>,  <12.833672, 22.378336, 27.294535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.837869, 21.982756, 27.353678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325367, 0.136444, 0.935692,
		-0.945529, -0.057925, -0.320341,
		0.010492, -0.988953, 0.147859,
		12.841016, 21.686069, 27.398035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197132, 22.267122, 27.697256>,  <12.833672, 22.378336, 27.294535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197132, 22.267122, 27.697256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.473691, 21.983063, 27.750414>,  <12.639627, 21.812628, 27.782309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.473691, 21.983063, 27.750414>,  <12.197132, 22.267122, 27.697256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473691, 21.983063, 27.750414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199616, -0.010989, 0.979813,
		-0.694351, -0.703967, -0.149354,
		0.691397, -0.710147, 0.132893,
		12.681110, 21.770020, 27.790281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.905975, 21.773966, 28.127535>,  <12.197132, 22.267122, 27.697256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.905975, 21.773966, 28.127535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.301444, 21.718775, 28.151169>,  <12.538725, 21.685661, 28.165350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.301444, 21.718775, 28.151169>,  <11.905975, 21.773966, 28.127535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301444, 21.718775, 28.151169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071306, -0.085360, 0.993795,
		-0.132081, -0.986750, -0.094232,
		0.988671, -0.137981, 0.059087,
		12.598045, 21.677382, 28.168896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.992284, 21.138868, 28.490805>,  <11.905975, 21.773966, 28.127535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.992284, 21.138868, 28.490805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.347936, 21.313522, 28.545649>,  <12.561327, 21.418314, 28.578554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.347936, 21.313522, 28.545649>,  <11.992284, 21.138868, 28.490805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.347936, 21.313522, 28.545649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067370, -0.171448, 0.982887,
		0.452668, -0.883152, -0.123024,
		0.889130, 0.436633, 0.137107,
		12.614675, 21.444511, 28.586781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.418292, 20.699118, 28.956364>,  <11.992284, 21.138868, 28.490805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.418292, 20.699118, 28.956364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.569287, 21.068617, 28.982275>,  <12.659884, 21.290316, 28.997822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.569287, 21.068617, 28.982275>,  <12.418292, 20.699118, 28.956364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.569287, 21.068617, 28.982275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031263, -0.082626, 0.996090,
		0.925487, -0.373986, -0.060069,
		0.377487, 0.923746, 0.064777,
		12.682533, 21.345741, 29.001709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.954835, 20.632488, 29.402386>,  <12.418292, 20.699118, 28.956364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.954835, 20.632488, 29.402386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.895868, 21.028006, 29.392965>,  <12.860488, 21.265316, 29.387314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.895868, 21.028006, 29.392965>,  <12.954835, 20.632488, 29.402386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.895868, 21.028006, 29.392965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232974, 0.057855, 0.970760,
		0.961245, 0.137620, -0.238892,
		-0.147417, 0.988794, -0.023551,
		12.851644, 21.324644, 29.385900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512017, 20.870642, 29.817661>,  <12.954835, 20.632488, 29.402386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512017, 20.870642, 29.817661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.231745, 21.155933, 29.810198>,  <13.063581, 21.327108, 29.805719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.231745, 21.155933, 29.810198>,  <13.512017, 20.870642, 29.817661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231745, 21.155933, 29.810198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117372, 0.141027, 0.983024,
		0.703753, 0.686597, -0.182528,
		-0.700682, 0.713229, -0.018661,
		13.021540, 21.369902, 29.804600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808447, 21.414307, 30.083853>,  <13.512017, 20.870642, 29.817661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808447, 21.414307, 30.083853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.427150, 21.513630, 30.152754>,  <13.198372, 21.573225, 30.194096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.427150, 21.513630, 30.152754>,  <13.808447, 21.414307, 30.083853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.427150, 21.513630, 30.152754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230905, 0.230723, 0.945225,
		0.194965, 0.940803, -0.277271,
		-0.953242, 0.248309, 0.172253,
		13.141177, 21.588123, 30.204430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787733, 22.056280, 30.475744>,  <13.808447, 21.414307, 30.083853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787733, 22.056280, 30.475744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.428886, 21.894629, 30.547140>,  <13.213578, 21.797638, 30.589977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.428886, 21.894629, 30.547140>,  <13.787733, 22.056280, 30.475744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.428886, 21.894629, 30.547140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146667, 0.108665, 0.983199,
		-0.416737, 0.908224, -0.038213,
		-0.897117, -0.404131, 0.178491,
		13.159751, 21.773390, 30.600687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552851, 22.410427, 31.010805>,  <13.787733, 22.056280, 30.475744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.552851, 22.410427, 31.010805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.285765, 22.112976, 31.024487>,  <13.125513, 21.934505, 31.032696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.285765, 22.112976, 31.024487>,  <13.552851, 22.410427, 31.010805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285765, 22.112976, 31.024487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006609, 0.040022, 0.999177,
		-0.744386, 0.667393, -0.021809,
		-0.667716, -0.743630, 0.034203,
		13.085450, 21.889887, 31.034748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095622, 22.687731, 31.537077>,  <13.552851, 22.410427, 31.010805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095622, 22.687731, 31.537077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.028753, 22.293718, 31.520260>,  <12.988632, 22.057310, 31.510170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.028753, 22.293718, 31.520260>,  <13.095622, 22.687731, 31.537077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028753, 22.293718, 31.520260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047916, -0.050709, 0.997564,
		-0.984763, 0.164750, 0.055676,
		-0.167172, -0.985031, -0.042042,
		12.978601, 21.998209, 31.507647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617555, 22.583229, 32.155987>,  <13.095622, 22.687731, 31.537077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617555, 22.583229, 32.155987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.790035, 22.235537, 32.059238>,  <12.893523, 22.026920, 32.001190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.790035, 22.235537, 32.059238>,  <12.617555, 22.583229, 32.155987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.790035, 22.235537, 32.059238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113128, -0.213873, 0.970289,
		-0.895136, -0.445752, 0.006112,
		0.431201, -0.869231, -0.241873,
		12.919395, 21.974768, 31.986677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.278374, 22.041430, 32.513729>,  <12.617555, 22.583229, 32.155987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.278374, 22.041430, 32.513729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.638196, 21.885635, 32.434631>,  <12.854089, 21.792158, 32.387173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.638196, 21.885635, 32.434631>,  <12.278374, 22.041430, 32.513729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.638196, 21.885635, 32.434631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043494, -0.370581, 0.927782,
		-0.434641, -0.843189, -0.316417,
		0.899553, -0.389490, -0.197743,
		12.908062, 21.768789, 32.375309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.220548, 21.325417, 32.658562>,  <12.278374, 22.041430, 32.513729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.220548, 21.325417, 32.658562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.586347, 21.477594, 32.713634>,  <12.805826, 21.568901, 32.746677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.586347, 21.477594, 32.713634>,  <12.220548, 21.325417, 32.658562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586347, 21.477594, 32.713634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037627, -0.418802, 0.907298,
		0.402840, -0.824540, -0.397308,
		0.914496, 0.380446, 0.137685,
		12.860696, 21.591728, 32.754940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.783651, 20.951071, 33.194183>,  <12.220548, 21.325417, 32.658562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.783651, 20.951071, 33.194183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.674657, 20.650007, 33.433937>,  <11.609261, 20.469370, 33.577789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.674657, 20.650007, 33.433937>,  <11.783651, 20.951071, 33.194183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.674657, 20.650007, 33.433937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492251, -0.426200, -0.758975,
		0.826705, -0.501855, -0.254363,
		-0.272486, -0.752658, 0.599380,
		11.592911, 20.424210, 33.613750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.137138, 20.378977, 32.958504>,  <11.783651, 20.951071, 33.194183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.137138, 20.378977, 32.958504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.791698, 20.261757, 33.122608>,  <11.584434, 20.191425, 33.221069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.791698, 20.261757, 33.122608>,  <12.137138, 20.378977, 32.958504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.791698, 20.261757, 33.122608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275957, -0.406265, -0.871089,
		0.421949, -0.865488, 0.269982,
		-0.863601, -0.293052, 0.410261,
		11.532618, 20.173841, 33.245686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.980865, 19.717798, 32.784721>,  <12.137138, 20.378977, 32.958504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.980865, 19.717798, 32.784721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.618827, 19.853668, 32.887035>,  <11.401605, 19.935190, 32.948421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.618827, 19.853668, 32.887035>,  <11.980865, 19.717798, 32.784721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.618827, 19.853668, 32.887035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381163, -0.381507, -0.842120,
		-0.188464, -0.859694, 0.474772,
		-0.905094, 0.339675, 0.255783,
		11.347299, 19.955570, 32.963772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.525113, 19.164471, 32.707256>,  <11.980865, 19.717798, 32.784721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.525113, 19.164471, 32.707256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.287291, 19.485975, 32.715961>,  <11.144597, 19.678877, 32.721184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.287291, 19.485975, 32.715961>,  <11.525113, 19.164471, 32.707256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.287291, 19.485975, 32.715961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348389, -0.233122, -0.907898,
		-0.724657, -0.547380, 0.418625,
		-0.594556, 0.803759, 0.021767,
		11.108924, 19.727102, 32.722492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.912081, 18.908630, 32.508144>,  <11.525113, 19.164471, 32.707256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.912081, 18.908630, 32.508144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.873934, 19.304384, 32.464291>,  <10.851046, 19.541838, 32.437977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.873934, 19.304384, 32.464291>,  <10.912081, 18.908630, 32.508144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.873934, 19.304384, 32.464291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267251, -0.131544, -0.954606,
		-0.958896, -0.061738, 0.276959,
		-0.095368, 0.989386, -0.109637,
		10.845324, 19.601200, 32.431400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.211206, 19.013567, 32.123253>,  <10.912081, 18.908630, 32.508144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.211206, 19.013567, 32.123253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.436114, 19.339060, 32.064339>,  <10.571059, 19.534355, 32.028992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.436114, 19.339060, 32.064339>,  <10.211206, 19.013567, 32.123253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.436114, 19.339060, 32.064339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109987, -0.102931, -0.988589,
		-0.819607, 0.572053, 0.031625,
		0.562270, 0.813733, -0.147281,
		10.604795, 19.583179, 32.020153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.762901, 19.486197, 31.811640>,  <10.211206, 19.013567, 32.123253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.762901, 19.486197, 31.811640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.136099, 19.581690, 31.703915>,  <10.360018, 19.638987, 31.639280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.136099, 19.581690, 31.703915>,  <9.762901, 19.486197, 31.811640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136099, 19.581690, 31.703915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224969, -0.197215, -0.954199,
		-0.280911, 0.950849, -0.130293,
		0.932994, 0.238732, -0.269312,
		10.415998, 19.653309, 31.623121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.713080, 19.960348, 31.195976>,  <9.762901, 19.486197, 31.811640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.713080, 19.960348, 31.195976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.100045, 19.869598, 31.151005>,  <10.332224, 19.815147, 31.124022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.100045, 19.869598, 31.151005>,  <9.713080, 19.960348, 31.195976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100045, 19.869598, 31.151005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123923, -0.037028, -0.991601,
		0.220807, 0.973220, -0.063936,
		0.967413, -0.226876, -0.112428,
		10.390269, 19.801537, 31.117277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.866632, 20.210497, 30.626118>,  <9.713080, 19.960348, 31.195976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.866632, 20.210497, 30.626118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.210652, 20.006422, 30.624226>,  <10.417065, 19.883978, 30.623091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.210652, 20.006422, 30.624226>,  <9.866632, 20.210497, 30.626118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.210652, 20.006422, 30.624226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025925, -0.034444, -0.999070,
		0.509548, 0.859375, -0.042850,
		0.860052, -0.510185, -0.004728,
		10.468668, 19.853367, 30.622807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.228998, 20.562840, 30.166256>,  <9.866632, 20.210497, 30.626118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.228998, 20.562840, 30.166256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.412656, 20.209002, 30.198952>,  <10.522851, 19.996698, 30.218569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.412656, 20.209002, 30.198952>,  <10.228998, 20.562840, 30.166256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.412656, 20.209002, 30.198952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165284, -0.005340, -0.986232,
		0.872850, 0.466333, 0.143757,
		0.459145, -0.884593, 0.081738,
		10.550399, 19.943624, 30.223473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925779, 20.617922, 29.816666>,  <10.228998, 20.562840, 30.166256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925779, 20.617922, 29.816666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.845287, 20.226109, 29.814856>,  <10.796992, 19.991020, 29.813770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.845287, 20.226109, 29.814856>,  <10.925779, 20.617922, 29.816666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845287, 20.226109, 29.814856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179140, -0.032261, -0.983295,
		0.963024, -0.198679, 0.181965,
		-0.201230, -0.979534, -0.004523,
		10.784918, 19.932249, 29.813499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.469859, 20.241756, 29.490217>,  <10.925779, 20.617922, 29.816666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.469859, 20.241756, 29.490217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.147450, 20.005568, 29.473852>,  <10.954005, 19.863855, 29.464033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.147450, 20.005568, 29.473852>,  <11.469859, 20.241756, 29.490217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147450, 20.005568, 29.473852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144132, -0.128764, -0.981145,
		0.574070, -0.796720, 0.188892,
		-0.806021, -0.590471, -0.040913,
		10.905644, 19.828426, 29.461578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.799089, 19.609760, 29.191790>,  <11.469859, 20.241756, 29.490217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.799089, 19.609760, 29.191790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.406319, 19.615345, 29.116293>,  <11.170656, 19.618696, 29.070995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.406319, 19.615345, 29.116293>,  <11.799089, 19.609760, 29.191790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.406319, 19.615345, 29.116293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181021, -0.221727, -0.958159,
		-0.055224, -0.975009, 0.215193,
		-0.981927, 0.013959, -0.188742,
		11.111740, 19.619534, 29.059669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.640121, 19.019926, 28.842474>,  <11.799089, 19.609760, 29.191790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.640121, 19.019926, 28.842474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.335044, 19.261501, 28.749903>,  <11.151998, 19.406446, 28.694359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.335044, 19.261501, 28.749903>,  <11.640121, 19.019926, 28.842474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.335044, 19.261501, 28.749903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100181, -0.243194, -0.964791,
		-0.638954, -0.759024, 0.124979,
		-0.762693, 0.603936, -0.231429,
		11.106236, 19.442682, 28.680473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.405381, 18.780283, 28.119650>,  <11.640121, 19.019926, 28.842474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.405381, 18.780283, 28.119650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.224071, 19.135006, 28.155689>,  <11.115284, 19.347839, 28.177313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.224071, 19.135006, 28.155689>,  <11.405381, 18.780283, 28.119650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.224071, 19.135006, 28.155689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012968, 0.107628, -0.994107,
		-0.891276, -0.449436, -0.060285,
		-0.453276, 0.886805, 0.090098,
		11.088088, 19.401047, 28.182718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.787559, 18.762129, 27.761070>,  <11.405381, 18.780283, 28.119650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.787559, 18.762129, 27.761070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.856471, 19.154894, 27.792471>,  <10.897819, 19.390553, 27.811312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.856471, 19.154894, 27.792471>,  <10.787559, 18.762129, 27.761070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.856471, 19.154894, 27.792471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085703, 0.094332, -0.991845,
		-0.981312, 0.164149, 0.100405,
		0.172282, 0.981915, 0.078501,
		10.908155, 19.449469, 27.816021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.387463, 19.025436, 27.305462>,  <10.787559, 18.762129, 27.761070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.387463, 19.025436, 27.305462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.675839, 19.297819, 27.356909>,  <10.848866, 19.461248, 27.387777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.675839, 19.297819, 27.356909>,  <10.387463, 19.025436, 27.305462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.675839, 19.297819, 27.356909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016702, 0.168466, -0.985566,
		-0.692795, 0.712683, 0.110081,
		0.720941, 0.680957, 0.128615,
		10.892121, 19.502106, 27.395493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.117852, 19.578115, 26.946608>,  <10.387463, 19.025436, 27.305462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.117852, 19.578115, 26.946608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.512038, 19.643734, 26.928953>,  <10.748549, 19.683105, 26.918360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.512038, 19.643734, 26.928953>,  <10.117852, 19.578115, 26.946608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512038, 19.643734, 26.928953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032583, -0.072457, -0.996839,
		-0.166725, 0.983788, -0.066059,
		0.985465, 0.164045, -0.044135,
		10.807677, 19.692947, 26.915712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.273756, 19.966688, 26.332466>,  <10.117852, 19.578115, 26.946608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.273756, 19.966688, 26.332466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.638596, 19.843014, 26.440155>,  <10.857499, 19.768808, 26.504768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.638596, 19.843014, 26.440155>,  <10.273756, 19.966688, 26.332466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638596, 19.843014, 26.440155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283656, 0.001813, -0.958925,
		0.295997, 0.951000, 0.089355,
		0.912099, -0.309185, 0.269220,
		10.912226, 19.750257, 26.520922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781068, 20.320959, 25.925709>,  <10.273756, 19.966688, 26.332466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781068, 20.320959, 25.925709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.982422, 19.997507, 26.047510>,  <11.103234, 19.803436, 26.120590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.982422, 19.997507, 26.047510>,  <10.781068, 20.320959, 25.925709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.982422, 19.997507, 26.047510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393609, -0.099122, -0.913918,
		0.769204, 0.579908, 0.268387,
		0.503386, -0.808629, 0.304502,
		11.133437, 19.754919, 26.138861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519919, 20.357004, 25.750301>,  <10.781068, 20.320959, 25.925709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519919, 20.357004, 25.750301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.411901, 19.974083, 25.791565>,  <11.347089, 19.744329, 25.816322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.411901, 19.974083, 25.791565>,  <11.519919, 20.357004, 25.750301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.411901, 19.974083, 25.791565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244376, -0.171776, -0.954345,
		0.931319, -0.232508, 0.280330,
		-0.270047, -0.957305, 0.103158,
		11.330887, 19.686892, 25.822512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<15.690583, 25.731682, 14.330063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.326164, 25.848602, 14.446374>,  <15.107512, 25.918755, 14.516161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.326164, 25.848602, 14.446374>,  <15.690583, 25.731682, 14.330063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326164, 25.848602, 14.446374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291300, -0.042769, 0.955675,
		0.291780, 0.955370, -0.046182,
		-0.911048, 0.292300, 0.290778,
		15.052850, 25.936293, 14.533607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.710532, 25.132570, 13.888257>,  <15.690583, 25.731682, 14.330063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.710532, 25.132570, 13.888257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.672776, 25.148867, 14.286138>,  <15.650123, 25.158644, 14.524866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.672776, 25.148867, 14.286138>,  <15.710532, 25.132570, 13.888257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672776, 25.148867, 14.286138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020881, -0.999023, 0.038936,
		0.995316, -0.017095, 0.095148,
		-0.094389, 0.040740, 0.994701,
		15.644460, 25.161089, 14.584548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.213821, 24.733168, 14.309044>,  <15.710532, 25.132570, 13.888257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.213821, 24.733168, 14.309044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.848569, 24.754429, 14.470719>,  <15.629417, 24.767185, 14.567724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.848569, 24.754429, 14.470719>,  <16.213821, 24.733168, 14.309044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848569, 24.754429, 14.470719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012666, -0.987286, 0.158448,
		0.407472, 0.149803, 0.900847,
		-0.913130, 0.053153, 0.404189,
		15.574630, 24.770374, 14.591976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.187819, 24.305477, 14.951001>,  <16.213821, 24.733168, 14.309044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.187819, 24.305477, 14.951001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.800047, 24.366905, 14.874453>,  <15.567384, 24.403763, 14.828524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.800047, 24.366905, 14.874453>,  <16.187819, 24.305477, 14.951001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800047, 24.366905, 14.874453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171681, -0.981746, 0.081856,
		-0.175306, 0.112208, 0.978099,
		-0.969429, 0.153571, -0.191370,
		15.509218, 24.412977, 14.817041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.767668, 24.293144, 15.600112>,  <16.187819, 24.305477, 14.951001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.767668, 24.293144, 15.600112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.624046, 24.168289, 15.248282>,  <15.537873, 24.093376, 15.037185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.624046, 24.168289, 15.248282>,  <15.767668, 24.293144, 15.600112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624046, 24.168289, 15.248282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031650, -0.937804, 0.345720,
		-0.932780, 0.151971, 0.326843,
		-0.359054, -0.312137, -0.879574,
		15.516331, 24.074648, 14.984410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166737, 23.889610, 15.695383>,  <15.767668, 24.293144, 15.600112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166737, 23.889610, 15.695383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.378435, 23.769527, 15.377950>,  <15.505454, 23.697477, 15.187490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.378435, 23.769527, 15.377950>,  <15.166737, 23.889610, 15.695383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.378435, 23.769527, 15.377950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208563, -0.860585, 0.464646,
		-0.822435, -0.411424, -0.392849,
		0.529246, -0.300207, -0.793583,
		15.537210, 23.679464, 15.139874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.260674, 23.232151, 15.940477>,  <15.166737, 23.889610, 15.695383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.260674, 23.232151, 15.940477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.464622, 23.255943, 15.597200>,  <15.586991, 23.270218, 15.391234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.464622, 23.255943, 15.597200>,  <15.260674, 23.232151, 15.940477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.464622, 23.255943, 15.597200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630982, -0.703936, 0.326092,
		-0.584717, -0.707769, -0.396446,
		0.509870, 0.059479, -0.858193,
		15.617583, 23.273787, 15.339743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357779, 22.517927, 15.773982>,  <15.260674, 23.232151, 15.940477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357779, 22.517927, 15.773982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.637043, 22.757355, 15.616864>,  <15.804602, 22.901011, 15.522593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.637043, 22.757355, 15.616864>,  <15.357779, 22.517927, 15.773982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.637043, 22.757355, 15.616864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706316, -0.665519, 0.241251,
		-0.117007, -0.445869, -0.887417,
		0.698160, 0.598569, -0.392795,
		15.846491, 22.936926, 15.499025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890193, 22.199423, 15.250314>,  <15.357779, 22.517927, 15.773982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890193, 22.199423, 15.250314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.082075, 22.514854, 15.404212>,  <16.197205, 22.704113, 15.496551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.082075, 22.514854, 15.404212>,  <15.890193, 22.199423, 15.250314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082075, 22.514854, 15.404212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735251, -0.600567, 0.314205,
		0.478840, 0.132159, -0.867897,
		0.479705, 0.788577, 0.384746,
		16.225986, 22.751427, 15.519636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.714388, 22.334423, 15.075293>,  <15.890193, 22.199423, 15.250314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.714388, 22.334423, 15.075293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.619976, 22.461887, 15.442497>,  <16.563328, 22.538366, 15.662820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.619976, 22.461887, 15.442497>,  <16.714388, 22.334423, 15.075293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619976, 22.461887, 15.442497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789190, -0.488343, 0.372424,
		0.566981, 0.812389, -0.136220,
		-0.236032, 0.318661, 0.918011,
		16.549166, 22.557486, 15.717900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417986, 22.362518, 15.387921>,  <16.714388, 22.334423, 15.075293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417986, 22.362518, 15.387921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.196455, 22.398321, 15.719045>,  <17.063538, 22.419802, 15.917719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.196455, 22.398321, 15.719045>,  <17.417986, 22.362518, 15.387921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196455, 22.398321, 15.719045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729139, -0.427917, 0.534082,
		0.402036, 0.899375, 0.171730,
		-0.553826, 0.089505, 0.827808,
		17.030308, 22.425173, 15.967387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871090, 22.486334, 15.917504>,  <17.417986, 22.362518, 15.387921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871090, 22.486334, 15.917504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.550505, 22.360155, 16.120737>,  <17.358152, 22.284449, 16.242676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.550505, 22.360155, 16.120737>,  <17.871090, 22.486334, 15.917504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550505, 22.360155, 16.120737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588810, -0.564918, 0.578075,
		0.104673, 0.762470, 0.638500,
		-0.801466, -0.315446, 0.508081,
		17.310064, 22.265522, 16.273161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.079418, 22.537710, 16.679508>,  <17.871090, 22.486334, 15.917504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.079418, 22.537710, 16.679508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.774649, 22.282011, 16.637880>,  <17.591787, 22.128592, 16.612904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.774649, 22.282011, 16.637880>,  <18.079418, 22.537710, 16.679508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774649, 22.282011, 16.637880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520061, -0.699629, 0.489956,
		-0.386014, 0.319187, 0.865513,
		-0.761925, -0.639249, -0.104070,
		17.546072, 22.090237, 16.606659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919687, 22.240679, 17.353674>,  <18.079418, 22.537710, 16.679508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919687, 22.240679, 17.353674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.766506, 21.987009, 17.084995>,  <17.674599, 21.834808, 16.923788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.766506, 21.987009, 17.084995>,  <17.919687, 22.240679, 17.353674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766506, 21.987009, 17.084995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401495, -0.769119, 0.497251,
		-0.831955, -0.079259, 0.549152,
		-0.382952, -0.634172, -0.671695,
		17.651621, 21.796757, 16.883488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637899, 21.677576, 17.742170>,  <17.919687, 22.240679, 17.353674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637899, 21.677576, 17.742170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.689417, 21.552921, 17.365597>,  <17.720327, 21.478128, 17.139652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.689417, 21.552921, 17.365597>,  <17.637899, 21.677576, 17.742170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689417, 21.552921, 17.365597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462209, -0.821051, 0.335021,
		-0.877368, -0.478288, 0.038293,
		0.128796, -0.311636, -0.941432,
		17.728056, 21.459431, 17.083166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525566, 20.823528, 17.826914>,  <17.637899, 21.677576, 17.742170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525566, 20.823528, 17.826914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.694649, 20.869268, 17.467304>,  <17.796099, 20.896713, 17.251539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.694649, 20.869268, 17.467304>,  <17.525566, 20.823528, 17.826914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694649, 20.869268, 17.467304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570445, -0.804407, 0.165898,
		-0.704211, -0.582969, -0.405258,
		0.422706, 0.114350, -0.899024,
		17.821461, 20.903574, 17.197598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576494, 20.139416, 17.570404>,  <17.525566, 20.823528, 17.826914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576494, 20.139416, 17.570404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.828773, 20.358414, 17.350414>,  <17.980141, 20.489813, 17.218420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.828773, 20.358414, 17.350414>,  <17.576494, 20.139416, 17.570404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828773, 20.358414, 17.350414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661896, -0.749484, 0.012939,
		-0.405111, -0.372185, -0.835083,
		0.630697, 0.547496, -0.549973,
		18.017982, 20.522663, 17.185423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855026, 19.625937, 17.127050>,  <17.576494, 20.139416, 17.570404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855026, 19.625937, 17.127050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.125237, 19.920851, 17.130569>,  <18.287363, 20.097799, 17.132681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.125237, 19.920851, 17.130569>,  <17.855026, 19.625937, 17.127050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.125237, 19.920851, 17.130569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737281, -0.675278, -0.020386,
		-0.009091, 0.020256, -0.999754,
		0.675525, 0.737285, 0.008796,
		18.327894, 20.142036, 17.133207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.249990, 19.432207, 16.687689>,  <17.855026, 19.625937, 17.127050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.249990, 19.432207, 16.687689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.474222, 19.685310, 16.901369>,  <18.608761, 19.837172, 17.029577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.474222, 19.685310, 16.901369>,  <18.249990, 19.432207, 16.687689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.474222, 19.685310, 16.901369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761180, -0.647776, -0.031485,
		0.326119, 0.424272, -0.844772,
		0.560581, 0.632756, 0.534199,
		18.642397, 19.875137, 17.061628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929373, 19.516567, 16.314083>,  <18.249990, 19.432207, 16.687689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929373, 19.516567, 16.314083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.975513, 19.616121, 16.698738>,  <19.003199, 19.675854, 16.929531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.975513, 19.616121, 16.698738>,  <18.929373, 19.516567, 16.314083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975513, 19.616121, 16.698738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723840, -0.684045, 0.090212,
		0.680257, 0.685668, -0.259058,
		0.115352, 0.248883, 0.961640,
		19.010118, 19.690786, 16.987230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555182, 19.458405, 16.340960>,  <18.929373, 19.516567, 16.314083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555182, 19.458405, 16.340960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.458586, 19.492369, 16.727633>,  <19.400627, 19.512747, 16.959637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.458586, 19.492369, 16.727633>,  <19.555182, 19.458405, 16.340960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.458586, 19.492369, 16.727633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764568, -0.596810, 0.243422,
		0.597594, 0.797877, 0.079204,
		-0.241491, 0.084911, 0.966681,
		19.386139, 19.517841, 17.017637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.182190, 19.651335, 16.702055>,  <19.555182, 19.458405, 16.340960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.182190, 19.651335, 16.702055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.946815, 19.445837, 16.951794>,  <19.805592, 19.322538, 17.101637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.946815, 19.445837, 16.951794>,  <20.182190, 19.651335, 16.702055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946815, 19.445837, 16.951794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635325, -0.771407, -0.035972,
		0.500105, 0.375494, 0.780320,
		-0.588437, -0.513747, 0.624345,
		19.770285, 19.291714, 17.139097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.598610, 19.427504, 17.307978>,  <20.182190, 19.651335, 16.702055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.598610, 19.427504, 17.307978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.279009, 19.187048, 17.313988>,  <20.087248, 19.042774, 17.317595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.279009, 19.187048, 17.313988>,  <20.598610, 19.427504, 17.307978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.279009, 19.187048, 17.313988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597270, -0.790472, 0.135732,
		-0.069716, 0.117425, 0.990632,
		-0.799005, -0.601137, 0.015026,
		20.039307, 19.006706, 17.318495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.843712, 18.838032, 17.702063>,  <20.598610, 19.427504, 17.307978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.843712, 18.838032, 17.702063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.510420, 18.719229, 17.515507>,  <20.310446, 18.647947, 17.403574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.510420, 18.719229, 17.515507>,  <20.843712, 18.838032, 17.702063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510420, 18.719229, 17.515507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413611, -0.894585, -0.169245,
		-0.366957, -0.333923, 0.868239,
		-0.833228, -0.297008, -0.466388,
		20.260452, 18.630127, 17.375589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878061, 18.109230, 17.888414>,  <20.843712, 18.838032, 17.702063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878061, 18.109230, 17.888414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.610971, 18.141245, 17.592377>,  <20.450718, 18.160454, 17.414755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.610971, 18.141245, 17.592377>,  <20.878061, 18.109230, 17.888414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.610971, 18.141245, 17.592377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263468, -0.904440, -0.335518,
		-0.696224, -0.419025, 0.582830,
		-0.667725, 0.080038, -0.740092,
		20.410654, 18.165257, 17.370350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451584, 17.487516, 17.884413>,  <20.878061, 18.109230, 17.888414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451584, 17.487516, 17.884413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.411407, 17.648319, 17.520369>,  <20.387302, 17.744801, 17.301941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.411407, 17.648319, 17.520369>,  <20.451584, 17.487516, 17.884413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411407, 17.648319, 17.520369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186984, -0.890811, -0.414116,
		-0.977215, -0.211770, 0.014306,
		-0.100441, 0.402005, -0.910112,
		20.381275, 17.768921, 17.247335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.111752, 17.015465, 17.440517>,  <20.451584, 17.487516, 17.884413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.111752, 17.015465, 17.440517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324051, 17.250870, 17.196562>,  <20.451429, 17.392113, 17.050188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324051, 17.250870, 17.196562>,  <20.111752, 17.015465, 17.440517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324051, 17.250870, 17.196562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363992, -0.808139, -0.463056,
		-0.765388, 0.023771, -0.643130,
		0.530746, 0.588512, -0.609887,
		20.483274, 17.427423, 17.013596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836515, 16.873270, 16.826561>,  <20.111752, 17.015465, 17.440517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836515, 16.873270, 16.826561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.184080, 17.055565, 16.749315>,  <20.392620, 17.164942, 16.702967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.184080, 17.055565, 16.749315>,  <19.836515, 16.873270, 16.826561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184080, 17.055565, 16.749315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294405, -0.789511, -0.538514,
		-0.397888, 0.411068, -0.820188,
		0.868914, 0.455736, -0.193116,
		20.444754, 17.192286, 16.691380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.932034, 16.797798, 16.123114>,  <19.836515, 16.873270, 16.826561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.932034, 16.797798, 16.123114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.301388, 16.863377, 16.261955>,  <20.523001, 16.902723, 16.345261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.301388, 16.863377, 16.261955>,  <19.932034, 16.797798, 16.123114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.301388, 16.863377, 16.261955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327057, -0.809403, -0.487751,
		0.200980, 0.563905, -0.801011,
		0.923385, 0.163948, 0.347103,
		20.578403, 16.912561, 16.366087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433121, 16.431276, 15.636287>,  <19.932034, 16.797798, 16.123114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433121, 16.431276, 15.636287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.686749, 16.500225, 15.937815>,  <20.838924, 16.541594, 16.118732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.686749, 16.500225, 15.937815>,  <20.433121, 16.431276, 15.636287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.686749, 16.500225, 15.937815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482916, -0.849636, -0.211921,
		0.603944, 0.498405, -0.621968,
		0.634069, 0.172370, 0.753821,
		20.876968, 16.551935, 16.163961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.076534, 16.312981, 15.346006>,  <20.433121, 16.431276, 15.636287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.076534, 16.312981, 15.346006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127066, 16.275604, 15.741037>,  <21.157385, 16.253178, 15.978056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127066, 16.275604, 15.741037>,  <21.076534, 16.312981, 15.346006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127066, 16.275604, 15.741037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479899, -0.865544, -0.143283,
		0.868181, 0.492038, -0.064500,
		0.126329, -0.093442, 0.987578,
		21.164965, 16.247572, 16.037312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.773743, 16.175436, 15.478410>,  <21.076534, 16.312981, 15.346006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.773743, 16.175436, 15.478410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.576843, 16.032543, 15.795919>,  <21.458704, 15.946808, 15.986425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.576843, 16.032543, 15.795919>,  <21.773743, 16.175436, 15.478410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576843, 16.032543, 15.795919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589638, -0.807665, 0.002172,
		0.640327, 0.469108, 0.608210,
		-0.492249, -0.357233, 0.793773,
		21.429169, 15.925373, 16.034052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231560, 15.993067, 16.080025>,  <21.773743, 16.175436, 15.478410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231560, 15.993067, 16.080025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.897547, 15.773733, 16.061928>,  <21.697138, 15.642133, 16.051069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.897547, 15.773733, 16.061928>,  <22.231560, 15.993067, 16.080025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897547, 15.773733, 16.061928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548346, -0.836146, 0.013278,
		-0.045112, -0.013722, 0.998888,
		-0.835034, -0.548335, -0.045244,
		21.647038, 15.609233, 16.048355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.754496, 15.575387, 16.566935>,  <22.231560, 15.993067, 16.080025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.754496, 15.575387, 16.566935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.854137, 15.261257, 16.340233>,  <22.913923, 15.072779, 16.204212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.854137, 15.261257, 16.340233>,  <22.754496, 15.575387, 16.566935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.854137, 15.261257, 16.340233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838746, -0.467518, 0.279163,
		-0.484202, 0.405823, -0.775149,
		0.249105, -0.785325, -0.566755,
		22.928869, 15.025660, 16.170206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.132580, 15.503134, 16.052763>,  <22.754496, 15.575387, 16.566935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.132580, 15.503134, 16.052763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.395283, 15.658859, 15.794428>,  <23.552904, 15.752295, 15.639427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.395283, 15.658859, 15.794428>,  <23.132580, 15.503134, 16.052763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.395283, 15.658859, 15.794428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477502, 0.877557, 0.043419,
		0.583662, 0.279872, 0.762240,
		0.656758, 0.389313, -0.645836,
		23.592310, 15.775653, 15.600677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.388472, 16.149290, 16.265732>,  <23.132580, 15.503134, 16.052763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.388472, 16.149290, 16.265732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.476919, 16.169289, 15.876145>,  <23.529987, 16.181288, 15.642394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.476919, 16.169289, 15.876145>,  <23.388472, 16.149290, 16.265732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.476919, 16.169289, 15.876145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407794, 0.911926, -0.045771,
		0.885895, 0.407298, 0.222034,
		0.221121, 0.049996, -0.973964,
		23.543255, 16.184288, 15.583956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729752, 16.917910, 16.141939>,  <23.388472, 16.149290, 16.265732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729752, 16.917910, 16.141939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604443, 16.793892, 15.782888>,  <23.529257, 16.719481, 15.567458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604443, 16.793892, 15.782888>,  <23.729752, 16.917910, 16.141939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604443, 16.793892, 15.782888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319664, 0.924475, -0.207754,
		0.894245, 0.221855, -0.388723,
		-0.313273, -0.310044, -0.897626,
		23.510460, 16.700878, 15.513600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.908424, 17.425762, 15.723986>,  <23.729752, 16.917910, 16.141939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.908424, 17.425762, 15.723986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.617449, 17.246428, 15.516208>,  <23.442863, 17.138826, 15.391541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.617449, 17.246428, 15.516208>,  <23.908424, 17.425762, 15.723986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.617449, 17.246428, 15.516208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377462, 0.893651, -0.242713,
		0.573020, 0.019511, -0.819309,
		-0.727441, -0.448338, -0.519445,
		23.399216, 17.111927, 15.360374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.949368, 17.786625, 15.062813>,  <23.908424, 17.425762, 15.723986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.949368, 17.786625, 15.062813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.594589, 17.604296, 15.092616>,  <23.381721, 17.494898, 15.110497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.594589, 17.604296, 15.092616>,  <23.949368, 17.786625, 15.062813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.594589, 17.604296, 15.092616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457562, 0.845169, -0.276272,
		0.062959, -0.279130, -0.958187,
		-0.886946, -0.455824, 0.074508,
		23.328505, 17.467548, 15.114968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.604565, 17.890751, 14.416271>,  <23.949368, 17.786625, 15.062813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.604565, 17.890751, 14.416271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.333929, 17.810894, 14.699784>,  <23.171549, 17.762980, 14.869892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.333929, 17.810894, 14.699784>,  <23.604565, 17.890751, 14.416271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.333929, 17.810894, 14.699784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467131, 0.860439, -0.203552,
		-0.569225, -0.468815, -0.675422,
		-0.676588, -0.199644, 0.708782,
		23.130953, 17.751001, 14.912418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.912956, 18.119959, 14.167693>,  <23.604565, 17.890751, 14.416271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.912956, 18.119959, 14.167693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.814808, 18.083523, 14.553749>,  <22.755919, 18.061661, 14.785383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.814808, 18.083523, 14.553749>,  <22.912956, 18.119959, 14.167693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.814808, 18.083523, 14.553749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562972, 0.823887, -0.065367,
		-0.789212, -0.559386, -0.253440,
		-0.245371, -0.091091, 0.965140,
		22.741198, 18.056196, 14.843291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.179541, 18.200846, 14.261086>,  <22.912956, 18.119959, 14.167693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.179541, 18.200846, 14.261086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318869, 18.281954, 14.627158>,  <22.402466, 18.330620, 14.846802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318869, 18.281954, 14.627158>,  <22.179541, 18.200846, 14.261086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318869, 18.281954, 14.627158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459766, 0.887775, -0.021710,
		-0.816877, -0.413206, 0.402458,
		0.348321, 0.202771, 0.915181,
		22.423365, 18.342785, 14.901712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642782, 18.446587, 14.715261>,  <22.179541, 18.200846, 14.261086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642782, 18.446587, 14.715261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.962023, 18.581890, 14.914705>,  <22.153568, 18.663073, 15.034372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.962023, 18.581890, 14.914705>,  <21.642782, 18.446587, 14.715261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.962023, 18.581890, 14.914705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382734, 0.923752, -0.014047,
		-0.465345, -0.179624, 0.866712,
		0.798103, 0.338256, 0.498611,
		22.201454, 18.683367, 15.064289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.408722, 18.728720, 15.463820>,  <21.642782, 18.446587, 14.715261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.408722, 18.728720, 15.463820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.770561, 18.880404, 15.385952>,  <21.987665, 18.971415, 15.339231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.770561, 18.880404, 15.385952>,  <21.408722, 18.728720, 15.463820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.770561, 18.880404, 15.385952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353918, 0.922709, 0.152809,
		0.237572, -0.069334, 0.968892,
		0.904600, 0.379212, -0.194671,
		22.041941, 18.994167, 15.327551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626915, 19.192106, 16.004871>,  <21.408722, 18.728720, 15.463820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626915, 19.192106, 16.004871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.827663, 19.309320, 15.679355>,  <21.948112, 19.379650, 15.484045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.827663, 19.309320, 15.679355>,  <21.626915, 19.192106, 16.004871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.827663, 19.309320, 15.679355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247233, 0.950207, 0.189690,
		0.828856, 0.105996, 0.549330,
		0.501871, 0.293038, -0.813791,
		21.978224, 19.397232, 15.435218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916859, 19.806681, 16.150524>,  <21.626915, 19.192106, 16.004871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916859, 19.806681, 16.150524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924252, 19.811790, 15.750625>,  <21.928686, 19.814857, 15.510685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.924252, 19.811790, 15.750625>,  <21.916859, 19.806681, 16.150524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.924252, 19.811790, 15.750625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213026, 0.977009, 0.008547,
		0.976872, 0.212814, 0.020767,
		0.018471, 0.012774, -0.999748,
		21.929796, 19.815622, 15.450701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077631, 20.490368, 16.072720>,  <21.916859, 19.806681, 16.150524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077631, 20.490368, 16.072720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.972879, 20.368210, 15.706517>,  <21.910028, 20.294914, 15.486795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.972879, 20.368210, 15.706517>,  <22.077631, 20.490368, 16.072720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.972879, 20.368210, 15.706517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415429, 0.891902, -0.178688,
		0.871113, 0.333533, -0.360442,
		-0.261881, -0.305395, -0.915506,
		21.894316, 20.276592, 15.431865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.273748, 20.975372, 15.651357>,  <22.077631, 20.490368, 16.072720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.273748, 20.975372, 15.651357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.985855, 20.798388, 15.437362>,  <21.813120, 20.692196, 15.308965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.985855, 20.798388, 15.437362>,  <22.273748, 20.975372, 15.651357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.985855, 20.798388, 15.437362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477170, 0.875003, -0.081723,
		0.504274, 0.196461, -0.840899,
		-0.719734, -0.442462, -0.534987,
		21.769936, 20.665649, 15.276866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.259840, 21.365910, 14.986946>,  <22.273748, 20.975372, 15.651357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.259840, 21.365910, 14.986946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.915066, 21.172384, 15.047597>,  <21.708200, 21.056269, 15.083987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.915066, 21.172384, 15.047597>,  <22.259840, 21.365910, 14.986946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915066, 21.172384, 15.047597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505157, 0.845071, -0.175135,
		-0.043403, -0.227551, -0.972798,
		-0.861936, -0.483814, 0.151628,
		21.656485, 21.027241, 15.093085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.852953, 21.525246, 14.393594>,  <22.259840, 21.365910, 14.986946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.852953, 21.525246, 14.393594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.585634, 21.376526, 14.651320>,  <21.425243, 21.287294, 14.805955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.585634, 21.376526, 14.651320>,  <21.852953, 21.525246, 14.393594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585634, 21.376526, 14.651320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679616, 0.657355, -0.325587,
		-0.302490, -0.655476, -0.691991,
		-0.668298, -0.371801, 0.644314,
		21.385145, 21.264986, 14.844614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.209383, 21.302967, 14.049017>,  <21.852953, 21.525246, 14.393594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.209383, 21.302967, 14.049017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.105093, 21.369808, 14.429354>,  <21.042519, 21.409914, 14.657556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.105093, 21.369808, 14.429354>,  <21.209383, 21.302967, 14.049017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105093, 21.369808, 14.429354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722147, 0.619903, -0.306959,
		-0.640724, -0.766679, -0.040949,
		-0.260723, 0.167105, 0.950841,
		21.026876, 21.419939, 14.714606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500315, 21.284746, 13.961441>,  <21.209383, 21.302967, 14.049017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.500315, 21.284746, 13.961441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.588118, 21.483326, 14.297382>,  <20.640799, 21.602474, 14.498947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.588118, 21.483326, 14.297382>,  <20.500315, 21.284746, 13.961441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588118, 21.483326, 14.297382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647881, 0.717802, -0.254972,
		-0.729430, -0.488157, 0.479202,
		0.219506, 0.496450, 0.839854,
		20.653969, 21.632261, 14.549338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.479059, 20.179222, 21.500931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277442, 19.875610, 21.665764>,  <15.156472, 19.693443, 21.764664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277442, 19.875610, 21.665764>,  <15.479059, 20.179222, 21.500931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277442, 19.875610, 21.665764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371369, -0.621238, -0.690035,
		0.779761, -0.194772, 0.595010,
		-0.504042, -0.759031, 0.412085,
		15.126229, 19.647902, 21.789389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893843, 19.584181, 21.527763>,  <15.479059, 20.179222, 21.500931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893843, 19.584181, 21.527763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516919, 19.450283, 21.527126>,  <15.290765, 19.369944, 21.526745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516919, 19.450283, 21.527126>,  <15.893843, 19.584181, 21.527763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516919, 19.450283, 21.527126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274024, -0.768631, -0.578029,
		0.192268, -0.545118, 0.816015,
		-0.942308, -0.334744, -0.001592,
		15.234227, 19.349859, 21.526649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994207, 18.817038, 21.591221>,  <15.893843, 19.584181, 21.527763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994207, 18.817038, 21.591221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610141, 18.827116, 21.479904>,  <15.379701, 18.833164, 21.413115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610141, 18.827116, 21.479904>,  <15.994207, 18.817038, 21.591221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.610141, 18.827116, 21.479904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181148, -0.702173, -0.688578,
		-0.212760, -0.711561, 0.669638,
		-0.960166, 0.025198, -0.278292,
		15.322091, 18.834675, 21.396416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661259, 18.134508, 21.526140>,  <15.994207, 18.817038, 21.591221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661259, 18.134508, 21.526140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458013, 18.371798, 21.276371>,  <15.336065, 18.514172, 21.126509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458013, 18.371798, 21.276371>,  <15.661259, 18.134508, 21.526140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458013, 18.371798, 21.276371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232383, -0.603676, -0.762610,
		-0.829348, -0.532599, 0.168881,
		-0.508115, 0.593224, -0.624424,
		15.305578, 18.549765, 21.089045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462472, 17.616619, 21.102060>,  <15.661259, 18.134508, 21.526140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462472, 17.616619, 21.102060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.403372, 17.964396, 20.913490>,  <15.367911, 18.173061, 20.800348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.403372, 17.964396, 20.913490>,  <15.462472, 17.616619, 21.102060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403372, 17.964396, 20.913490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427376, -0.373730, -0.823211,
		-0.891919, -0.323106, -0.316359,
		-0.147751, 0.869441, -0.471425,
		15.359046, 18.225227, 20.772062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036288, 17.453785, 20.575422>,  <15.462472, 17.616619, 21.102060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036288, 17.453785, 20.575422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184786, 17.813482, 20.482870>,  <15.273885, 18.029301, 20.427340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184786, 17.813482, 20.482870>,  <15.036288, 17.453785, 20.575422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184786, 17.813482, 20.482870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261256, -0.340282, -0.903301,
		-0.891023, 0.274896, -0.361261,
		0.371244, 0.899244, -0.231381,
		15.296159, 18.083256, 20.413456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618836, 17.670910, 19.970188>,  <15.036288, 17.453785, 20.575422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618836, 17.670910, 19.970188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981380, 17.837109, 20.000854>,  <15.198905, 17.936829, 20.019255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981380, 17.837109, 20.000854>,  <14.618836, 17.670910, 19.970188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981380, 17.837109, 20.000854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228627, -0.329706, -0.915982,
		-0.355311, 0.847735, -0.393826,
		0.906357, 0.415498, 0.076667,
		15.253286, 17.961758, 20.023855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.659643, 18.025692, 19.380604>,  <14.618836, 17.670910, 19.970188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.659643, 18.025692, 19.380604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034115, 17.972185, 19.510635>,  <15.258798, 17.940081, 19.588655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034115, 17.972185, 19.510635>,  <14.659643, 18.025692, 19.380604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034115, 17.972185, 19.510635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272889, -0.306390, -0.911952,
		0.221590, 0.942460, -0.250332,
		0.936178, -0.133766, 0.325080,
		15.314968, 17.932055, 19.608160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.149788, 18.309179, 18.960869>,  <14.659643, 18.025692, 19.380604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.149788, 18.309179, 18.960869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427875, 18.094790, 19.152454>,  <15.594727, 17.966156, 19.267406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.427875, 18.094790, 19.152454>,  <15.149788, 18.309179, 18.960869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427875, 18.094790, 19.152454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493817, -0.128068, -0.860083,
		0.522321, 0.834465, 0.175638,
		0.695216, -0.535973, 0.478966,
		15.636439, 17.933998, 19.296144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806567, 18.449566, 18.616165>,  <15.149788, 18.309179, 18.960869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.806567, 18.449566, 18.616165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849202, 18.096539, 18.799343>,  <15.874783, 17.884722, 18.909250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849202, 18.096539, 18.799343>,  <15.806567, 18.449566, 18.616165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849202, 18.096539, 18.799343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499195, -0.350818, -0.792295,
		0.859909, 0.313053, 0.403181,
		0.106587, -0.882567, 0.457946,
		15.881178, 17.831768, 18.936728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.436123, 18.265667, 18.475273>,  <15.806567, 18.449566, 18.616165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.436123, 18.265667, 18.475273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263430, 17.919474, 18.576893>,  <16.159813, 17.711758, 18.637865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263430, 17.919474, 18.576893>,  <16.436123, 18.265667, 18.475273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263430, 17.919474, 18.576893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509275, -0.466356, -0.723292,
		0.744476, -0.182889, 0.642112,
		-0.431735, -0.865485, 0.254050,
		16.133909, 17.659828, 18.653109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.047863, 17.761492, 18.472574>,  <16.436123, 18.265667, 18.475273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.047863, 17.761492, 18.472574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712233, 17.545887, 18.443121>,  <16.510855, 17.416525, 18.425449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712233, 17.545887, 18.443121>,  <17.047863, 17.761492, 18.472574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712233, 17.545887, 18.443121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507155, -0.726050, -0.464376,
		0.196844, -0.426989, 0.882572,
		-0.839075, -0.539010, -0.073631,
		16.460510, 17.384184, 18.421032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696932, 17.483795, 18.676474>,  <17.047863, 17.761492, 18.472574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696932, 17.483795, 18.676474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860336, 17.140036, 18.799469>,  <17.958380, 16.933779, 18.873266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.860336, 17.140036, 18.799469>,  <17.696932, 17.483795, 18.676474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.860336, 17.140036, 18.799469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518491, 0.495742, 0.696712,
		-0.751189, -0.125185, 0.648107,
		0.408512, -0.859400, 0.307489,
		17.982889, 16.882215, 18.891716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.871395, 16.911476, 18.287855>,  <17.696932, 17.483795, 18.676474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.871395, 16.911476, 18.287855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056145, 17.079002, 17.975122>,  <18.166994, 17.179518, 17.787483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056145, 17.079002, 17.975122>,  <17.871395, 16.911476, 18.287855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056145, 17.079002, 17.975122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746925, -0.659030, 0.088222,
		-0.478303, -0.624718, -0.617214,
		0.461876, 0.418815, -0.781834,
		18.194708, 17.204647, 17.740572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605940, 16.594791, 18.154596>,  <17.871395, 16.911476, 18.287855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605940, 16.594791, 18.154596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926813, 16.366030, 18.085974>,  <19.119337, 16.228773, 18.044800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926813, 16.366030, 18.085974>,  <18.605940, 16.594791, 18.154596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926813, 16.366030, 18.085974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084919, -0.393685, 0.915315,
		-0.591011, -0.719680, -0.364372,
		0.802182, -0.571903, -0.171558,
		19.167467, 16.194460, 18.034506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.383305, 15.999666, 18.279099>,  <18.605940, 16.594791, 18.154596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.383305, 15.999666, 18.279099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780342, 15.965579, 18.313734>,  <19.018564, 15.945127, 18.334517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780342, 15.965579, 18.313734>,  <18.383305, 15.999666, 18.279099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.780342, 15.965579, 18.313734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113907, -0.404893, 0.907242,
		-0.042254, -0.910384, -0.411600,
		0.992593, -0.085218, 0.086591,
		19.078119, 15.940013, 18.339710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444023, 15.377856, 18.637402>,  <18.383305, 15.999666, 18.279099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444023, 15.377856, 18.637402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809271, 15.519110, 18.718897>,  <19.028419, 15.603862, 18.767794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809271, 15.519110, 18.718897>,  <18.444023, 15.377856, 18.637402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.809271, 15.519110, 18.718897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061050, -0.375661, 0.924744,
		0.403095, -0.856840, -0.321465,
		0.913119, 0.353134, 0.203737,
		19.083206, 15.625050, 18.780018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953568, 14.738346, 18.902153>,  <18.444023, 15.377856, 18.637402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953568, 14.738346, 18.902153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087521, 15.094304, 19.026049>,  <19.167892, 15.307879, 19.100386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087521, 15.094304, 19.026049>,  <18.953568, 14.738346, 18.902153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087521, 15.094304, 19.026049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051555, -0.310921, 0.949037,
		0.940848, -0.333786, -0.058244,
		0.334884, 0.889896, 0.309737,
		19.187986, 15.361273, 19.118969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427410, 14.551604, 19.488825>,  <18.953568, 14.738346, 18.902153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427410, 14.551604, 19.488825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358547, 14.942640, 19.537285>,  <19.317228, 15.177262, 19.566360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358547, 14.942640, 19.537285>,  <19.427410, 14.551604, 19.488825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358547, 14.942640, 19.537285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042401, -0.115518, 0.992400,
		0.984156, 0.175988, -0.021564,
		-0.172159, 0.977591, 0.121150,
		19.306900, 15.235918, 19.573629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.870501, 14.879833, 20.020742>,  <19.427410, 14.551604, 19.488825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.870501, 14.879833, 20.020742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551012, 15.116831, 19.978790>,  <19.359320, 15.259029, 19.953619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551012, 15.116831, 19.978790>,  <19.870501, 14.879833, 20.020742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.551012, 15.116831, 19.978790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127512, 0.003671, 0.991830,
		0.588038, 0.805567, 0.072618,
		-0.798719, 0.592493, -0.104878,
		19.311396, 15.294579, 19.947327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.793713, 15.357029, 20.610796>,  <19.870501, 14.879833, 20.020742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.793713, 15.357029, 20.610796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436855, 15.475156, 20.474052>,  <19.222740, 15.546032, 20.392006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436855, 15.475156, 20.474052>,  <19.793713, 15.357029, 20.610796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.436855, 15.475156, 20.474052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353936, 0.013324, 0.935175,
		0.280727, 0.955306, 0.092636,
		-0.892144, 0.295316, -0.341858,
		19.169212, 15.563751, 20.371494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561253, 15.983365, 20.930561>,  <19.793713, 15.357029, 20.610796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561253, 15.983365, 20.930561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226156, 15.805473, 20.803816>,  <19.025099, 15.698738, 20.727768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.226156, 15.805473, 20.803816>,  <19.561253, 15.983365, 20.930561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226156, 15.805473, 20.803816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352714, -0.002281, 0.935728,
		-0.416870, 0.895662, -0.154952,
		-0.837743, -0.444730, -0.316863,
		18.974833, 15.672054, 20.708757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.132174, 16.228340, 21.346674>,  <19.561253, 15.983365, 20.930561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.132174, 16.228340, 21.346674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885214, 15.942851, 21.214357>,  <18.737038, 15.771558, 21.134968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885214, 15.942851, 21.214357>,  <19.132174, 16.228340, 21.346674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.885214, 15.942851, 21.214357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520434, 0.055268, 0.852111,
		-0.589887, 0.698247, -0.405567,
		-0.617399, -0.713721, -0.330790,
		18.699995, 15.728735, 21.115120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381063, 16.518032, 21.203821>,  <19.132174, 16.228340, 21.346674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381063, 16.518032, 21.203821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367445, 16.120216, 21.243290>,  <18.359274, 15.881527, 21.266972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367445, 16.120216, 21.243290>,  <18.381063, 16.518032, 21.203821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.367445, 16.120216, 21.243290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529941, 0.101673, 0.841917,
		-0.847351, -0.023624, -0.530508,
		-0.034048, -0.994537, 0.098672,
		18.357231, 15.821856, 21.272892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749599, 16.422899, 21.476025>,  <18.381063, 16.518032, 21.203821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.749599, 16.422899, 21.476025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915602, 16.066978, 21.551943>,  <18.015203, 15.853426, 21.597494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.915602, 16.066978, 21.551943>,  <17.749599, 16.422899, 21.476025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915602, 16.066978, 21.551943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306047, 0.059920, 0.950129,
		-0.856799, -0.452396, -0.247455,
		0.415007, -0.889802, 0.189794,
		18.040104, 15.800038, 21.608881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284592, 16.040413, 21.688726>,  <17.749599, 16.422899, 21.476025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.284592, 16.040413, 21.688726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.614773, 15.864832, 21.830683>,  <17.812881, 15.759483, 21.915857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.614773, 15.864832, 21.830683>,  <17.284592, 16.040413, 21.688726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.614773, 15.864832, 21.830683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400777, -0.013015, 0.916083,
		-0.397497, -0.898417, -0.186665,
		0.825454, -0.438951, 0.354891,
		17.862410, 15.733147, 21.937151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102762, 15.507689, 22.212648>,  <17.284592, 16.040413, 21.688726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102762, 15.507689, 22.212648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475967, 15.635730, 22.278397>,  <17.699890, 15.712555, 22.317844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475967, 15.635730, 22.278397>,  <17.102762, 15.507689, 22.212648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475967, 15.635730, 22.278397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210638, 0.115503, 0.970717,
		0.291745, -0.940315, 0.175192,
		0.933015, 0.320104, 0.164369,
		17.755873, 15.731761, 22.327707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408573, 15.081280, 22.768700>,  <17.102762, 15.507689, 22.212648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408573, 15.081280, 22.768700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.632862, 15.411755, 22.746767>,  <17.767435, 15.610040, 22.733608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.632862, 15.411755, 22.746767>,  <17.408573, 15.081280, 22.768700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632862, 15.411755, 22.746767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032026, 0.087809, 0.995623,
		0.827385, -0.556511, 0.075696,
		0.560721, 0.826187, -0.054829,
		17.801079, 15.659611, 22.730318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598555, 14.501271, 23.116520>,  <17.408573, 15.081280, 22.768700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598555, 14.501271, 23.116520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294397, 14.246725, 23.168428>,  <17.111902, 14.093998, 23.199574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294397, 14.246725, 23.168428>,  <17.598555, 14.501271, 23.116520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294397, 14.246725, 23.168428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176234, -0.394488, -0.901843,
		0.625094, -0.662887, 0.412116,
		-0.760394, -0.636365, 0.129769,
		17.066278, 14.055816, 23.207359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914169, 13.852303, 23.014860>,  <17.598555, 14.501271, 23.116520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.914169, 13.852303, 23.014860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519062, 13.805372, 22.973785>,  <17.281998, 13.777214, 22.949141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.519062, 13.805372, 22.973785>,  <17.914169, 13.852303, 23.014860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.519062, 13.805372, 22.973785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146435, -0.471929, -0.869391,
		0.053541, -0.873795, 0.483338,
		-0.987770, -0.117325, -0.102687,
		17.222731, 13.770175, 22.942980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727354, 13.126606, 22.857237>,  <17.914169, 13.852303, 23.014860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727354, 13.126606, 22.857237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423925, 13.337250, 22.703743>,  <17.241869, 13.463636, 22.611647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423925, 13.337250, 22.703743>,  <17.727354, 13.126606, 22.857237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423925, 13.337250, 22.703743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006386, -0.594903, -0.803772,
		-0.651562, -0.607266, 0.454638,
		-0.758569, 0.526611, -0.383738,
		17.196354, 13.495233, 22.588621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.560551, 12.752736, 22.283318>,  <17.727354, 13.126606, 22.857237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.560551, 12.752736, 22.283318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.347464, 13.077509, 22.187840>,  <17.219612, 13.272373, 22.130552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.347464, 13.077509, 22.187840>,  <17.560551, 12.752736, 22.283318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.347464, 13.077509, 22.187840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067288, -0.321794, -0.944416,
		-0.843614, -0.487046, 0.226058,
		-0.532718, 0.811933, -0.238698,
		17.187649, 13.321089, 22.116230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031256, 12.478500, 21.802252>,  <17.560551, 12.752736, 22.283318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031256, 12.478500, 21.802252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023745, 12.872520, 21.733755>,  <17.019238, 13.108932, 21.692657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023745, 12.872520, 21.733755>,  <17.031256, 12.478500, 21.802252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023745, 12.872520, 21.733755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162577, -0.172001, -0.971588,
		-0.986517, 0.009596, 0.163376,
		-0.018777, 0.985050, -0.171242,
		17.018112, 13.168036, 21.682383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372107, 12.692705, 21.565130>,  <17.031256, 12.478500, 21.802252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372107, 12.692705, 21.565130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647066, 12.947489, 21.425550>,  <16.812042, 13.100359, 21.341803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.647066, 12.947489, 21.425550>,  <16.372107, 12.692705, 21.565130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.647066, 12.947489, 21.425550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236194, -0.258285, -0.936750,
		-0.686800, 0.726341, -0.027099,
		0.687400, 0.636959, -0.348947,
		16.853287, 13.138577, 21.320866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988563, 13.028678, 21.080709>,  <16.372107, 12.692705, 21.565130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988563, 13.028678, 21.080709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372932, 13.095169, 20.992174>,  <16.603554, 13.135064, 20.939053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372932, 13.095169, 20.992174>,  <15.988563, 13.028678, 21.080709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372932, 13.095169, 20.992174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194948, -0.161265, -0.967465,
		-0.196515, 0.972811, -0.122558,
		0.960925, 0.166229, -0.221339,
		16.661209, 13.145038, 20.925772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033621, 13.536371, 20.445404>,  <15.988563, 13.028678, 21.080709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033621, 13.536371, 20.445404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403990, 13.393621, 20.494890>,  <16.626211, 13.307972, 20.524582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403990, 13.393621, 20.494890>,  <16.033621, 13.536371, 20.445404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403990, 13.393621, 20.494890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113022, -0.050756, -0.992295,
		0.360404, 0.932772, -0.006661,
		0.925924, -0.356875, 0.123716,
		16.681767, 13.286559, 20.532005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443068, 13.994197, 20.069225>,  <16.033621, 13.536371, 20.445404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443068, 13.994197, 20.069225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595682, 13.628263, 20.122156>,  <16.687250, 13.408704, 20.153915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.595682, 13.628263, 20.122156>,  <16.443068, 13.994197, 20.069225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.595682, 13.628263, 20.122156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088450, -0.106367, -0.990385,
		0.920112, 0.389572, 0.040334,
		0.381536, -0.914833, 0.132328,
		16.710142, 13.353813, 20.161854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958300, 13.982467, 19.579868>,  <16.443068, 13.994197, 20.069225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958300, 13.982467, 19.579868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901176, 13.598902, 19.677923>,  <16.866903, 13.368763, 19.736755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901176, 13.598902, 19.677923>,  <16.958300, 13.982467, 19.579868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901176, 13.598902, 19.677923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124305, -0.263092, -0.956729,
		0.981914, -0.106154, 0.156769,
		-0.142806, -0.958913, 0.245138,
		16.858335, 13.311228, 19.751465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485691, 13.650166, 19.217518>,  <16.958300, 13.982467, 19.579868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485691, 13.650166, 19.217518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268871, 13.320180, 19.281536>,  <17.138779, 13.122189, 19.319946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268871, 13.320180, 19.281536>,  <17.485691, 13.650166, 19.217518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.268871, 13.320180, 19.281536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135298, -0.273641, -0.952269,
		0.829383, -0.494523, 0.259943,
		-0.542050, -0.824965, 0.160045,
		17.106256, 13.072690, 19.329550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858965, 12.998739, 19.019007>,  <17.485691, 13.650166, 19.217518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.858965, 12.998739, 19.019007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473505, 12.892047, 19.012875>,  <17.242229, 12.828032, 19.009195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473505, 12.892047, 19.012875>,  <17.858965, 12.998739, 19.019007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473505, 12.892047, 19.012875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140509, -0.457158, -0.878216,
		0.227240, -0.848446, 0.478018,
		-0.963649, -0.266732, -0.015330,
		17.184410, 12.812027, 19.008276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.564251, 15.265633, 28.024492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.938929, 15.271660, 28.164423>,  <15.163735, 15.275276, 28.248381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.938929, 15.271660, 28.164423>,  <14.564251, 15.265633, 28.024492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938929, 15.271660, 28.164423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350142, -0.047032, -0.935515,
		0.002356, 0.998780, -0.049331,
		0.936694, 0.015069, 0.349825,
		15.219936, 15.276180, 28.269371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.880890, 15.614139, 27.545649>,  <14.564251, 15.265633, 28.024492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.880890, 15.614139, 27.545649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.190148, 15.442130, 27.732122>,  <15.375703, 15.338925, 27.844007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.190148, 15.442130, 27.732122>,  <14.880890, 15.614139, 27.545649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.190148, 15.442130, 27.732122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437767, -0.170038, -0.882863,
		0.458919, 0.886662, 0.056785,
		0.773145, -0.430021, 0.466185,
		15.422091, 15.313124, 27.871979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516525, 15.832295, 27.316467>,  <14.880890, 15.614139, 27.545649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516525, 15.832295, 27.316467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.622481, 15.484145, 27.482492>,  <15.686055, 15.275255, 27.582108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.622481, 15.484145, 27.482492>,  <15.516525, 15.832295, 27.316467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622481, 15.484145, 27.482492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580902, -0.199532, -0.789138,
		0.769666, 0.450147, 0.452749,
		0.264890, -0.870376, 0.415064,
		15.701948, 15.223032, 27.607012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193201, 15.654326, 27.125473>,  <15.516525, 15.832295, 27.316467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193201, 15.654326, 27.125473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.057102, 15.292618, 27.228643>,  <15.975444, 15.075593, 27.290546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.057102, 15.292618, 27.228643>,  <16.193201, 15.654326, 27.125473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057102, 15.292618, 27.228643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371479, -0.381239, -0.846558,
		0.863850, -0.192223, 0.465632,
		-0.340245, -0.904272, 0.257926,
		15.955029, 15.021337, 27.306021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.746012, 15.264352, 27.163275>,  <16.193201, 15.654326, 27.125473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.746012, 15.264352, 27.163275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.448902, 15.001103, 27.114023>,  <16.270636, 14.843154, 27.084473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.448902, 15.001103, 27.114023>,  <16.746012, 15.264352, 27.163275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448902, 15.001103, 27.114023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394607, -0.281734, -0.874592,
		0.540898, -0.698213, 0.468964,
		-0.742775, -0.658122, -0.123131,
		16.226070, 14.803667, 27.077084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025928, 14.612847, 26.931395>,  <16.746012, 15.264352, 27.163275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025928, 14.612847, 26.931395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.645792, 14.575798, 26.812550>,  <16.417711, 14.553568, 26.741243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.645792, 14.575798, 26.812550>,  <17.025928, 14.612847, 26.931395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645792, 14.575798, 26.812550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311206, -0.275360, -0.909576,
		0.002437, -0.956869, 0.290511,
		-0.950340, -0.092625, -0.297112,
		16.360691, 14.548011, 26.723415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116074, 14.008445, 26.470179>,  <17.025928, 14.612847, 26.931395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116074, 14.008445, 26.470179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.773876, 14.207302, 26.412235>,  <16.568558, 14.326616, 26.377470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.773876, 14.207302, 26.412235>,  <17.116074, 14.008445, 26.470179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773876, 14.207302, 26.412235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047727, -0.202857, -0.978045,
		-0.515613, -0.843622, 0.149815,
		-0.855492, 0.497143, -0.144859,
		16.517229, 14.356444, 26.368778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740271, 13.449602, 26.152426>,  <17.116074, 14.008445, 26.470179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.740271, 13.449602, 26.152426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.599838, 13.813264, 26.062822>,  <16.515579, 14.031461, 26.009060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.599838, 13.813264, 26.062822>,  <16.740271, 13.449602, 26.152426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599838, 13.813264, 26.062822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031761, -0.227536, -0.973251,
		-0.935807, -0.348803, 0.051008,
		-0.351079, 0.909155, -0.224008,
		16.494514, 14.086011, 25.995621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359348, 13.284567, 25.547617>,  <16.740271, 13.449602, 26.152426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359348, 13.284567, 25.547617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.478674, 13.665452, 25.521383>,  <16.550268, 13.893983, 25.505644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.478674, 13.665452, 25.521383>,  <16.359348, 13.284567, 25.547617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478674, 13.665452, 25.521383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129909, -0.027566, -0.991143,
		-0.945586, 0.304191, 0.115478,
		0.298313, 0.952212, -0.065583,
		16.568169, 13.951116, 25.501709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911012, 13.496697, 25.029490>,  <16.359348, 13.284567, 25.547617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.911012, 13.496697, 25.029490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.173197, 13.797509, 25.057259>,  <16.330507, 13.977996, 25.073921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.173197, 13.797509, 25.057259>,  <15.911012, 13.496697, 25.029490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.173197, 13.797509, 25.057259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074497, 0.155859, -0.984966,
		-0.751544, 0.640437, 0.158184,
		0.655463, 0.752029, 0.069424,
		16.369835, 14.023118, 25.078087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570696, 14.088481, 24.548193>,  <15.911012, 13.496697, 25.029490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570696, 14.088481, 24.548193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.962113, 14.138062, 24.614025>,  <16.196964, 14.167810, 24.653524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.962113, 14.138062, 24.614025>,  <15.570696, 14.088481, 24.548193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962113, 14.138062, 24.614025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166861, -0.008181, -0.985946,
		-0.120864, 0.992254, -0.028688,
		0.978545, 0.123952, 0.164580,
		16.255676, 14.175247, 24.663399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839317, 14.665026, 24.127480>,  <15.570696, 14.088481, 24.548193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839317, 14.665026, 24.127480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.163685, 14.445443, 24.208529>,  <16.358305, 14.313694, 24.257158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.163685, 14.445443, 24.208529>,  <15.839317, 14.665026, 24.127480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.163685, 14.445443, 24.208529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286585, 0.070682, -0.955444,
		0.510175, 0.832857, 0.214640,
		0.810919, -0.548956, 0.202624,
		16.406961, 14.280756, 24.269316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302994, 14.839763, 23.609085>,  <15.839317, 14.665026, 24.127480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302994, 14.839763, 23.609085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.493769, 14.529037, 23.773567>,  <16.608234, 14.342601, 23.872255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.493769, 14.529037, 23.773567>,  <16.302994, 14.839763, 23.609085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493769, 14.529037, 23.773567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511084, -0.135511, -0.848781,
		0.715068, 0.614976, 0.332387,
		0.476939, -0.776814, 0.411204,
		16.636850, 14.295992, 23.896929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947598, 14.884924, 23.456675>,  <16.302994, 14.839763, 23.609085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947598, 14.884924, 23.456675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.882072, 14.495007, 23.517265>,  <16.842758, 14.261056, 23.553619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.882072, 14.495007, 23.517265>,  <16.947598, 14.884924, 23.456675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882072, 14.495007, 23.517265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420424, -0.207892, -0.883190,
		0.892418, -0.080992, 0.443881,
		-0.163811, -0.974793, 0.151476,
		16.832930, 14.202569, 23.562708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557064, 15.208567, 23.473501>,  <16.947598, 14.884924, 23.456675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557064, 15.208567, 23.473501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.718269, 15.542673, 23.323883>,  <17.814993, 15.743137, 23.234112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.718269, 15.542673, 23.323883>,  <17.557064, 15.208567, 23.473501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718269, 15.542673, 23.323883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214612, 0.483564, 0.848592,
		0.889675, -0.261719, 0.374141,
		0.403014, 0.835266, -0.374047,
		17.839174, 15.793253, 23.211670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194183, 15.381666, 23.897505>,  <17.557064, 15.208567, 23.473501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194183, 15.381666, 23.897505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.013155, 15.693727, 23.724743>,  <17.904537, 15.880963, 23.621086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.013155, 15.693727, 23.724743>,  <18.194183, 15.381666, 23.897505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.013155, 15.693727, 23.724743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076501, 0.516528, 0.852846,
		0.888441, 0.352933, -0.293448,
		-0.452571, 0.780152, -0.431905,
		17.877384, 15.927773, 23.595171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519148, 15.983912, 24.152166>,  <18.194183, 15.381666, 23.897505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519148, 15.983912, 24.152166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.169846, 16.124887, 24.017578>,  <17.960264, 16.209473, 23.936825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.169846, 16.124887, 24.017578>,  <18.519148, 15.983912, 24.152166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.169846, 16.124887, 24.017578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093603, 0.556336, 0.825669,
		0.478190, 0.752513, -0.452833,
		-0.873254, 0.352440, -0.336472,
		17.907869, 16.230619, 23.916637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.624113, 16.698330, 24.249905>,  <18.519148, 15.983912, 24.152166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.624113, 16.698330, 24.249905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.237103, 16.605530, 24.209768>,  <18.004896, 16.549849, 24.185686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.237103, 16.605530, 24.209768>,  <18.624113, 16.698330, 24.249905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237103, 16.605530, 24.209768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230952, 0.650049, 0.723946,
		-0.102731, 0.723610, -0.682520,
		-0.967526, -0.232001, -0.100339,
		17.946844, 16.535929, 24.179667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292755, 17.318871, 24.264109>,  <18.624113, 16.698330, 24.249905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292755, 17.318871, 24.264109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.015125, 17.050732, 24.369102>,  <17.848547, 16.889849, 24.432098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.015125, 17.050732, 24.369102>,  <18.292755, 17.318871, 24.264109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015125, 17.050732, 24.369102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227756, 0.550349, 0.803270,
		-0.682927, 0.497746, -0.534658,
		-0.694073, -0.670347, 0.262484,
		17.806904, 16.849628, 24.447847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.745131, 17.802582, 24.428238>,  <18.292755, 17.318871, 24.264109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.745131, 17.802582, 24.428238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.664806, 17.440805, 24.578791>,  <17.616611, 17.223740, 24.669123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.664806, 17.440805, 24.578791>,  <17.745131, 17.802582, 24.428238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664806, 17.440805, 24.578791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410324, 0.426537, 0.806040,
		-0.889555, 0.007422, -0.456767,
		-0.200811, -0.904440, 0.376383,
		17.604563, 17.169474, 24.691706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065243, 17.665100, 24.433735>,  <17.745131, 17.802582, 24.428238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065243, 17.665100, 24.433735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.145624, 17.403475, 24.725439>,  <17.193853, 17.246500, 24.900461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.145624, 17.403475, 24.725439>,  <17.065243, 17.665100, 24.433735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145624, 17.403475, 24.725439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272471, 0.677748, 0.682947,
		-0.940945, -0.335943, -0.042017,
		0.200955, -0.654064, 0.729258,
		17.205910, 17.207256, 24.944216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577353, 17.735113, 24.830965>,  <17.065243, 17.665100, 24.433735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577353, 17.735113, 24.830965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.841715, 17.551132, 25.068163>,  <17.000332, 17.440742, 25.210482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.841715, 17.551132, 25.068163>,  <16.577353, 17.735113, 24.830965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841715, 17.551132, 25.068163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262702, 0.598382, 0.756919,
		-0.702986, -0.656034, 0.274644,
		0.660907, -0.459954, 0.592996,
		17.039988, 17.413145, 25.246061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265244, 17.583397, 25.413124>,  <16.577353, 17.735113, 24.830965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265244, 17.583397, 25.413124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.645681, 17.588764, 25.536570>,  <16.873943, 17.591984, 25.610638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.645681, 17.588764, 25.536570>,  <16.265244, 17.583397, 25.413124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645681, 17.588764, 25.536570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277184, 0.478057, 0.833445,
		-0.136352, -0.878226, 0.458396,
		0.951093, 0.013418, 0.308614,
		16.931009, 17.592791, 25.629154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181503, 17.416187, 26.072498>,  <16.265244, 17.583397, 25.413124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181503, 17.416187, 26.072498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.544119, 17.579458, 26.029459>,  <16.761688, 17.677420, 26.003635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.544119, 17.579458, 26.029459>,  <16.181503, 17.416187, 26.072498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544119, 17.579458, 26.029459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150919, 0.551460, 0.820436,
		0.394217, -0.727520, 0.561522,
		0.906541, 0.408174, -0.107598,
		16.816080, 17.701910, 25.997179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575623, 17.356247, 26.758574>,  <16.181503, 17.416187, 26.072498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575623, 17.356247, 26.758574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.768705, 17.639545, 26.552513>,  <16.884556, 17.809525, 26.428877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.768705, 17.639545, 26.552513>,  <16.575623, 17.356247, 26.758574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768705, 17.639545, 26.552513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096892, 0.627798, 0.772323,
		0.870406, -0.322891, 0.371665,
		0.482706, 0.708245, -0.515153,
		16.913517, 17.852018, 26.397966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156536, 17.584824, 27.184795>,  <16.575623, 17.356247, 26.758574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156536, 17.584824, 27.184795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.079439, 17.885225, 26.932178>,  <17.033180, 18.065466, 26.780609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.079439, 17.885225, 26.932178>,  <17.156536, 17.584824, 27.184795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079439, 17.885225, 26.932178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273111, 0.659235, 0.700585,
		0.942476, -0.037448, -0.332170,
		-0.192743, 0.751004, -0.631540,
		17.021616, 18.110527, 26.742716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701122, 18.085756, 27.412333>,  <17.156536, 17.584824, 27.184795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701122, 18.085756, 27.412333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.402739, 18.248863, 27.201708>,  <17.223707, 18.346727, 27.075333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.402739, 18.248863, 27.201708>,  <17.701122, 18.085756, 27.412333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402739, 18.248863, 27.201708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003799, 0.793239, 0.608898,
		0.665979, 0.452213, -0.593274,
		-0.745961, 0.407768, -0.526563,
		17.178951, 18.371193, 27.043739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239666, 17.711727, 27.702599>,  <17.701122, 18.085756, 27.412333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.239666, 17.711727, 27.702599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.067865, 17.744379, 27.342852>,  <17.964785, 17.763971, 27.127003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.067865, 17.744379, 27.342852>,  <18.239666, 17.711727, 27.702599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067865, 17.744379, 27.342852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086794, 0.987564, 0.131086,
		0.898886, 0.134361, -0.417074,
		-0.429500, 0.081632, -0.899370,
		17.939014, 17.768869, 27.073040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.133294, 16.606974, 27.254227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.531242, 16.635307, 27.283117>,  <10.770011, 16.652308, 27.300451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.531242, 16.635307, 27.283117>,  <10.133294, 16.606974, 27.254227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.531242, 16.635307, 27.283117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056562, 0.202460, -0.977656,
		-0.083873, 0.976726, 0.197415,
		0.994870, 0.070833, 0.072226,
		10.829703, 16.656557, 27.304785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.401484, 17.188492, 26.847448>,  <10.133294, 16.606974, 27.254227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.401484, 17.188492, 26.847448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.734653, 16.974758, 26.905043>,  <10.934553, 16.846518, 26.939600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.734653, 16.974758, 26.905043>,  <10.401484, 17.188492, 26.847448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.734653, 16.974758, 26.905043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209318, 0.063340, -0.975794,
		0.512279, 0.842897, 0.164603,
		0.832920, -0.534333, 0.143986,
		10.984529, 16.814459, 26.948238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.829816, 17.493359, 26.389654>,  <10.401484, 17.188492, 26.847448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.829816, 17.493359, 26.389654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.982976, 17.134863, 26.479223>,  <11.074872, 16.919765, 26.532965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.982976, 17.134863, 26.479223>,  <10.829816, 17.493359, 26.389654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.982976, 17.134863, 26.479223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158579, -0.175029, -0.971709,
		0.910077, 0.407577, 0.075106,
		0.382900, -0.896240, 0.223923,
		11.097846, 16.865992, 26.546400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.498062, 17.385649, 25.931904>,  <10.829816, 17.493359, 26.389654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.498062, 17.385649, 25.931904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.350564, 17.022377, 26.011141>,  <11.262065, 16.804415, 26.058683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.350564, 17.022377, 26.011141>,  <11.498062, 17.385649, 25.931904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.350564, 17.022377, 26.011141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118708, -0.257373, -0.958993,
		0.921920, -0.330108, 0.202713,
		-0.368744, -0.908178, 0.198091,
		11.239941, 16.749924, 26.070568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.825530, 16.945398, 25.399494>,  <11.498062, 17.385649, 25.931904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.825530, 16.945398, 25.399494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.551435, 16.710201, 25.571405>,  <11.386977, 16.569082, 25.674553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.551435, 16.710201, 25.571405>,  <11.825530, 16.945398, 25.399494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551435, 16.710201, 25.571405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154633, -0.459188, -0.874777,
		0.711713, -0.665890, 0.223731,
		-0.685240, -0.587994, 0.429779,
		11.345862, 16.533804, 25.700338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.880386, 16.329147, 25.064384>,  <11.825530, 16.945398, 25.399494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.880386, 16.329147, 25.064384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.506836, 16.321732, 25.207230>,  <11.282705, 16.317282, 25.292936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.506836, 16.321732, 25.207230>,  <11.880386, 16.329147, 25.064384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.506836, 16.321732, 25.207230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321793, -0.391971, -0.861863,
		0.155957, -0.919791, 0.360087,
		-0.933877, -0.018540, 0.357113,
		11.226673, 16.316170, 25.314363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.583225, 15.600416, 25.058697>,  <11.880386, 16.329147, 25.064384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.583225, 15.600416, 25.058697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.269831, 15.848795, 25.049118>,  <11.081794, 15.997822, 25.043371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.269831, 15.848795, 25.049118>,  <11.583225, 15.600416, 25.058697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.269831, 15.848795, 25.049118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215943, -0.308202, -0.926488,
		-0.582682, -0.720719, 0.375562,
		-0.783486, 0.620948, -0.023949,
		11.034784, 16.035078, 25.041933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.970647, 15.157607, 24.832617>,  <11.583225, 15.600416, 25.058697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.970647, 15.157607, 24.832617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.860107, 15.534714, 24.757973>,  <10.793783, 15.760978, 24.713186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.860107, 15.534714, 24.757973>,  <10.970647, 15.157607, 24.832617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.860107, 15.534714, 24.757973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202726, -0.246987, -0.947576,
		-0.939432, -0.224031, 0.259378,
		-0.276349, 0.942766, -0.186611,
		10.777203, 15.817543, 24.701990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.379115, 15.070721, 24.406553>,  <10.970647, 15.157607, 24.832617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.379115, 15.070721, 24.406553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.513232, 15.445537, 24.367496>,  <10.593702, 15.670426, 24.344063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.513232, 15.445537, 24.367496>,  <10.379115, 15.070721, 24.406553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.513232, 15.445537, 24.367496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087764, -0.072126, -0.993527,
		-0.938017, 0.341691, 0.058055,
		0.335292, 0.937040, -0.097644,
		10.613820, 15.726648, 24.338203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.095061, 15.207903, 23.878042>,  <10.379115, 15.070721, 24.406553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.095061, 15.207903, 23.878042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.347922, 15.517742, 23.870245>,  <10.499639, 15.703646, 23.865566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.347922, 15.517742, 23.870245>,  <10.095061, 15.207903, 23.878042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.347922, 15.517742, 23.870245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024684, -0.005015, -0.999683,
		-0.774451, 0.632432, 0.015950,
		0.632152, 0.774599, -0.019495,
		10.537568, 15.750122, 23.864397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.825656, 15.650222, 23.251574>,  <10.095061, 15.207903, 23.878042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.825656, 15.650222, 23.251574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.209668, 15.738937, 23.319870>,  <10.440075, 15.792167, 23.360847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.209668, 15.738937, 23.319870>,  <9.825656, 15.650222, 23.251574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.209668, 15.738937, 23.319870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157598, 0.075792, -0.984591,
		-0.231313, 0.972144, 0.037809,
		0.960030, 0.221790, 0.170740,
		10.497677, 15.805474, 23.371092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.069807, 16.165890, 22.732727>,  <9.825656, 15.650222, 23.251574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.069807, 16.165890, 22.732727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.408772, 16.014524, 22.881693>,  <10.612152, 15.923705, 22.971071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.408772, 16.014524, 22.881693>,  <10.069807, 16.165890, 22.732727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.408772, 16.014524, 22.881693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423417, 0.058482, -0.904045,
		0.320325, 0.923787, 0.209786,
		0.847414, -0.378415, 0.372414,
		10.662996, 15.901000, 22.993418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.609480, 16.694683, 22.538868>,  <10.069807, 16.165890, 22.732727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.609480, 16.694683, 22.538868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.788011, 16.340254, 22.588938>,  <10.895129, 16.127596, 22.618980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.788011, 16.340254, 22.588938>,  <10.609480, 16.694683, 22.538868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.788011, 16.340254, 22.588938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413883, 0.080379, -0.906774,
		0.793406, 0.456525, 0.402606,
		0.446326, -0.886072, 0.125174,
		10.921908, 16.074432, 22.626490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.346487, 16.786942, 22.348648>,  <10.609480, 16.694683, 22.538868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.346487, 16.786942, 22.348648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.236833, 16.403145, 22.322653>,  <11.171041, 16.172867, 22.307056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.236833, 16.403145, 22.322653>,  <11.346487, 16.786942, 22.348648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236833, 16.403145, 22.322653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357064, -0.038806, -0.933273,
		0.892947, -0.279048, 0.353239,
		-0.274135, -0.959493, -0.064987,
		11.154592, 16.115297, 22.303158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.846090, 17.445024, 22.217007>,  <11.346487, 16.786942, 22.348648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.846090, 17.445024, 22.217007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.864113, 17.820080, 22.079136>,  <11.874927, 18.045113, 21.996414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.864113, 17.820080, 22.079136>,  <11.846090, 17.445024, 22.217007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864113, 17.820080, 22.079136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057175, 0.346880, 0.936165,
		0.997347, -0.022472, 0.069239,
		0.045055, 0.937640, -0.344675,
		11.877629, 18.101372, 21.975733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.339770, 17.714836, 22.669380>,  <11.846090, 17.445024, 22.217007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.339770, 17.714836, 22.669380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.117054, 18.012329, 22.521408>,  <11.983424, 18.190825, 22.432625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.117054, 18.012329, 22.521408>,  <12.339770, 17.714836, 22.669380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117054, 18.012329, 22.521408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098240, 0.383261, 0.918401,
		0.824823, 0.547699, -0.140332,
		-0.556791, 0.743732, -0.369929,
		11.950017, 18.235449, 22.410429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.635938, 18.283819, 22.888197>,  <12.339770, 17.714836, 22.669380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.635938, 18.283819, 22.888197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.270645, 18.426722, 22.809837>,  <12.051470, 18.512463, 22.762821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.270645, 18.426722, 22.809837>,  <12.635938, 18.283819, 22.888197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.270645, 18.426722, 22.809837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044666, 0.390125, 0.919678,
		0.404985, 0.848629, -0.340317,
		-0.913232, 0.357255, -0.195900,
		11.996675, 18.533897, 22.751068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.564970, 19.018902, 23.195450>,  <12.635938, 18.283819, 22.888197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.564970, 19.018902, 23.195450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.191249, 18.891005, 23.132406>,  <11.967016, 18.814266, 23.094580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.191249, 18.891005, 23.132406>,  <12.564970, 19.018902, 23.195450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191249, 18.891005, 23.132406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283079, 0.396745, 0.873189,
		-0.216666, 0.860440, -0.461193,
		-0.934303, -0.319745, -0.157611,
		11.910958, 18.795082, 23.085123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.205055, 19.621046, 23.333998>,  <12.564970, 19.018902, 23.195450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.205055, 19.621046, 23.333998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.000613, 19.283325, 23.398401>,  <11.877948, 19.080692, 23.437044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.000613, 19.283325, 23.398401>,  <12.205055, 19.621046, 23.333998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.000613, 19.283325, 23.398401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324475, 0.362995, 0.873470,
		-0.795919, 0.394191, -0.459484,
		-0.511104, -0.844303, 0.161009,
		11.847281, 19.030035, 23.446705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.506069, 19.862816, 23.615728>,  <12.205055, 19.621046, 23.333998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.506069, 19.862816, 23.615728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.505558, 19.467775, 23.678518>,  <11.505252, 19.230751, 23.716192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.505558, 19.467775, 23.678518>,  <11.506069, 19.862816, 23.615728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.505558, 19.467775, 23.678518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535408, 0.133255, 0.834015,
		-0.844592, -0.082980, -0.528940,
		-0.001277, -0.987602, 0.156974,
		11.505175, 19.171495, 23.725611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.952276, 19.807617, 24.026773>,  <11.506069, 19.862816, 23.615728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.952276, 19.807617, 24.026773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.139707, 19.461891, 24.099873>,  <11.252165, 19.254456, 24.143732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.139707, 19.461891, 24.099873>,  <10.952276, 19.807617, 24.026773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.139707, 19.461891, 24.099873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323441, 0.024656, 0.945927,
		-0.822084, -0.502347, -0.268002,
		0.468576, -0.864314, 0.182749,
		11.280279, 19.202597, 24.154697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.488443, 19.452751, 24.393652>,  <10.952276, 19.807617, 24.026773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.488443, 19.452751, 24.393652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.852915, 19.313761, 24.482208>,  <11.071597, 19.230366, 24.535343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.852915, 19.313761, 24.482208>,  <10.488443, 19.452751, 24.393652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.852915, 19.313761, 24.482208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206328, 0.080284, 0.975184,
		-0.356629, -0.934245, 0.001459,
		0.911178, -0.347478, 0.221393,
		11.126268, 19.209518, 24.548626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.430632, 18.880203, 24.874296>,  <10.488443, 19.452751, 24.393652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.430632, 18.880203, 24.874296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.797540, 19.022213, 24.946489>,  <11.017684, 19.107420, 24.989805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.797540, 19.022213, 24.946489>,  <10.430632, 18.880203, 24.874296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.797540, 19.022213, 24.946489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188800, -0.011391, 0.981949,
		0.350674, -0.934787, 0.056580,
		0.917269, 0.355027, 0.180482,
		11.072721, 19.128721, 25.000633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.482638, 18.760088, 25.599913>,  <10.430632, 18.880203, 24.874296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.482638, 18.760088, 25.599913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.813919, 18.978077, 25.547625>,  <11.012688, 19.108870, 25.516253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.813919, 18.978077, 25.547625>,  <10.482638, 18.760088, 25.599913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.813919, 18.978077, 25.547625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122737, 0.051211, 0.991117,
		0.546827, -0.836888, -0.024475,
		0.828201, 0.544973, -0.130721,
		11.062379, 19.141569, 25.508408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993089, 18.446566, 26.045414>,  <10.482638, 18.760088, 25.599913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993089, 18.446566, 26.045414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.100304, 18.826103, 25.978657>,  <11.164633, 19.053825, 25.938602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.100304, 18.826103, 25.978657>,  <10.993089, 18.446566, 26.045414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.100304, 18.826103, 25.978657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060650, 0.189506, 0.980005,
		0.961498, -0.252555, 0.108342,
		0.268036, 0.948843, -0.166892,
		11.180715, 19.110756, 25.928589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.552014, 18.585211, 26.522549>,  <10.993089, 18.446566, 26.045414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.552014, 18.585211, 26.522549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.420674, 18.947828, 26.416439>,  <11.341870, 19.165398, 26.352774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.420674, 18.947828, 26.416439>,  <11.552014, 18.585211, 26.522549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.420674, 18.947828, 26.416439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031292, 0.291129, 0.956172,
		0.944038, 0.305657, -0.123959,
		-0.328349, 0.906542, -0.265272,
		11.322169, 19.219791, 26.336857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.024861, 19.205851, 26.722855>,  <11.552014, 18.585211, 26.522549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.024861, 19.205851, 26.722855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.662179, 19.369555, 26.682083>,  <11.444570, 19.467777, 26.657619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.662179, 19.369555, 26.682083>,  <12.024861, 19.205851, 26.722855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.662179, 19.369555, 26.682083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142909, 0.525497, 0.838708,
		0.396814, 0.745894, -0.534958,
		-0.906706, 0.409261, -0.101929,
		11.390167, 19.492332, 26.651505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.042260, 19.982641, 26.836454>,  <12.024861, 19.205851, 26.722855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.042260, 19.982641, 26.836454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.679625, 19.829317, 26.907072>,  <11.462043, 19.737322, 26.949444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.679625, 19.829317, 26.907072>,  <12.042260, 19.982641, 26.836454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.679625, 19.829317, 26.907072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053754, 0.519821, 0.852582,
		-0.418577, 0.763452, -0.491869,
		-0.906589, -0.383311, 0.176546,
		11.407648, 19.714323, 26.960035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125983, 20.728188, 26.666002>,  <12.042260, 19.982641, 26.836454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.125983, 20.728188, 26.666002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.451392, 20.960354, 26.680420>,  <12.646638, 21.099653, 26.689070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.451392, 20.960354, 26.680420>,  <12.125983, 20.728188, 26.666002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.451392, 20.960354, 26.680420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046234, 0.126336, -0.990910,
		-0.579692, 0.804461, 0.129612,
		0.813523, 0.580415, 0.036042,
		12.695449, 21.134478, 26.691233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096859, 21.319679, 26.092812>,  <12.125983, 20.728188, 26.666002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.096859, 21.319679, 26.092812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.482666, 21.283432, 26.192003>,  <12.714150, 21.261684, 26.251518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.482666, 21.283432, 26.192003>,  <12.096859, 21.319679, 26.092812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.482666, 21.283432, 26.192003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258764, 0.138014, -0.956030,
		0.052407, 0.986276, 0.156565,
		0.964518, -0.090616, 0.247980,
		12.772021, 21.256247, 26.266397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.464020, 21.741013, 25.606489>,  <12.096859, 21.319679, 26.092812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.464020, 21.741013, 25.606489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.737951, 21.487816, 25.750895>,  <12.902310, 21.335897, 25.837538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.737951, 21.487816, 25.750895>,  <12.464020, 21.741013, 25.606489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737951, 21.487816, 25.750895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386165, -0.104890, -0.916447,
		0.617969, 0.767021, 0.172607,
		0.684829, -0.632991, 0.361015,
		12.943400, 21.297918, 25.859200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.116044, 21.907686, 25.173538>,  <12.464020, 21.741013, 25.606489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.116044, 21.907686, 25.173538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.182483, 21.544464, 25.327341>,  <13.222346, 21.326530, 25.419622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.182483, 21.544464, 25.327341>,  <13.116044, 21.907686, 25.173538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182483, 21.544464, 25.327341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549322, -0.238620, -0.800816,
		0.818936, 0.344232, 0.459181,
		0.166097, -0.908056, 0.384509,
		13.232311, 21.272047, 25.442694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850923, 21.848404, 25.132113>,  <13.116044, 21.907686, 25.173538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850923, 21.848404, 25.132113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.710095, 21.476332, 25.173714>,  <13.625599, 21.253088, 25.198675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.710095, 21.476332, 25.173714>,  <13.850923, 21.848404, 25.132113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710095, 21.476332, 25.173714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534567, -0.291043, -0.793431,
		0.768301, -0.223744, 0.599710,
		-0.352067, -0.930179, 0.104003,
		13.604475, 21.197279, 25.204914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.415292, 21.526918, 24.870390>,  <13.850923, 21.848404, 25.132113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.415292, 21.526918, 24.870390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.143218, 21.235147, 24.899467>,  <13.979974, 21.060085, 24.916914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.143218, 21.235147, 24.899467>,  <14.415292, 21.526918, 24.870390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143218, 21.235147, 24.899467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416836, -0.466447, -0.780176,
		0.602990, -0.500362, 0.621321,
		-0.680184, -0.729428, 0.072694,
		13.939163, 21.016319, 24.921276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.759976, 20.803249, 24.934381>,  <14.415292, 21.526918, 24.870390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.759976, 20.803249, 24.934381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.398493, 20.768066, 24.766775>,  <14.181602, 20.746956, 24.666210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.398493, 20.768066, 24.766775>,  <14.759976, 20.803249, 24.934381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398493, 20.768066, 24.766775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412970, -0.437359, -0.798857,
		-0.112994, -0.894975, 0.431569,
		-0.903708, -0.087959, -0.419017,
		14.127380, 20.741678, 24.641069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673105, 20.072126, 24.822191>,  <14.759976, 20.803249, 24.934381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.673105, 20.072126, 24.822191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.426905, 20.276398, 24.582069>,  <14.279184, 20.398960, 24.437996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.426905, 20.276398, 24.582069>,  <14.673105, 20.072126, 24.822191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.426905, 20.276398, 24.582069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277649, -0.572349, -0.771575,
		-0.737610, -0.641580, 0.210493,
		-0.615502, 0.510678, -0.600304,
		14.242254, 20.429602, 24.401978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376270, 19.621454, 24.340313>,  <14.673105, 20.072126, 24.822191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376270, 19.621454, 24.340313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.326890, 19.975868, 24.161560>,  <14.297261, 20.188517, 24.054308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.326890, 19.975868, 24.161560>,  <14.376270, 19.621454, 24.340313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326890, 19.975868, 24.161560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074133, -0.440837, -0.894521,
		-0.989578, -0.143559, -0.011262,
		-0.123452, 0.886033, -0.446885,
		14.289854, 20.241678, 24.027494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869196, 19.454540, 23.874611>,  <14.376270, 19.621454, 24.340313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869196, 19.454540, 23.874611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.047700, 19.793034, 23.758169>,  <14.154802, 19.996130, 23.688305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.047700, 19.793034, 23.758169>,  <13.869196, 19.454540, 23.874611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.047700, 19.793034, 23.758169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058393, -0.352132, -0.934127,
		-0.892996, 0.399866, -0.206557,
		0.446261, 0.846233, -0.291103,
		14.181578, 20.046904, 23.670837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460603, 19.812931, 23.250181>,  <13.869196, 19.454540, 23.874611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460603, 19.812931, 23.250181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.843123, 19.929361, 23.239141>,  <14.072636, 19.999220, 23.232517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.843123, 19.929361, 23.239141>,  <13.460603, 19.812931, 23.250181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.843123, 19.929361, 23.239141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028517, -0.186793, -0.981985,
		-0.290986, 0.938288, -0.186931,
		0.956302, 0.291075, -0.027597,
		14.130014, 20.016684, 23.230862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.609667, 20.125187, 22.589956>,  <13.460603, 19.812931, 23.250181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.609667, 20.125187, 22.589956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.982257, 20.045691, 22.711843>,  <14.205812, 19.997992, 22.784975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.982257, 20.045691, 22.711843>,  <13.609667, 20.125187, 22.589956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982257, 20.045691, 22.711843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281835, -0.135433, -0.949856,
		0.230045, 0.970649, -0.070140,
		0.931476, -0.198742, 0.304719,
		14.261700, 19.986069, 22.803259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054331, 20.292183, 22.061478>,  <13.609667, 20.125187, 22.589956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054331, 20.292183, 22.061478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.314370, 20.067511, 22.266176>,  <14.470394, 19.932707, 22.388996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.314370, 20.067511, 22.266176>,  <14.054331, 20.292183, 22.061478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314370, 20.067511, 22.266176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569565, -0.085582, -0.817479,
		0.502960, 0.822915, 0.264278,
		0.650098, -0.561682, 0.511747,
		14.509399, 19.899006, 22.419701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826916, 20.583500, 21.920385>,  <14.054331, 20.292183, 22.061478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826916, 20.583500, 21.920385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.827027, 20.197720, 22.026089>,  <14.827094, 19.966251, 22.089510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.827027, 20.197720, 22.026089>,  <14.826916, 20.583500, 21.920385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.827027, 20.197720, 22.026089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500661, -0.228618, -0.834908,
		0.865643, 0.132538, 0.482800,
		0.000280, -0.964452, 0.264259,
		14.827111, 19.908384, 22.105366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.680865, 24.830416, 11.844015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.553297, 24.637358, 11.517740>,  <4.476756, 24.521523, 11.321976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.553297, 24.637358, 11.517740>,  <4.680865, 24.830416, 11.844015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.553297, 24.637358, 11.517740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184254, 0.875780, -0.446161,
		0.929699, 0.008003, -0.368234,
		-0.318921, -0.482644, -0.815686,
		4.457621, 24.492565, 11.273034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.864270, 24.062862, 11.711826>,  <4.680865, 24.830416, 11.844015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.864270, 24.062862, 11.711826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.209047, 23.950825, 11.880873>,  <5.415914, 23.883602, 11.982301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.209047, 23.950825, 11.880873>,  <4.864270, 24.062862, 11.711826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.209047, 23.950825, 11.880873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463913, -0.099409, 0.880286,
		-0.204551, -0.954812, -0.215624,
		0.861942, -0.280094, 0.422615,
		5.467630, 23.866796, 12.007657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.690450, 23.490667, 12.133568>,  <4.864270, 24.062862, 11.711826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.690450, 23.490667, 12.133568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.016846, 23.659170, 12.291910>,  <5.212684, 23.760271, 12.386915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.016846, 23.659170, 12.291910>,  <4.690450, 23.490667, 12.133568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.016846, 23.659170, 12.291910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416249, -0.046992, 0.908036,
		0.401118, -0.905723, 0.137003,
		0.815991, 0.421257, 0.395855,
		5.261643, 23.785547, 12.410666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.850660, 23.081379, 12.665526>,  <4.690450, 23.490667, 12.133568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.850660, 23.081379, 12.665526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.982058, 23.452744, 12.734972>,  <5.060896, 23.675562, 12.776639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.982058, 23.452744, 12.734972>,  <4.850660, 23.081379, 12.665526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.982058, 23.452744, 12.734972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176255, -0.120330, 0.976962,
		0.927915, -0.351525, 0.124110,
		0.328493, 0.928413, 0.173614,
		5.080606, 23.731268, 12.787056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.821717, 23.244608, 13.373370>,  <4.850660, 23.081379, 12.665526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.821717, 23.244608, 13.373370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.951932, 23.600981, 13.246713>,  <5.030062, 23.814804, 13.170718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.951932, 23.600981, 13.246713>,  <4.821717, 23.244608, 13.373370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.951932, 23.600981, 13.246713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190165, 0.389735, 0.901079,
		0.926209, -0.233121, 0.296298,
		0.325538, 0.890933, -0.316644,
		5.049594, 23.868261, 13.151719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.186795, 23.532711, 13.960298>,  <4.821717, 23.244608, 13.373370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.186795, 23.532711, 13.960298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.025244, 23.842340, 13.765282>,  <4.928314, 24.028118, 13.648273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.025244, 23.842340, 13.765282>,  <5.186795, 23.532711, 13.960298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.025244, 23.842340, 13.765282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278396, 0.403662, 0.871523,
		0.871423, 0.487718, 0.052469,
		-0.403877, 0.774073, -0.487539,
		4.904081, 24.074562, 13.619020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.553492, 24.160259, 14.213045>,  <5.186795, 23.532711, 13.960298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.553492, 24.160259, 14.213045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.178949, 24.266840, 14.121623>,  <4.954223, 24.330788, 14.066770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.178949, 24.266840, 14.121623>,  <5.553492, 24.160259, 14.213045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.178949, 24.266840, 14.121623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072894, 0.489303, 0.869062,
		0.343395, 0.830414, -0.438740,
		-0.936358, 0.266450, -0.228556,
		4.898042, 24.346775, 14.053056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.445754, 24.925955, 14.365298>,  <5.553492, 24.160259, 14.213045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.445754, 24.925955, 14.365298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.107977, 24.712254, 14.380743>,  <4.905311, 24.584032, 14.390010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.107977, 24.712254, 14.380743>,  <5.445754, 24.925955, 14.365298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.107977, 24.712254, 14.380743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245986, 0.450820, 0.858051,
		-0.475823, 0.715077, -0.512110,
		-0.844442, -0.534253, 0.038612,
		4.854644, 24.551977, 14.392326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.109313, 24.629383, 14.570832>,  <5.445754, 24.925955, 14.365298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.109313, 24.629383, 14.570832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.399092, 24.625219, 14.846533>,  <6.572959, 24.622721, 15.011953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.399092, 24.625219, 14.846533>,  <6.109313, 24.629383, 14.570832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.399092, 24.625219, 14.846533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139925, -0.976849, -0.161821,
		0.674979, 0.213675, -0.706220,
		0.724448, -0.010408, 0.689251,
		6.616426, 24.622097, 15.053308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.651660, 24.124302, 14.272793>,  <6.109313, 24.629383, 14.570832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.651660, 24.124302, 14.272793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.688465, 24.157242, 14.669731>,  <6.710547, 24.177006, 14.907894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.688465, 24.157242, 14.669731>,  <6.651660, 24.124302, 14.272793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.688465, 24.157242, 14.669731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239903, -0.969052, 0.058174,
		0.966427, 0.232715, -0.108920,
		0.092012, 0.082351, 0.992347,
		6.716068, 24.181948, 14.967435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.273036, 23.802446, 14.517819>,  <6.651660, 24.124302, 14.272793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.273036, 23.802446, 14.517819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.998765, 23.772955, 14.807484>,  <6.834201, 23.755260, 14.981282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.998765, 23.772955, 14.807484>,  <7.273036, 23.802446, 14.517819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.998765, 23.772955, 14.807484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110433, -0.993878, 0.003378,
		0.719478, 0.082287, 0.689623,
		-0.685679, -0.073726, 0.724160,
		6.793061, 23.750837, 15.024732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.608080, 23.430571, 15.126935>,  <7.273036, 23.802446, 14.517819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.608080, 23.430571, 15.126935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.211076, 23.382511, 15.118121>,  <6.972873, 23.353676, 15.112833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.211076, 23.382511, 15.118121>,  <7.608080, 23.430571, 15.126935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.211076, 23.382511, 15.118121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107203, -0.943223, 0.314386,
		-0.058557, 0.309669, 0.949039,
		-0.992511, -0.120149, -0.022035,
		6.913322, 23.346466, 15.111510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.409427, 22.991783, 15.732534>,  <7.608080, 23.430571, 15.126935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.409427, 22.991783, 15.732534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.068126, 22.989939, 15.523944>,  <6.863345, 22.988832, 15.398789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.068126, 22.989939, 15.523944>,  <7.409427, 22.991783, 15.732534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.068126, 22.989939, 15.523944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105879, -0.977603, 0.181887,
		-0.510636, 0.210409, 0.833654,
		-0.853253, -0.004612, -0.521477,
		6.812150, 22.988556, 15.367500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.064374, 22.663464, 16.186119>,  <7.409427, 22.991783, 15.732534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.064374, 22.663464, 16.186119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.859050, 22.630451, 15.844429>,  <6.735855, 22.610643, 15.639415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.859050, 22.630451, 15.844429>,  <7.064374, 22.663464, 16.186119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.859050, 22.630451, 15.844429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253880, -0.936211, 0.243010,
		-0.819791, 0.341610, 0.459614,
		-0.513310, -0.082530, -0.854226,
		6.705057, 22.605692, 15.588161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.443130, 22.297873, 16.368862>,  <7.064374, 22.663464, 16.186119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.443130, 22.297873, 16.368862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.504740, 22.262035, 15.975264>,  <6.541706, 22.240534, 15.739104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.504740, 22.262035, 15.975264>,  <6.443130, 22.297873, 16.368862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.504740, 22.262035, 15.975264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355711, -0.934134, 0.029374,
		-0.921817, 0.345494, -0.175749,
		0.154025, -0.089593, -0.983997,
		6.550947, 22.235157, 15.680064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.819038, 22.034157, 16.157280>,  <6.443130, 22.297873, 16.368862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.819038, 22.034157, 16.157280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.111584, 21.946215, 15.899050>,  <6.287112, 21.893450, 15.744111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.111584, 21.946215, 15.899050>,  <5.819038, 22.034157, 16.157280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.111584, 21.946215, 15.899050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389821, -0.911496, -0.131207,
		-0.559594, 0.347620, -0.752339,
		0.731364, -0.219855, -0.645577,
		6.330994, 21.880259, 15.705377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.450828, 21.659220, 15.642208>,  <5.819038, 22.034157, 16.157280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.450828, 21.659220, 15.642208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.840653, 21.571470, 15.623872>,  <6.074549, 21.518822, 15.612870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.840653, 21.571470, 15.623872>,  <5.450828, 21.659220, 15.642208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.840653, 21.571470, 15.623872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215800, -0.973769, 0.072147,
		-0.060465, -0.060419, -0.996340,
		0.974564, -0.219372, -0.045840,
		6.133023, 21.505659, 15.610120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.422460, 21.039869, 15.244792>,  <5.450828, 21.659220, 15.642208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.422460, 21.039869, 15.244792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.783962, 21.042553, 15.415992>,  <6.000863, 21.044163, 15.518712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.783962, 21.042553, 15.415992>,  <5.422460, 21.039869, 15.244792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.783962, 21.042553, 15.415992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086392, -0.976442, 0.197732,
		0.419243, -0.215677, -0.881884,
		0.903754, 0.006710, 0.427999,
		6.055088, 21.044565, 15.544392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.687901, 20.411356, 15.055449>,  <5.422460, 21.039869, 15.244792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.687901, 20.411356, 15.055449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.926505, 20.520983, 15.357194>,  <6.069667, 20.586760, 15.538241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.926505, 20.520983, 15.357194>,  <5.687901, 20.411356, 15.055449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.926505, 20.520983, 15.357194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193045, -0.961292, 0.196599,
		0.779045, 0.028353, -0.626326,
		0.596508, 0.274068, 0.754363,
		6.105457, 20.603203, 15.583503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.218816, 19.984524, 14.989583>,  <5.687901, 20.411356, 15.055449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.218816, 19.984524, 14.989583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.235720, 20.115191, 15.367261>,  <6.245862, 20.193590, 15.593867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.235720, 20.115191, 15.367261>,  <6.218816, 19.984524, 14.989583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.235720, 20.115191, 15.367261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233714, -0.922050, 0.308546,
		0.971387, 0.207632, -0.115312,
		0.042259, 0.326668, 0.944194,
		6.248398, 20.213190, 15.650519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.920202, 19.787613, 15.239576>,  <6.218816, 19.984524, 14.989583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.920202, 19.787613, 15.239576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.661907, 19.841497, 15.540209>,  <6.506929, 19.873829, 15.720589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.661907, 19.841497, 15.540209>,  <6.920202, 19.787613, 15.239576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.661907, 19.841497, 15.540209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161066, -0.938134, 0.306532,
		0.746377, 0.318994, 0.584092,
		-0.645739, 0.134711, 0.751581,
		6.468185, 19.881910, 15.765683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.212981, 19.338314, 15.744761>,  <6.920202, 19.787613, 15.239576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.212981, 19.338314, 15.744761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.841324, 19.426167, 15.863727>,  <6.618330, 19.478878, 15.935106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.841324, 19.426167, 15.863727>,  <7.212981, 19.338314, 15.744761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.841324, 19.426167, 15.863727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089846, -0.914449, 0.394602,
		0.358637, 0.339920, 0.869387,
		-0.929143, 0.219630, 0.297415,
		6.562581, 19.492056, 15.952951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.119285, 19.128580, 16.428953>,  <7.212981, 19.338314, 15.744761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.119285, 19.128580, 16.428953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.764788, 19.136826, 16.243849>,  <6.552089, 19.141773, 16.132786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.764788, 19.136826, 16.243849>,  <7.119285, 19.128580, 16.428953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.764788, 19.136826, 16.243849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230202, -0.886515, 0.401371,
		-0.401970, 0.462241, 0.790414,
		-0.886243, 0.020616, -0.462761,
		6.498915, 19.143011, 16.105021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.688637, 18.613689, 16.786398>,  <7.119285, 19.128580, 16.428953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.688637, 18.613689, 16.786398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.471833, 18.664549, 16.454119>,  <6.341751, 18.695065, 16.254751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.471833, 18.664549, 16.454119>,  <6.688637, 18.613689, 16.786398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.471833, 18.664549, 16.454119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326405, -0.942732, 0.068675,
		-0.774395, 0.308367, 0.552470,
		-0.542009, 0.127147, -0.830699,
		6.309231, 18.702694, 16.204908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.025539, 18.365734, 16.973579>,  <6.688637, 18.613689, 16.786398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.025539, 18.365734, 16.973579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.047758, 18.350964, 16.574471>,  <6.061090, 18.342102, 16.335005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.047758, 18.350964, 16.574471>,  <6.025539, 18.365734, 16.973579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.047758, 18.350964, 16.574471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466037, -0.884739, 0.006797,
		-0.883020, 0.464622, -0.066351,
		0.055545, -0.036924, -0.997773,
		6.064422, 18.339886, 16.275139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.354131, 18.316236, 16.689989>,  <6.025539, 18.365734, 16.973579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.354131, 18.316236, 16.689989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.617422, 18.147852, 16.440342>,  <5.775397, 18.046822, 16.290554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.617422, 18.147852, 16.440342>,  <5.354131, 18.316236, 16.689989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.617422, 18.147852, 16.440342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598522, -0.795492, -0.094680,
		-0.456625, 0.435871, -0.775571,
		0.658229, -0.420963, -0.624120,
		5.814891, 18.021563, 16.253105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.010926, 17.839329, 16.393742>,  <5.354131, 18.316236, 16.689989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.010926, 17.839329, 16.393742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.350959, 17.745890, 16.204939>,  <5.554979, 17.689827, 16.091658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.350959, 17.745890, 16.204939>,  <5.010926, 17.839329, 16.393742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.350959, 17.745890, 16.204939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384970, -0.887219, -0.254244,
		-0.359381, 0.397837, -0.844139,
		0.850084, -0.233598, -0.472005,
		5.605985, 17.675810, 16.063337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.807047, 17.620129, 15.647070>,  <5.010926, 17.839329, 16.393742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.807047, 17.620129, 15.647070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.158291, 17.454531, 15.743011>,  <5.369038, 17.355171, 15.800576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.158291, 17.454531, 15.743011>,  <4.807047, 17.620129, 15.647070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.158291, 17.454531, 15.743011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253869, -0.828070, -0.499851,
		0.405552, 0.378032, -0.832237,
		0.878110, -0.413995, 0.239855,
		5.421724, 17.330332, 15.814968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.129767, 17.391502, 15.046447>,  <4.807047, 17.620129, 15.647070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.129767, 17.391502, 15.046447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.294152, 17.190331, 15.350596>,  <5.392784, 17.069628, 15.533086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.294152, 17.190331, 15.350596>,  <5.129767, 17.391502, 15.046447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.294152, 17.190331, 15.350596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060410, -0.847252, -0.527745,
		0.909648, 0.170949, -0.378572,
		0.410963, -0.502932, 0.760374,
		5.417441, 17.039452, 15.578709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.594046, 16.921156, 14.793089>,  <5.129767, 17.391502, 15.046447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.594046, 16.921156, 14.793089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.508767, 16.776129, 15.155986>,  <5.457599, 16.689112, 15.373724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.508767, 16.776129, 15.155986>,  <5.594046, 16.921156, 14.793089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.508767, 16.776129, 15.155986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145569, -0.930016, -0.337461,
		0.966104, 0.060120, 0.251057,
		-0.213198, -0.362569, 0.907243,
		5.444807, 16.667358, 15.428159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.053841, 16.474745, 14.891624>,  <5.594046, 16.921156, 14.793089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.053841, 16.474745, 14.891624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.779101, 16.344692, 15.151633>,  <5.614258, 16.266661, 15.307638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.779101, 16.344692, 15.151633>,  <6.053841, 16.474745, 14.891624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.779101, 16.344692, 15.151633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155542, -0.939396, -0.305517,
		0.709961, -0.108738, 0.695795,
		-0.686849, -0.325131, 0.650022,
		5.573047, 16.247152, 15.346640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.630627, 16.234060, 14.598059>,  <6.053841, 16.474745, 14.891624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.630627, 16.234060, 14.598059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.005333, 16.107826, 14.537562>,  <7.230157, 16.032085, 14.501265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.005333, 16.107826, 14.537562>,  <6.630627, 16.234060, 14.598059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.005333, 16.107826, 14.537562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340505, 0.921711, 0.185755,
		0.080777, -0.225507, 0.970887,
		0.936766, -0.315588, -0.151240,
		7.286363, 16.013149, 14.492190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.142224, 16.462349, 15.176085>,  <6.630627, 16.234060, 14.598059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.142224, 16.462349, 15.176085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.339254, 16.394690, 14.834615>,  <7.457472, 16.354094, 14.629733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.339254, 16.394690, 14.834615>,  <7.142224, 16.462349, 15.176085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.339254, 16.394690, 14.834615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415911, 0.907412, 0.060185,
		0.764453, -0.384698, 0.517319,
		0.492574, -0.169149, -0.853674,
		7.487026, 16.343945, 14.578512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.805133, 16.495888, 15.347139>,  <7.142224, 16.462349, 15.176085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.805133, 16.495888, 15.347139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.774853, 16.583513, 14.958032>,  <7.756684, 16.636087, 14.724566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.774853, 16.583513, 14.958032>,  <7.805133, 16.495888, 15.347139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.774853, 16.583513, 14.958032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551193, 0.822162, 0.142252,
		0.830937, -0.525415, -0.182985,
		-0.075701, 0.219062, -0.972770,
		7.752142, 16.649233, 14.666201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.395400, 16.778635, 15.113789>,  <7.805133, 16.495888, 15.347139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.395400, 16.778635, 15.113789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.163300, 16.891529, 14.808200>,  <8.024039, 16.959267, 14.624846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.163300, 16.891529, 14.808200>,  <8.395400, 16.778635, 15.113789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.163300, 16.891529, 14.808200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441110, 0.897446, -0.003485,
		0.684640, -0.339018, -0.645241,
		-0.580250, 0.282236, -0.763971,
		7.989224, 16.976200, 14.579008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.902303, 17.013897, 14.634336>,  <8.395400, 16.778635, 15.113789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.902303, 17.013897, 14.634336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.543969, 17.163563, 14.538434>,  <8.328969, 17.253363, 14.480893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.543969, 17.163563, 14.538434>,  <8.902303, 17.013897, 14.634336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.543969, 17.163563, 14.538434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377966, 0.925275, 0.031736,
		0.233713, -0.062188, -0.970315,
		-0.895835, 0.374163, -0.239754,
		8.275219, 17.275812, 14.466508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.998934, 17.404583, 14.014348>,  <8.902303, 17.013897, 14.634336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.998934, 17.404583, 14.014348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.681619, 17.531605, 14.222137>,  <8.491229, 17.607819, 14.346811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.681619, 17.531605, 14.222137>,  <8.998934, 17.404583, 14.014348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.681619, 17.531605, 14.222137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442568, 0.886695, 0.133809,
		-0.418123, 0.336052, -0.843945,
		-0.793289, 0.317554, 0.519473,
		8.443632, 17.626871, 14.377979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.919513, 18.118340, 13.787170>,  <8.998934, 17.404583, 14.014348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.919513, 18.118340, 13.787170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.719285, 18.100487, 14.132989>,  <8.599149, 18.089775, 14.340480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.719285, 18.100487, 14.132989>,  <8.919513, 18.118340, 13.787170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.719285, 18.100487, 14.132989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391895, 0.878798, 0.272271,
		-0.771913, 0.475102, -0.422409,
		-0.500569, -0.044630, 0.864545,
		8.569115, 18.087097, 14.392352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.777168, 18.709307, 13.955345>,  <8.919513, 18.118340, 13.787170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.777168, 18.709307, 13.955345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.686931, 18.580732, 14.323212>,  <8.632788, 18.503588, 14.543932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.686931, 18.580732, 14.323212>,  <8.777168, 18.709307, 13.955345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.686931, 18.580732, 14.323212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384915, 0.837788, 0.387236,
		-0.894957, 0.441352, -0.065275,
		-0.225594, -0.321434, 0.919667,
		8.619252, 18.484303, 14.599112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.485258, 19.330290, 14.291156>,  <8.777168, 18.709307, 13.955345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.485258, 19.330290, 14.291156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.606787, 19.087868, 14.585200>,  <8.679704, 18.942415, 14.761627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.606787, 19.087868, 14.585200>,  <8.485258, 19.330290, 14.291156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.606787, 19.087868, 14.585200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503826, 0.757075, 0.415929,
		-0.808610, 0.244000, 0.535362,
		0.303823, -0.606054, 0.735112,
		8.697933, 18.906052, 14.805734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.208081, 19.669813, 14.869231>,  <8.485258, 19.330290, 14.291156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.208081, 19.669813, 14.869231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.500648, 19.428883, 14.997126>,  <8.676189, 19.284325, 15.073862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.500648, 19.428883, 14.997126>,  <8.208081, 19.669813, 14.869231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.500648, 19.428883, 14.997126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394286, 0.756085, 0.522373,
		-0.556386, -0.256006, 0.790504,
		0.731419, -0.602326, 0.319735,
		8.720074, 19.248184, 15.093046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.253765, 19.721760, 15.627069>,  <8.208081, 19.669813, 14.869231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.253765, 19.721760, 15.627069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.601623, 19.589432, 15.480492>,  <8.810337, 19.510035, 15.392546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.601623, 19.589432, 15.480492>,  <8.253765, 19.721760, 15.627069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.601623, 19.589432, 15.480492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472401, 0.773207, 0.423069,
		0.143376, -0.541027, 0.828694,
		0.869644, -0.330818, -0.366441,
		8.862515, 19.490187, 15.370560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.703782, 19.857178, 16.195505>,  <8.253765, 19.721760, 15.627069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.703782, 19.857178, 16.195505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.905215, 19.809895, 15.853177>,  <9.026075, 19.781525, 15.647779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.905215, 19.809895, 15.853177>,  <8.703782, 19.857178, 16.195505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.905215, 19.809895, 15.853177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386421, 0.916804, 0.100745,
		0.772711, -0.381441, 0.507366,
		0.503583, -0.118210, -0.855822,
		9.056290, 19.774431, 15.596431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.402841, 20.101414, 16.387728>,  <8.703782, 19.857178, 16.195505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.402841, 20.101414, 16.387728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.396293, 20.110497, 15.987885>,  <9.392365, 20.115946, 15.747978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.396293, 20.110497, 15.987885>,  <9.402841, 20.101414, 16.387728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.396293, 20.110497, 15.987885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444288, 0.895789, 0.013074,
		0.895734, -0.443900, -0.024751,
		-0.016368, 0.022707, -0.999608,
		9.391382, 20.117310, 15.688002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.026007, 20.348907, 16.193384>,  <9.402841, 20.101414, 16.387728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.026007, 20.348907, 16.193384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.769043, 20.413298, 15.893679>,  <9.614864, 20.451931, 15.713856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.769043, 20.413298, 15.893679>,  <10.026007, 20.348907, 16.193384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.769043, 20.413298, 15.893679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283156, 0.958365, -0.036877,
		0.712132, -0.235848, -0.661244,
		-0.642410, 0.160974, -0.749264,
		9.576320, 20.461590, 15.668900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.439302, 20.694740, 15.811210>,  <10.026007, 20.348907, 16.193384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.439302, 20.694740, 15.811210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.077394, 20.762928, 15.655092>,  <9.860250, 20.803841, 15.561421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.077394, 20.762928, 15.655092>,  <10.439302, 20.694740, 15.811210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.077394, 20.762928, 15.655092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249785, 0.954640, -0.162082,
		0.344960, -0.244137, -0.906311,
		-0.904770, 0.170471, -0.390295,
		9.805964, 20.814070, 15.538004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.517829, 21.071451, 15.211276>,  <10.439302, 20.694740, 15.811210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.517829, 21.071451, 15.211276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156176, 21.172453, 15.349136>,  <9.939183, 21.233053, 15.431852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156176, 21.172453, 15.349136>,  <10.517829, 21.071451, 15.211276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.156176, 21.172453, 15.349136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199179, 0.962755, -0.182841,
		-0.377982, -0.096666, -0.920753,
		-0.904133, 0.252505, 0.344650,
		9.884935, 21.248205, 15.452532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.350879, 21.691282, 14.852949>,  <10.517829, 21.071451, 15.211276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.350879, 21.691282, 14.852949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.055773, 21.695389, 15.122941>,  <9.878709, 21.697853, 15.284936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.055773, 21.695389, 15.122941>,  <10.350879, 21.691282, 14.852949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.055773, 21.695389, 15.122941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182076, 0.959802, -0.213608,
		-0.650040, -0.280490, -0.706239,
		-0.737764, 0.010265, 0.674980,
		9.834443, 21.698467, 15.325435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.790262, 22.146444, 14.506662>,  <10.350879, 21.691282, 14.852949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.790262, 22.146444, 14.506662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.766457, 22.136362, 14.905826>,  <9.752173, 22.130312, 15.145324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.766457, 22.136362, 14.905826>,  <9.790262, 22.146444, 14.506662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.766457, 22.136362, 14.905826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150278, 0.988514, 0.016007,
		-0.986851, -0.149011, -0.062617,
		-0.059512, -0.025207, 0.997909,
		9.748603, 22.128799, 15.205198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.268883, 22.681545, 14.650575>,  <9.790262, 22.146444, 14.506662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.268883, 22.681545, 14.650575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.484277, 22.645567, 14.985703>,  <9.613513, 22.623980, 15.186779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.484277, 22.645567, 14.985703>,  <9.268883, 22.681545, 14.650575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.484277, 22.645567, 14.985703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105523, 0.993657, 0.038854,
		-0.836001, 0.067487, 0.544562,
		0.538486, -0.089946, 0.837820,
		9.645823, 22.618584, 15.237048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.997849, 23.112019, 15.119530>,  <9.268883, 22.681545, 14.650575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.997849, 23.112019, 15.119530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.356533, 23.054880, 15.287102>,  <9.571744, 23.020597, 15.387645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.356533, 23.054880, 15.287102>,  <8.997849, 23.112019, 15.119530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.356533, 23.054880, 15.287102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095411, 0.986621, 0.132195,
		-0.432209, -0.078570, 0.898344,
		0.896712, -0.142848, 0.418930,
		9.625546, 23.012026, 15.412781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.981910, 23.504232, 15.721821>,  <8.997849, 23.112019, 15.119530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.981910, 23.504232, 15.721821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.374845, 23.450953, 15.669254>,  <9.610605, 23.418983, 15.637714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.374845, 23.450953, 15.669254>,  <8.981910, 23.504232, 15.721821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.374845, 23.450953, 15.669254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171145, 0.923523, 0.343240,
		0.075646, -0.359669, 0.930009,
		0.982338, -0.133201, -0.131416,
		9.669546, 23.410992, 15.629829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.069675, 20.052629, 27.633760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.794798, 19.896576, 27.388628>,  <16.629871, 19.802944, 27.241549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.794798, 19.896576, 27.388628>,  <17.069675, 20.052629, 27.633760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794798, 19.896576, 27.388628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662264, -0.010325, 0.749199,
		-0.298615, 0.920701, -0.251277,
		-0.687194, -0.390134, -0.612830,
		16.588640, 19.779535, 27.204779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.366106, 20.403593, 27.366505>,  <17.069675, 20.052629, 27.633760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.366106, 20.403593, 27.366505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.357138, 20.011522, 27.445242>,  <16.351757, 19.776279, 27.492485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.357138, 20.011522, 27.445242>,  <16.366106, 20.403593, 27.366505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357138, 20.011522, 27.445242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472773, 0.183881, 0.861785,
		-0.880899, -0.073740, -0.467525,
		-0.022420, -0.980179, 0.196843,
		16.350412, 19.717468, 27.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651806, 20.129602, 27.570456>,  <16.366106, 20.403593, 27.366505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651806, 20.129602, 27.570456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.913147, 19.890579, 27.756380>,  <16.069952, 19.747166, 27.867935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.913147, 19.890579, 27.756380>,  <15.651806, 20.129602, 27.570456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913147, 19.890579, 27.756380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508036, 0.109123, 0.854396,
		-0.561275, -0.794364, -0.232286,
		0.653353, -0.597560, 0.464813,
		16.109154, 19.711311, 27.895824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281853, 19.763464, 27.967279>,  <15.651806, 20.129602, 27.570456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281853, 19.763464, 27.967279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.643024, 19.690372, 28.122883>,  <15.859728, 19.646517, 28.216246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.643024, 19.690372, 28.122883>,  <15.281853, 19.763464, 27.967279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643024, 19.690372, 28.122883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420066, -0.183779, 0.888690,
		-0.090895, -0.965835, -0.242696,
		0.902930, -0.182725, 0.389010,
		15.913903, 19.635553, 28.239586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256722, 19.176214, 28.380457>,  <15.281853, 19.763464, 27.967279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256722, 19.176214, 28.380457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.567430, 19.402884, 28.490377>,  <15.753854, 19.538885, 28.556330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.567430, 19.402884, 28.490377>,  <15.256722, 19.176214, 28.380457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567430, 19.402884, 28.490377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324796, -0.013385, 0.945690,
		0.539575, -0.823834, 0.173656,
		0.776767, 0.566673, 0.274800,
		15.800460, 19.572886, 28.572817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527699, 18.830429, 28.920183>,  <15.256722, 19.176214, 28.380457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527699, 18.830429, 28.920183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.661479, 19.205929, 28.953392>,  <15.741748, 19.431229, 28.973318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.661479, 19.205929, 28.953392>,  <15.527699, 18.830429, 28.920183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661479, 19.205929, 28.953392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125608, -0.042907, 0.991152,
		0.934004, -0.341921, 0.103564,
		0.334452, 0.938749, 0.083024,
		15.761815, 19.487553, 28.978300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.999484, 18.706322, 29.413343>,  <15.527699, 18.830429, 28.920183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.999484, 18.706322, 29.413343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.918116, 19.097958, 29.412966>,  <15.869294, 19.332939, 29.412739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.918116, 19.097958, 29.412966>,  <15.999484, 18.706322, 29.413343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918116, 19.097958, 29.412966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225431, -0.045899, 0.973177,
		0.952786, 0.198178, 0.230054,
		-0.203422, 0.979091, -0.000943,
		15.857089, 19.391685, 29.412683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330593, 18.926542, 29.946377>,  <15.999484, 18.706322, 29.413343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330593, 18.926542, 29.946377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.026173, 19.173403, 29.866449>,  <15.843521, 19.321520, 29.818493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.026173, 19.173403, 29.866449>,  <16.330593, 18.926542, 29.946377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.026173, 19.173403, 29.866449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329654, -0.102650, 0.938505,
		0.558688, 0.780120, 0.281568,
		-0.761049, 0.617151, -0.199820,
		15.797858, 19.358549, 29.806503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221930, 18.967012, 30.570009>,  <16.330593, 18.926542, 29.946377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221930, 18.967012, 30.570009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.953841, 19.203238, 30.390213>,  <15.792988, 19.344973, 30.282335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.953841, 19.203238, 30.390213>,  <16.221930, 18.967012, 30.570009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953841, 19.203238, 30.390213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409939, 0.210294, 0.887539,
		0.618671, 0.779111, 0.101151,
		-0.670221, 0.590561, -0.449491,
		15.752775, 19.380405, 30.255365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.202412, 19.721708, 30.850279>,  <16.221930, 18.967012, 30.570009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.202412, 19.721708, 30.850279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.835660, 19.627178, 30.721601>,  <15.615609, 19.570461, 30.644394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.835660, 19.627178, 30.721601>,  <16.202412, 19.721708, 30.850279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835660, 19.627178, 30.721601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364133, 0.165010, 0.916613,
		-0.163534, 0.957561, -0.237347,
		-0.916877, -0.236324, -0.321695,
		15.560596, 19.556282, 30.625093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760314, 20.265736, 31.181034>,  <16.202412, 19.721708, 30.850279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760314, 20.265736, 31.181034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.523375, 19.958851, 31.082638>,  <15.381211, 19.774721, 31.023600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.523375, 19.958851, 31.082638>,  <15.760314, 20.265736, 31.181034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523375, 19.958851, 31.082638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522908, 0.133812, 0.841821,
		-0.612937, 0.627282, -0.480443,
		-0.592348, -0.767210, -0.245993,
		15.345670, 19.728687, 31.008841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072450, 20.377438, 31.380470>,  <15.760314, 20.265736, 31.181034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072450, 20.377438, 31.380470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.117560, 19.980724, 31.356318>,  <15.144627, 19.742697, 31.341825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.117560, 19.980724, 31.356318>,  <15.072450, 20.377438, 31.380470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117560, 19.980724, 31.356318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277661, -0.089807, 0.956472,
		-0.954037, -0.091102, -0.285507,
		0.112777, -0.991784, -0.060383,
		15.151394, 19.683189, 31.338203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791196, 19.980265, 31.910559>,  <15.072450, 20.377438, 31.380470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791196, 19.980265, 31.910559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.406236, 19.875782, 31.880737>,  <14.175260, 19.813093, 31.862844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.406236, 19.875782, 31.880737>,  <14.791196, 19.980265, 31.910559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.406236, 19.875782, 31.880737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220294, 0.589944, 0.776812,
		-0.158927, 0.764027, -0.625304,
		-0.962399, -0.261207, -0.074553,
		14.117516, 19.797421, 31.858372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.398017, 20.631165, 31.932722>,  <14.791196, 19.980265, 31.910559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.398017, 20.631165, 31.932722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.189135, 20.310236, 32.048363>,  <14.063806, 20.117678, 32.117748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.189135, 20.310236, 32.048363>,  <14.398017, 20.631165, 31.932722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189135, 20.310236, 32.048363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309253, 0.494071, 0.812561,
		-0.794773, 0.334919, -0.506127,
		-0.522205, -0.802324, 0.289100,
		14.032473, 20.069538, 32.135094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047905, 21.185453, 32.142075>,  <14.398017, 20.631165, 31.932722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047905, 21.185453, 32.142075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.699075, 21.364468, 32.221268>,  <13.489777, 21.471876, 32.268784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.699075, 21.364468, 32.221268>,  <14.047905, 21.185453, 32.142075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.699075, 21.364468, 32.221268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245935, -0.051028, -0.967942,
		-0.423085, -0.892809, 0.154565,
		-0.872075, 0.447535, 0.197983,
		13.437452, 21.498728, 32.280663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.520114, 20.786619, 31.849939>,  <14.047905, 21.185453, 32.142075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.520114, 20.786619, 31.849939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.380520, 21.159937, 31.883804>,  <13.296763, 21.383928, 31.904123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.380520, 21.159937, 31.883804>,  <13.520114, 20.786619, 31.849939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380520, 21.159937, 31.883804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342745, -0.043034, -0.938442,
		-0.872201, -0.356520, 0.334901,
		-0.348986, 0.933296, 0.084660,
		13.275825, 21.439926, 31.909203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.915040, 20.703415, 31.510221>,  <13.520114, 20.786619, 31.849939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.915040, 20.703415, 31.510221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.929628, 21.103077, 31.517757>,  <12.938381, 21.342875, 31.522280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.929628, 21.103077, 31.517757>,  <12.915040, 20.703415, 31.510221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.929628, 21.103077, 31.517757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338219, 0.030082, -0.940587,
		-0.940361, 0.027932, 0.339031,
		0.036471, 0.999157, 0.018841,
		12.940570, 21.402824, 31.523409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.291836, 20.861538, 31.226463>,  <12.915040, 20.703415, 31.510221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.291836, 20.861538, 31.226463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.535709, 21.173508, 31.169895>,  <12.682034, 21.360689, 31.135954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.535709, 21.173508, 31.169895>,  <12.291836, 20.861538, 31.226463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535709, 21.173508, 31.169895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208262, -0.014528, -0.977965,
		-0.764795, 0.625703, 0.153572,
		0.609684, 0.779926, -0.141421,
		12.718615, 21.407486, 31.127468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.921628, 21.475950, 30.980345>,  <12.291836, 20.861538, 31.226463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.921628, 21.475950, 30.980345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.292756, 21.544216, 30.847666>,  <12.515432, 21.585176, 30.768059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.292756, 21.544216, 30.847666>,  <11.921628, 21.475950, 30.980345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292756, 21.544216, 30.847666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361998, 0.197298, -0.911060,
		-0.090043, 0.965374, 0.244837,
		0.927820, 0.170665, -0.331699,
		12.571102, 21.595415, 30.748156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841022, 21.832922, 30.307064>,  <11.921628, 21.475950, 30.980345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841022, 21.832922, 30.307064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.235165, 21.771875, 30.276657>,  <12.471650, 21.735247, 30.258413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.235165, 21.771875, 30.276657>,  <11.841022, 21.832922, 30.307064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.235165, 21.771875, 30.276657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067540, 0.059977, -0.995912,
		0.156553, 0.986464, 0.048791,
		0.985358, -0.152617, -0.076015,
		12.530772, 21.726089, 30.253853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.061697, 22.282999, 29.786352>,  <11.841022, 21.832922, 30.307064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.061697, 22.282999, 29.786352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.371416, 22.030380, 29.802406>,  <12.557247, 21.878809, 29.812038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.371416, 22.030380, 29.802406>,  <12.061697, 22.282999, 29.786352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371416, 22.030380, 29.802406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102364, 0.062408, -0.992787,
		0.624489, 0.772821, 0.112970,
		0.774297, -0.631549, 0.040136,
		12.603705, 21.840916, 29.814447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690996, 22.605581, 29.451338>,  <12.061697, 22.282999, 29.786352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690996, 22.605581, 29.451338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.747459, 22.210213, 29.429085>,  <12.781338, 21.972992, 29.415733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.747459, 22.210213, 29.429085>,  <12.690996, 22.605581, 29.451338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747459, 22.210213, 29.429085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143394, 0.076016, -0.986742,
		0.979547, 0.131309, 0.152464,
		0.141158, -0.988423, -0.055632,
		12.789806, 21.913687, 29.412395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.220440, 22.515709, 29.030516>,  <12.690996, 22.605581, 29.451338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.220440, 22.515709, 29.030516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.087605, 22.138424, 29.033915>,  <13.007904, 21.912054, 29.035954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.087605, 22.138424, 29.033915>,  <13.220440, 22.515709, 29.030516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087605, 22.138424, 29.033915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201119, -0.079604, -0.976327,
		0.921558, -0.322517, 0.216133,
		-0.332087, -0.943210, 0.008495,
		12.987979, 21.855461, 29.036463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.734242, 22.056536, 28.770111>,  <13.220440, 22.515709, 29.030516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.734242, 22.056536, 28.770111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.388558, 21.871197, 28.691679>,  <13.181148, 21.759993, 28.644619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.388558, 21.871197, 28.691679>,  <13.734242, 22.056536, 28.770111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388558, 21.871197, 28.691679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336244, -0.241983, -0.910156,
		0.374273, -0.852497, 0.364922,
		-0.864210, -0.463350, -0.196079,
		13.129295, 21.732191, 28.632854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.821231, 21.478848, 28.332674>,  <13.734242, 22.056536, 28.770111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.821231, 21.478848, 28.332674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.426742, 21.530216, 28.290964>,  <13.190048, 21.561037, 28.265938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.426742, 21.530216, 28.290964>,  <13.821231, 21.478848, 28.332674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.426742, 21.530216, 28.290964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018894, -0.538786, -0.842231,
		-0.164343, -0.832597, 0.528937,
		-0.986222, 0.128421, -0.104276,
		13.130875, 21.568743, 28.259682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.649313, 20.834219, 28.133724>,  <13.821231, 21.478848, 28.332674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.649313, 20.834219, 28.133724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.360888, 21.084419, 28.014517>,  <13.187833, 21.234539, 27.942993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.360888, 21.084419, 28.014517>,  <13.649313, 20.834219, 28.133724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.360888, 21.084419, 28.014517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055873, -0.481214, -0.874821,
		-0.690614, -0.614149, 0.381934,
		-0.721062, 0.625503, -0.298019,
		13.144568, 21.272070, 27.925112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.190568, 20.464176, 27.786222>,  <13.649313, 20.834219, 28.133724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.190568, 20.464176, 27.786222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.068995, 20.819307, 27.648014>,  <12.996052, 21.032387, 27.565090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.068995, 20.819307, 27.648014>,  <13.190568, 20.464176, 27.786222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068995, 20.819307, 27.648014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109005, -0.392702, -0.913183,
		-0.946437, -0.239882, 0.216133,
		-0.303932, 0.887830, -0.345519,
		12.977816, 21.085657, 27.544359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.584583, 20.330935, 27.282902>,  <13.190568, 20.464176, 27.786222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.584583, 20.330935, 27.282902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.737472, 20.694056, 27.213854>,  <12.829205, 20.911928, 27.172424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.737472, 20.694056, 27.213854>,  <12.584583, 20.330935, 27.282902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737472, 20.694056, 27.213854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020929, -0.195260, -0.980528,
		-0.923834, 0.371166, -0.093632,
		0.382221, 0.907805, -0.172620,
		12.852138, 20.966396, 27.162067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.823398, 20.377272, 27.467447>,  <12.584583, 20.330935, 27.282902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.823398, 20.377272, 27.467447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.537749, 20.097815, 27.449871>,  <11.366361, 19.930140, 27.439325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.537749, 20.097815, 27.449871>,  <11.823398, 20.377272, 27.467447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.537749, 20.097815, 27.449871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293023, 0.241328, 0.925148,
		-0.635743, 0.673543, -0.377055,
		-0.714121, -0.698642, -0.043940,
		11.323513, 19.888222, 27.436689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.252968, 20.694485, 27.803999>,  <11.823398, 20.377272, 27.467447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.252968, 20.694485, 27.803999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.170305, 20.303581, 27.823021>,  <11.120708, 20.069040, 27.834435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.170305, 20.303581, 27.823021>,  <11.252968, 20.694485, 27.803999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.170305, 20.303581, 27.823021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376178, 0.124230, 0.918182,
		-0.903207, 0.171860, -0.393295,
		-0.206658, -0.977257, 0.047556,
		11.108308, 20.010405, 27.837288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.640277, 20.641811, 28.251060>,  <11.252968, 20.694485, 27.803999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.640277, 20.641811, 28.251060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.752754, 20.257998, 28.245049>,  <10.820241, 20.027710, 28.241442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.752754, 20.257998, 28.245049>,  <10.640277, 20.641811, 28.251060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.752754, 20.257998, 28.245049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362992, -0.120849, 0.923922,
		-0.888351, -0.254344, -0.382285,
		0.281193, -0.959533, -0.015032,
		10.837112, 19.970137, 28.240540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.067389, 20.150951, 28.414619>,  <10.640277, 20.641811, 28.251060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.067389, 20.150951, 28.414619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.380715, 19.916100, 28.496296>,  <10.568711, 19.775188, 28.545301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.380715, 19.916100, 28.496296>,  <10.067389, 20.150951, 28.414619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.380715, 19.916100, 28.496296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414200, -0.248040, 0.875736,
		-0.463523, -0.770555, -0.437483,
		0.783316, -0.587130, 0.204191,
		10.615710, 19.739962, 28.557554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.827557, 19.565521, 28.787663>,  <10.067389, 20.150951, 28.414619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.827557, 19.565521, 28.787663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.219809, 19.600767, 28.857634>,  <10.455160, 19.621916, 28.899616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.219809, 19.600767, 28.857634>,  <9.827557, 19.565521, 28.787663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.219809, 19.600767, 28.857634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150213, -0.234824, 0.960361,
		0.125701, -0.968036, -0.217039,
		0.980630, 0.088116, 0.174930,
		10.513998, 19.627201, 28.910112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.962767, 18.994438, 29.250835>,  <9.827557, 19.565521, 28.787663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.962767, 18.994438, 29.250835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.252614, 19.259499, 29.326544>,  <10.426522, 19.418535, 29.371969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.252614, 19.259499, 29.326544>,  <9.962767, 18.994438, 29.250835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.252614, 19.259499, 29.326544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071413, -0.200965, 0.976992,
		0.685441, -0.721462, -0.098301,
		0.724618, 0.662650, 0.189272,
		10.469999, 19.458294, 29.383326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.494772, 18.653296, 29.748783>,  <9.962767, 18.994438, 29.250835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.494772, 18.653296, 29.748783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.574241, 19.043705, 29.784361>,  <10.621922, 19.277950, 29.805708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.574241, 19.043705, 29.784361>,  <10.494772, 18.653296, 29.748783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.574241, 19.043705, 29.784361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015438, -0.087628, 0.996033,
		0.979944, -0.199257, -0.002341,
		0.198672, 0.976021, 0.088946,
		10.633842, 19.336512, 29.811045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186820, 18.149515, 29.812243>,  <10.494772, 18.653296, 29.748783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186820, 18.149515, 29.812243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.087803, 17.783691, 29.940184>,  <11.028393, 17.564198, 30.016949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.087803, 17.783691, 29.940184>,  <11.186820, 18.149515, 29.812243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087803, 17.783691, 29.940184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097994, -0.352070, -0.930830,
		0.963908, -0.199077, 0.176773,
		-0.247543, -0.914557, 0.319855,
		11.013540, 17.509325, 30.036140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.770061, 17.736670, 29.667334>,  <11.186820, 18.149515, 29.812243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.770061, 17.736670, 29.667334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.432255, 17.522457, 29.667747>,  <11.229571, 17.393930, 29.667995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.432255, 17.522457, 29.667747>,  <11.770061, 17.736670, 29.667334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.432255, 17.522457, 29.667747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252752, -0.400288, -0.880844,
		0.472133, -0.743625, 0.473406,
		-0.844516, -0.535529, 0.001037,
		11.178900, 17.361799, 29.668058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.972459, 17.133659, 29.333031>,  <11.770061, 17.736670, 29.667334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.972459, 17.133659, 29.333031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.573574, 17.118902, 29.307085>,  <11.334243, 17.110048, 29.291517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.573574, 17.118902, 29.307085>,  <11.972459, 17.133659, 29.333031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573574, 17.118902, 29.307085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073357, -0.644065, -0.761445,
		-0.013682, -0.764080, 0.644976,
		-0.997212, -0.036895, -0.064863,
		11.274410, 17.107834, 29.287626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.678007, 16.353760, 29.253021>,  <11.972459, 17.133659, 29.333031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.678007, 16.353760, 29.253021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.411597, 16.611574, 29.102831>,  <11.251751, 16.766264, 29.012716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.411597, 16.611574, 29.102831>,  <11.678007, 16.353760, 29.253021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.411597, 16.611574, 29.102831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177652, -0.625942, -0.759366,
		-0.724466, -0.439052, 0.531396,
		-0.666025, 0.644538, -0.375475,
		11.211790, 16.804935, 28.990189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.337219, 15.945574, 28.726446>,  <11.678007, 16.353760, 29.253021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.337219, 15.945574, 28.726446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.191636, 16.300863, 28.614309>,  <11.104286, 16.514038, 28.547028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.191636, 16.300863, 28.614309>,  <11.337219, 15.945574, 28.726446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.191636, 16.300863, 28.614309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400119, -0.420897, -0.814095,
		-0.841094, -0.184127, 0.508585,
		-0.363959, 0.888225, -0.280341,
		11.082448, 16.567331, 28.530207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769169, 15.846115, 28.375177>,  <11.337219, 15.945574, 28.726446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769169, 15.846115, 28.375177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.842660, 16.220936, 28.256397>,  <10.886754, 16.445827, 28.185129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.842660, 16.220936, 28.256397>,  <10.769169, 15.846115, 28.375177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.842660, 16.220936, 28.256397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111483, -0.280281, -0.953422,
		-0.976635, 0.208275, 0.052970,
		0.183727, 0.937051, -0.296952,
		10.897778, 16.502050, 28.167313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.297176, 16.083349, 27.807201>,  <10.769169, 15.846115, 28.375177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.297176, 16.083349, 27.807201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.594392, 16.343222, 27.742937>,  <10.772721, 16.499146, 27.704378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.594392, 16.343222, 27.742937>,  <10.297176, 16.083349, 27.807201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.594392, 16.343222, 27.742937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163647, -0.056396, -0.984906,
		-0.648933, 0.758114, 0.064414,
		0.743038, 0.649679, -0.160660,
		10.817304, 16.538126, 27.694738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<14.092341, 17.495714, 32.517540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.291265, 17.695774, 32.233982>,  <14.410620, 17.815811, 32.063847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.291265, 17.695774, 32.233982>,  <14.092341, 17.495714, 32.517540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.291265, 17.695774, 32.233982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206575, -0.725336, -0.656669,
		-0.842621, 0.473008, -0.257398,
		0.497310, 0.500151, -0.708894,
		14.440458, 17.845819, 32.021313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.764352, 17.345623, 31.907373>,  <14.092341, 17.495714, 32.517540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.764352, 17.345623, 31.907373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.126193, 17.482315, 31.805460>,  <14.343298, 17.564331, 31.744312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.126193, 17.482315, 31.805460>,  <13.764352, 17.345623, 31.907373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.126193, 17.482315, 31.805460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070174, -0.708959, -0.701750,
		-0.420440, 0.616926, -0.665306,
		0.904603, 0.341731, -0.254782,
		14.397573, 17.584835, 31.729025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878245, 17.545952, 31.180801>,  <13.764352, 17.345623, 31.907373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.878245, 17.545952, 31.180801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.244478, 17.456125, 31.314236>,  <14.464218, 17.402229, 31.394297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.244478, 17.456125, 31.314236>,  <13.878245, 17.545952, 31.180801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244478, 17.456125, 31.314236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128642, -0.622387, -0.772066,
		0.380998, 0.749803, -0.540958,
		0.915583, -0.224566, 0.333584,
		14.519153, 17.388756, 31.414310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.395214, 17.644669, 30.584604>,  <13.878245, 17.545952, 31.180801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.395214, 17.644669, 30.584604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.579721, 17.396179, 30.838001>,  <14.690426, 17.247086, 30.990040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.579721, 17.396179, 30.838001>,  <14.395214, 17.644669, 30.584604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579721, 17.396179, 30.838001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084028, -0.680190, -0.728204,
		0.883273, 0.389129, -0.261550,
		0.461269, -0.621225, 0.633491,
		14.718102, 17.209812, 31.028049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077318, 17.440071, 30.296087>,  <14.395214, 17.644669, 30.584604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077318, 17.440071, 30.296087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.005164, 17.141157, 30.551908>,  <14.961872, 16.961809, 30.705400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.005164, 17.141157, 30.551908>,  <15.077318, 17.440071, 30.296087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005164, 17.141157, 30.551908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235941, -0.664108, -0.709432,
		0.954879, 0.022926, 0.296110,
		-0.180384, -0.747286, 0.639552,
		14.951049, 16.916971, 30.743774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649896, 17.030687, 30.317114>,  <15.077318, 17.440071, 30.296087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649896, 17.030687, 30.317114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.356840, 16.797384, 30.457430>,  <15.181006, 16.657402, 30.541620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.356840, 16.797384, 30.457430>,  <15.649896, 17.030687, 30.317114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.356840, 16.797384, 30.457430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194096, -0.673040, -0.713683,
		0.652355, -0.454785, 0.606303,
		-0.732639, -0.583256, 0.350789,
		15.137049, 16.622408, 30.562666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887019, 16.405865, 30.451382>,  <15.649896, 17.030687, 30.317114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887019, 16.405865, 30.451382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.493545, 16.349266, 30.406952>,  <15.257460, 16.315306, 30.380295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.493545, 16.349266, 30.406952>,  <15.887019, 16.405865, 30.451382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.493545, 16.349266, 30.406952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179598, -0.737558, -0.650963,
		0.010186, -0.660293, 0.750939,
		-0.983688, -0.141498, -0.111074,
		15.198439, 16.306816, 30.373631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895762, 15.748562, 30.240616>,  <15.887019, 16.405865, 30.451382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895762, 15.748562, 30.240616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.515116, 15.851141, 30.172901>,  <15.286728, 15.912688, 30.132273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.515116, 15.851141, 30.172901>,  <15.895762, 15.748562, 30.240616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515116, 15.851141, 30.172901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099736, -0.778857, -0.619221,
		-0.290648, -0.572378, 0.766751,
		-0.951618, 0.256448, -0.169286,
		15.229630, 15.928076, 30.122116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495556, 15.119423, 30.228016>,  <15.895762, 15.748562, 30.240616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495556, 15.119423, 30.228016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.299373, 15.408204, 30.032778>,  <15.181663, 15.581472, 29.915636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.299373, 15.408204, 30.032778>,  <15.495556, 15.119423, 30.228016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.299373, 15.408204, 30.032778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023625, -0.548864, -0.835578,
		-0.871145, -0.421347, 0.252138,
		-0.490457, 0.721953, -0.488094,
		15.152235, 15.624790, 29.886349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137228, 14.719941, 29.832727>,  <15.495556, 15.119423, 30.228016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137228, 14.719941, 29.832727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.135615, 15.084472, 29.668062>,  <15.134648, 15.303190, 29.569263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.135615, 15.084472, 29.668062>,  <15.137228, 14.719941, 29.832727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135615, 15.084472, 29.668062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092056, -0.409582, -0.907617,
		-0.995746, -0.041555, -0.082242,
		-0.004031, 0.911326, -0.411665,
		15.134406, 15.357870, 29.544563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749403, 14.628535, 29.254623>,  <15.137228, 14.719941, 29.832727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749403, 14.628535, 29.254623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.946343, 14.972256, 29.199209>,  <15.064507, 15.178488, 29.165960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.946343, 14.972256, 29.199209>,  <14.749403, 14.628535, 29.254623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946343, 14.972256, 29.199209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290067, -0.312053, -0.904701,
		-0.820641, 0.405246, -0.402894,
		0.492351, 0.859301, -0.138535,
		15.094049, 15.230046, 29.157648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497303, 14.827576, 28.657879>,  <14.749403, 14.628535, 29.254623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497303, 14.827576, 28.657879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.830985, 15.042497, 28.707529>,  <15.031195, 15.171450, 28.737320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.830985, 15.042497, 28.707529>,  <14.497303, 14.827576, 28.657879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830985, 15.042497, 28.707529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266146, -0.195138, -0.943974,
		-0.482978, 0.820504, -0.305786,
		0.834205, 0.537303, 0.124127,
		15.081246, 15.203688, 28.744766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.997847, 14.289401, 29.032305>,  <14.497303, 14.827576, 28.657879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.997847, 14.289401, 29.032305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.676201, 14.051634, 29.029024>,  <13.483213, 13.908974, 29.027056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.676201, 14.051634, 29.029024>,  <13.997847, 14.289401, 29.032305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.676201, 14.051634, 29.029024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456249, 0.608242, 0.649522,
		-0.381099, 0.526032, -0.760298,
		-0.804115, -0.594417, -0.008201,
		13.434966, 13.873308, 29.026564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490481, 14.757385, 29.073872>,  <13.997847, 14.289401, 29.032305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490481, 14.757385, 29.073872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.309307, 14.408198, 29.146290>,  <13.200603, 14.198687, 29.189741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.309307, 14.408198, 29.146290>,  <13.490481, 14.757385, 29.073872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309307, 14.408198, 29.146290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499922, 0.416826, 0.759167,
		-0.738191, 0.253347, -0.625211,
		-0.452937, -0.872967, 0.181043,
		13.173426, 14.146308, 29.200603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.771824, 14.916670, 29.003906>,  <13.490481, 14.757385, 29.073872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.771824, 14.916670, 29.003906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.826084, 14.596164, 29.236998>,  <12.858641, 14.403860, 29.376852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.826084, 14.596164, 29.236998>,  <12.771824, 14.916670, 29.003906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.826084, 14.596164, 29.236998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548116, 0.429266, 0.717844,
		-0.825329, -0.416779, -0.380956,
		0.135651, -0.801266, 0.582729,
		12.866779, 14.355784, 29.411816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104350, 14.902936, 29.406118>,  <12.771824, 14.916670, 29.003906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104350, 14.902936, 29.406118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.372894, 14.680452, 29.602039>,  <12.534020, 14.546962, 29.719593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.372894, 14.680452, 29.602039>,  <12.104350, 14.902936, 29.406118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.372894, 14.680452, 29.602039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343946, 0.351581, 0.870685,
		-0.656488, -0.753009, 0.044731,
		0.671360, -0.556209, 0.489803,
		12.574303, 14.513590, 29.748980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.818251, 14.893730, 30.018215>,  <12.104350, 14.902936, 29.406118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.818251, 14.893730, 30.018215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.167393, 14.717717, 30.102591>,  <12.376878, 14.612109, 30.153215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.167393, 14.717717, 30.102591>,  <11.818251, 14.893730, 30.018215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.167393, 14.717717, 30.102591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170330, 0.130341, 0.976729,
		-0.457287, -0.888471, 0.038818,
		0.872855, -0.440033, 0.210936,
		12.429250, 14.585708, 30.165871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720747, 14.479136, 30.545183>,  <11.818251, 14.893730, 30.018215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720747, 14.479136, 30.545183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.117723, 14.525144, 30.562321>,  <12.355907, 14.552748, 30.572603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.117723, 14.525144, 30.562321>,  <11.720747, 14.479136, 30.545183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117723, 14.525144, 30.562321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077338, 0.314958, 0.945950,
		0.095307, -0.942111, 0.321472,
		0.992439, 0.115018, 0.042843,
		12.415454, 14.559649, 30.575174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.938403, 14.183228, 31.198885>,  <11.720747, 14.479136, 30.545183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.938403, 14.183228, 31.198885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.231644, 14.438820, 31.105705>,  <12.407588, 14.592175, 31.049797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.231644, 14.438820, 31.105705>,  <11.938403, 14.183228, 31.198885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.231644, 14.438820, 31.105705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073290, 0.414737, 0.906985,
		0.676159, -0.647840, 0.350875,
		0.733102, 0.638981, -0.232948,
		12.451574, 14.630514, 31.035820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.418527, 14.204010, 31.775581>,  <11.938403, 14.183228, 31.198885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.418527, 14.204010, 31.775581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.466547, 14.541738, 31.566692>,  <12.495359, 14.744374, 31.441359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.466547, 14.541738, 31.566692>,  <12.418527, 14.204010, 31.775581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.466547, 14.541738, 31.566692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263951, 0.479947, 0.836649,
		0.957036, -0.238280, -0.165241,
		0.120050, 0.844319, -0.522220,
		12.502562, 14.795033, 31.410027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.058784, 14.448820, 32.039909>,  <12.418527, 14.204010, 31.775581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.058784, 14.448820, 32.039909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.851092, 14.755706, 31.889294>,  <12.726478, 14.939837, 31.798923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.851092, 14.755706, 31.889294>,  <13.058784, 14.448820, 32.039909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.851092, 14.755706, 31.889294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123465, 0.503305, 0.855243,
		0.845670, 0.397576, -0.356055,
		-0.519229, 0.767214, -0.376543,
		12.695324, 14.985870, 31.776331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.428935, 15.031753, 32.255638>,  <13.058784, 14.448820, 32.039909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.428935, 15.031753, 32.255638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.066858, 15.160931, 32.145126>,  <12.849612, 15.238438, 32.078819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.066858, 15.160931, 32.145126>,  <13.428935, 15.031753, 32.255638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.066858, 15.160931, 32.145126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011835, 0.630670, 0.775961,
		0.424837, 0.705663, -0.567056,
		-0.905192, 0.322946, -0.276284,
		12.795300, 15.257814, 32.062241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480206, 15.733003, 32.407284>,  <13.428935, 15.031753, 32.255638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480206, 15.733003, 32.407284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.085809, 15.674644, 32.374950>,  <12.849171, 15.639629, 32.355549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.085809, 15.674644, 32.374950>,  <13.480206, 15.733003, 32.407284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.085809, 15.674644, 32.374950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156795, 0.645508, 0.747486,
		-0.056876, 0.749689, -0.659341,
		-0.985992, -0.145895, -0.080834,
		12.790011, 15.630876, 32.350700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192175, 16.386999, 32.468594>,  <13.480206, 15.733003, 32.407284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192175, 16.386999, 32.468594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.926825, 16.104250, 32.566788>,  <12.767614, 15.934601, 32.625706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.926825, 16.104250, 32.566788>,  <13.192175, 16.386999, 32.468594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926825, 16.104250, 32.566788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338724, 0.576201, 0.743814,
		-0.667232, 0.410275, -0.621672,
		-0.663376, -0.706871, 0.245490,
		12.727812, 15.892189, 32.640434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704267, 16.885397, 32.734612>,  <13.192175, 16.386999, 32.468594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704267, 16.885397, 32.734612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.557948, 16.529888, 32.845085>,  <12.470157, 16.316584, 32.911369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.557948, 16.529888, 32.845085>,  <12.704267, 16.885397, 32.734612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.557948, 16.529888, 32.845085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342405, 0.404451, 0.848044,
		-0.865420, 0.215646, -0.452267,
		-0.365797, -0.888772, 0.276182,
		12.448209, 16.263256, 32.927940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.989001, 16.944378, 32.919350>,  <12.704267, 16.885397, 32.734612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.989001, 16.944378, 32.919350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.099936, 16.613920, 33.115543>,  <12.166498, 16.415646, 33.233257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.099936, 16.613920, 33.115543>,  <11.989001, 16.944378, 32.919350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.099936, 16.613920, 33.115543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622248, 0.234522, 0.746864,
		-0.732045, -0.512335, -0.449024,
		0.277339, -0.826143, 0.490480,
		12.183138, 16.366077, 33.262688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446150, 16.427185, 32.682381>,  <11.989001, 16.944378, 32.919350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446150, 16.427185, 32.682381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.104305, 16.596289, 32.802990>,  <10.899199, 16.697750, 32.875355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.104305, 16.596289, 32.802990>,  <11.446150, 16.427185, 32.682381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.104305, 16.596289, 32.802990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083232, 0.461639, -0.883154,
		-0.512556, -0.779849, -0.359335,
		-0.854611, 0.422758, 0.301524,
		10.847922, 16.723116, 32.893448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003012, 16.192644, 32.262394>,  <11.446150, 16.427185, 32.682381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003012, 16.192644, 32.262394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.865448, 16.539543, 32.406399>,  <10.782909, 16.747683, 32.492802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.865448, 16.539543, 32.406399>,  <11.003012, 16.192644, 32.262394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.865448, 16.539543, 32.406399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076290, 0.407932, -0.909819,
		-0.935899, -0.285430, -0.206454,
		-0.343909, 0.867249, 0.360008,
		10.762275, 16.799717, 32.514400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.435596, 16.371201, 31.860498>,  <11.003012, 16.192644, 32.262394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.435596, 16.371201, 31.860498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.498860, 16.735584, 32.012886>,  <10.536819, 16.954214, 32.104317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.498860, 16.735584, 32.012886>,  <10.435596, 16.371201, 31.860498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.498860, 16.735584, 32.012886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030359, 0.381155, -0.924012,
		-0.986947, 0.157706, 0.032627,
		0.158158, 0.910961, 0.380968,
		10.546308, 17.008873, 32.127178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.951461, 16.859619, 31.639383>,  <10.435596, 16.371201, 31.860498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.951461, 16.859619, 31.639383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.279982, 17.076502, 31.710350>,  <10.477094, 17.206631, 31.752930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.279982, 17.076502, 31.710350>,  <9.951461, 16.859619, 31.639383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.279982, 17.076502, 31.710350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066281, 0.399570, -0.914303,
		-0.566631, 0.739160, 0.364106,
		0.821302, 0.542206, 0.177416,
		10.526372, 17.239164, 31.763575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.783311, 17.441029, 31.251488>,  <9.951461, 16.859619, 31.639383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.783311, 17.441029, 31.251488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.178515, 17.400438, 31.298029>,  <10.415638, 17.376083, 31.325954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.178515, 17.400438, 31.298029>,  <9.783311, 17.441029, 31.251488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.178515, 17.400438, 31.298029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138810, 0.253983, -0.957196,
		0.067580, 0.961871, 0.265023,
		0.988010, -0.101475, 0.116354,
		10.474918, 17.369995, 31.332935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.959616, 17.832323, 30.784109>,  <9.783311, 17.441029, 31.251488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.959616, 17.832323, 30.784109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.306200, 17.640924, 30.841080>,  <10.514151, 17.526085, 30.875261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.306200, 17.640924, 30.841080>,  <9.959616, 17.832323, 30.784109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.306200, 17.640924, 30.841080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247998, 0.164928, -0.954618,
		0.433291, 0.862462, 0.261570,
		0.866462, -0.478496, 0.142427,
		10.566138, 17.497375, 30.883808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.485117, 18.220291, 30.363049>,  <9.959616, 17.832323, 30.784109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.485117, 18.220291, 30.363049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.605512, 17.843428, 30.422029>,  <10.677749, 17.617310, 30.457418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.605512, 17.843428, 30.422029>,  <10.485117, 18.220291, 30.363049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.605512, 17.843428, 30.422029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304836, -0.051454, -0.951014,
		0.903593, 0.331193, 0.271717,
		0.300988, -0.942159, 0.147453,
		10.695808, 17.560780, 30.466265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.008228, 18.739134, 30.322762>,  <10.485117, 18.220291, 30.363049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.008228, 18.739134, 30.322762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.892506, 19.120249, 30.285892>,  <10.823072, 19.348919, 30.263771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.892506, 19.120249, 30.285892>,  <11.008228, 18.739134, 30.322762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892506, 19.120249, 30.285892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004576, 0.094914, 0.995475,
		0.957226, 0.288419, -0.023100,
		-0.289307, 0.952788, -0.092174,
		10.805714, 19.406086, 30.258240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.469737, 19.098312, 30.734392>,  <11.008228, 18.739134, 30.322762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.469737, 19.098312, 30.734392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.174554, 19.366201, 30.701185>,  <10.997444, 19.526934, 30.681261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.174554, 19.366201, 30.701185>,  <11.469737, 19.098312, 30.734392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174554, 19.366201, 30.701185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084574, 0.213826, 0.973204,
		0.669526, 0.711162, -0.214435,
		-0.737958, 0.669721, -0.083016,
		10.953167, 19.567118, 30.676281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.703176, 19.682142, 31.006023>,  <11.469737, 19.098312, 30.734392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.703176, 19.682142, 31.006023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.305654, 19.700747, 31.046389>,  <11.067140, 19.711908, 31.070608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.305654, 19.700747, 31.046389>,  <11.703176, 19.682142, 31.006023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.305654, 19.700747, 31.046389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107011, 0.156097, 0.981928,
		0.029917, 0.986646, -0.160107,
		-0.993808, 0.046510, 0.100912,
		11.007511, 19.714699, 31.076662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.644113, 20.156921, 31.469267>,  <11.703176, 19.682142, 31.006023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.644113, 20.156921, 31.469267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.272270, 20.009501, 31.468542>,  <11.049165, 19.921049, 31.468107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.272270, 20.009501, 31.468542>,  <11.644113, 20.156921, 31.469267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.272270, 20.009501, 31.468542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052578, 0.127747, 0.990412,
		-0.364786, 0.920788, -0.138132,
		-0.929606, -0.368551, -0.001813,
		10.993388, 19.898935, 31.467999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.252908, 20.729650, 31.757038>,  <11.644113, 20.156921, 31.469267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.252908, 20.729650, 31.757038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.098038, 20.371483, 31.844969>,  <11.005116, 20.156582, 31.897728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.098038, 20.371483, 31.844969>,  <11.252908, 20.729650, 31.757038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.098038, 20.371483, 31.844969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000635, 0.238166, 0.971224,
		-0.922006, 0.376173, -0.091643,
		-0.387174, -0.895417, 0.219829,
		10.981886, 20.102858, 31.910917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.813523, 20.889051, 32.278942>,  <11.252908, 20.729650, 31.757038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.813523, 20.889051, 32.278942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.821931, 20.491642, 32.323608>,  <10.826976, 20.253197, 32.350410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.821931, 20.491642, 32.323608>,  <10.813523, 20.889051, 32.278942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.821931, 20.491642, 32.323608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052808, 0.110434, 0.992480,
		-0.998383, -0.026758, -0.050144,
		0.021019, -0.993523, 0.111668,
		10.828237, 20.193584, 32.357109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.347919, 20.721697, 32.789474>,  <10.813523, 20.889051, 32.278942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.347919, 20.721697, 32.789474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.584829, 20.399782, 32.773811>,  <10.726975, 20.206635, 32.764416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.584829, 20.399782, 32.773811>,  <10.347919, 20.721697, 32.789474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.584829, 20.399782, 32.773811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201450, 0.100852, 0.974293,
		-0.780147, -0.584936, 0.221856,
		0.592274, -0.804785, -0.039156,
		10.762511, 20.158346, 32.762066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.214275, 20.376192, 33.346848>,  <10.347919, 20.721697, 32.789474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.214275, 20.376192, 33.346848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.567686, 20.229715, 33.230038>,  <10.779733, 20.141829, 33.159950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.567686, 20.229715, 33.230038>,  <10.214275, 20.376192, 33.346848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.567686, 20.229715, 33.230038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323848, 0.027174, 0.945719,
		-0.338381, -0.930142, 0.142600,
		0.883528, -0.366194, -0.292029,
		10.832745, 20.119858, 33.142429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.344950, 19.797626, 33.724033>,  <10.214275, 20.376192, 33.346848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.344950, 19.797626, 33.724033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.697434, 19.925495, 33.584736>,  <10.908925, 20.002216, 33.501156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.697434, 19.925495, 33.584736>,  <10.344950, 19.797626, 33.724033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.697434, 19.925495, 33.584736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380706, -0.043212, 0.923686,
		0.280228, -0.946543, -0.159780,
		0.881212, 0.319672, -0.348246,
		10.961798, 20.021397, 33.480263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.010989, 15.761868, 18.116758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377622, 15.921713, 18.111238>,  <13.597601, 16.017620, 18.107927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377622, 15.921713, 18.111238>,  <13.010989, 15.761868, 18.116758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377622, 15.921713, 18.111238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205491, 0.500378, 0.841068,
		0.343005, -0.768071, 0.540753,
		0.916581, 0.399610, -0.013800,
		13.652596, 16.041595, 18.107098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.291748, 15.654319, 18.802200>,  <13.010989, 15.761868, 18.116758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.291748, 15.654319, 18.802200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468365, 15.968506, 18.628727>,  <13.574334, 16.157019, 18.524643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.468365, 15.968506, 18.628727>,  <13.291748, 15.654319, 18.802200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.468365, 15.968506, 18.628727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189557, 0.554103, 0.810579,
		0.876989, -0.275696, 0.393550,
		0.441540, 0.785469, -0.433683,
		13.600827, 16.204147, 18.498623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.605621, 16.018494, 19.403395>,  <13.291748, 15.654319, 18.802200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.605621, 16.018494, 19.403395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585032, 16.291946, 19.112190>,  <13.572679, 16.456018, 18.937468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585032, 16.291946, 19.112190>,  <13.605621, 16.018494, 19.403395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585032, 16.291946, 19.112190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357197, 0.668151, 0.652675,
		0.932609, 0.293638, 0.209800,
		-0.051473, 0.683631, -0.728010,
		13.569591, 16.497036, 18.893787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849370, 16.585609, 19.696253>,  <13.605621, 16.018494, 19.403395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849370, 16.585609, 19.696253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652470, 16.721975, 19.375887>,  <13.534329, 16.803795, 19.183666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652470, 16.721975, 19.375887>,  <13.849370, 16.585609, 19.696253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652470, 16.721975, 19.375887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543464, 0.598376, 0.588721,
		0.679952, 0.725068, -0.109277,
		-0.492251, 0.340914, -0.800916,
		13.504794, 16.824249, 19.135612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.032477, 17.288197, 19.603558>,  <13.849370, 16.585609, 19.696253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.032477, 17.288197, 19.603558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.667564, 17.210224, 19.459478>,  <13.448617, 17.163441, 19.373032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.667564, 17.210224, 19.459478>,  <14.032477, 17.288197, 19.603558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.667564, 17.210224, 19.459478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397853, 0.630573, 0.666401,
		0.097229, 0.751252, -0.652814,
		-0.912282, -0.194931, -0.360198,
		13.393880, 17.151745, 19.351419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785823, 17.869238, 19.461109>,  <14.032477, 17.288197, 19.603558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785823, 17.869238, 19.461109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.451581, 17.651491, 19.490572>,  <13.251036, 17.520844, 19.508249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.451581, 17.651491, 19.490572>,  <13.785823, 17.869238, 19.461109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.451581, 17.651491, 19.490572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363500, 0.648472, 0.668844,
		-0.411862, 0.532115, -0.739745,
		-0.835606, -0.544369, 0.073657,
		13.200899, 17.488180, 19.512669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.273760, 18.358557, 19.684093>,  <13.785823, 17.869238, 19.461109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.273760, 18.358557, 19.684093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.113010, 17.996819, 19.741577>,  <13.016561, 17.779776, 19.776068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.113010, 17.996819, 19.741577>,  <13.273760, 18.358557, 19.684093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.113010, 17.996819, 19.741577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686293, 0.401363, 0.606555,
		-0.606217, 0.145132, -0.781945,
		-0.401874, -0.904347, 0.143710,
		12.992448, 17.725513, 19.784691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.579472, 18.587982, 19.687695>,  <13.273760, 18.358557, 19.684093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.579472, 18.587982, 19.687695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593756, 18.228678, 19.862900>,  <12.602326, 18.013096, 19.968023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.593756, 18.228678, 19.862900>,  <12.579472, 18.587982, 19.687695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.593756, 18.228678, 19.862900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496185, 0.364516, 0.787991,
		-0.867482, -0.245474, -0.432686,
		0.035711, -0.898260, 0.438012,
		12.604469, 17.959200, 19.994303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.870477, 18.508883, 19.948370>,  <12.579472, 18.587982, 19.687695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.870477, 18.508883, 19.948370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.059386, 18.224520, 20.156818>,  <12.172732, 18.053902, 20.281887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.059386, 18.224520, 20.156818>,  <11.870477, 18.508883, 19.948370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.059386, 18.224520, 20.156818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553019, 0.221401, 0.803213,
		-0.686387, -0.667528, -0.288583,
		0.472275, -0.710907, 0.521122,
		12.201069, 18.011248, 20.313154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365707, 18.060486, 20.325583>,  <11.870477, 18.508883, 19.948370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365707, 18.060486, 20.325583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721207, 18.063305, 20.508919>,  <11.934506, 18.064997, 20.618919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721207, 18.063305, 20.508919>,  <11.365707, 18.060486, 20.325583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721207, 18.063305, 20.508919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447938, 0.225694, 0.865109,
		-0.097349, -0.974173, 0.203742,
		0.888749, 0.007046, 0.458340,
		11.987831, 18.065420, 20.646421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.339799, 17.666573, 20.935711>,  <11.365707, 18.060486, 20.325583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.339799, 17.666573, 20.935711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651482, 17.907290, 21.005779>,  <11.838491, 18.051720, 21.047819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651482, 17.907290, 21.005779>,  <11.339799, 17.666573, 20.935711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651482, 17.907290, 21.005779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389433, 0.245871, 0.887631,
		0.491101, -0.759864, 0.425942,
		0.779206, 0.601793, 0.175169,
		11.885243, 18.087828, 21.058331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.601065, 17.329346, 21.496456>,  <11.339799, 17.666573, 20.935711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.601065, 17.329346, 21.496456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754624, 17.698633, 21.503241>,  <11.846760, 17.920206, 21.507311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754624, 17.698633, 21.503241>,  <11.601065, 17.329346, 21.496456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754624, 17.698633, 21.503241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295175, 0.105295, 0.949623,
		0.874925, -0.369566, 0.312934,
		0.383899, 0.923219, 0.016962,
		11.869794, 17.975599, 21.508329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720368, 16.629107, 21.701435>,  <11.601065, 17.329346, 21.496456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720368, 16.629107, 21.701435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.521427, 16.297167, 21.802618>,  <11.402062, 16.098003, 21.863327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.521427, 16.297167, 21.802618>,  <11.720368, 16.629107, 21.701435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.521427, 16.297167, 21.802618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290176, -0.433908, -0.852949,
		0.817581, -0.350814, 0.456609,
		-0.497352, -0.829852, 0.252957,
		11.372222, 16.048212, 21.878506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066443, 16.008898, 21.499725>,  <11.720368, 16.629107, 21.701435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066443, 16.008898, 21.499725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686205, 15.884809, 21.504267>,  <11.458061, 15.810357, 21.506992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686205, 15.884809, 21.504267>,  <12.066443, 16.008898, 21.499725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686205, 15.884809, 21.504267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161799, -0.526348, -0.834732,
		0.264926, -0.791657, 0.550539,
		-0.950597, -0.310219, 0.011354,
		11.401026, 15.791743, 21.507673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.152100, 15.333396, 21.241163>,  <12.066443, 16.008898, 21.499725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.152100, 15.333396, 21.241163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761580, 15.412326, 21.205593>,  <11.527269, 15.459683, 21.184252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761580, 15.412326, 21.205593>,  <12.152100, 15.333396, 21.241163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761580, 15.412326, 21.205593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039143, -0.565063, -0.824118,
		-0.212867, -0.801104, 0.559393,
		-0.976297, 0.197324, -0.088926,
		11.468692, 15.471523, 21.178915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.799846, 14.632987, 21.030819>,  <12.152100, 15.333396, 21.241163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.799846, 14.632987, 21.030819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536380, 14.916969, 20.931120>,  <11.378301, 15.087358, 20.871302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536380, 14.916969, 20.931120>,  <11.799846, 14.632987, 21.030819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536380, 14.916969, 20.931120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213167, -0.493746, -0.843075,
		-0.721611, -0.502172, 0.476552,
		-0.658664, 0.709957, -0.249246,
		11.338780, 15.129956, 20.856346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.108867, 14.282188, 20.866329>,  <11.799846, 14.632987, 21.030819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.108867, 14.282188, 20.866329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.098134, 14.643874, 20.695835>,  <11.091694, 14.860886, 20.593538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.098134, 14.643874, 20.695835>,  <11.108867, 14.282188, 20.866329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.098134, 14.643874, 20.695835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434390, -0.394575, -0.809701,
		-0.900325, 0.163427, 0.403368,
		-0.026832, 0.904214, -0.426237,
		11.090084, 14.915138, 20.567965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.359035, 14.277966, 20.600803>,  <11.108867, 14.282188, 20.866329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.359035, 14.277966, 20.600803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.607121, 14.531562, 20.416027>,  <10.755972, 14.683720, 20.305161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.607121, 14.531562, 20.416027>,  <10.359035, 14.277966, 20.600803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.607121, 14.531562, 20.416027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164561, -0.470626, -0.866851,
		-0.766976, 0.613652, -0.187559,
		0.620215, 0.633989, -0.461942,
		10.793185, 14.721759, 20.277445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.094173, 14.458205, 20.021694>,  <10.359035, 14.277966, 20.600803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.094173, 14.458205, 20.021694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.463284, 14.553582, 19.900614>,  <10.684752, 14.610808, 19.827967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.463284, 14.553582, 19.900614>,  <10.094173, 14.458205, 20.021694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.463284, 14.553582, 19.900614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135046, -0.535612, -0.833596,
		-0.360894, 0.810102, -0.462050,
		0.922778, 0.238442, -0.302700,
		10.740118, 14.625114, 19.809803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.086207, 14.838356, 19.270416>,  <10.094173, 14.458205, 20.021694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.086207, 14.838356, 19.270416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451762, 14.689291, 19.334829>,  <10.671095, 14.599852, 19.373478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451762, 14.689291, 19.334829>,  <10.086207, 14.838356, 19.270416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451762, 14.689291, 19.334829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089183, -0.202681, -0.975175,
		0.396050, 0.905562, -0.151992,
		0.913888, -0.372663, 0.161032,
		10.725928, 14.577492, 19.383139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672973, 15.071232, 18.789391>,  <10.086207, 14.838356, 19.270416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672973, 15.071232, 18.789391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812722, 14.712305, 18.897285>,  <10.896572, 14.496949, 18.962023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812722, 14.712305, 18.897285>,  <10.672973, 15.071232, 18.789391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.812722, 14.712305, 18.897285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308518, -0.161660, -0.937381,
		0.884734, 0.410716, 0.220359,
		0.349374, -0.897317, 0.269739,
		10.917535, 14.443110, 18.978207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.184916, 15.043313, 18.328312>,  <10.672973, 15.071232, 18.789391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.184916, 15.043313, 18.328312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.150138, 14.672871, 18.475155>,  <11.129271, 14.450605, 18.563261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.150138, 14.672871, 18.475155>,  <11.184916, 15.043313, 18.328312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150138, 14.672871, 18.475155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395081, -0.370338, -0.840690,
		0.914522, 0.071942, 0.398087,
		-0.086946, -0.926107, 0.367106,
		11.124054, 14.395039, 18.585287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.807254, 14.638550, 18.175360>,  <11.184916, 15.043313, 18.328312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.807254, 14.638550, 18.175360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536198, 14.355167, 18.254242>,  <11.373564, 14.185138, 18.301571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536198, 14.355167, 18.254242>,  <11.807254, 14.638550, 18.175360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536198, 14.355167, 18.254242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354291, -0.549504, -0.756652,
		0.644422, -0.442870, 0.623367,
		-0.677641, -0.708457, 0.197207,
		11.332905, 14.142631, 18.313404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.052899, 14.028801, 17.903074>,  <11.807254, 14.638550, 18.175360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.052899, 14.028801, 17.903074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669762, 13.923181, 17.948349>,  <11.439879, 13.859809, 17.975513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669762, 13.923181, 17.948349>,  <12.052899, 14.028801, 17.903074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.669762, 13.923181, 17.948349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050531, -0.542697, -0.838407,
		0.282809, -0.797344, 0.533163,
		-0.957844, -0.264050, 0.113189,
		11.382408, 13.843966, 17.982306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022420, 13.254269, 17.930164>,  <12.052899, 14.028801, 17.903074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022420, 13.254269, 17.930164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667428, 13.398417, 17.815264>,  <11.454432, 13.484905, 17.746323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667428, 13.398417, 17.815264>,  <12.022420, 13.254269, 17.930164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.667428, 13.398417, 17.815264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084426, -0.485628, -0.870079,
		-0.453047, -0.796430, 0.400560,
		-0.887480, 0.360369, -0.287251,
		11.401184, 13.506528, 17.729088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.494842, 13.419909, 18.529116>,  <12.022420, 13.254269, 17.930164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.494842, 13.419909, 18.529116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502147, 13.084972, 18.310566>,  <12.506530, 12.884010, 18.179436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502147, 13.084972, 18.310566>,  <12.494842, 13.419909, 18.529116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502147, 13.084972, 18.310566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104207, -0.545083, 0.831880,
		-0.994388, 0.041744, -0.097212,
		0.018263, -0.837342, -0.546374,
		12.507626, 12.833770, 18.146654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.183974, 13.357530, 18.495680>,  <12.494842, 13.419909, 18.529116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.183974, 13.357530, 18.495680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.378101, 13.675323, 18.349661>,  <13.494577, 13.866000, 18.262049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.378101, 13.675323, 18.349661>,  <13.183974, 13.357530, 18.495680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.378101, 13.675323, 18.349661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126815, 0.477060, 0.869673,
		0.865092, -0.375774, 0.332278,
		0.485318, 0.794485, -0.365047,
		13.523697, 13.913670, 18.240147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.306887, 12.563278, 18.647007>,  <13.183974, 13.357530, 18.495680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.306887, 12.563278, 18.647007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692122, 12.458553, 18.621984>,  <13.923264, 12.395719, 18.606972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.692122, 12.458553, 18.621984>,  <13.306887, 12.563278, 18.647007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.692122, 12.458553, 18.621984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024289, -0.315962, 0.948461,
		-0.268082, -0.911933, -0.310659,
		0.963090, -0.261811, -0.062554,
		13.981050, 12.380010, 18.603218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270073, 11.921850, 18.916698>,  <13.306887, 12.563278, 18.647007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270073, 11.921850, 18.916698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652955, 12.032828, 18.949644>,  <13.882684, 12.099415, 18.969412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.652955, 12.032828, 18.949644>,  <13.270073, 11.921850, 18.916698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.652955, 12.032828, 18.949644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151372, 0.237394, 0.959547,
		0.246681, -0.930947, 0.269233,
		0.957202, 0.277457, 0.082359,
		13.940117, 12.116062, 18.974354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.641454, 11.463963, 19.466373>,  <13.270073, 11.921850, 18.916698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.641454, 11.463963, 19.466373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.808617, 11.824018, 19.417215>,  <13.908915, 12.040051, 19.387720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.808617, 11.824018, 19.417215>,  <13.641454, 11.463963, 19.466373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.808617, 11.824018, 19.417215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025922, 0.147033, 0.988792,
		0.908120, -0.410037, 0.084780,
		0.417907, 0.900139, -0.122895,
		13.933989, 12.094060, 19.380346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085262, 11.459336, 19.939339>,  <13.641454, 11.463963, 19.466373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085262, 11.459336, 19.939339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.015759, 11.845465, 19.861401>,  <13.974056, 12.077142, 19.814638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.015759, 11.845465, 19.861401>,  <14.085262, 11.459336, 19.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.015759, 11.845465, 19.861401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064289, 0.186312, 0.980385,
		0.982687, 0.182879, 0.029686,
		-0.173761, 0.965320, -0.194844,
		13.963631, 12.135061, 19.802948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.560811, 11.711720, 20.390299>,  <14.085262, 11.459336, 19.939339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.560811, 11.711720, 20.390299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336930, 12.029092, 20.294630>,  <14.202601, 12.219515, 20.237228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.336930, 12.029092, 20.294630>,  <14.560811, 11.711720, 20.390299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336930, 12.029092, 20.294630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116193, 0.210623, 0.970638,
		0.820508, 0.571058, -0.025695,
		-0.559702, 0.793430, -0.239170,
		14.169020, 12.267121, 20.222879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900176, 12.261243, 20.718956>,  <14.560811, 11.711720, 20.390299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.900176, 12.261243, 20.718956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.520095, 12.365883, 20.651213>,  <14.292047, 12.428667, 20.610567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.520095, 12.365883, 20.651213>,  <14.900176, 12.261243, 20.718956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520095, 12.365883, 20.651213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046920, 0.417156, 0.907623,
		0.308082, 0.870371, -0.384109,
		-0.950202, 0.261600, -0.169356,
		14.235034, 12.444363, 20.600407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803252, 12.889323, 20.858675>,  <14.900176, 12.261243, 20.718956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803252, 12.889323, 20.858675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.418028, 12.783223, 20.877241>,  <14.186893, 12.719563, 20.888382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.418028, 12.783223, 20.877241>,  <14.803252, 12.889323, 20.858675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.418028, 12.783223, 20.877241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084145, 0.460179, 0.883830,
		-0.255796, 0.847277, -0.465500,
		-0.963062, -0.265250, 0.046417,
		14.129109, 12.703649, 20.891167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.507220, 13.494327, 21.179876>,  <14.803252, 12.889323, 20.858675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.507220, 13.494327, 21.179876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241115, 13.202945, 21.245329>,  <14.081451, 13.028115, 21.284601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241115, 13.202945, 21.245329>,  <14.507220, 13.494327, 21.179876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241115, 13.202945, 21.245329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081437, 0.288662, 0.953961,
		-0.742153, 0.621311, -0.251360,
		-0.665264, -0.728455, 0.163633,
		14.041535, 12.984408, 21.294418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177393, 13.842899, 21.587423>,  <14.507220, 13.494327, 21.179876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.177393, 13.842899, 21.587423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049775, 13.466393, 21.631651>,  <13.973205, 13.240488, 21.658188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049775, 13.466393, 21.631651>,  <14.177393, 13.842899, 21.587423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.049775, 13.466393, 21.631651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115805, 0.154509, 0.981181,
		-0.940638, 0.300235, -0.158299,
		-0.319044, -0.941268, 0.110568,
		13.954062, 13.184012, 21.664822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.543158, 13.852329, 21.988752>,  <14.177393, 13.842899, 21.587423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.543158, 13.852329, 21.988752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685609, 13.480290, 22.024734>,  <13.771079, 13.257067, 22.046324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685609, 13.480290, 22.024734>,  <13.543158, 13.852329, 21.988752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685609, 13.480290, 22.024734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143967, 0.040504, 0.988753,
		-0.923281, -0.365072, -0.119479,
		0.356127, -0.930098, 0.089955,
		13.792447, 13.201262, 22.051722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.008188, 13.388045, 22.268520>,  <13.543158, 13.852329, 21.988752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.008188, 13.388045, 22.268520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362381, 13.226915, 22.361176>,  <13.574897, 13.130238, 22.416769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.362381, 13.226915, 22.361176>,  <13.008188, 13.388045, 22.268520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.362381, 13.226915, 22.361176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295312, -0.102963, 0.949837,
		-0.358768, -0.909467, -0.210131,
		0.885481, -0.402825, 0.231636,
		13.628025, 13.106068, 22.430666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911442, 12.783893, 22.737087>,  <13.008188, 13.388045, 22.268520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911442, 12.783893, 22.737087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291596, 12.897656, 22.787491>,  <13.519689, 12.965915, 22.817734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.291596, 12.897656, 22.787491>,  <12.911442, 12.783893, 22.737087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.291596, 12.897656, 22.787491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057740, -0.236755, 0.969852,
		0.305669, -0.929009, -0.208587,
		0.950385, 0.284410, 0.126010,
		13.576712, 12.982979, 22.825294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.139797, 12.262083, 23.226578>,  <12.911442, 12.783893, 22.737087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.139797, 12.262083, 23.226578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418197, 12.547254, 23.260799>,  <13.585237, 12.718356, 23.281332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418197, 12.547254, 23.260799>,  <13.139797, 12.262083, 23.226578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418197, 12.547254, 23.260799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042348, -0.159700, 0.986257,
		0.716792, -0.682811, -0.141342,
		0.696000, 0.712927, 0.085556,
		13.626997, 12.761131, 23.286467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.715298, 11.982499, 23.630650>,  <13.139797, 12.262083, 23.226578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.715298, 11.982499, 23.630650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.754409, 12.379879, 23.654301>,  <13.777876, 12.618307, 23.668491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.754409, 12.379879, 23.654301>,  <13.715298, 11.982499, 23.630650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.754409, 12.379879, 23.654301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221207, -0.079623, 0.971971,
		0.970313, -0.081958, -0.227543,
		0.097778, 0.993450, 0.059130,
		13.783742, 12.677914, 23.672039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147781, 11.982713, 24.170252>,  <13.715298, 11.982499, 23.630650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147781, 11.982713, 24.170252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.029604, 12.364011, 24.144840>,  <13.958697, 12.592790, 24.129593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.029604, 12.364011, 24.144840>,  <14.147781, 11.982713, 24.170252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.029604, 12.364011, 24.144840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217636, 0.131903, 0.967076,
		0.930241, 0.271889, -0.246431,
		-0.295442, 0.953246, -0.063528,
		13.940971, 12.649984, 24.125782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.695861, 12.349288, 24.510998>,  <14.147781, 11.982713, 24.170252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.695861, 12.349288, 24.510998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.373189, 12.585626, 24.505789>,  <14.179585, 12.727428, 24.502665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.373189, 12.585626, 24.505789>,  <14.695861, 12.349288, 24.510998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.373189, 12.585626, 24.505789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103255, 0.162599, 0.981275,
		0.581897, 0.790231, -0.192173,
		-0.806681, 0.590844, -0.013020,
		14.131185, 12.762878, 24.501883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827982, 12.729712, 25.132952>,  <14.695861, 12.349288, 24.510998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827982, 12.729712, 25.132952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440819, 12.761029, 25.037434>,  <14.208521, 12.779819, 24.980124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.440819, 12.761029, 25.037434>,  <14.827982, 12.729712, 25.132952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440819, 12.761029, 25.037434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231444, 0.092506, 0.968440,
		0.097911, 0.992629, -0.071417,
		-0.967909, 0.078292, -0.238795,
		14.150446, 12.784517, 24.965796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538017, 13.348310, 25.467094>,  <14.827982, 12.729712, 25.132952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538017, 13.348310, 25.467094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242113, 13.085404, 25.409462>,  <14.064570, 12.927661, 25.374884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242113, 13.085404, 25.409462>,  <14.538017, 13.348310, 25.467094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242113, 13.085404, 25.409462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245858, 0.064708, 0.967144,
		-0.626345, 0.750878, -0.209462,
		-0.739761, -0.657264, -0.144080,
		14.020185, 12.888226, 25.366238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943298, 13.663050, 25.709133>,  <14.538017, 13.348310, 25.467094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943298, 13.663050, 25.709133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.839461, 13.277046, 25.694328>,  <13.777159, 13.045444, 25.685446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.839461, 13.277046, 25.694328>,  <13.943298, 13.663050, 25.709133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839461, 13.277046, 25.694328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350149, 0.058334, 0.934876,
		-0.900004, 0.255647, -0.353040,
		-0.259592, -0.965009, -0.037013,
		13.761583, 12.987543, 25.683224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.453638, 13.653669, 26.080338>,  <13.943298, 13.663050, 25.709133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.453638, 13.653669, 26.080338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548053, 13.265368, 26.062790>,  <13.604702, 13.032387, 26.052261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548053, 13.265368, 26.062790>,  <13.453638, 13.653669, 26.080338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548053, 13.265368, 26.062790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228208, -0.099257, 0.968540,
		-0.944568, -0.218600, -0.244962,
		0.236037, -0.970753, -0.043868,
		13.618864, 12.974141, 26.049629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.903128, 13.296972, 26.420288>,  <13.453638, 13.653669, 26.080338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.903128, 13.296972, 26.420288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221128, 13.054357, 26.416588>,  <13.411927, 12.908787, 26.414368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.221128, 13.054357, 26.416588>,  <12.903128, 13.296972, 26.420288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.221128, 13.054357, 26.416588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086478, -0.128416, 0.987943,
		-0.600415, -0.784614, -0.154543,
		0.794999, -0.606540, -0.009251,
		13.459627, 12.872395, 26.413813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.802254, 12.835050, 26.940310>,  <12.903128, 13.296972, 26.420288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.802254, 12.835050, 26.940310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199170, 12.820992, 26.892775>,  <13.437320, 12.812558, 26.864254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199170, 12.820992, 26.892775>,  <12.802254, 12.835050, 26.940310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199170, 12.820992, 26.892775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120080, 0.035729, 0.992121,
		-0.030625, -0.998743, 0.039674,
		0.992292, -0.035147, -0.118835,
		13.496858, 12.810450, 26.857124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.869994, 12.296247, 27.345955>,  <12.802254, 12.835050, 26.940310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.869994, 12.296247, 27.345955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212111, 12.498640, 27.301319>,  <13.417382, 12.620076, 27.274538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.212111, 12.498640, 27.301319>,  <12.869994, 12.296247, 27.345955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212111, 12.498640, 27.301319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081228, 0.343637, 0.935583,
		0.511737, -0.791134, 0.335010,
		0.855293, 0.505985, -0.111589,
		13.468699, 12.650435, 27.267841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293149, 12.149672, 27.827913>,  <12.869994, 12.296247, 27.345955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293149, 12.149672, 27.827913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444253, 12.497419, 27.700481>,  <13.534916, 12.706068, 27.624022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444253, 12.497419, 27.700481>,  <13.293149, 12.149672, 27.827913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444253, 12.497419, 27.700481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205602, 0.414248, 0.886638,
		0.902787, -0.269436, 0.335230,
		0.377761, 0.869369, -0.318581,
		13.557581, 12.758230, 27.604908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717652, 12.244000, 28.416937>,  <13.293149, 12.149672, 27.827913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717652, 12.244000, 28.416937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.658571, 12.593065, 28.230755>,  <13.623123, 12.802504, 28.119045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.658571, 12.593065, 28.230755>,  <13.717652, 12.244000, 28.416937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.658571, 12.593065, 28.230755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048206, 0.476407, 0.877902,
		0.987856, 0.107231, -0.112434,
		-0.147702, 0.872661, -0.465453,
		13.614261, 12.854864, 28.091120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144967, 12.698551, 28.749590>,  <13.717652, 12.244000, 28.416937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144967, 12.698551, 28.749590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851454, 12.914162, 28.584175>,  <13.675345, 13.043528, 28.484926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851454, 12.914162, 28.584175>,  <14.144967, 12.698551, 28.749590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851454, 12.914162, 28.584175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000915, 0.607910, 0.794005,
		0.679383, 0.583006, -0.445581,
		-0.733783, 0.539026, -0.413538,
		13.631319, 13.075870, 28.460114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279133, 13.472020, 28.974726>,  <14.144967, 12.698551, 28.749590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279133, 13.472020, 28.974726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896596, 13.458648, 28.858595>,  <13.667073, 13.450624, 28.788916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.896596, 13.458648, 28.858595>,  <14.279133, 13.472020, 28.974726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896596, 13.458648, 28.858595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241911, 0.647950, 0.722246,
		0.163974, 0.760949, -0.627749,
		-0.956343, -0.033430, -0.290329,
		13.609694, 13.448619, 28.771496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
