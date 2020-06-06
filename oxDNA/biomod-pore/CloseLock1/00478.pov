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
	<24.128977, 34.621792, 35.032551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216694, 34.986286, 35.172009>,  <24.269325, 35.204983, 35.255684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.216694, 34.986286, 35.172009>,  <24.128977, 34.621792, 35.032551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216694, 34.986286, 35.172009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271938, -0.400270, 0.875119,
		0.936995, -0.097098, -0.335577,
		0.219293, 0.911239, 0.348647,
		24.282482, 35.259659, 35.276604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.662277, 34.521370, 35.432671>,  <24.128977, 34.621792, 35.032551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.662277, 34.521370, 35.432671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505301, 34.869743, 35.550972>,  <24.411114, 35.078766, 35.621952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505301, 34.869743, 35.550972>,  <24.662277, 34.521370, 35.432671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505301, 34.869743, 35.550972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170297, -0.247185, 0.953886,
		0.903874, 0.424711, -0.051311,
		-0.392443, 0.870931, 0.295751,
		24.387568, 35.131023, 35.639698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125387, 35.001400, 35.829914>,  <24.662277, 34.521370, 35.432671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125387, 35.001400, 35.829914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743101, 35.052696, 35.935867>,  <24.513729, 35.083473, 35.999439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743101, 35.052696, 35.935867>,  <25.125387, 35.001400, 35.829914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743101, 35.052696, 35.935867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238282, -0.191021, 0.952225,
		0.172710, 0.973173, 0.152005,
		-0.955716, 0.128239, 0.264881,
		24.456387, 35.091167, 36.015331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811493, 34.767838, 35.505486>,  <25.125387, 35.001400, 35.829914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811493, 34.767838, 35.505486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020523, 35.102615, 35.440441>,  <26.145941, 35.303482, 35.401413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020523, 35.102615, 35.440441>,  <25.811493, 34.767838, 35.505486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020523, 35.102615, 35.440441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101796, -0.128115, -0.986521,
		-0.846493, 0.532087, 0.018247,
		0.522578, 0.836941, -0.162613,
		26.177296, 35.353699, 35.391659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632298, 34.997337, 34.887184>,  <25.811493, 34.767838, 35.505486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632298, 34.997337, 34.887184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980701, 35.184738, 34.946301>,  <26.189745, 35.297180, 34.981770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980701, 35.184738, 34.946301>,  <25.632298, 34.997337, 34.887184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980701, 35.184738, 34.946301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208346, -0.079841, -0.974791,
		-0.444894, 0.879846, -0.167154,
		0.871012, 0.468504, 0.147791,
		26.242004, 35.325291, 34.990639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663378, 35.725899, 34.515659>,  <25.632298, 34.997337, 34.887184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663378, 35.725899, 34.515659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015589, 35.550606, 34.587906>,  <26.226915, 35.445431, 34.631256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015589, 35.550606, 34.587906>,  <25.663378, 35.725899, 34.515659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015589, 35.550606, 34.587906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200012, -0.001948, -0.979792,
		0.429725, 0.898861, 0.085936,
		0.880529, -0.438229, 0.180620,
		26.279747, 35.419136, 34.642094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241421, 36.109306, 34.242271>,  <25.663378, 35.725899, 34.515659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241421, 36.109306, 34.242271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338503, 35.721943, 34.265167>,  <26.396751, 35.489525, 34.278904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338503, 35.721943, 34.265167>,  <26.241421, 36.109306, 34.242271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338503, 35.721943, 34.265167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022441, -0.053379, -0.998322,
		0.969841, 0.243580, 0.008777,
		0.242703, -0.968411, 0.057235,
		26.411314, 35.431419, 34.282337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707420, 35.969296, 33.681545>,  <26.241421, 36.109306, 34.242271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707420, 35.969296, 33.681545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549362, 35.611897, 33.766884>,  <26.454527, 35.397457, 33.818085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549362, 35.611897, 33.766884>,  <26.707420, 35.969296, 33.681545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549362, 35.611897, 33.766884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082843, -0.196637, -0.976970,
		0.914875, -0.403721, 0.003680,
		-0.395147, -0.893501, 0.213344,
		26.430819, 35.343845, 33.830887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124615, 35.476761, 33.402729>,  <26.707420, 35.969296, 33.681545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124615, 35.476761, 33.402729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759434, 35.322411, 33.455818>,  <26.540325, 35.229801, 33.487671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759434, 35.322411, 33.455818>,  <27.124615, 35.476761, 33.402729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759434, 35.322411, 33.455818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049003, -0.219213, -0.974446,
		0.405110, -0.896127, 0.181222,
		-0.912953, -0.385877, 0.132718,
		26.485548, 35.206646, 33.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108381, 34.784359, 33.171410>,  <27.124615, 35.476761, 33.402729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108381, 34.784359, 33.171410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743401, 34.947773, 33.162189>,  <26.524412, 35.045822, 33.156658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743401, 34.947773, 33.162189>,  <27.108381, 34.784359, 33.171410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743401, 34.947773, 33.162189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025882, -0.113851, -0.993161,
		-0.408361, -0.905616, 0.114458,
		-0.912454, 0.408531, -0.023053,
		26.469666, 35.070332, 33.155273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673756, 34.247765, 32.811012>,  <27.108381, 34.784359, 33.171410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673756, 34.247765, 32.811012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459198, 34.585281, 32.804146>,  <26.330463, 34.787792, 32.800026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459198, 34.585281, 32.804146>,  <26.673756, 34.247765, 32.811012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459198, 34.585281, 32.804146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328586, -0.227526, -0.916659,
		-0.777375, -0.486051, 0.399302,
		-0.536394, 0.843793, -0.017164,
		26.298279, 34.838421, 32.798996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197775, 34.212345, 32.341553>,  <26.673756, 34.247765, 32.811012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197775, 34.212345, 32.341553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137375, 34.601906, 32.409325>,  <26.101135, 34.835644, 32.449989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137375, 34.601906, 32.409325>,  <26.197775, 34.212345, 32.341553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137375, 34.601906, 32.409325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241363, 0.129884, -0.961704,
		-0.958615, -0.186110, 0.215453,
		-0.150999, 0.973906, 0.169429,
		26.092075, 34.894077, 32.460152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561232, 34.386276, 31.957102>,  <26.197775, 34.212345, 32.341553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561232, 34.386276, 31.957102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750906, 34.732304, 32.022587>,  <25.864710, 34.939919, 32.061878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750906, 34.732304, 32.022587>,  <25.561232, 34.386276, 31.957102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750906, 34.732304, 32.022587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174808, 0.274754, -0.945490,
		-0.862896, 0.419720, 0.281506,
		0.474186, 0.865069, 0.163714,
		25.893162, 34.991825, 32.071701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117689, 34.871777, 31.788668>,  <25.561232, 34.386276, 31.957102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117689, 34.871777, 31.788668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485138, 35.020149, 31.734190>,  <25.705606, 35.109173, 31.701504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485138, 35.020149, 31.734190>,  <25.117689, 34.871777, 31.788668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485138, 35.020149, 31.734190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210103, 0.166601, -0.963380,
		-0.334654, 0.913595, 0.230976,
		0.918620, 0.370928, -0.136196,
		25.760723, 35.131428, 31.693331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026480, 35.442364, 31.323296>,  <25.117689, 34.871777, 31.788668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026480, 35.442364, 31.323296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418360, 35.396534, 31.257496>,  <25.653488, 35.369038, 31.218016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418360, 35.396534, 31.257496>,  <25.026480, 35.442364, 31.323296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418360, 35.396534, 31.257496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103233, 0.415064, -0.903916,
		0.171843, 0.902549, 0.394811,
		0.979700, -0.114574, -0.164498,
		25.712271, 35.362164, 31.208147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315863, 36.081558, 31.110785>,  <25.026480, 35.442364, 31.323296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315863, 36.081558, 31.110785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573105, 35.806164, 30.976679>,  <25.727451, 35.640926, 30.896215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.573105, 35.806164, 30.976679>,  <25.315863, 36.081558, 31.110785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573105, 35.806164, 30.976679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029820, 0.459992, -0.887422,
		0.765196, 0.560709, 0.316355,
		0.643107, -0.688485, -0.335264,
		25.766037, 35.599617, 30.876101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759853, 36.392452, 30.652891>,  <25.315863, 36.081558, 31.110785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759853, 36.392452, 30.652891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859961, 36.013332, 30.573860>,  <25.920025, 35.785858, 30.526442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859961, 36.013332, 30.573860>,  <25.759853, 36.392452, 30.652891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859961, 36.013332, 30.573860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186804, 0.247510, -0.950707,
		0.949984, 0.201023, 0.238997,
		0.250268, -0.947802, -0.197579,
		25.935041, 35.728992, 30.514587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.392414, 36.463753, 30.308519>,  <25.759853, 36.392452, 30.652891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.392414, 36.463753, 30.308519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272379, 36.091122, 30.226442>,  <26.200357, 35.867542, 30.177197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272379, 36.091122, 30.226442>,  <26.392414, 36.463753, 30.308519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272379, 36.091122, 30.226442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281956, 0.118872, -0.952035,
		0.911290, -0.343549, 0.226993,
		-0.300087, -0.931581, -0.205192,
		26.182352, 35.811646, 30.164885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961287, 36.063923, 30.030699>,  <26.392414, 36.463753, 30.308519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961287, 36.063923, 30.030699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635622, 35.867016, 29.907530>,  <26.440224, 35.748871, 29.833630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635622, 35.867016, 29.907530>,  <26.961287, 36.063923, 30.030699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635622, 35.867016, 29.907530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283601, 0.125618, -0.950679,
		0.506669, -0.861332, 0.037334,
		-0.814161, -0.492268, -0.307921,
		26.391375, 35.719337, 29.815153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141106, 35.651649, 29.516954>,  <26.961287, 36.063923, 30.030699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141106, 35.651649, 29.516954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745302, 35.682953, 29.468378>,  <26.507820, 35.701733, 29.439232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745302, 35.682953, 29.468378>,  <27.141106, 35.651649, 29.516954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745302, 35.682953, 29.468378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128844, 0.097783, -0.986832,
		-0.065350, -0.992126, -0.106840,
		-0.989509, 0.078255, -0.121439,
		26.448450, 35.706429, 29.431946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980299, 35.134201, 29.072020>,  <27.141106, 35.651649, 29.516954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980299, 35.134201, 29.072020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681469, 35.397583, 29.035563>,  <26.502171, 35.555614, 29.013689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681469, 35.397583, 29.035563>,  <26.980299, 35.134201, 29.072020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681469, 35.397583, 29.035563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226539, 0.123294, -0.966167,
		-0.624944, -0.742449, -0.241277,
		-0.747077, 0.658459, -0.091141,
		26.457346, 35.595119, 29.008221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763596, 35.006519, 28.476406>,  <26.980299, 35.134201, 29.072020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763596, 35.006519, 28.476406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614050, 35.369560, 28.552807>,  <26.524323, 35.587383, 28.598646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614050, 35.369560, 28.552807>,  <26.763596, 35.006519, 28.476406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614050, 35.369560, 28.552807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039971, 0.221510, -0.974339,
		-0.926622, -0.356636, -0.119092,
		-0.373864, 0.907604, 0.191001,
		26.501890, 35.641842, 28.610107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288370, 35.218559, 27.980095>,  <26.763596, 35.006519, 28.476406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288370, 35.218559, 27.980095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387936, 35.584328, 28.107763>,  <26.447674, 35.803791, 28.184364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387936, 35.584328, 28.107763>,  <26.288370, 35.218559, 27.980095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387936, 35.584328, 28.107763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166427, 0.284257, -0.944193,
		-0.954120, 0.288140, -0.081430,
		0.248913, 0.914425, 0.319169,
		26.462610, 35.858654, 28.203514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113180, 35.671104, 27.379007>,  <26.288370, 35.218559, 27.980095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113180, 35.671104, 27.379007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319307, 35.902378, 27.632036>,  <26.442984, 36.041142, 27.783854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319307, 35.902378, 27.632036>,  <26.113180, 35.671104, 27.379007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319307, 35.902378, 27.632036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275980, 0.586845, -0.761215,
		-0.811347, 0.566843, 0.142843,
		0.515316, 0.578188, 0.632573,
		26.473902, 36.075836, 27.821808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754152, 36.312473, 27.267750>,  <26.113180, 35.671104, 27.379007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754152, 36.312473, 27.267750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140099, 36.306423, 27.372675>,  <26.371666, 36.302792, 27.435631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140099, 36.306423, 27.372675>,  <25.754152, 36.312473, 27.267750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140099, 36.306423, 27.372675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250664, 0.352282, -0.901701,
		-0.078768, 0.935772, 0.343696,
		0.964864, -0.015127, 0.262313,
		26.429558, 36.301884, 27.451368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989853, 37.010906, 27.172110>,  <25.754152, 36.312473, 27.267750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989853, 37.010906, 27.172110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284357, 36.740528, 27.159386>,  <26.461060, 36.578300, 27.151752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284357, 36.740528, 27.159386>,  <25.989853, 37.010906, 27.172110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284357, 36.740528, 27.159386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449213, 0.523367, -0.724082,
		0.506091, 0.518825, 0.688980,
		0.736261, -0.675950, -0.031809,
		26.505236, 36.537743, 27.149843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562386, 37.340775, 27.168196>,  <25.989853, 37.010906, 27.172110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562386, 37.340775, 27.168196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667143, 36.995197, 26.996145>,  <26.729998, 36.787849, 26.892916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667143, 36.995197, 26.996145>,  <26.562386, 37.340775, 27.168196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667143, 36.995197, 26.996145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444023, 0.503572, -0.741120,
		0.856887, 0.003108, 0.515494,
		0.261892, -0.863948, -0.430125,
		26.745710, 36.736012, 26.867107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370522, 37.256222, 27.077793>,  <26.562386, 37.340775, 27.168196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370522, 37.256222, 27.077793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179712, 37.040318, 26.800346>,  <27.065228, 36.910774, 26.633879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179712, 37.040318, 26.800346>,  <27.370522, 37.256222, 27.077793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179712, 37.040318, 26.800346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587395, 0.391257, -0.708439,
		0.653772, -0.745368, 0.130416,
		-0.477022, -0.539763, -0.693618,
		27.036606, 36.878387, 26.592260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898411, 36.993385, 26.682461>,  <27.370522, 37.256222, 27.077793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898411, 36.993385, 26.682461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569708, 37.028824, 26.457298>,  <27.372486, 37.050087, 26.322201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569708, 37.028824, 26.457298>,  <27.898411, 36.993385, 26.682461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569708, 37.028824, 26.457298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536491, 0.453238, -0.711866,
		0.192064, -0.886976, -0.419982,
		-0.821760, 0.088593, -0.562905,
		27.323179, 37.055401, 26.288427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056168, 36.780037, 26.076380>,  <27.898411, 36.993385, 26.682461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056168, 36.780037, 26.076380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760942, 37.042591, 26.013866>,  <27.583807, 37.200123, 25.976358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760942, 37.042591, 26.013866>,  <28.056168, 36.780037, 26.076380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760942, 37.042591, 26.013866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526146, 0.414873, -0.742328,
		-0.422412, -0.630114, -0.651555,
		-0.738064, 0.656381, -0.156284,
		27.539524, 37.239506, 25.966982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623528, 36.564064, 25.490934>,  <28.056168, 36.780037, 26.076380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623528, 36.564064, 25.490934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679770, 36.954178, 25.559120>,  <27.713514, 37.188244, 25.600031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679770, 36.954178, 25.559120>,  <27.623528, 36.564064, 25.490934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679770, 36.954178, 25.559120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605189, 0.051602, -0.794408,
		-0.783567, 0.214861, -0.582973,
		0.140605, 0.975280, 0.170465,
		27.721951, 37.246761, 25.610260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232349, 35.871384, 25.364592>,  <27.623528, 36.564064, 25.490934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232349, 35.871384, 25.364592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497118, 35.678562, 25.134991>,  <27.655979, 35.562870, 24.997231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497118, 35.678562, 25.134991>,  <27.232349, 35.871384, 25.364592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497118, 35.678562, 25.134991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327784, -0.502522, 0.800018,
		-0.674103, -0.717700, -0.174621,
		0.661924, -0.482057, -0.574002,
		27.695696, 35.533943, 24.962790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116665, 35.129292, 25.437817>,  <27.232349, 35.871384, 25.364592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116665, 35.129292, 25.437817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484772, 35.269123, 25.367504>,  <27.705637, 35.353024, 25.325315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484772, 35.269123, 25.367504>,  <27.116665, 35.129292, 25.437817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484772, 35.269123, 25.367504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280587, -0.276461, 0.919152,
		0.272719, -0.895189, -0.352506,
		0.920269, 0.349579, -0.175782,
		27.760853, 35.373997, 25.314770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664980, 34.662464, 25.704855>,  <27.116665, 35.129292, 25.437817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664980, 34.662464, 25.704855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851194, 35.014381, 25.666399>,  <27.962923, 35.225533, 25.643326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851194, 35.014381, 25.666399>,  <27.664980, 34.662464, 25.704855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851194, 35.014381, 25.666399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575918, -0.218663, 0.787721,
		0.672008, -0.422080, -0.608484,
		0.465535, 0.879792, -0.096141,
		27.990854, 35.278320, 25.637556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283298, 34.515785, 25.811365>,  <27.664980, 34.662464, 25.704855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283298, 34.515785, 25.811365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236374, 34.891994, 25.938902>,  <28.208220, 35.117718, 26.015425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236374, 34.891994, 25.938902>,  <28.283298, 34.515785, 25.811365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236374, 34.891994, 25.938902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498907, -0.221789, 0.837796,
		0.858679, 0.257358, -0.443212,
		-0.117313, 0.940519, 0.318843,
		28.201180, 35.174149, 26.034555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924162, 34.718475, 26.137465>,  <28.283298, 34.515785, 25.811365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924162, 34.718475, 26.137465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654072, 34.957279, 26.310740>,  <28.492018, 35.100563, 26.414705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654072, 34.957279, 26.310740>,  <28.924162, 34.718475, 26.137465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654072, 34.957279, 26.310740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608908, 0.119699, 0.784157,
		0.416297, 0.793254, -0.444348,
		-0.675224, 0.597010, 0.433188,
		28.451504, 35.136383, 26.440697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329369, 35.224220, 26.389349>,  <28.924162, 34.718475, 26.137465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329369, 35.224220, 26.389349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975498, 35.231392, 26.575693>,  <28.763176, 35.235695, 26.687500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975498, 35.231392, 26.575693>,  <29.329369, 35.224220, 26.389349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975498, 35.231392, 26.575693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465282, 0.096879, 0.879845,
		-0.029356, 0.995135, -0.094049,
		-0.884676, 0.017930, 0.465862,
		28.710096, 35.236771, 26.715452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486057, 35.742928, 26.892027>,  <29.329369, 35.224220, 26.389349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486057, 35.742928, 26.892027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157957, 35.533352, 26.983833>,  <28.961098, 35.407608, 27.038918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157957, 35.533352, 26.983833>,  <29.486057, 35.742928, 26.892027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157957, 35.533352, 26.983833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361993, -0.164801, 0.917498,
		-0.442888, 0.835660, 0.324841,
		-0.820250, -0.523939, 0.229514,
		28.911882, 35.376171, 27.052689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053398, 36.234779, 27.219477>,  <29.486057, 35.742928, 26.892027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053398, 36.234779, 27.219477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829971, 35.903889, 27.243811>,  <28.695915, 35.705357, 27.258411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829971, 35.903889, 27.243811>,  <29.053398, 36.234779, 27.219477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829971, 35.903889, 27.243811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259051, -0.104302, 0.960215,
		-0.787969, 0.552105, 0.272553,
		-0.558568, -0.827225, 0.060837,
		28.662401, 35.655720, 27.262062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701271, 36.282860, 27.812849>,  <29.053398, 36.234779, 27.219477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701271, 36.282860, 27.812849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690302, 35.893475, 27.721977>,  <28.683720, 35.659843, 27.667454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690302, 35.893475, 27.721977>,  <28.701271, 36.282860, 27.812849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690302, 35.893475, 27.721977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100902, -0.228801, 0.968230,
		-0.994518, 0.003629, 0.104499,
		-0.027423, -0.973466, -0.227181,
		28.682076, 35.601433, 27.653824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275551, 35.967678, 28.243578>,  <28.701271, 36.282860, 27.812849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275551, 35.967678, 28.243578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498104, 35.657990, 28.122906>,  <28.631636, 35.472176, 28.050503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498104, 35.657990, 28.122906>,  <28.275551, 35.967678, 28.243578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498104, 35.657990, 28.122906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152519, -0.261741, 0.953011,
		-0.816808, -0.576251, -0.027544,
		0.556383, -0.774226, -0.301681,
		28.665020, 35.425720, 28.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052294, 35.369568, 28.693047>,  <28.275551, 35.967678, 28.243578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052294, 35.369568, 28.693047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407146, 35.253330, 28.549631>,  <28.620058, 35.183586, 28.463581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407146, 35.253330, 28.549631>,  <28.052294, 35.369568, 28.693047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407146, 35.253330, 28.549631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261480, -0.323675, 0.909320,
		-0.380297, -0.900437, -0.211156,
		0.887131, -0.290599, -0.358539,
		28.673286, 35.166153, 28.442070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083027, 34.752781, 29.012810>,  <28.052294, 35.369568, 28.693047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083027, 34.752781, 29.012810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459497, 34.853867, 28.923077>,  <28.685379, 34.914516, 28.869238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459497, 34.853867, 28.923077>,  <28.083027, 34.752781, 29.012810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459497, 34.853867, 28.923077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303758, -0.341850, 0.889309,
		0.148052, -0.905138, -0.398504,
		0.941175, 0.252712, -0.224332,
		28.741850, 34.929680, 28.855778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453672, 34.259243, 29.230366>,  <28.083027, 34.752781, 29.012810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453672, 34.259243, 29.230366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729126, 34.548000, 29.203093>,  <28.894398, 34.721256, 29.186729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729126, 34.548000, 29.203093>,  <28.453672, 34.259243, 29.230366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729126, 34.548000, 29.203093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407975, -0.307999, 0.859473,
		0.599450, -0.619679, -0.506614,
		0.688634, 0.721897, -0.068183,
		28.935717, 34.764568, 29.182638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067820, 33.926731, 29.392550>,  <28.453672, 34.259243, 29.230366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067820, 33.926731, 29.392550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118425, 34.319603, 29.448139>,  <29.148788, 34.555328, 29.481493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118425, 34.319603, 29.448139>,  <29.067820, 33.926731, 29.392550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118425, 34.319603, 29.448139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334244, -0.174114, 0.926264,
		0.933957, -0.070733, -0.350316,
		0.126512, 0.982182, 0.138973,
		29.156380, 34.614258, 29.489832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826410, 33.963421, 29.675911>,  <29.067820, 33.926731, 29.392550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826410, 33.963421, 29.675911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579130, 34.268314, 29.752665>,  <29.430761, 34.451252, 29.798716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579130, 34.268314, 29.752665>,  <29.826410, 33.963421, 29.675911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579130, 34.268314, 29.752665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305826, 0.008371, 0.952050,
		0.724083, 0.647243, -0.238287,
		-0.618203, 0.762238, 0.191883,
		29.393669, 34.496986, 29.810230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199114, 34.256756, 30.287117>,  <29.826410, 33.963421, 29.675911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199114, 34.256756, 30.287117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841492, 34.435822, 30.280598>,  <29.626919, 34.543259, 30.276686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841492, 34.435822, 30.280598>,  <30.199114, 34.256756, 30.287117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841492, 34.435822, 30.280598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002625, 0.031148, 0.999511,
		0.447949, 0.893661, -0.026672,
		-0.894055, 0.447660, -0.016299,
		29.573275, 34.570118, 30.275707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249725, 34.798271, 30.746086>,  <30.199114, 34.256756, 30.287117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249725, 34.798271, 30.746086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859173, 34.715206, 30.722246>,  <29.624842, 34.665367, 30.707941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859173, 34.715206, 30.722246>,  <30.249725, 34.798271, 30.746086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859173, 34.715206, 30.722246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055961, -0.023365, 0.998159,
		-0.208675, 0.977921, 0.011193,
		-0.976383, -0.207664, -0.059601,
		29.566257, 34.652908, 30.704367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926830, 35.266079, 31.173550>,  <30.249725, 34.798271, 30.746086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926830, 35.266079, 31.173550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667982, 34.963593, 31.134811>,  <29.512674, 34.782101, 31.111568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667982, 34.963593, 31.134811>,  <29.926830, 35.266079, 31.173550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667982, 34.963593, 31.134811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291624, 0.128157, 0.947909,
		-0.704410, 0.641652, -0.303462,
		-0.647118, -0.756213, -0.096846,
		29.473846, 34.736729, 31.105757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463728, 35.468971, 31.617664>,  <29.926830, 35.266079, 31.173550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463728, 35.468971, 31.617664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379345, 35.084465, 31.546711>,  <29.328714, 34.853760, 31.504139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379345, 35.084465, 31.546711>,  <29.463728, 35.468971, 31.617664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379345, 35.084465, 31.546711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284736, -0.113168, 0.951902,
		-0.935105, 0.251320, -0.249833,
		-0.210959, -0.961265, -0.177384,
		29.316057, 34.796085, 31.493496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822060, 35.406158, 31.902914>,  <29.463728, 35.468971, 31.617664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822060, 35.406158, 31.902914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948385, 35.028019, 31.870478>,  <29.024181, 34.801136, 31.851015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948385, 35.028019, 31.870478>,  <28.822060, 35.406158, 31.902914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948385, 35.028019, 31.870478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377077, -0.203478, 0.903554,
		-0.870674, -0.254779, -0.420731,
		0.315816, -0.945349, -0.081092,
		29.043131, 34.744415, 31.846149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232317, 35.074711, 32.099686>,  <28.822060, 35.406158, 31.902914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232317, 35.074711, 32.099686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547684, 34.831528, 32.137173>,  <28.736904, 34.685616, 32.159664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547684, 34.831528, 32.137173>,  <28.232317, 35.074711, 32.099686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547684, 34.831528, 32.137173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306743, -0.256495, 0.916580,
		-0.533205, -0.751395, -0.388713,
		0.788417, -0.607961, 0.093721,
		28.784208, 34.649139, 32.165291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953646, 34.389759, 32.202549>,  <28.232317, 35.074711, 32.099686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953646, 34.389759, 32.202549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316065, 34.397636, 32.371635>,  <28.533516, 34.402363, 32.473087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316065, 34.397636, 32.371635>,  <27.953646, 34.389759, 32.202549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316065, 34.397636, 32.371635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383482, -0.384171, 0.839854,
		0.178940, -0.923052, -0.340523,
		0.906048, 0.019699, 0.422717,
		28.587879, 34.403545, 32.498451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994808, 33.786015, 32.606056>,  <27.953646, 34.389759, 32.202549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994808, 33.786015, 32.606056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278854, 34.022778, 32.758575>,  <28.449282, 34.164833, 32.850086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278854, 34.022778, 32.758575>,  <27.994808, 33.786015, 32.606056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278854, 34.022778, 32.758575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139446, -0.412587, 0.900181,
		0.690140, -0.692401, -0.210445,
		0.710114, 0.591905, 0.381296,
		28.491888, 34.200348, 32.872963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364517, 33.365479, 33.194710>,  <27.994808, 33.786015, 32.606056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364517, 33.365479, 33.194710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491283, 33.736210, 33.275269>,  <28.567343, 33.958649, 33.323605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491283, 33.736210, 33.275269>,  <28.364517, 33.365479, 33.194710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491283, 33.736210, 33.275269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004480, -0.210880, 0.977502,
		0.948444, -0.310686, -0.062678,
		0.316914, 0.926824, 0.201400,
		28.586357, 34.014256, 33.335690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702642, 33.341408, 33.836117>,  <28.364517, 33.365479, 33.194710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702642, 33.341408, 33.836117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670080, 33.737740, 33.792969>,  <28.650543, 33.975536, 33.767082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670080, 33.737740, 33.792969>,  <28.702642, 33.341408, 33.836117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670080, 33.737740, 33.792969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095483, 0.099976, 0.990398,
		0.992097, 0.090924, 0.086468,
		-0.081406, 0.990827, -0.107868,
		28.645658, 34.034988, 33.760609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113932, 33.678741, 34.322468>,  <28.702642, 33.341408, 33.836117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113932, 33.678741, 34.322468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809759, 33.920887, 34.228420>,  <28.627256, 34.066174, 34.171993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809759, 33.920887, 34.228420>,  <29.113932, 33.678741, 34.322468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809759, 33.920887, 34.228420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257840, 0.050847, 0.964849,
		0.596040, 0.794322, 0.117421,
		-0.760431, 0.605365, -0.235115,
		28.581631, 34.102497, 34.157887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758276, 33.593918, 34.622063>,  <29.113932, 33.678741, 34.322468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758276, 33.593918, 34.622063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084181, 33.381573, 34.528809>,  <30.279724, 33.254166, 34.472855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084181, 33.381573, 34.528809>,  <29.758276, 33.593918, 34.622063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084181, 33.381573, 34.528809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548166, 0.574298, 0.608026,
		-0.188887, -0.623194, 0.758915,
		0.814761, -0.530860, -0.233136,
		30.328609, 33.222313, 34.458866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967592, 33.323811, 35.216148>,  <29.758276, 33.593918, 34.622063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967592, 33.323811, 35.216148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255806, 33.400642, 34.949635>,  <30.428734, 33.446743, 34.789726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255806, 33.400642, 34.949635>,  <29.967592, 33.323811, 35.216148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255806, 33.400642, 34.949635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481740, 0.552461, 0.680230,
		0.498754, -0.811106, 0.305536,
		0.720535, 0.192079, -0.666284,
		30.471966, 33.458267, 34.749748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682573, 33.191486, 35.476303>,  <29.967592, 33.323811, 35.216148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682573, 33.191486, 35.476303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719398, 33.471581, 35.193123>,  <30.741493, 33.639637, 35.023216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719398, 33.471581, 35.193123>,  <30.682573, 33.191486, 35.476303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719398, 33.471581, 35.193123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610897, 0.521729, 0.595486,
		0.786339, -0.487307, -0.379740,
		0.092063, 0.700236, -0.707951,
		30.747017, 33.681652, 34.980736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378759, 33.233608, 35.367325>,  <30.682573, 33.191486, 35.476303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378759, 33.233608, 35.367325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156555, 33.559341, 35.300060>,  <31.023233, 33.754780, 35.259701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156555, 33.559341, 35.300060>,  <31.378759, 33.233608, 35.367325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156555, 33.559341, 35.300060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612925, 0.537679, 0.578985,
		0.561901, 0.218562, -0.797808,
		-0.555509, 0.814329, -0.168160,
		30.989902, 33.803638, 35.249611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886900, 33.748619, 35.355469>,  <31.378759, 33.233608, 35.367325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886900, 33.748619, 35.355469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518940, 33.886402, 35.430447>,  <31.298164, 33.969070, 35.475433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518940, 33.886402, 35.430447>,  <31.886900, 33.748619, 35.355469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518940, 33.886402, 35.430447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349079, 0.501443, 0.791643,
		0.178694, 0.793665, -0.581519,
		-0.919898, 0.344458, 0.187447,
		31.242971, 33.989738, 35.486679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823826, 34.525410, 35.537769>,  <31.886900, 33.748619, 35.355469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823826, 34.525410, 35.537769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558746, 34.326462, 35.761715>,  <31.399698, 34.207092, 35.896084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558746, 34.326462, 35.761715>,  <31.823826, 34.525410, 35.537769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558746, 34.326462, 35.761715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267659, 0.540910, 0.797355,
		-0.699418, 0.678261, -0.225336,
		-0.662701, -0.497372, 0.559865,
		31.359936, 34.177250, 35.929676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438789, 35.017021, 35.830738>,  <31.823826, 34.525410, 35.537769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438789, 35.017021, 35.830738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460886, 34.688492, 36.057850>,  <31.474144, 34.491375, 36.194118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460886, 34.688492, 36.057850>,  <31.438789, 35.017021, 35.830738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460886, 34.688492, 36.057850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173705, 0.567880, 0.804574,
		-0.983247, 0.054181, 0.174038,
		0.055240, -0.821326, 0.567778,
		31.477457, 34.442093, 36.228184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088675, 35.219860, 36.428963>,  <31.438789, 35.017021, 35.830738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088675, 35.219860, 36.428963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323624, 34.913845, 36.534569>,  <31.464592, 34.730236, 36.597935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323624, 34.913845, 36.534569>,  <31.088675, 35.219860, 36.428963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323624, 34.913845, 36.534569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402603, 0.559204, 0.724708,
		-0.702072, -0.319379, 0.636468,
		0.587372, -0.765041, 0.264018,
		31.499836, 34.684334, 36.613773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021988, 35.127609, 37.150806>,  <31.088675, 35.219860, 36.428963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021988, 35.127609, 37.150806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365204, 34.941628, 37.063545>,  <31.571133, 34.830040, 37.011189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365204, 34.941628, 37.063545>,  <31.021988, 35.127609, 37.150806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365204, 34.941628, 37.063545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402368, 0.344598, 0.848147,
		-0.319172, -0.815520, 0.482759,
		0.858038, -0.464952, -0.218153,
		31.622616, 34.802143, 36.998100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271116, 34.954002, 37.727871>,  <31.021988, 35.127609, 37.150806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271116, 34.954002, 37.727871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592482, 34.953613, 37.489704>,  <31.785301, 34.953381, 37.346802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592482, 34.953613, 37.489704>,  <31.271116, 34.954002, 37.727871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592482, 34.953613, 37.489704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569308, 0.294163, 0.767696,
		0.174399, -0.955755, 0.236892,
		0.803414, -0.000979, -0.595420,
		31.833506, 34.953320, 37.311077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838551, 34.608704, 38.098766>,  <31.271116, 34.954002, 37.727871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838551, 34.608704, 38.098766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009491, 34.840233, 37.820965>,  <32.112057, 34.979149, 37.654282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009491, 34.840233, 37.820965>,  <31.838551, 34.608704, 38.098766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009491, 34.840233, 37.820965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436003, 0.541007, 0.719175,
		0.792006, -0.610146, -0.021168,
		0.427351, 0.578821, -0.694506,
		32.137695, 35.013878, 37.612614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539719, 34.574505, 38.340130>,  <31.838551, 34.608704, 38.098766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539719, 34.574505, 38.340130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558891, 34.869217, 38.070358>,  <32.570393, 35.046043, 37.908493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558891, 34.869217, 38.070358>,  <32.539719, 34.574505, 38.340130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558891, 34.869217, 38.070358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501595, 0.566145, 0.654127,
		0.863774, -0.369645, -0.342429,
		0.047930, 0.736778, -0.674433,
		32.573269, 35.090252, 37.868027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176891, 34.757961, 38.278244>,  <32.539719, 34.574505, 38.340130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176891, 34.757961, 38.278244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004272, 35.095490, 38.150665>,  <32.900700, 35.298008, 38.074120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004272, 35.095490, 38.150665>,  <33.176891, 34.757961, 38.278244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004272, 35.095490, 38.150665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480957, 0.514343, 0.710022,
		0.763180, 0.153012, -0.627809,
		-0.431551, 0.843824, -0.318944,
		32.874805, 35.348637, 38.054981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672962, 35.307770, 38.151897>,  <33.176891, 34.757961, 38.278244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672962, 35.307770, 38.151897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324833, 35.499027, 38.199085>,  <33.115955, 35.613781, 38.227398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324833, 35.499027, 38.199085>,  <33.672962, 35.307770, 38.151897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324833, 35.499027, 38.199085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399019, 0.544232, 0.737967,
		0.288648, 0.689343, -0.664446,
		-0.870325, 0.478140, 0.117969,
		33.063736, 35.642467, 38.234474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821598, 35.983158, 38.168407>,  <33.672962, 35.307770, 38.151897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821598, 35.983158, 38.168407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464020, 35.970177, 38.347206>,  <33.249474, 35.962387, 38.454487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464020, 35.970177, 38.347206>,  <33.821598, 35.983158, 38.168407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464020, 35.970177, 38.347206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349281, 0.574512, 0.740229,
		-0.280825, 0.817853, -0.502249,
		-0.893947, -0.032449, 0.446997,
		33.195835, 35.960442, 38.481304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747349, 36.586952, 38.404400>,  <33.821598, 35.983158, 38.168407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747349, 36.586952, 38.404400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472771, 36.403313, 38.629974>,  <33.308025, 36.293129, 38.765320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472771, 36.403313, 38.629974>,  <33.747349, 36.586952, 38.404400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472771, 36.403313, 38.629974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287277, 0.541219, 0.790287,
		-0.668034, 0.704493, -0.239626,
		-0.686442, -0.459100, 0.563937,
		33.266838, 36.265583, 38.799156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481514, 37.035797, 38.834965>,  <33.747349, 36.586952, 38.404400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481514, 37.035797, 38.834965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332138, 36.734112, 39.051003>,  <33.242512, 36.553101, 39.180626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332138, 36.734112, 39.051003>,  <33.481514, 37.035797, 38.834965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332138, 36.734112, 39.051003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097151, 0.547216, 0.831334,
		-0.922552, 0.362926, -0.131081,
		-0.373442, -0.754214, 0.540094,
		33.220104, 36.507847, 39.213032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050510, 37.341873, 39.353710>,  <33.481514, 37.035797, 38.834965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050510, 37.341873, 39.353710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130104, 36.977921, 39.499321>,  <33.177860, 36.759548, 39.586689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130104, 36.977921, 39.499321>,  <33.050510, 37.341873, 39.353710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130104, 36.977921, 39.499321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009527, 0.369645, 0.929124,
		-0.979956, -0.188349, 0.064885,
		0.198984, -0.909883, 0.364030,
		33.189800, 36.704956, 39.608532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611629, 37.335484, 39.907913>,  <33.050510, 37.341873, 39.353710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611629, 37.335484, 39.907913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882599, 37.045273, 39.956406>,  <33.045181, 36.871147, 39.985500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882599, 37.045273, 39.956406>,  <32.611629, 37.335484, 39.907913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882599, 37.045273, 39.956406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016973, 0.180182, 0.983487,
		-0.735394, -0.664183, 0.134375,
		0.677427, -0.725531, 0.121232,
		33.085827, 36.827614, 39.992775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353615, 36.911892, 40.391190>,  <32.611629, 37.335484, 39.907913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353615, 36.911892, 40.391190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748772, 36.854980, 40.366455>,  <32.985867, 36.820835, 40.351616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748772, 36.854980, 40.366455>,  <32.353615, 36.911892, 40.391190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748772, 36.854980, 40.366455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083203, 0.149512, 0.985253,
		-0.130935, -0.978470, 0.159540,
		0.987893, -0.142279, -0.061836,
		33.045139, 36.812298, 40.347904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481518, 36.464138, 40.864666>,  <32.353615, 36.911892, 40.391190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481518, 36.464138, 40.864666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824944, 36.656288, 40.793003>,  <33.030998, 36.771580, 40.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824944, 36.656288, 40.793003>,  <32.481518, 36.464138, 40.864666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824944, 36.656288, 40.793003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127220, 0.138898, 0.982101,
		0.496667, -0.865992, 0.058139,
		0.858567, 0.480380, -0.179158,
		33.082512, 36.800404, 40.739254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000858, 36.113106, 41.241276>,  <32.481518, 36.464138, 40.864666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000858, 36.113106, 41.241276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125599, 36.489613, 41.189484>,  <33.200443, 36.715515, 41.158409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125599, 36.489613, 41.189484>,  <33.000858, 36.113106, 41.241276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125599, 36.489613, 41.189484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295326, 0.033497, 0.954809,
		0.903067, -0.336000, -0.267535,
		0.311854, 0.941266, -0.129480,
		33.219154, 36.771992, 41.150639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625530, 36.158718, 41.594273>,  <33.000858, 36.113106, 41.241276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625530, 36.158718, 41.594273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527805, 36.544312, 41.552242>,  <33.469170, 36.775669, 41.527023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527805, 36.544312, 41.552242>,  <33.625530, 36.158718, 41.594273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527805, 36.544312, 41.552242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252767, 0.167922, 0.952844,
		0.936174, 0.206230, -0.284689,
		-0.244311, 0.963987, -0.105076,
		33.454514, 36.833508, 41.520718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136787, 36.597031, 41.832832>,  <33.625530, 36.158718, 41.594273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136787, 36.597031, 41.832832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833534, 36.857544, 41.845890>,  <33.651581, 37.013851, 41.853725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833534, 36.857544, 41.845890>,  <34.136787, 36.597031, 41.832832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833534, 36.857544, 41.845890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231351, 0.221821, 0.947245,
		0.609682, 0.725690, -0.318844,
		-0.758133, 0.651283, 0.032649,
		33.606094, 37.052929, 41.855686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384731, 37.258030, 42.222363>,  <34.136787, 36.597031, 41.832832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384731, 37.258030, 42.222363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985817, 37.246887, 42.249611>,  <33.746468, 37.240200, 42.265961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985817, 37.246887, 42.249611>,  <34.384731, 37.258030, 42.222363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985817, 37.246887, 42.249611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059439, 0.241025, 0.968697,
		-0.043409, 0.970119, -0.238716,
		-0.997288, -0.027861, 0.068125,
		33.686630, 37.238529, 42.270050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392780, 37.696583, 42.688038>,  <34.384731, 37.258030, 42.222363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392780, 37.696583, 42.688038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019154, 37.554993, 42.669155>,  <33.794979, 37.470039, 42.657825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019154, 37.554993, 42.669155>,  <34.392780, 37.696583, 42.688038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019154, 37.554993, 42.669155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180086, 0.352757, 0.918222,
		-0.308375, 0.866178, -0.393243,
		-0.934063, -0.353975, -0.047206,
		33.738934, 37.448799, 42.654995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999821, 38.095860, 43.021938>,  <34.392780, 37.696583, 42.688038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999821, 38.095860, 43.021938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763382, 37.773220, 43.023144>,  <33.621521, 37.579636, 43.023869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763382, 37.773220, 43.023144>,  <33.999821, 38.095860, 43.021938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763382, 37.773220, 43.023144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216290, 0.162099, 0.962778,
		-0.777063, 0.568440, -0.270275,
		-0.591093, -0.806598, 0.003013,
		33.586056, 37.531242, 43.024048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480610, 38.292027, 43.411526>,  <33.999821, 38.095860, 43.021938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480610, 38.292027, 43.411526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456158, 37.893383, 43.389492>,  <33.441486, 37.654198, 43.376270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456158, 37.893383, 43.389492>,  <33.480610, 38.292027, 43.411526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456158, 37.893383, 43.389492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219066, -0.040445, 0.974871,
		-0.973793, 0.071665, -0.215850,
		-0.061134, -0.996609, -0.055085,
		33.437817, 37.594402, 43.372967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851437, 38.095581, 43.597084>,  <33.480610, 38.292027, 43.411526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851437, 38.095581, 43.597084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104980, 37.805161, 43.703720>,  <33.257107, 37.630909, 43.767704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104980, 37.805161, 43.703720>,  <32.851437, 38.095581, 43.597084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104980, 37.805161, 43.703720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195398, 0.183179, 0.963465,
		-0.748360, -0.662793, -0.025760,
		0.633859, -0.726052, 0.266592,
		33.295139, 37.587345, 43.783699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534332, 37.722542, 44.138058>,  <32.851437, 38.095581, 43.597084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534332, 37.722542, 44.138058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915333, 37.602806, 44.160461>,  <33.143932, 37.530964, 44.173904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915333, 37.602806, 44.160461>,  <32.534332, 37.722542, 44.138058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915333, 37.602806, 44.160461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054747, 0.012620, 0.998421,
		-0.299569, -0.954064, -0.004367,
		0.952503, -0.299335, 0.056012,
		33.201084, 37.513004, 44.177265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475666, 37.209846, 44.618816>,  <32.534332, 37.722542, 44.138058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475666, 37.209846, 44.618816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849857, 37.351013, 44.611538>,  <33.074371, 37.435711, 44.607170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849857, 37.351013, 44.611538>,  <32.475666, 37.209846, 44.618816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849857, 37.351013, 44.611538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048890, -0.078247, 0.995734,
		0.349985, -0.932378, -0.090452,
		0.935478, 0.352914, -0.018199,
		33.130501, 37.456886, 44.606079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742516, 36.879093, 45.302368>,  <32.475666, 37.209846, 44.618816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742516, 36.879093, 45.302368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047352, 37.116478, 45.198807>,  <33.230251, 37.258907, 45.136669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047352, 37.116478, 45.198807>,  <32.742516, 36.879093, 45.302368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047352, 37.116478, 45.198807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334309, -0.018219, 0.942287,
		0.554493, -0.804657, -0.212284,
		0.762086, 0.593460, -0.258902,
		33.275978, 37.294518, 45.121136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415691, 36.574387, 45.416996>,  <32.742516, 36.879093, 45.302368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415691, 36.574387, 45.416996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464035, 36.971439, 45.413368>,  <33.493042, 37.209671, 45.411190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464035, 36.971439, 45.413368>,  <33.415691, 36.574387, 45.416996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464035, 36.971439, 45.413368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287962, -0.026312, 0.957280,
		0.949985, -0.118304, -0.289020,
		0.120855, 0.992629, -0.009071,
		33.500290, 37.269226, 45.410648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092579, 36.735203, 45.729805>,  <33.415691, 36.574387, 45.416996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092579, 36.735203, 45.729805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889919, 37.077492, 45.771851>,  <33.768326, 37.282864, 45.797077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889919, 37.077492, 45.771851>,  <34.092579, 36.735203, 45.729805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889919, 37.077492, 45.771851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330903, 0.080419, 0.940232,
		0.796124, 0.511148, -0.323905,
		-0.506645, 0.855722, 0.105117,
		33.737926, 37.334209, 45.803387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576191, 37.173973, 46.083691>,  <34.092579, 36.735203, 45.729805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576191, 37.173973, 46.083691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214741, 37.324642, 46.165249>,  <33.997871, 37.415043, 46.214184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214741, 37.324642, 46.165249>,  <34.576191, 37.173973, 46.083691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214741, 37.324642, 46.165249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279438, 0.157668, 0.947130,
		0.324608, 0.912831, -0.247729,
		-0.903628, 0.376671, 0.203899,
		33.943653, 37.437645, 46.226418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815998, 37.728958, 46.428108>,  <34.576191, 37.173973, 46.083691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815998, 37.728958, 46.428108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433731, 37.671165, 46.530731>,  <34.204372, 37.636490, 46.592304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433731, 37.671165, 46.530731>,  <34.815998, 37.728958, 46.428108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433731, 37.671165, 46.530731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242605, 0.107375, 0.964165,
		-0.166856, 0.983664, -0.067562,
		-0.955668, -0.144486, 0.256558,
		34.147030, 37.627819, 46.607700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568504, 38.275993, 46.828270>,  <34.815998, 37.728958, 46.428108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568504, 38.275993, 46.828270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320904, 37.978107, 46.928059>,  <34.172344, 37.799374, 46.987930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320904, 37.978107, 46.928059>,  <34.568504, 38.275993, 46.828270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320904, 37.978107, 46.928059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199882, 0.157801, 0.967030,
		-0.759529, 0.648457, 0.051176,
		-0.619001, -0.744716, 0.249469,
		34.135204, 37.754692, 47.002899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224640, 38.536396, 47.456841>,  <34.568504, 38.275993, 46.828270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224640, 38.536396, 47.456841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127968, 38.148640, 47.439491>,  <34.069965, 37.915985, 47.429081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127968, 38.148640, 47.439491>,  <34.224640, 38.536396, 47.456841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127968, 38.148640, 47.439491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098384, -0.019984, 0.994948,
		-0.965355, 0.244727, -0.090542,
		-0.241681, -0.969386, -0.043369,
		34.055462, 37.857822, 47.426479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818874, 38.460030, 48.087906>,  <34.224640, 38.536396, 47.456841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818874, 38.460030, 48.087906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861950, 38.091496, 47.938484>,  <33.887794, 37.870377, 47.848831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861950, 38.091496, 47.938484>,  <33.818874, 38.460030, 48.087906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861950, 38.091496, 47.938484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138190, -0.385964, 0.912105,
		-0.984534, -0.046602, -0.168884,
		0.107689, -0.921336, -0.373554,
		33.894257, 37.815094, 47.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387653, 37.989506, 48.327442>,  <33.818874, 38.460030, 48.087906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387653, 37.989506, 48.327442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710125, 37.768410, 48.243011>,  <33.903606, 37.635754, 48.192352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710125, 37.768410, 48.243011>,  <33.387653, 37.989506, 48.327442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710125, 37.768410, 48.243011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006526, -0.348420, 0.937316,
		-0.591638, -0.757020, -0.277281,
		0.806177, -0.552742, -0.211079,
		33.951977, 37.602589, 48.179688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256310, 37.357529, 48.643696>,  <33.387653, 37.989506, 48.327442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256310, 37.357529, 48.643696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649540, 37.337250, 48.573269>,  <33.885479, 37.325081, 48.531013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649540, 37.337250, 48.573269>,  <33.256310, 37.357529, 48.643696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649540, 37.337250, 48.573269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106203, -0.625358, 0.773077,
		-0.149299, -0.778689, -0.609388,
		0.983072, -0.050701, -0.176065,
		33.944462, 37.322041, 48.520451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378582, 36.626244, 48.741062>,  <33.256310, 37.357529, 48.643696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378582, 36.626244, 48.741062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739876, 36.791794, 48.786427>,  <33.956654, 36.891125, 48.813644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739876, 36.791794, 48.786427>,  <33.378582, 36.626244, 48.741062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739876, 36.791794, 48.786427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128917, -0.513771, 0.848186,
		0.409316, -0.751493, -0.517414,
		0.903239, 0.413880, 0.113415,
		34.010849, 36.915958, 48.820450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846855, 36.128376, 48.849083>,  <33.378582, 36.626244, 48.741062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846855, 36.128376, 48.849083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051098, 36.437466, 48.999905>,  <34.173641, 36.622921, 49.090397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051098, 36.437466, 48.999905>,  <33.846855, 36.128376, 48.849083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051098, 36.437466, 48.999905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173772, -0.522228, 0.834914,
		0.842073, -0.360789, -0.400931,
		0.510605, 0.772729, 0.377059,
		34.204281, 36.669285, 49.113022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463322, 35.881187, 49.153923>,  <33.846855, 36.128376, 48.849083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463322, 35.881187, 49.153923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458523, 36.235813, 49.338905>,  <34.455643, 36.448589, 49.449894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458523, 36.235813, 49.338905>,  <34.463322, 35.881187, 49.153923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458523, 36.235813, 49.338905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468199, -0.403676, 0.786025,
		0.883542, 0.225954, -0.410242,
		-0.012001, 0.886561, 0.462456,
		34.454922, 36.501781, 49.477642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126282, 36.006226, 49.355762>,  <34.463322, 35.881187, 49.153923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126282, 36.006226, 49.355762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875496, 36.220806, 49.581730>,  <34.725025, 36.349556, 49.717312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875496, 36.220806, 49.581730>,  <35.126282, 36.006226, 49.355762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875496, 36.220806, 49.581730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471181, -0.316359, 0.823350,
		0.620403, 0.782393, -0.054418,
		-0.626968, 0.536450, 0.564919,
		34.687405, 36.381741, 49.751205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538082, 36.204300, 49.995102>,  <35.126282, 36.006226, 49.355762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538082, 36.204300, 49.995102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156475, 36.239101, 50.109837>,  <34.927509, 36.259983, 50.178677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156475, 36.239101, 50.109837>,  <35.538082, 36.204300, 49.995102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156475, 36.239101, 50.109837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249495, -0.299895, 0.920769,
		0.166128, 0.949997, 0.264400,
		-0.954020, 0.086999, 0.286840,
		34.870270, 36.265202, 50.195889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556118, 36.586609, 50.493877>,  <35.538082, 36.204300, 49.995102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556118, 36.586609, 50.493877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197556, 36.418098, 50.548992>,  <34.982418, 36.316994, 50.582062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197556, 36.418098, 50.548992>,  <35.556118, 36.586609, 50.493877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197556, 36.418098, 50.548992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198746, -0.104169, 0.974499,
		-0.396181, 0.900930, 0.177105,
		-0.896404, -0.421277, 0.137786,
		34.928635, 36.291714, 50.590328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258636, 36.920357, 51.181774>,  <35.556118, 36.586609, 50.493877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258636, 36.920357, 51.181774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084423, 36.569347, 51.101513>,  <34.979893, 36.358742, 51.053356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084423, 36.569347, 51.101513>,  <35.258636, 36.920357, 51.181774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084423, 36.569347, 51.101513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113346, -0.274589, 0.954858,
		-0.893006, 0.393134, 0.219058,
		-0.435538, -0.877523, -0.200649,
		34.953762, 36.306091, 51.041317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895325, 36.820251, 51.784550>,  <35.258636, 36.920357, 51.181774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895325, 36.820251, 51.784550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044083, 36.486744, 51.621323>,  <35.133339, 36.286640, 51.523388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044083, 36.486744, 51.621323>,  <34.895325, 36.820251, 51.784550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044083, 36.486744, 51.621323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147384, -0.380981, 0.912760,
		-0.916499, -0.399595, -0.018802,
		0.371898, -0.833772, -0.408063,
		35.155651, 36.236610, 51.498905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574131, 36.237091, 52.174454>,  <34.895325, 36.820251, 51.784550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574131, 36.237091, 52.174454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938030, 36.156853, 52.029064>,  <35.156372, 36.108711, 51.941830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938030, 36.156853, 52.029064>,  <34.574131, 36.237091, 52.174454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938030, 36.156853, 52.029064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246860, -0.442531, 0.862106,
		-0.333782, -0.874030, -0.353075,
		0.909753, -0.200596, -0.363471,
		35.210957, 36.096672, 51.920021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733032, 35.529316, 52.225258>,  <34.574131, 36.237091, 52.174454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733032, 35.529316, 52.225258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069378, 35.744694, 52.247292>,  <35.271183, 35.873920, 52.260513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069378, 35.744694, 52.247292>,  <34.733032, 35.529316, 52.225258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069378, 35.744694, 52.247292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314585, -0.569002, 0.759785,
		0.440444, -0.621543, -0.647837,
		0.840860, 0.538442, 0.055086,
		35.321636, 35.906227, 52.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874027, 34.788006, 52.123417>,  <34.733032, 35.529316, 52.225258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874027, 34.788006, 52.123417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902409, 34.898136, 52.506908>,  <34.919437, 34.964214, 52.737003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902409, 34.898136, 52.506908>,  <34.874027, 34.788006, 52.123417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902409, 34.898136, 52.506908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592762, 0.784666, -0.181471,
		-0.802246, -0.555422, 0.218878,
		0.070953, 0.275327, 0.958729,
		34.923695, 34.980736, 52.794525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224525, 34.768135, 52.434254>,  <34.874027, 34.788006, 52.123417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224525, 34.768135, 52.434254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467453, 35.050438, 52.580170>,  <34.613209, 35.219818, 52.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467453, 35.050438, 52.580170>,  <34.224525, 34.768135, 52.434254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467453, 35.050438, 52.580170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734802, 0.673569, -0.079816,
		-0.302041, -0.219573, 0.927663,
		0.607319, 0.705757, 0.364788,
		34.649651, 35.262165, 52.689606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819481, 35.116768, 53.003605>,  <34.224525, 34.768135, 52.434254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819481, 35.116768, 53.003605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084152, 35.384644, 52.868729>,  <34.242954, 35.545368, 52.787804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084152, 35.384644, 52.868729>,  <33.819481, 35.116768, 53.003605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084152, 35.384644, 52.868729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723037, 0.688960, -0.050515,
		0.198481, 0.277226, 0.940080,
		0.661682, 0.669687, -0.337190,
		34.282658, 35.585548, 52.767570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009338, 35.596699, 53.566460>,  <33.819481, 35.116768, 53.003605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009338, 35.596699, 53.566460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041595, 35.753986, 53.200100>,  <34.060951, 35.848358, 52.980282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041595, 35.753986, 53.200100>,  <34.009338, 35.596699, 53.566460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041595, 35.753986, 53.200100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859465, 0.492801, 0.135893,
		0.504793, 0.776228, 0.377696,
		0.080645, 0.393214, -0.915903,
		34.065788, 35.871952, 52.925327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652557, 35.270599, 53.759861>,  <34.009338, 35.596699, 53.566460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652557, 35.270599, 53.759861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409809, 34.952808, 53.768917>,  <34.264160, 34.762135, 53.774353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409809, 34.952808, 53.768917>,  <34.652557, 35.270599, 53.759861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409809, 34.952808, 53.768917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404649, -0.333368, -0.851543,
		0.684080, -0.507615, 0.523796,
		-0.606872, -0.794477, 0.022645,
		34.227749, 34.714466, 53.775711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068768, 34.704369, 53.434017>,  <34.652557, 35.270599, 53.759861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068768, 34.704369, 53.434017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694450, 34.564804, 53.413780>,  <34.469860, 34.481068, 53.401638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694450, 34.564804, 53.413780>,  <35.068768, 34.704369, 53.434017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694450, 34.564804, 53.413780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181393, -0.353450, -0.917698,
		0.302312, -0.867950, 0.394044,
		-0.935791, -0.348908, -0.050588,
		34.413712, 34.460133, 53.398605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204842, 34.070183, 53.173664>,  <35.068768, 34.704369, 53.434017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204842, 34.070183, 53.173664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821404, 34.152222, 53.094646>,  <34.591339, 34.201447, 53.047237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821404, 34.152222, 53.094646>,  <35.204842, 34.070183, 53.173664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821404, 34.152222, 53.094646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069928, -0.502924, -0.861497,
		-0.276043, -0.839643, 0.467759,
		-0.958598, 0.205101, -0.197543,
		34.533825, 34.213753, 53.035385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760326, 33.442482, 52.924801>,  <35.204842, 34.070183, 53.173664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760326, 33.442482, 52.924801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549053, 33.754868, 52.791466>,  <34.422287, 33.942299, 52.711464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549053, 33.754868, 52.791466>,  <34.760326, 33.442482, 52.924801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549053, 33.754868, 52.791466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340164, -0.554299, -0.759632,
		-0.778016, -0.287836, 0.558428,
		-0.528186, 0.780963, -0.333342,
		34.390598, 33.989155, 52.691463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035057, 33.205452, 52.821072>,  <34.760326, 33.442482, 52.924801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035057, 33.205452, 52.821072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112034, 33.517120, 52.582455>,  <34.158218, 33.704121, 52.439285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112034, 33.517120, 52.582455>,  <34.035057, 33.205452, 52.821072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112034, 33.517120, 52.582455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520737, -0.434170, -0.735071,
		-0.831744, 0.452101, 0.322189,
		0.192441, 0.779167, -0.596544,
		34.169765, 33.750870, 52.403492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372948, 33.462303, 52.594082>,  <34.035057, 33.205452, 52.821072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372948, 33.462303, 52.594082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653454, 33.583755, 52.336079>,  <33.821758, 33.656628, 52.181278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653454, 33.583755, 52.336079>,  <33.372948, 33.462303, 52.594082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653454, 33.583755, 52.336079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420235, -0.554793, -0.718058,
		-0.575871, 0.774604, -0.261460,
		0.701267, 0.303634, -0.645005,
		33.863834, 33.674847, 52.142578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008018, 33.558613, 51.934074>,  <33.372948, 33.462303, 52.594082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008018, 33.558613, 51.934074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383915, 33.573826, 51.798164>,  <33.609451, 33.582954, 51.716618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383915, 33.573826, 51.798164>,  <33.008018, 33.558613, 51.934074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383915, 33.573826, 51.798164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303609, -0.364128, -0.880473,
		-0.157207, 0.930572, -0.330638,
		0.939738, 0.038032, -0.339773,
		33.665836, 33.585236, 51.696232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117924, 34.036247, 51.253895>,  <33.008018, 33.558613, 51.934074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117924, 34.036247, 51.253895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413834, 33.768974, 51.285564>,  <33.591381, 33.608612, 51.304565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413834, 33.768974, 51.285564>,  <33.117924, 34.036247, 51.253895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413834, 33.768974, 51.285564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134100, -0.261722, -0.955782,
		0.659356, 0.696446, -0.283219,
		0.739775, -0.668180, 0.079174,
		33.635765, 33.568520, 51.309319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255749, 33.995804, 50.692875>,  <33.117924, 34.036247, 51.253895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255749, 33.995804, 50.692875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470825, 33.681992, 50.816422>,  <33.599873, 33.493706, 50.890549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470825, 33.681992, 50.816422>,  <33.255749, 33.995804, 50.692875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470825, 33.681992, 50.816422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027036, -0.382183, -0.923691,
		0.842708, 0.488311, -0.226707,
		0.537692, -0.784531, 0.308866,
		33.632133, 33.446632, 50.909081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856655, 33.967724, 50.317509>,  <33.255749, 33.995804, 50.692875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856655, 33.967724, 50.317509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753834, 33.604374, 50.449432>,  <33.692142, 33.386364, 50.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753834, 33.604374, 50.449432>,  <33.856655, 33.967724, 50.317509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753834, 33.604374, 50.449432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099771, -0.364401, -0.925882,
		0.961233, -0.205096, 0.184301,
		-0.257054, -0.908377, 0.329811,
		33.676716, 33.331860, 50.548374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359856, 33.590969, 50.042267>,  <33.856655, 33.967724, 50.317509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359856, 33.590969, 50.042267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057232, 33.338371, 50.110191>,  <33.875656, 33.186813, 50.150948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057232, 33.338371, 50.110191>,  <34.359856, 33.590969, 50.042267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057232, 33.338371, 50.110191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019980, -0.237238, -0.971246,
		0.653620, -0.738198, 0.166868,
		-0.756559, -0.631491, 0.169813,
		33.830265, 33.148926, 50.161137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571552, 33.031853, 49.766113>,  <34.359856, 33.590969, 50.042267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571552, 33.031853, 49.766113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179050, 32.965939, 49.806095>,  <33.943550, 32.926392, 49.830082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179050, 32.965939, 49.806095>,  <34.571552, 33.031853, 49.766113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179050, 32.965939, 49.806095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042304, -0.321812, -0.945858,
		0.188027, -0.932354, 0.308808,
		-0.981252, -0.164783, 0.099951,
		33.884674, 32.916504, 49.836079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409054, 32.270554, 49.405037>,  <34.571552, 33.031853, 49.766113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409054, 32.270554, 49.405037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094509, 32.517132, 49.421146>,  <33.905781, 32.665081, 49.430813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094509, 32.517132, 49.421146>,  <34.409054, 32.270554, 49.405037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094509, 32.517132, 49.421146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238767, -0.243157, -0.940141,
		-0.569757, -0.748909, 0.338397,
		-0.786363, 0.616450, 0.040275,
		33.858601, 32.702068, 49.433228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841946, 31.917986, 49.109722>,  <34.409054, 32.270554, 49.405037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841946, 31.917986, 49.109722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693752, 32.287846, 49.074486>,  <33.604836, 32.509762, 49.053345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693752, 32.287846, 49.074486>,  <33.841946, 31.917986, 49.109722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693752, 32.287846, 49.074486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396764, -0.243294, -0.885091,
		-0.839832, -0.292964, 0.457005,
		-0.370487, 0.924651, -0.088089,
		33.582607, 32.565243, 49.048058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194447, 31.841640, 48.836002>,  <33.841946, 31.917986, 49.109722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194447, 31.841640, 48.836002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261242, 32.230320, 48.769169>,  <33.301319, 32.463528, 48.729069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261242, 32.230320, 48.769169>,  <33.194447, 31.841640, 48.836002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261242, 32.230320, 48.769169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320466, -0.106768, -0.941224,
		-0.932425, 0.210717, 0.293567,
		0.166989, 0.971699, -0.167081,
		33.311340, 32.521832, 48.719044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594170, 32.123405, 48.577065>,  <33.194447, 31.841640, 48.836002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594170, 32.123405, 48.577065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900612, 32.351040, 48.457584>,  <33.084476, 32.487621, 48.385899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900612, 32.351040, 48.457584>,  <32.594170, 32.123405, 48.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900612, 32.351040, 48.457584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425677, 0.101078, -0.899212,
		-0.481535, 0.816043, 0.319683,
		0.766109, 0.569084, -0.298698,
		33.130444, 32.521767, 48.367973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192310, 32.531895, 48.107151>,  <32.594170, 32.123405, 48.577065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192310, 32.531895, 48.107151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582066, 32.564457, 48.023308>,  <32.815918, 32.583992, 47.973003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582066, 32.564457, 48.023308>,  <32.192310, 32.531895, 48.107151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582066, 32.564457, 48.023308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215886, 0.078016, -0.973297,
		-0.062876, 0.993623, 0.093592,
		0.974392, 0.081402, -0.209604,
		32.874382, 32.588879, 47.960426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251450, 33.146938, 47.651146>,  <32.192310, 32.531895, 48.107151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251450, 33.146938, 47.651146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558044, 32.891819, 47.620899>,  <32.742001, 32.738747, 47.602753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558044, 32.891819, 47.620899>,  <32.251450, 33.146938, 47.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558044, 32.891819, 47.620899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036572, 0.160883, -0.986296,
		0.641218, 0.753217, 0.146640,
		0.766487, -0.637794, -0.075614,
		32.787991, 32.700481, 47.598213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637066, 33.520336, 47.303211>,  <32.251450, 33.146938, 47.651146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637066, 33.520336, 47.303211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768265, 33.149117, 47.232628>,  <32.846985, 32.926384, 47.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768265, 33.149117, 47.232628>,  <32.637066, 33.520336, 47.303211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768265, 33.149117, 47.232628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000741, 0.186535, -0.982448,
		0.944677, 0.322375, 0.060496,
		0.328001, -0.928051, -0.176454,
		32.866665, 32.870701, 47.179691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109650, 33.647091, 46.752140>,  <32.637066, 33.520336, 47.303211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109650, 33.647091, 46.752140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067112, 33.249359, 46.751011>,  <33.041588, 33.010719, 46.750336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067112, 33.249359, 46.751011>,  <33.109650, 33.647091, 46.752140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067112, 33.249359, 46.751011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080515, -0.005786, -0.996737,
		0.991064, -0.106223, 0.080673,
		-0.106343, -0.994325, -0.002818,
		33.035210, 32.951061, 46.750164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681324, 33.358791, 46.401966>,  <33.109650, 33.647091, 46.752140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681324, 33.358791, 46.401966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381702, 33.094807, 46.378777>,  <33.201927, 32.936417, 46.364864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381702, 33.094807, 46.378777>,  <33.681324, 33.358791, 46.401966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381702, 33.094807, 46.378777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191385, -0.131781, -0.972628,
		0.634261, -0.739648, 0.225019,
		-0.749056, -0.659966, -0.057973,
		33.156986, 32.896816, 46.361385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965721, 32.799797, 45.885956>,  <33.681324, 33.358791, 46.401966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965721, 32.799797, 45.885956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570496, 32.745407, 45.914886>,  <33.333359, 32.712772, 45.932247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570496, 32.745407, 45.914886>,  <33.965721, 32.799797, 45.885956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570496, 32.745407, 45.914886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060524, -0.089038, -0.994188,
		0.141628, -0.986703, 0.079746,
		-0.988068, -0.135978, 0.072330,
		33.274075, 32.704613, 45.936584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766441, 32.148026, 45.467731>,  <33.965721, 32.799797, 45.885956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766441, 32.148026, 45.467731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418766, 32.342770, 45.502319>,  <33.210159, 32.459618, 45.523071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418766, 32.342770, 45.502319>,  <33.766441, 32.148026, 45.467731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418766, 32.342770, 45.502319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160480, -0.112338, -0.980626,
		-0.467714, -0.866226, 0.175775,
		-0.869189, 0.486860, 0.086469,
		33.158009, 32.488827, 45.528259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184143, 31.725229, 45.162243>,  <33.766441, 32.148026, 45.467731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184143, 31.725229, 45.162243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080204, 32.110779, 45.138836>,  <33.017841, 32.342110, 45.124790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080204, 32.110779, 45.138836>,  <33.184143, 31.725229, 45.162243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080204, 32.110779, 45.138836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183682, -0.108830, -0.976943,
		-0.948019, -0.243109, 0.205325,
		-0.259849, 0.963875, -0.058518,
		33.002251, 32.399940, 45.121281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736839, 31.703817, 44.613926>,  <33.184143, 31.725229, 45.162243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736839, 31.703817, 44.613926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743458, 32.101357, 44.657734>,  <32.747429, 32.339878, 44.684017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743458, 32.101357, 44.657734>,  <32.736839, 31.703817, 44.613926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743458, 32.101357, 44.657734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283526, 0.109701, -0.952669,
		-0.958822, -0.015288, 0.283597,
		0.016546, 0.993847, 0.109518,
		32.748421, 32.399509, 44.690590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998356, 32.038883, 44.452698>,  <32.736839, 31.703817, 44.613926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998356, 32.038883, 44.452698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270309, 32.330433, 44.420452>,  <32.433483, 32.505363, 44.401104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270309, 32.330433, 44.420452>,  <31.998356, 32.038883, 44.452698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270309, 32.330433, 44.420452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444544, 0.322227, -0.835793,
		-0.583216, 0.604076, 0.543094,
		0.679883, 0.728877, -0.080610,
		32.474274, 32.549095, 44.396271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676064, 32.668682, 44.053043>,  <31.998356, 32.038883, 44.452698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676064, 32.668682, 44.053043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071350, 32.686718, 43.994537>,  <32.308521, 32.697540, 43.959435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071350, 32.686718, 43.994537>,  <31.676064, 32.668682, 44.053043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071350, 32.686718, 43.994537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152802, 0.346388, -0.925563,
		0.008931, 0.937007, 0.349196,
		0.988217, 0.045091, -0.146270,
		32.367817, 32.700245, 43.950657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890137, 33.370144, 43.717514>,  <31.676064, 32.668682, 44.053043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890137, 33.370144, 43.717514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207172, 33.133137, 43.659924>,  <32.397392, 32.990932, 43.625370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207172, 33.133137, 43.659924>,  <31.890137, 33.370144, 43.717514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207172, 33.133137, 43.659924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020033, 0.261289, -0.965053,
		0.609429, 0.762004, 0.218965,
		0.792588, -0.592517, -0.143972,
		32.444950, 32.955383, 43.616734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345230, 33.707592, 43.189747>,  <31.890137, 33.370144, 43.717514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345230, 33.707592, 43.189747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444710, 33.320190, 43.184868>,  <32.504398, 33.087749, 43.181938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444710, 33.320190, 43.184868>,  <32.345230, 33.707592, 43.189747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444710, 33.320190, 43.184868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091997, 0.036160, -0.995103,
		0.964203, 0.246356, 0.098092,
		0.248697, -0.968504, -0.012201,
		32.519318, 33.029640, 43.181206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881596, 33.659561, 42.665432>,  <32.345230, 33.707592, 43.189747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881596, 33.659561, 42.665432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729801, 33.293751, 42.721485>,  <32.638725, 33.074265, 42.755116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729801, 33.293751, 42.721485>,  <32.881596, 33.659561, 42.665432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729801, 33.293751, 42.721485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038964, -0.135531, -0.990007,
		0.924378, -0.381151, 0.015798,
		-0.379483, -0.914525, 0.140133,
		32.615955, 33.019394, 42.763523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355259, 33.143757, 42.372116>,  <32.881596, 33.659561, 42.665432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355259, 33.143757, 42.372116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993416, 32.973473, 42.380676>,  <32.776310, 32.871304, 42.385815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993416, 32.973473, 42.380676>,  <33.355259, 33.143757, 42.372116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993416, 32.973473, 42.380676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032003, -0.117904, -0.992509,
		0.425045, -0.897145, 0.120281,
		-0.904607, -0.425710, 0.021403,
		32.722034, 32.845760, 42.387096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272285, 32.850456, 41.752636>,  <33.355259, 33.143757, 42.372116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272285, 32.850456, 41.752636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887825, 32.810898, 41.855713>,  <32.657150, 32.787163, 41.917561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887825, 32.810898, 41.855713>,  <33.272285, 32.850456, 41.752636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887825, 32.810898, 41.855713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248679, -0.094860, -0.963930,
		0.119772, -0.990566, 0.066582,
		-0.961152, -0.098894, 0.257695,
		32.599480, 32.781231, 41.933022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141994, 32.400936, 41.288490>,  <33.272285, 32.850456, 41.752636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141994, 32.400936, 41.288490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789108, 32.550045, 41.403542>,  <32.577377, 32.639511, 41.472572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789108, 32.550045, 41.403542>,  <33.141994, 32.400936, 41.288490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789108, 32.550045, 41.403542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287658, 0.056896, -0.956042,
		-0.372752, -0.926177, 0.057036,
		-0.882219, 0.372773, 0.287630,
		32.524445, 32.661877, 41.489830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632805, 32.030258, 40.886925>,  <33.141994, 32.400936, 41.288490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632805, 32.030258, 40.886925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415108, 32.347569, 40.996120>,  <32.284489, 32.537952, 41.061638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415108, 32.347569, 40.996120>,  <32.632805, 32.030258, 40.886925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415108, 32.347569, 40.996120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415450, 0.027849, -0.909190,
		-0.728837, -0.608230, 0.314408,
		-0.544240, 0.793272, 0.272987,
		32.251835, 32.585548, 41.078018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946873, 31.854568, 40.772774>,  <32.632805, 32.030258, 40.886925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946873, 31.854568, 40.772774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961372, 32.253895, 40.790901>,  <31.970072, 32.493492, 40.801777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961372, 32.253895, 40.790901>,  <31.946873, 31.854568, 40.772774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961372, 32.253895, 40.790901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413553, 0.056268, -0.908740,
		-0.909758, 0.014201, 0.414896,
		0.036251, 0.998315, 0.045317,
		31.972248, 32.553391, 40.804497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246681, 32.093571, 40.700268>,  <31.946873, 31.854568, 40.772774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246681, 32.093571, 40.700268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486317, 32.388252, 40.574818>,  <31.630098, 32.565060, 40.499550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486317, 32.388252, 40.574818>,  <31.246681, 32.093571, 40.700268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486317, 32.388252, 40.574818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397730, -0.066140, -0.915116,
		-0.694911, 0.672974, 0.253385,
		0.599091, 0.736703, -0.313623,
		31.666044, 32.609264, 40.480732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840715, 32.493980, 40.216686>,  <31.246681, 32.093571, 40.700268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840715, 32.493980, 40.216686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221340, 32.600948, 40.156002>,  <31.449715, 32.665127, 40.119591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221340, 32.600948, 40.156002>,  <30.840715, 32.493980, 40.216686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221340, 32.600948, 40.156002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204784, 0.183218, -0.961507,
		-0.229327, 0.946002, 0.229106,
		0.951563, 0.267417, -0.151709,
		31.506809, 32.681175, 40.110489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799068, 33.174706, 39.892948>,  <30.840715, 32.493980, 40.216686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799068, 33.174706, 39.892948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154875, 33.027145, 39.785110>,  <31.368359, 32.938610, 39.720409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154875, 33.027145, 39.785110>,  <30.799068, 33.174706, 39.892948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154875, 33.027145, 39.785110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187416, 0.243526, -0.951615,
		0.416700, 0.897000, 0.147483,
		0.889515, -0.368897, -0.269590,
		31.421730, 32.916477, 39.704235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037172, 33.646255, 39.434994>,  <30.799068, 33.174706, 39.892948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037172, 33.646255, 39.434994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279411, 33.333591, 39.375324>,  <31.424755, 33.145992, 39.339523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279411, 33.333591, 39.375324>,  <31.037172, 33.646255, 39.434994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279411, 33.333591, 39.375324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041554, 0.156136, -0.986861,
		0.794685, 0.603840, 0.062075,
		0.605598, -0.781664, -0.149171,
		31.461090, 33.099091, 39.330574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500418, 33.823666, 38.961975>,  <31.037172, 33.646255, 39.434994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500418, 33.823666, 38.961975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482210, 33.424671, 38.940262>,  <31.471285, 33.185276, 38.927235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482210, 33.424671, 38.940262>,  <31.500418, 33.823666, 38.961975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482210, 33.424671, 38.940262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030002, 0.052950, -0.998146,
		0.998513, -0.047062, 0.027516,
		-0.045518, -0.997488, -0.054283,
		31.468555, 33.125423, 38.923977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077217, 33.547310, 38.577343>,  <31.500418, 33.823666, 38.961975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077217, 33.547310, 38.577343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770962, 33.290707, 38.558331>,  <31.587208, 33.136745, 38.546925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770962, 33.290707, 38.558331>,  <32.077217, 33.547310, 38.577343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770962, 33.290707, 38.558331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026549, 0.042315, -0.998752,
		0.642721, -0.765947, -0.015367,
		-0.765641, -0.641510, -0.047532,
		31.541269, 33.098255, 38.544071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205570, 33.153103, 38.020927>,  <32.077217, 33.547310, 38.577343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205570, 33.153103, 38.020927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815918, 33.079659, 38.073612>,  <31.582125, 33.035591, 38.105225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815918, 33.079659, 38.073612>,  <32.205570, 33.153103, 38.020927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815918, 33.079659, 38.073612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134162, 0.000907, -0.990959,
		0.181827, -0.982999, -0.025517,
		-0.974135, -0.183607, 0.131716,
		31.523678, 33.024578, 38.113129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782307, 32.632900, 37.940899>,  <32.205570, 33.153103, 38.020927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782307, 32.632900, 37.940899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777092, 32.275551, 37.761250>,  <32.773964, 32.061142, 37.653461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777092, 32.275551, 37.761250>,  <32.782307, 32.632900, 37.940899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777092, 32.275551, 37.761250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579653, -0.372738, 0.724616,
		-0.814759, -0.250892, 0.522705,
		-0.013032, -0.893375, -0.449122,
		32.773182, 32.007538, 37.626514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561329, 32.029675, 38.380726>,  <32.782307, 32.632900, 37.940899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561329, 32.029675, 38.380726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838223, 31.901697, 38.121975>,  <33.004360, 31.824909, 37.966724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838223, 31.901697, 38.121975>,  <32.561329, 32.029675, 38.380726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838223, 31.901697, 38.121975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503781, -0.427579, 0.750587,
		-0.516738, -0.845465, -0.134801,
		0.692233, -0.319946, -0.646876,
		33.045891, 31.805714, 37.927914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804974, 31.312386, 38.527069>,  <32.561329, 32.029675, 38.380726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804974, 31.312386, 38.527069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099361, 31.482368, 38.316257>,  <33.275993, 31.584358, 38.189770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099361, 31.482368, 38.316257>,  <32.804974, 31.312386, 38.527069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099361, 31.482368, 38.316257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676460, -0.430014, 0.597905,
		0.027452, -0.796555, -0.603942,
		0.735968, 0.424957, -0.527033,
		33.320152, 31.609856, 38.158146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378410, 30.731421, 38.433956>,  <32.804974, 31.312386, 38.527069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378410, 30.731421, 38.433956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538406, 31.097178, 38.408978>,  <33.634403, 31.316631, 38.393990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538406, 31.097178, 38.408978>,  <33.378410, 30.731421, 38.433956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538406, 31.097178, 38.408978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720698, -0.271703, 0.637787,
		0.566220, -0.300111, -0.767678,
		0.399987, 0.914391, -0.062446,
		33.658401, 31.371494, 38.390244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055626, 30.651211, 38.240143>,  <33.378410, 30.731421, 38.433956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055626, 30.651211, 38.240143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028805, 31.001835, 38.430782>,  <34.012714, 31.212210, 38.545166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028805, 31.001835, 38.430782>,  <34.055626, 30.651211, 38.240143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028805, 31.001835, 38.430782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770422, -0.258044, 0.582978,
		0.633999, 0.406271, -0.658020,
		-0.067049, 0.876560, 0.476599,
		34.008690, 31.264803, 38.573761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716122, 30.690042, 38.569218>,  <34.055626, 30.651211, 38.240143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716122, 30.690042, 38.569218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532516, 31.004641, 38.734497>,  <34.422352, 31.193399, 38.833664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532516, 31.004641, 38.734497>,  <34.716122, 30.690042, 38.569218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532516, 31.004641, 38.734497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579117, -0.087827, 0.810500,
		0.673744, 0.611320, -0.415159,
		-0.459012, 0.786495, 0.413198,
		34.394814, 31.240589, 38.858456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139641, 31.178320, 38.733150>,  <34.716122, 30.690042, 38.569218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139641, 31.178320, 38.733150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843834, 31.274736, 38.984550>,  <34.666348, 31.332586, 39.135391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843834, 31.274736, 38.984550>,  <35.139641, 31.178320, 38.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843834, 31.274736, 38.984550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601283, -0.183187, 0.777754,
		0.302605, 0.953069, -0.009465,
		-0.739519, 0.241043, 0.628498,
		34.621979, 31.347050, 39.173100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411732, 31.535349, 39.174793>,  <35.139641, 31.178320, 38.733150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411732, 31.535349, 39.174793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084152, 31.401831, 39.361515>,  <34.887604, 31.321720, 39.473549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084152, 31.401831, 39.361515>,  <35.411732, 31.535349, 39.174793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084152, 31.401831, 39.361515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532006, -0.136620, 0.835646,
		-0.215160, 0.932693, 0.289465,
		-0.818948, -0.333795, 0.466803,
		34.838467, 31.301693, 39.501556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401573, 31.976664, 39.795265>,  <35.411732, 31.535349, 39.174793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401573, 31.976664, 39.795265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169922, 31.656607, 39.857731>,  <35.030933, 31.464573, 39.895210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169922, 31.656607, 39.857731>,  <35.401573, 31.976664, 39.795265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169922, 31.656607, 39.857731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386316, -0.100664, 0.916857,
		-0.717897, 0.591302, 0.367405,
		-0.579124, -0.800143, 0.156163,
		34.996185, 31.416563, 39.904579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139538, 32.070545, 40.511330>,  <35.401573, 31.976664, 39.795265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139538, 32.070545, 40.511330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115528, 31.682480, 40.417366>,  <35.101124, 31.449640, 40.360989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115528, 31.682480, 40.417366>,  <35.139538, 32.070545, 40.511330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115528, 31.682480, 40.417366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318361, -0.241653, 0.916651,
		-0.946067, -0.019764, 0.323367,
		-0.060026, -0.970161, -0.234912,
		35.097519, 31.391432, 40.346893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758831, 31.803967, 40.995255>,  <35.139538, 32.070545, 40.511330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758831, 31.803967, 40.995255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928356, 31.480619, 40.831829>,  <35.030071, 31.286612, 40.733772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928356, 31.480619, 40.831829>,  <34.758831, 31.803967, 40.995255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928356, 31.480619, 40.831829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131338, -0.391467, 0.910771,
		-0.896177, -0.439656, -0.059739,
		0.423812, -0.808366, -0.408568,
		35.055500, 31.238110, 40.709259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549805, 31.254271, 41.344677>,  <34.758831, 31.803967, 40.995255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549805, 31.254271, 41.344677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883495, 31.085781, 41.202335>,  <35.083710, 30.984688, 41.116932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883495, 31.085781, 41.202335>,  <34.549805, 31.254271, 41.344677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883495, 31.085781, 41.202335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180839, -0.400655, 0.898206,
		-0.520920, -0.813661, -0.258064,
		0.834230, -0.421226, -0.355851,
		35.133762, 30.959414, 41.095581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470612, 30.513748, 41.509541>,  <34.549805, 31.254271, 41.344677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470612, 30.513748, 41.509541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856747, 30.611847, 41.473801>,  <35.088428, 30.670706, 41.452358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856747, 30.611847, 41.473801>,  <34.470612, 30.513748, 41.509541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856747, 30.611847, 41.473801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144490, -0.217018, 0.965415,
		0.217376, -0.944858, -0.244931,
		0.965334, 0.245248, -0.089348,
		35.146347, 30.685421, 41.446995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857304, 30.009995, 41.816219>,  <34.470612, 30.513748, 41.509541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857304, 30.009995, 41.816219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102604, 30.325788, 41.806110>,  <35.249783, 30.515265, 41.800045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102604, 30.325788, 41.806110>,  <34.857304, 30.009995, 41.816219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102604, 30.325788, 41.806110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281184, -0.188297, 0.940999,
		0.738147, -0.584172, -0.337464,
		0.613249, 0.789486, -0.025269,
		35.286579, 30.562634, 41.798531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354382, 29.850317, 42.222740>,  <34.857304, 30.009995, 41.816219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354382, 29.850317, 42.222740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433498, 30.242123, 42.207615>,  <35.480968, 30.477207, 42.198540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433498, 30.242123, 42.207615>,  <35.354382, 29.850317, 42.222740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433498, 30.242123, 42.207615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282533, -0.020029, 0.959048,
		0.938645, -0.200371, -0.280707,
		0.197788, 0.979515, -0.037811,
		35.492836, 30.535976, 42.196270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950977, 29.890919, 42.652428>,  <35.354382, 29.850317, 42.222740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950977, 29.890919, 42.652428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800030, 30.260941, 42.635155>,  <35.709461, 30.482954, 42.624790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800030, 30.260941, 42.635155>,  <35.950977, 29.890919, 42.652428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800030, 30.260941, 42.635155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139863, 0.103027, 0.984796,
		0.915441, 0.365591, -0.168260,
		-0.377368, 0.925056, -0.043183,
		35.686821, 30.538458, 42.622200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379677, 30.337358, 43.149139>,  <35.950977, 29.890919, 42.652428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379677, 30.337358, 43.149139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034714, 30.536364, 43.111759>,  <35.827736, 30.655767, 43.089329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034714, 30.536364, 43.111759>,  <36.379677, 30.337358, 43.149139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034714, 30.536364, 43.111759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033655, 0.127856, 0.991222,
		0.505095, 0.857982, -0.093520,
		-0.862408, 0.497513, -0.093455,
		35.775993, 30.685617, 43.083721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426891, 31.088194, 43.381924>,  <36.379677, 30.337358, 43.149139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426891, 31.088194, 43.381924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033260, 31.017157, 43.384777>,  <35.797081, 30.974535, 43.386490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033260, 31.017157, 43.384777>,  <36.426891, 31.088194, 43.381924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033260, 31.017157, 43.384777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079215, 0.474165, 0.876865,
		-0.159105, 0.862339, -0.480683,
		-0.984079, -0.177591, 0.007132,
		35.738037, 30.963879, 43.386917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191593, 31.590445, 43.777241>,  <36.426891, 31.088194, 43.381924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191593, 31.590445, 43.777241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892681, 31.324697, 43.782623>,  <35.713333, 31.165249, 43.785854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892681, 31.324697, 43.782623>,  <36.191593, 31.590445, 43.777241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892681, 31.324697, 43.782623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284713, 0.338412, 0.896892,
		-0.600421, 0.666402, -0.442044,
		-0.747283, -0.664369, 0.013456,
		35.668495, 31.125387, 43.786659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552357, 31.954180, 44.025871>,  <36.191593, 31.590445, 43.777241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552357, 31.954180, 44.025871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456303, 31.570110, 44.083008>,  <35.398670, 31.339668, 44.117290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456303, 31.570110, 44.083008>,  <35.552357, 31.954180, 44.025871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456303, 31.570110, 44.083008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282791, 0.209957, 0.935921,
		-0.928635, 0.184357, -0.321946,
		-0.240138, -0.960172, 0.142839,
		35.384262, 31.282059, 44.125858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980801, 31.963085, 44.418877>,  <35.552357, 31.954180, 44.025871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980801, 31.963085, 44.418877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077232, 31.579857, 44.480816>,  <35.135094, 31.349920, 44.517979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077232, 31.579857, 44.480816>,  <34.980801, 31.963085, 44.418877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077232, 31.579857, 44.480816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234770, 0.097242, 0.967175,
		-0.941681, -0.269521, -0.201483,
		0.241082, -0.958072, 0.154846,
		35.149555, 31.292435, 44.527271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605064, 31.809359, 44.857986>,  <34.980801, 31.963085, 44.418877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605064, 31.809359, 44.857986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860130, 31.503319, 44.893780>,  <35.013168, 31.319695, 44.915257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860130, 31.503319, 44.893780>,  <34.605064, 31.809359, 44.857986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860130, 31.503319, 44.893780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190296, -0.043892, 0.980745,
		-0.746439, -0.642416, -0.173584,
		0.637665, -0.765098, 0.089486,
		35.051430, 31.273788, 44.920624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402466, 31.241720, 45.314568>,  <34.605064, 31.809359, 44.857986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402466, 31.241720, 45.314568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799854, 31.197369, 45.325291>,  <35.038288, 31.170757, 45.331726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799854, 31.197369, 45.325291>,  <34.402466, 31.241720, 45.314568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799854, 31.197369, 45.325291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033465, -0.058600, 0.997720,
		-0.109059, -0.992104, -0.061928,
		0.993472, -0.110883, 0.026809,
		35.097897, 31.164106, 45.333332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571884, 30.690691, 45.835140>,  <34.402466, 31.241720, 45.314568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571884, 30.690691, 45.835140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886635, 30.934116, 45.794193>,  <35.075485, 31.080172, 45.769627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886635, 30.934116, 45.794193>,  <34.571884, 30.690691, 45.835140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886635, 30.934116, 45.794193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078797, 0.065442, 0.994740,
		0.612062, -0.790802, 0.003542,
		0.786874, 0.608563, -0.102368,
		35.122696, 31.116686, 45.763481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048801, 30.518270, 46.439129>,  <34.571884, 30.690691, 45.835140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048801, 30.518270, 46.439129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159359, 30.874653, 46.295013>,  <35.225693, 31.088482, 46.208546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159359, 30.874653, 46.295013>,  <35.048801, 30.518270, 46.439129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159359, 30.874653, 46.295013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165052, 0.325317, 0.931089,
		0.946766, -0.316812, -0.057138,
		0.276392, 0.890954, -0.360289,
		35.242275, 31.141939, 46.186928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598160, 30.768845, 46.889221>,  <35.048801, 30.518270, 46.439129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598160, 30.768845, 46.889221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507317, 31.108820, 46.699055>,  <35.452812, 31.312805, 46.584953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507317, 31.108820, 46.699055>,  <35.598160, 30.768845, 46.889221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507317, 31.108820, 46.699055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434729, 0.525316, 0.731474,
		0.871455, -0.040557, -0.488796,
		-0.227106, 0.849940, -0.475420,
		35.439186, 31.363802, 46.556427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206982, 31.247070, 46.843067>,  <35.598160, 30.768845, 46.889221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206982, 31.247070, 46.843067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878765, 31.475325, 46.829929>,  <35.681835, 31.612278, 46.822044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878765, 31.475325, 46.829929>,  <36.206982, 31.247070, 46.843067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878765, 31.475325, 46.829929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371883, 0.576624, 0.727467,
		0.434061, 0.584703, -0.685356,
		-0.820545, 0.570637, -0.032849,
		35.632603, 31.646517, 46.820076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475273, 31.835815, 46.782211>,  <36.206982, 31.247070, 46.843067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475273, 31.835815, 46.782211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101765, 31.890974, 46.914303>,  <35.877659, 31.924068, 46.993557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101765, 31.890974, 46.914303>,  <36.475273, 31.835815, 46.782211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101765, 31.890974, 46.914303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346653, 0.577720, 0.738966,
		-0.088882, 0.804503, -0.587261,
		-0.933773, 0.137895, 0.330233,
		35.821632, 31.932343, 47.013374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422215, 32.605762, 46.840118>,  <36.475273, 31.835815, 46.782211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422215, 32.605762, 46.840118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152306, 32.423256, 47.072155>,  <35.990360, 32.313751, 47.211376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152306, 32.423256, 47.072155>,  <36.422215, 32.605762, 46.840118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152306, 32.423256, 47.072155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358227, 0.484721, 0.797947,
		-0.645258, 0.746236, -0.163629,
		-0.674771, -0.456265, 0.580092,
		35.949875, 32.286377, 47.246181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927151, 33.133263, 47.111950>,  <36.422215, 32.605762, 46.840118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927151, 33.133263, 47.111950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897049, 32.828941, 47.369793>,  <35.878986, 32.646351, 47.524498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897049, 32.828941, 47.369793>,  <35.927151, 33.133263, 47.111950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897049, 32.828941, 47.369793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098982, 0.637550, 0.764024,
		-0.992239, 0.121304, 0.027324,
		-0.075259, -0.760799, 0.644609,
		35.874470, 32.600700, 47.563175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586296, 33.441898, 47.613728>,  <35.927151, 33.133263, 47.111950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586296, 33.441898, 47.613728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767380, 33.125561, 47.778461>,  <35.876030, 32.935757, 47.877304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767380, 33.125561, 47.778461>,  <35.586296, 33.441898, 47.613728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767380, 33.125561, 47.778461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213341, 0.544537, 0.811150,
		-0.865758, -0.279356, 0.415239,
		0.452713, -0.790847, 0.411840,
		35.903194, 32.888306, 47.902012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309177, 33.497768, 48.258049>,  <35.586296, 33.441898, 47.613728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309177, 33.497768, 48.258049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642056, 33.279976, 48.299988>,  <35.841782, 33.149300, 48.325153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642056, 33.279976, 48.299988>,  <35.309177, 33.497768, 48.258049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642056, 33.279976, 48.299988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228763, 0.509400, 0.829566,
		-0.505091, -0.666376, 0.548477,
		0.832197, -0.544477, 0.104851,
		35.891716, 33.116634, 48.331444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356495, 33.203003, 48.947029>,  <35.309177, 33.497768, 48.258049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356495, 33.203003, 48.947029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730576, 33.212437, 48.805695>,  <35.955025, 33.218098, 48.720894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730576, 33.212437, 48.805695>,  <35.356495, 33.203003, 48.947029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730576, 33.212437, 48.805695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334842, 0.265846, 0.903995,
		0.115250, -0.963727, 0.240723,
		0.935200, 0.023581, -0.353335,
		36.011135, 33.219513, 48.699696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808491, 32.972523, 49.442341>,  <35.356495, 33.203003, 48.947029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808491, 32.972523, 49.442341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104828, 33.145416, 49.236691>,  <36.282631, 33.249153, 49.113300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104828, 33.145416, 49.236691>,  <35.808491, 32.972523, 49.442341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104828, 33.145416, 49.236691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438379, 0.268784, 0.857659,
		0.508899, -0.860773, 0.009644,
		0.740841, 0.432234, -0.514129,
		36.327080, 33.275085, 49.082451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457722, 32.741375, 49.581345>,  <35.808491, 32.972523, 49.442341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457722, 32.741375, 49.581345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555527, 33.107445, 49.453182>,  <36.614212, 33.327087, 49.376286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555527, 33.107445, 49.453182>,  <36.457722, 32.741375, 49.581345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555527, 33.107445, 49.453182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327620, 0.233029, 0.915622,
		0.912621, -0.328855, -0.242852,
		0.244515, 0.915179, -0.320406,
		36.628880, 33.382000, 49.357059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158173, 32.970188, 49.863731>,  <36.457722, 32.741375, 49.581345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158173, 32.970188, 49.863731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974663, 33.317307, 49.787365>,  <36.864555, 33.525578, 49.741543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974663, 33.317307, 49.787365>,  <37.158173, 32.970188, 49.863731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974663, 33.317307, 49.787365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272386, 0.341872, 0.899405,
		0.845773, 0.360620, -0.393219,
		-0.458774, 0.867800, -0.190918,
		36.837032, 33.577648, 49.730091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651192, 33.513550, 49.982079>,  <37.158173, 32.970188, 49.863731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651192, 33.513550, 49.982079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300873, 33.704247, 50.012272>,  <37.090683, 33.818665, 50.030388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300873, 33.704247, 50.012272>,  <37.651192, 33.513550, 49.982079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300873, 33.704247, 50.012272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252237, 0.318705, 0.913676,
		0.411533, 0.819232, -0.399373,
		-0.875795, 0.476745, 0.075483,
		37.038136, 33.847271, 50.034916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799393, 34.247650, 50.079639>,  <37.651192, 33.513550, 49.982079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799393, 34.247650, 50.079639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432110, 34.175636, 50.220768>,  <37.211742, 34.132427, 50.305447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432110, 34.175636, 50.220768>,  <37.799393, 34.247650, 50.079639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432110, 34.175636, 50.220768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268247, 0.372769, 0.888306,
		-0.291449, 0.910291, -0.293985,
		-0.918205, -0.180035, 0.352826,
		37.156647, 34.121624, 50.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719913, 34.836899, 50.409885>,  <37.799393, 34.247650, 50.079639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719913, 34.836899, 50.409885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457943, 34.567806, 50.547585>,  <37.300762, 34.406353, 50.630203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457943, 34.567806, 50.547585>,  <37.719913, 34.836899, 50.409885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457943, 34.567806, 50.547585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147850, 0.332674, 0.931380,
		-0.741089, 0.660882, -0.118413,
		-0.654925, -0.672728, 0.344252,
		37.261467, 34.365990, 50.650860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952293, 35.560894, 50.769615>,  <37.719913, 34.836899, 50.409885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952293, 35.560894, 50.769615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084698, 35.601383, 51.144886>,  <38.164143, 35.625675, 51.370049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084698, 35.601383, 51.144886>,  <37.952293, 35.560894, 50.769615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084698, 35.601383, 51.144886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942516, -0.012729, 0.333919,
		0.045747, -0.994781, 0.091206,
		0.331015, 0.101239, 0.938179,
		38.184002, 35.631748, 51.426342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270760, 35.631271, 50.125797>,  <37.952293, 35.560894, 50.769615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270760, 35.631271, 50.125797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665810, 35.610840, 50.066479>,  <38.902840, 35.598579, 50.030888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665810, 35.610840, 50.066479>,  <38.270760, 35.631271, 50.125797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665810, 35.610840, 50.066479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151685, -0.551665, -0.820157,
		-0.039914, 0.832500, -0.552585,
		0.987623, -0.051083, -0.148297,
		38.962097, 35.595516, 50.021988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394573, 35.842037, 49.436024>,  <38.270760, 35.631271, 50.125797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394573, 35.842037, 49.436024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720917, 35.642567, 49.553116>,  <38.916721, 35.522884, 49.623371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720917, 35.642567, 49.553116>,  <38.394573, 35.842037, 49.436024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720917, 35.642567, 49.553116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084308, -0.398249, -0.913395,
		0.572071, 0.769882, -0.282873,
		0.815860, -0.498678, 0.292734,
		38.965675, 35.492962, 49.640938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960686, 36.020271, 48.909290>,  <38.394573, 35.842037, 49.436024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960686, 36.020271, 48.909290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069160, 35.682915, 49.094826>,  <39.134247, 35.480499, 49.206146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069160, 35.682915, 49.094826>,  <38.960686, 36.020271, 48.909290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069160, 35.682915, 49.094826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268523, -0.396474, -0.877897,
		0.924311, 0.362628, 0.118950,
		0.271190, -0.843391, 0.463840,
		39.150517, 35.429897, 49.233978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552670, 35.696930, 48.501751>,  <38.960686, 36.020271, 48.909290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552670, 35.696930, 48.501751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415207, 35.368465, 48.684002>,  <39.332729, 35.171387, 48.793350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415207, 35.368465, 48.684002>,  <39.552670, 35.696930, 48.501751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415207, 35.368465, 48.684002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147312, -0.526304, -0.837438,
		0.927469, -0.220673, 0.301836,
		-0.343658, -0.821162, 0.455623,
		39.312111, 35.122116, 48.820690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961872, 35.080631, 48.271969>,  <39.552670, 35.696930, 48.501751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961872, 35.080631, 48.271969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643631, 34.906441, 48.440434>,  <39.452686, 34.801926, 48.541512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643631, 34.906441, 48.440434>,  <39.961872, 35.080631, 48.271969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643631, 34.906441, 48.440434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012975, -0.682784, -0.730505,
		0.605677, -0.586658, 0.537577,
		-0.795605, -0.435475, 0.421158,
		39.404949, 34.775799, 48.566780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071411, 34.394627, 48.231743>,  <39.961872, 35.080631, 48.271969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071411, 34.394627, 48.231743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676266, 34.395035, 48.293877>,  <39.439178, 34.395279, 48.331158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676266, 34.395035, 48.293877>,  <40.071411, 34.394627, 48.231743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676266, 34.395035, 48.293877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103725, -0.748722, -0.654718,
		0.115639, -0.662883, 0.739739,
		-0.987861, 0.001019, 0.155339,
		39.379906, 34.395340, 48.340477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901997, 33.678387, 48.290501>,  <40.071411, 34.394627, 48.231743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901997, 33.678387, 48.290501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570213, 33.882153, 48.198853>,  <39.371143, 34.004414, 48.143864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570213, 33.882153, 48.198853>,  <39.901997, 33.678387, 48.290501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570213, 33.882153, 48.198853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244365, -0.699794, -0.671248,
		-0.502282, -0.500783, 0.704933,
		-0.829457, 0.509417, -0.229119,
		39.321377, 34.034977, 48.130116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480717, 33.198608, 48.174953>,  <39.901997, 33.678387, 48.290501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480717, 33.198608, 48.174953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310684, 33.508579, 47.987854>,  <39.208664, 33.694561, 47.875595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310684, 33.508579, 47.987854>,  <39.480717, 33.198608, 48.174953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310684, 33.508579, 47.987854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179404, -0.578642, -0.795606,
		-0.887199, -0.254279, 0.384993,
		-0.425079, 0.774930, -0.467752,
		39.183159, 33.741058, 47.847530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802719, 32.969757, 47.854435>,  <39.480717, 33.198608, 48.174953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802719, 32.969757, 47.854435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901592, 33.310162, 47.669098>,  <38.960915, 33.514404, 47.557896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901592, 33.310162, 47.669098>,  <38.802719, 32.969757, 47.854435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901592, 33.310162, 47.669098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211455, -0.419281, -0.882887,
		-0.945615, 0.316208, 0.076311,
		0.247180, 0.851008, -0.463343,
		38.975746, 33.565464, 47.530094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185268, 33.205795, 47.421654>,  <38.802719, 32.969757, 47.854435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185268, 33.205795, 47.421654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513599, 33.381210, 47.275265>,  <38.710598, 33.486458, 47.187431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513599, 33.381210, 47.275265>,  <38.185268, 33.205795, 47.421654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513599, 33.381210, 47.275265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261349, -0.281374, -0.923323,
		-0.507884, 0.853532, -0.116348,
		0.820823, 0.438533, -0.365975,
		38.759846, 33.512772, 47.165474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945316, 33.621784, 46.849751>,  <38.185268, 33.205795, 47.421654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945316, 33.621784, 46.849751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334053, 33.563370, 46.775784>,  <38.567295, 33.528320, 46.731403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334053, 33.563370, 46.775784>,  <37.945316, 33.621784, 46.849751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334053, 33.563370, 46.775784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194565, -0.054693, -0.979364,
		0.132913, 0.987765, -0.081568,
		0.971843, -0.146041, -0.184915,
		38.625607, 33.519558, 46.720310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116249, 34.129349, 46.417484>,  <37.945316, 33.621784, 46.849751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116249, 34.129349, 46.417484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396027, 33.852615, 46.345764>,  <38.563892, 33.686577, 46.302734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396027, 33.852615, 46.345764>,  <38.116249, 34.129349, 46.417484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396027, 33.852615, 46.345764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153915, 0.099172, -0.983095,
		0.697920, 0.715213, -0.037119,
		0.699441, -0.691835, -0.179296,
		38.605858, 33.645065, 46.291977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446999, 34.364204, 45.881989>,  <38.116249, 34.129349, 46.417484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446999, 34.364204, 45.881989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526955, 33.972401, 45.891861>,  <38.574928, 33.737320, 45.897785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526955, 33.972401, 45.891861>,  <38.446999, 34.364204, 45.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526955, 33.972401, 45.891861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067966, -0.038990, -0.996925,
		0.977457, 0.197602, -0.074367,
		0.199894, -0.979507, 0.024681,
		38.586922, 33.678547, 45.899265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865002, 34.324394, 45.333935>,  <38.446999, 34.364204, 45.881989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865002, 34.324394, 45.333935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750603, 33.945129, 45.389343>,  <38.681965, 33.717571, 45.422588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750603, 33.945129, 45.389343>,  <38.865002, 34.324394, 45.333935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750603, 33.945129, 45.389343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134232, -0.103494, -0.985531,
		0.948782, -0.300453, -0.097675,
		-0.285997, -0.948165, 0.138523,
		38.664803, 33.660679, 45.430901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238407, 33.901695, 44.776379>,  <38.865002, 34.324394, 45.333935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238407, 33.901695, 44.776379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917065, 33.700340, 44.903641>,  <38.724258, 33.579529, 44.980000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917065, 33.700340, 44.903641>,  <39.238407, 33.901695, 44.776379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917065, 33.700340, 44.903641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265064, -0.176158, -0.948003,
		0.533257, -0.845915, 0.008088,
		-0.803354, -0.503385, 0.318159,
		38.676060, 33.549324, 44.999088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276237, 33.303890, 44.378326>,  <39.238407, 33.901695, 44.776379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276237, 33.303890, 44.378326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903011, 33.311512, 44.522007>,  <38.679077, 33.316086, 44.608215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903011, 33.311512, 44.522007>,  <39.276237, 33.303890, 44.378326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903011, 33.311512, 44.522007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351022, -0.266346, -0.897688,
		0.078566, -0.963689, 0.255207,
		-0.933065, 0.019055, 0.359202,
		38.623093, 33.317230, 44.629768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922569, 32.606220, 44.241528>,  <39.276237, 33.303890, 44.378326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922569, 32.606220, 44.241528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634647, 32.868900, 44.331528>,  <38.461895, 33.026508, 44.385529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634647, 32.868900, 44.331528>,  <38.922569, 32.606220, 44.241528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634647, 32.868900, 44.331528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465408, -0.216053, -0.858322,
		-0.515046, -0.722543, 0.461150,
		-0.719807, 0.656698, 0.225000,
		38.418705, 33.065910, 44.399029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249146, 32.281494, 44.117008>,  <38.922569, 32.606220, 44.241528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249146, 32.281494, 44.117008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119778, 32.658924, 44.088543>,  <38.042156, 32.885384, 44.071465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119778, 32.658924, 44.088543>,  <38.249146, 32.281494, 44.117008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119778, 32.658924, 44.088543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481185, -0.228753, -0.846246,
		-0.814776, -0.239449, 0.528018,
		-0.323419, 0.943576, -0.071163,
		38.022751, 32.941998, 44.067192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568695, 32.151711, 43.936768>,  <38.249146, 32.281494, 44.117008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568695, 32.151711, 43.936768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636868, 32.530785, 43.828804>,  <37.677769, 32.758228, 43.764027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636868, 32.530785, 43.828804>,  <37.568695, 32.151711, 43.936768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636868, 32.530785, 43.828804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414756, -0.179480, -0.892056,
		-0.893830, 0.263979, 0.362469,
		0.170428, 0.947683, -0.269911,
		37.687996, 32.815090, 43.747829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866169, 32.425919, 43.866119>,  <37.568695, 32.151711, 43.936768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866169, 32.425919, 43.866119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140018, 32.645748, 43.674595>,  <37.304329, 32.777645, 43.559681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140018, 32.645748, 43.674595>,  <36.866169, 32.425919, 43.866119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140018, 32.645748, 43.674595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321347, -0.362036, -0.875023,
		-0.654239, 0.752924, -0.071253,
		0.684622, 0.549578, -0.478808,
		37.345406, 32.810623, 43.530952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631546, 32.387676, 43.138027>,  <36.866169, 32.425919, 43.866119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631546, 32.387676, 43.138027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981865, 32.566502, 43.065231>,  <37.192055, 32.673798, 43.021553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981865, 32.566502, 43.065231>,  <36.631546, 32.387676, 43.138027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981865, 32.566502, 43.065231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146722, -0.112625, -0.982745,
		-0.459844, 0.887385, -0.033042,
		0.875794, 0.447062, -0.181989,
		37.244602, 32.700619, 43.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499432, 32.917255, 42.629532>,  <36.631546, 32.387676, 43.138027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499432, 32.917255, 42.629532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889496, 32.829739, 42.615738>,  <37.123535, 32.777229, 42.607464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889496, 32.829739, 42.615738>,  <36.499432, 32.917255, 42.629532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889496, 32.829739, 42.615738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047354, -0.053866, -0.997425,
		0.216367, 0.974284, -0.062888,
		0.975163, -0.218788, -0.034481,
		37.182045, 32.764103, 42.605392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752216, 33.228653, 41.926960>,  <36.499432, 32.917255, 42.629532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752216, 33.228653, 41.926960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020199, 32.962536, 42.058750>,  <37.180988, 32.802868, 42.137825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020199, 32.962536, 42.058750>,  <36.752216, 33.228653, 41.926960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020199, 32.962536, 42.058750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161889, -0.302195, -0.939399,
		0.724537, 0.682692, -0.094753,
		0.669954, -0.665290, 0.329472,
		37.221184, 32.762947, 42.157593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247971, 33.317188, 41.373604>,  <36.752216, 33.228653, 41.926960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247971, 33.317188, 41.373604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336914, 32.979275, 41.568291>,  <37.390282, 32.776527, 41.685104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336914, 32.979275, 41.568291>,  <37.247971, 33.317188, 41.373604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336914, 32.979275, 41.568291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182100, -0.454447, -0.871962,
		0.957807, 0.282524, 0.052782,
		0.222363, -0.844783, 0.486720,
		37.403622, 32.725842, 41.714306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923733, 33.044807, 41.114727>,  <37.247971, 33.317188, 41.373604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923733, 33.044807, 41.114727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729607, 32.729530, 41.266102>,  <37.613132, 32.540363, 41.356926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729607, 32.729530, 41.266102>,  <37.923733, 33.044807, 41.114727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729607, 32.729530, 41.266102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212499, -0.526180, -0.823395,
		0.848125, -0.319185, 0.422852,
		-0.485312, -0.788198, 0.378440,
		37.584015, 32.493073, 41.379635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431419, 32.533558, 41.098083>,  <37.923733, 33.044807, 41.114727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431419, 32.533558, 41.098083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064617, 32.374020, 41.096046>,  <37.844536, 32.278297, 41.094822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064617, 32.374020, 41.096046>,  <38.431419, 32.533558, 41.098083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064617, 32.374020, 41.096046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211892, -0.476259, -0.853393,
		0.337948, -0.783643, 0.521244,
		-0.917002, -0.398850, -0.005097,
		37.789516, 32.254364, 41.094517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457558, 31.766455, 40.959167>,  <38.431419, 32.533558, 41.098083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457558, 31.766455, 40.959167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082729, 31.859135, 40.854702>,  <37.857830, 31.914743, 40.792023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082729, 31.859135, 40.854702>,  <38.457558, 31.766455, 40.959167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082729, 31.859135, 40.854702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205657, -0.238149, -0.949205,
		-0.282127, -0.943186, 0.175513,
		-0.937075, 0.231700, -0.261161,
		37.801605, 31.928644, 40.776352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332108, 31.290434, 40.451588>,  <38.457558, 31.766455, 40.959167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332108, 31.290434, 40.451588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051331, 31.571547, 40.405334>,  <37.882862, 31.740213, 40.377583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051331, 31.571547, 40.405334>,  <38.332108, 31.290434, 40.451588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051331, 31.571547, 40.405334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220661, 0.060226, -0.973489,
		-0.677185, -0.708853, -0.197352,
		-0.701946, 0.702781, -0.115632,
		37.840748, 31.782381, 40.370644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001343, 31.105177, 39.783215>,  <38.332108, 31.290434, 40.451588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001343, 31.105177, 39.783215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909386, 31.491882, 39.827972>,  <37.854210, 31.723906, 39.854828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909386, 31.491882, 39.827972>,  <38.001343, 31.105177, 39.783215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909386, 31.491882, 39.827972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190960, 0.157552, -0.968871,
		-0.954297, -0.201369, -0.220833,
		-0.229894, 0.966762, 0.111898,
		37.840416, 31.781910, 39.861542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399242, 31.294584, 39.186619>,  <38.001343, 31.105177, 39.783215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399242, 31.294584, 39.186619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593761, 31.620676, 39.312424>,  <37.710472, 31.816330, 39.387905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593761, 31.620676, 39.312424>,  <37.399242, 31.294584, 39.186619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593761, 31.620676, 39.312424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235993, 0.224023, -0.945580,
		-0.841320, 0.534057, -0.083446,
		0.486299, 0.815228, 0.314509,
		37.739651, 31.865244, 39.406776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012043, 31.855202, 38.881626>,  <37.399242, 31.294584, 39.186619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012043, 31.855202, 38.881626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393822, 31.955072, 38.946987>,  <37.622887, 32.014996, 38.986202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393822, 31.955072, 38.946987>,  <37.012043, 31.855202, 38.881626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393822, 31.955072, 38.946987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131536, 0.139480, -0.981450,
		-0.267837, 0.958231, 0.100284,
		0.954443, 0.249677, 0.163400,
		37.680153, 32.029976, 38.996006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104412, 32.258270, 38.370411>,  <37.012043, 31.855202, 38.881626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104412, 32.258270, 38.370411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485729, 32.239807, 38.489811>,  <37.714520, 32.228729, 38.561451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485729, 32.239807, 38.489811>,  <37.104412, 32.258270, 38.370411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485729, 32.239807, 38.489811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301678, 0.096599, -0.948503,
		0.014947, 0.994252, 0.106013,
		0.953293, -0.046159, 0.298501,
		37.771717, 32.225960, 38.579361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595478, 32.995243, 38.211628>,  <37.104412, 32.258270, 38.370411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595478, 32.995243, 38.211628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835934, 32.675903, 38.225838>,  <37.980209, 32.484299, 38.234364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835934, 32.675903, 38.225838>,  <37.595478, 32.995243, 38.211628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835934, 32.675903, 38.225838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362326, 0.232666, -0.902544,
		0.712284, 0.555427, 0.429129,
		0.601142, -0.798352, 0.035521,
		38.016277, 32.436398, 38.236492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083508, 33.171093, 37.750767>,  <37.595478, 32.995243, 38.211628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083508, 33.171093, 37.750767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199623, 32.796463, 37.829308>,  <38.269291, 32.571686, 37.876434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199623, 32.796463, 37.829308>,  <38.083508, 33.171093, 37.750767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199623, 32.796463, 37.829308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548697, -0.005204, -0.836005,
		0.784006, 0.350420, 0.512387,
		0.290286, -0.936578, 0.196355,
		38.286709, 32.515488, 37.888214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847065, 33.121643, 37.763706>,  <38.083508, 33.171093, 37.750767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847065, 33.121643, 37.763706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742657, 32.740566, 37.701416>,  <38.680012, 32.511921, 37.664043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742657, 32.740566, 37.701416>,  <38.847065, 33.121643, 37.763706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742657, 32.740566, 37.701416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714665, -0.082263, -0.694613,
		0.648940, -0.292599, 0.702326,
		-0.261019, -0.952690, -0.155727,
		38.664352, 32.454758, 37.654697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537270, 32.715179, 37.828407>,  <38.847065, 33.121643, 37.763706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537270, 32.715179, 37.828407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288250, 32.462063, 37.644230>,  <39.138840, 32.310192, 37.533722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288250, 32.462063, 37.644230>,  <39.537270, 32.715179, 37.828407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288250, 32.462063, 37.644230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714686, -0.220006, -0.663945,
		0.318840, -0.742409, 0.589212,
		-0.622548, -0.632793, -0.460442,
		39.101486, 32.272224, 37.506096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846245, 32.105213, 37.725487>,  <39.537270, 32.715179, 37.828407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846245, 32.105213, 37.725487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556332, 32.123203, 37.450485>,  <39.382381, 32.133995, 37.285484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556332, 32.123203, 37.450485>,  <39.846245, 32.105213, 37.725487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556332, 32.123203, 37.450485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667085, -0.203714, -0.716588,
		-0.172279, -0.977997, 0.117651,
		-0.724788, 0.044970, -0.687503,
		39.338894, 32.136696, 37.244236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025501, 31.621231, 37.166969>,  <39.846245, 32.105213, 37.725487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025501, 31.621231, 37.166969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748741, 31.844631, 36.983952>,  <39.582684, 31.978672, 36.874142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748741, 31.844631, 36.983952>,  <40.025501, 31.621231, 37.166969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748741, 31.844631, 36.983952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606781, 0.106391, -0.787717,
		-0.391263, -0.822653, -0.412500,
		-0.691904, 0.558501, -0.457543,
		39.541168, 32.012180, 36.846687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921783, 31.293673, 36.472469>,  <40.025501, 31.621231, 37.166969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921783, 31.293673, 36.472469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847015, 31.685671, 36.499794>,  <39.802155, 31.920870, 36.516190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847015, 31.685671, 36.499794>,  <39.921783, 31.293673, 36.472469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847015, 31.685671, 36.499794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641494, 0.174428, -0.747034,
		-0.744007, -0.095815, -0.661267,
		-0.186921, 0.979997, 0.068311,
		39.790939, 31.979670, 36.520287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079716, 31.450567, 35.733089>,  <39.921783, 31.293673, 36.472469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079716, 31.450567, 35.733089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102043, 31.768656, 35.974586>,  <40.115440, 31.959509, 36.119484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102043, 31.768656, 35.974586>,  <40.079716, 31.450567, 35.733089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102043, 31.768656, 35.974586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582526, 0.465165, -0.666547,
		-0.810893, 0.388906, -0.437269,
		0.055822, 0.795219, 0.603747,
		40.118790, 32.007221, 36.155712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883011, 32.008904, 35.408978>,  <40.079716, 31.450567, 35.733089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883011, 32.008904, 35.408978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147770, 32.121235, 35.686981>,  <40.306625, 32.188633, 35.853783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147770, 32.121235, 35.686981>,  <39.883011, 32.008904, 35.408978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147770, 32.121235, 35.686981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593899, 0.369241, -0.714804,
		-0.457362, 0.885887, 0.077615,
		0.661894, 0.280829, 0.695005,
		40.346336, 32.205482, 35.895481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069328, 32.750122, 35.384094>,  <39.883011, 32.008904, 35.408978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069328, 32.750122, 35.384094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420696, 32.574215, 35.458908>,  <40.631516, 32.468670, 35.503796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420696, 32.574215, 35.458908>,  <40.069328, 32.750122, 35.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420696, 32.574215, 35.458908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329118, 0.272943, -0.903982,
		0.346492, 0.855633, 0.384494,
		0.878421, -0.439767, 0.187032,
		40.684223, 32.442284, 35.515018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427536, 32.813042, 34.768127>,  <40.069328, 32.750122, 35.384094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427536, 32.813042, 34.768127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680347, 32.587788, 34.981079>,  <40.832035, 32.452637, 35.108849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680347, 32.587788, 34.981079>,  <40.427536, 32.813042, 34.768127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680347, 32.587788, 34.981079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568292, -0.130258, -0.812451,
		0.526864, 0.816036, 0.237697,
		0.632027, -0.563133, 0.532375,
		40.869957, 32.418846, 35.140793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217503, 33.000935, 34.676155>,  <40.427536, 32.813042, 34.768127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217503, 33.000935, 34.676155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189953, 32.608868, 34.750481>,  <41.173424, 32.373627, 34.795074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189953, 32.608868, 34.750481>,  <41.217503, 33.000935, 34.676155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189953, 32.608868, 34.750481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346696, -0.198160, -0.916807,
		0.935446, 0.001277, 0.353468,
		-0.068873, -0.980169, 0.185810,
		41.169292, 32.314816, 34.806225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943363, 32.685406, 34.477062>,  <41.217503, 33.000935, 34.676155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943363, 32.685406, 34.477062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621136, 32.464329, 34.391651>,  <41.427799, 32.331684, 34.340405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.621136, 32.464329, 34.391651>,  <41.943363, 32.685406, 34.477062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621136, 32.464329, 34.391651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361225, -0.172455, -0.916393,
		0.469661, -0.815346, 0.338570,
		-0.805565, -0.552694, -0.213528,
		41.379467, 32.298519, 34.327591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311089, 33.315594, 34.712967>,  <41.943363, 32.685406, 34.477062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311089, 33.315594, 34.712967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548161, 33.081856, 34.491238>,  <42.690403, 32.941612, 34.358200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548161, 33.081856, 34.491238>,  <42.311089, 33.315594, 34.712967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548161, 33.081856, 34.491238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677822, -0.009892, 0.735160,
		-0.435068, -0.811448, 0.390217,
		0.592684, -0.584342, -0.554320,
		42.725967, 32.906555, 34.324940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953583, 33.028072, 35.088413>,  <42.311089, 33.315594, 34.712967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953583, 33.028072, 35.088413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337578, 33.063007, 35.194843>,  <43.567974, 33.083969, 35.258701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337578, 33.063007, 35.194843>,  <42.953583, 33.028072, 35.088413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337578, 33.063007, 35.194843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205510, -0.425721, 0.881208,
		0.190235, -0.900630, -0.390739,
		0.959988, 0.087336, 0.266075,
		43.625576, 33.089207, 35.274666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264961, 32.326653, 35.187000>,  <42.953583, 33.028072, 35.088413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264961, 32.326653, 35.187000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480198, 32.598900, 35.385883>,  <43.609341, 32.762249, 35.505215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480198, 32.598900, 35.385883>,  <43.264961, 32.326653, 35.187000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480198, 32.598900, 35.385883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379006, -0.331518, 0.863974,
		0.752872, -0.653339, 0.079574,
		0.538087, 0.680621, 0.497210,
		43.641624, 32.803085, 35.535046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586979, 31.957216, 35.594471>,  <43.264961, 32.326653, 35.187000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586979, 31.957216, 35.594471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568378, 32.324371, 35.752113>,  <43.557217, 32.544666, 35.846699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568378, 32.324371, 35.752113>,  <43.586979, 31.957216, 35.594471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568378, 32.324371, 35.752113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296386, -0.389440, 0.872062,
		0.953935, -0.076253, 0.290160,
		-0.046503, 0.917890, 0.394101,
		43.554428, 32.599739, 35.870342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915226, 31.827066, 36.207378>,  <43.586979, 31.957216, 35.594471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915226, 31.827066, 36.207378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702488, 32.163643, 36.245579>,  <43.574844, 32.365589, 36.268497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702488, 32.163643, 36.245579>,  <43.915226, 31.827066, 36.207378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702488, 32.163643, 36.245579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315224, -0.301375, 0.899893,
		0.785988, 0.448498, 0.425526,
		-0.531843, 0.841441, 0.095500,
		43.542934, 32.416077, 36.274227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112160, 32.248241, 36.827644>,  <43.915226, 31.827066, 36.207378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112160, 32.248241, 36.827644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737461, 32.366272, 36.752346>,  <43.512642, 32.437092, 36.707165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737461, 32.366272, 36.752346>,  <44.112160, 32.248241, 36.827644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737461, 32.366272, 36.752346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259903, -0.226175, 0.938773,
		0.234436, 0.928317, 0.288561,
		-0.936745, 0.295080, -0.188249,
		43.456436, 32.454796, 36.695873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899677, 32.425827, 37.488972>,  <44.112160, 32.248241, 36.827644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899677, 32.425827, 37.488972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550056, 32.459766, 37.297630>,  <43.340282, 32.480129, 37.182823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550056, 32.459766, 37.297630>,  <43.899677, 32.425827, 37.488972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550056, 32.459766, 37.297630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482446, -0.267501, 0.834080,
		-0.057192, 0.959815, 0.274745,
		-0.874057, 0.084847, -0.478358,
		43.287838, 32.485222, 37.154121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450569, 32.853577, 37.894779>,  <43.899677, 32.425827, 37.488972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450569, 32.853577, 37.894779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236366, 32.597904, 37.673988>,  <43.107845, 32.444500, 37.541515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236366, 32.597904, 37.673988>,  <43.450569, 32.853577, 37.894779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236366, 32.597904, 37.673988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439469, -0.347223, 0.828434,
		-0.721176, 0.686213, -0.094957,
		-0.535511, -0.639177, -0.551978,
		43.075714, 32.406151, 37.508396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735672, 33.000805, 38.044037>,  <43.450569, 32.853577, 37.894779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735672, 33.000805, 38.044037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746525, 32.625797, 37.905293>,  <42.753036, 32.400791, 37.822044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746525, 32.625797, 37.905293>,  <42.735672, 33.000805, 38.044037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746525, 32.625797, 37.905293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578739, -0.297655, 0.759252,
		-0.815062, 0.180141, -0.550658,
		0.027134, -0.937524, -0.346862,
		42.754665, 32.344540, 37.801235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034245, 32.748177, 38.175983>,  <42.735672, 33.000805, 38.044037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034245, 32.748177, 38.175983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268105, 32.425060, 38.145897>,  <42.408421, 32.231190, 38.127846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268105, 32.425060, 38.145897>,  <42.034245, 32.748177, 38.175983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268105, 32.425060, 38.145897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477918, -0.417845, 0.772658,
		-0.655576, -0.415787, -0.630350,
		0.584650, -0.807792, -0.075217,
		42.443501, 32.182724, 38.123333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586018, 32.256592, 38.401161>,  <42.034245, 32.748177, 38.175983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586018, 32.256592, 38.401161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936649, 32.064510, 38.413906>,  <42.147026, 31.949261, 38.421555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.936649, 32.064510, 38.413906>,  <41.586018, 32.256592, 38.401161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936649, 32.064510, 38.413906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383426, -0.656830, 0.649275,
		-0.290857, -0.581357, -0.759886,
		0.876577, -0.480206, 0.031864,
		42.199623, 31.920448, 38.423466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474773, 31.543060, 38.480526>,  <41.586018, 32.256592, 38.401161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474773, 31.543060, 38.480526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849487, 31.552071, 38.620197>,  <42.074314, 31.557476, 38.704002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.849487, 31.552071, 38.620197>,  <41.474773, 31.543060, 38.480526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849487, 31.552071, 38.620197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272137, -0.580380, 0.767529,
		0.219947, -0.814034, -0.537560,
		0.936784, 0.022526, 0.349182,
		42.130524, 31.558828, 38.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634499, 30.847702, 38.792259>,  <41.474773, 31.543060, 38.480526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634499, 30.847702, 38.792259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919323, 31.088577, 38.936668>,  <42.090218, 31.233103, 39.023312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919323, 31.088577, 38.936668>,  <41.634499, 30.847702, 38.792259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919323, 31.088577, 38.936668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207789, -0.310416, 0.927613,
		0.670664, -0.735535, -0.095908,
		0.712063, 0.602188, 0.361021,
		42.132942, 31.269234, 39.044975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976902, 30.461109, 39.211590>,  <41.634499, 30.847702, 38.792259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976902, 30.461109, 39.211590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034256, 30.834639, 39.342686>,  <42.068668, 31.058756, 39.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034256, 30.834639, 39.342686>,  <41.976902, 30.461109, 39.211590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034256, 30.834639, 39.342686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091006, -0.317320, 0.943941,
		0.985474, -0.165170, 0.039485,
		0.143382, 0.933823, 0.327742,
		42.077271, 31.114786, 39.441010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495987, 30.399260, 39.855999>,  <41.976902, 30.461109, 39.211590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495987, 30.399260, 39.855999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295441, 30.745310, 39.861473>,  <42.175114, 30.952940, 39.864758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295441, 30.745310, 39.861473>,  <42.495987, 30.399260, 39.855999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295441, 30.745310, 39.861473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227496, -0.147065, 0.962610,
		0.834791, 0.479508, 0.270547,
		-0.501367, 0.865126, 0.013682,
		42.145031, 31.004848, 39.865578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686005, 30.669731, 40.567326>,  <42.495987, 30.399260, 39.855999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686005, 30.669731, 40.567326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354073, 30.864283, 40.457912>,  <42.154915, 30.981014, 40.392265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354073, 30.864283, 40.457912>,  <42.686005, 30.669731, 40.567326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354073, 30.864283, 40.457912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255700, 0.104261, 0.961117,
		0.495987, 0.867504, 0.037849,
		-0.829827, 0.486380, -0.273534,
		42.105125, 31.010197, 40.375851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612907, 31.117882, 41.089314>,  <42.686005, 30.669731, 40.567326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612907, 31.117882, 41.089314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257732, 31.123940, 40.905426>,  <42.044628, 31.127575, 40.795094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257732, 31.123940, 40.905426>,  <42.612907, 31.117882, 41.089314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257732, 31.123940, 40.905426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452083, 0.155489, 0.878319,
		0.084783, 0.987721, -0.131217,
		-0.887938, 0.015145, -0.459715,
		41.991352, 31.128483, 40.767513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271805, 31.657553, 41.361534>,  <42.612907, 31.117882, 41.089314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271805, 31.657553, 41.361534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958462, 31.472521, 41.195465>,  <41.770454, 31.361502, 41.095821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958462, 31.472521, 41.195465>,  <42.271805, 31.657553, 41.361534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958462, 31.472521, 41.195465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453401, -0.031646, 0.890745,
		-0.425178, 0.886014, -0.184944,
		-0.783359, -0.462578, -0.415174,
		41.723454, 31.333748, 41.070911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709469, 32.034958, 41.546082>,  <42.271805, 31.657553, 41.361534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709469, 32.034958, 41.546082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607773, 31.656389, 41.466431>,  <41.546757, 31.429249, 41.418640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607773, 31.656389, 41.466431>,  <41.709469, 32.034958, 41.546082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607773, 31.656389, 41.466431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457996, -0.063523, 0.886682,
		-0.851823, 0.316626, -0.417307,
		-0.254238, -0.946421, -0.199124,
		41.531502, 31.372463, 41.406693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000839, 31.950560, 41.651634>,  <41.709469, 32.034958, 41.546082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000839, 31.950560, 41.651634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133816, 31.573523, 41.664288>,  <41.213600, 31.347300, 41.671879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133816, 31.573523, 41.664288>,  <41.000839, 31.950560, 41.651634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133816, 31.573523, 41.664288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485212, -0.142173, 0.862761,
		-0.808735, -0.302166, -0.504622,
		0.332440, -0.942594, 0.031634,
		41.233547, 31.290745, 41.673779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455811, 31.678633, 41.900959>,  <41.000839, 31.950560, 41.651634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455811, 31.678633, 41.900959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733532, 31.394339, 41.946201>,  <40.900166, 31.223763, 41.973347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733532, 31.394339, 41.946201>,  <40.455811, 31.678633, 41.900959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733532, 31.394339, 41.946201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418057, -0.270372, 0.867253,
		-0.585807, -0.649424, -0.484849,
		0.694304, -0.710737, 0.113110,
		40.941822, 31.181118, 41.980133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073112, 30.954344, 41.873356>,  <40.455811, 31.678633, 41.900959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073112, 30.954344, 41.873356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407791, 31.016352, 42.083462>,  <40.608597, 31.053556, 42.209526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407791, 31.016352, 42.083462>,  <40.073112, 30.954344, 41.873356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407791, 31.016352, 42.083462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515148, -0.102801, 0.850914,
		0.185907, -0.982548, -0.006154,
		0.836696, 0.155020, 0.525269,
		40.658798, 31.062857, 42.241043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229927, 30.273539, 42.222847>,  <40.073112, 30.954344, 41.873356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229927, 30.273539, 42.222847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361370, 30.604832, 42.404415>,  <40.440235, 30.803608, 42.513355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361370, 30.604832, 42.404415>,  <40.229927, 30.273539, 42.222847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361370, 30.604832, 42.404415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625487, -0.169265, 0.761653,
		0.707660, -0.534210, 0.462426,
		0.328610, 0.828233, 0.453923,
		40.459953, 30.853302, 42.540592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473785, 30.130978, 42.955452>,  <40.229927, 30.273539, 42.222847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473785, 30.130978, 42.955452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331825, 30.503494, 42.922607>,  <40.246651, 30.727005, 42.902901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331825, 30.503494, 42.922607>,  <40.473785, 30.130978, 42.955452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331825, 30.503494, 42.922607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614011, -0.165949, 0.771655,
		0.705009, 0.324278, 0.630719,
		-0.354898, 0.931292, -0.082115,
		40.225357, 30.782883, 42.897972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670212, 30.114031, 43.728016>,  <40.473785, 30.130978, 42.955452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670212, 30.114031, 43.728016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845276, 30.426628, 43.905880>,  <40.950314, 30.614185, 44.012600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845276, 30.426628, 43.905880>,  <40.670212, 30.114031, 43.728016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845276, 30.426628, 43.905880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053720, -0.470933, 0.880532,
		0.897536, -0.409258, -0.164125,
		0.437657, 0.781492, 0.444665,
		40.976574, 30.661076, 44.039280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204964, 29.551420, 43.597652>,  <40.670212, 30.114031, 43.728016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204964, 29.551420, 43.597652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344017, 29.705704, 43.939499>,  <41.427448, 29.798275, 44.144608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344017, 29.705704, 43.939499>,  <41.204964, 29.551420, 43.597652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344017, 29.705704, 43.939499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903125, 0.107246, -0.415768,
		-0.252021, 0.916365, -0.311063,
		0.347636, 0.385711, 0.854621,
		41.448307, 29.821417, 44.195885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716866, 30.101358, 43.571960>,  <41.204964, 29.551420, 43.597652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716866, 30.101358, 43.571960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836842, 30.001446, 43.940231>,  <41.908825, 29.941498, 44.161194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836842, 30.001446, 43.940231>,  <41.716866, 30.101358, 43.571960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836842, 30.001446, 43.940231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943510, 0.220129, -0.247654,
		-0.140807, 0.942948, 0.301698,
		0.299938, -0.249784, 0.920677,
		41.926823, 29.926510, 44.216434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101505, 30.711716, 43.943512>,  <41.716866, 30.101358, 43.571960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101505, 30.711716, 43.943512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200077, 30.333336, 44.027847>,  <42.259220, 30.106308, 44.078449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200077, 30.333336, 44.027847>,  <42.101505, 30.711716, 43.943512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200077, 30.333336, 44.027847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916125, 0.156389, -0.369132,
		0.316207, 0.284121, 0.905146,
		0.246433, -0.945948, 0.210839,
		42.274006, 30.049551, 44.091099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690464, 30.641548, 44.320129>,  <42.101505, 30.711716, 43.943512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690464, 30.641548, 44.320129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663128, 30.288671, 44.133766>,  <42.646729, 30.076946, 44.021950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663128, 30.288671, 44.133766>,  <42.690464, 30.641548, 44.320129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663128, 30.288671, 44.133766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894434, 0.152697, -0.420324,
		0.441949, -0.445445, 0.778627,
		-0.068337, -0.882192, -0.465905,
		42.642628, 30.024014, 43.993996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286674, 30.315989, 44.339462>,  <42.690464, 30.641548, 44.320129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286674, 30.315989, 44.339462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109951, 30.129717, 44.032749>,  <43.003918, 30.017954, 43.848721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109951, 30.129717, 44.032749>,  <43.286674, 30.315989, 44.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109951, 30.129717, 44.032749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810340, 0.159570, -0.563815,
		0.384912, -0.870447, 0.306861,
		-0.441805, -0.465681, -0.766778,
		42.977409, 29.990013, 43.802715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749332, 30.451393, 43.790932>,  <43.286674, 30.315989, 44.339462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749332, 30.451393, 43.790932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474091, 30.255161, 43.577076>,  <43.308945, 30.137423, 43.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474091, 30.255161, 43.577076>,  <43.749332, 30.451393, 43.790932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474091, 30.255161, 43.577076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530208, 0.163081, -0.832036,
		0.495370, -0.856000, 0.147892,
		-0.688105, -0.490579, -0.534644,
		43.267658, 30.107988, 43.416683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223331, 30.105495, 43.435905>,  <43.749332, 30.451393, 43.790932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223331, 30.105495, 43.435905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878407, 30.156191, 43.239803>,  <43.671452, 30.186609, 43.122143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878407, 30.156191, 43.239803>,  <44.223331, 30.105495, 43.435905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878407, 30.156191, 43.239803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497302, 0.029578, -0.867073,
		-0.095392, -0.991495, -0.088534,
		-0.862317, 0.126740, -0.490251,
		43.619713, 30.194214, 43.092728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302719, 29.691027, 42.798573>,  <44.223331, 30.105495, 43.435905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302719, 29.691027, 42.798573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013992, 29.956957, 42.721638>,  <43.840755, 30.116516, 42.675476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013992, 29.956957, 42.721638>,  <44.302719, 29.691027, 42.798573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013992, 29.956957, 42.721638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304051, 0.054971, -0.951068,
		-0.621723, -0.744972, -0.241820,
		-0.721813, 0.664826, -0.192333,
		43.797447, 30.156404, 42.663937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106155, 29.460464, 42.141647>,  <44.302719, 29.691027, 42.798573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106155, 29.460464, 42.141647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985996, 29.838230, 42.195080>,  <43.913898, 30.064890, 42.227139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985996, 29.838230, 42.195080>,  <44.106155, 29.460464, 42.141647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985996, 29.838230, 42.195080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260687, 0.216007, -0.940948,
		-0.917498, -0.247840, -0.311085,
		-0.300401, 0.944413, 0.133577,
		43.895878, 30.121553, 42.235153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950180, 29.678724, 41.505569>,  <44.106155, 29.460464, 42.141647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950180, 29.678724, 41.505569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983601, 30.026180, 41.700909>,  <44.003654, 30.234653, 41.818111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983601, 30.026180, 41.700909>,  <43.950180, 29.678724, 41.505569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983601, 30.026180, 41.700909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436787, 0.408551, -0.801438,
		-0.895676, 0.280269, -0.345274,
		0.083556, 0.868640, 0.488347,
		44.008667, 30.286772, 41.847412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718330, 30.113125, 41.090698>,  <43.950180, 29.678724, 41.505569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718330, 30.113125, 41.090698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952911, 30.339306, 41.322678>,  <44.093658, 30.475016, 41.461864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952911, 30.339306, 41.322678>,  <43.718330, 30.113125, 41.090698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952911, 30.339306, 41.322678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515425, 0.291803, -0.805722,
		-0.624828, 0.771436, -0.120321,
		0.586453, 0.565454, 0.579944,
		44.128849, 30.508942, 41.496662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725292, 30.722433, 40.707268>,  <43.718330, 30.113125, 41.090698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725292, 30.722433, 40.707268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039246, 30.741669, 40.954376>,  <44.227619, 30.753210, 41.102642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039246, 30.741669, 40.954376>,  <43.725292, 30.722433, 40.707268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039246, 30.741669, 40.954376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576788, 0.307631, -0.756755,
		-0.226438, 0.950290, 0.213718,
		0.784883, 0.048088, 0.617775,
		44.274712, 30.756096, 41.139709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971767, 31.422729, 40.682663>,  <43.725292, 30.722433, 40.707268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971767, 31.422729, 40.682663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256691, 31.164072, 40.791813>,  <44.427647, 31.008877, 40.857304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256691, 31.164072, 40.791813>,  <43.971767, 31.422729, 40.682663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256691, 31.164072, 40.791813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616797, 0.391201, -0.683025,
		0.334925, 0.654837, 0.677506,
		0.712311, -0.646646, 0.272878,
		44.470383, 30.970078, 40.873676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565990, 31.775848, 40.727444>,  <43.971767, 31.422729, 40.682663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565990, 31.775848, 40.727444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709312, 31.402435, 40.732166>,  <44.795303, 31.178389, 40.735001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709312, 31.402435, 40.732166>,  <44.565990, 31.775848, 40.727444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709312, 31.402435, 40.732166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670376, 0.248459, -0.699188,
		0.649782, 0.258432, 0.714840,
		0.358301, -0.933532, 0.011802,
		44.816803, 31.122375, 40.735706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309605, 31.810953, 40.781895>,  <44.565990, 31.775848, 40.727444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309605, 31.810953, 40.781895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229843, 31.457048, 40.613403>,  <45.181984, 31.244705, 40.512306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229843, 31.457048, 40.613403>,  <45.309605, 31.810953, 40.781895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229843, 31.457048, 40.613403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612394, 0.223065, -0.758430,
		0.764991, -0.409195, 0.497341,
		-0.199406, -0.884761, -0.421231,
		45.170021, 31.191620, 40.487034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966103, 31.650890, 40.498508>,  <45.309605, 31.810953, 40.781895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966103, 31.650890, 40.498508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702541, 31.406708, 40.322693>,  <45.544407, 31.260199, 40.217205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702541, 31.406708, 40.322693>,  <45.966103, 31.650890, 40.498508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702541, 31.406708, 40.322693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434413, 0.168229, -0.884864,
		0.614115, -0.773977, 0.154345,
		-0.658899, -0.610458, -0.439537,
		45.504871, 31.223570, 40.190830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.432392, 31.315849, 40.083134>,  <45.966103, 31.650890, 40.498508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.432392, 31.315849, 40.083134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065334, 31.245798, 39.940441>,  <45.845100, 31.203768, 39.854828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065334, 31.245798, 39.940441>,  <46.432392, 31.315849, 40.083134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065334, 31.245798, 39.940441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362149, 0.001078, -0.932120,
		0.163626, -0.984545, 0.062434,
		-0.917646, -0.175130, -0.356728,
		45.790039, 31.193260, 39.833424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527721, 30.812916, 39.635727>,  <46.432392, 31.315849, 40.083134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527721, 30.812916, 39.635727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195862, 30.999678, 39.513294>,  <45.996746, 31.111734, 39.439835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195862, 30.999678, 39.513294>,  <46.527721, 30.812916, 39.635727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195862, 30.999678, 39.513294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478549, 0.312389, -0.820612,
		-0.287532, -0.827293, -0.482610,
		-0.829648, 0.466905, -0.306078,
		45.946968, 31.139750, 39.421471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463207, 30.686499, 38.801819>,  <46.527721, 30.812916, 39.635727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463207, 30.686499, 38.801819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227383, 30.999256, 38.882870>,  <46.085888, 31.186911, 38.931499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227383, 30.999256, 38.882870>,  <46.463207, 30.686499, 38.801819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.227383, 30.999256, 38.882870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121237, 0.333678, -0.934859,
		-0.798572, -0.526592, -0.291519,
		-0.589563, 0.781895, 0.202624,
		46.050514, 31.233824, 38.943657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115803, 30.739910, 38.195782>,  <46.463207, 30.686499, 38.801819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115803, 30.739910, 38.195782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054134, 31.092134, 38.375046>,  <46.017132, 31.303469, 38.482605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054134, 31.092134, 38.375046>,  <46.115803, 30.739910, 38.195782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054134, 31.092134, 38.375046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000987, 0.453443, -0.891285,
		-0.988044, -0.137852, -0.069038,
		-0.154170, 0.880560, 0.448158,
		46.007885, 31.356302, 38.509495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571766, 31.059416, 37.860092>,  <46.115803, 30.739910, 38.195782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571766, 31.059416, 37.860092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776493, 31.357475, 38.031109>,  <45.899330, 31.536312, 38.133717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776493, 31.357475, 38.031109>,  <45.571766, 31.059416, 37.860092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776493, 31.357475, 38.031109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127434, 0.426307, -0.895558,
		-0.849588, 0.512848, 0.123235,
		0.511821, 0.745151, 0.427539,
		45.930038, 31.581020, 38.159370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206440, 31.695082, 37.578384>,  <45.571766, 31.059416, 37.860092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206440, 31.695082, 37.578384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566528, 31.801970, 37.715900>,  <45.782581, 31.866102, 37.798412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566528, 31.801970, 37.715900>,  <45.206440, 31.695082, 37.578384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566528, 31.801970, 37.715900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118340, 0.609681, -0.783763,
		-0.419043, 0.746245, 0.517225,
		0.900221, 0.267221, 0.343794,
		45.836594, 31.882135, 37.819038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245438, 32.366844, 37.453545>,  <45.206440, 31.695082, 37.578384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245438, 32.366844, 37.453545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635239, 32.305748, 37.519295>,  <45.869118, 32.269089, 37.558746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635239, 32.305748, 37.519295>,  <45.245438, 32.366844, 37.453545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635239, 32.305748, 37.519295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223948, 0.707931, -0.669837,
		-0.014057, 0.689568, 0.724085,
		0.974500, -0.152742, 0.164379,
		45.927589, 32.259926, 37.568607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499184, 33.004791, 37.676853>,  <45.245438, 32.366844, 37.453545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499184, 33.004791, 37.676853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809746, 32.799255, 37.530884>,  <45.996082, 32.675934, 37.443302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809746, 32.799255, 37.530884>,  <45.499184, 33.004791, 37.676853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809746, 32.799255, 37.530884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293156, 0.807019, -0.512621,
		0.557903, 0.291021, 0.777207,
		0.776404, -0.513836, -0.364924,
		46.042667, 32.645103, 37.421406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017452, 33.493130, 37.720715>,  <45.499184, 33.004791, 37.676853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017452, 33.493130, 37.720715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104588, 33.217995, 37.443752>,  <46.156868, 33.052914, 37.277573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104588, 33.217995, 37.443752>,  <46.017452, 33.493130, 37.720715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104588, 33.217995, 37.443752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374357, 0.714067, -0.591578,
		0.901335, -0.130342, 0.413045,
		0.217834, -0.687836, -0.692408,
		46.169937, 33.011642, 37.236031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.687943, 33.636433, 37.443638>,  <46.017452, 33.493130, 37.720715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.687943, 33.636433, 37.443638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534004, 33.417648, 37.146255>,  <46.441643, 33.286377, 36.967827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534004, 33.417648, 37.146255>,  <46.687943, 33.636433, 37.443638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534004, 33.417648, 37.146255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385649, 0.636520, -0.667921,
		0.838551, -0.543759, -0.034026,
		-0.384846, -0.546964, -0.743454,
		46.418549, 33.253559, 36.923218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214718, 33.595154, 36.986675>,  <46.687943, 33.636433, 37.443638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214718, 33.595154, 36.986675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.882374, 33.507767, 36.781952>,  <46.682968, 33.455334, 36.659119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.882374, 33.507767, 36.781952>,  <47.214718, 33.595154, 36.986675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.882374, 33.507767, 36.781952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220976, 0.714570, -0.663746,
		0.510725, -0.664577, -0.545433,
		-0.830860, -0.218464, -0.511805,
		46.633118, 33.442226, 36.628410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.432789, 33.459305, 36.349922>,  <47.214718, 33.595154, 36.986675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.432789, 33.459305, 36.349922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041466, 33.533241, 36.312504>,  <46.806671, 33.577602, 36.290051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.041466, 33.533241, 36.312504>,  <47.432789, 33.459305, 36.349922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041466, 33.533241, 36.312504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203549, 0.773628, -0.600057,
		-0.038543, -0.606081, -0.794469,
		-0.978306, 0.184842, -0.093549,
		46.747974, 33.588696, 36.284439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.207897, 33.497227, 35.631966>,  <47.432789, 33.459305, 36.349922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.207897, 33.497227, 35.631966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012115, 33.735233, 35.886959>,  <46.894646, 33.878036, 36.039955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.012115, 33.735233, 35.886959>,  <47.207897, 33.497227, 35.631966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.012115, 33.735233, 35.886959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481817, 0.793845, -0.371029,
		-0.726835, 0.125551, -0.675239,
		-0.489452, 0.595018, 0.637487,
		46.865280, 33.913738, 36.078205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.202084, 33.705570, 34.791340>,  <47.207897, 33.497227, 35.631966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.202084, 33.705570, 34.791340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287643, 33.993649, 34.527348>,  <47.338982, 34.166496, 34.368954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.287643, 33.993649, 34.527348>,  <47.202084, 33.705570, 34.791340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287643, 33.993649, 34.527348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008804, 0.674165, 0.738529,
		0.976816, -0.163783, 0.137864,
		0.213902, 0.720192, -0.659977,
		47.351814, 34.209705, 34.329353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.843693, 34.079426, 34.945290>,  <47.202084, 33.705570, 34.791340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.843693, 34.079426, 34.945290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588482, 34.319092, 34.751823>,  <47.435356, 34.462891, 34.635746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.588482, 34.319092, 34.751823>,  <47.843693, 34.079426, 34.945290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.588482, 34.319092, 34.751823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048671, 0.595483, 0.801893,
		0.768478, 0.535166, -0.350769,
		-0.638023, 0.599165, -0.483662,
		47.397076, 34.498840, 34.606724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.181763, 34.789341, 34.883564>,  <47.843693, 34.079426, 34.945290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.181763, 34.789341, 34.883564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782539, 34.814228, 34.884266>,  <47.543003, 34.829159, 34.884689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.782539, 34.814228, 34.884266>,  <48.181763, 34.789341, 34.883564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.782539, 34.814228, 34.884266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028993, 0.439768, 0.897643,
		0.055074, 0.895954, -0.440719,
		-0.998061, 0.062215, 0.001757,
		47.483120, 34.832893, 34.884792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.942772, 38.864479, 43.332287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555618, 38.881577, 43.431374>,  <36.323326, 38.891834, 43.490826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555618, 38.881577, 43.431374>,  <36.942772, 38.864479, 43.332287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555618, 38.881577, 43.431374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248772, -0.021216, -0.968330,
		-0.036141, -0.998861, 0.031170,
		-0.967888, 0.042751, 0.247722,
		36.265251, 38.894402, 43.505692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718159, 38.236561, 43.156586>,  <36.942772, 38.864479, 43.332287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718159, 38.236561, 43.156586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389950, 38.464382, 43.176010>,  <36.193024, 38.601074, 43.187664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389950, 38.464382, 43.176010>,  <36.718159, 38.236561, 43.156586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389950, 38.464382, 43.176010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322394, -0.390943, -0.862106,
		-0.472031, -0.723029, 0.504396,
		-0.820518, 0.569555, 0.048563,
		36.143795, 38.635246, 43.190578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110519, 37.816532, 43.030563>,  <36.718159, 38.236561, 43.156586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110519, 37.816532, 43.030563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996983, 38.192192, 42.953167>,  <35.928860, 38.417587, 42.906731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996983, 38.192192, 42.953167>,  <36.110519, 37.816532, 43.030563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996983, 38.192192, 42.953167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343990, -0.288087, -0.893687,
		-0.895045, -0.187105, 0.404828,
		-0.283839, 0.939147, -0.193489,
		35.911831, 38.473938, 42.895119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590725, 37.764080, 42.530880>,  <36.110519, 37.816532, 43.030563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590725, 37.764080, 42.530880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612770, 38.161884, 42.495304>,  <35.625996, 38.400566, 42.473957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612770, 38.161884, 42.495304>,  <35.590725, 37.764080, 42.530880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612770, 38.161884, 42.495304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348478, -0.064317, -0.935108,
		-0.935696, 0.082530, 0.343020,
		0.055113, 0.994511, -0.088941,
		35.629303, 38.460239, 42.468620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917873, 37.996506, 42.271984>,  <35.590725, 37.764080, 42.530880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917873, 37.996506, 42.271984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163151, 38.294655, 42.167358>,  <35.310318, 38.473545, 42.104584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.163151, 38.294655, 42.167358>,  <34.917873, 37.996506, 42.271984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163151, 38.294655, 42.167358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289217, -0.096291, -0.952408,
		-0.735083, 0.659660, 0.156529,
		0.613194, 0.745370, -0.261566,
		35.347111, 38.518265, 42.088890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556774, 38.435722, 41.849632>,  <34.917873, 37.996506, 42.271984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556774, 38.435722, 41.849632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929981, 38.552860, 41.765999>,  <35.153904, 38.623142, 41.715816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929981, 38.552860, 41.765999>,  <34.556774, 38.435722, 41.849632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929981, 38.552860, 41.765999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213316, -0.017806, -0.976821,
		-0.289784, 0.955993, 0.045856,
		0.933018, 0.292849, -0.209088,
		35.209885, 38.640717, 41.703274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499962, 39.083145, 41.265781>,  <34.556774, 38.435722, 41.849632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499962, 39.083145, 41.265781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869186, 38.930424, 41.247128>,  <35.090721, 38.838791, 41.235935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.869186, 38.930424, 41.247128>,  <34.499962, 39.083145, 41.265781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869186, 38.930424, 41.247128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083225, -0.079875, -0.993324,
		0.375534, 0.920784, -0.105506,
		0.923064, -0.381808, -0.046636,
		35.146107, 38.815880, 41.233135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824257, 39.239349, 40.623058>,  <34.499962, 39.083145, 41.265781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824257, 39.239349, 40.623058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021179, 38.901859, 40.708626>,  <35.139332, 38.699364, 40.759964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.021179, 38.901859, 40.708626>,  <34.824257, 39.239349, 40.623058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021179, 38.901859, 40.708626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033031, -0.263693, -0.964041,
		0.869796, 0.467535, -0.157687,
		0.492304, -0.843728, 0.213916,
		35.168869, 38.648743, 40.772800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010559, 39.035271, 39.919624>,  <34.824257, 39.239349, 40.623058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010559, 39.035271, 39.919624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149742, 38.716961, 40.117882>,  <35.233253, 38.525974, 40.236835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149742, 38.716961, 40.117882>,  <35.010559, 39.035271, 39.919624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149742, 38.716961, 40.117882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143886, -0.477088, -0.866997,
		0.926401, 0.372998, -0.051508,
		0.347962, -0.795776, 0.495644,
		35.254131, 38.478230, 40.266575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521408, 38.722992, 39.426674>,  <35.010559, 39.035271, 39.919624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521408, 38.722992, 39.426674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422970, 38.425682, 39.675503>,  <35.363907, 38.247295, 39.824799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422970, 38.425682, 39.675503>,  <35.521408, 38.722992, 39.426674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422970, 38.425682, 39.675503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248913, -0.668753, -0.700579,
		0.936738, -0.017570, 0.349591,
		-0.246099, -0.743277, 0.622073,
		35.349140, 38.202698, 39.862125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964649, 38.251236, 39.354568>,  <35.521408, 38.722992, 39.426674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964649, 38.251236, 39.354568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658680, 38.046852, 39.511444>,  <35.475098, 37.924221, 39.605568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658680, 38.046852, 39.511444>,  <35.964649, 38.251236, 39.354568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658680, 38.046852, 39.511444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187342, -0.759035, -0.623513,
		0.616271, -0.403469, 0.676330,
		-0.764927, -0.510958, 0.392185,
		35.429203, 37.893566, 39.629101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249336, 37.644558, 39.517433>,  <35.964649, 38.251236, 39.354568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249336, 37.644558, 39.517433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859013, 37.594593, 39.445656>,  <35.624821, 37.564613, 39.402588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859013, 37.594593, 39.445656>,  <36.249336, 37.644558, 39.517433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859013, 37.594593, 39.445656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198678, -0.849225, -0.489227,
		-0.091277, -0.513042, 0.853496,
		-0.975805, -0.124916, -0.179445,
		35.566273, 37.557117, 39.391823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134392, 36.925045, 39.498528>,  <36.249336, 37.644558, 39.517433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134392, 36.925045, 39.498528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810223, 37.090729, 39.332809>,  <35.615719, 37.190140, 39.233379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.810223, 37.090729, 39.332809>,  <36.134392, 36.925045, 39.498528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810223, 37.090729, 39.332809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011040, -0.696254, -0.717711,
		-0.585738, -0.586225, 0.559689,
		-0.810425, 0.414211, -0.414294,
		35.567097, 37.214993, 39.208523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942062, 36.349545, 39.155190>,  <36.134392, 36.925045, 39.498528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942062, 36.349545, 39.155190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667038, 36.608044, 39.022751>,  <35.502022, 36.763142, 38.943287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667038, 36.608044, 39.022751>,  <35.942062, 36.349545, 39.155190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667038, 36.608044, 39.022751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199334, -0.606447, -0.769733,
		-0.698231, -0.463239, 0.545788,
		-0.687561, 0.646245, -0.331101,
		35.460770, 36.801918, 38.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194149, 35.967178, 39.022095>,  <35.942062, 36.349545, 39.155190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194149, 35.967178, 39.022095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241554, 36.294209, 38.796696>,  <35.269997, 36.490425, 38.661457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241554, 36.294209, 38.796696>,  <35.194149, 35.967178, 39.022095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241554, 36.294209, 38.796696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146398, -0.546904, -0.824296,
		-0.982101, 0.180182, 0.054878,
		0.118510, 0.817576, -0.563493,
		35.277107, 36.539482, 38.627647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680279, 35.896603, 38.500023>,  <35.194149, 35.967178, 39.022095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680279, 35.896603, 38.500023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961498, 36.146927, 38.364918>,  <35.130230, 36.297119, 38.283855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961498, 36.146927, 38.364918>,  <34.680279, 35.896603, 38.500023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961498, 36.146927, 38.364918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186360, -0.620498, -0.761743,
		-0.686287, 0.472598, -0.552867,
		0.703051, 0.625806, -0.337766,
		35.172413, 36.334667, 38.263588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449379, 36.019173, 37.806885>,  <34.680279, 35.896603, 38.500023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449379, 36.019173, 37.806885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836010, 36.117283, 37.836712>,  <35.067989, 36.176151, 37.854610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836010, 36.117283, 37.836712>,  <34.449379, 36.019173, 37.806885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836010, 36.117283, 37.836712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202589, -0.552550, -0.808484,
		-0.157099, 0.796572, -0.583775,
		0.966580, 0.245279, 0.074572,
		35.125984, 36.190865, 37.859085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574818, 36.129684, 37.095272>,  <34.449379, 36.019173, 37.806885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574818, 36.129684, 37.095272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925056, 36.078243, 37.281517>,  <35.135201, 36.047379, 37.393265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925056, 36.078243, 37.281517>,  <34.574818, 36.129684, 37.095272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925056, 36.078243, 37.281517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317862, -0.572412, -0.755850,
		0.363728, 0.809818, -0.460322,
		0.875594, -0.128605, 0.465613,
		35.187737, 36.039661, 37.421200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035660, 36.249989, 36.596638>,  <34.574818, 36.129684, 37.095272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035660, 36.249989, 36.596638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228443, 36.033760, 36.872463>,  <35.344112, 35.904022, 37.037960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228443, 36.033760, 36.872463>,  <35.035660, 36.249989, 36.596638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228443, 36.033760, 36.872463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347318, -0.604665, -0.716764,
		0.804418, 0.584948, -0.103673,
		0.481957, -0.540570, 0.689566,
		35.373032, 35.871590, 37.079334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691277, 36.045654, 36.244114>,  <35.035660, 36.249989, 36.596638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691277, 36.045654, 36.244114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639297, 35.781151, 36.539639>,  <35.608109, 35.622448, 36.716953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639297, 35.781151, 36.539639>,  <35.691277, 36.045654, 36.244114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639297, 35.781151, 36.539639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217900, -0.745961, -0.629334,
		0.967281, 0.079205, 0.241028,
		-0.129951, -0.661263, 0.738812,
		35.600311, 35.582771, 36.761284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301224, 35.519993, 36.090469>,  <35.691277, 36.045654, 36.244114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301224, 35.519993, 36.090469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002556, 35.368629, 36.309296>,  <35.823353, 35.277809, 36.440594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002556, 35.368629, 36.309296>,  <36.301224, 35.519993, 36.090469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002556, 35.368629, 36.309296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120652, -0.885825, -0.448059,
		0.654157, -0.268549, 0.707078,
		-0.746673, -0.378412, 0.547068,
		35.778553, 35.255104, 36.473415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582245, 34.912865, 36.471264>,  <36.301224, 35.519993, 36.090469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582245, 34.912865, 36.471264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186314, 34.860100, 36.449951>,  <35.948753, 34.828442, 36.437164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186314, 34.860100, 36.449951>,  <36.582245, 34.912865, 36.471264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186314, 34.860100, 36.449951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141955, -0.940737, -0.307998,
		-0.009497, -0.312429, 0.949894,
		-0.989828, -0.131917, -0.053285,
		35.889366, 34.820526, 36.433968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777077, 35.337345, 37.133064>,  <36.582245, 34.912865, 36.471264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777077, 35.337345, 37.133064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084908, 35.202675, 36.916027>,  <37.269608, 35.121872, 36.785805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084908, 35.202675, 36.916027>,  <36.777077, 35.337345, 37.133064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084908, 35.202675, 36.916027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530405, 0.810169, 0.249593,
		0.355558, -0.479873, 0.802060,
		0.769577, -0.336673, -0.542589,
		37.315781, 35.101673, 36.753250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364822, 35.289677, 37.593220>,  <36.777077, 35.337345, 37.133064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364822, 35.289677, 37.593220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500416, 35.339500, 37.220215>,  <37.581772, 35.369396, 36.996414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.500416, 35.339500, 37.220215>,  <37.364822, 35.289677, 37.593220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500416, 35.339500, 37.220215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467104, 0.838110, 0.281755,
		0.816642, -0.531089, 0.225920,
		0.338983, 0.124564, -0.932510,
		37.602112, 35.376869, 36.940460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124916, 35.167000, 37.682709>,  <37.364822, 35.289677, 37.593220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124916, 35.167000, 37.682709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053612, 35.375145, 37.348656>,  <38.010830, 35.500034, 37.148224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053612, 35.375145, 37.348656>,  <38.124916, 35.167000, 37.682709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053612, 35.375145, 37.348656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555128, 0.753944, 0.351285,
		0.812438, -0.400983, -0.423271,
		-0.178263, 0.520367, -0.835129,
		38.000134, 35.531254, 37.098118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707634, 35.453060, 37.550575>,  <38.124916, 35.167000, 37.682709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707634, 35.453060, 37.550575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473106, 35.690365, 37.329937>,  <38.332390, 35.832748, 37.197556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.473106, 35.690365, 37.329937>,  <38.707634, 35.453060, 37.550575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473106, 35.690365, 37.329937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451801, 0.804667, 0.385209,
		0.672384, -0.023355, -0.739834,
		-0.586324, 0.593266, -0.551597,
		38.297211, 35.868343, 37.164459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142483, 35.945694, 37.308491>,  <38.707634, 35.453060, 37.550575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142483, 35.945694, 37.308491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783234, 36.118729, 37.276882>,  <38.567684, 36.222549, 37.257915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783234, 36.118729, 37.276882>,  <39.142483, 35.945694, 37.308491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783234, 36.118729, 37.276882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388539, 0.864781, 0.318107,
		0.205947, 0.254995, -0.944756,
		-0.898122, 0.432587, -0.079023,
		38.513798, 36.248505, 37.253174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182755, 36.679195, 37.125710>,  <39.142483, 35.945694, 37.308491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182755, 36.679195, 37.125710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825905, 36.663509, 37.305740>,  <38.611794, 36.654099, 37.413757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825905, 36.663509, 37.305740>,  <39.182755, 36.679195, 37.125710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825905, 36.663509, 37.305740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104941, 0.950990, 0.290869,
		-0.439424, 0.306725, -0.844290,
		-0.892129, -0.039214, 0.450076,
		38.558266, 36.651745, 37.440762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921730, 37.382202, 37.033558>,  <39.182755, 36.679195, 37.125710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921730, 37.382202, 37.033558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667789, 37.254177, 37.314850>,  <38.515427, 37.177361, 37.483624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.667789, 37.254177, 37.314850>,  <38.921730, 37.382202, 37.033558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667789, 37.254177, 37.314850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023667, 0.917791, 0.396359,
		-0.772275, 0.234985, -0.590232,
		-0.634848, -0.320067, 0.703225,
		38.477337, 37.158157, 37.525818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644318, 37.943192, 37.295883>,  <38.921730, 37.382202, 37.033558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644318, 37.943192, 37.295883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547817, 37.705196, 37.602551>,  <38.489918, 37.562397, 37.786552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547817, 37.705196, 37.602551>,  <38.644318, 37.943192, 37.295883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547817, 37.705196, 37.602551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057563, 0.779842, 0.623324,
		-0.968755, 0.194508, -0.153886,
		-0.241248, -0.594990, 0.766672,
		38.475445, 37.526699, 37.832554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149822, 38.257629, 37.670437>,  <38.644318, 37.943192, 37.295883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149822, 38.257629, 37.670437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323681, 37.992580, 37.914406>,  <38.427998, 37.833549, 38.060787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323681, 37.992580, 37.914406>,  <38.149822, 38.257629, 37.670437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323681, 37.992580, 37.914406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077920, 0.647037, 0.758467,
		-0.897223, -0.377192, 0.229602,
		0.434648, -0.662624, 0.609927,
		38.454075, 37.793793, 38.097385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775490, 38.461941, 38.265915>,  <38.149822, 38.257629, 37.670437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775490, 38.461941, 38.265915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070042, 38.222408, 38.391869>,  <38.246773, 38.078690, 38.467442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.070042, 38.222408, 38.391869>,  <37.775490, 38.461941, 38.265915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070042, 38.222408, 38.391869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015648, 0.450210, 0.892785,
		-0.676389, -0.662355, 0.322155,
		0.736379, -0.598829, 0.314882,
		38.290955, 38.042759, 38.486332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524494, 38.110844, 38.935486>,  <37.775490, 38.461941, 38.265915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524494, 38.110844, 38.935486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922512, 38.116547, 38.896137>,  <38.161324, 38.119968, 38.872528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922512, 38.116547, 38.896137>,  <37.524494, 38.110844, 38.935486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922512, 38.116547, 38.896137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081846, 0.444060, 0.892251,
		0.056403, -0.895884, 0.440694,
		0.995047, 0.014257, -0.098371,
		38.221027, 38.120823, 38.866627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819447, 37.713097, 39.500854>,  <37.524494, 38.110844, 38.935486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819447, 37.713097, 39.500854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101921, 37.962685, 39.367016>,  <38.271408, 38.112438, 39.286713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101921, 37.962685, 39.367016>,  <37.819447, 37.713097, 39.500854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101921, 37.962685, 39.367016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113687, 0.366521, 0.923438,
		0.698835, -0.690163, 0.187897,
		0.706190, 0.623969, -0.334600,
		38.313778, 38.149876, 39.266636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393238, 37.766121, 39.964478>,  <37.819447, 37.713097, 39.500854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393238, 37.766121, 39.964478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389973, 38.097771, 39.740875>,  <38.388012, 38.296761, 39.606712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389973, 38.097771, 39.740875>,  <38.393238, 37.766121, 39.964478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389973, 38.097771, 39.740875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330597, 0.529832, 0.781015,
		0.943737, -0.178428, -0.278432,
		-0.008167, 0.829121, -0.559009,
		38.387524, 38.346508, 39.573174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086639, 37.967773, 39.929230>,  <38.393238, 37.766121, 39.964478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086639, 37.967773, 39.929230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825802, 38.270916, 39.920898>,  <38.669300, 38.452801, 39.915901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825802, 38.270916, 39.920898>,  <39.086639, 37.967773, 39.929230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825802, 38.270916, 39.920898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278935, 0.265371, 0.922916,
		0.704962, 0.596016, -0.384438,
		-0.652091, 0.757854, -0.020826,
		38.630173, 38.498272, 39.914650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453243, 38.541504, 40.107662>,  <39.086639, 37.967773, 39.929230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453243, 38.541504, 40.107662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072647, 38.623875, 40.199097>,  <38.844288, 38.673298, 40.253956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.072647, 38.623875, 40.199097>,  <39.453243, 38.541504, 40.107662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072647, 38.623875, 40.199097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274860, 0.235122, 0.932293,
		0.138240, 0.949901, -0.280319,
		-0.951495, 0.205928, 0.228586,
		38.787197, 38.685654, 40.267673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500916, 38.956890, 40.738506>,  <39.453243, 38.541504, 40.107662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500916, 38.956890, 40.738506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107662, 38.883728, 40.738384>,  <38.871712, 38.839832, 40.738312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.107662, 38.883728, 40.738384>,  <39.500916, 38.956890, 40.738506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107662, 38.883728, 40.738384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058910, 0.315061, 0.947241,
		-0.173159, 0.931280, -0.320521,
		-0.983131, -0.182905, -0.000306,
		38.812721, 38.828857, 40.738293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128426, 39.597824, 40.957767>,  <39.500916, 38.956890, 40.738506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128426, 39.597824, 40.957767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948784, 39.255352, 41.059956>,  <38.841000, 39.049870, 41.121269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948784, 39.255352, 41.059956>,  <39.128426, 39.597824, 40.957767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948784, 39.255352, 41.059956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025993, 0.298328, 0.954109,
		-0.893102, 0.421853, -0.156235,
		-0.449103, -0.856178, 0.255473,
		38.814053, 38.998497, 41.136597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684669, 39.817253, 41.610481>,  <39.128426, 39.597824, 40.957767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684669, 39.817253, 41.610481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640984, 39.420128, 41.630077>,  <38.614773, 39.181854, 41.641834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640984, 39.420128, 41.630077>,  <38.684669, 39.817253, 41.610481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640984, 39.420128, 41.630077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165198, 0.066724, 0.984001,
		-0.980195, 0.099373, -0.171297,
		-0.109213, -0.992811, 0.048987,
		38.608219, 39.122284, 41.644772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.986225, 39.673973, 41.913109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223961, 39.357540, 41.971016>,  <38.366600, 39.167683, 42.005760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223961, 39.357540, 41.971016>,  <37.986225, 39.673973, 41.913109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223961, 39.357540, 41.971016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141825, 0.074093, 0.987115,
		-0.791612, -0.607211, -0.068158,
		0.594337, -0.791079, 0.144771,
		38.402264, 39.120216, 42.014446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595200, 39.173103, 42.314983>,  <37.986225, 39.673973, 41.913109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595200, 39.173103, 42.314983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984375, 39.094193, 42.363091>,  <38.217880, 39.046848, 42.391956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984375, 39.094193, 42.363091>,  <37.595200, 39.173103, 42.314983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984375, 39.094193, 42.363091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129555, -0.034824, 0.990961,
		-0.191305, -0.979729, -0.059440,
		0.972943, -0.197276, 0.120267,
		38.276257, 39.035011, 42.399170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590939, 38.827236, 43.042965>,  <37.595200, 39.173103, 42.314983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590939, 38.827236, 43.042965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969177, 38.892818, 42.930565>,  <38.196121, 38.932167, 42.863125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969177, 38.892818, 42.930565>,  <37.590939, 38.827236, 43.042965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969177, 38.892818, 42.930565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277996, 0.041482, 0.959686,
		0.168999, -0.985596, -0.006353,
		0.945599, 0.163953, -0.281003,
		38.252857, 38.942005, 42.846264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922249, 38.263664, 43.354500>,  <37.590939, 38.827236, 43.042965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922249, 38.263664, 43.354500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162346, 38.574017, 43.276810>,  <38.306404, 38.760227, 43.230194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162346, 38.574017, 43.276810>,  <37.922249, 38.263664, 43.354500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162346, 38.574017, 43.276810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325281, -0.014961, 0.945499,
		0.730687, -0.630704, -0.261359,
		0.600240, 0.775879, -0.194225,
		38.342419, 38.806782, 43.218544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531239, 38.136082, 43.709866>,  <37.922249, 38.263664, 43.354500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531239, 38.136082, 43.709866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553165, 38.527390, 43.629890>,  <38.566322, 38.762177, 43.581905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.553165, 38.527390, 43.629890>,  <38.531239, 38.136082, 43.709866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553165, 38.527390, 43.629890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031590, 0.198438, 0.979604,
		0.997996, -0.060019, -0.020025,
		0.054821, 0.978274, -0.199937,
		38.569611, 38.820873, 43.569908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141640, 38.456314, 43.982594>,  <38.531239, 38.136082, 43.709866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141640, 38.456314, 43.982594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880066, 38.758221, 43.961838>,  <38.723122, 38.939365, 43.949383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.880066, 38.758221, 43.961838>,  <39.141640, 38.456314, 43.982594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880066, 38.758221, 43.961838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240026, 0.272026, 0.931874,
		0.717467, 0.596928, -0.359051,
		-0.653933, 0.754771, -0.051891,
		38.683887, 38.984653, 43.946270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272522, 38.755585, 44.612637>,  <39.141640, 38.456314, 43.982594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272522, 38.755585, 44.612637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970242, 38.980755, 44.478752>,  <38.788872, 39.115856, 44.398422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.970242, 38.980755, 44.478752>,  <39.272522, 38.755585, 44.612637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970242, 38.980755, 44.478752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021641, 0.489325, 0.871833,
		0.654559, 0.666088, -0.357601,
		-0.755701, 0.562928, -0.334707,
		38.743530, 39.149632, 44.378342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460114, 39.396381, 44.620014>,  <39.272522, 38.755585, 44.612637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460114, 39.396381, 44.620014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063881, 39.402206, 44.674473>,  <38.826141, 39.405701, 44.707150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063881, 39.402206, 44.674473>,  <39.460114, 39.396381, 44.620014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063881, 39.402206, 44.674473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126679, 0.474902, 0.870874,
		-0.051974, 0.879918, -0.472274,
		-0.990581, 0.014564, 0.136150,
		38.766708, 39.406574, 44.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349945, 40.098480, 44.994083>,  <39.460114, 39.396381, 44.620014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349945, 40.098480, 44.994083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047092, 39.840218, 45.033852>,  <38.865379, 39.685261, 45.057713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047092, 39.840218, 45.033852>,  <39.349945, 40.098480, 44.994083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047092, 39.840218, 45.033852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064392, 0.225215, 0.972179,
		-0.650083, 0.729664, -0.212092,
		-0.757130, -0.645654, 0.099424,
		38.819954, 39.646523, 45.063679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813320, 40.487797, 45.313148>,  <39.349945, 40.098480, 44.994083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813320, 40.487797, 45.313148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.788635, 40.094219, 45.380127>,  <38.773827, 39.858070, 45.420315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.788635, 40.094219, 45.380127>,  <38.813320, 40.487797, 45.313148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788635, 40.094219, 45.380127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012313, 0.167003, 0.985880,
		-0.998018, 0.062900, 0.001810,
		-0.061709, -0.983948, 0.167446,
		38.770123, 39.799034, 45.430363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504238, 40.340397, 45.956604>,  <38.813320, 40.487797, 45.313148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504238, 40.340397, 45.956604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601528, 39.955769, 45.905663>,  <38.659901, 39.724991, 45.875099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601528, 39.955769, 45.905663>,  <38.504238, 40.340397, 45.956604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601528, 39.955769, 45.905663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124871, -0.161243, 0.978983,
		-0.961900, -0.222206, -0.159291,
		0.243221, -0.961574, -0.127353,
		38.674496, 39.667297, 45.867458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969479, 39.993538, 46.337772>,  <38.504238, 40.340397, 45.956604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969479, 39.993538, 46.337772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285664, 39.749916, 46.311764>,  <38.475372, 39.603745, 46.296158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285664, 39.749916, 46.311764>,  <37.969479, 39.993538, 46.337772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285664, 39.749916, 46.311764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005163, -0.112773, 0.993607,
		-0.612494, -0.785069, -0.092286,
		0.790458, -0.609055, -0.065019,
		38.522800, 39.567200, 46.292259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857426, 39.320740, 46.737953>,  <37.969479, 39.993538, 46.337772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857426, 39.320740, 46.737953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254200, 39.368969, 46.722305>,  <38.492264, 39.397907, 46.712917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254200, 39.368969, 46.722305>,  <37.857426, 39.320740, 46.737953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254200, 39.368969, 46.722305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052671, -0.111353, 0.992384,
		0.115301, -0.986439, -0.116806,
		0.991933, 0.120576, -0.039118,
		38.551781, 39.405140, 46.710571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194794, 38.708324, 47.148590>,  <37.857426, 39.320740, 46.737953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194794, 38.708324, 47.148590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477528, 38.991116, 47.158119>,  <38.647167, 39.160789, 47.163837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477528, 38.991116, 47.158119>,  <38.194794, 38.708324, 47.148590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477528, 38.991116, 47.158119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208817, -0.240718, 0.947866,
		0.675858, -0.665006, -0.317777,
		0.706831, 0.706981, 0.023827,
		38.689575, 39.203209, 47.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531227, 38.436504, 47.683346>,  <38.194794, 38.708324, 47.148590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531227, 38.436504, 47.683346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668022, 38.811356, 47.655548>,  <38.750099, 39.036266, 47.638870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668022, 38.811356, 47.655548>,  <38.531227, 38.436504, 47.683346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668022, 38.811356, 47.655548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272163, -0.027994, 0.961844,
		0.899427, -0.347857, -0.264626,
		0.341992, 0.937129, -0.069495,
		38.770618, 39.092495, 47.634701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152477, 38.370640, 48.040909>,  <38.531227, 38.436504, 47.683346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152477, 38.370640, 48.040909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048832, 38.756977, 48.040413>,  <38.986645, 38.988781, 48.040115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048832, 38.756977, 48.040413>,  <39.152477, 38.370640, 48.040909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048832, 38.756977, 48.040413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166774, 0.046008, 0.984921,
		0.951340, 0.254996, -0.172999,
		-0.259110, 0.965847, -0.001242,
		38.971100, 39.046730, 48.040039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646114, 38.622372, 48.390553>,  <39.152477, 38.370640, 48.040909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646114, 38.622372, 48.390553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.394154, 38.930470, 48.430439>,  <39.242977, 39.115330, 48.454372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.394154, 38.930470, 48.430439>,  <39.646114, 38.622372, 48.390553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394154, 38.930470, 48.430439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257177, 0.085699, 0.962557,
		0.732862, 0.631959, -0.252072,
		-0.629899, 0.770249, 0.099720,
		39.205185, 39.161545, 48.460354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067287, 39.172642, 48.628777>,  <39.646114, 38.622372, 48.390553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067287, 39.172642, 48.628777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682297, 39.224808, 48.723972>,  <39.451302, 39.256107, 48.781090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682297, 39.224808, 48.723972>,  <40.067287, 39.172642, 48.628777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682297, 39.224808, 48.723972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261067, 0.205534, 0.943186,
		0.074091, 0.969922, -0.231868,
		-0.962473, 0.130415, 0.237986,
		39.393555, 39.263931, 48.795368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953827, 39.887516, 48.978352>,  <40.067287, 39.172642, 48.628777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953827, 39.887516, 48.978352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644714, 39.655697, 49.081833>,  <39.459248, 39.516605, 49.143921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644714, 39.655697, 49.081833>,  <39.953827, 39.887516, 48.978352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644714, 39.655697, 49.081833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139836, 0.242126, 0.960115,
		-0.619074, 0.778137, -0.106069,
		-0.772783, -0.579550, 0.258706,
		39.412880, 39.481831, 49.159443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691910, 40.321625, 49.615761>,  <39.953827, 39.887516, 48.978352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691910, 40.321625, 49.615761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515739, 39.963104, 49.636467>,  <39.410038, 39.747993, 49.648891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.515739, 39.963104, 49.636467>,  <39.691910, 40.321625, 49.615761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515739, 39.963104, 49.636467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056409, 0.029916, 0.997960,
		-0.896016, 0.442445, 0.037383,
		-0.440423, -0.896297, 0.051763,
		39.383614, 39.694214, 49.651997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222847, 40.395233, 50.118641>,  <39.691910, 40.321625, 49.615761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222847, 40.395233, 50.118641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268002, 39.997917, 50.108543>,  <39.295094, 39.759529, 50.102486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.268002, 39.997917, 50.108543>,  <39.222847, 40.395233, 50.118641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268002, 39.997917, 50.108543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094086, -0.014609, 0.995457,
		-0.989143, -0.114748, 0.091805,
		0.112885, -0.993287, -0.025246,
		39.301868, 39.699932, 50.100971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760914, 40.011303, 50.579735>,  <39.222847, 40.395233, 50.118641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760914, 40.011303, 50.579735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131393, 39.885124, 50.497128>,  <39.353680, 39.809418, 50.447563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.131393, 39.885124, 50.497128>,  <38.760914, 40.011303, 50.579735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131393, 39.885124, 50.497128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247031, 0.093903, 0.964447,
		-0.284838, -0.944286, 0.164898,
		0.926198, -0.315446, -0.206520,
		39.409252, 39.790489, 50.435173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154572, 39.658596, 50.884640>,  <38.760914, 40.011303, 50.579735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154572, 39.658596, 50.884640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057804, 39.890057, 50.573093>,  <37.999744, 40.028934, 50.386166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057804, 39.890057, 50.573093>,  <38.154572, 39.658596, 50.884640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057804, 39.890057, 50.573093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855586, 0.251391, 0.452521,
		0.457653, 0.775863, 0.434270,
		-0.241923, 0.578653, -0.778867,
		37.985226, 40.063652, 50.339432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891315, 40.270920, 51.197060>,  <38.154572, 39.658596, 50.884640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891315, 40.270920, 51.197060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.750786, 40.247890, 50.823269>,  <37.666470, 40.234074, 50.598991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.750786, 40.247890, 50.823269>,  <37.891315, 40.270920, 51.197060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750786, 40.247890, 50.823269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902775, 0.285352, 0.321824,
		0.248127, 0.956692, -0.152228,
		-0.351325, -0.057574, -0.934482,
		37.645390, 40.230618, 50.542923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125477, 40.203270, 51.112240>,  <37.891315, 40.270920, 51.197060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125477, 40.203270, 51.112240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748451, 40.116386, 51.213749>,  <36.522236, 40.064255, 51.274654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748451, 40.116386, 51.213749>,  <37.125477, 40.203270, 51.112240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748451, 40.116386, 51.213749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099712, -0.542120, -0.834364,
		0.318809, -0.811742, 0.489322,
		-0.942559, -0.217212, 0.253773,
		36.465683, 40.051224, 51.289883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015007, 39.410770, 51.091568>,  <37.125477, 40.203270, 51.112240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015007, 39.410770, 51.091568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663261, 39.594307, 51.040676>,  <36.452213, 39.704430, 51.010143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663261, 39.594307, 51.040676>,  <37.015007, 39.410770, 51.091568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663261, 39.594307, 51.040676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197731, -0.594959, -0.779054,
		-0.433159, -0.659914, 0.613912,
		-0.879361, 0.458843, -0.127226,
		36.399452, 39.731960, 51.002506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374027, 38.885052, 51.174778>,  <37.015007, 39.410770, 51.091568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374027, 38.885052, 51.174778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249912, 39.198330, 50.959248>,  <36.175442, 39.386295, 50.829929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249912, 39.198330, 50.959248>,  <36.374027, 38.885052, 51.174778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249912, 39.198330, 50.959248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183349, -0.605458, -0.774470,
		-0.932795, -0.141515, 0.331463,
		-0.310286, 0.783195, -0.538822,
		36.156826, 39.433289, 50.797600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767315, 38.578552, 50.827366>,  <36.374027, 38.885052, 51.174778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767315, 38.578552, 50.827366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852322, 38.927174, 50.650627>,  <35.903328, 39.136349, 50.544586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.852322, 38.927174, 50.650627>,  <35.767315, 38.578552, 50.827366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852322, 38.927174, 50.650627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128477, -0.423325, -0.896822,
		-0.968674, 0.247360, 0.022010,
		0.212521, 0.871555, -0.441844,
		35.916077, 39.188641, 50.518074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261127, 38.632221, 50.295975>,  <35.767315, 38.578552, 50.827366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261127, 38.632221, 50.295975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556797, 38.876759, 50.182922>,  <35.734200, 39.023483, 50.115089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556797, 38.876759, 50.182922>,  <35.261127, 38.632221, 50.295975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556797, 38.876759, 50.182922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149340, -0.260419, -0.953876,
		-0.656751, 0.747287, -0.101196,
		0.739172, 0.611346, -0.282630,
		35.778549, 39.060162, 50.098133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049774, 39.092949, 49.633633>,  <35.261127, 38.632221, 50.295975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049774, 39.092949, 49.633633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447304, 39.136982, 49.639080>,  <35.685822, 39.163403, 49.642349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447304, 39.136982, 49.639080>,  <35.049774, 39.092949, 49.633633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447304, 39.136982, 49.639080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002103, 0.141474, -0.989940,
		-0.110905, 0.983802, 0.140832,
		0.993829, 0.110085, 0.013621,
		35.745453, 39.170006, 49.643166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152493, 39.696018, 49.255611>,  <35.049774, 39.092949, 49.633633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152493, 39.696018, 49.255611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484623, 39.475304, 49.224396>,  <35.683903, 39.342876, 49.205666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.484623, 39.475304, 49.224396>,  <35.152493, 39.696018, 49.255611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484623, 39.475304, 49.224396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045656, 0.072214, -0.996344,
		0.555406, 0.830852, 0.034769,
		0.830325, -0.551787, -0.078041,
		35.733719, 39.309769, 49.200985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517670, 40.017029, 48.599003>,  <35.152493, 39.696018, 49.255611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517670, 40.017029, 48.599003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720215, 39.681206, 48.677719>,  <35.841743, 39.479710, 48.724949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.720215, 39.681206, 48.677719>,  <35.517670, 40.017029, 48.599003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720215, 39.681206, 48.677719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128316, -0.152314, -0.979967,
		0.852718, 0.521475, 0.030603,
		0.506367, -0.839562, 0.196795,
		35.872124, 39.429337, 48.736759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231567, 39.973160, 48.308727>,  <35.517670, 40.017029, 48.599003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231567, 39.973160, 48.308727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076424, 39.604912, 48.326717>,  <35.983337, 39.383965, 48.337513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076424, 39.604912, 48.326717>,  <36.231567, 39.973160, 48.308727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076424, 39.604912, 48.326717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141989, -0.107895, -0.983970,
		0.910716, -0.375257, 0.172567,
		-0.387861, -0.920620, 0.044980,
		35.960064, 39.328728, 48.340210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690578, 39.688950, 47.867584>,  <36.231567, 39.973160, 48.308727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690578, 39.688950, 47.867584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407799, 39.407368, 47.894924>,  <36.238129, 39.238419, 47.911327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.407799, 39.407368, 47.894924>,  <36.690578, 39.688950, 47.867584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407799, 39.407368, 47.894924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194723, -0.286628, -0.938045,
		0.679928, -0.649844, 0.339707,
		-0.706952, -0.703951, 0.068347,
		36.195713, 39.196182, 47.915428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033451, 39.147999, 47.507244>,  <36.690578, 39.688950, 47.867584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033451, 39.147999, 47.507244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645351, 39.051331, 47.513000>,  <36.412491, 38.993328, 47.516453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645351, 39.051331, 47.513000>,  <37.033451, 39.147999, 47.507244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645351, 39.051331, 47.513000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046326, -0.243672, -0.968751,
		0.237630, -0.939264, 0.247618,
		-0.970250, -0.241675, 0.014392,
		36.354275, 38.978828, 47.517319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019974, 38.527252, 47.276333>,  <37.033451, 39.147999, 47.507244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019974, 38.527252, 47.276333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651981, 38.664711, 47.200916>,  <36.431187, 38.747185, 47.155666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651981, 38.664711, 47.200916>,  <37.019974, 38.527252, 47.276333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651981, 38.664711, 47.200916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091904, -0.278491, -0.956032,
		-0.381047, -0.896855, 0.224622,
		-0.919977, 0.343649, -0.188542,
		36.375988, 38.767807, 47.144352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698788, 37.921425, 46.855278>,  <37.019974, 38.527252, 47.276333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698788, 37.921425, 46.855278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509663, 38.270447, 46.806137>,  <36.396187, 38.479862, 46.776653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509663, 38.270447, 46.806137>,  <36.698788, 37.921425, 46.855278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509663, 38.270447, 46.806137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024962, -0.152627, -0.987968,
		-0.880811, -0.464054, 0.093944,
		-0.472809, 0.872559, -0.122852,
		36.367821, 38.532215, 46.769283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172913, 37.658779, 46.319427>,  <36.698788, 37.921425, 46.855278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172913, 37.658779, 46.319427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206806, 38.057034, 46.335064>,  <36.227142, 38.295986, 46.344448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206806, 38.057034, 46.335064>,  <36.172913, 37.658779, 46.319427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206806, 38.057034, 46.335064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017164, 0.037772, -0.999139,
		-0.996256, 0.085334, -0.013888,
		0.084736, 0.995636, 0.039096,
		36.232227, 38.355724, 46.346794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881985, 37.859688, 45.722439>,  <36.172913, 37.658779, 46.319427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881985, 37.859688, 45.722439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056526, 38.197060, 45.847797>,  <36.161251, 38.399483, 45.923012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.056526, 38.197060, 45.847797>,  <35.881985, 37.859688, 45.722439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056526, 38.197060, 45.847797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050357, 0.370646, -0.927408,
		-0.898364, 0.388897, 0.204206,
		0.436355, 0.843433, 0.313392,
		36.187431, 38.450089, 45.941814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528183, 38.491692, 45.569344>,  <35.881985, 37.859688, 45.722439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528183, 38.491692, 45.569344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915630, 38.591118, 45.569008>,  <36.148098, 38.650772, 45.568806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915630, 38.591118, 45.569008>,  <35.528183, 38.491692, 45.569344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915630, 38.591118, 45.569008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119133, 0.461274, -0.879223,
		-0.218158, 0.851728, 0.476409,
		0.968615, 0.248565, -0.000838,
		36.206215, 38.665688, 45.568756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518188, 39.133739, 45.531906>,  <35.528183, 38.491692, 45.569344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518188, 39.133739, 45.531906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886917, 39.044312, 45.405251>,  <36.108154, 38.990654, 45.329258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886917, 39.044312, 45.405251>,  <35.518188, 39.133739, 45.531906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886917, 39.044312, 45.405251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239345, 0.314238, -0.918678,
		0.304890, 0.922643, 0.236161,
		0.921822, -0.223571, -0.316638,
		36.163464, 38.977242, 45.310261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874599, 39.749100, 45.136105>,  <35.518188, 39.133739, 45.531906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874599, 39.749100, 45.136105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058308, 39.418682, 45.005436>,  <36.168533, 39.220432, 44.927036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058308, 39.418682, 45.005436>,  <35.874599, 39.749100, 45.136105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058308, 39.418682, 45.005436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101244, 0.316674, -0.943116,
		0.882507, 0.466221, 0.061808,
		0.459273, -0.826048, -0.326668,
		36.196091, 39.170868, 44.907436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293495, 39.930561, 44.563942>,  <35.874599, 39.749100, 45.136105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293495, 39.930561, 44.563942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246075, 39.536407, 44.515007>,  <36.217621, 39.299915, 44.485645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246075, 39.536407, 44.515007>,  <36.293495, 39.930561, 44.563942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246075, 39.536407, 44.515007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246299, 0.148539, -0.957743,
		0.961916, -0.083410, -0.260308,
		-0.118551, -0.985382, -0.122338,
		36.210510, 39.240791, 44.478306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667290, 39.780872, 43.879471>,  <36.293495, 39.930561, 44.563942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667290, 39.780872, 43.879471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443039, 39.457951, 43.953186>,  <36.308487, 39.264198, 43.997414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443039, 39.457951, 43.953186>,  <36.667290, 39.780872, 43.879471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443039, 39.457951, 43.953186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233437, -0.059441, -0.970554,
		0.794485, -0.587136, -0.155131,
		-0.560625, -0.807303, 0.184284,
		36.274853, 39.215759, 44.008472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.665607, 30.706402, 42.776817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358490, 30.639832, 42.529335>,  <41.174221, 30.599890, 42.380844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358490, 30.639832, 42.529335>,  <41.665607, 30.706402, 42.776817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358490, 30.639832, 42.529335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529184, 0.379667, -0.758826,
		0.361188, -0.910031, -0.203437,
		-0.767794, -0.166423, -0.618705,
		41.128151, 30.589903, 42.343723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781830, 30.202456, 42.195530>,  <41.665607, 30.706402, 42.776817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781830, 30.202456, 42.195530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499237, 30.474539, 42.117359>,  <41.329681, 30.637789, 42.070457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.499237, 30.474539, 42.117359>,  <41.781830, 30.202456, 42.195530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499237, 30.474539, 42.117359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434590, 0.199016, -0.878365,
		-0.558579, -0.705484, -0.436214,
		-0.706485, 0.680210, -0.195430,
		41.287292, 30.678602, 42.058731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559147, 30.064257, 41.480476>,  <41.781830, 30.202456, 42.195530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559147, 30.064257, 41.480476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431931, 30.437223, 41.549114>,  <41.355602, 30.661003, 41.590298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431931, 30.437223, 41.549114>,  <41.559147, 30.064257, 41.480476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431931, 30.437223, 41.549114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425709, 0.302170, -0.852916,
		-0.847125, -0.198213, -0.493042,
		-0.318041, 0.932419, 0.171594,
		41.336517, 30.716949, 41.600594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051949, 30.202257, 41.054295>,  <41.559147, 30.064257, 41.480476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051949, 30.202257, 41.054295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224228, 30.548145, 41.157646>,  <41.327595, 30.755678, 41.219658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.224228, 30.548145, 41.157646>,  <41.051949, 30.202257, 41.054295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224228, 30.548145, 41.157646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326442, 0.117642, -0.937868,
		-0.841389, 0.488282, -0.231613,
		0.430696, 0.864720, 0.258378,
		41.353436, 30.807562, 41.235161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803669, 30.598093, 40.625526>,  <41.051949, 30.202257, 41.054295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803669, 30.598093, 40.625526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106918, 30.821363, 40.760395>,  <41.288868, 30.955326, 40.841316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106918, 30.821363, 40.760395>,  <40.803669, 30.598093, 40.625526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106918, 30.821363, 40.760395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198693, 0.294737, -0.934693,
		-0.621101, 0.775608, 0.112542,
		0.758126, 0.558178, 0.337169,
		41.334354, 30.988817, 40.861546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760212, 31.166254, 40.266376>,  <40.803669, 30.598093, 40.625526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760212, 31.166254, 40.266376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135574, 31.152643, 40.403919>,  <41.360790, 31.144476, 40.486446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.135574, 31.152643, 40.403919>,  <40.760212, 31.166254, 40.266376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135574, 31.152643, 40.403919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345000, 0.147752, -0.926900,
		-0.019264, 0.988439, 0.150391,
		0.938405, -0.034029, 0.343858,
		41.417095, 31.142435, 40.507076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065495, 31.602251, 39.905281>,  <40.760212, 31.166254, 40.266376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065495, 31.602251, 39.905281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406513, 31.462870, 40.061100>,  <41.611126, 31.379240, 40.154591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406513, 31.462870, 40.061100>,  <41.065495, 31.602251, 39.905281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406513, 31.462870, 40.061100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482317, 0.237428, -0.843207,
		0.201330, 0.906757, 0.370484,
		0.852547, -0.348454, 0.389543,
		41.662277, 31.358334, 40.177963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547268, 32.113014, 39.917686>,  <41.065495, 31.602251, 39.905281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547268, 32.113014, 39.917686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.734928, 31.760427, 39.896061>,  <41.847523, 31.548876, 39.883087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.734928, 31.760427, 39.896061>,  <41.547268, 32.113014, 39.917686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734928, 31.760427, 39.896061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453661, 0.293071, -0.841606,
		0.757689, 0.370312, 0.537379,
		0.469147, -0.881464, -0.054060,
		41.875671, 31.495989, 39.879845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324974, 32.326214, 39.803493>,  <41.547268, 32.113014, 39.917686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324974, 32.326214, 39.803493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257488, 31.943979, 39.706841>,  <42.216995, 31.714638, 39.648849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.257488, 31.943979, 39.706841>,  <42.324974, 32.326214, 39.803493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257488, 31.943979, 39.706841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538964, 0.115816, -0.834329,
		0.825259, -0.270998, 0.495487,
		-0.168716, -0.955587, -0.241636,
		42.206875, 31.657303, 39.634350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067753, 32.017128, 39.608135>,  <42.324974, 32.326214, 39.803493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067753, 32.017128, 39.608135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775570, 31.793749, 39.450874>,  <42.600262, 31.659721, 39.356518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775570, 31.793749, 39.450874>,  <43.067753, 32.017128, 39.608135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775570, 31.793749, 39.450874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229227, 0.341794, -0.911390,
		0.643340, -0.755853, -0.121655,
		-0.730458, -0.558447, -0.393152,
		42.556431, 31.626215, 39.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406738, 31.690870, 39.110794>,  <43.067753, 32.017128, 39.608135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406738, 31.690870, 39.110794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019382, 31.669832, 39.013256>,  <42.786968, 31.657209, 38.954735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019382, 31.669832, 39.013256>,  <43.406738, 31.690870, 39.110794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019382, 31.669832, 39.013256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234586, 0.140397, -0.961903,
		0.084824, -0.988697, -0.123621,
		-0.968388, -0.052593, -0.243844,
		42.728867, 31.654055, 38.940102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467365, 31.538883, 38.465714>,  <43.406738, 31.690870, 39.110794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467365, 31.538883, 38.465714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078793, 31.633636, 38.459927>,  <42.845650, 31.690489, 38.456455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078793, 31.633636, 38.459927>,  <43.467365, 31.538883, 38.465714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078793, 31.633636, 38.459927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032156, 0.070968, -0.996960,
		-0.235138, -0.968942, -0.076558,
		-0.971430, 0.236885, -0.014471,
		42.787365, 31.704702, 38.455585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066982, 31.074631, 38.051758>,  <43.467365, 31.538883, 38.465714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066982, 31.074631, 38.051758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886574, 31.431324, 38.066654>,  <42.778328, 31.645340, 38.075592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.886574, 31.431324, 38.066654>,  <43.066982, 31.074631, 38.051758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886574, 31.431324, 38.066654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273569, 0.177848, -0.945267,
		-0.849550, -0.416151, -0.324165,
		-0.451026, 0.891734, 0.037245,
		42.751266, 31.698845, 38.077827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736019, 31.146183, 37.368462>,  <43.066982, 31.074631, 38.051758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736019, 31.146183, 37.368462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.716049, 31.523781, 37.498928>,  <42.704067, 31.750340, 37.577206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.716049, 31.523781, 37.498928>,  <42.736019, 31.146183, 37.368462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716049, 31.523781, 37.498928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178704, 0.329742, -0.927003,
		-0.982635, 0.012010, -0.185157,
		-0.049920, 0.943995, 0.326163,
		42.701073, 31.806980, 37.596775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355129, 31.575750, 36.839195>,  <42.736019, 31.146183, 37.368462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355129, 31.575750, 36.839195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.587082, 31.817614, 37.057598>,  <42.726254, 31.962730, 37.188641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.587082, 31.817614, 37.057598>,  <42.355129, 31.575750, 36.839195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587082, 31.817614, 37.057598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407131, 0.365433, -0.837080,
		-0.705675, 0.707707, -0.034266,
		0.579885, 0.604657, 0.546006,
		42.761047, 31.999010, 37.221401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204140, 32.210114, 36.450386>,  <42.355129, 31.575750, 36.839195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204140, 32.210114, 36.450386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.533325, 32.276108, 36.667831>,  <42.730835, 32.315704, 36.798298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.533325, 32.276108, 36.667831>,  <42.204140, 32.210114, 36.450386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533325, 32.276108, 36.667831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326145, 0.646279, -0.689893,
		-0.465150, 0.745051, 0.478052,
		0.822961, 0.164989, 0.543612,
		42.780212, 32.325603, 36.830914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339146, 32.928814, 36.330410>,  <42.204140, 32.210114, 36.450386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339146, 32.928814, 36.330410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683659, 32.763226, 36.448277>,  <42.890366, 32.663872, 36.518997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683659, 32.763226, 36.448277>,  <42.339146, 32.928814, 36.330410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683659, 32.763226, 36.448277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495963, 0.558698, -0.664739,
		0.110551, 0.718669, 0.686508,
		0.861278, -0.413970, 0.294669,
		42.942043, 32.639034, 36.536678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883282, 33.488621, 36.481728>,  <42.339146, 32.928814, 36.330410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883282, 33.488621, 36.481728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077049, 33.151264, 36.388744>,  <43.193310, 32.948853, 36.332954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.077049, 33.151264, 36.388744>,  <42.883282, 33.488621, 36.481728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077049, 33.151264, 36.388744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447637, 0.467253, -0.762428,
		0.751637, 0.265280, 0.603878,
		0.484420, -0.843387, -0.232456,
		43.222374, 32.898247, 36.319008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551735, 33.818527, 36.299953>,  <42.883282, 33.488621, 36.481728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551735, 33.818527, 36.299953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548157, 33.434757, 36.187229>,  <43.546009, 33.204494, 36.119595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.548157, 33.434757, 36.187229>,  <43.551735, 33.818527, 36.299953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548157, 33.434757, 36.187229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488906, 0.241641, -0.838200,
		0.872290, -0.145279, 0.466908,
		-0.008949, -0.959429, -0.281809,
		43.545471, 33.146927, 36.102688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335594, 33.619526, 36.283115>,  <43.551735, 33.818527, 36.299953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335594, 33.619526, 36.283115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136963, 33.374111, 36.037521>,  <44.017784, 33.226864, 35.890163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136963, 33.374111, 36.037521>,  <44.335594, 33.619526, 36.283115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136963, 33.374111, 36.037521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613173, 0.252699, -0.748440,
		0.614350, -0.748141, 0.250719,
		-0.496582, -0.613538, -0.613985,
		43.987988, 33.190048, 35.853325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767967, 33.513882, 35.796486>,  <44.335594, 33.619526, 36.283115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767967, 33.513882, 35.796486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.437229, 33.352005, 35.640259>,  <44.238785, 33.254879, 35.546520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.437229, 33.352005, 35.640259>,  <44.767967, 33.513882, 35.796486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437229, 33.352005, 35.640259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371799, 0.127755, -0.919480,
		0.422007, -0.905483, 0.044832,
		-0.826846, -0.404696, -0.390571,
		44.189175, 33.230595, 35.523087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439064, 33.697380, 36.213928>,  <44.767967, 33.513882, 35.796486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439064, 33.697380, 36.213928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.838783, 33.694893, 36.228752>,  <46.078613, 33.693401, 36.237648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.838783, 33.694893, 36.228752>,  <45.439064, 33.697380, 36.213928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838783, 33.694893, 36.228752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028601, -0.765550, 0.642741,
		0.024373, -0.643346, -0.765187,
		0.999294, -0.006220, 0.037059,
		46.138573, 33.693027, 36.239868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555916, 33.085220, 36.028557>,  <45.439064, 33.697380, 36.213928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555916, 33.085220, 36.028557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.902431, 33.184731, 36.201832>,  <46.110340, 33.244434, 36.305798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.902431, 33.184731, 36.201832>,  <45.555916, 33.085220, 36.028557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902431, 33.184731, 36.201832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049648, -0.820002, 0.570203,
		0.497066, -0.515469, -0.698009,
		0.866291, 0.248774, 0.433187,
		46.162319, 33.259361, 36.331787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055130, 32.442173, 36.002129>,  <45.555916, 33.085220, 36.028557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055130, 32.442173, 36.002129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175900, 32.679733, 36.300423>,  <46.248360, 32.822269, 36.479401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175900, 32.679733, 36.300423>,  <46.055130, 32.442173, 36.002129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175900, 32.679733, 36.300423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145080, -0.744511, 0.651656,
		0.942228, -0.304943, -0.138623,
		0.301924, 0.593897, 0.745740,
		46.266476, 32.857903, 36.524143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.552204, 32.070595, 36.410378>,  <46.055130, 32.442173, 36.002129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.552204, 32.070595, 36.410378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.423859, 32.357838, 36.657394>,  <46.346851, 32.530186, 36.805607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.423859, 32.357838, 36.657394>,  <46.552204, 32.070595, 36.410378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423859, 32.357838, 36.657394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074027, -0.631012, 0.772233,
		0.944228, 0.293496, 0.149309,
		-0.320863, 0.718111, 0.617546,
		46.327599, 32.573273, 36.842659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992565, 31.937204, 36.952225>,  <46.552204, 32.070595, 36.410378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992565, 31.937204, 36.952225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.687599, 32.154316, 37.093147>,  <46.504620, 32.284584, 37.177700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.687599, 32.154316, 37.093147>,  <46.992565, 31.937204, 36.952225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687599, 32.154316, 37.093147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023737, -0.520620, 0.853459,
		0.646657, 0.659050, 0.384042,
		-0.762412, 0.542779, 0.352306,
		46.458878, 32.317150, 37.198837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186935, 32.068638, 37.659344>,  <46.992565, 31.937204, 36.952225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186935, 32.068638, 37.659344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.789925, 32.113739, 37.640636>,  <46.551720, 32.140800, 37.629414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.789925, 32.113739, 37.640636>,  <47.186935, 32.068638, 37.659344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789925, 32.113739, 37.640636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097447, -0.501198, 0.859828,
		0.073507, 0.857956, 0.508438,
		-0.992522, 0.112749, -0.046764,
		46.492168, 32.147564, 37.626606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.030415, 32.215645, 38.321289>,  <47.186935, 32.068638, 37.659344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.030415, 32.215645, 38.321289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.674828, 32.130924, 38.158867>,  <46.461475, 32.080090, 38.061413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.674828, 32.130924, 38.158867>,  <47.030415, 32.215645, 38.321289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.674828, 32.130924, 38.158867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333805, -0.307361, 0.891125,
		-0.313547, 0.927722, 0.202533,
		-0.888967, -0.211803, -0.406051,
		46.408138, 32.067383, 38.037052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564926, 32.512669, 38.730598>,  <47.030415, 32.215645, 38.321289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564926, 32.512669, 38.730598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.361500, 32.217735, 38.552746>,  <46.239445, 32.040775, 38.446033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.361500, 32.217735, 38.552746>,  <46.564926, 32.512669, 38.730598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361500, 32.217735, 38.552746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470080, -0.194876, 0.860841,
		-0.721375, 0.646810, -0.247498,
		-0.508570, -0.737333, -0.444631,
		46.208927, 31.996534, 38.419357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920303, 32.576180, 39.018574>,  <46.564926, 32.512669, 38.730598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920303, 32.576180, 39.018574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.952404, 32.201794, 38.881443>,  <45.971664, 31.977161, 38.799164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.952404, 32.201794, 38.881443>,  <45.920303, 32.576180, 39.018574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952404, 32.201794, 38.881443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223994, -0.352071, 0.908775,
		-0.971281, 0.003856, -0.237906,
		0.080255, -0.935965, -0.342823,
		45.976482, 31.921003, 38.778595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315182, 32.284195, 39.274345>,  <45.920303, 32.576180, 39.018574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315182, 32.284195, 39.274345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.525589, 31.963877, 39.159782>,  <45.651833, 31.771685, 39.091045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.525589, 31.963877, 39.159782>,  <45.315182, 32.284195, 39.274345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525589, 31.963877, 39.159782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412631, -0.534777, 0.737394,
		-0.743670, -0.269698, -0.611734,
		0.526015, -0.800798, -0.286412,
		45.683395, 31.723637, 39.073860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841854, 31.741058, 39.091484>,  <45.315182, 32.284195, 39.274345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841854, 31.741058, 39.091484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188892, 31.561972, 39.178047>,  <45.397114, 31.454519, 39.229984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188892, 31.561972, 39.178047>,  <44.841854, 31.741058, 39.091484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188892, 31.561972, 39.178047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429112, -0.454139, 0.780782,
		-0.251291, -0.770264, -0.586128,
		0.867592, -0.447718, 0.216408,
		45.449169, 31.427656, 39.242970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746853, 30.969444, 39.092979>,  <44.841854, 31.741058, 39.091484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746853, 30.969444, 39.092979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045383, 31.071611, 39.338825>,  <45.224503, 31.132912, 39.486332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045383, 31.071611, 39.338825>,  <44.746853, 30.969444, 39.092979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045383, 31.071611, 39.338825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420317, -0.535136, 0.732778,
		0.516068, -0.805228, -0.292032,
		0.746330, 0.255418, 0.614617,
		45.269283, 31.148237, 39.523209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682522, 30.510706, 39.493652>,  <44.746853, 30.969444, 39.092979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682522, 30.510706, 39.493652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950249, 30.702391, 39.720760>,  <45.110886, 30.817402, 39.857025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.950249, 30.702391, 39.720760>,  <44.682522, 30.510706, 39.493652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950249, 30.702391, 39.720760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311970, -0.512289, 0.800147,
		0.674304, -0.712682, -0.193385,
		0.669319, 0.479212, 0.567774,
		45.151043, 30.846155, 39.891094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000107, 30.032255, 39.964130>,  <44.682522, 30.510706, 39.493652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000107, 30.032255, 39.964130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051769, 30.390900, 40.133556>,  <45.082767, 30.606087, 40.235210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.051769, 30.390900, 40.133556>,  <45.000107, 30.032255, 39.964130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051769, 30.390900, 40.133556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364184, -0.354400, 0.861261,
		0.922328, -0.265490, 0.280760,
		0.129155, 0.896613, 0.423561,
		45.090515, 30.659883, 40.260624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291088, 29.894981, 40.657360>,  <45.000107, 30.032255, 39.964130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291088, 29.894981, 40.657360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129852, 30.260502, 40.677311>,  <45.033112, 30.479815, 40.689281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129852, 30.260502, 40.677311>,  <45.291088, 29.894981, 40.657360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129852, 30.260502, 40.677311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302729, -0.184569, 0.935035,
		0.863642, 0.361801, 0.351032,
		-0.403086, 0.913802, 0.049874,
		45.008926, 30.534643, 40.692272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417664, 30.204491, 41.369366>,  <45.291088, 29.894981, 40.657360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417664, 30.204491, 41.369366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149746, 30.459988, 41.217899>,  <44.988995, 30.613285, 41.127022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149746, 30.459988, 41.217899>,  <45.417664, 30.204491, 41.369366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149746, 30.459988, 41.217899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438821, 0.070885, 0.895774,
		0.599010, 0.766149, 0.232816,
		-0.669793, 0.638742, -0.378663,
		44.948807, 30.651609, 41.104301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291420, 30.702599, 41.958458>,  <45.417664, 30.204491, 41.369366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291420, 30.702599, 41.958458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.974648, 30.746567, 41.718201>,  <44.784584, 30.772947, 41.574047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.974648, 30.746567, 41.718201>,  <45.291420, 30.702599, 41.958458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974648, 30.746567, 41.718201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604632, -0.003812, 0.796496,
		0.085262, 0.993933, 0.069481,
		-0.791928, 0.109922, -0.600639,
		44.737068, 30.779543, 41.538010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841927, 31.256062, 42.251759>,  <45.291420, 30.702599, 41.958458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841927, 31.256062, 42.251759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612514, 31.012367, 42.032707>,  <44.474869, 30.866150, 41.901276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.612514, 31.012367, 42.032707>,  <44.841927, 31.256062, 42.251759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612514, 31.012367, 42.032707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681523, -0.016053, 0.731621,
		-0.454521, 0.792826, -0.406003,
		-0.573530, -0.609237, -0.547625,
		44.440456, 30.829596, 41.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146271, 31.426830, 42.476673>,  <44.841927, 31.256062, 42.251759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146271, 31.426830, 42.476673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096539, 31.073942, 42.295021>,  <44.066700, 30.862209, 42.186031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.096539, 31.073942, 42.295021>,  <44.146271, 31.426830, 42.476673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096539, 31.073942, 42.295021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702909, -0.244724, 0.667854,
		-0.700329, 0.402246, -0.589693,
		-0.124329, -0.882218, -0.454130,
		44.059238, 30.809277, 42.158783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468170, 31.373568, 42.401417>,  <44.146271, 31.426830, 42.476673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468170, 31.373568, 42.401417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594425, 30.996672, 42.356602>,  <43.670177, 30.770535, 42.329712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594425, 30.996672, 42.356602>,  <43.468170, 31.373568, 42.401417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594425, 30.996672, 42.356602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594751, -0.288458, 0.750375,
		-0.739353, -0.170213, -0.651448,
		0.315639, -0.942242, -0.112038,
		43.689117, 30.713999, 42.322990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806656, 30.979824, 42.399067>,  <43.468170, 31.373568, 42.401417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806656, 30.979824, 42.399067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.120396, 30.751013, 42.495045>,  <43.308640, 30.613726, 42.552631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.120396, 30.751013, 42.495045>,  <42.806656, 30.979824, 42.399067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120396, 30.751013, 42.495045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488545, -0.331292, 0.807199,
		-0.382251, -0.750351, -0.539312,
		0.784352, -0.572031, 0.239944,
		43.355701, 30.579403, 42.567028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.294632, 38.886276, 38.856163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991173, 38.659832, 38.985146>,  <38.809097, 38.523968, 39.062534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991173, 38.659832, 38.985146>,  <39.294632, 38.886276, 38.856163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991173, 38.659832, 38.985146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170277, -0.650030, -0.740585,
		0.628855, -0.506936, 0.589539,
		-0.758648, -0.566106, 0.322455,
		38.763577, 38.490002, 39.081882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520054, 38.335815, 38.598404>,  <39.294632, 38.886276, 38.856163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520054, 38.335815, 38.598404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152473, 38.236828, 38.721226>,  <38.931923, 38.177437, 38.794918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152473, 38.236828, 38.721226>,  <39.520054, 38.335815, 38.598404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152473, 38.236828, 38.721226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044546, -0.708485, -0.704319,
		0.391842, -0.660915, 0.640041,
		-0.918954, -0.247470, 0.307055,
		38.876789, 38.162586, 38.813343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456402, 37.473091, 38.672081>,  <39.520054, 38.335815, 38.598404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456402, 37.473091, 38.672081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094559, 37.636318, 38.622833>,  <38.877453, 37.734253, 38.593285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094559, 37.636318, 38.622833>,  <39.456402, 37.473091, 38.672081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094559, 37.636318, 38.622833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224330, -0.701424, -0.676520,
		-0.362427, -0.584368, 0.726058,
		-0.904612, 0.408066, -0.123124,
		38.823174, 37.758739, 38.585896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911129, 36.973099, 38.986797>,  <39.456402, 37.473091, 38.672081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911129, 36.973099, 38.986797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748375, 37.212223, 38.710518>,  <38.650723, 37.355698, 38.544750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748375, 37.212223, 38.710518>,  <38.911129, 36.973099, 38.986797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748375, 37.212223, 38.710518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304983, -0.801636, -0.514165,
		-0.861066, 0.001449, 0.508492,
		-0.406880, 0.597811, -0.690703,
		38.626312, 37.391567, 38.503307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248821, 36.743214, 38.847248>,  <38.911129, 36.973099, 38.986797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248821, 36.743214, 38.847248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324074, 36.973129, 38.528694>,  <38.369225, 37.111076, 38.337563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324074, 36.973129, 38.528694>,  <38.248821, 36.743214, 38.847248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324074, 36.973129, 38.528694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256518, -0.753960, -0.604768,
		-0.948053, 0.318064, 0.005596,
		0.188136, 0.574787, -0.796382,
		38.380516, 37.145565, 38.289780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821625, 36.434460, 38.342377>,  <38.248821, 36.743214, 38.847248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821625, 36.434460, 38.342377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035118, 36.682980, 38.112904>,  <38.163212, 36.832092, 37.975220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035118, 36.682980, 38.112904>,  <37.821625, 36.434460, 38.342377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035118, 36.682980, 38.112904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114693, -0.618939, -0.777020,
		-0.837840, 0.480518, -0.259088,
		0.533732, 0.621303, -0.573684,
		38.195236, 36.869370, 37.940800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373791, 36.514191, 37.758591>,  <37.821625, 36.434460, 38.342377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373791, 36.514191, 37.758591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754002, 36.577877, 37.651890>,  <37.982128, 36.616089, 37.587868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754002, 36.577877, 37.651890>,  <37.373791, 36.514191, 37.758591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754002, 36.577877, 37.651890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130273, -0.575248, -0.807539,
		-0.282019, 0.802335, -0.526045,
		0.950523, 0.159212, -0.266753,
		38.039158, 36.625641, 37.571865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238747, 36.649773, 37.129616>,  <37.373791, 36.514191, 37.758591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238747, 36.649773, 37.129616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627148, 36.558533, 37.158241>,  <37.860188, 36.503788, 37.175415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627148, 36.558533, 37.158241>,  <37.238747, 36.649773, 37.129616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627148, 36.558533, 37.158241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120876, -0.726708, -0.676228,
		0.206256, 0.647970, -0.733208,
		0.971003, -0.228103, 0.071564,
		37.918449, 36.490101, 37.179710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562782, 36.609344, 36.404156>,  <37.238747, 36.649773, 37.129616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562782, 36.609344, 36.404156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791512, 36.380470, 36.639313>,  <37.928749, 36.243145, 36.780407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791512, 36.380470, 36.639313>,  <37.562782, 36.609344, 36.404156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791512, 36.380470, 36.639313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164364, -0.781990, -0.601229,
		0.803745, 0.247166, -0.541205,
		0.571820, -0.572190, 0.587895,
		37.963058, 36.208813, 36.815681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980896, 36.075684, 35.913334>,  <37.562782, 36.609344, 36.404156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980896, 36.075684, 35.913334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991333, 35.919750, 36.281540>,  <37.997593, 35.826191, 36.502464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991333, 35.919750, 36.281540>,  <37.980896, 36.075684, 35.913334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991333, 35.919750, 36.281540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179982, -0.907613, -0.379269,
		0.983324, -0.155782, -0.093842,
		0.026089, -0.389834, 0.920515,
		37.999161, 35.802799, 36.557693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200527, 35.447479, 35.768719>,  <37.980896, 36.075684, 35.913334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200527, 35.447479, 35.768719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030384, 35.434784, 36.130505>,  <37.928299, 35.427166, 36.347576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030384, 35.434784, 36.130505>,  <38.200527, 35.447479, 35.768719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030384, 35.434784, 36.130505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425354, -0.875117, -0.230746,
		0.798839, -0.482869, 0.358738,
		-0.425358, -0.031738, 0.904469,
		37.902775, 35.425262, 36.401844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291100, 34.790085, 35.999302>,  <38.200527, 35.447479, 35.768719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291100, 34.790085, 35.999302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968876, 34.905430, 36.206348>,  <37.775543, 34.974636, 36.330574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968876, 34.905430, 36.206348>,  <38.291100, 34.790085, 35.999302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968876, 34.905430, 36.206348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459552, -0.855500, -0.238604,
		0.374015, -0.430081, 0.821671,
		-0.805559, 0.288359, 0.517615,
		37.727207, 34.991936, 36.361633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714043, 34.223423, 36.322395>,  <38.291100, 34.790085, 35.999302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714043, 34.223423, 36.322395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469658, 34.054127, 36.054787>,  <38.323029, 33.952549, 35.894222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469658, 34.054127, 36.054787>,  <38.714043, 34.223423, 36.322395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469658, 34.054127, 36.054787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741604, -0.601720, -0.296574,
		-0.277043, -0.677346, 0.681506,
		-0.610959, -0.423244, -0.669025,
		38.286369, 33.927155, 35.854080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730785, 33.583157, 36.283855>,  <38.714043, 34.223423, 36.322395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730785, 33.583157, 36.283855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583492, 33.643055, 35.916817>,  <38.495117, 33.678993, 35.696594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583492, 33.643055, 35.916817>,  <38.730785, 33.583157, 36.283855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583492, 33.643055, 35.916817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649198, -0.665083, -0.369061,
		-0.665546, -0.731600, 0.147682,
		-0.368226, 0.149752, -0.917597,
		38.473022, 33.687977, 35.641537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320515, 33.149635, 36.220909>,  <38.730785, 33.583157, 36.283855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320515, 33.149635, 36.220909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419178, 32.764660, 36.266300>,  <39.478378, 32.533676, 36.293533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419178, 32.764660, 36.266300>,  <39.320515, 33.149635, 36.220909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419178, 32.764660, 36.266300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546484, -0.041437, 0.836444,
		-0.800321, -0.268330, -0.536176,
		0.246661, -0.962435, 0.113476,
		39.493176, 32.475929, 36.300343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656494, 32.778591, 36.318245>,  <39.320515, 33.149635, 36.220909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656494, 32.778591, 36.318245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936249, 32.547768, 36.486942>,  <39.104103, 32.409275, 36.588161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936249, 32.547768, 36.486942>,  <38.656494, 32.778591, 36.318245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936249, 32.547768, 36.486942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516987, -0.000983, 0.855993,
		-0.493542, -0.816703, -0.299018,
		0.699386, -0.577057, 0.421739,
		39.146065, 32.374649, 36.613464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323391, 32.211765, 36.462894>,  <38.656494, 32.778591, 36.318245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323391, 32.211765, 36.462894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642651, 32.220200, 36.703732>,  <38.834206, 32.225262, 36.848232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642651, 32.220200, 36.703732>,  <38.323391, 32.211765, 36.462894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642651, 32.220200, 36.703732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590527, -0.170562, 0.788788,
		0.119327, -0.985121, -0.123681,
		0.798147, 0.021087, 0.602094,
		38.882095, 32.226524, 36.884361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263535, 31.560532, 36.874142>,  <38.323391, 32.211765, 36.462894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263535, 31.560532, 36.874142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512432, 31.810768, 37.062370>,  <38.661770, 31.960911, 37.175308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512432, 31.810768, 37.062370>,  <38.263535, 31.560532, 36.874142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512432, 31.810768, 37.062370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397183, -0.265706, 0.878434,
		0.674577, -0.733508, 0.083140,
		0.622247, 0.625594, 0.470575,
		38.699108, 31.998446, 37.203545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601715, 31.196941, 37.395378>,  <38.263535, 31.560532, 36.874142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601715, 31.196941, 37.395378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586433, 31.584108, 37.494720>,  <38.577267, 31.816408, 37.554325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586433, 31.584108, 37.494720>,  <38.601715, 31.196941, 37.395378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586433, 31.584108, 37.494720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450169, -0.238557, 0.860487,
		0.892126, -0.078932, 0.444839,
		-0.038199, 0.967916, 0.248356,
		38.574974, 31.874483, 37.569225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557888, 31.194801, 38.090252>,  <38.601715, 31.196941, 37.395378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557888, 31.194801, 38.090252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496197, 31.586582, 38.038277>,  <38.459183, 31.821651, 38.007092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496197, 31.586582, 38.038277>,  <38.557888, 31.194801, 38.090252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496197, 31.586582, 38.038277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423384, 0.053314, 0.904380,
		0.892726, 0.194495, 0.406462,
		-0.154227, 0.979454, -0.129941,
		38.449928, 31.880419, 37.999294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803547, 31.500946, 38.671494>,  <38.557888, 31.194801, 38.090252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803547, 31.500946, 38.671494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574413, 31.799541, 38.536076>,  <38.436932, 31.978699, 38.454826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574413, 31.799541, 38.536076>,  <38.803547, 31.500946, 38.671494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574413, 31.799541, 38.536076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486577, 0.022685, 0.873343,
		0.659623, 0.665009, 0.350230,
		-0.572836, 0.746491, -0.338542,
		38.402561, 32.023487, 38.434513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990108, 32.013351, 38.938084>,  <38.803547, 31.500946, 38.671494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990108, 32.013351, 38.938084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613998, 32.109333, 38.841507>,  <38.388332, 32.166924, 38.783562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613998, 32.109333, 38.841507>,  <38.990108, 32.013351, 38.938084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613998, 32.109333, 38.841507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211846, 0.142703, 0.966828,
		0.266449, 0.960238, -0.083348,
		-0.940280, 0.239954, -0.241445,
		38.331913, 32.181320, 38.769073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743271, 32.589649, 39.400269>,  <38.990108, 32.013351, 38.938084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743271, 32.589649, 39.400269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403854, 32.414795, 39.281010>,  <38.200207, 32.309883, 39.209454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403854, 32.414795, 39.281010>,  <38.743271, 32.589649, 39.400269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403854, 32.414795, 39.281010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324499, -0.015167, 0.945764,
		-0.417952, 0.899266, -0.128982,
		-0.848538, -0.437138, -0.298150,
		38.149292, 32.283653, 39.191566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251671, 33.038105, 39.708363>,  <38.743271, 32.589649, 39.400269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251671, 33.038105, 39.708363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097790, 32.679485, 39.620548>,  <38.005459, 32.464314, 39.567860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097790, 32.679485, 39.620548>,  <38.251671, 33.038105, 39.708363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097790, 32.679485, 39.620548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406978, -0.048718, 0.912138,
		-0.828474, 0.440251, -0.346135,
		-0.384706, -0.896552, -0.219534,
		37.982376, 32.410519, 39.554688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583237, 33.051037, 39.944672>,  <38.251671, 33.038105, 39.708363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583237, 33.051037, 39.944672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677284, 32.662395, 39.934093>,  <37.733715, 32.429211, 39.927746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677284, 32.662395, 39.934093>,  <37.583237, 33.051037, 39.944672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677284, 32.662395, 39.934093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515772, -0.147783, 0.843883,
		-0.823831, -0.184773, -0.535874,
		0.235121, -0.971606, -0.026448,
		37.747822, 32.370914, 39.926159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008904, 32.758030, 40.141144>,  <37.583237, 33.051037, 39.944672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008904, 32.758030, 40.141144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262367, 32.456509, 40.210724>,  <37.414444, 32.275597, 40.252472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262367, 32.456509, 40.210724>,  <37.008904, 32.758030, 40.141144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262367, 32.456509, 40.210724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425097, -0.151414, 0.892394,
		-0.646354, -0.639414, -0.416385,
		0.633656, -0.753806, 0.173946,
		37.452465, 32.230366, 40.262909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570415, 32.208187, 40.441856>,  <37.008904, 32.758030, 40.141144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570415, 32.208187, 40.441856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953651, 32.144753, 40.537277>,  <37.183594, 32.106693, 40.594532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953651, 32.144753, 40.537277>,  <36.570415, 32.208187, 40.441856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953651, 32.144753, 40.537277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249709, -0.054281, 0.966798,
		-0.140374, -0.985851, -0.091608,
		0.958092, -0.158589, 0.238556,
		37.241077, 32.097176, 40.608845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606659, 31.663231, 41.057945>,  <36.570415, 32.208187, 40.441856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606659, 31.663231, 41.057945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957928, 31.854519, 41.062199>,  <37.168690, 31.969292, 41.064751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957928, 31.854519, 41.062199>,  <36.606659, 31.663231, 41.057945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957928, 31.854519, 41.062199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052777, 0.074779, 0.995803,
		0.475418, -0.875051, 0.090908,
		0.878176, 0.478220, 0.010632,
		37.221382, 31.997984, 41.065388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365578, 30.999413, 41.101463>,  <36.606659, 31.663231, 41.057945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365578, 30.999413, 41.101463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992413, 30.921679, 41.222725>,  <35.768513, 30.875038, 41.295483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992413, 30.921679, 41.222725>,  <36.365578, 30.999413, 41.101463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992413, 30.921679, 41.222725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262086, -0.210879, -0.941722,
		0.246937, -0.958000, 0.145800,
		-0.932916, -0.194334, 0.303153,
		35.712536, 30.863379, 41.313671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279682, 30.462418, 40.653824>,  <36.365578, 30.999413, 41.101463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279682, 30.462418, 40.653824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930641, 30.618195, 40.771740>,  <35.721218, 30.711660, 40.842487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930641, 30.618195, 40.771740>,  <36.279682, 30.462418, 40.653824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930641, 30.618195, 40.771740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331481, -0.028921, -0.943019,
		-0.358729, -0.920595, 0.154330,
		-0.872602, 0.389446, 0.294785,
		35.668861, 30.735027, 40.860176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715649, 30.227558, 40.207115>,  <36.279682, 30.462418, 40.653824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715649, 30.227558, 40.207115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484089, 30.510088, 40.370079>,  <35.345154, 30.679605, 40.467857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484089, 30.510088, 40.370079>,  <35.715649, 30.227558, 40.207115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484089, 30.510088, 40.370079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615237, -0.050461, -0.786726,
		-0.535127, -0.706085, 0.463770,
		-0.578898, 0.706327, 0.407407,
		35.310421, 30.721987, 40.492302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049240, 30.094561, 39.950535>,  <35.715649, 30.227558, 40.207115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049240, 30.094561, 39.950535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038174, 30.475710, 40.071373>,  <35.031532, 30.704399, 40.143875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038174, 30.475710, 40.071373>,  <35.049240, 30.094561, 39.950535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038174, 30.475710, 40.071373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571000, 0.232993, -0.787193,
		-0.820484, -0.194277, 0.537646,
		-0.027666, 0.952875, 0.302099,
		35.029873, 30.761572, 40.162003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356815, 30.295010, 40.050999>,  <35.049240, 30.094561, 39.950535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356815, 30.295010, 40.050999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558620, 30.636698, 40.000759>,  <34.679703, 30.841711, 39.970615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558620, 30.636698, 40.000759>,  <34.356815, 30.295010, 40.050999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558620, 30.636698, 40.000759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703769, 0.322590, -0.632965,
		-0.500177, 0.407728, 0.763925,
		0.504512, 0.854221, -0.125594,
		34.709972, 30.892963, 39.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835304, 30.751530, 40.102089>,  <34.356815, 30.295010, 40.050999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835304, 30.751530, 40.102089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146427, 30.923277, 39.918503>,  <34.333103, 31.026325, 39.808350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146427, 30.923277, 39.918503>,  <33.835304, 30.751530, 40.102089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146427, 30.923277, 39.918503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626086, 0.465427, -0.625615,
		-0.055005, 0.773963, 0.630837,
		0.777812, 0.429370, -0.458967,
		34.379772, 31.052088, 39.780811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616299, 31.437479, 39.941456>,  <33.835304, 30.751530, 40.102089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616299, 31.437479, 39.941456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937641, 31.378387, 39.710701>,  <34.130447, 31.342932, 39.572247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937641, 31.378387, 39.710701>,  <33.616299, 31.437479, 39.941456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937641, 31.378387, 39.710701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470895, 0.435417, -0.767248,
		0.364532, 0.888025, 0.280228,
		0.803352, -0.147729, -0.576890,
		34.178646, 31.334068, 39.537632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822563, 32.131641, 39.599342>,  <33.616299, 31.437479, 39.941456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822563, 32.131641, 39.599342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970394, 31.849340, 39.357574>,  <34.059093, 31.679960, 39.212513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970394, 31.849340, 39.357574>,  <33.822563, 32.131641, 39.599342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970394, 31.849340, 39.357574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487932, 0.406178, -0.772620,
		0.790779, 0.580463, -0.194242,
		0.369581, -0.705749, -0.604424,
		34.081268, 31.637615, 39.176247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057350, 32.473122, 39.022755>,  <33.822563, 32.131641, 39.599342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057350, 32.473122, 39.022755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027180, 32.089756, 38.912659>,  <34.009079, 31.859737, 38.846600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027180, 32.089756, 38.912659>,  <34.057350, 32.473122, 39.022755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027180, 32.089756, 38.912659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336455, 0.284301, -0.897759,
		0.938674, 0.024893, -0.343905,
		-0.075424, -0.958412, -0.275242,
		34.004551, 31.802233, 38.830086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265156, 32.535210, 38.288937>,  <34.057350, 32.473122, 39.022755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265156, 32.535210, 38.288937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055935, 32.196865, 38.330753>,  <33.930401, 31.993858, 38.355843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055935, 32.196865, 38.330753>,  <34.265156, 32.535210, 38.288937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055935, 32.196865, 38.330753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331042, 0.088593, -0.939448,
		0.785384, -0.525988, -0.326356,
		-0.523052, -0.845865, 0.104545,
		33.899021, 31.943106, 38.362118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377968, 32.166801, 37.716286>,  <34.265156, 32.535210, 38.288937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377968, 32.166801, 37.716286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041595, 31.994553, 37.847378>,  <33.839771, 31.891203, 37.926033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041595, 31.994553, 37.847378>,  <34.377968, 32.166801, 37.716286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041595, 31.994553, 37.847378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428564, 0.160177, -0.889200,
		0.330418, -0.888203, -0.319248,
		-0.840926, -0.430625, 0.327727,
		33.789318, 31.865364, 37.945694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056145, 31.785978, 37.139446>,  <34.377968, 32.166801, 37.716286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056145, 31.785978, 37.139446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746006, 31.803331, 37.391464>,  <33.559921, 31.813744, 37.542675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746006, 31.803331, 37.391464>,  <34.056145, 31.785978, 37.139446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746006, 31.803331, 37.391464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631345, -0.077788, -0.771591,
		0.015539, -0.996026, 0.087700,
		-0.775346, 0.043380, 0.630045,
		33.513401, 31.816345, 37.580479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.193989, 30.548779, 45.037521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863033, 30.769686, 44.996689>,  <35.664459, 30.902231, 44.972187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.863033, 30.769686, 44.996689>,  <36.193989, 30.548779, 45.037521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863033, 30.769686, 44.996689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070342, -0.282236, -0.956763,
		-0.557203, -0.784437, 0.272367,
		-0.827392, 0.552270, -0.102084,
		35.614815, 30.935366, 44.966064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657757, 30.128380, 44.832966>,  <36.193989, 30.548779, 45.037521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657757, 30.128380, 44.832966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516605, 30.487640, 44.728046>,  <35.431915, 30.703196, 44.665096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516605, 30.487640, 44.728046>,  <35.657757, 30.128380, 44.832966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516605, 30.487640, 44.728046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213164, -0.350133, -0.912123,
		-0.911063, -0.265958, 0.315009,
		-0.352881, 0.898150, -0.262300,
		35.410740, 30.757086, 44.649357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133274, 30.067799, 44.452068>,  <35.657757, 30.128380, 44.832966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133274, 30.067799, 44.452068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.208595, 30.441214, 44.330051>,  <35.253788, 30.665262, 44.256844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.208595, 30.441214, 44.330051>,  <35.133274, 30.067799, 44.452068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208595, 30.441214, 44.330051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080435, -0.294891, -0.952139,
		-0.978811, 0.203828, 0.019559,
		0.188305, 0.933538, -0.305038,
		35.265087, 30.721275, 44.238541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692902, 30.228846, 43.912094>,  <35.133274, 30.067799, 44.452068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692902, 30.228846, 43.912094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.969639, 30.514950, 43.872585>,  <35.135681, 30.686611, 43.848881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.969639, 30.514950, 43.872585>,  <34.692902, 30.228846, 43.912094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969639, 30.514950, 43.872585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023298, -0.114614, -0.993137,
		-0.721671, 0.689397, -0.062631,
		0.691844, 0.715259, -0.098775,
		35.177193, 30.729528, 43.842953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463066, 30.656933, 43.414444>,  <34.692902, 30.228846, 43.912094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463066, 30.656933, 43.414444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854984, 30.736914, 43.412907>,  <35.090137, 30.784903, 43.411983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854984, 30.736914, 43.412907>,  <34.463066, 30.656933, 43.414444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854984, 30.736914, 43.412907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035391, 0.154444, -0.987368,
		-0.196834, 0.967557, 0.158401,
		0.979798, 0.199953, -0.003843,
		35.148922, 30.796900, 43.411755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594540, 31.212423, 42.929630>,  <34.463066, 30.656933, 43.414444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594540, 31.212423, 42.929630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956860, 31.051094, 42.981560>,  <35.174252, 30.954296, 43.012718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956860, 31.051094, 42.981560>,  <34.594540, 31.212423, 42.929630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956860, 31.051094, 42.981560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210208, 0.161731, -0.964187,
		0.367880, 0.900653, 0.231277,
		0.905802, -0.403321, 0.129827,
		35.228600, 30.930098, 43.020508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159538, 31.712091, 42.696125>,  <34.594540, 31.212423, 42.929630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159538, 31.712091, 42.696125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346249, 31.359879, 42.663200>,  <35.458275, 31.148550, 42.643444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346249, 31.359879, 42.663200>,  <35.159538, 31.712091, 42.696125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346249, 31.359879, 42.663200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082359, 0.135954, -0.987286,
		0.880530, 0.454065, 0.135981,
		0.466780, -0.880534, -0.082315,
		35.486282, 31.095718, 42.638504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816685, 31.733620, 42.456657>,  <35.159538, 31.712091, 42.696125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816685, 31.733620, 42.456657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.697540, 31.374763, 42.326168>,  <35.626053, 31.159451, 42.247875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.697540, 31.374763, 42.326168>,  <35.816685, 31.733620, 42.456657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697540, 31.374763, 42.326168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231960, 0.263472, -0.936364,
		0.925999, -0.354575, 0.129623,
		-0.297859, -0.897140, -0.326222,
		35.608181, 31.105621, 42.228302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122429, 31.540766, 41.836884>,  <35.816685, 31.733620, 42.456657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122429, 31.540766, 41.836884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892994, 31.214058, 41.811958>,  <35.755333, 31.018032, 41.797001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892994, 31.214058, 41.811958>,  <36.122429, 31.540766, 41.836884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892994, 31.214058, 41.811958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013685, 0.085618, -0.996234,
		0.819031, -0.570574, -0.060287,
		-0.573587, -0.816771, -0.062316,
		35.720917, 30.969027, 41.793262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905762, 31.485186, 41.811440>,  <36.122429, 31.540766, 41.836884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905762, 31.485186, 41.811440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.120190, 31.787933, 41.661892>,  <37.248848, 31.969582, 41.572163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.120190, 31.787933, 41.661892>,  <36.905762, 31.485186, 41.811440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120190, 31.787933, 41.661892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141738, 0.355893, 0.923715,
		0.832189, -0.548168, 0.083506,
		0.536071, 0.756869, -0.373867,
		37.281010, 32.014996, 41.549732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485279, 31.552578, 42.170727>,  <36.905762, 31.485186, 41.811440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485279, 31.552578, 42.170727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417442, 31.920122, 42.028217>,  <37.376740, 32.140648, 41.942711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417442, 31.920122, 42.028217>,  <37.485279, 31.552578, 42.170727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417442, 31.920122, 42.028217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166033, 0.382985, 0.908711,
		0.971427, 0.094960, -0.217514,
		-0.169596, 0.918861, -0.356275,
		37.366562, 32.195782, 41.921333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093910, 31.889345, 42.235851>,  <37.485279, 31.552578, 42.170727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093910, 31.889345, 42.235851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797344, 32.157730, 42.231674>,  <37.619404, 32.318760, 42.229168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.797344, 32.157730, 42.231674>,  <38.093910, 31.889345, 42.235851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797344, 32.157730, 42.231674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365697, 0.417042, 0.832071,
		0.562643, 0.613093, -0.554571,
		-0.741417, 0.670964, -0.010440,
		37.574921, 32.359020, 42.228542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443443, 32.464905, 42.489105>,  <38.093910, 31.889345, 42.235851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443443, 32.464905, 42.489105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059547, 32.574993, 42.511581>,  <37.829208, 32.641045, 42.525066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059547, 32.574993, 42.511581>,  <38.443443, 32.464905, 42.489105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059547, 32.574993, 42.511581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203337, 0.542677, 0.814957,
		0.193794, 0.793572, -0.576790,
		-0.959738, 0.275217, 0.056195,
		37.771626, 32.657558, 42.528439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384872, 33.181213, 42.669674>,  <38.443443, 32.464905, 42.489105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384872, 33.181213, 42.669674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040604, 33.020477, 42.794750>,  <37.834042, 32.924034, 42.869797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.040604, 33.020477, 42.794750>,  <38.384872, 33.181213, 42.669674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040604, 33.020477, 42.794750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083056, 0.495091, 0.864862,
		-0.502346, 0.770330, -0.392733,
		-0.860668, -0.401841, 0.312688,
		37.782402, 32.899925, 42.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009235, 33.732445, 42.838333>,  <38.384872, 33.181213, 42.669674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009235, 33.732445, 42.838333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854343, 33.428032, 43.046516>,  <37.761406, 33.245384, 43.171425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854343, 33.428032, 43.046516>,  <38.009235, 33.732445, 42.838333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854343, 33.428032, 43.046516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143363, 0.507932, 0.849384,
		-0.910768, 0.403524, -0.087584,
		-0.387233, -0.761035, 0.520458,
		37.738174, 33.199722, 43.202652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895233, 34.062962, 43.426003>,  <38.009235, 33.732445, 42.838333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895233, 34.062962, 43.426003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.828369, 33.679668, 43.518818>,  <37.788250, 33.449692, 43.574509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.828369, 33.679668, 43.518818>,  <37.895233, 34.062962, 43.426003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828369, 33.679668, 43.518818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110379, 0.215685, 0.970204,
		-0.979732, 0.187791, 0.069716,
		-0.167159, -0.958235, 0.232042,
		37.778221, 33.392197, 43.588432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656071, 34.158504, 44.141716>,  <37.895233, 34.062962, 43.426003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656071, 34.158504, 44.141716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.749123, 33.770351, 44.115673>,  <37.804955, 33.537460, 44.100048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.749123, 33.770351, 44.115673>,  <37.656071, 34.158504, 44.141716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749123, 33.770351, 44.115673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261423, -0.002095, 0.965222,
		-0.936772, -0.241561, 0.253193,
		0.232630, -0.970383, -0.065112,
		37.818913, 33.479237, 44.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349411, 33.897507, 44.731773>,  <37.656071, 34.158504, 44.141716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349411, 33.897507, 44.731773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643135, 33.655399, 44.608845>,  <37.819370, 33.510136, 44.535088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.643135, 33.655399, 44.608845>,  <37.349411, 33.897507, 44.731773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643135, 33.655399, 44.608845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339826, -0.064141, 0.938299,
		-0.587633, -0.793435, 0.158586,
		0.734307, -0.605266, -0.307321,
		37.863426, 33.473820, 44.516647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409363, 33.306942, 45.196075>,  <37.349411, 33.897507, 44.731773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409363, 33.306942, 45.196075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768871, 33.338509, 45.023575>,  <37.984577, 33.357449, 44.920074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768871, 33.338509, 45.023575>,  <37.409363, 33.306942, 45.196075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768871, 33.338509, 45.023575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437451, -0.096243, 0.894077,
		0.029050, -0.992225, -0.121022,
		0.898773, 0.078914, -0.431254,
		38.038502, 33.362183, 44.894199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760475, 32.747513, 45.499512>,  <37.409363, 33.306942, 45.196075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760475, 32.747513, 45.499512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024338, 33.000217, 45.336670>,  <38.182655, 33.151840, 45.238964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024338, 33.000217, 45.336670>,  <37.760475, 32.747513, 45.499512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024338, 33.000217, 45.336670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599401, -0.115459, 0.792078,
		0.453399, -0.766518, -0.454840,
		0.659657, 0.631759, -0.407102,
		38.222237, 33.189747, 45.214539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454281, 32.394184, 45.462715>,  <37.760475, 32.747513, 45.499512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454281, 32.394184, 45.462715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518040, 32.788979, 45.454285>,  <38.556293, 33.025856, 45.449226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518040, 32.788979, 45.454285>,  <38.454281, 32.394184, 45.462715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518040, 32.788979, 45.454285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486228, -0.059908, 0.871776,
		0.859171, -0.149207, -0.489451,
		0.159397, 0.986990, -0.021077,
		38.565861, 33.085075, 45.447960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058769, 32.468960, 45.762470>,  <38.454281, 32.394184, 45.462715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058769, 32.468960, 45.762470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909561, 32.838482, 45.796989>,  <38.820038, 33.060196, 45.817699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.909561, 32.838482, 45.796989>,  <39.058769, 32.468960, 45.762470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909561, 32.838482, 45.796989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487456, 0.115989, 0.865409,
		0.789457, 0.364879, -0.493579,
		-0.373019, 0.923802, 0.086294,
		38.797657, 33.115623, 45.822876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587849, 32.830509, 46.097889>,  <39.058769, 32.468960, 45.762470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587849, 32.830509, 46.097889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282730, 33.081196, 46.161598>,  <39.099659, 33.231609, 46.199825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.282730, 33.081196, 46.161598>,  <39.587849, 32.830509, 46.097889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282730, 33.081196, 46.161598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306587, 0.133650, 0.942413,
		0.569342, 0.767697, -0.294092,
		-0.762793, 0.626720, 0.159273,
		39.053894, 33.269211, 46.209381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.114079, 38.498943, 45.772228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311123, 38.151436, 45.792507>,  <33.429348, 37.942932, 45.804676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311123, 38.151436, 45.792507>,  <33.114079, 38.498943, 45.772228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311123, 38.151436, 45.792507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044053, -0.033287, -0.998475,
		0.869135, 0.494091, 0.021875,
		0.492609, -0.868773, 0.050697,
		33.458904, 37.890804, 45.807716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677807, 38.524418, 45.225506>,  <33.114079, 38.498943, 45.772228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677807, 38.524418, 45.225506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627312, 38.133713, 45.294777>,  <33.597015, 37.899288, 45.336338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627312, 38.133713, 45.294777>,  <33.677807, 38.524418, 45.225506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627312, 38.133713, 45.294777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077869, -0.164275, -0.983336,
		0.988939, -0.137622, -0.055322,
		-0.126240, -0.976767, 0.173175,
		33.589439, 37.840683, 45.346729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110771, 38.166744, 44.747185>,  <33.677807, 38.524418, 45.225506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110771, 38.166744, 44.747185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855335, 37.877018, 44.851162>,  <33.702076, 37.703182, 44.913548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855335, 37.877018, 44.851162>,  <34.110771, 38.166744, 44.747185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855335, 37.877018, 44.851162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134167, -0.227825, -0.964414,
		0.757763, -0.650739, 0.048307,
		-0.638588, -0.724316, 0.259946,
		33.663757, 37.659721, 44.929146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391201, 37.528679, 44.650898>,  <34.110771, 38.166744, 44.747185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391201, 37.528679, 44.650898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.993214, 37.491642, 44.635605>,  <33.754421, 37.469421, 44.626427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.993214, 37.491642, 44.635605>,  <34.391201, 37.528679, 44.650898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993214, 37.491642, 44.635605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062334, -0.273436, -0.959868,
		0.078422, -0.957423, 0.277832,
		-0.994970, -0.092594, -0.038237,
		33.694721, 37.463863, 44.624134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424957, 37.107655, 44.141758>,  <34.391201, 37.528679, 44.650898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424957, 37.107655, 44.141758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037415, 37.203659, 44.166157>,  <33.804890, 37.261261, 44.180794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037415, 37.203659, 44.166157>,  <34.424957, 37.107655, 44.141758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037415, 37.203659, 44.166157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148892, -0.367760, -0.917924,
		-0.197877, -0.898415, 0.392040,
		-0.968853, 0.240007, 0.060996,
		33.746758, 37.275661, 44.184456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982330, 36.480213, 43.936398>,  <34.424957, 37.107655, 44.141758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982330, 36.480213, 43.936398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788528, 36.827133, 43.890720>,  <33.672245, 37.035286, 43.863316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788528, 36.827133, 43.890720>,  <33.982330, 36.480213, 43.936398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788528, 36.827133, 43.890720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043077, -0.154035, -0.987126,
		-0.873726, -0.473351, 0.111992,
		-0.484508, 0.867301, -0.114194,
		33.643177, 37.087322, 43.856461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386448, 36.300644, 43.602600>,  <33.982330, 36.480213, 43.936398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386448, 36.300644, 43.602600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438797, 36.690659, 43.530853>,  <33.470207, 36.924667, 43.487804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438797, 36.690659, 43.530853>,  <33.386448, 36.300644, 43.602600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438797, 36.690659, 43.530853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135911, -0.161567, -0.977458,
		-0.982039, 0.152299, 0.111374,
		0.130872, 0.975039, -0.179364,
		33.478058, 36.983170, 43.477043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938808, 36.408203, 43.084881>,  <33.386448, 36.300644, 43.602600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938808, 36.408203, 43.084881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132984, 36.757553, 43.069019>,  <33.249489, 36.967163, 43.059502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132984, 36.757553, 43.069019>,  <32.938808, 36.408203, 43.084881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132984, 36.757553, 43.069019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108950, 0.015429, -0.993928,
		-0.867456, 0.486810, 0.102643,
		0.485438, 0.873372, -0.039654,
		33.278614, 37.019566, 43.057125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584801, 36.885624, 42.754330>,  <32.938808, 36.408203, 43.084881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584801, 36.885624, 42.754330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942951, 37.059048, 42.713661>,  <33.157841, 37.163101, 42.689259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942951, 37.059048, 42.713661>,  <32.584801, 36.885624, 42.754330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942951, 37.059048, 42.713661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091005, -0.045349, -0.994817,
		-0.435922, 0.899984, -0.001148,
		0.895372, 0.433558, -0.101672,
		33.211563, 37.189114, 42.683159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403366, 37.447227, 42.323872>,  <32.584801, 36.885624, 42.754330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403366, 37.447227, 42.323872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.798500, 37.387440, 42.306667>,  <33.035580, 37.351566, 42.296345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.798500, 37.387440, 42.306667>,  <32.403366, 37.447227, 42.323872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798500, 37.387440, 42.306667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065487, -0.148886, -0.986684,
		0.141075, 0.977493, -0.156862,
		0.987831, -0.149469, -0.043009,
		33.094849, 37.342598, 42.293766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645920, 37.874184, 41.798412>,  <32.403366, 37.447227, 42.323872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645920, 37.874184, 41.798412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.948555, 37.615818, 41.839134>,  <33.130135, 37.460796, 41.863567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.948555, 37.615818, 41.839134>,  <32.645920, 37.874184, 41.798412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948555, 37.615818, 41.839134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005750, -0.162260, -0.986731,
		0.653866, 0.745964, -0.126478,
		0.756588, -0.645918, 0.101807,
		33.175533, 37.422043, 41.869675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208801, 38.081902, 41.308651>,  <32.645920, 37.874184, 41.798412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208801, 38.081902, 41.308651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296894, 37.696243, 41.367867>,  <33.349751, 37.464848, 41.403397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296894, 37.696243, 41.367867>,  <33.208801, 38.081902, 41.308651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296894, 37.696243, 41.367867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065487, -0.136810, -0.988430,
		0.973246, 0.227381, 0.033009,
		0.220234, -0.964148, 0.148040,
		33.362965, 37.406998, 41.412277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827766, 37.927769, 40.933487>,  <33.208801, 38.081902, 41.308651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827766, 37.927769, 40.933487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643135, 37.577358, 40.989388>,  <33.532356, 37.367111, 41.022926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.643135, 37.577358, 40.989388>,  <33.827766, 37.927769, 40.933487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643135, 37.577358, 40.989388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182830, -0.248094, -0.951327,
		0.868055, -0.413561, 0.274678,
		-0.461577, -0.876023, 0.139748,
		33.504662, 37.314552, 41.031311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265450, 37.393394, 40.836830>,  <33.827766, 37.927769, 40.933487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265450, 37.393394, 40.836830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906029, 37.238598, 40.754047>,  <33.690376, 37.145718, 40.704376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906029, 37.238598, 40.754047>,  <34.265450, 37.393394, 40.836830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906029, 37.238598, 40.754047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358973, -0.376856, -0.853884,
		0.252457, -0.841555, 0.477547,
		-0.898557, -0.386995, -0.206956,
		33.636463, 37.122498, 40.691959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938049, 37.268433, 40.636833>,  <34.265450, 37.393394, 40.836830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938049, 37.268433, 40.636833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074413, 37.554775, 40.393085>,  <35.156231, 37.726582, 40.246838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074413, 37.554775, 40.393085>,  <34.938049, 37.268433, 40.636833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074413, 37.554775, 40.393085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281304, 0.540824, 0.792702,
		0.897023, -0.441656, -0.017003,
		0.340907, 0.715855, -0.609372,
		35.176685, 37.769531, 40.210274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616501, 37.397274, 40.815212>,  <34.938049, 37.268433, 40.636833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616501, 37.397274, 40.815212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506325, 37.740234, 40.641319>,  <35.440220, 37.946011, 40.536983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506325, 37.740234, 40.641319>,  <35.616501, 37.397274, 40.815212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506325, 37.740234, 40.641319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280338, 0.504211, 0.816812,
		0.919535, 0.103107, -0.379241,
		-0.275437, 0.857404, -0.434734,
		35.423695, 37.997456, 40.510899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104759, 37.796261, 40.936367>,  <35.616501, 37.397274, 40.815212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104759, 37.796261, 40.936367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783760, 38.034279, 40.918858>,  <35.591160, 38.177090, 40.908352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783760, 38.034279, 40.918858>,  <36.104759, 37.796261, 40.936367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783760, 38.034279, 40.918858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382548, 0.569442, 0.727594,
		0.457883, 0.567144, -0.684610,
		-0.802496, 0.595049, -0.043778,
		35.543011, 38.212795, 40.905724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407993, 38.437302, 40.903511>,  <36.104759, 37.796261, 40.936367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407993, 38.437302, 40.903511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036793, 38.475361, 41.047600>,  <35.814072, 38.498196, 41.134052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036793, 38.475361, 41.047600>,  <36.407993, 38.437302, 40.903511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036793, 38.475361, 41.047600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365339, 0.422023, 0.829713,
		-0.073076, 0.901578, -0.426399,
		-0.928002, 0.095148, 0.360222,
		35.758392, 38.503906, 41.155666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482433, 38.940685, 41.397133>,  <36.407993, 38.437302, 40.903511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482433, 38.940685, 41.397133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106518, 38.850689, 41.500027>,  <35.880966, 38.796692, 41.561764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.106518, 38.850689, 41.500027>,  <36.482433, 38.940685, 41.397133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106518, 38.850689, 41.500027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217522, 0.186726, 0.958028,
		-0.263584, 0.956300, -0.126542,
		-0.939791, -0.224995, 0.257235,
		35.824581, 38.783192, 41.577198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210617, 39.507282, 41.806808>,  <36.482433, 38.940685, 41.397133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210617, 39.507282, 41.806808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.974388, 39.199776, 41.904964>,  <35.832649, 39.015270, 41.963860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.974388, 39.199776, 41.904964>,  <36.210617, 39.507282, 41.806808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974388, 39.199776, 41.904964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226925, 0.133610, 0.964704,
		-0.774420, 0.625416, 0.095546,
		-0.590576, -0.768767, 0.245393,
		35.797215, 38.969147, 41.978580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804520, 39.738491, 42.340759>,  <36.210617, 39.507282, 41.806808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804520, 39.738491, 42.340759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768383, 39.343056, 42.388973>,  <35.746700, 39.105793, 42.417900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.768383, 39.343056, 42.388973>,  <35.804520, 39.738491, 42.340759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768383, 39.343056, 42.388973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142246, 0.106977, 0.984034,
		-0.985700, 0.106043, 0.130959,
		-0.090340, -0.988590, 0.120531,
		35.741280, 39.046478, 42.425133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304649, 39.643017, 42.811924>,  <35.804520, 39.738491, 42.340759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304649, 39.643017, 42.811924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531578, 39.313629, 42.814503>,  <35.667736, 39.115997, 42.816048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531578, 39.313629, 42.814503>,  <35.304649, 39.643017, 42.811924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531578, 39.313629, 42.814503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129311, 0.096811, 0.986867,
		-0.813279, -0.559039, 0.161407,
		0.567323, -0.823470, 0.006445,
		35.701775, 39.066589, 42.816437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126328, 39.392696, 43.369488>,  <35.304649, 39.643017, 42.811924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126328, 39.392696, 43.369488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464657, 39.194897, 43.289429>,  <35.667652, 39.076218, 43.241394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464657, 39.194897, 43.289429>,  <35.126328, 39.392696, 43.369488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464657, 39.194897, 43.289429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184689, -0.080546, 0.979491,
		-0.500478, -0.865439, 0.023201,
		0.845820, -0.494498, -0.200149,
		35.718403, 39.046547, 43.229385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050171, 38.810848, 43.829956>,  <35.126328, 39.392696, 43.369488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050171, 38.810848, 43.829956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431259, 38.880108, 43.730083>,  <35.659912, 38.921665, 43.670158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.431259, 38.880108, 43.730083>,  <35.050171, 38.810848, 43.829956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431259, 38.880108, 43.730083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271077, -0.113163, 0.955883,
		0.137258, -0.978372, -0.154750,
		0.952721, 0.173152, -0.249681,
		35.717075, 38.932053, 43.655178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390919, 38.312813, 44.167233>,  <35.050171, 38.810848, 43.829956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390919, 38.312813, 44.167233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.684105, 38.577873, 44.105721>,  <35.860016, 38.736908, 44.068813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.684105, 38.577873, 44.105721>,  <35.390919, 38.312813, 44.167233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684105, 38.577873, 44.105721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397426, -0.233660, 0.887387,
		0.552096, -0.711545, -0.434620,
		0.732969, 0.662652, -0.153784,
		35.903996, 38.776669, 44.059586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043633, 37.974117, 44.440514>,  <35.390919, 38.312813, 44.167233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043633, 37.974117, 44.440514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.116482, 38.367245, 44.428555>,  <36.160191, 38.603123, 44.421379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.116482, 38.367245, 44.428555>,  <36.043633, 37.974117, 44.440514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116482, 38.367245, 44.428555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372358, -0.040792, 0.927192,
		0.910045, -0.179992, -0.373390,
		0.182119, 0.982822, -0.029899,
		36.171116, 38.662090, 44.419586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806690, 38.194195, 44.415237>,  <36.043633, 37.974117, 44.440514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806690, 38.194195, 44.415237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624741, 38.507156, 44.585384>,  <36.515572, 38.694935, 44.687473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624741, 38.507156, 44.585384>,  <36.806690, 38.194195, 44.415237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624741, 38.507156, 44.585384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373549, -0.265959, 0.888666,
		0.808424, 0.563127, -0.171287,
		-0.454876, 0.782403, 0.425363,
		36.488277, 38.741879, 44.712994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297176, 38.556953, 44.847870>,  <36.806690, 38.194195, 44.415237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297176, 38.556953, 44.847870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939167, 38.669624, 44.986198>,  <36.724361, 38.737228, 45.069195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.939167, 38.669624, 44.986198>,  <37.297176, 38.556953, 44.847870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939167, 38.669624, 44.986198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284602, -0.236325, 0.929060,
		0.343422, 0.929951, 0.131350,
		-0.895021, 0.281677, 0.345825,
		36.670662, 38.754128, 45.089947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471130, 39.370567, 44.783745>,  <37.297176, 38.556953, 44.847870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471130, 39.370567, 44.783745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870457, 39.386707, 44.767086>,  <38.110054, 39.396393, 44.757092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.870457, 39.386707, 44.767086>,  <37.471130, 39.370567, 44.783745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870457, 39.386707, 44.767086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037808, -0.091661, -0.995072,
		-0.043970, 0.994972, -0.089981,
		0.998317, 0.040351, -0.041648,
		38.169952, 39.398811, 44.754593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631752, 39.860771, 44.116611>,  <37.471130, 39.370567, 44.783745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631752, 39.860771, 44.116611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964069, 39.657646, 44.207745>,  <38.163460, 39.535770, 44.262424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964069, 39.657646, 44.207745>,  <37.631752, 39.860771, 44.116611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964069, 39.657646, 44.207745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253241, -0.019641, -0.967204,
		0.495636, 0.861242, 0.112282,
		0.830791, -0.507816, 0.227837,
		38.213306, 39.505302, 44.276096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021366, 40.124832, 43.713200>,  <37.631752, 39.860771, 44.116611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021366, 40.124832, 43.713200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.199917, 39.776867, 43.797108>,  <38.307049, 39.568089, 43.847450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.199917, 39.776867, 43.797108>,  <38.021366, 40.124832, 43.713200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199917, 39.776867, 43.797108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262998, -0.096529, -0.959955,
		0.855325, 0.483669, 0.185697,
		0.446376, -0.869912, 0.209768,
		38.333828, 39.515892, 43.860039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606739, 40.120686, 43.373528>,  <38.021366, 40.124832, 43.713200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606739, 40.120686, 43.373528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575768, 39.724670, 43.420578>,  <38.557186, 39.487061, 43.448807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575768, 39.724670, 43.420578>,  <38.606739, 40.120686, 43.373528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575768, 39.724670, 43.420578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069941, -0.123081, -0.989929,
		0.994542, -0.068422, 0.078774,
		-0.077429, -0.990035, 0.117624,
		38.552540, 39.427658, 43.455864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101120, 39.881588, 42.932854>,  <38.606739, 40.120686, 43.373528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101120, 39.881588, 42.932854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877045, 39.560829, 43.015938>,  <38.742599, 39.368374, 43.065788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877045, 39.560829, 43.015938>,  <39.101120, 39.881588, 42.932854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877045, 39.560829, 43.015938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195587, -0.371702, -0.907515,
		0.804944, -0.467754, 0.365065,
		-0.560189, -0.801901, 0.207712,
		38.708988, 39.320259, 43.078251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482704, 39.287109, 42.627640>,  <39.101120, 39.881588, 42.932854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482704, 39.287109, 42.627640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108986, 39.156822, 42.685593>,  <38.884754, 39.078651, 42.720364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108986, 39.156822, 42.685593>,  <39.482704, 39.287109, 42.627640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108986, 39.156822, 42.685593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017868, -0.448699, -0.893504,
		0.356041, -0.832212, 0.425039,
		-0.934300, -0.325719, 0.144885,
		38.828697, 39.059105, 42.729057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505135, 38.647545, 42.433666>,  <39.482704, 39.287109, 42.627640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505135, 38.647545, 42.433666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115669, 38.738693, 42.430691>,  <38.881989, 38.793385, 42.428905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.115669, 38.738693, 42.430691>,  <39.505135, 38.647545, 42.433666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115669, 38.738693, 42.430691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066109, -0.313416, -0.947312,
		-0.218198, -0.921870, 0.320226,
		-0.973663, 0.227872, -0.007443,
		38.823570, 38.807056, 42.428459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102890, 38.073788, 42.212372>,  <39.505135, 38.647545, 42.433666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102890, 38.073788, 42.212372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879780, 38.396999, 42.136505>,  <38.745914, 38.590927, 42.090984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879780, 38.396999, 42.136505>,  <39.102890, 38.073788, 42.212372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879780, 38.396999, 42.136505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243217, -0.377605, -0.893454,
		-0.793560, -0.452213, 0.407145,
		-0.557771, 0.808033, -0.189666,
		38.712448, 38.639408, 42.079605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473804, 37.876842, 41.744209>,  <39.102890, 38.073788, 42.212372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473804, 37.876842, 41.744209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525085, 38.270741, 41.697155>,  <38.555855, 38.507080, 41.668922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.525085, 38.270741, 41.697155>,  <38.473804, 37.876842, 41.744209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525085, 38.270741, 41.697155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142917, -0.099029, -0.984768,
		-0.981397, 0.143057, 0.128042,
		0.128198, 0.984748, -0.117632,
		38.563545, 38.566166, 41.661865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933708, 38.115215, 41.371391>,  <38.473804, 37.876842, 41.744209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933708, 38.115215, 41.371391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229088, 38.372513, 41.290466>,  <38.406315, 38.526890, 41.241909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.229088, 38.372513, 41.290466>,  <37.933708, 38.115215, 41.371391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229088, 38.372513, 41.290466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205803, -0.070723, -0.976035,
		-0.642137, 0.762387, 0.080157,
		0.738448, 0.643245, -0.202315,
		38.450623, 38.565487, 41.229771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722122, 38.206242, 40.718277>,  <37.933708, 38.115215, 41.371391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722122, 38.206242, 40.718277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055180, 38.423168, 40.763168>,  <38.255013, 38.553326, 40.790104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055180, 38.423168, 40.763168>,  <37.722122, 38.206242, 40.718277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055180, 38.423168, 40.763168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039540, 0.143915, -0.988800,
		-0.552394, 0.827756, 0.098387,
		0.832645, 0.542317, 0.112227,
		38.304974, 38.585865, 40.796837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532036, 38.920212, 40.523640>,  <37.722122, 38.206242, 40.718277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532036, 38.920212, 40.523640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914909, 38.825584, 40.456894>,  <38.144634, 38.768806, 40.416847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914909, 38.825584, 40.456894>,  <37.532036, 38.920212, 40.523640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914909, 38.825584, 40.456894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137319, 0.136395, -0.981091,
		0.254856, 0.961993, 0.098069,
		0.957179, -0.236570, -0.166861,
		38.202065, 38.754612, 40.406837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801212, 39.485451, 40.148693>,  <37.532036, 38.920212, 40.523640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801212, 39.485451, 40.148693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016300, 39.158680, 40.065277>,  <38.145351, 38.962616, 40.015228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016300, 39.158680, 40.065277>,  <37.801212, 39.485451, 40.148693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016300, 39.158680, 40.065277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301882, 0.044398, -0.952311,
		0.787229, 0.575027, -0.222743,
		0.537715, -0.816929, -0.208542,
		38.177616, 38.913601, 40.002716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069538, 39.656548, 39.507851>,  <37.801212, 39.485451, 40.148693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069538, 39.656548, 39.507851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059914, 39.258175, 39.542572>,  <38.054138, 39.019150, 39.563404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059914, 39.258175, 39.542572>,  <38.069538, 39.656548, 39.507851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059914, 39.258175, 39.542572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183283, -0.080966, -0.979720,
		0.982766, -0.039481, -0.180590,
		-0.024059, -0.995935, 0.086807,
		38.052696, 38.959396, 39.568615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.632439, 36.480736, 27.902493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.249302, 36.514671, 27.792700>,  <27.019421, 36.535034, 27.726824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.249302, 36.514671, 27.792700>,  <27.632439, 36.480736, 27.902493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249302, 36.514671, 27.792700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286854, -0.229449, 0.930090,
		0.015928, 0.969616, 0.244112,
		-0.957842, 0.084839, -0.274484,
		26.961950, 36.540123, 27.710354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273140, 36.817814, 28.429750>,  <27.632439, 36.480736, 27.902493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273140, 36.817814, 28.429750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.979765, 36.624268, 28.238775>,  <26.803740, 36.508141, 28.124189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.979765, 36.624268, 28.238775>,  <27.273140, 36.817814, 28.429750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979765, 36.624268, 28.238775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377466, -0.294221, 0.878039,
		-0.565323, 0.824203, 0.033151,
		-0.733437, -0.483863, -0.477439,
		26.759733, 36.479107, 28.095543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618216, 37.051647, 28.673513>,  <27.273140, 36.817814, 28.429750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618216, 37.051647, 28.673513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.547533, 36.697121, 28.502295>,  <26.505123, 36.484406, 28.399563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.547533, 36.697121, 28.502295>,  <26.618216, 37.051647, 28.673513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547533, 36.697121, 28.502295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621246, -0.236885, 0.746953,
		-0.763431, 0.397916, -0.508759,
		-0.176707, -0.886312, -0.428049,
		26.494520, 36.431229, 28.373880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972326, 36.819759, 28.942995>,  <26.618216, 37.051647, 28.673513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972326, 36.819759, 28.942995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073618, 36.473984, 28.769270>,  <26.134394, 36.266518, 28.665035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.073618, 36.473984, 28.769270>,  <25.972326, 36.819759, 28.942995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073618, 36.473984, 28.769270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406999, -0.502478, 0.762803,
		-0.877626, -0.016398, -0.479066,
		0.253229, -0.864435, -0.434313,
		26.149586, 36.214653, 28.638975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325617, 36.259918, 28.907696>,  <25.972326, 36.819759, 28.942995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325617, 36.259918, 28.907696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.686409, 36.096989, 28.964998>,  <25.902884, 35.999233, 28.999380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.686409, 36.096989, 28.964998>,  <25.325617, 36.259918, 28.907696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686409, 36.096989, 28.964998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304083, -0.363697, 0.880487,
		-0.306535, -0.837745, -0.451906,
		0.901981, -0.407317, 0.143258,
		25.957003, 35.974792, 29.007975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135380, 35.627972, 29.224924>,  <25.325617, 36.259918, 28.907696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135380, 35.627972, 29.224924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.531420, 35.636410, 29.280432>,  <25.769043, 35.641472, 29.313736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.531420, 35.636410, 29.280432>,  <25.135380, 35.627972, 29.224924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531420, 35.636410, 29.280432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107194, -0.524593, 0.844578,
		0.090614, -0.851092, -0.517138,
		0.990100, 0.021097, 0.138767,
		25.828449, 35.642738, 29.322062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230965, 35.093033, 29.666574>,  <25.135380, 35.627972, 29.224924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230965, 35.093033, 29.666574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.573242, 35.298595, 29.690849>,  <25.778608, 35.421932, 29.705414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.573242, 35.298595, 29.690849>,  <25.230965, 35.093033, 29.666574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.573242, 35.298595, 29.690849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041048, -0.184310, 0.982011,
		0.515849, -0.837811, -0.178809,
		0.855695, 0.513909, 0.060686,
		25.829950, 35.452766, 29.709055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717215, 34.605728, 29.939255>,  <25.230965, 35.093033, 29.666574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717215, 34.605728, 29.939255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838640, 34.979641, 30.013048>,  <25.911495, 35.203987, 30.057323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.838640, 34.979641, 30.013048>,  <25.717215, 34.605728, 29.939255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838640, 34.979641, 30.013048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061438, -0.212421, 0.975245,
		0.950829, -0.284714, -0.121914,
		0.303563, 0.934781, 0.184484,
		25.929708, 35.260075, 30.068394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326111, 34.506321, 30.267231>,  <25.717215, 34.605728, 29.939255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326111, 34.506321, 30.267231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.205761, 34.880066, 30.343586>,  <26.133551, 35.104313, 30.389399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.205761, 34.880066, 30.343586>,  <26.326111, 34.506321, 30.267231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205761, 34.880066, 30.343586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173662, -0.143133, 0.974348,
		0.937718, 0.326307, -0.119199,
		-0.300875, 0.934364, 0.190886,
		26.115498, 35.160374, 30.400852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822697, 34.835075, 30.645998>,  <26.326111, 34.506321, 30.267231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822697, 34.835075, 30.645998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.490129, 35.041176, 30.729195>,  <26.290588, 35.164837, 30.779114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.490129, 35.041176, 30.729195>,  <26.822697, 34.835075, 30.645998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490129, 35.041176, 30.729195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091887, -0.241677, 0.965997,
		0.547997, 0.822259, 0.153590,
		-0.831418, 0.515250, 0.207993,
		26.240704, 35.195751, 30.791592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983072, 35.198326, 31.221703>,  <26.822697, 34.835075, 30.645998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983072, 35.198326, 31.221703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585518, 35.238663, 31.203711>,  <26.346985, 35.262867, 31.192915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585518, 35.238663, 31.203711>,  <26.983072, 35.198326, 31.221703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585518, 35.238663, 31.203711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043623, 0.015627, 0.998926,
		0.101439, 0.994779, -0.011132,
		-0.993885, 0.100845, -0.044980,
		26.287352, 35.268917, 31.190216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758785, 35.903034, 31.560549>,  <26.983072, 35.198326, 31.221703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758785, 35.903034, 31.560549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.463881, 35.635921, 31.601557>,  <26.286938, 35.475655, 31.626162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.463881, 35.635921, 31.601557>,  <26.758785, 35.903034, 31.560549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463881, 35.635921, 31.601557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043905, 0.104069, 0.993600,
		-0.674177, 0.737046, -0.047407,
		-0.737263, -0.667781, 0.102521,
		26.242702, 35.435589, 31.632313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409016, 36.223942, 32.043453>,  <26.758785, 35.903034, 31.560549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409016, 36.223942, 32.043453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256567, 35.854721, 32.064289>,  <26.165098, 35.633186, 32.076790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256567, 35.854721, 32.064289>,  <26.409016, 36.223942, 32.043453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256567, 35.854721, 32.064289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006402, 0.053711, 0.998536,
		-0.924503, 0.380897, -0.014561,
		-0.381121, -0.923056, 0.052094,
		26.142231, 35.577805, 32.079918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992214, 36.203346, 32.638668>,  <26.409016, 36.223942, 32.043453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992214, 36.203346, 32.638668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.016367, 35.808582, 32.578850>,  <26.030859, 35.571724, 32.542957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.016367, 35.808582, 32.578850>,  <25.992214, 36.203346, 32.638668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016367, 35.808582, 32.578850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076292, -0.153945, 0.985129,
		-0.995255, -0.048073, -0.084589,
		0.060380, -0.986909, -0.149547,
		26.034481, 35.512508, 32.533985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482552, 35.859077, 32.980877>,  <25.992214, 36.203346, 32.638668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482552, 35.859077, 32.980877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.728985, 35.553055, 32.905903>,  <25.876844, 35.369442, 32.860920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.728985, 35.553055, 32.905903>,  <25.482552, 35.859077, 32.980877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728985, 35.553055, 32.905903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240433, -0.409255, 0.880172,
		-0.750089, -0.497193, -0.436080,
		0.616083, -0.765055, -0.187436,
		25.913811, 35.323540, 32.849670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168644, 35.200520, 33.220665>,  <25.482552, 35.859077, 32.980877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168644, 35.200520, 33.220665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567181, 35.173508, 33.199707>,  <25.806303, 35.157303, 33.187130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.567181, 35.173508, 33.199707>,  <25.168644, 35.200520, 33.220665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567181, 35.173508, 33.199707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043221, -0.130838, 0.990461,
		-0.073735, -0.989102, -0.127440,
		0.996341, -0.067524, -0.052398,
		25.866083, 35.153248, 33.183987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.303549, 34.647556, 33.687454>,  <25.168644, 35.200520, 33.220665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.303549, 34.647556, 33.687454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.662628, 34.812553, 33.625511>,  <25.878077, 34.911552, 33.588345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.662628, 34.812553, 33.625511>,  <25.303549, 34.647556, 33.687454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662628, 34.812553, 33.625511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213474, -0.099728, 0.971845,
		0.385439, -0.905484, -0.177583,
		0.897700, 0.412497, -0.154858,
		25.931938, 34.936302, 33.579052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831966, 34.188549, 34.087936>,  <25.303549, 34.647556, 33.687454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831966, 34.188549, 34.087936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030506, 34.524597, 34.000450>,  <26.149630, 34.726227, 33.947960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030506, 34.524597, 34.000450>,  <25.831966, 34.188549, 34.087936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030506, 34.524597, 34.000450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425371, -0.015738, 0.904882,
		0.756768, -0.542172, -0.365175,
		0.496349, 0.840120, -0.218714,
		26.179411, 34.776634, 33.934837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569717, 34.165932, 34.165340>,  <25.831966, 34.188549, 34.087936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569717, 34.165932, 34.165340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515339, 34.557861, 34.223934>,  <26.482712, 34.793018, 34.259090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515339, 34.557861, 34.223934>,  <26.569717, 34.165932, 34.165340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515339, 34.557861, 34.223934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425651, -0.075748, 0.901712,
		0.894617, 0.184936, -0.406766,
		-0.135947, 0.979827, 0.146483,
		26.474554, 34.851810, 34.267879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341555, 34.325039, 34.218689>,  <26.569717, 34.165932, 34.165340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341555, 34.325039, 34.218689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722425, 34.354435, 34.337318>,  <27.950949, 34.372070, 34.408497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.722425, 34.354435, 34.337318>,  <27.341555, 34.325039, 34.218689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722425, 34.354435, 34.337318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280116, 0.177729, -0.943370,
		-0.122036, 0.981332, 0.148644,
		0.952177, 0.073488, 0.296576,
		28.008080, 34.376480, 34.426292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626211, 34.827930, 33.790367>,  <27.341555, 34.325039, 34.218689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626211, 34.827930, 33.790367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955233, 34.638683, 33.916584>,  <28.152645, 34.525135, 33.992313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955233, 34.638683, 33.916584>,  <27.626211, 34.827930, 33.790367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955233, 34.638683, 33.916584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471898, 0.258193, -0.843000,
		0.317364, 0.842317, 0.435639,
		0.822553, -0.473115, 0.315546,
		28.201998, 34.496750, 34.011250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210880, 35.295685, 33.684559>,  <27.626211, 34.827930, 33.790367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210880, 35.295685, 33.684559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349773, 34.920818, 33.698132>,  <28.433109, 34.695900, 33.706276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349773, 34.920818, 33.698132>,  <28.210880, 35.295685, 33.684559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349773, 34.920818, 33.698132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538036, 0.169458, -0.825712,
		0.768079, 0.304970, 0.563070,
		0.347234, -0.937165, 0.033927,
		28.453943, 34.639668, 33.708309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947285, 35.240669, 33.475262>,  <28.210880, 35.295685, 33.684559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947285, 35.240669, 33.475262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839542, 34.856548, 33.446251>,  <28.774897, 34.626076, 33.428844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839542, 34.856548, 33.446251>,  <28.947285, 35.240669, 33.475262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839542, 34.856548, 33.446251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548103, -0.090944, -0.831452,
		0.791852, -0.263709, 0.550842,
		-0.269357, -0.960306, -0.072526,
		28.758736, 34.568455, 33.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527119, 34.882908, 33.278053>,  <28.947285, 35.240669, 33.475262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527119, 34.882908, 33.278053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214752, 34.663258, 33.158966>,  <29.027332, 34.531467, 33.087513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214752, 34.663258, 33.158966>,  <29.527119, 34.882908, 33.278053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214752, 34.663258, 33.158966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405527, -0.083178, -0.910291,
		0.475098, -0.831592, 0.287639,
		-0.780916, -0.549123, -0.297715,
		28.980476, 34.498520, 33.069653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866594, 34.273354, 32.881493>,  <29.527119, 34.882908, 33.278053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866594, 34.273354, 32.881493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482851, 34.300308, 32.771885>,  <29.252605, 34.316483, 32.706120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482851, 34.300308, 32.771885>,  <29.866594, 34.273354, 32.881493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482851, 34.300308, 32.771885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264227, -0.126376, -0.956145,
		-0.099060, -0.989691, 0.103435,
		-0.959360, 0.067385, -0.274022,
		29.195044, 34.320522, 32.689678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842693, 33.913441, 32.317776>,  <29.866594, 34.273354, 32.881493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842693, 33.913441, 32.317776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507938, 34.127792, 32.273140>,  <29.307085, 34.256405, 32.246361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.507938, 34.127792, 32.273140>,  <29.842693, 33.913441, 32.317776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507938, 34.127792, 32.273140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073912, -0.091360, -0.993071,
		-0.542359, -0.839338, 0.036850,
		-0.836889, 0.535878, -0.111587,
		29.256872, 34.288555, 32.239662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521719, 33.510204, 31.812675>,  <29.842693, 33.913441, 32.317776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521719, 33.510204, 31.812675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.397039, 33.889545, 31.836252>,  <29.322231, 34.117149, 31.850399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.397039, 33.889545, 31.836252>,  <29.521719, 33.510204, 31.812675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397039, 33.889545, 31.836252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007091, 0.064353, -0.997902,
		-0.950154, -0.310628, -0.026784,
		-0.311700, 0.948351, 0.058943,
		29.303530, 34.174049, 31.853935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996479, 33.473682, 31.400141>,  <29.521719, 33.510204, 31.812675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996479, 33.473682, 31.400141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067989, 33.866768, 31.419376>,  <29.110895, 34.102619, 31.430918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.067989, 33.866768, 31.419376>,  <28.996479, 33.473682, 31.400141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067989, 33.866768, 31.419376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054153, 0.058631, -0.996810,
		-0.982399, 0.175601, 0.063698,
		0.178776, 0.982714, 0.048090,
		29.121622, 34.161583, 31.433804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502327, 33.924656, 31.048532>,  <28.996479, 33.473682, 31.400141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502327, 33.924656, 31.048532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824764, 34.161282, 31.054993>,  <29.018227, 34.303257, 31.058868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824764, 34.161282, 31.054993>,  <28.502327, 33.924656, 31.048532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824764, 34.161282, 31.054993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085490, 0.143408, -0.985964,
		-0.585579, 0.793400, 0.166174,
		0.806095, 0.591566, 0.016149,
		29.066593, 34.338753, 31.059837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281679, 34.334320, 30.649544>,  <28.502327, 33.924656, 31.048532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281679, 34.334320, 30.649544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667791, 34.436111, 30.673117>,  <28.899458, 34.497189, 30.687260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667791, 34.436111, 30.673117>,  <28.281679, 34.334320, 30.649544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667791, 34.436111, 30.673117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040365, 0.368218, -0.928863,
		-0.258078, 0.894234, 0.365706,
		0.965281, 0.254481, 0.058933,
		28.957376, 34.512455, 30.690796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324068, 35.041359, 30.250223>,  <28.281679, 34.334320, 30.649544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324068, 35.041359, 30.250223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695490, 34.892887, 30.249250>,  <28.918343, 34.803802, 30.248667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.695490, 34.892887, 30.249250>,  <28.324068, 35.041359, 30.250223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695490, 34.892887, 30.249250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148154, 0.376619, -0.914445,
		0.340344, 0.848752, 0.404704,
		0.928556, -0.371184, -0.002434,
		28.974056, 34.781532, 30.248520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761175, 35.651371, 30.035330>,  <28.324068, 35.041359, 30.250223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761175, 35.651371, 30.035330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932997, 35.295406, 29.973969>,  <29.036091, 35.081825, 29.937151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932997, 35.295406, 29.973969>,  <28.761175, 35.651371, 30.035330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932997, 35.295406, 29.973969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278222, 0.292031, -0.915047,
		0.859113, 0.350383, 0.373038,
		0.429555, -0.889916, -0.153403,
		29.061863, 35.028431, 29.927948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300840, 35.910637, 29.581161>,  <28.761175, 35.651371, 30.035330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300840, 35.910637, 29.581161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258680, 35.513134, 29.566515>,  <29.233383, 35.274632, 29.557728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258680, 35.513134, 29.566515>,  <29.300840, 35.910637, 29.581161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258680, 35.513134, 29.566515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036219, 0.032960, -0.998800,
		0.993770, -0.106602, 0.032519,
		-0.105402, -0.993756, -0.036616,
		29.227060, 35.215008, 29.555531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835539, 35.706852, 29.085024>,  <29.300840, 35.910637, 29.581161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835539, 35.706852, 29.085024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568314, 35.410957, 29.117220>,  <29.407978, 35.233421, 29.136538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568314, 35.410957, 29.117220>,  <29.835539, 35.706852, 29.085024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568314, 35.410957, 29.117220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077974, -0.037979, -0.996232,
		0.740007, -0.671823, -0.032308,
		-0.668064, -0.739737, 0.080489,
		29.367895, 35.189037, 29.141367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966637, 35.196850, 28.589277>,  <29.835539, 35.706852, 29.085024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966637, 35.196850, 28.589277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576723, 35.159256, 28.670233>,  <29.342775, 35.136700, 28.718805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576723, 35.159256, 28.670233>,  <29.966637, 35.196850, 28.589277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576723, 35.159256, 28.670233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210292, 0.083517, -0.974065,
		0.074601, -0.992069, -0.101167,
		-0.974788, -0.093941, 0.202393,
		29.284288, 35.131062, 28.730949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770094, 34.643448, 28.036665>,  <29.966637, 35.196850, 28.589277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770094, 34.643448, 28.036665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431772, 34.813557, 28.165514>,  <29.228779, 34.915623, 28.242823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431772, 34.813557, 28.165514>,  <29.770094, 34.643448, 28.036665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431772, 34.813557, 28.165514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328620, 0.060345, -0.942532,
		-0.420271, -0.903052, 0.088713,
		-0.845802, 0.425272, 0.322122,
		29.178032, 34.941139, 28.262150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295601, 34.484108, 27.489502>,  <29.770094, 34.643448, 28.036665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295601, 34.484108, 27.489502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101484, 34.767330, 27.694696>,  <28.985014, 34.937263, 27.817814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101484, 34.767330, 27.694696>,  <29.295601, 34.484108, 27.489502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101484, 34.767330, 27.694696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526130, 0.232120, -0.818112,
		-0.698340, -0.666920, 0.259882,
		-0.485292, 0.708052, 0.512986,
		28.955896, 34.979744, 27.848593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581669, 34.345352, 27.348732>,  <29.295601, 34.484108, 27.489502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581669, 34.345352, 27.348732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611942, 34.732525, 27.444551>,  <28.630106, 34.964828, 27.502043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.611942, 34.732525, 27.444551>,  <28.581669, 34.345352, 27.348732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611942, 34.732525, 27.444551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540285, 0.241725, -0.806016,
		-0.838072, -0.068423, 0.541252,
		0.075684, 0.967930, 0.239550,
		28.634647, 35.022903, 27.516417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932962, 34.604187, 27.306528>,  <28.581669, 34.345352, 27.348732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932962, 34.604187, 27.306528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.180473, 34.917835, 27.287445>,  <28.328979, 35.106022, 27.275995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.180473, 34.917835, 27.287445>,  <27.932962, 34.604187, 27.306528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180473, 34.917835, 27.287445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535568, 0.376648, -0.755846,
		-0.574702, 0.493252, 0.653009,
		0.618777, 0.784117, -0.047709,
		28.366106, 35.153069, 27.273132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513525, 35.243252, 27.304455>,  <27.932962, 34.604187, 27.306528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513525, 35.243252, 27.304455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875401, 35.275440, 27.137093>,  <28.092525, 35.294754, 27.036674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.875401, 35.275440, 27.137093>,  <27.513525, 35.243252, 27.304455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875401, 35.275440, 27.137093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418115, 0.356577, -0.835483,
		0.081964, 0.930794, 0.356236,
		0.904689, 0.080469, -0.418406,
		28.146807, 35.299580, 27.011570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452665, 35.798290, 26.916391>,  <27.513525, 35.243252, 27.304455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452665, 35.798290, 26.916391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775505, 35.622131, 26.759094>,  <27.969210, 35.516438, 26.664717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775505, 35.622131, 26.759094>,  <27.452665, 35.798290, 26.916391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775505, 35.622131, 26.759094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358705, 0.163268, -0.919062,
		0.468954, 0.882834, -0.026198,
		0.807102, -0.440395, -0.393242,
		28.017635, 35.490013, 26.641121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480005, 36.091927, 26.325312>,  <27.452665, 35.798290, 26.916391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480005, 36.091927, 26.325312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681629, 35.750690, 26.271416>,  <27.802603, 35.545948, 26.239079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.681629, 35.750690, 26.271416>,  <27.480005, 36.091927, 26.325312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681629, 35.750690, 26.271416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394651, -0.088739, -0.914536,
		0.768229, 0.514154, -0.381404,
		0.504058, -0.853095, -0.134740,
		27.832846, 35.494762, 26.230993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.926380, 33.386902, 46.485657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.530975, 33.416145, 46.538586>,  <39.293732, 33.433689, 46.570343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.530975, 33.416145, 46.538586>,  <39.926380, 33.386902, 46.485657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530975, 33.416145, 46.538586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148068, 0.291824, 0.944942,
		0.030468, 0.953674, -0.299295,
		-0.988508, 0.073107, 0.132318,
		39.234425, 33.438076, 46.578281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795784, 34.096619, 46.647366>,  <39.926380, 33.386902, 46.485657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795784, 34.096619, 46.647366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477051, 33.906590, 46.796688>,  <39.285809, 33.792572, 46.886280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477051, 33.906590, 46.796688>,  <39.795784, 34.096619, 46.647366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477051, 33.906590, 46.796688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041741, 0.573094, 0.818426,
		-0.602751, 0.667734, -0.436832,
		-0.796837, -0.475073, 0.373305,
		39.237999, 33.764069, 46.908680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380077, 34.614365, 46.910847>,  <39.795784, 34.096619, 46.647366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380077, 34.614365, 46.910847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237076, 34.293892, 47.102802>,  <39.151276, 34.101608, 47.217976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237076, 34.293892, 47.102802>,  <39.380077, 34.614365, 46.910847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237076, 34.293892, 47.102802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059154, 0.532245, 0.844521,
		-0.932038, 0.273529, -0.237671,
		-0.357500, -0.801185, 0.479892,
		39.129826, 34.053535, 47.246769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710953, 34.773750, 47.199688>,  <39.380077, 34.614365, 46.910847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710953, 34.773750, 47.199688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848911, 34.463390, 47.410980>,  <38.931686, 34.277176, 47.537758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848911, 34.463390, 47.410980>,  <38.710953, 34.773750, 47.199688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848911, 34.463390, 47.410980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220310, 0.480129, 0.849082,
		-0.912420, -0.409221, -0.005343,
		0.344897, -0.775896, 0.528235,
		38.952381, 34.230621, 47.569450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185074, 34.561344, 47.789928>,  <38.710953, 34.773750, 47.199688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185074, 34.561344, 47.789928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.537144, 34.413067, 47.908508>,  <38.748386, 34.324100, 47.979656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.537144, 34.413067, 47.908508>,  <38.185074, 34.561344, 47.789928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537144, 34.413067, 47.908508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202315, 0.271992, 0.940792,
		-0.429380, -0.888034, 0.164402,
		0.880172, -0.370696, 0.296451,
		38.801193, 34.301857, 47.997444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093700, 34.422062, 48.551395>,  <38.185074, 34.561344, 47.789928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093700, 34.422062, 48.551395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.488022, 34.406231, 48.486130>,  <38.724613, 34.396732, 48.446972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.488022, 34.406231, 48.486130>,  <38.093700, 34.422062, 48.551395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488022, 34.406231, 48.486130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165857, 0.380524, 0.909777,
		0.026085, -0.923924, 0.381685,
		0.985805, -0.039574, -0.163165,
		38.783764, 34.394360, 48.437180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393311, 34.298531, 49.231113>,  <38.093700, 34.422062, 48.551395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393311, 34.298531, 49.231113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707523, 34.427341, 49.019745>,  <38.896053, 34.504627, 48.892921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.707523, 34.427341, 49.019745>,  <38.393311, 34.298531, 49.231113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707523, 34.427341, 49.019745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379545, 0.423724, 0.822438,
		0.488756, -0.846614, 0.210625,
		0.785534, 0.322030, -0.528425,
		38.943184, 34.523949, 48.861217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938702, 34.132999, 49.640568>,  <38.393311, 34.298531, 49.231113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938702, 34.132999, 49.640568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048172, 34.424534, 49.389523>,  <39.113853, 34.599457, 49.238895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048172, 34.424534, 49.389523>,  <38.938702, 34.132999, 49.640568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048172, 34.424534, 49.389523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283738, 0.562306, 0.776727,
		0.919019, -0.390647, -0.052911,
		0.273674, 0.728840, -0.627611,
		39.130276, 34.643185, 49.201241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593800, 34.371254, 49.774780>,  <38.938702, 34.132999, 49.640568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593800, 34.371254, 49.774780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458920, 34.704430, 49.599277>,  <39.377991, 34.904335, 49.493977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458920, 34.704430, 49.599277>,  <39.593800, 34.371254, 49.774780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458920, 34.704430, 49.599277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302713, 0.537234, 0.787239,
		0.891439, 0.132635, -0.433295,
		-0.337196, 0.832939, -0.438761,
		39.357761, 34.954311, 49.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128826, 34.858456, 49.994583>,  <39.593800, 34.371254, 49.774780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128826, 34.858456, 49.994583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793850, 35.036930, 49.868340>,  <39.592865, 35.144016, 49.792595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.793850, 35.036930, 49.868340>,  <40.128826, 34.858456, 49.994583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793850, 35.036930, 49.868340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070890, 0.661283, 0.746779,
		0.541908, 0.603011, -0.585417,
		-0.837443, 0.446186, -0.315608,
		39.542618, 35.170784, 49.773659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233425, 35.600380, 49.891525>,  <40.128826, 34.858456, 49.994583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233425, 35.600380, 49.891525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840767, 35.566029, 49.959648>,  <39.605171, 35.545418, 50.000523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.840767, 35.566029, 49.959648>,  <40.233425, 35.600380, 49.891525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840767, 35.566029, 49.959648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011054, 0.865788, 0.500288,
		-0.190414, 0.492986, -0.848945,
		-0.981642, -0.085878, 0.170307,
		39.546276, 35.540264, 50.010742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898628, 36.216091, 49.528843>,  <40.233425, 35.600380, 49.891525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898628, 36.216091, 49.528843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741539, 36.033852, 49.848392>,  <39.647285, 35.924507, 50.040123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741539, 36.033852, 49.848392>,  <39.898628, 36.216091, 49.528843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741539, 36.033852, 49.848392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111413, 0.838696, 0.533081,
		-0.912885, 0.298356, -0.278612,
		-0.392718, -0.455601, 0.798874,
		39.623722, 35.897171, 50.088055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446819, 36.604107, 49.080856>,  <39.898628, 36.216091, 49.528843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446819, 36.604107, 49.080856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.072472, 36.502438, 49.178463>,  <38.847862, 36.441437, 49.237026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.072472, 36.502438, 49.178463>,  <39.446819, 36.604107, 49.080856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072472, 36.502438, 49.178463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337243, -0.846764, 0.411409,
		0.102057, 0.467319, 0.878178,
		-0.935869, -0.254172, 0.244019,
		38.791710, 36.426186, 49.251667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442642, 37.284988, 49.039104>,  <39.446819, 36.604107, 49.080856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442642, 37.284988, 49.039104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697601, 37.561455, 48.902863>,  <39.850578, 37.727337, 48.821117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697601, 37.561455, 48.902863>,  <39.442642, 37.284988, 49.039104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697601, 37.561455, 48.902863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758984, 0.639427, -0.122789,
		0.132925, 0.336779, 0.932154,
		0.637397, 0.691168, -0.340606,
		39.888821, 37.768806, 48.800682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500454, 37.822838, 49.399975>,  <39.442642, 37.284988, 49.039104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500454, 37.822838, 49.399975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584000, 37.920143, 49.021091>,  <39.634125, 37.978527, 48.793762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584000, 37.920143, 49.021091>,  <39.500454, 37.822838, 49.399975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584000, 37.920143, 49.021091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750479, 0.660880, 0.004247,
		0.627023, 0.709972, 0.320597,
		0.208861, 0.243264, -0.947206,
		39.646656, 37.993122, 48.736931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550018, 38.418224, 49.899906>,  <39.500454, 37.822838, 49.399975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550018, 38.418224, 49.899906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.459118, 38.797482, 49.988792>,  <39.404579, 39.025036, 50.042122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.459118, 38.797482, 49.988792>,  <39.550018, 38.418224, 49.899906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459118, 38.797482, 49.988792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369666, 0.127117, -0.920429,
		-0.900947, -0.291312, 0.321609,
		-0.227250, 0.948145, 0.222213,
		39.390942, 39.081924, 50.055458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838013, 38.507488, 49.731674>,  <39.550018, 38.418224, 49.899906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838013, 38.507488, 49.731674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.012333, 38.866192, 49.700939>,  <39.116924, 39.081413, 49.682499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.012333, 38.866192, 49.700939>,  <38.838013, 38.507488, 49.731674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012333, 38.866192, 49.700939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347717, 0.089010, -0.933365,
		-0.830161, 0.433481, 0.350608,
		0.435804, 0.896756, -0.076836,
		39.143074, 39.135220, 49.677887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343857, 38.900871, 49.428345>,  <38.838013, 38.507488, 49.731674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343857, 38.900871, 49.428345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668449, 39.118359, 49.342674>,  <38.863205, 39.248852, 49.291271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668449, 39.118359, 49.342674>,  <38.343857, 38.900871, 49.428345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668449, 39.118359, 49.342674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281721, 0.042889, -0.958537,
		-0.511986, 0.838173, 0.187980,
		0.811482, 0.543716, -0.214172,
		38.911896, 39.281475, 49.278423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064018, 39.421524, 49.057972>,  <38.343857, 38.900871, 49.428345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064018, 39.421524, 49.057972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452290, 39.384464, 48.969246>,  <38.685253, 39.362228, 48.916012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452290, 39.384464, 48.969246>,  <38.064018, 39.421524, 49.057972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452290, 39.384464, 48.969246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229445, -0.081874, -0.969872,
		0.071700, 0.992327, -0.100732,
		0.970677, -0.092652, -0.221814,
		38.743492, 39.356670, 48.902702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213757, 39.974018, 48.533226>,  <38.064018, 39.421524, 49.057972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213757, 39.974018, 48.533226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.504879, 39.700047, 48.519531>,  <38.679550, 39.535664, 48.511314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.504879, 39.700047, 48.519531>,  <38.213757, 39.974018, 48.533226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504879, 39.700047, 48.519531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006819, 0.042699, -0.999065,
		0.685753, 0.727355, 0.026406,
		0.727802, -0.684932, -0.034241,
		38.723221, 39.494568, 48.509258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760746, 40.318657, 48.188625>,  <38.213757, 39.974018, 48.533226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760746, 40.318657, 48.188625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766762, 39.921013, 48.145679>,  <38.770370, 39.682426, 48.119911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.766762, 39.921013, 48.145679>,  <38.760746, 40.318657, 48.188625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766762, 39.921013, 48.145679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133599, 0.108412, -0.985088,
		0.990921, 0.000472, 0.134442,
		0.015040, -0.994106, -0.107364,
		38.771275, 39.622780, 48.113472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258007, 40.293358, 47.709255>,  <38.760746, 40.318657, 48.188625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258007, 40.293358, 47.709255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114292, 39.922363, 47.667915>,  <39.028065, 39.699768, 47.643112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.114292, 39.922363, 47.667915>,  <39.258007, 40.293358, 47.709255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114292, 39.922363, 47.667915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101409, 0.148893, -0.983639,
		0.927700, -0.342929, -0.147551,
		-0.359288, -0.927486, -0.103352,
		39.006504, 39.644119, 47.636909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621975, 40.085182, 47.115486>,  <39.258007, 40.293358, 47.709255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621975, 40.085182, 47.115486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.308147, 39.840546, 47.156311>,  <39.119850, 39.693764, 47.180805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.308147, 39.840546, 47.156311>,  <39.621975, 40.085182, 47.115486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308147, 39.840546, 47.156311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112966, -0.020852, -0.993380,
		0.609666, -0.790902, -0.052728,
		-0.784567, -0.611587, 0.102058,
		39.072777, 39.657070, 47.186928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808495, 39.689407, 46.573502>,  <39.621975, 40.085182, 47.115486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808495, 39.689407, 46.573502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427067, 39.577015, 46.616875>,  <39.198212, 39.509579, 46.642899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.427067, 39.577015, 46.616875>,  <39.808495, 39.689407, 46.573502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427067, 39.577015, 46.616875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086040, -0.090887, -0.992137,
		0.288624, -0.955401, 0.062492,
		-0.953568, -0.280978, 0.108435,
		39.140995, 39.492722, 46.649406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745232, 39.117458, 46.086739>,  <39.808495, 39.689407, 46.573502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745232, 39.117458, 46.086739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373356, 39.236526, 46.173515>,  <39.150230, 39.307968, 46.225582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.373356, 39.236526, 46.173515>,  <39.745232, 39.117458, 46.086739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373356, 39.236526, 46.173515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286037, -0.212389, -0.934384,
		-0.232065, -0.930743, 0.282602,
		-0.929693, 0.297672, 0.216939,
		39.094448, 39.325829, 46.238598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296230, 38.537094, 45.789780>,  <39.745232, 39.117458, 46.086739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296230, 38.537094, 45.789780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094208, 38.881428, 45.814697>,  <38.972992, 39.088028, 45.829647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094208, 38.881428, 45.814697>,  <39.296230, 38.537094, 45.789780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094208, 38.881428, 45.814697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248646, -0.076007, -0.965608,
		-0.826493, -0.503178, 0.252431,
		-0.505059, 0.860834, 0.062294,
		38.942692, 39.139679, 45.833385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561554, 38.483978, 45.519711>,  <39.296230, 38.537094, 45.789780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561554, 38.483978, 45.519711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632248, 38.877537, 45.508957>,  <38.674664, 39.113670, 45.502506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632248, 38.877537, 45.508957>,  <38.561554, 38.483978, 45.519711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632248, 38.877537, 45.508957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493440, 0.064937, -0.867352,
		-0.851635, 0.166552, 0.496968,
		0.176731, 0.983892, -0.026881,
		38.685268, 39.172703, 45.500893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933071, 38.757347, 45.416485>,  <38.561554, 38.483978, 45.519711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933071, 38.757347, 45.416485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212902, 39.013676, 45.290031>,  <38.380802, 39.167473, 45.214161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212902, 39.013676, 45.290031>,  <37.933071, 38.757347, 45.416485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212902, 39.013676, 45.290031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351100, -0.077053, -0.933162,
		-0.622348, 0.763813, 0.171087,
		0.699579, 0.640821, -0.316129,
		38.422775, 39.205921, 45.195194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405251, 38.957531, 45.784554>,  <37.933071, 38.757347, 45.416485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405251, 38.957531, 45.784554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024261, 38.880562, 45.690098>,  <36.795666, 38.834381, 45.633423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024261, 38.880562, 45.690098>,  <37.405251, 38.957531, 45.784554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024261, 38.880562, 45.690098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253794, 0.072594, 0.964530,
		-0.168453, 0.978624, -0.117979,
		-0.952477, -0.192420, -0.236140,
		36.738518, 38.822834, 45.619255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977215, 39.413910, 46.137917>,  <37.405251, 38.957531, 45.784554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977215, 39.413910, 46.137917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724014, 39.109138, 46.083099>,  <36.572094, 38.926277, 46.050209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.724014, 39.109138, 46.083099>,  <36.977215, 39.413910, 46.137917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724014, 39.109138, 46.083099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226663, 0.013147, 0.973885,
		-0.740224, 0.647533, -0.181022,
		-0.633002, -0.761924, -0.137040,
		36.534115, 38.880562, 46.041988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352215, 39.661419, 46.390949>,  <36.977215, 39.413910, 46.137917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352215, 39.661419, 46.390949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288025, 39.268135, 46.356201>,  <36.249512, 39.032166, 46.335354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288025, 39.268135, 46.356201>,  <36.352215, 39.661419, 46.390949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288025, 39.268135, 46.356201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468122, -0.001667, 0.883662,
		-0.868970, 0.182470, -0.459994,
		-0.160475, -0.983210, -0.086867,
		36.239883, 38.973171, 46.330139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656147, 39.570415, 46.553303>,  <36.352215, 39.661419, 46.390949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656147, 39.570415, 46.553303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865738, 39.238785, 46.631363>,  <35.991493, 39.039806, 46.678200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865738, 39.238785, 46.631363>,  <35.656147, 39.570415, 46.553303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865738, 39.238785, 46.631363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392906, -0.031991, 0.919022,
		-0.755694, -0.558223, -0.342511,
		0.523977, -0.829074, 0.195154,
		36.022930, 38.990063, 46.689911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155369, 39.266750, 47.030220>,  <35.656147, 39.570415, 46.553303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155369, 39.266750, 47.030220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516006, 39.099281, 47.073750>,  <35.732388, 38.998802, 47.099869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516006, 39.099281, 47.073750>,  <35.155369, 39.266750, 47.030220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516006, 39.099281, 47.073750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143654, -0.052477, 0.988236,
		-0.408033, -0.906621, -0.107457,
		0.901595, -0.418670, 0.108827,
		35.786484, 38.973682, 47.106396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145878, 38.569408, 47.437099>,  <35.155369, 39.266750, 47.030220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145878, 38.569408, 47.437099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521782, 38.703884, 47.461845>,  <35.747326, 38.784569, 47.476692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.521782, 38.703884, 47.461845>,  <35.145878, 38.569408, 47.437099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521782, 38.703884, 47.461845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065029, -0.001854, 0.997882,
		0.335591, -0.941793, 0.020120,
		0.939761, 0.336189, 0.061866,
		35.803711, 38.804741, 47.480404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384563, 38.128052, 48.001949>,  <35.145878, 38.569408, 47.437099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384563, 38.128052, 48.001949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648224, 38.428818, 47.997147>,  <35.806419, 38.609276, 47.994263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648224, 38.428818, 47.997147>,  <35.384563, 38.128052, 48.001949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648224, 38.428818, 47.997147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154177, 0.150753, 0.976475,
		0.736038, -0.641791, 0.215297,
		0.659150, 0.751916, -0.012011,
		35.845970, 38.654392, 47.993542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227283, 37.418617, 48.312775>,  <35.384563, 38.128052, 48.001949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227283, 37.418617, 48.312775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841061, 37.354229, 48.394539>,  <34.609325, 37.315598, 48.443600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841061, 37.354229, 48.394539>,  <35.227283, 37.418617, 48.312775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841061, 37.354229, 48.394539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241569, 0.262805, -0.934119,
		0.096642, -0.951327, -0.292638,
		-0.965559, -0.160968, 0.204413,
		34.551392, 37.305939, 48.455864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051815, 37.088203, 47.776485>,  <35.227283, 37.418617, 48.312775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051815, 37.088203, 47.776485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704723, 37.235451, 47.910072>,  <34.496468, 37.323799, 47.990223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.704723, 37.235451, 47.910072>,  <35.051815, 37.088203, 47.776485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704723, 37.235451, 47.910072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378824, -0.054837, -0.923843,
		-0.321769, -0.928161, 0.187035,
		-0.867731, 0.368118, 0.333964,
		34.444405, 37.345886, 48.010262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481590, 36.667736, 47.465984>,  <35.051815, 37.088203, 47.776485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481590, 36.667736, 47.465984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315384, 36.997143, 47.620472>,  <34.215660, 37.194786, 47.713165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315384, 36.997143, 47.620472>,  <34.481590, 36.667736, 47.465984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315384, 36.997143, 47.620472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629645, 0.046017, -0.775519,
		-0.656425, -0.565424, 0.499402,
		-0.415517, 0.823516, 0.386223,
		34.190727, 37.244198, 47.736340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709679, 36.644592, 47.427204>,  <34.481590, 36.667736, 47.465984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709679, 36.644592, 47.427204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862068, 37.014423, 47.426331>,  <33.953503, 37.236324, 47.425808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862068, 37.014423, 47.426331>,  <33.709679, 36.644592, 47.427204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862068, 37.014423, 47.426331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512378, 0.209160, -0.832899,
		-0.769626, 0.318436, 0.553421,
		0.380978, 0.924581, -0.002185,
		33.976360, 37.291798, 47.425674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129166, 37.046303, 47.222530>,  <33.709679, 36.644592, 47.427204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129166, 37.046303, 47.222530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438786, 37.281658, 47.129028>,  <33.624557, 37.422871, 47.072926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438786, 37.281658, 47.129028>,  <33.129166, 37.046303, 47.222530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438786, 37.281658, 47.129028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423736, 0.207127, -0.881786,
		-0.470412, 0.781602, 0.409648,
		0.774054, 0.588385, -0.233758,
		33.671001, 37.458172, 47.058903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853264, 37.651970, 47.017269>,  <33.129166, 37.046303, 47.222530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853264, 37.651970, 47.017269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224682, 37.674252, 46.870461>,  <33.447533, 37.687622, 46.782375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.224682, 37.674252, 46.870461>,  <32.853264, 37.651970, 47.017269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224682, 37.674252, 46.870461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371200, 0.151020, -0.916190,
		0.004390, 0.986960, 0.160907,
		0.928543, 0.055707, -0.367022,
		33.503246, 37.690964, 46.760353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808945, 38.005886, 46.398888>,  <32.853264, 37.651970, 47.017269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808945, 38.005886, 46.398888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162540, 37.829800, 46.335926>,  <33.374699, 37.724148, 46.298149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.162540, 37.829800, 46.335926>,  <32.808945, 38.005886, 46.398888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162540, 37.829800, 46.335926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181442, -0.012745, -0.983319,
		0.430864, 0.897803, -0.091140,
		0.883988, -0.440213, -0.157407,
		33.427738, 37.697735, 46.288704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.352470, 33.503815, 50.993767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512230, 33.851551, 50.877327>,  <36.608086, 34.060192, 50.807465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512230, 33.851551, 50.877327>,  <36.352470, 33.503815, 50.993767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512230, 33.851551, 50.877327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058372, -0.292765, -0.954401,
		-0.914919, 0.398175, -0.066184,
		0.399395, 0.869336, -0.291099,
		36.632050, 34.112350, 50.789997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920795, 33.982651, 50.559650>,  <36.352470, 33.503815, 50.993767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920795, 33.982651, 50.559650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.310322, 34.048622, 50.497074>,  <36.544037, 34.088207, 50.459530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.310322, 34.048622, 50.497074>,  <35.920795, 33.982651, 50.559650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310322, 34.048622, 50.497074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114640, -0.237951, -0.964488,
		-0.196301, 0.957171, -0.212814,
		0.973819, 0.164933, -0.156440,
		36.602467, 34.098103, 50.450142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950024, 34.537971, 50.025536>,  <35.920795, 33.982651, 50.559650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950024, 34.537971, 50.025536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300056, 34.344475, 50.019680>,  <36.510078, 34.228374, 50.016167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300056, 34.344475, 50.019680>,  <35.950024, 34.537971, 50.025536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300056, 34.344475, 50.019680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070219, -0.096989, -0.992805,
		0.478846, 0.869818, -0.118842,
		0.875086, -0.483745, -0.014635,
		36.562584, 34.199352, 50.015289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346615, 34.751987, 49.411144>,  <35.950024, 34.537971, 50.025536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346615, 34.751987, 49.411144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.468025, 34.384689, 49.512890>,  <36.540871, 34.164310, 49.573936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.468025, 34.384689, 49.512890>,  <36.346615, 34.751987, 49.411144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468025, 34.384689, 49.512890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133220, -0.305231, -0.942914,
		0.943463, 0.252315, -0.214975,
		0.303528, -0.918244, 0.254360,
		36.559082, 34.109215, 49.589199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783012, 34.502579, 48.772816>,  <36.346615, 34.751987, 49.411144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783012, 34.502579, 48.772816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711906, 34.159260, 48.965366>,  <36.669243, 33.953266, 49.080898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711906, 34.159260, 48.965366>,  <36.783012, 34.502579, 48.772816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711906, 34.159260, 48.965366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284166, -0.423558, -0.860145,
		0.942152, -0.289690, -0.168607,
		-0.177760, -0.858300, 0.481376,
		36.658577, 33.901772, 49.109779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126202, 33.926609, 48.322956>,  <36.783012, 34.502579, 48.772816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126202, 33.926609, 48.322956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.871571, 33.735741, 48.565304>,  <36.718792, 33.621220, 48.710712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.871571, 33.735741, 48.565304>,  <37.126202, 33.926609, 48.322956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871571, 33.735741, 48.565304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268845, -0.599021, -0.754252,
		0.722837, -0.643023, 0.253036,
		-0.636576, -0.477174, 0.605868,
		36.680599, 33.592590, 48.747063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254677, 33.153576, 48.266426>,  <37.126202, 33.926609, 48.322956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254677, 33.153576, 48.266426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.874508, 33.160046, 48.390648>,  <36.646408, 33.163929, 48.465179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.874508, 33.160046, 48.390648>,  <37.254677, 33.153576, 48.266426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874508, 33.160046, 48.390648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245403, -0.652399, -0.717045,
		0.191004, -0.757703, 0.624022,
		-0.950419, 0.016179, 0.310553,
		36.589382, 33.164898, 48.483814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920994, 32.392895, 48.473568>,  <37.254677, 33.153576, 48.266426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920994, 32.392895, 48.473568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610287, 32.635181, 48.404583>,  <36.423862, 32.780552, 48.363194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610287, 32.635181, 48.404583>,  <36.920994, 32.392895, 48.473568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610287, 32.635181, 48.404583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458011, -0.731264, -0.505449,
		-0.432275, -0.313625, 0.845445,
		-0.776766, 0.605716, -0.172464,
		36.377258, 32.816895, 48.352844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442532, 31.875851, 48.511318>,  <36.920994, 32.392895, 48.473568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442532, 31.875851, 48.511318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.262390, 32.179462, 48.323250>,  <36.154305, 32.361629, 48.210411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.262390, 32.179462, 48.323250>,  <36.442532, 31.875851, 48.511318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262390, 32.179462, 48.323250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518674, -0.651032, -0.554197,
		-0.726746, -0.005721, 0.686883,
		-0.450353, 0.759029, -0.470168,
		36.127285, 32.407169, 48.182201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644363, 31.698645, 48.437534>,  <36.442532, 31.875851, 48.511318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644363, 31.698645, 48.437534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717655, 31.982456, 48.165359>,  <35.761631, 32.152744, 48.002052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717655, 31.982456, 48.165359>,  <35.644363, 31.698645, 48.437534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717655, 31.982456, 48.165359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533813, -0.509415, -0.674937,
		-0.825513, 0.486894, 0.285416,
		0.183228, 0.709529, -0.680439,
		35.772625, 32.195316, 47.961227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066910, 31.879360, 48.136230>,  <35.644363, 31.698645, 48.437534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066910, 31.879360, 48.136230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324619, 31.981167, 47.847748>,  <35.479244, 32.042252, 47.674660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.324619, 31.981167, 47.847748>,  <35.066910, 31.879360, 48.136230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324619, 31.981167, 47.847748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592422, -0.430301, -0.681085,
		-0.483682, 0.866061, -0.126449,
		0.644273, 0.254518, -0.721203,
		35.517902, 32.057522, 47.631386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640835, 32.074532, 47.580742>,  <35.066910, 31.879360, 48.136230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640835, 32.074532, 47.580742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996452, 32.045788, 47.399879>,  <35.209824, 32.028542, 47.291363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996452, 32.045788, 47.399879>,  <34.640835, 32.074532, 47.580742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996452, 32.045788, 47.399879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449762, -0.321666, -0.833214,
		-0.085564, 0.944122, -0.318296,
		0.889041, -0.071864, -0.452153,
		35.263165, 32.024227, 47.264233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119282, 32.666840, 47.499763>,  <34.640835, 32.074532, 47.580742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119282, 32.666840, 47.499763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751835, 32.664700, 47.657810>,  <33.531368, 32.663414, 47.752640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751835, 32.664700, 47.657810>,  <34.119282, 32.666840, 47.499763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751835, 32.664700, 47.657810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363737, 0.379284, 0.850787,
		-0.154414, 0.925265, -0.346470,
		-0.918614, -0.005350, 0.395120,
		33.476250, 32.663094, 47.776344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092880, 33.248661, 47.913387>,  <34.119282, 32.666840, 47.499763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092880, 33.248661, 47.913387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784874, 33.034374, 48.051998>,  <33.600071, 32.905804, 48.135166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784874, 33.034374, 48.051998>,  <34.092880, 33.248661, 47.913387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784874, 33.034374, 48.051998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266259, 0.223763, 0.937569,
		-0.579809, 0.814212, -0.029663,
		-0.770018, -0.535713, 0.346531,
		33.553867, 32.873661, 48.155956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757076, 33.693161, 48.428238>,  <34.092880, 33.248661, 47.913387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757076, 33.693161, 48.428238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.606625, 33.332722, 48.514534>,  <33.516354, 33.116459, 48.566311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.606625, 33.332722, 48.514534>,  <33.757076, 33.693161, 48.428238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606625, 33.332722, 48.514534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111781, 0.187007, 0.975978,
		-0.919799, 0.391212, 0.030386,
		-0.376132, -0.901100, 0.215738,
		33.493786, 33.062393, 48.579254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296715, 33.864552, 48.985001>,  <33.757076, 33.693161, 48.428238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296715, 33.864552, 48.985001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375439, 33.472847, 49.004196>,  <33.422672, 33.237823, 49.015713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375439, 33.472847, 49.004196>,  <33.296715, 33.864552, 48.985001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375439, 33.472847, 49.004196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032308, 0.042444, 0.998577,
		-0.979909, -0.198084, -0.023284,
		0.196814, -0.979266, 0.047991,
		33.434483, 33.179066, 49.018593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841301, 33.491413, 49.507145>,  <33.296715, 33.864552, 48.985001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841301, 33.491413, 49.507145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150490, 33.240082, 49.472015>,  <33.336002, 33.089283, 49.450939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150490, 33.240082, 49.472015>,  <32.841301, 33.491413, 49.507145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150490, 33.240082, 49.472015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125830, 0.016159, 0.991920,
		-0.621832, -0.777781, 0.091553,
		0.772976, -0.628327, -0.087821,
		33.382381, 33.051582, 49.445671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595413, 32.964592, 49.959911>,  <32.841301, 33.491413, 49.507145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595413, 32.964592, 49.959911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.991608, 32.938461, 49.911472>,  <33.229324, 32.922783, 49.882408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.991608, 32.938461, 49.911472>,  <32.595413, 32.964592, 49.959911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991608, 32.938461, 49.911472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120945, -0.006285, 0.992639,
		-0.065609, -0.997844, 0.001676,
		0.990489, -0.065329, -0.121096,
		33.288754, 32.918865, 49.875145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896523, 32.368603, 50.507893>,  <32.595413, 32.964592, 49.959911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896523, 32.368603, 50.507893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190002, 32.613308, 50.389618>,  <33.366089, 32.760132, 50.318653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190002, 32.613308, 50.389618>,  <32.896523, 32.368603, 50.507893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190002, 32.613308, 50.389618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233776, 0.181327, 0.955233,
		0.637996, -0.769975, -0.009978,
		0.733696, 0.611768, -0.295688,
		33.410110, 32.796837, 50.300911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416580, 32.204525, 51.025322>,  <32.896523, 32.368603, 50.507893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416580, 32.204525, 51.025322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517139, 32.541649, 50.834969>,  <33.577477, 32.743923, 50.720757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517139, 32.541649, 50.834969>,  <33.416580, 32.204525, 51.025322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517139, 32.541649, 50.834969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292461, 0.402538, 0.867427,
		0.922639, -0.357249, -0.145291,
		0.251402, 0.842814, -0.475879,
		33.592560, 32.794495, 50.692204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093952, 32.289742, 51.134544>,  <33.416580, 32.204525, 51.025322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093952, 32.289742, 51.134544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937069, 32.654610, 51.086998>,  <33.842941, 32.873531, 51.058472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937069, 32.654610, 51.086998>,  <34.093952, 32.289742, 51.134544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937069, 32.654610, 51.086998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451258, 0.303390, 0.839239,
		0.801587, 0.275515, -0.530613,
		-0.392205, 0.912166, -0.118865,
		33.819408, 32.928261, 51.051338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614117, 32.748657, 51.334927>,  <34.093952, 32.289742, 51.134544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614117, 32.748657, 51.334927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299423, 32.995571, 51.333359>,  <34.110607, 33.143719, 51.332417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299423, 32.995571, 51.333359>,  <34.614117, 32.748657, 51.334927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299423, 32.995571, 51.333359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436733, 0.561086, 0.703169,
		0.436255, 0.551492, -0.711012,
		-0.786731, 0.617284, -0.003922,
		34.063404, 33.180756, 51.332184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899185, 33.437691, 51.395725>,  <34.614117, 32.748657, 51.334927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899185, 33.437691, 51.395725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514008, 33.511982, 51.473949>,  <34.282902, 33.556557, 51.520885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.514008, 33.511982, 51.473949>,  <34.899185, 33.437691, 51.395725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514008, 33.511982, 51.473949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268652, 0.724425, 0.634850,
		-0.023763, 0.663863, -0.747476,
		-0.962944, 0.185725, 0.195562,
		34.225124, 33.567699, 51.532619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710140, 34.156090, 51.296474>,  <34.899185, 33.437691, 51.395725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710140, 34.156090, 51.296474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.465538, 33.990818, 51.566391>,  <34.318775, 33.891655, 51.728340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.465538, 33.990818, 51.566391>,  <34.710140, 34.156090, 51.296474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465538, 33.990818, 51.566391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227070, 0.725311, 0.649895,
		-0.757956, 0.550640, -0.349711,
		-0.611507, -0.413183, 0.674788,
		34.282085, 33.866863, 51.768826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295570, 34.712212, 51.539803>,  <34.710140, 34.156090, 51.296474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295570, 34.712212, 51.539803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.304329, 34.417267, 51.809860>,  <34.309586, 34.240299, 51.971893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.304329, 34.417267, 51.809860>,  <34.295570, 34.712212, 51.539803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304329, 34.417267, 51.809860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024518, 0.675497, 0.736955,
		-0.999460, 0.000418, 0.032868,
		0.021895, -0.737363, 0.675142,
		34.310898, 34.196056, 52.012402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937374, 34.990055, 51.115688>,  <34.295570, 34.712212, 51.539803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937374, 34.990055, 51.115688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.889660, 35.372353, 51.223263>,  <34.861031, 35.601730, 51.287807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.889660, 35.372353, 51.223263>,  <34.937374, 34.990055, 51.115688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889660, 35.372353, 51.223263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431702, 0.193996, -0.880908,
		-0.894094, -0.221178, 0.389456,
		-0.119285, 0.955743, 0.268934,
		34.853874, 35.659077, 51.303944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283699, 35.223930, 50.870670>,  <34.937374, 34.990055, 51.115688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283699, 35.223930, 50.870670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.473309, 35.572292, 50.922565>,  <34.587074, 35.781307, 50.953701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.473309, 35.572292, 50.922565>,  <34.283699, 35.223930, 50.870670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473309, 35.572292, 50.922565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433580, 0.359110, -0.826468,
		-0.766360, 0.335518, 0.547832,
		0.474027, 0.870901, 0.129734,
		34.615517, 35.833561, 50.961487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744370, 35.769821, 50.607010>,  <34.283699, 35.223930, 50.870670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744370, 35.769821, 50.607010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108921, 35.934258, 50.614937>,  <34.327652, 36.032921, 50.619694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108921, 35.934258, 50.614937>,  <33.744370, 35.769821, 50.607010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108921, 35.934258, 50.614937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239797, 0.569524, -0.786219,
		-0.334498, 0.711789, 0.617630,
		0.911377, 0.411095, 0.019820,
		34.382336, 36.057587, 50.620884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646313, 36.506485, 50.668198>,  <33.744370, 35.769821, 50.607010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646313, 36.506485, 50.668198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.014679, 36.449696, 50.523006>,  <34.235699, 36.415623, 50.435890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.014679, 36.449696, 50.523006>,  <33.646313, 36.506485, 50.668198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014679, 36.449696, 50.523006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172867, 0.685895, -0.706870,
		0.349323, 0.713716, 0.607111,
		0.920918, -0.141976, -0.362976,
		34.290955, 36.407104, 50.414112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866219, 37.162090, 50.471359>,  <33.646313, 36.506485, 50.668198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866219, 37.162090, 50.471359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133595, 36.952122, 50.260590>,  <34.294018, 36.826141, 50.134129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133595, 36.952122, 50.260590>,  <33.866219, 37.162090, 50.471359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133595, 36.952122, 50.260590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161241, 0.589328, -0.791640,
		0.726081, 0.614122, 0.309289,
		0.668436, -0.524925, -0.526922,
		34.334126, 36.794643, 50.102512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164917, 37.620411, 50.084625>,  <33.866219, 37.162090, 50.471359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164917, 37.620411, 50.084625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243454, 37.265659, 49.917347>,  <34.290577, 37.052807, 49.816978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.243454, 37.265659, 49.917347>,  <34.164917, 37.620411, 50.084625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243454, 37.265659, 49.917347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021428, 0.422515, -0.906102,
		0.980301, 0.186869, 0.063955,
		0.196344, -0.886883, -0.418196,
		34.302357, 36.999596, 49.791889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738049, 37.726627, 49.612514>,  <34.164917, 37.620411, 50.084625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738049, 37.726627, 49.612514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552639, 37.400757, 49.473114>,  <34.441395, 37.205235, 49.389473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.552639, 37.400757, 49.473114>,  <34.738049, 37.726627, 49.612514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552639, 37.400757, 49.473114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097398, 0.344076, -0.933877,
		0.880717, -0.466814, -0.080138,
		-0.463520, -0.814676, -0.348501,
		34.413582, 37.156353, 49.368565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098110, 37.696148, 48.966015>,  <34.738049, 37.726627, 49.612514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098110, 37.696148, 48.966015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799416, 37.431515, 48.938618>,  <34.620197, 37.272736, 48.922180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.799416, 37.431515, 48.938618>,  <35.098110, 37.696148, 48.966015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799416, 37.431515, 48.938618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145229, 0.262681, -0.953890,
		0.649073, -0.702356, -0.292235,
		-0.746735, -0.661585, -0.068496,
		34.575394, 37.233040, 48.918068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586620, 38.140125, 48.683731>,  <35.098110, 37.696148, 48.966015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586620, 38.140125, 48.683731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725861, 38.488453, 48.544884>,  <35.809406, 38.697449, 48.461575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725861, 38.488453, 48.544884>,  <35.586620, 38.140125, 48.683731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725861, 38.488453, 48.544884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093731, 0.336093, 0.937153,
		0.932759, -0.358761, 0.035372,
		0.348102, 0.870822, -0.347121,
		35.830292, 38.749699, 48.440746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208221, 38.195534, 49.059013>,  <35.586620, 38.140125, 48.683731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208221, 38.195534, 49.059013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.125893, 38.571846, 48.951256>,  <36.076496, 38.797634, 48.886600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.125893, 38.571846, 48.951256>,  <36.208221, 38.195534, 49.059013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125893, 38.571846, 48.951256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322191, 0.325083, 0.889108,
		0.924029, 0.096204, -0.370020,
		-0.205823, 0.940779, -0.269391,
		36.064144, 38.854080, 48.870438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803753, 38.600376, 49.167576>,  <36.208221, 38.195534, 49.059013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803753, 38.600376, 49.167576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.485260, 38.842140, 49.178127>,  <36.294163, 38.987198, 49.184460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.485260, 38.842140, 49.178127>,  <36.803753, 38.600376, 49.167576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485260, 38.842140, 49.178127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234468, 0.268096, 0.934425,
		0.557704, 0.750208, -0.355182,
		-0.796235, 0.604412, 0.026382,
		36.246391, 39.023464, 49.186043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986851, 39.182274, 49.543133>,  <36.803753, 38.600376, 49.167576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986851, 39.182274, 49.543133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588280, 39.179386, 49.576797>,  <36.349136, 39.177654, 49.596996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.588280, 39.179386, 49.576797>,  <36.986851, 39.182274, 49.543133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588280, 39.179386, 49.576797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074281, 0.399564, 0.913691,
		-0.040227, 0.916677, -0.397600,
		-0.996426, -0.007221, 0.084165,
		36.289352, 39.177219, 49.602047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762123, 39.848499, 49.798641>,  <36.986851, 39.182274, 49.543133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762123, 39.848499, 49.798641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441422, 39.624092, 49.881054>,  <36.249001, 39.489449, 49.930500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.441422, 39.624092, 49.881054>,  <36.762123, 39.848499, 49.798641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441422, 39.624092, 49.881054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109809, 0.477138, 0.871941,
		-0.587482, 0.676458, -0.444152,
		-0.801753, -0.561021, 0.206029,
		36.200897, 39.455788, 49.942863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090454, 40.325512, 49.903969>,  <36.762123, 39.848499, 49.798641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090454, 40.325512, 49.903969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057777, 39.981415, 50.105289>,  <36.038170, 39.774956, 50.226082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.057777, 39.981415, 50.105289>,  <36.090454, 40.325512, 49.903969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057777, 39.981415, 50.105289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141114, 0.509883, 0.848591,
		-0.986617, -0.001697, -0.163047,
		-0.081695, -0.860242, 0.503298,
		36.033268, 39.723343, 50.256279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435127, 40.458046, 50.288250>,  <36.090454, 40.325512, 49.903969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435127, 40.458046, 50.288250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.679146, 40.175648, 50.432152>,  <35.825558, 40.006210, 50.518494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.679146, 40.175648, 50.432152>,  <35.435127, 40.458046, 50.288250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679146, 40.175648, 50.432152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026878, 0.435324, 0.899872,
		-0.791913, -0.558629, 0.246590,
		0.610042, -0.705993, 0.359754,
		35.862160, 39.963848, 50.540077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185204, 40.233749, 50.821121>,  <35.435127, 40.458046, 50.288250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185204, 40.233749, 50.821121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556301, 40.095348, 50.877075>,  <35.778961, 40.012306, 50.910648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.556301, 40.095348, 50.877075>,  <35.185204, 40.233749, 50.821121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556301, 40.095348, 50.877075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028388, 0.439164, 0.897958,
		-0.372129, -0.829107, 0.417255,
		0.927746, -0.346002, 0.139889,
		35.834625, 39.991547, 50.919041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225685, 40.040535, 51.558617>,  <35.185204, 40.233749, 50.821121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225685, 40.040535, 51.558617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.612011, 40.078896, 51.462280>,  <35.843807, 40.101913, 51.404476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.612011, 40.078896, 51.462280>,  <35.225685, 40.040535, 51.558617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612011, 40.078896, 51.462280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173769, 0.449931, 0.875995,
		0.192373, -0.887899, 0.417885,
		0.965814, 0.095902, -0.240844,
		35.901756, 40.107666, 51.390026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.546085, 34.559788, 36.500568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940498, 34.626144, 36.506519>,  <35.177147, 34.665958, 36.510090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940498, 34.626144, 36.506519>,  <34.546085, 34.559788, 36.500568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940498, 34.626144, 36.506519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137064, 0.757443, 0.638352,
		0.094626, -0.631475, 0.769601,
		0.986032, 0.165889, 0.014879,
		35.236309, 34.675911, 36.510983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788559, 34.579350, 37.163895>,  <34.546085, 34.559788, 36.500568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788559, 34.579350, 37.163895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093853, 34.759766, 36.978840>,  <35.277031, 34.868015, 36.867805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093853, 34.759766, 36.978840>,  <34.788559, 34.579350, 37.163895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093853, 34.759766, 36.978840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068801, 0.655225, 0.752294,
		0.642435, -0.606015, 0.469067,
		0.763246, 0.451028, -0.462634,
		35.322823, 34.895077, 36.840046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455441, 34.659157, 37.690231>,  <34.788559, 34.579350, 37.163895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455441, 34.659157, 37.690231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457504, 34.942581, 37.407982>,  <35.458744, 35.112637, 37.238632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457504, 34.942581, 37.407982>,  <35.455441, 34.659157, 37.690231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457504, 34.942581, 37.407982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071830, 0.703550, 0.707006,
		0.997404, -0.054335, -0.047264,
		0.005162, 0.708566, -0.705626,
		35.459053, 35.155151, 37.196293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940563, 35.101238, 37.974800>,  <35.455441, 34.659157, 37.690231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940563, 35.101238, 37.974800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774879, 35.332558, 37.693661>,  <35.675468, 35.471348, 37.524979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774879, 35.332558, 37.693661>,  <35.940563, 35.101238, 37.974800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774879, 35.332558, 37.693661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066586, 0.789394, 0.610265,
		0.907741, 0.205980, -0.365483,
		-0.414213, 0.578299, -0.702850,
		35.650616, 35.506046, 37.482807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304081, 35.805431, 38.083244>,  <35.940563, 35.101238, 37.974800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304081, 35.805431, 38.083244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972317, 35.885868, 37.874771>,  <35.773258, 35.934132, 37.749687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972317, 35.885868, 37.874771>,  <36.304081, 35.805431, 38.083244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972317, 35.885868, 37.874771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205598, 0.757594, 0.619501,
		0.519425, 0.620977, -0.587014,
		-0.829414, 0.201095, -0.521185,
		35.723492, 35.946198, 37.718414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380493, 36.565105, 38.041019>,  <36.304081, 35.805431, 38.083244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380493, 36.565105, 38.041019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008827, 36.437973, 37.965500>,  <35.785828, 36.361694, 37.920189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008827, 36.437973, 37.965500>,  <36.380493, 36.565105, 38.041019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008827, 36.437973, 37.965500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366243, 0.721989, 0.587024,
		-0.050262, 0.614587, -0.787246,
		-0.929161, -0.317829, -0.188800,
		35.730080, 36.342625, 37.908859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043438, 37.135235, 37.759899>,  <36.380493, 36.565105, 38.041019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043438, 37.135235, 37.759899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783531, 36.880215, 37.925465>,  <35.627586, 36.727203, 38.024803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783531, 36.880215, 37.925465>,  <36.043438, 37.135235, 37.759899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783531, 36.880215, 37.925465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352503, 0.735174, 0.579018,
		-0.673454, 0.230322, -0.702433,
		-0.649770, -0.637551, 0.413917,
		35.588600, 36.688950, 38.049641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473141, 37.512493, 37.839905>,  <36.043438, 37.135235, 37.759899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473141, 37.512493, 37.839905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427498, 37.201565, 38.087372>,  <35.400112, 37.015007, 38.235851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427498, 37.201565, 38.087372>,  <35.473141, 37.512493, 37.839905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427498, 37.201565, 38.087372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357067, 0.613214, 0.704608,
		-0.927084, -0.140509, -0.347525,
		-0.114103, -0.777319, 0.618672,
		35.393269, 36.968369, 38.272972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827370, 37.583874, 38.117954>,  <35.473141, 37.512493, 37.839905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827370, 37.583874, 38.117954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010513, 37.352795, 38.388252>,  <35.120399, 37.214146, 38.550430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010513, 37.352795, 38.388252>,  <34.827370, 37.583874, 38.117954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010513, 37.352795, 38.388252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352454, 0.579857, 0.734536,
		-0.816174, -0.574483, 0.061881,
		0.457860, -0.577699, 0.675742,
		35.147873, 37.179485, 38.590977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394581, 37.616802, 38.709702>,  <34.827370, 37.583874, 38.117954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394581, 37.616802, 38.709702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745762, 37.478306, 38.841953>,  <34.956470, 37.395206, 38.921303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745762, 37.478306, 38.841953>,  <34.394581, 37.616802, 38.709702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745762, 37.478306, 38.841953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048124, 0.623290, 0.780509,
		-0.476323, -0.701161, 0.530556,
		0.877952, -0.346241, 0.330630,
		35.009148, 37.374432, 38.941143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240963, 37.392738, 39.415287>,  <34.394581, 37.616802, 38.709702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240963, 37.392738, 39.415287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638992, 37.430981, 39.425713>,  <34.877811, 37.453926, 39.431969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638992, 37.430981, 39.425713>,  <34.240963, 37.392738, 39.415287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638992, 37.430981, 39.425713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073603, 0.536917, 0.840418,
		0.066357, -0.838200, 0.541311,
		0.995077, 0.095610, 0.026066,
		34.937515, 37.459663, 39.433533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371017, 37.287945, 40.023636>,  <34.240963, 37.392738, 39.415287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371017, 37.287945, 40.023636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698803, 37.487854, 39.911415>,  <34.895473, 37.607800, 39.844082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698803, 37.487854, 39.911415>,  <34.371017, 37.287945, 40.023636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698803, 37.487854, 39.911415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053984, 0.554633, 0.830342,
		0.570596, -0.665282, 0.481477,
		0.819455, 0.499782, -0.280557,
		34.944641, 37.637787, 39.827251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357277, 36.565674, 40.324276>,  <34.371017, 37.287945, 40.023636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357277, 36.565674, 40.324276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964226, 36.639481, 40.332222>,  <33.728394, 36.683765, 40.336990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964226, 36.639481, 40.332222>,  <34.357277, 36.565674, 40.324276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964226, 36.639481, 40.332222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117554, -0.536025, -0.835977,
		-0.143599, -0.823791, 0.548404,
		-0.982629, 0.184513, 0.019867,
		33.669437, 36.694836, 40.338181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068192, 35.895756, 40.148769>,  <34.357277, 36.565674, 40.324276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068192, 35.895756, 40.148769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784889, 36.174900, 40.106113>,  <33.614910, 36.342384, 40.080521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784889, 36.174900, 40.106113>,  <34.068192, 35.895756, 40.148769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784889, 36.174900, 40.106113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329793, -0.460632, -0.824048,
		-0.624192, -0.548463, 0.556392,
		-0.708252, 0.697858, -0.106644,
		33.572414, 36.384258, 40.074120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476944, 35.562752, 40.105221>,  <34.068192, 35.895756, 40.148769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476944, 35.562752, 40.105221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395462, 35.924866, 39.956112>,  <33.346573, 36.142136, 39.866646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395462, 35.924866, 39.956112>,  <33.476944, 35.562752, 40.105221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395462, 35.924866, 39.956112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534489, -0.421838, -0.732375,
		-0.820259, 0.050051, 0.569798,
		-0.203706, 0.905289, -0.372768,
		33.334351, 36.196453, 39.844280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884636, 35.430187, 39.777428>,  <33.476944, 35.562752, 40.105221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884636, 35.430187, 39.777428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985786, 35.773354, 39.598526>,  <33.046478, 35.979252, 39.491184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985786, 35.773354, 39.598526>,  <32.884636, 35.430187, 39.777428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985786, 35.773354, 39.598526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441062, -0.309218, -0.842525,
		-0.861113, 0.410323, 0.300198,
		0.252881, 0.857916, -0.447250,
		33.061649, 36.030727, 39.464352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328648, 35.539394, 39.399857>,  <32.884636, 35.430187, 39.777428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328648, 35.539394, 39.399857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619122, 35.762520, 39.239105>,  <32.793407, 35.896393, 39.142654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619122, 35.762520, 39.239105>,  <32.328648, 35.539394, 39.399857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619122, 35.762520, 39.239105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401708, -0.130113, -0.906477,
		-0.557931, 0.819706, 0.129590,
		0.726184, 0.557809, -0.401877,
		32.836975, 35.929863, 39.118542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961876, 35.894463, 38.934258>,  <32.328648, 35.539394, 39.399857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961876, 35.894463, 38.934258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342899, 35.910534, 38.813580>,  <32.571514, 35.920177, 38.741173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342899, 35.910534, 38.813580>,  <31.961876, 35.894463, 38.934258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342899, 35.910534, 38.813580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297214, -0.090697, -0.950494,
		-0.065555, 0.995068, -0.074452,
		0.952558, 0.040181, -0.301693,
		32.628666, 35.922588, 38.723072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976185, 36.305534, 38.336182>,  <31.961876, 35.894463, 38.934258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976185, 36.305534, 38.336182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313534, 36.093674, 38.299973>,  <32.515942, 35.966557, 38.278248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313534, 36.093674, 38.299973>,  <31.976185, 36.305534, 38.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313534, 36.093674, 38.299973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261028, -0.256584, -0.930607,
		0.469667, 0.808478, -0.354648,
		0.843373, -0.529648, -0.090527,
		32.566547, 35.934780, 38.272816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330711, 36.460220, 37.710835>,  <31.976185, 36.305534, 38.336182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330711, 36.460220, 37.710835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486443, 36.103451, 37.802830>,  <32.579884, 35.889389, 37.858028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486443, 36.103451, 37.802830>,  <32.330711, 36.460220, 37.710835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486443, 36.103451, 37.802830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053729, -0.271258, -0.961006,
		0.919529, 0.361793, -0.153531,
		0.389332, -0.891922, 0.229991,
		32.603241, 35.835873, 37.871826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514359, 36.100983, 37.053513>,  <32.330711, 36.460220, 37.710835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514359, 36.100983, 37.053513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525364, 35.786179, 37.300045>,  <32.531967, 35.597298, 37.447964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525364, 35.786179, 37.300045>,  <32.514359, 36.100983, 37.053513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525364, 35.786179, 37.300045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168025, -0.611429, -0.773254,
		0.985399, -0.082286, -0.149059,
		0.027511, -0.787009, 0.616328,
		32.533619, 35.550076, 37.484943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835098, 35.589458, 36.690598>,  <32.514359, 36.100983, 37.053513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835098, 35.589458, 36.690598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602325, 35.427029, 36.972439>,  <32.462662, 35.329571, 37.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602325, 35.427029, 36.972439>,  <32.835098, 35.589458, 36.690598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602325, 35.427029, 36.972439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363208, -0.645426, -0.671941,
		0.727623, -0.646940, 0.228106,
		-0.581932, -0.406071, 0.704601,
		32.427746, 35.305206, 37.183819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968948, 34.883602, 36.640434>,  <32.835098, 35.589458, 36.690598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968948, 34.883602, 36.640434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633369, 34.875542, 36.857971>,  <32.432022, 34.870705, 36.988491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633369, 34.875542, 36.857971>,  <32.968948, 34.883602, 36.640434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633369, 34.875542, 36.857971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429645, -0.588828, -0.684607,
		0.334023, -0.808007, 0.485338,
		-0.838948, -0.020152, 0.543838,
		32.381683, 34.869495, 37.021122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798439, 34.214108, 36.763603>,  <32.968948, 34.883602, 36.640434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798439, 34.214108, 36.763603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451153, 34.401779, 36.828201>,  <32.242783, 34.514381, 36.866962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451153, 34.401779, 36.828201>,  <32.798439, 34.214108, 36.763603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451153, 34.401779, 36.828201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461488, -0.643935, -0.610227,
		-0.182309, -0.604336, 0.775591,
		-0.868212, 0.469176, 0.161498,
		32.190689, 34.542534, 36.876652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293240, 33.688919, 36.890926>,  <32.798439, 34.214108, 36.763603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293240, 33.688919, 36.890926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051716, 33.993855, 36.797756>,  <31.906801, 34.176815, 36.741856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051716, 33.993855, 36.797756>,  <32.293240, 33.688919, 36.890926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051716, 33.993855, 36.797756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610044, -0.630013, -0.480552,
		-0.513087, -0.148070, 0.845468,
		-0.603811, 0.762338, -0.232923,
		31.870573, 34.222557, 36.727879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603354, 33.479614, 37.024837>,  <32.293240, 33.688919, 36.890926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603354, 33.479614, 37.024837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579275, 33.783882, 36.766304>,  <31.564829, 33.966442, 36.611183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579275, 33.783882, 36.766304>,  <31.603354, 33.479614, 37.024837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579275, 33.783882, 36.766304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512445, -0.579221, -0.633958,
		-0.856608, 0.293052, 0.424669,
		-0.060194, 0.760673, -0.646339,
		31.561216, 34.012085, 36.572403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876604, 33.480785, 36.776333>,  <31.603354, 33.479614, 37.024837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876604, 33.480785, 36.776333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135887, 33.637558, 36.515190>,  <31.291456, 33.731621, 36.358505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135887, 33.637558, 36.515190>,  <30.876604, 33.480785, 36.776333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135887, 33.637558, 36.515190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458609, -0.483489, -0.745598,
		-0.607870, 0.782707, -0.133658,
		0.648207, 0.391930, -0.652855,
		31.330349, 33.755138, 36.319332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919146, 33.612411, 37.586861>,  <30.876604, 33.480785, 36.776333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919146, 33.612411, 37.586861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702707, 33.278278, 37.548008>,  <30.572844, 33.077797, 37.524696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702707, 33.278278, 37.548008>,  <30.919146, 33.612411, 37.586861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702707, 33.278278, 37.548008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618366, -0.473491, 0.627240,
		-0.569946, 0.279332, 0.772745,
		-0.541096, -0.835332, -0.097134,
		30.540379, 33.027679, 37.518867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524700, 33.391575, 38.235821>,  <30.919146, 33.612411, 37.586861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524700, 33.391575, 38.235821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653667, 33.091610, 38.004761>,  <30.731047, 32.911633, 37.866123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653667, 33.091610, 38.004761>,  <30.524700, 33.391575, 38.235821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653667, 33.091610, 38.004761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444300, -0.418958, 0.791878,
		-0.835850, -0.511965, 0.198106,
		0.322416, -0.749910, -0.577653,
		30.750393, 32.866638, 37.831467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294718, 32.727062, 38.402161>,  <30.524700, 33.391575, 38.235821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294718, 32.727062, 38.402161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676922, 32.747410, 38.285942>,  <30.906244, 32.759617, 38.216213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676922, 32.747410, 38.285942>,  <30.294718, 32.727062, 38.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676922, 32.747410, 38.285942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294830, -0.135073, 0.945955,
		0.008874, -0.989529, -0.144061,
		0.955509, 0.050868, -0.290545,
		30.963573, 32.762669, 38.198780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664389, 32.137512, 38.633770>,  <30.294718, 32.727062, 38.402161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664389, 32.137512, 38.633770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940886, 32.423862, 38.594372>,  <31.106785, 32.595673, 38.570732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940886, 32.423862, 38.594372>,  <30.664389, 32.137512, 38.633770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940886, 32.423862, 38.594372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343149, -0.205226, 0.916586,
		0.635950, -0.667383, -0.387514,
		0.691243, 0.715878, -0.098498,
		31.148258, 32.638626, 38.564823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302942, 31.838434, 38.931728>,  <30.664389, 32.137512, 38.633770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302942, 31.838434, 38.931728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359797, 32.233414, 38.904179>,  <31.393909, 32.470402, 38.887650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359797, 32.233414, 38.904179>,  <31.302942, 31.838434, 38.931728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359797, 32.233414, 38.904179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575736, -0.025869, 0.817226,
		0.805186, -0.155813, -0.572187,
		0.142136, 0.987448, -0.068878,
		31.402437, 32.529648, 38.883514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054806, 31.995621, 39.063499>,  <31.302942, 31.838434, 38.931728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054806, 31.995621, 39.063499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860388, 32.330223, 39.164707>,  <31.743738, 32.530983, 39.225433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860388, 32.330223, 39.164707>,  <32.054806, 31.995621, 39.063499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860388, 32.330223, 39.164707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493969, 0.024121, 0.869145,
		0.720941, 0.547428, -0.424932,
		-0.486043, 0.836505, 0.253023,
		31.714575, 32.581173, 39.240616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565769, 32.459671, 39.376041>,  <32.054806, 31.995621, 39.063499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565769, 32.459671, 39.376041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205296, 32.602680, 39.474056>,  <31.989012, 32.688484, 39.532867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205296, 32.602680, 39.474056>,  <32.565769, 32.459671, 39.376041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205296, 32.602680, 39.474056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329572, 0.198040, 0.923127,
		0.281507, 0.912667, -0.296299,
		-0.901186, 0.357519, 0.245039,
		31.934940, 32.709934, 39.547569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657375, 33.155407, 39.735359>,  <32.565769, 32.459671, 39.376041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657375, 33.155407, 39.735359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299149, 33.027546, 39.859154>,  <32.084213, 32.950829, 39.933430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299149, 33.027546, 39.859154>,  <32.657375, 33.155407, 39.735359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299149, 33.027546, 39.859154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276450, 0.145241, 0.949990,
		-0.348618, 0.936337, -0.041705,
		-0.895567, -0.319654, 0.309484,
		32.030479, 32.931648, 39.952000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522629, 33.623257, 40.220074>,  <32.657375, 33.155407, 39.735359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522629, 33.623257, 40.220074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262379, 33.327404, 40.288925>,  <32.106228, 33.149891, 40.330235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262379, 33.327404, 40.288925>,  <32.522629, 33.623257, 40.220074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262379, 33.327404, 40.288925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128326, 0.116320, 0.984887,
		-0.748476, 0.662883, 0.019234,
		-0.650627, -0.739633, 0.172128,
		32.067192, 33.105515, 40.340565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056881, 33.848717, 40.735607>,  <32.522629, 33.623257, 40.220074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056881, 33.848717, 40.735607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020988, 33.451313, 40.763584>,  <31.999453, 33.212872, 40.780373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020988, 33.451313, 40.763584>,  <32.056881, 33.848717, 40.735607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020988, 33.451313, 40.763584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295826, 0.040471, 0.954384,
		-0.951018, 0.106333, 0.290273,
		-0.089735, -0.993506, 0.069945,
		31.994068, 33.153259, 40.784569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730902, 33.721184, 41.365353>,  <32.056881, 33.848717, 40.735607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730902, 33.721184, 41.365353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884989, 33.360397, 41.287312>,  <31.977440, 33.143925, 41.240486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884989, 33.360397, 41.287312>,  <31.730902, 33.721184, 41.365353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884989, 33.360397, 41.287312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018138, -0.203977, 0.978808,
		-0.922648, -0.380592, -0.062216,
		0.385217, -0.901967, -0.195102,
		32.000553, 33.089806, 41.228783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354851, 33.267002, 41.749249>,  <31.730902, 33.721184, 41.365353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354851, 33.267002, 41.749249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717413, 33.118031, 41.669529>,  <31.934950, 33.028648, 41.621696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717413, 33.118031, 41.669529>,  <31.354851, 33.267002, 41.749249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717413, 33.118031, 41.669529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084574, -0.302264, 0.949465,
		-0.413856, -0.877455, -0.242476,
		0.906405, -0.372435, -0.199304,
		31.989334, 33.006302, 41.609737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371349, 32.776661, 42.219158>,  <31.354851, 33.267002, 41.749249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371349, 32.776661, 42.219158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758541, 32.759403, 42.120239>,  <31.990856, 32.749046, 42.060890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758541, 32.759403, 42.120239>,  <31.371349, 32.776661, 42.219158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758541, 32.759403, 42.120239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215315, -0.363757, 0.906267,
		-0.129057, -0.930494, -0.342819,
		0.967979, -0.043146, -0.247295,
		32.048935, 32.746460, 42.046051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613140, 32.143890, 42.556881>,  <31.371349, 32.776661, 42.219158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613140, 32.143890, 42.556881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939709, 32.370003, 42.509705>,  <32.135651, 32.505672, 42.481400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939709, 32.370003, 42.509705>,  <31.613140, 32.143890, 42.556881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939709, 32.370003, 42.509705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233472, -0.136335, 0.962758,
		0.528153, -0.813552, -0.243285,
		0.816422, 0.565284, -0.117936,
		32.184635, 32.539589, 42.474323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148140, 31.779015, 42.925682>,  <31.613140, 32.143890, 42.556881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148140, 31.779015, 42.925682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273697, 32.155949, 42.879238>,  <32.349030, 32.382107, 42.851372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273697, 32.155949, 42.879238>,  <32.148140, 31.779015, 42.925682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273697, 32.155949, 42.879238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326513, 0.007692, 0.945161,
		0.891550, -0.334587, -0.305270,
		0.313890, 0.942334, -0.116105,
		32.367863, 32.438648, 42.844406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877937, 31.800266, 43.209209>,  <32.148140, 31.779015, 42.925682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877937, 31.800266, 43.209209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733845, 32.173035, 43.192440>,  <32.647388, 32.396694, 43.182377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733845, 32.173035, 43.192440>,  <32.877937, 31.800266, 43.209209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733845, 32.173035, 43.192440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237206, 0.134967, 0.962038,
		0.902203, 0.336608, -0.269676,
		-0.360227, 0.931922, -0.041922,
		32.625778, 32.452610, 43.179863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435219, 32.186424, 43.394165>,  <32.877937, 31.800266, 43.209209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435219, 32.186424, 43.394165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110550, 32.410259, 43.461159>,  <32.915749, 32.544559, 43.501354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110550, 32.410259, 43.461159>,  <33.435219, 32.186424, 43.394165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110550, 32.410259, 43.461159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221600, 0.029697, 0.974685,
		0.540449, 0.828238, -0.148109,
		-0.811670, 0.559588, 0.167488,
		32.867050, 32.578136, 43.511406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623055, 32.758698, 43.784073>,  <33.435219, 32.186424, 43.394165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623055, 32.758698, 43.784073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231339, 32.729782, 43.859726>,  <32.996311, 32.712433, 43.905117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231339, 32.729782, 43.859726>,  <33.623055, 32.758698, 43.784073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231339, 32.729782, 43.859726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193525, -0.059529, 0.979288,
		-0.059529, 0.995606, 0.072285,
		-0.979288, -0.072285, 0.189131,
		32.937553, 32.708096, 43.916466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525463, 33.316200, 44.222401>,  <33.623055, 32.758698, 43.784073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525463, 33.316200, 44.222401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196510, 33.091461, 44.258205>,  <32.999138, 32.956619, 44.279690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196510, 33.091461, 44.258205>,  <33.525463, 33.316200, 44.222401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196510, 33.091461, 44.258205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061469, 0.068670, 0.995744,
		-0.565603, 0.824386, -0.021936,
		-0.822384, -0.561847, 0.089514,
		32.949795, 32.922909, 44.285061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014618, 33.672714, 44.598766>,  <33.525463, 33.316200, 44.222401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014618, 33.672714, 44.598766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926548, 33.284382, 44.636742>,  <32.873707, 33.051384, 44.659527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926548, 33.284382, 44.636742>,  <33.014618, 33.672714, 44.598766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926548, 33.284382, 44.636742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159806, 0.060117, 0.985316,
		-0.962281, 0.232115, 0.141909,
		-0.220175, -0.970829, 0.094943,
		32.860497, 32.993134, 44.665226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600895, 33.669621, 45.184589>,  <33.014618, 33.672714, 44.598766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600895, 33.669621, 45.184589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709030, 33.285480, 45.157330>,  <32.773911, 33.054996, 45.140972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709030, 33.285480, 45.157330>,  <32.600895, 33.669621, 45.184589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709030, 33.285480, 45.157330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038496, -0.059950, 0.997459,
		-0.961996, -0.272274, 0.020763,
		0.270338, -0.960351, -0.068153,
		32.790131, 32.997375, 45.136883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201622, 33.284912, 45.585228>,  <32.600895, 33.669621, 45.184589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201622, 33.284912, 45.585228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496578, 33.014778, 45.580086>,  <32.673553, 32.852695, 45.577000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496578, 33.014778, 45.580086>,  <32.201622, 33.284912, 45.585228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496578, 33.014778, 45.580086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085535, -0.112243, 0.989992,
		-0.670024, -0.728916, -0.140533,
		0.737395, -0.675339, -0.012857,
		32.717796, 32.812176, 45.576229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994009, 32.476807, 45.917332>,  <32.201622, 33.284912, 45.585228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994009, 32.476807, 45.917332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388947, 32.536297, 45.939358>,  <32.625908, 32.571991, 45.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388947, 32.536297, 45.939358>,  <31.994009, 32.476807, 45.917332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388947, 32.536297, 45.939358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000322, -0.349088, 0.937090,
		0.158590, -0.925213, -0.344718,
		0.987344, 0.148724, 0.055064,
		32.685150, 32.580914, 45.955875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225014, 31.981991, 46.287678>,  <31.994009, 32.476807, 45.917332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225014, 31.981991, 46.287678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521652, 32.249588, 46.307625>,  <32.699635, 32.410145, 46.319592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521652, 32.249588, 46.307625>,  <32.225014, 31.981991, 46.287678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521652, 32.249588, 46.307625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084157, -0.166523, 0.982440,
		0.665549, -0.724375, -0.179793,
		0.741594, 0.668993, 0.049868,
		32.744129, 32.450287, 46.322586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690598, 31.689474, 46.611687>,  <32.225014, 31.981991, 46.287678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690598, 31.689474, 46.611687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835518, 32.061417, 46.637302>,  <32.922470, 32.284584, 46.652672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835518, 32.061417, 46.637302>,  <32.690598, 31.689474, 46.611687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835518, 32.061417, 46.637302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283943, -0.175556, 0.942633,
		0.887757, -0.323334, -0.327631,
		0.362303, 0.929857, 0.064043,
		32.944210, 32.340374, 46.656517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470226, 31.720020, 46.812397>,  <32.690598, 31.689474, 46.611687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470226, 31.720020, 46.812397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293430, 32.053493, 46.944832>,  <33.187351, 32.253578, 47.024292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293430, 32.053493, 46.944832>,  <33.470226, 31.720020, 46.812397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293430, 32.053493, 46.944832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339295, -0.186297, 0.922048,
		0.830375, 0.519872, -0.200523,
		-0.441990, 0.833682, 0.331087,
		33.160831, 32.303596, 47.044159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907482, 32.029018, 47.194065>,  <33.470226, 31.720020, 46.812397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907482, 32.029018, 47.194065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588638, 32.242542, 47.306965>,  <33.397331, 32.370655, 47.374706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588638, 32.242542, 47.306965>,  <33.907482, 32.029018, 47.194065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588638, 32.242542, 47.306965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326903, -0.011515, 0.944988,
		0.507694, 0.845526, -0.165325,
		-0.797109, 0.533809, 0.282251,
		33.349506, 32.402683, 47.391640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508175, 32.238354, 46.787827>,  <33.907482, 32.029018, 47.194065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508175, 32.238354, 46.787827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876854, 32.085491, 46.814426>,  <35.098061, 31.993774, 46.830387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876854, 32.085491, 46.814426>,  <34.508175, 32.238354, 46.787827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876854, 32.085491, 46.814426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075281, -0.344414, -0.935795,
		0.380525, 0.857517, -0.346216,
		0.921701, -0.382157, 0.066504,
		35.153366, 31.970844, 46.834377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865379, 32.408543, 46.176708>,  <34.508175, 32.238354, 46.787827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865379, 32.408543, 46.176708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078716, 32.091576, 46.295113>,  <35.206718, 31.901396, 46.366154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078716, 32.091576, 46.295113>,  <34.865379, 32.408543, 46.176708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078716, 32.091576, 46.295113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071667, -0.306347, -0.949218,
		0.842857, 0.527474, -0.106598,
		0.533344, -0.792416, 0.296009,
		35.238720, 31.853851, 46.383915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517307, 32.360630, 45.877819>,  <34.865379, 32.408543, 46.176708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517307, 32.360630, 45.877819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415749, 31.979046, 45.941685>,  <35.354813, 31.750095, 45.980003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415749, 31.979046, 45.941685>,  <35.517307, 32.360630, 45.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415749, 31.979046, 45.941685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175341, -0.207729, -0.962343,
		0.951207, -0.216336, 0.220009,
		-0.253892, -0.953964, 0.159661,
		35.339581, 31.692856, 45.989582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127911, 31.910503, 45.619648>,  <35.517307, 32.360630, 45.877819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127911, 31.910503, 45.619648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811817, 31.675728, 45.690105>,  <35.622162, 31.534863, 45.732380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811817, 31.675728, 45.690105>,  <36.127911, 31.910503, 45.619648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811817, 31.675728, 45.690105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052517, -0.351244, -0.934810,
		0.610545, -0.729472, 0.308391,
		-0.790239, -0.586939, 0.176141,
		35.574745, 31.499645, 45.742947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399651, 31.217682, 45.365749>,  <36.127911, 31.910503, 45.619648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399651, 31.217682, 45.365749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000069, 31.203453, 45.354256>,  <35.760319, 31.194916, 45.347359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000069, 31.203453, 45.354256>,  <36.399651, 31.217682, 45.365749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000069, 31.203453, 45.354256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037316, -0.270895, -0.961885,
		0.026432, -0.961951, 0.271939,
		-0.998954, -0.035572, -0.028735,
		35.700382, 31.192781, 45.345634>
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
