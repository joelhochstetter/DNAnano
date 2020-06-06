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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
	<40.188072, 33.149441, 49.644936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097855, 33.394573, 49.947872>,  <40.043724, 33.541653, 50.129635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097855, 33.394573, 49.947872>,  <40.188072, 33.149441, 49.644936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097855, 33.394573, 49.947872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960226, 0.271182, 0.066527,
		-0.164608, 0.742227, -0.649617,
		-0.225543, 0.612829, 0.757345,
		40.030193, 33.578423, 50.175076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536053, 33.732998, 49.448246>,  <40.188072, 33.149441, 49.644936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536053, 33.732998, 49.448246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456356, 33.755428, 49.839584>,  <40.408539, 33.768887, 50.074387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456356, 33.755428, 49.839584>,  <40.536053, 33.732998, 49.448246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456356, 33.755428, 49.839584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895278, 0.416373, 0.158463,
		-0.398470, 0.907463, -0.133162,
		-0.199244, 0.056074, 0.978344,
		40.396584, 33.772251, 50.133087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528858, 34.431606, 49.648643>,  <40.536053, 33.732998, 49.448246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528858, 34.431606, 49.648643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622269, 34.204102, 49.964104>,  <40.678314, 34.067596, 50.153381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622269, 34.204102, 49.964104>,  <40.528858, 34.431606, 49.648643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622269, 34.204102, 49.964104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920776, 0.389997, 0.008614,
		-0.312472, 0.724162, 0.614777,
		0.233523, -0.568764, 0.788654,
		40.692326, 34.033474, 50.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901306, 34.832474, 50.015800>,  <40.528858, 34.431606, 49.648643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901306, 34.832474, 50.015800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993954, 34.496948, 50.212875>,  <41.049541, 34.295631, 50.331120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993954, 34.496948, 50.212875>,  <40.901306, 34.832474, 50.015800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993954, 34.496948, 50.212875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839639, 0.428145, 0.334212,
		-0.491284, 0.336271, 0.803468,
		0.231615, -0.838817, 0.492687,
		41.063438, 34.245304, 50.360683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142307, 34.990814, 50.741570>,  <40.901306, 34.832474, 50.015800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142307, 34.990814, 50.741570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291840, 34.629761, 50.656239>,  <41.381557, 34.413128, 50.605042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291840, 34.629761, 50.656239>,  <41.142307, 34.990814, 50.741570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291840, 34.629761, 50.656239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916097, 0.323381, 0.237047,
		-0.144980, -0.284043, 0.947787,
		0.373828, -0.902632, -0.213327,
		41.403988, 34.358971, 50.592239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753338, 34.937988, 51.273163>,  <41.142307, 34.990814, 50.741570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753338, 34.937988, 51.273163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815197, 34.648304, 51.004356>,  <41.852310, 34.474495, 50.843071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815197, 34.648304, 51.004356>,  <41.753338, 34.937988, 51.273163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815197, 34.648304, 51.004356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967977, -0.025083, 0.249782,
		-0.197751, -0.689125, 0.697138,
		0.154645, -0.724208, -0.672017,
		41.861591, 34.431042, 50.802750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213192, 34.322815, 51.630302>,  <41.753338, 34.937988, 51.273163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213192, 34.322815, 51.630302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251354, 34.328159, 51.232162>,  <42.274254, 34.331367, 50.993279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251354, 34.328159, 51.232162>,  <42.213192, 34.322815, 51.630302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251354, 34.328159, 51.232162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995249, -0.020795, 0.095120,
		-0.019427, -0.999695, -0.015286,
		0.095409, 0.013365, -0.995349,
		42.279976, 34.332169, 50.933559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602573, 33.760220, 51.426208>,  <42.213192, 34.322815, 51.630302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602573, 33.760220, 51.426208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629032, 34.032097, 51.134007>,  <42.644909, 34.195225, 50.958687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629032, 34.032097, 51.134007>,  <42.602573, 33.760220, 51.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629032, 34.032097, 51.134007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997512, -0.027175, 0.065045,
		0.024360, -0.732988, -0.679805,
		0.066150, 0.679698, -0.730503,
		42.648876, 34.236008, 50.914856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362446, 33.628162, 51.134510>,  <42.602573, 33.760220, 51.426208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362446, 33.628162, 51.134510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274170, 33.980942, 50.967918>,  <43.221203, 34.192612, 50.867962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274170, 33.980942, 50.967918>,  <43.362446, 33.628162, 51.134510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274170, 33.980942, 50.967918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975118, 0.208687, -0.074791,
		0.020952, -0.422623, -0.906064,
		-0.220692, 0.881952, -0.416479,
		43.207962, 34.245529, 50.842976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894096, 33.780720, 50.585182>,  <43.362446, 33.628162, 51.134510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894096, 33.780720, 50.585182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737747, 34.135639, 50.683098>,  <43.643940, 34.348591, 50.741848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737747, 34.135639, 50.683098>,  <43.894096, 33.780720, 50.585182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737747, 34.135639, 50.683098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914017, 0.405539, -0.010514,
		-0.108600, 0.219631, -0.969520,
		-0.390869, 0.887299, 0.244789,
		43.620487, 34.401829, 50.756535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339653, 34.174915, 50.249050>,  <43.894096, 33.780720, 50.585182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339653, 34.174915, 50.249050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145157, 34.396046, 50.519741>,  <44.028458, 34.528725, 50.682156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145157, 34.396046, 50.519741>,  <44.339653, 34.174915, 50.249050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145157, 34.396046, 50.519741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863144, 0.424580, 0.273340,
		-0.136215, 0.717019, -0.683615,
		-0.486239, 0.552825, 0.676724,
		43.999287, 34.561893, 50.722759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688515, 34.727127, 50.183117>,  <44.339653, 34.174915, 50.249050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688515, 34.727127, 50.183117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498432, 34.788719, 50.529636>,  <44.384384, 34.825676, 50.737549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498432, 34.788719, 50.529636>,  <44.688515, 34.727127, 50.183117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498432, 34.788719, 50.529636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818771, 0.437892, 0.371301,
		-0.322170, 0.885742, -0.334167,
		-0.475206, 0.153984, 0.866295,
		44.355869, 34.834915, 50.789524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925144, 35.354290, 50.526455>,  <44.688515, 34.727127, 50.183117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925144, 35.354290, 50.526455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773342, 35.192738, 50.859406>,  <44.682262, 35.095806, 51.059177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773342, 35.192738, 50.859406>,  <44.925144, 35.354290, 50.526455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773342, 35.192738, 50.859406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780077, 0.344054, 0.522596,
		-0.497449, 0.847649, 0.184487,
		-0.379504, -0.403879, 0.832381,
		44.659492, 35.071575, 51.109119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824566, 35.851940, 51.058109>,  <44.925144, 35.354290, 50.526455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824566, 35.851940, 51.058109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894379, 35.498680, 51.232273>,  <44.936264, 35.286724, 51.336773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894379, 35.498680, 51.232273>,  <44.824566, 35.851940, 51.058109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894379, 35.498680, 51.232273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857218, 0.353852, 0.374120,
		-0.484476, 0.307947, 0.818811,
		0.174529, -0.883152, 0.435410,
		44.946739, 35.233734, 51.362896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.166256, 36.042236, 51.542015>,  <44.824566, 35.851940, 51.058109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.166256, 36.042236, 51.542015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232944, 35.648453, 51.564072>,  <45.272957, 35.412182, 51.577305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232944, 35.648453, 51.564072>,  <45.166256, 36.042236, 51.542015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232944, 35.648453, 51.564072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846381, 0.171583, 0.504182,
		-0.505809, -0.037386, 0.861835,
		0.166725, -0.984460, 0.055145,
		45.282963, 35.353115, 51.580616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368279, 35.790508, 52.255737>,  <45.166256, 36.042236, 51.542015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368279, 35.790508, 52.255737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515759, 35.506020, 52.016331>,  <45.604248, 35.335327, 51.872684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515759, 35.506020, 52.016331>,  <45.368279, 35.790508, 52.255737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515759, 35.506020, 52.016331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887772, 0.078568, 0.453528,
		-0.275534, -0.698566, 0.660369,
		0.368703, -0.711219, -0.598519,
		45.626369, 35.292652, 51.836777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760178, 35.265495, 52.749901>,  <45.368279, 35.790508, 52.255737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760178, 35.265495, 52.749901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885319, 35.232273, 52.371433>,  <45.960403, 35.212341, 52.144352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885319, 35.232273, 52.371433>,  <45.760178, 35.265495, 52.749901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885319, 35.232273, 52.371433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949483, 0.001512, 0.313815,
		-0.024632, -0.996544, 0.079331,
		0.312850, -0.083053, -0.946164,
		45.979176, 35.207359, 52.087585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216091, 34.720943, 52.778797>,  <45.760178, 35.265495, 52.749901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216091, 34.720943, 52.778797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291061, 34.926361, 52.443859>,  <46.336044, 35.049610, 52.242897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.291061, 34.926361, 52.443859>,  <46.216091, 34.720943, 52.778797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291061, 34.926361, 52.443859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958560, 0.090578, 0.270107,
		0.214557, -0.853268, -0.475288,
		0.187423, 0.513545, -0.837343,
		46.347290, 35.080425, 52.192657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.842304, 34.392498, 52.662907>,  <46.216091, 34.720943, 52.778797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.842304, 34.392498, 52.662907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808083, 34.710728, 52.422993>,  <46.787548, 34.901665, 52.279045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808083, 34.710728, 52.422993>,  <46.842304, 34.392498, 52.662907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808083, 34.710728, 52.422993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993245, 0.115462, 0.011474,
		0.078381, -0.594751, -0.800080,
		-0.085555, 0.795575, -0.599784,
		46.782417, 34.949402, 52.243057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.337921, 34.329121, 52.094154>,  <46.842304, 34.392498, 52.662907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.337921, 34.329121, 52.094154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259453, 34.718121, 52.144367>,  <47.212372, 34.951519, 52.174496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259453, 34.718121, 52.144367>,  <47.337921, 34.329121, 52.094154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.259453, 34.718121, 52.144367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978080, 0.203181, -0.045579,
		-0.069832, 0.113840, -0.991042,
		-0.196172, 0.972501, 0.125533,
		47.200600, 35.009872, 52.182026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836033, 34.670761, 51.633858>,  <47.337921, 34.329121, 52.094154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836033, 34.670761, 51.633858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.723511, 34.959225, 51.887093>,  <47.655998, 35.132301, 52.039036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.723511, 34.959225, 51.887093>,  <47.836033, 34.670761, 51.633858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.723511, 34.959225, 51.887093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915055, 0.400294, -0.049390,
		-0.289041, 0.565419, -0.772501,
		-0.281301, 0.721156, 0.633090,
		47.639122, 35.175571, 52.077019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.159775, 34.924595, 51.701736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.356384, 34.999302, 52.041977>,  <24.474350, 35.044128, 52.246120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.356384, 34.999302, 52.041977>,  <24.159775, 34.924595, 51.701736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356384, 34.999302, 52.041977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870056, -0.147414, -0.470395,
		0.037535, 0.971281, -0.234958,
		0.491522, 0.186770, 0.850602,
		24.503841, 35.055332, 52.297157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844679, 35.392670, 51.568813>,  <24.159775, 34.924595, 51.701736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844679, 35.392670, 51.568813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.894156, 35.177986, 51.902676>,  <24.923841, 35.049175, 52.102993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.894156, 35.177986, 51.902676>,  <24.844679, 35.392670, 51.568813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894156, 35.177986, 51.902676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900762, -0.292161, -0.321356,
		0.416327, 0.791575, 0.447305,
		0.123692, -0.536704, 0.834655,
		24.931263, 35.016975, 52.153072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503757, 35.459377, 51.703030>,  <24.844679, 35.392670, 51.568813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503757, 35.459377, 51.703030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.417198, 35.120991, 51.897972>,  <25.365263, 34.917961, 52.014938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.417198, 35.120991, 51.897972>,  <25.503757, 35.459377, 51.703030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417198, 35.120991, 51.897972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866005, -0.396811, -0.304264,
		0.450785, 0.356212, 0.818478,
		-0.216398, -0.845964, 0.487357,
		25.352278, 34.867203, 52.044178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083147, 35.313484, 52.042633>,  <25.503757, 35.459377, 51.703030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083147, 35.313484, 52.042633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.889139, 34.963974, 52.056904>,  <25.772736, 34.754269, 52.065464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.889139, 34.963974, 52.056904>,  <26.083147, 35.313484, 52.042633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889139, 34.963974, 52.056904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785343, -0.453150, -0.421770,
		0.384698, -0.176550, 0.906000,
		-0.485018, -0.873776, 0.035673,
		25.743633, 34.701839, 52.067604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550547, 34.928932, 52.254658>,  <26.083147, 35.313484, 52.042633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550547, 34.928932, 52.254658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.290176, 34.661888, 52.110104>,  <26.133955, 34.501663, 52.023373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.290176, 34.661888, 52.110104>,  <26.550547, 34.928932, 52.254658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290176, 34.661888, 52.110104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736271, -0.439227, -0.514766,
		0.184932, -0.601150, 0.777444,
		-0.650926, -0.667606, -0.361382,
		26.094898, 34.461605, 52.001690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871138, 34.422005, 52.308304>,  <26.550547, 34.928932, 52.254658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871138, 34.422005, 52.308304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.589630, 34.308216, 52.047909>,  <26.420725, 34.239944, 51.891670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.589630, 34.308216, 52.047909>,  <26.871138, 34.422005, 52.308304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589630, 34.308216, 52.047909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702777, -0.412887, -0.579335,
		-0.103980, -0.865217, 0.490497,
		-0.703770, -0.284471, -0.650986,
		26.378498, 34.222874, 51.852612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034649, 33.746662, 52.164917>,  <26.871138, 34.422005, 52.308304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034649, 33.746662, 52.164917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827972, 33.871941, 51.846184>,  <26.703966, 33.947105, 51.654945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827972, 33.871941, 51.846184>,  <27.034649, 33.746662, 52.164917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827972, 33.871941, 51.846184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763837, -0.251796, -0.594266,
		-0.386759, -0.915701, -0.109128,
		-0.516692, 0.313194, -0.796831,
		26.672964, 33.965897, 51.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159286, 33.247955, 51.596085>,  <27.034649, 33.746662, 52.164917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159286, 33.247955, 51.596085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.039419, 33.594200, 51.435627>,  <26.967499, 33.801949, 51.339352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.039419, 33.594200, 51.435627>,  <27.159286, 33.247955, 51.596085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039419, 33.594200, 51.435627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869988, 0.075370, -0.487278,
		-0.391560, -0.495009, -0.775659,
		-0.299669, 0.865612, -0.401140,
		26.949518, 33.853886, 51.315285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176208, 33.143188, 50.943558>,  <27.159286, 33.247955, 51.596085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176208, 33.143188, 50.943558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.237865, 33.536949, 50.977482>,  <27.274858, 33.773205, 50.997837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.237865, 33.536949, 50.977482>,  <27.176208, 33.143188, 50.943558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237865, 33.536949, 50.977482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819051, -0.079294, -0.568214,
		-0.552626, 0.157052, -0.818498,
		0.154141, 0.984402, 0.084813,
		27.284107, 33.832272, 51.002926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375429, 33.330154, 50.300781>,  <27.176208, 33.143188, 50.943558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375429, 33.330154, 50.300781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509052, 33.625366, 50.535294>,  <27.589226, 33.802494, 50.675999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.509052, 33.625366, 50.535294>,  <27.375429, 33.330154, 50.300781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509052, 33.625366, 50.535294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856746, 0.021543, -0.515288,
		-0.392927, 0.674426, -0.625106,
		0.334057, 0.738028, 0.586277,
		27.609270, 33.846775, 50.711178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612026, 33.871590, 49.837925>,  <27.375429, 33.330154, 50.300781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612026, 33.871590, 49.837925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.801407, 33.931580, 50.185108>,  <27.915035, 33.967571, 50.393417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.801407, 33.931580, 50.185108>,  <27.612026, 33.871590, 49.837925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801407, 33.931580, 50.185108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850362, 0.179061, -0.494794,
		-0.229621, 0.972341, -0.042752,
		0.473453, 0.149970, 0.867958,
		27.943443, 33.976570, 50.445496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126499, 34.392887, 49.647404>,  <27.612026, 33.871590, 49.837925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126499, 34.392887, 49.647404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.261351, 34.303566, 50.013241>,  <28.342262, 34.249973, 50.232742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.261351, 34.303566, 50.013241>,  <28.126499, 34.392887, 49.647404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261351, 34.303566, 50.013241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940553, 0.122471, -0.316797,
		-0.041270, 0.967026, 0.251313,
		0.337130, -0.223299, 0.914593,
		28.362490, 34.236576, 50.287621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510283, 35.028240, 50.024536>,  <28.126499, 34.392887, 49.647404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510283, 35.028240, 50.024536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643887, 34.666031, 50.129204>,  <28.724049, 34.448704, 50.192005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643887, 34.666031, 50.129204>,  <28.510283, 35.028240, 50.024536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643887, 34.666031, 50.129204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926767, 0.264878, -0.266353,
		0.171879, 0.331467, 0.927679,
		0.334008, -0.905522, 0.261665,
		28.744089, 34.394375, 50.207703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178452, 35.225384, 50.299820>,  <28.510283, 35.028240, 50.024536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178452, 35.225384, 50.299820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.206509, 34.827080, 50.276035>,  <29.223343, 34.588097, 50.261765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.206509, 34.827080, 50.276035>,  <29.178452, 35.225384, 50.299820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206509, 34.827080, 50.276035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985250, 0.078482, -0.152059,
		0.156081, -0.047915, 0.986581,
		0.070143, -0.995763, -0.059458,
		29.227551, 34.528351, 50.258198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816435, 35.037846, 50.617886>,  <29.178452, 35.225384, 50.299820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816435, 35.037846, 50.617886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.750429, 34.690773, 50.430313>,  <29.710827, 34.482529, 50.317768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.750429, 34.690773, 50.430313>,  <29.816435, 35.037846, 50.617886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750429, 34.690773, 50.430313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980130, -0.091200, -0.176147,
		0.110072, -0.488683, 0.865490,
		-0.165013, -0.867681, -0.468935,
		29.700926, 34.430470, 50.289631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314276, 34.565311, 50.860889>,  <29.816435, 35.037846, 50.617886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314276, 34.565311, 50.860889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.183273, 34.432137, 50.507191>,  <30.104671, 34.352234, 50.294971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.183273, 34.432137, 50.507191>,  <30.314276, 34.565311, 50.860889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183273, 34.432137, 50.507191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944803, -0.124582, -0.303029,
		-0.009273, -0.934684, 0.355360,
		-0.327508, -0.332935, -0.884247,
		30.085020, 34.332256, 50.241917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661680, 33.970989, 50.783661>,  <30.314276, 34.565311, 50.860889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661680, 33.970989, 50.783661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551603, 34.101383, 50.421886>,  <30.485558, 34.179619, 50.204823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551603, 34.101383, 50.421886>,  <30.661680, 33.970989, 50.783661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551603, 34.101383, 50.421886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934521, -0.130154, -0.331256,
		-0.225699, -0.936374, -0.268819,
		-0.275191, 0.325981, -0.904437,
		30.469046, 34.199177, 50.150555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152084, 33.833775, 50.403271>,  <30.661680, 33.970989, 50.783661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152084, 33.833775, 50.403271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986465, 34.066963, 50.123638>,  <30.887094, 34.206875, 49.955860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986465, 34.066963, 50.123638>,  <31.152084, 33.833775, 50.403271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986465, 34.066963, 50.123638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841322, -0.048082, -0.538390,
		-0.347479, -0.811069, -0.470558,
		-0.414046, 0.582971, -0.699078,
		30.862251, 34.241856, 49.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506058, 33.606983, 49.791630>,  <31.152084, 33.833775, 50.403271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506058, 33.606983, 49.791630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.354826, 33.950886, 49.654297>,  <31.264088, 34.157227, 49.571896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.354826, 33.950886, 49.654297>,  <31.506058, 33.606983, 49.791630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354826, 33.950886, 49.654297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721933, 0.041645, -0.690708,
		-0.579543, -0.509004, -0.636431,
		-0.378077, 0.859756, -0.343332,
		31.241404, 34.208813, 49.551296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504993, 33.542969, 49.049500>,  <31.506058, 33.606983, 49.791630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504993, 33.542969, 49.049500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.522692, 33.932892, 49.136951>,  <31.533312, 34.166843, 49.189423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.522692, 33.932892, 49.136951>,  <31.504993, 33.542969, 49.049500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522692, 33.932892, 49.136951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690732, 0.128254, -0.711647,
		-0.721756, 0.182502, -0.667653,
		0.044248, 0.974805, 0.218628,
		31.535967, 34.225334, 49.202541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533058, 33.944653, 48.397221>,  <31.504993, 33.542969, 49.049500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533058, 33.944653, 48.397221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679726, 34.199776, 48.668148>,  <31.767727, 34.352848, 48.830704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.679726, 34.199776, 48.668148>,  <31.533058, 33.944653, 48.397221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679726, 34.199776, 48.668148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723321, 0.262432, -0.638699,
		-0.585116, 0.724107, -0.365115,
		0.366668, 0.637808, 0.677315,
		31.789726, 34.391117, 48.871342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.646538, 35.337791, 34.990231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.392324, 35.031460, 35.029438>,  <24.239796, 34.847660, 35.052963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.392324, 35.031460, 35.029438>,  <24.646538, 35.337791, 34.990231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392324, 35.031460, 35.029438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531324, -0.341709, 0.775197,
		-0.560170, 0.544746, 0.624069,
		-0.635535, -0.765825, 0.098021,
		24.201664, 34.801712, 35.058846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.128857, 35.242279, 35.691380>,  <24.646538, 35.337791, 34.990231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.128857, 35.242279, 35.691380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.276943, 34.911674, 35.521763>,  <24.365795, 34.713310, 35.419991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.276943, 34.911674, 35.521763>,  <24.128857, 35.242279, 35.691380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276943, 34.911674, 35.521763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471069, -0.226398, 0.852548,
		-0.800645, -0.515383, 0.305528,
		0.370217, -0.826514, -0.424046,
		24.388008, 34.663719, 35.394550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946138, 34.712582, 36.136597>,  <24.128857, 35.242279, 35.691380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946138, 34.712582, 36.136597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.258312, 34.556877, 35.940884>,  <24.445616, 34.463455, 35.823456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.258312, 34.556877, 35.940884>,  <23.946138, 34.712582, 36.136597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.258312, 34.556877, 35.940884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351313, -0.374331, 0.858170,
		-0.517206, -0.841637, -0.155389,
		0.780435, -0.389261, -0.489284,
		24.492443, 34.440098, 35.794098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.938416, 34.053062, 36.246704>,  <23.946138, 34.712582, 36.136597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.938416, 34.053062, 36.246704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.308126, 34.192513, 36.184517>,  <24.529953, 34.276184, 36.147205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.308126, 34.192513, 36.184517>,  <23.938416, 34.053062, 36.246704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308126, 34.192513, 36.184517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301808, -0.418063, 0.856817,
		0.233715, -0.838858, -0.491625,
		0.924278, 0.348627, -0.155466,
		24.585409, 34.297100, 36.137878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452026, 33.584026, 36.540272>,  <23.938416, 34.053062, 36.246704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452026, 33.584026, 36.540272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.617926, 33.946560, 36.572636>,  <24.717464, 34.164082, 36.592052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.617926, 33.946560, 36.572636>,  <24.452026, 33.584026, 36.540272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617926, 33.946560, 36.572636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291189, -0.216441, 0.931860,
		0.862087, -0.362925, -0.353682,
		0.414746, 0.906333, 0.080911,
		24.742350, 34.218460, 36.596909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153177, 33.566944, 36.563118>,  <24.452026, 33.584026, 36.540272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153177, 33.566944, 36.563118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.050852, 33.895176, 36.767555>,  <24.989456, 34.092113, 36.890217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.050852, 33.895176, 36.767555>,  <25.153177, 33.566944, 36.563118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050852, 33.895176, 36.767555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537216, -0.318868, 0.780847,
		0.803715, 0.474319, -0.359255,
		-0.255816, 0.820576, 0.511091,
		24.974108, 34.141350, 36.920883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735273, 34.111862, 36.752750>,  <25.153177, 33.566944, 36.563118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735273, 34.111862, 36.752750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.436062, 34.125324, 37.017876>,  <25.256535, 34.133400, 37.176952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.436062, 34.125324, 37.017876>,  <25.735273, 34.111862, 36.752750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436062, 34.125324, 37.017876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662008, -0.032722, 0.748782,
		0.046886, 0.998898, 0.002200,
		-0.748029, 0.033651, 0.662812,
		25.211653, 34.135418, 37.216721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997961, 34.448444, 37.367317>,  <25.735273, 34.111862, 36.752750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997961, 34.448444, 37.367317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.673330, 34.269451, 37.517570>,  <25.478552, 34.162056, 37.607723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.673330, 34.269451, 37.517570>,  <25.997961, 34.448444, 37.367317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673330, 34.269451, 37.517570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519389, -0.258192, 0.814599,
		-0.267536, 0.856209, 0.441962,
		-0.811578, -0.447485, 0.375630,
		25.429857, 34.135204, 37.630260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883337, 34.767437, 38.016323>,  <25.997961, 34.448444, 37.367317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883337, 34.767437, 38.016323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.754677, 34.388771, 38.008621>,  <25.677481, 34.161572, 38.004002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.754677, 34.388771, 38.008621>,  <25.883337, 34.767437, 38.016323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754677, 34.388771, 38.008621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545959, -0.202036, 0.813087,
		-0.773609, 0.251018, 0.581824,
		-0.321649, -0.946663, -0.019251,
		25.658182, 34.104771, 38.002846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563753, 34.493313, 38.750271>,  <25.883337, 34.767437, 38.016323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563753, 34.493313, 38.750271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.740099, 34.207382, 38.533138>,  <25.845905, 34.035824, 38.402859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.740099, 34.207382, 38.533138>,  <25.563753, 34.493313, 38.750271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740099, 34.207382, 38.533138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489933, -0.315085, 0.812827,
		-0.752068, -0.624293, 0.211309,
		0.440862, -0.714828, -0.542827,
		25.872358, 33.992935, 38.370289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274212, 33.804085, 39.006351>,  <25.563753, 34.493313, 38.750271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274212, 33.804085, 39.006351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.649279, 33.761265, 38.874096>,  <25.874319, 33.735573, 38.794743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.649279, 33.761265, 38.874096>,  <25.274212, 33.804085, 39.006351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649279, 33.761265, 38.874096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283880, -0.312897, 0.906371,
		-0.200482, -0.943735, -0.263004,
		0.937667, -0.107049, -0.330637,
		25.930578, 33.729149, 38.774906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753092, 33.461838, 39.421406>,  <25.274212, 33.804085, 39.006351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753092, 33.461838, 39.421406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.082319, 33.501396, 39.197701>,  <26.279856, 33.525131, 39.063477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.082319, 33.501396, 39.197701>,  <25.753092, 33.461838, 39.421406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082319, 33.501396, 39.197701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555192, -0.347574, 0.755615,
		-0.119659, -0.932423, -0.340983,
		0.823070, 0.098895, -0.559264,
		26.329241, 33.531063, 39.029922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157253, 32.996674, 39.691730>,  <25.753092, 33.461838, 39.421406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157253, 32.996674, 39.691730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.390886, 33.257324, 39.498138>,  <26.531065, 33.413715, 39.381985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.390886, 33.257324, 39.498138>,  <26.157253, 32.996674, 39.691730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390886, 33.257324, 39.498138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532160, 0.142810, 0.834512,
		0.612908, -0.744975, -0.263357,
		0.584080, 0.651627, -0.483975,
		26.566111, 33.452812, 39.352947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889093, 32.842751, 39.775215>,  <26.157253, 32.996674, 39.691730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889093, 32.842751, 39.775215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.849827, 33.240795, 39.770916>,  <26.826267, 33.479622, 39.768337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.849827, 33.240795, 39.770916>,  <26.889093, 32.842751, 39.775215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849827, 33.240795, 39.770916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703711, 0.077047, 0.706296,
		0.703672, 0.061771, -0.707835,
		-0.098166, 0.995112, -0.010747,
		26.820377, 33.539330, 39.767693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252033, 32.154469, 39.707001>,  <26.889093, 32.842751, 39.775215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252033, 32.154469, 39.707001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.424881, 32.238621, 39.356228>,  <27.528589, 32.289112, 39.145763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.424881, 32.238621, 39.356228>,  <27.252033, 32.154469, 39.707001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424881, 32.238621, 39.356228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836070, 0.457942, -0.302121,
		0.338022, 0.863729, 0.373783,
		0.432121, 0.210385, -0.876932,
		27.554518, 32.301735, 39.093147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812910, 31.871168, 40.177174>,  <27.252033, 32.154469, 39.707001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812910, 31.871168, 40.177174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.179142, 31.712538, 40.203842>,  <27.398880, 31.617359, 40.219841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.179142, 31.712538, 40.203842>,  <26.812910, 31.871168, 40.177174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179142, 31.712538, 40.203842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401596, 0.893074, -0.202829,
		0.020898, 0.212480, 0.976942,
		0.915579, -0.396574, 0.066668,
		27.453815, 31.593565, 40.223843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245274, 32.413147, 40.616688>,  <26.812910, 31.871168, 40.177174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245274, 32.413147, 40.616688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.435200, 32.179913, 40.353001>,  <27.549156, 32.039974, 40.194790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.435200, 32.179913, 40.353001>,  <27.245274, 32.413147, 40.616688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435200, 32.179913, 40.353001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415487, 0.808822, -0.416146,
		0.775834, -0.076302, 0.626306,
		0.474818, -0.583082, -0.659214,
		27.577644, 32.004990, 40.155235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946215, 32.611908, 40.584015>,  <27.245274, 32.413147, 40.616688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946215, 32.611908, 40.584015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.850990, 32.426594, 40.242561>,  <27.793856, 32.315403, 40.037689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.850990, 32.426594, 40.242561>,  <27.946215, 32.611908, 40.584015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850990, 32.426594, 40.242561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434454, 0.735274, -0.520213,
		0.868664, -0.494708, 0.026237,
		-0.238062, -0.463289, -0.853634,
		27.779572, 32.287609, 39.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524752, 33.311783, 40.820103>,  <27.946215, 32.611908, 40.584015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524752, 33.311783, 40.820103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595629, 33.397141, 41.204407>,  <27.638155, 33.448357, 41.434990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595629, 33.397141, 41.204407>,  <27.524752, 33.311783, 40.820103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595629, 33.397141, 41.204407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506040, -0.857035, 0.097028,
		0.844113, 0.468992, -0.259846,
		0.177192, 0.213395, 0.960763,
		27.648787, 33.461159, 41.492634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274923, 33.253872, 40.976109>,  <27.524752, 33.311783, 40.820103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274923, 33.253872, 40.976109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.035629, 33.168991, 41.285194>,  <27.892054, 33.118061, 41.470646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.035629, 33.168991, 41.285194>,  <28.274923, 33.253872, 40.976109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035629, 33.168991, 41.285194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587544, -0.771874, 0.242905,
		0.544891, 0.599317, 0.586440,
		-0.598235, -0.212203, 0.772713,
		27.856159, 33.105331, 41.517010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655661, 33.200325, 41.705475>,  <28.274923, 33.253872, 40.976109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655661, 33.200325, 41.705475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337429, 32.968254, 41.635681>,  <28.146490, 32.829010, 41.593803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337429, 32.968254, 41.635681>,  <28.655661, 33.200325, 41.705475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337429, 32.968254, 41.635681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517772, -0.800658, 0.301429,
		-0.314584, 0.149468, 0.937388,
		-0.795581, -0.580178, -0.174484,
		28.098755, 32.794201, 41.583336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608027, 32.746754, 42.284328>,  <28.655661, 33.200325, 41.705475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608027, 32.746754, 42.284328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419672, 32.538757, 41.999268>,  <28.306660, 32.413960, 41.828232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419672, 32.538757, 41.999268>,  <28.608027, 32.746754, 42.284328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419672, 32.538757, 41.999268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590415, -0.785991, 0.183382,
		-0.655495, -0.334409, 0.677124,
		-0.470888, -0.519990, -0.712653,
		28.278406, 32.382759, 41.785473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259842, 32.285980, 42.312962>,  <28.608027, 32.746754, 42.284328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259842, 32.285980, 42.312962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400421, 32.659683, 42.288792>,  <29.484770, 32.883904, 42.274292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400421, 32.659683, 42.288792>,  <29.259842, 32.285980, 42.312962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400421, 32.659683, 42.288792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867746, -0.300845, 0.395612,
		0.351425, -0.191470, -0.916428,
		0.351450, 0.934255, -0.060423,
		29.505856, 32.939960, 42.270664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019442, 32.260384, 42.241844>,  <29.259842, 32.285980, 42.312962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019442, 32.260384, 42.241844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949476, 32.637573, 42.355129>,  <29.907497, 32.863888, 42.423100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949476, 32.637573, 42.355129>,  <30.019442, 32.260384, 42.241844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949476, 32.637573, 42.355129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864514, 0.009433, 0.502520,
		0.471191, 0.332738, -0.816863,
		-0.174913, 0.942972, 0.283212,
		29.897003, 32.920464, 42.440094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567108, 32.827343, 42.018425>,  <30.019442, 32.260384, 42.241844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567108, 32.827343, 42.018425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379528, 32.880619, 42.367676>,  <30.266981, 32.912586, 42.577225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379528, 32.880619, 42.367676>,  <30.567108, 32.827343, 42.018425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379528, 32.880619, 42.367676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879455, -0.020830, 0.475526,
		0.081523, 0.990871, -0.107367,
		-0.468949, 0.133191, 0.873125,
		30.238844, 32.920578, 42.629612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879532, 33.446297, 42.349739>,  <30.567108, 32.827343, 42.018425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879532, 33.446297, 42.349739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737947, 33.154388, 42.583710>,  <30.652996, 32.979244, 42.724094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737947, 33.154388, 42.583710>,  <30.879532, 33.446297, 42.349739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737947, 33.154388, 42.583710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911611, -0.129451, 0.390138,
		-0.208992, 0.671323, 0.711089,
		-0.353960, -0.729772, 0.584931,
		30.631760, 32.935455, 42.759190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307325, 33.480515, 42.924625>,  <30.879532, 33.446297, 42.349739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307325, 33.480515, 42.924625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131168, 33.126705, 42.986160>,  <31.025475, 32.914417, 43.023083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131168, 33.126705, 42.986160>,  <31.307325, 33.480515, 42.924625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131168, 33.126705, 42.986160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807588, -0.315419, 0.498310,
		-0.392245, 0.343689, 0.853242,
		-0.440392, -0.884527, 0.153838,
		30.999050, 32.861347, 43.032310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596790, 33.224743, 43.677326>,  <31.307325, 33.480515, 42.924625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596790, 33.224743, 43.677326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846897, 32.912647, 43.683853>,  <31.996962, 32.725391, 43.687767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.846897, 32.912647, 43.683853>,  <31.596790, 33.224743, 43.677326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846897, 32.912647, 43.683853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507660, 0.422531, 0.750832,
		-0.592722, -0.461190, 0.660292,
		0.625269, -0.780239, 0.016315,
		32.034477, 32.678577, 43.688747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715862, 33.217899, 44.389961>,  <31.596790, 33.224743, 43.677326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715862, 33.217899, 44.389961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999743, 33.032860, 44.177422>,  <32.170071, 32.921837, 44.049900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.999743, 33.032860, 44.177422>,  <31.715862, 33.217899, 44.389961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999743, 33.032860, 44.177422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662828, 0.182887, 0.726093,
		-0.238714, -0.867499, 0.436418,
		0.709700, -0.462599, -0.531345,
		32.212654, 32.894081, 44.018017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621914, 34.014526, 44.558117>,  <31.715862, 33.217899, 44.389961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621914, 34.014526, 44.558117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331053, 34.261536, 44.678055>,  <31.156536, 34.409740, 44.750019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.331053, 34.261536, 44.678055>,  <31.621914, 34.014526, 44.558117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331053, 34.261536, 44.678055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554292, 0.785849, -0.274230,
		-0.404977, -0.033206, -0.913724,
		-0.727155, 0.617527, 0.299845,
		31.112906, 34.446793, 44.768009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429226, 34.438160, 44.011299>,  <31.621914, 34.014526, 44.558117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429226, 34.438160, 44.011299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360300, 34.637051, 44.351433>,  <31.318945, 34.756386, 44.555515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360300, 34.637051, 44.351433>,  <31.429226, 34.438160, 44.011299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360300, 34.637051, 44.351433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649270, 0.706520, -0.281565,
		-0.740782, 0.503581, -0.444577,
		-0.172312, 0.497228, 0.850337,
		31.308607, 34.786221, 44.606533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326555, 35.070610, 43.758301>,  <31.429226, 34.438160, 44.011299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326555, 35.070610, 43.758301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.464968, 35.060947, 44.133465>,  <31.548016, 35.055149, 44.358562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.464968, 35.060947, 44.133465>,  <31.326555, 35.070610, 43.758301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464968, 35.060947, 44.133465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672318, 0.703652, -0.229918,
		-0.654409, 0.710134, 0.259729,
		0.346032, -0.024160, 0.937912,
		31.568777, 35.053699, 44.414837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531670, 35.765137, 43.889221>,  <31.326555, 35.070610, 43.758301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531670, 35.765137, 43.889221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723421, 35.525063, 44.145340>,  <31.838472, 35.381020, 44.299011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723421, 35.525063, 44.145340>,  <31.531670, 35.765137, 43.889221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723421, 35.525063, 44.145340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858294, 0.472846, -0.199367,
		-0.183104, 0.645133, 0.741806,
		0.479378, -0.600183, 0.640294,
		31.867235, 35.345009, 44.337429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916876, 36.222980, 44.345844>,  <31.531670, 35.765137, 43.889221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916876, 36.222980, 44.345844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.103775, 35.870052, 44.323265>,  <32.215916, 35.658295, 44.309719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.103775, 35.870052, 44.323265>,  <31.916876, 36.222980, 44.345844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103775, 35.870052, 44.323265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806304, 0.451439, -0.382200,
		0.362706, 0.133069, 0.922354,
		0.467246, -0.882324, -0.056446,
		32.243950, 35.605354, 44.306332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907606, 36.268394, 45.102993>,  <31.916876, 36.222980, 44.345844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907606, 36.268394, 45.102993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199802, 36.521423, 45.000050>,  <32.375122, 36.673241, 44.938286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199802, 36.521423, 45.000050>,  <31.907606, 36.268394, 45.102993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199802, 36.521423, 45.000050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569671, 0.356594, -0.740483,
		-0.376639, 0.687525, 0.620848,
		0.730491, 0.632574, -0.257356,
		32.418949, 36.711197, 44.922844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019257, 36.133747, 45.805054>,  <31.907606, 36.268394, 45.102993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019257, 36.133747, 45.805054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686420, 36.125130, 46.026745>,  <31.486719, 36.119961, 46.159760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.686420, 36.125130, 46.026745>,  <32.019257, 36.133747, 45.805054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686420, 36.125130, 46.026745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063490, -0.988978, -0.133757,
		0.551000, -0.146485, 0.821548,
		-0.832086, -0.021540, 0.554228,
		31.436794, 36.118668, 46.193012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082489, 35.628712, 46.397858>,  <32.019257, 36.133747, 45.805054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082489, 35.628712, 46.397858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699242, 35.670959, 46.291386>,  <31.469294, 35.696308, 46.227505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.699242, 35.670959, 46.291386>,  <32.082489, 35.628712, 46.397858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699242, 35.670959, 46.291386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121865, -0.991516, 0.045225,
		-0.259141, 0.075768, 0.962863,
		-0.958120, 0.105620, -0.266176,
		31.411806, 35.702644, 46.211533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940407, 34.866589, 46.420689>,  <32.082489, 35.628712, 46.397858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940407, 34.866589, 46.420689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290752, 34.685074, 46.486343>,  <32.500961, 34.576164, 46.525734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.290752, 34.685074, 46.486343>,  <31.940407, 34.866589, 46.420689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290752, 34.685074, 46.486343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245778, 0.712217, 0.657525,
		-0.415273, -0.535563, 0.735337,
		0.875866, -0.453782, 0.164135,
		32.553513, 34.548939, 46.535583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024754, 34.605541, 47.089977>,  <31.940407, 34.866589, 46.420689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024754, 34.605541, 47.089977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361515, 34.758018, 46.937199>,  <32.563572, 34.849506, 46.845531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361515, 34.758018, 46.937199>,  <32.024754, 34.605541, 47.089977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361515, 34.758018, 46.937199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050259, 0.649330, 0.758845,
		0.537276, -0.658073, 0.527517,
		0.841908, 0.381196, -0.381943,
		32.614086, 34.872379, 46.822617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818583, 34.805595, 47.853977>,  <32.024754, 34.605541, 47.089977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818583, 34.805595, 47.853977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966915, 34.784943, 48.224884>,  <32.055916, 34.772552, 48.447426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966915, 34.784943, 48.224884>,  <31.818583, 34.805595, 47.853977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966915, 34.784943, 48.224884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834560, 0.456549, -0.308338,
		-0.407421, 0.888199, 0.212393,
		0.370834, -0.051632, 0.927263,
		32.078167, 34.769455, 48.503063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142273, 35.404442, 47.878902>,  <31.818583, 34.805595, 47.853977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142273, 35.404442, 47.878902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283573, 35.146515, 48.150024>,  <32.368355, 34.991760, 48.312698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.283573, 35.146515, 48.150024>,  <32.142273, 35.404442, 47.878902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283573, 35.146515, 48.150024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929880, 0.321505, -0.178766,
		-0.102648, 0.693431, 0.713174,
		0.353251, -0.644816, 0.677809,
		32.389549, 34.953072, 48.353367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581287, 35.809971, 48.341545>,  <32.142273, 35.404442, 47.878902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581287, 35.809971, 48.341545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707905, 35.430618, 48.349174>,  <32.783875, 35.203007, 48.353752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.707905, 35.430618, 48.349174>,  <32.581287, 35.809971, 48.341545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707905, 35.430618, 48.349174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946147, 0.314234, -0.077860,
		0.067846, 0.042697, 0.996782,
		0.316547, -0.948385, 0.019078,
		32.802868, 35.146103, 48.354897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121571, 35.771797, 48.840141>,  <32.581287, 35.809971, 48.341545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121571, 35.771797, 48.840141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187798, 35.443981, 48.620705>,  <33.227535, 35.247292, 48.489044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187798, 35.443981, 48.620705>,  <33.121571, 35.771797, 48.840141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187798, 35.443981, 48.620705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977752, 0.209056, -0.017219,
		0.128798, -0.533533, 0.835915,
		0.165566, -0.819535, -0.548588,
		33.237469, 35.198120, 48.456127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830433, 35.597458, 49.014343>,  <33.121571, 35.771797, 48.840141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830433, 35.597458, 49.014343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773762, 35.375443, 48.686478>,  <33.739758, 35.242233, 48.489758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773762, 35.375443, 48.686478>,  <33.830433, 35.597458, 49.014343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773762, 35.375443, 48.686478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966563, 0.101214, -0.235609,
		0.213734, -0.825643, 0.522142,
		-0.141680, -0.555041, -0.819669,
		33.731258, 35.208931, 48.440578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394852, 35.112194, 49.057354>,  <33.830433, 35.597458, 49.014343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394852, 35.112194, 49.057354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278282, 35.091053, 48.675301>,  <34.208340, 35.078369, 48.446068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278282, 35.091053, 48.675301>,  <34.394852, 35.112194, 49.057354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278282, 35.091053, 48.675301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947041, 0.124810, -0.295865,
		0.134849, -0.990772, 0.013686,
		-0.291426, -0.052858, -0.955132,
		34.190853, 35.075195, 48.388760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830742, 34.603741, 48.773643>,  <34.394852, 35.112194, 49.057354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830742, 34.603741, 48.773643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670925, 34.800091, 48.463959>,  <34.575035, 34.917900, 48.278149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670925, 34.800091, 48.463959>,  <34.830742, 34.603741, 48.773643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670925, 34.800091, 48.463959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897260, 0.036347, -0.440003,
		-0.187848, -0.870470, -0.454968,
		-0.399546, 0.490878, -0.774210,
		34.551060, 34.947353, 48.231697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909832, 34.199673, 48.144775>,  <34.830742, 34.603741, 48.773643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909832, 34.199673, 48.144775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869026, 34.576305, 48.016392>,  <34.844543, 34.802284, 47.939362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869026, 34.576305, 48.016392>,  <34.909832, 34.199673, 48.144775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869026, 34.576305, 48.016392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801823, -0.113134, -0.586753,
		-0.588789, -0.317207, -0.743443,
		-0.102014, 0.941584, -0.320957,
		34.838421, 34.858780, 47.920105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058308, 34.140469, 47.429245>,  <34.909832, 34.199673, 48.144775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058308, 34.140469, 47.429245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108196, 34.524258, 47.530323>,  <35.138130, 34.754532, 47.590969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108196, 34.524258, 47.530323>,  <35.058308, 34.140469, 47.429245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108196, 34.524258, 47.530323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872866, 0.014993, -0.487730,
		-0.471752, 0.281399, -0.835622,
		0.124718, 0.959474, 0.252696,
		35.145611, 34.812099, 47.606133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296253, 34.432007, 46.778687>,  <35.058308, 34.140469, 47.429245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296253, 34.432007, 46.778687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391602, 34.665443, 47.089195>,  <35.448811, 34.805504, 47.275501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.391602, 34.665443, 47.089195>,  <35.296253, 34.432007, 46.778687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391602, 34.665443, 47.089195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947956, 0.033917, -0.316591,
		-0.211087, 0.811341, -0.545131,
		0.238374, 0.583588, 0.776275,
		35.463112, 34.840519, 47.322079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707031, 34.826214, 46.507198>,  <35.296253, 34.432007, 46.778687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707031, 34.826214, 46.507198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783993, 34.896301, 46.893417>,  <35.830170, 34.938354, 47.125149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.783993, 34.896301, 46.893417>,  <35.707031, 34.826214, 46.507198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783993, 34.896301, 46.893417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973973, -0.154240, -0.166093,
		0.119822, 0.972372, -0.200338,
		0.192404, 0.175222, 0.965545,
		35.841713, 34.948868, 47.183083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356739, 35.243866, 46.526340>,  <35.707031, 34.826214, 46.507198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356739, 35.243866, 46.526340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322178, 35.070671, 46.885239>,  <36.301441, 34.966755, 47.100578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322178, 35.070671, 46.885239>,  <36.356739, 35.243866, 46.526340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322178, 35.070671, 46.885239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933169, -0.350577, -0.079314,
		0.348896, 0.830431, 0.434346,
		-0.086407, -0.432991, 0.897247,
		36.296257, 34.940773, 47.154411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006592, 35.368168, 46.888714>,  <36.356739, 35.243866, 46.526340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006592, 35.368168, 46.888714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836456, 35.068867, 47.092365>,  <36.734375, 34.889286, 47.214558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836456, 35.068867, 47.092365>,  <37.006592, 35.368168, 46.888714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836456, 35.068867, 47.092365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811497, -0.564375, -0.151503,
		0.400703, 0.348719, 0.847250,
		-0.425335, -0.748248, 0.509131,
		36.708855, 34.844391, 47.245106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575111, 35.091877, 47.234547>,  <37.006592, 35.368168, 46.888714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575111, 35.091877, 47.234547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279728, 34.822628, 47.218578>,  <37.102497, 34.661079, 47.208996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.279728, 34.822628, 47.218578>,  <37.575111, 35.091877, 47.234547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279728, 34.822628, 47.218578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673956, -0.734881, -0.075717,
		0.021628, -0.082820, 0.996330,
		-0.738455, -0.673120, -0.039923,
		37.058193, 34.620693, 47.206600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920010, 34.556389, 47.728600>,  <37.575111, 35.091877, 47.234547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920010, 34.556389, 47.728600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104862, 34.831715, 47.504936>,  <38.215775, 34.996910, 47.370739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104862, 34.831715, 47.504936>,  <37.920010, 34.556389, 47.728600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104862, 34.831715, 47.504936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861714, 0.199606, -0.466484,
		-0.209477, 0.697409, 0.685376,
		0.462135, 0.688315, -0.559154,
		38.243504, 35.038208, 47.337189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390865, 34.053429, 47.654373>,  <37.920010, 34.556389, 47.728600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390865, 34.053429, 47.654373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506794, 34.231876, 47.993073>,  <38.576351, 34.338943, 48.196293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.506794, 34.231876, 47.993073>,  <38.390865, 34.053429, 47.654373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506794, 34.231876, 47.993073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275438, -0.808412, 0.520196,
		0.916589, -0.383992, -0.111419,
		0.289824, 0.446117, 0.846748,
		38.593742, 34.365711, 48.247097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891399, 33.678703, 48.076012>,  <38.390865, 34.053429, 47.654373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891399, 33.678703, 48.076012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647556, 33.905888, 48.297207>,  <38.501251, 34.042198, 48.429924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647556, 33.905888, 48.297207>,  <38.891399, 33.678703, 48.076012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647556, 33.905888, 48.297207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214682, -0.789820, 0.574540,
		0.763076, 0.231530, 0.603414,
		-0.609612, 0.567960, 0.552987,
		38.464672, 34.076275, 48.463104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067379, 33.493332, 48.832573>,  <38.891399, 33.678703, 48.076012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067379, 33.493332, 48.832573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707943, 33.619827, 48.710896>,  <38.492283, 33.695724, 48.637890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.707943, 33.619827, 48.710896>,  <39.067379, 33.493332, 48.832573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707943, 33.619827, 48.710896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398748, -0.877843, 0.265315,
		-0.183129, 0.359704, 0.914919,
		-0.898590, 0.316235, -0.304189,
		38.438366, 33.714699, 48.619640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191475, 32.925720, 49.233791>,  <39.067379, 33.493332, 48.832573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191475, 32.925720, 49.233791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.214294, 32.685928, 49.553131>,  <39.227985, 32.542053, 49.744736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.214294, 32.685928, 49.553131>,  <39.191475, 32.925720, 49.233791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214294, 32.685928, 49.553131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900541, 0.314325, 0.300376,
		-0.431012, -0.736086, -0.521926,
		0.057048, -0.599482, 0.798353,
		39.231407, 32.506084, 49.792637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550449, 32.527256, 49.234947>,  <39.191475, 32.925720, 49.233791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550449, 32.527256, 49.234947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720398, 32.574062, 49.594009>,  <38.822369, 32.602146, 49.809448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720398, 32.574062, 49.594009>,  <38.550449, 32.527256, 49.234947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720398, 32.574062, 49.594009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869386, 0.329101, 0.368593,
		-0.252288, -0.937016, 0.241559,
		0.424875, 0.117017, 0.897657,
		38.847862, 32.609169, 49.863308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094002, 32.356014, 49.830151>,  <38.550449, 32.527256, 49.234947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094002, 32.356014, 49.830151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324726, 32.602608, 50.044533>,  <38.463161, 32.750565, 50.173161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324726, 32.602608, 50.044533>,  <38.094002, 32.356014, 49.830151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324726, 32.602608, 50.044533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812387, 0.364198, 0.455398,
		0.085550, -0.698078, 0.710892,
		0.576809, 0.616479, 0.535952,
		38.497768, 32.787552, 50.205318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272976, 32.276989, 50.648048>,  <38.094002, 32.356014, 49.830151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272976, 32.276989, 50.648048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266224, 32.665104, 50.551495>,  <38.262173, 32.897972, 50.493561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.266224, 32.665104, 50.551495>,  <38.272976, 32.276989, 50.648048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266224, 32.665104, 50.551495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645178, 0.173866, 0.743986,
		0.763846, 0.168292, 0.623071,
		-0.016876, 0.970283, -0.241385,
		38.261162, 32.956188, 50.479080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614273, 32.637245, 51.156864>,  <38.272976, 32.276989, 50.648048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614273, 32.637245, 51.156864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356129, 32.889771, 50.984840>,  <38.201241, 33.041286, 50.881626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.356129, 32.889771, 50.984840>,  <38.614273, 32.637245, 51.156864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356129, 32.889771, 50.984840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371027, 0.233062, 0.898900,
		0.667720, 0.739678, 0.083826,
		-0.645360, 0.631315, -0.430060,
		38.162521, 33.079166, 50.855824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660671, 33.327667, 51.547592>,  <38.614273, 32.637245, 51.156864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660671, 33.327667, 51.547592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320889, 33.323593, 51.336567>,  <38.117020, 33.321148, 51.209953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320889, 33.323593, 51.336567>,  <38.660671, 33.327667, 51.547592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320889, 33.323593, 51.336567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511976, 0.257881, 0.819377,
		0.127704, 0.966123, -0.224272,
		-0.849454, -0.010184, -0.527564,
		38.066051, 33.320538, 51.178299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434471, 34.045341, 51.622257>,  <38.660671, 33.327667, 51.547592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434471, 34.045341, 51.622257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147179, 33.777519, 51.546543>,  <37.974804, 33.616825, 51.501114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147179, 33.777519, 51.546543>,  <38.434471, 34.045341, 51.622257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147179, 33.777519, 51.546543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522714, 0.339665, 0.781919,
		-0.459248, 0.660544, -0.593947,
		-0.718235, -0.669559, -0.189286,
		37.931709, 33.576653, 51.489758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834919, 34.439129, 51.768028>,  <38.434471, 34.045341, 51.622257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834919, 34.439129, 51.768028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674110, 34.072948, 51.775196>,  <37.577625, 33.853241, 51.779495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674110, 34.072948, 51.775196>,  <37.834919, 34.439129, 51.768028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674110, 34.072948, 51.775196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734509, 0.334123, 0.590642,
		-0.546692, 0.224292, -0.806735,
		-0.402026, -0.915453, 0.017918,
		37.553501, 33.798313, 51.780571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006336, 34.380840, 51.601414>,  <37.834919, 34.439129, 51.768028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006336, 34.380840, 51.601414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112671, 34.045219, 51.791286>,  <37.176472, 33.843849, 51.905209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.112671, 34.045219, 51.791286>,  <37.006336, 34.380840, 51.601414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112671, 34.045219, 51.791286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727730, 0.148273, 0.669644,
		-0.632248, -0.523459, -0.571185,
		0.265840, -0.839050, 0.474683,
		37.192425, 33.793503, 51.933693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319725, 34.138699, 51.753120>,  <37.006336, 34.380840, 51.601414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319725, 34.138699, 51.753120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562798, 33.961102, 52.016510>,  <36.708641, 33.854542, 52.174545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562798, 33.961102, 52.016510>,  <36.319725, 34.138699, 51.753120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562798, 33.961102, 52.016510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701580, 0.088428, 0.707082,
		-0.372170, -0.891654, -0.257764,
		0.607680, -0.443997, 0.658477,
		36.745102, 33.827904, 52.214054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818653, 33.789097, 52.166344>,  <36.319725, 34.138699, 51.753120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818653, 33.789097, 52.166344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167583, 33.817379, 52.359856>,  <36.376942, 33.834347, 52.475964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167583, 33.817379, 52.359856>,  <35.818653, 33.789097, 52.166344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167583, 33.817379, 52.359856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484934, 0.251199, 0.837698,
		-0.062300, -0.965350, 0.253412,
		0.872329, 0.070699, 0.483781,
		36.429283, 33.838589, 52.504990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681793, 33.553009, 52.840431>,  <35.818653, 33.789097, 52.166344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681793, 33.553009, 52.840431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042706, 33.721210, 52.878529>,  <36.259254, 33.822132, 52.901386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.042706, 33.721210, 52.878529>,  <35.681793, 33.553009, 52.840431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042706, 33.721210, 52.878529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289077, 0.426113, 0.857241,
		0.319884, -0.801005, 0.506030,
		0.902280, 0.420499, 0.095246,
		36.313389, 33.847359, 52.907101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778950, 33.479321, 53.411270>,  <35.681793, 33.553009, 52.840431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778950, 33.479321, 53.411270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028160, 33.786976, 53.354343>,  <36.177689, 33.971569, 53.320187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.028160, 33.786976, 53.354343>,  <35.778950, 33.479321, 53.411270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028160, 33.786976, 53.354343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380001, 0.456656, 0.804403,
		0.683691, -0.447085, 0.576785,
		0.623029, 0.769142, -0.142319,
		36.215069, 34.017719, 53.311649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088074, 33.602882, 54.084415>,  <35.778950, 33.479321, 53.411270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088074, 33.602882, 54.084415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096447, 33.935959, 53.863079>,  <36.101471, 34.135807, 53.730278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096447, 33.935959, 53.863079>,  <36.088074, 33.602882, 54.084415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096447, 33.935959, 53.863079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298772, 0.533377, 0.791356,
		0.954095, 0.148758, 0.259949,
		0.020931, 0.832694, -0.553337,
		36.102726, 34.185768, 53.697079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308525, 34.112270, 54.578102>,  <36.088074, 33.602882, 54.084415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308525, 34.112270, 54.578102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105953, 34.318611, 54.301720>,  <35.984409, 34.442417, 54.135891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.105953, 34.318611, 54.301720>,  <36.308525, 34.112270, 54.578102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105953, 34.318611, 54.301720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391237, 0.576618, 0.717248,
		0.768414, 0.633566, -0.090197,
		-0.506433, 0.515855, -0.690956,
		35.954025, 34.473366, 54.094433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532669, 34.895329, 54.715351>,  <36.308525, 34.112270, 54.578102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532669, 34.895329, 54.715351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207054, 34.888866, 54.483116>,  <36.011684, 34.884987, 54.343773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207054, 34.888866, 54.483116>,  <36.532669, 34.895329, 54.715351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207054, 34.888866, 54.483116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357751, 0.801433, 0.479291,
		0.457559, 0.597866, -0.658176,
		-0.814036, -0.016160, -0.580590,
		35.962845, 34.884018, 54.308941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392677, 35.541065, 54.512260>,  <36.532669, 34.895329, 54.715351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392677, 35.541065, 54.512260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053818, 35.328529, 54.510273>,  <35.850502, 35.201008, 54.509083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053818, 35.328529, 54.510273>,  <36.392677, 35.541065, 54.512260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053818, 35.328529, 54.510273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447833, 0.708917, 0.544868,
		-0.285989, 0.463806, -0.838507,
		-0.847146, -0.531338, -0.004965,
		35.799675, 35.169128, 54.508785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971142, 36.084400, 54.430122>,  <36.392677, 35.541065, 54.512260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971142, 36.084400, 54.430122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734352, 35.774544, 54.519115>,  <35.592278, 35.588631, 54.572510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734352, 35.774544, 54.519115>,  <35.971142, 36.084400, 54.430122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734352, 35.774544, 54.519115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639159, 0.619377, 0.455904,
		-0.490961, 0.127682, -0.861774,
		-0.591973, -0.774642, 0.222481,
		35.556759, 35.542152, 54.585861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232658, 36.292202, 54.302910>,  <35.971142, 36.084400, 54.430122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232658, 36.292202, 54.302910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215187, 35.992126, 54.566822>,  <35.204704, 35.812080, 54.725170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215187, 35.992126, 54.566822>,  <35.232658, 36.292202, 54.302910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215187, 35.992126, 54.566822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644292, 0.525876, 0.555285,
		-0.763531, -0.400833, -0.506314,
		-0.043682, -0.750191, 0.659776,
		35.202084, 35.767071, 54.764755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532280, 36.335209, 54.437695>,  <35.232658, 36.292202, 54.302910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532280, 36.335209, 54.437695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730217, 36.157509, 54.736431>,  <34.848980, 36.050888, 54.915672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.730217, 36.157509, 54.736431>,  <34.532280, 36.335209, 54.437695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730217, 36.157509, 54.736431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491100, 0.566060, 0.662115,
		-0.716902, -0.694417, 0.061939,
		0.494845, -0.444254, 0.746838,
		34.878670, 36.024231, 54.960484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057617, 36.176788, 54.921284>,  <34.532280, 36.335209, 54.437695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057617, 36.176788, 54.921284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405903, 36.160301, 55.117306>,  <34.614876, 36.150410, 55.234917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405903, 36.160301, 55.117306>,  <34.057617, 36.176788, 54.921284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405903, 36.160301, 55.117306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405555, 0.503458, 0.762925,
		-0.278165, -0.863036, 0.421655,
		0.870717, -0.041215, 0.490053,
		34.667118, 36.147938, 55.264320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936745, 35.779659, 55.490749>,  <34.057617, 36.176788, 54.921284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936745, 35.779659, 55.490749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263153, 35.986618, 55.593826>,  <34.459000, 36.110794, 55.655674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.263153, 35.986618, 55.593826>,  <33.936745, 35.779659, 55.490749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263153, 35.986618, 55.593826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475407, 0.347193, 0.808359,
		0.328768, -0.782153, 0.529291,
		0.816027, 0.517391, 0.257695,
		34.507961, 36.141834, 55.671135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998260, 35.659683, 56.200722>,  <33.936745, 35.779659, 55.490749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998260, 35.659683, 56.200722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206707, 35.994595, 56.134506>,  <34.331776, 36.195541, 56.094776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206707, 35.994595, 56.134506>,  <33.998260, 35.659683, 56.200722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206707, 35.994595, 56.134506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630366, 0.508333, 0.586716,
		0.575396, -0.201393, 0.792692,
		0.521112, 0.837280, -0.165542,
		34.363041, 36.245777, 56.084843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234962, 35.859158, 56.838768>,  <33.998260, 35.659683, 56.200722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234962, 35.859158, 56.838768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302437, 36.197559, 56.636452>,  <34.342922, 36.400600, 56.515060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302437, 36.197559, 56.636452>,  <34.234962, 35.859158, 56.838768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302437, 36.197559, 56.636452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429381, 0.524968, 0.734874,
		0.887230, 0.093215, 0.451812,
		0.168686, 0.846002, -0.505792,
		34.353043, 36.451359, 56.484715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467567, 36.305431, 57.356976>,  <34.234962, 35.859158, 56.838768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467567, 36.305431, 57.356976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318478, 36.521664, 57.055290>,  <34.229023, 36.651405, 56.874279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318478, 36.521664, 57.055290>,  <34.467567, 36.305431, 57.356976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318478, 36.521664, 57.055290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421752, 0.625293, 0.656607,
		0.826558, 0.562829, -0.005072,
		-0.372729, 0.540585, -0.754215,
		34.206657, 36.683838, 56.829025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546745, 36.918510, 57.633022>,  <34.467567, 36.305431, 57.356976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546745, 36.918510, 57.633022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308971, 37.022728, 57.328716>,  <34.166306, 37.085258, 57.146133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308971, 37.022728, 57.328716>,  <34.546745, 36.918510, 57.633022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308971, 37.022728, 57.328716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388180, 0.735556, 0.555224,
		0.704245, 0.625359, -0.336103,
		-0.594437, 0.260545, -0.760763,
		34.130642, 37.100891, 57.100487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496414, 37.607216, 57.643200>,  <34.546745, 36.918510, 57.633022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496414, 37.607216, 57.643200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162235, 37.492085, 57.455933>,  <33.961727, 37.423004, 57.343575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162235, 37.492085, 57.455933>,  <34.496414, 37.607216, 57.643200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162235, 37.492085, 57.455933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511479, 0.718853, 0.470786,
		0.201036, 0.632774, -0.747785,
		-0.835448, -0.287832, -0.468166,
		33.911602, 37.405735, 57.315483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066730, 38.258644, 57.473518>,  <34.496414, 37.607216, 57.643200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066730, 38.258644, 57.473518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806000, 37.957386, 57.437965>,  <33.649563, 37.776630, 57.416634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.806000, 37.957386, 57.437965>,  <34.066730, 38.258644, 57.473518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806000, 37.957386, 57.437965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716018, 0.572565, 0.399359,
		-0.249882, 0.323955, -0.912476,
		-0.651826, -0.753142, -0.088884,
		33.610451, 37.731441, 57.411301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603607, 38.499901, 57.145031>,  <34.066730, 38.258644, 57.473518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603607, 38.499901, 57.145031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418636, 38.180923, 57.300076>,  <33.307652, 37.989536, 57.393101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418636, 38.180923, 57.300076>,  <33.603607, 38.499901, 57.145031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418636, 38.180923, 57.300076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713085, 0.594292, 0.371923,
		-0.526942, -0.104413, -0.843463,
		-0.462430, -0.797442, 0.387613,
		33.279907, 37.941692, 57.416359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840637, 38.602074, 56.985054>,  <33.603607, 38.499901, 57.145031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840637, 38.602074, 56.985054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840828, 38.329460, 57.277767>,  <32.840942, 38.165894, 57.453396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.840828, 38.329460, 57.277767>,  <32.840637, 38.602074, 56.985054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840828, 38.329460, 57.277767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666578, 0.545283, 0.508272,
		-0.745435, -0.488035, -0.454036,
		0.000477, -0.681534, 0.731786,
		32.840969, 38.125000, 57.497303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260990, 38.670635, 57.196812>,  <32.840637, 38.602074, 56.985054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260990, 38.670635, 57.196812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417854, 38.460411, 57.498806>,  <32.511971, 38.334274, 57.680000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417854, 38.460411, 57.498806>,  <32.260990, 38.670635, 57.196812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417854, 38.460411, 57.498806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636822, 0.437158, 0.635099,
		-0.663830, -0.729848, -0.163255,
		0.392157, -0.525562, 0.754981,
		32.535503, 38.302742, 57.725300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773890, 38.201706, 57.560917>,  <32.260990, 38.670635, 57.196812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773890, 38.201706, 57.560917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.061230, 38.270679, 57.830505>,  <32.233635, 38.312061, 57.992260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.061230, 38.270679, 57.830505>,  <31.773890, 38.201706, 57.560917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061230, 38.270679, 57.830505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694001, 0.244859, 0.677057,
		-0.048283, -0.954103, 0.295561,
		0.718353, 0.172429, 0.673971,
		32.276737, 38.322407, 58.032696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577608, 37.850533, 58.273167>,  <31.773890, 38.201706, 57.560917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577608, 37.850533, 58.273167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837315, 38.144722, 58.350662>,  <31.993139, 38.321236, 58.397160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837315, 38.144722, 58.350662>,  <31.577608, 37.850533, 58.273167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837315, 38.144722, 58.350662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646867, 0.400019, 0.649267,
		0.400019, -0.546869, 0.735472,
		-0.649267, -0.735472, -0.193736,
		32.032093, 38.365364, 58.408783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740532, 37.831676, 59.031460>,  <31.577608, 37.850533, 58.273167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740532, 37.831676, 59.031460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838001, 38.202240, 58.916645>,  <31.896482, 38.424580, 58.847755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838001, 38.202240, 58.916645>,  <31.740532, 37.831676, 59.031460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838001, 38.202240, 58.916645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420340, 0.367597, 0.829570,
		0.874035, -0.081491, 0.478980,
		0.243674, 0.926408, -0.287038,
		31.911104, 38.480164, 58.830532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883528, 38.228310, 59.692722>,  <31.740532, 37.831676, 59.031460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883528, 38.228310, 59.692722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812780, 38.486900, 59.395863>,  <31.770332, 38.642056, 59.217747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812780, 38.486900, 59.395863>,  <31.883528, 38.228310, 59.692722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812780, 38.486900, 59.395863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529938, 0.572858, 0.625300,
		0.829388, 0.503888, 0.241272,
		-0.176866, 0.646476, -0.742151,
		31.759720, 38.680843, 59.173218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948605, 38.800541, 60.060608>,  <31.883528, 38.228310, 59.692722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948605, 38.800541, 60.060608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732920, 38.886791, 59.734970>,  <31.603508, 38.938541, 59.539589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.732920, 38.886791, 59.734970>,  <31.948605, 38.800541, 60.060608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732920, 38.886791, 59.734970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687178, 0.446180, 0.573331,
		0.486861, 0.868577, -0.092411,
		-0.539215, 0.215630, -0.814096,
		31.571156, 38.951481, 59.490742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886353, 39.528385, 60.031887>,  <31.948605, 38.800541, 60.060608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886353, 39.528385, 60.031887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592518, 39.436314, 59.776573>,  <31.416218, 39.381069, 59.623386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.592518, 39.436314, 59.776573>,  <31.886353, 39.528385, 60.031887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592518, 39.436314, 59.776573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593186, 0.674567, 0.439419,
		0.329418, 0.701410, -0.632067,
		-0.734585, -0.230180, -0.638281,
		31.372143, 39.367260, 59.585091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655939, 40.116436, 59.704487>,  <31.886353, 39.528385, 60.031887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655939, 40.116436, 59.704487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.336628, 39.875622, 59.697464>,  <31.145042, 39.731133, 59.693253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.336628, 39.875622, 59.697464>,  <31.655939, 40.116436, 59.704487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336628, 39.875622, 59.697464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550675, 0.717749, 0.426138,
		-0.243952, 0.349841, -0.904488,
		-0.798276, -0.602036, -0.017553,
		31.097145, 39.695011, 59.692200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180552, 40.614830, 59.818542>,  <31.655939, 40.116436, 59.704487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180552, 40.614830, 59.818542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959352, 40.282799, 59.847301>,  <30.826633, 40.083580, 59.864555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959352, 40.282799, 59.847301>,  <31.180552, 40.614830, 59.818542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959352, 40.282799, 59.847301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748463, 0.532826, 0.394841,
		-0.366056, 0.164534, -0.915932,
		-0.552997, -0.830075, 0.071896,
		30.793453, 40.033775, 59.868870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561024, 40.691471, 59.359310>,  <31.180552, 40.614830, 59.818542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561024, 40.691471, 59.359310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490406, 40.408314, 59.632870>,  <30.448034, 40.238419, 59.797005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.490406, 40.408314, 59.632870>,  <30.561024, 40.691471, 59.359310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490406, 40.408314, 59.632870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829053, 0.481472, 0.284352,
		-0.530568, -0.516784, -0.671887,
		-0.176546, -0.707898, 0.683895,
		30.437443, 40.195946, 59.838039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905205, 40.498299, 59.347546>,  <30.561024, 40.691471, 59.359310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905205, 40.498299, 59.347546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004526, 40.402775, 59.723061>,  <30.064119, 40.345463, 59.948368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004526, 40.402775, 59.723061>,  <29.905205, 40.498299, 59.347546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004526, 40.402775, 59.723061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734971, 0.584851, 0.343171,
		-0.631001, -0.775190, -0.030295,
		0.248305, -0.238807, 0.938784,
		30.079018, 40.331131, 60.004696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304558, 40.462032, 59.689140>,  <29.905205, 40.498299, 59.347546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304558, 40.462032, 59.689140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562656, 40.444313, 59.994217>,  <29.717516, 40.433681, 60.177261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.562656, 40.444313, 59.994217>,  <29.304558, 40.462032, 59.689140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562656, 40.444313, 59.994217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598359, 0.591397, 0.540570,
		-0.475000, -0.805163, 0.355090,
		0.645246, -0.044300, 0.762690,
		29.756229, 40.431023, 60.223022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849722, 40.385014, 60.331814>,  <29.304558, 40.462032, 59.689140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849722, 40.385014, 60.331814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208534, 40.492653, 60.472057>,  <29.423820, 40.557236, 60.556202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208534, 40.492653, 60.472057>,  <28.849722, 40.385014, 60.331814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208534, 40.492653, 60.472057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435330, 0.400945, 0.806059,
		0.076330, -0.875689, 0.476804,
		0.897029, 0.269094, 0.350610,
		29.477642, 40.573380, 60.577240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853962, 40.208549, 60.975964>,  <28.849722, 40.385014, 60.331814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853962, 40.208549, 60.975964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.165503, 40.459423, 60.978218>,  <29.352427, 40.609947, 60.979572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.165503, 40.459423, 60.978218>,  <28.853962, 40.208549, 60.975964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165503, 40.459423, 60.978218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396790, 0.485742, 0.778853,
		0.485742, -0.608850, 0.627181,
		-0.778853, -0.627181, -0.005640,
		29.399158, 40.647579, 60.979912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195919, 40.219612, 61.636818>,  <28.853962, 40.208549, 60.975964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195919, 40.219612, 61.636818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263685, 40.576843, 61.470104>,  <29.304344, 40.791183, 61.370075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.263685, 40.576843, 61.470104>,  <29.195919, 40.219612, 61.636818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263685, 40.576843, 61.470104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501855, 0.442140, 0.743407,
		0.848198, 0.083222, 0.523100,
		0.169415, 0.893077, -0.416788,
		29.314510, 40.844765, 61.345066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545183, 40.622215, 62.112415>,  <29.195919, 40.219612, 61.636818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545183, 40.622215, 62.112415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.336046, 40.873787, 61.882256>,  <29.210564, 41.024731, 61.744160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.336046, 40.873787, 61.882256>,  <29.545183, 40.622215, 62.112415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336046, 40.873787, 61.882256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319621, 0.481122, 0.816311,
		0.790240, 0.610710, -0.050530,
		-0.522841, 0.628932, -0.575398,
		29.179193, 41.062466, 61.709637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595938, 41.283798, 62.452625>,  <29.545183, 40.622215, 62.112415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595938, 41.283798, 62.452625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.286367, 41.289558, 62.199379>,  <29.100624, 41.293015, 62.047432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.286367, 41.289558, 62.199379>,  <29.595938, 41.283798, 62.452625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286367, 41.289558, 62.199379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426794, 0.726731, 0.538247,
		0.467851, 0.686772, -0.556292,
		-0.773927, 0.014397, -0.633111,
		29.054190, 41.293877, 62.009445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549496, 41.951683, 62.324902>,  <29.595938, 41.283798, 62.452625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549496, 41.951683, 62.324902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196257, 41.770256, 62.276875>,  <28.984314, 41.661400, 62.248058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196257, 41.770256, 62.276875>,  <29.549496, 41.951683, 62.324902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196257, 41.770256, 62.276875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401077, 0.596975, 0.694808,
		-0.243464, 0.661740, -0.709102,
		-0.883098, -0.453565, -0.120066,
		28.931328, 41.634186, 62.240856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237488, 42.373943, 62.670620>,  <29.549496, 41.951683, 62.324902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237488, 42.373943, 62.670620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.982256, 42.075584, 62.594200>,  <28.829117, 41.896568, 62.548347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.982256, 42.075584, 62.594200>,  <29.237488, 42.373943, 62.670620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982256, 42.075584, 62.594200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691511, 0.446016, 0.568227,
		-0.338627, 0.494684, -0.800387,
		-0.638078, -0.745894, -0.191047,
		28.790833, 41.851818, 62.536884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362240, 42.665123, 62.106205>,  <29.237488, 42.373943, 62.670620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362240, 42.665123, 62.106205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.162605, 42.995945, 62.002747>,  <29.042826, 43.194439, 61.940674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.162605, 42.995945, 62.002747>,  <29.362240, 42.665123, 62.106205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162605, 42.995945, 62.002747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202042, -0.179185, -0.962846,
		-0.842670, -0.532798, -0.077671,
		-0.499085, 0.827054, -0.258641,
		29.012880, 43.244061, 61.925156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877314, 42.584797, 61.550163>,  <29.362240, 42.665123, 62.106205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877314, 42.584797, 61.550163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024254, 42.956772, 61.556667>,  <29.112417, 43.179958, 61.560570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024254, 42.956772, 61.556667>,  <28.877314, 42.584797, 61.550163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024254, 42.956772, 61.556667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109121, -0.025728, -0.993696,
		-0.923659, 0.366809, -0.110927,
		0.367350, 0.929941, 0.016263,
		29.134459, 43.235756, 61.561546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596680, 42.866329, 60.957092>,  <28.877314, 42.584797, 61.550163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596680, 42.866329, 60.957092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.838017, 43.168022, 61.060715>,  <28.982819, 43.349037, 61.122890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.838017, 43.168022, 61.060715>,  <28.596680, 42.866329, 60.957092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838017, 43.168022, 61.060715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185499, 0.183207, -0.965415,
		-0.775608, 0.630532, -0.029373,
		0.603343, 0.754232, 0.259060,
		29.019020, 43.394291, 61.138432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472185, 43.569290, 60.616913>,  <28.596680, 42.866329, 60.957092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472185, 43.569290, 60.616913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860723, 43.523399, 60.700176>,  <29.093845, 43.495865, 60.750134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.860723, 43.523399, 60.700176>,  <28.472185, 43.569290, 60.616913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860723, 43.523399, 60.700176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204181, -0.045494, -0.977876,
		0.121663, 0.992354, -0.020764,
		0.971344, -0.114732, 0.208154,
		29.152126, 43.488979, 60.762623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850533, 44.113811, 60.368778>,  <28.472185, 43.569290, 60.616913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850533, 44.113811, 60.368778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055737, 43.770760, 60.354412>,  <29.178860, 43.564930, 60.345791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055737, 43.770760, 60.354412>,  <28.850533, 44.113811, 60.368778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055737, 43.770760, 60.354412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007576, 0.037313, -0.999275,
		0.858348, 0.512912, 0.012644,
		0.513012, -0.857630, -0.035914,
		29.209641, 43.513470, 60.343639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303452, 44.142883, 59.818073>,  <28.850533, 44.113811, 60.368778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303452, 44.142883, 59.818073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363728, 43.759968, 59.916782>,  <29.399893, 43.530220, 59.976009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.363728, 43.759968, 59.916782>,  <29.303452, 44.142883, 59.818073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363728, 43.759968, 59.916782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188043, -0.217312, -0.957818,
		0.970532, 0.190738, 0.147264,
		0.150690, -0.957285, 0.246775,
		29.408934, 43.472782, 59.990814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495199, 43.942936, 59.234394>,  <29.303452, 44.142883, 59.818073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495199, 43.942936, 59.234394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527321, 43.614414, 59.460320>,  <29.546593, 43.417301, 59.595875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527321, 43.614414, 59.460320>,  <29.495199, 43.942936, 59.234394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527321, 43.614414, 59.460320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372179, -0.500952, -0.781364,
		0.924681, 0.272955, 0.265445,
		0.080302, -0.821305, 0.564809,
		29.551411, 43.368023, 59.629761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096928, 43.713348, 59.081623>,  <29.495199, 43.942936, 59.234394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096928, 43.713348, 59.081623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929319, 43.391193, 59.249321>,  <29.828754, 43.197899, 59.349937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929319, 43.391193, 59.249321>,  <30.096928, 43.713348, 59.081623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929319, 43.391193, 59.249321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459176, -0.586302, -0.667388,
		0.783312, -0.087144, 0.615490,
		-0.419022, -0.805392, 0.419243,
		29.803612, 43.149574, 59.375095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671669, 43.229935, 59.353577>,  <30.096928, 43.713348, 59.081623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671669, 43.229935, 59.353577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.339943, 43.014294, 59.294769>,  <30.140907, 42.884911, 59.259487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.339943, 43.014294, 59.294769>,  <30.671669, 43.229935, 59.353577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339943, 43.014294, 59.294769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502366, -0.604107, -0.618614,
		0.244681, -0.586880, 0.771818,
		-0.829313, -0.539098, -0.147015,
		30.091148, 42.852566, 59.250664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776243, 42.521862, 59.495083>,  <30.671669, 43.229935, 59.353577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776243, 42.521862, 59.495083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.483173, 42.557991, 59.225262>,  <30.307331, 42.579670, 59.063370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.483173, 42.557991, 59.225262>,  <30.776243, 42.521862, 59.495083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483173, 42.557991, 59.225262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606569, -0.362822, -0.707414,
		-0.308640, -0.927471, 0.211044,
		-0.732677, 0.090323, -0.674556,
		30.263371, 42.585091, 59.022896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929686, 41.982971, 59.028313>,  <30.776243, 42.521862, 59.495083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929686, 41.982971, 59.028313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650318, 42.209335, 58.853062>,  <30.482698, 42.345154, 58.747910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.650318, 42.209335, 58.853062>,  <30.929686, 41.982971, 59.028313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650318, 42.209335, 58.853062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418273, -0.173989, -0.891502,
		-0.580742, -0.805897, -0.115190,
		-0.698417, 0.565913, -0.438128,
		30.440794, 42.379108, 58.721622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498493, 41.543072, 58.527031>,  <30.929686, 41.982971, 59.028313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498493, 41.543072, 58.527031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449770, 41.921604, 58.407284>,  <30.420536, 42.148724, 58.335434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449770, 41.921604, 58.407284>,  <30.498493, 41.543072, 58.527031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449770, 41.921604, 58.407284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223838, -0.267656, -0.937154,
		-0.966985, -0.181161, -0.179223,
		-0.121806, 0.946330, -0.299370,
		30.413229, 42.205502, 58.317474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028000, 41.502296, 57.972721>,  <30.498493, 41.543072, 58.527031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028000, 41.502296, 57.972721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204966, 41.857071, 57.919624>,  <30.311144, 42.069935, 57.887768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204966, 41.857071, 57.919624>,  <30.028000, 41.502296, 57.972721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204966, 41.857071, 57.919624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205575, -0.244369, -0.947641,
		-0.872932, 0.391961, -0.290443,
		0.442413, 0.886934, -0.132740,
		30.337690, 42.123150, 57.879803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694101, 41.937824, 57.514545>,  <30.028000, 41.502296, 57.972721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694101, 41.937824, 57.514545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027550, 42.157875, 57.494789>,  <30.227619, 42.289906, 57.482937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.027550, 42.157875, 57.494789>,  <29.694101, 41.937824, 57.514545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027550, 42.157875, 57.494789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045172, -0.157021, -0.986562,
		-0.550490, 0.820185, -0.155746,
		0.833619, 0.550128, -0.049389,
		30.277636, 42.322914, 57.479973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623556, 42.284805, 56.969959>,  <29.694101, 41.937824, 57.514545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623556, 42.284805, 56.969959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018311, 42.295055, 57.033707>,  <30.255163, 42.301205, 57.071957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018311, 42.295055, 57.033707>,  <29.623556, 42.284805, 56.969959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018311, 42.295055, 57.033707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161373, -0.180281, -0.970287,
		0.003871, 0.983281, -0.182052,
		0.986886, 0.025623, 0.159373,
		30.314377, 42.302742, 57.081520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874926, 42.678520, 56.323769>,  <29.623556, 42.284805, 56.969959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874926, 42.678520, 56.323769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.195898, 42.491760, 56.472420>,  <30.388481, 42.379704, 56.561611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.195898, 42.491760, 56.472420>,  <29.874926, 42.678520, 56.323769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195898, 42.491760, 56.472420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266325, -0.277104, -0.923192,
		0.534016, 0.839774, -0.098011,
		0.802432, -0.466897, 0.371632,
		30.436628, 42.351692, 56.583908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536158, 42.945549, 55.946087>,  <29.874926, 42.678520, 56.323769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536158, 42.945549, 55.946087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648149, 42.602966, 56.119564>,  <30.715345, 42.397415, 56.223652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648149, 42.602966, 56.119564>,  <30.536158, 42.945549, 55.946087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648149, 42.602966, 56.119564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375376, -0.318130, -0.870567,
		0.883575, 0.406541, 0.232423,
		0.279980, -0.856456, 0.433698,
		30.732143, 42.346031, 56.249672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254745, 42.858124, 55.666908>,  <30.536158, 42.945549, 55.946087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254745, 42.858124, 55.666908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.103239, 42.508366, 55.788216>,  <31.012335, 42.298512, 55.861000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.103239, 42.508366, 55.788216>,  <31.254745, 42.858124, 55.666908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103239, 42.508366, 55.788216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464103, -0.462951, -0.755171,
		0.800716, -0.145285, 0.581159,
		-0.378764, -0.874396, 0.303265,
		30.989611, 42.246048, 55.879196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783323, 42.354214, 55.788280>,  <31.254745, 42.858124, 55.666908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783323, 42.354214, 55.788280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468578, 42.109730, 55.754173>,  <31.279732, 41.963039, 55.733711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.468578, 42.109730, 55.754173>,  <31.783323, 42.354214, 55.788280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468578, 42.109730, 55.754173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528890, -0.596696, -0.603514,
		0.317995, -0.519979, 0.792780,
		-0.786864, -0.611208, -0.085265,
		31.232519, 41.926369, 55.728592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225269, 41.713657, 55.789867>,  <31.783323, 42.354214, 55.788280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225269, 41.713657, 55.789867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861334, 41.654942, 55.634613>,  <31.642973, 41.619713, 55.541462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.861334, 41.654942, 55.634613>,  <32.225269, 41.713657, 55.789867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861334, 41.654942, 55.634613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387939, -0.632922, -0.670010,
		-0.147306, -0.760172, 0.632803,
		-0.909838, -0.146793, -0.388133,
		31.588383, 41.610905, 55.518173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096184, 40.989971, 55.774967>,  <32.225269, 41.713657, 55.789867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096184, 40.989971, 55.774967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.858952, 41.138462, 55.489185>,  <31.716612, 41.227558, 55.317719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.858952, 41.138462, 55.489185>,  <32.096184, 40.989971, 55.774967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858952, 41.138462, 55.489185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423211, -0.611151, -0.668870,
		-0.684944, -0.699058, 0.205353,
		-0.593081, 0.371231, -0.714453,
		31.681026, 41.249832, 55.274849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762249, 40.373020, 55.375423>,  <32.096184, 40.989971, 55.774967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762249, 40.373020, 55.375423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750212, 40.679787, 55.119003>,  <31.742989, 40.863846, 54.965153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750212, 40.679787, 55.119003>,  <31.762249, 40.373020, 55.375423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750212, 40.679787, 55.119003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551249, -0.522254, -0.650673,
		-0.833798, -0.372958, -0.407042,
		-0.030095, 0.766912, -0.641047,
		31.741184, 40.909859, 54.926689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726204, 40.133438, 54.617767>,  <31.762249, 40.373020, 55.375423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726204, 40.133438, 54.617767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853062, 40.509491, 54.567867>,  <31.929176, 40.735123, 54.537930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.853062, 40.509491, 54.567867>,  <31.726204, 40.133438, 54.617767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853062, 40.509491, 54.567867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469773, -0.269996, -0.840485,
		-0.823852, 0.207954, -0.527279,
		0.317145, 0.940137, -0.124746,
		31.948206, 40.791531, 54.530445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754070, 40.143349, 53.926105>,  <31.726204, 40.133438, 54.617767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754070, 40.143349, 53.926105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960752, 40.463287, 54.048264>,  <32.084763, 40.655251, 54.121559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960752, 40.463287, 54.048264>,  <31.754070, 40.143349, 53.926105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960752, 40.463287, 54.048264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690960, -0.178944, -0.700395,
		-0.505558, 0.572913, -0.645122,
		0.516706, 0.799844, 0.305393,
		32.115765, 40.703239, 54.139881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741720, 40.638172, 53.292191>,  <31.754070, 40.143349, 53.926105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741720, 40.638172, 53.292191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037239, 40.689957, 53.556740>,  <32.214550, 40.721027, 53.715469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.037239, 40.689957, 53.556740>,  <31.741720, 40.638172, 53.292191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037239, 40.689957, 53.556740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673849, -0.156920, -0.722013,
		0.010313, 0.979090, -0.203167,
		0.738797, 0.129458, 0.661377,
		32.258877, 40.728794, 53.755154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361149, 41.030140, 52.965149>,  <31.741720, 40.638172, 53.292191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361149, 41.030140, 52.965149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542965, 40.877991, 53.287319>,  <32.652054, 40.786701, 53.480621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542965, 40.877991, 53.287319>,  <32.361149, 41.030140, 52.965149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542965, 40.877991, 53.287319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707045, -0.395872, -0.585981,
		0.541736, 0.835823, 0.089001,
		0.454543, -0.380375, 0.805422,
		32.679329, 40.763878, 53.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945030, 41.321892, 52.983467>,  <32.361149, 41.030140, 52.965149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945030, 41.321892, 52.983467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985870, 40.981838, 53.190098>,  <33.010376, 40.777805, 53.314075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.985870, 40.981838, 53.190098>,  <32.945030, 41.321892, 52.983467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985870, 40.981838, 53.190098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717515, -0.296746, -0.630170,
		0.689019, 0.434997, 0.579681,
		0.102105, -0.850129, 0.516580,
		33.016502, 40.726799, 53.345074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559002, 41.211536, 53.020042>,  <32.945030, 41.321892, 52.983467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559002, 41.211536, 53.020042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427597, 40.842594, 53.101372>,  <33.348755, 40.621227, 53.150169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.427597, 40.842594, 53.101372>,  <33.559002, 41.211536, 53.020042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427597, 40.842594, 53.101372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740345, -0.385138, -0.550961,
		0.586489, -0.030468, 0.809384,
		-0.328511, -0.922356, 0.203322,
		33.329044, 40.565887, 53.162369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158077, 40.824360, 53.093464>,  <33.559002, 41.211536, 53.020042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158077, 40.824360, 53.093464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871040, 40.548519, 53.054455>,  <33.698818, 40.383015, 53.031048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.871040, 40.548519, 53.054455>,  <34.158077, 40.824360, 53.093464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871040, 40.548519, 53.054455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630273, -0.583425, -0.512222,
		0.296330, -0.429033, 0.853299,
		-0.717596, -0.689598, -0.097522,
		33.655762, 40.341640, 53.025200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504921, 40.197010, 53.142445>,  <34.158077, 40.824360, 53.093464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504921, 40.197010, 53.142445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162331, 40.092793, 52.964203>,  <33.956776, 40.030262, 52.857258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162331, 40.092793, 52.964203>,  <34.504921, 40.197010, 53.142445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162331, 40.092793, 52.964203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514610, -0.498361, -0.697720,
		-0.040283, -0.826893, 0.560915,
		-0.856478, -0.260546, -0.445603,
		33.905388, 40.014629, 52.830521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468708, 39.500137, 53.052971>,  <34.504921, 40.197010, 53.142445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468708, 39.500137, 53.052971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209930, 39.635422, 52.779598>,  <34.054665, 39.716595, 52.615574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209930, 39.635422, 52.779598>,  <34.468708, 39.500137, 53.052971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209930, 39.635422, 52.779598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511641, -0.472026, -0.717924,
		-0.565410, -0.814126, 0.132328,
		-0.646943, 0.338217, -0.683429,
		34.015846, 39.736885, 52.574570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213379, 38.915794, 52.723148>,  <34.468708, 39.500137, 53.052971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213379, 38.915794, 52.723148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134464, 39.203060, 52.456219>,  <34.087116, 39.375420, 52.296062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.134464, 39.203060, 52.456219>,  <34.213379, 38.915794, 52.723148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134464, 39.203060, 52.456219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249049, -0.621651, -0.742646,
		-0.948185, -0.312707, -0.056218,
		-0.197283, 0.718167, -0.667320,
		34.075279, 39.418510, 52.256023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822071, 38.533741, 52.124886>,  <34.213379, 38.915794, 52.723148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822071, 38.533741, 52.124886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935619, 38.883759, 51.968060>,  <34.003750, 39.093769, 51.873966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935619, 38.883759, 51.968060>,  <33.822071, 38.533741, 52.124886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935619, 38.883759, 51.968060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245195, -0.461535, -0.852564,
		-0.926981, 0.145890, -0.345575,
		0.283875, 0.875044, -0.392063,
		34.020782, 39.146271, 51.850441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477413, 38.649551, 51.523903>,  <33.822071, 38.533741, 52.124886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477413, 38.649551, 51.523903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811409, 38.867718, 51.494713>,  <34.011806, 38.998615, 51.477200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.811409, 38.867718, 51.494713>,  <33.477413, 38.649551, 51.523903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811409, 38.867718, 51.494713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235338, -0.473825, -0.848591,
		-0.497409, 0.691387, -0.523993,
		0.834985, 0.545412, -0.072975,
		34.061905, 39.031342, 51.472820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556839, 38.930660, 50.752949>,  <33.477413, 38.649551, 51.523903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556839, 38.930660, 50.752949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921463, 38.980316, 50.909744>,  <34.140236, 39.010109, 51.003822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.921463, 38.980316, 50.909744>,  <33.556839, 38.930660, 50.752949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921463, 38.980316, 50.909744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393222, -0.541823, -0.742835,
		0.120171, 0.831274, -0.542718,
		0.911556, 0.124142, 0.391987,
		34.194931, 39.017559, 51.027340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942318, 39.080746, 50.164009>,  <33.556839, 38.930660, 50.752949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942318, 39.080746, 50.164009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167000, 38.944324, 50.465515>,  <34.301811, 38.862473, 50.646420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167000, 38.944324, 50.465515>,  <33.942318, 39.080746, 50.164009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167000, 38.944324, 50.465515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412158, -0.674623, -0.612380,
		0.717362, 0.654652, -0.238375,
		0.561709, -0.341050, 0.753769,
		34.335514, 38.842010, 50.691647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580177, 38.981571, 49.932243>,  <33.942318, 39.080746, 50.164009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580177, 38.981571, 49.932243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624062, 38.741890, 50.249462>,  <34.650394, 38.598083, 50.439793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624062, 38.741890, 50.249462>,  <34.580177, 38.981571, 49.932243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624062, 38.741890, 50.249462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523145, -0.643600, -0.558658,
		0.845152, 0.476169, 0.242858,
		0.109713, -0.599201, 0.793046,
		34.656975, 38.562130, 50.487377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297871, 38.934063, 50.101803>,  <34.580177, 38.981571, 49.932243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297871, 38.934063, 50.101803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136395, 38.599598, 50.250320>,  <35.039509, 38.398918, 50.339432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136395, 38.599598, 50.250320>,  <35.297871, 38.934063, 50.101803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136395, 38.599598, 50.250320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715052, -0.541529, -0.442093,
		0.570729, 0.087022, 0.816515,
		-0.403695, -0.836166, 0.371292,
		35.015285, 38.348747, 50.361710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761543, 38.606415, 50.467140>,  <35.297871, 38.934063, 50.101803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761543, 38.606415, 50.467140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510250, 38.309196, 50.374874>,  <35.359474, 38.130863, 50.319515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.510250, 38.309196, 50.374874>,  <35.761543, 38.606415, 50.467140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510250, 38.309196, 50.374874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778005, -0.597658, -0.193683,
		0.006057, -0.301136, 0.953562,
		-0.628229, -0.743049, -0.230665,
		35.321781, 38.086281, 50.305676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124374, 37.998085, 50.779129>,  <35.761543, 38.606415, 50.467140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124374, 37.998085, 50.779129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851643, 37.864410, 50.518845>,  <35.688004, 37.784206, 50.362675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851643, 37.864410, 50.518845>,  <36.124374, 37.998085, 50.779129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851643, 37.864410, 50.518845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692057, -0.582886, -0.425796,
		-0.236997, -0.740651, 0.628704,
		-0.681828, -0.334187, -0.650714,
		35.647095, 37.764156, 50.323631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199986, 37.266682, 50.884674>,  <36.124374, 37.998085, 50.779129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199986, 37.266682, 50.884674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050930, 37.324894, 50.518078>,  <35.961498, 37.359821, 50.298119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.050930, 37.324894, 50.518078>,  <36.199986, 37.266682, 50.884674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050930, 37.324894, 50.518078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575478, -0.738541, -0.351257,
		-0.727988, -0.658314, 0.191458,
		-0.372637, 0.145531, -0.916494,
		35.939140, 37.368553, 50.243130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196358, 36.591095, 50.537968>,  <36.199986, 37.266682, 50.884674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196358, 36.591095, 50.537968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092014, 36.819305, 50.226467>,  <36.029408, 36.956230, 50.039566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092014, 36.819305, 50.226467>,  <36.196358, 36.591095, 50.537968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092014, 36.819305, 50.226467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519647, -0.596855, -0.611335,
		-0.813583, -0.564150, -0.140775,
		-0.260862, 0.570525, -0.778750,
		36.013756, 36.990463, 49.992844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065022, 36.085770, 49.932781>,  <36.196358, 36.591095, 50.537968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065022, 36.085770, 49.932781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092220, 36.447784, 49.764839>,  <36.108540, 36.664993, 49.664074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.092220, 36.447784, 49.764839>,  <36.065022, 36.085770, 49.932781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092220, 36.447784, 49.764839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475573, -0.399346, -0.783807,
		-0.877045, -0.146380, -0.457565,
		0.067993, 0.905039, -0.419859,
		36.112617, 36.719296, 49.638882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769543, 36.006031, 49.222076>,  <36.065022, 36.085770, 49.932781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769543, 36.006031, 49.222076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044399, 36.295513, 49.247673>,  <36.209312, 36.469200, 49.263031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044399, 36.295513, 49.247673>,  <35.769543, 36.006031, 49.222076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044399, 36.295513, 49.247673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473897, -0.379701, -0.794511,
		-0.550690, 0.576267, -0.603868,
		0.687140, 0.723701, 0.063994,
		36.250542, 36.512623, 49.266872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916134, 36.476215, 48.542545>,  <35.769543, 36.006031, 49.222076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916134, 36.476215, 48.542545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250889, 36.438606, 48.758244>,  <36.451740, 36.416042, 48.887661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.250889, 36.438606, 48.758244>,  <35.916134, 36.476215, 48.542545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250889, 36.438606, 48.758244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488298, -0.316965, -0.813079,
		0.247370, 0.943765, -0.219351,
		0.836883, -0.094023, 0.539247,
		36.501953, 36.410400, 48.920017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410328, 37.033928, 48.199070>,  <35.916134, 36.476215, 48.542545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410328, 37.033928, 48.199070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096565, 36.815540, 48.316803>,  <34.908310, 36.684509, 48.387444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096565, 36.815540, 48.316803>,  <35.410328, 37.033928, 48.199070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096565, 36.815540, 48.316803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467832, -0.832354, -0.297186,
		0.407242, -0.095416, 0.908323,
		-0.784402, -0.545969, 0.294331,
		34.861244, 36.651749, 48.405102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941948, 37.574329, 48.326000>,  <35.410328, 37.033928, 48.199070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941948, 37.574329, 48.326000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994114, 37.547977, 47.930294>,  <35.025414, 37.532166, 47.692871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994114, 37.547977, 47.930294>,  <34.941948, 37.574329, 48.326000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994114, 37.547977, 47.930294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935060, 0.323562, -0.144814,
		0.329630, 0.943911, -0.019403,
		0.130413, -0.065878, -0.989269,
		35.033237, 37.528214, 47.633514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884018, 38.298672, 47.841671>,  <34.941948, 37.574329, 48.326000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884018, 38.298672, 47.841671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761921, 37.950409, 47.687382>,  <34.688663, 37.741451, 47.594807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761921, 37.950409, 47.687382>,  <34.884018, 38.298672, 47.841671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761921, 37.950409, 47.687382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949504, 0.309149, 0.053567,
		0.072609, 0.382600, -0.921056,
		-0.305239, -0.870657, -0.385727,
		34.670349, 37.689213, 47.571663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564079, 38.426975, 47.199963>,  <34.884018, 38.298672, 47.841671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564079, 38.426975, 47.199963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408760, 38.088360, 47.345623>,  <34.315571, 37.885193, 47.433018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408760, 38.088360, 47.345623>,  <34.564079, 38.426975, 47.199963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408760, 38.088360, 47.345623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891577, 0.445036, 0.083873,
		-0.233061, -0.292100, -0.927556,
		-0.388296, -0.846535, 0.364150,
		34.292271, 37.834400, 47.454868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868896, 38.450939, 47.028366>,  <34.564079, 38.426975, 47.199963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868896, 38.450939, 47.028366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836018, 38.135536, 47.272167>,  <33.816292, 37.946293, 47.418449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836018, 38.135536, 47.272167>,  <33.868896, 38.450939, 47.028366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836018, 38.135536, 47.272167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892314, 0.330607, 0.307369,
		-0.443870, -0.518602, -0.730775,
		-0.082197, -0.788512, 0.609502,
		33.811359, 37.898983, 47.455017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284431, 38.144745, 46.796127>,  <33.868896, 38.450939, 47.028366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284431, 38.144745, 46.796127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330860, 38.014008, 47.171295>,  <33.358719, 37.935566, 47.396397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330860, 38.014008, 47.171295>,  <33.284431, 38.144745, 46.796127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330860, 38.014008, 47.171295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968996, 0.170104, 0.179197,
		-0.218114, -0.929645, -0.296963,
		0.116075, -0.326842, 0.937924,
		33.365681, 37.915955, 47.452671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645401, 37.960979, 46.959660>,  <33.284431, 38.144745, 46.796127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645401, 37.960979, 46.959660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822895, 37.953266, 47.318039>,  <32.929394, 37.948639, 47.533066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822895, 37.953266, 47.318039>,  <32.645401, 37.960979, 46.959660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822895, 37.953266, 47.318039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895312, 0.033871, 0.444151,
		-0.038910, -0.999240, -0.002233,
		0.443737, -0.019281, 0.895949,
		32.956017, 37.947483, 47.586823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279064, 37.537895, 47.332741>,  <32.645401, 37.960979, 46.959660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279064, 37.537895, 47.332741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449532, 37.761349, 47.617359>,  <32.551811, 37.895420, 47.788132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449532, 37.761349, 47.617359>,  <32.279064, 37.537895, 47.332741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449532, 37.761349, 47.617359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882538, 0.083928, 0.462690,
		0.198757, -0.825155, 0.528787,
		0.426171, 0.558638, 0.711549,
		32.577381, 37.928940, 47.830826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028408, 37.229794, 48.065414>,  <32.279064, 37.537895, 47.332741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028408, 37.229794, 48.065414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158108, 37.604786, 48.115993>,  <32.235928, 37.829781, 48.146339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158108, 37.604786, 48.115993>,  <32.028408, 37.229794, 48.065414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158108, 37.604786, 48.115993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802079, 0.201593, 0.562164,
		0.501528, -0.283702, 0.817302,
		0.324250, 0.937482, 0.126447,
		32.255383, 37.886032, 48.153927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054054, 37.299839, 48.752583>,  <32.028408, 37.229794, 48.065414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054054, 37.299839, 48.752583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045090, 37.680145, 48.628948>,  <32.039711, 37.908329, 48.554768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.045090, 37.680145, 48.628948>,  <32.054054, 37.299839, 48.752583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045090, 37.680145, 48.628948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745157, 0.190225, 0.639183,
		0.666512, 0.244645, 0.704209,
		-0.022415, 0.950770, -0.309086,
		32.038364, 37.965378, 48.536221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107555, 37.761993, 49.385498>,  <32.054054, 37.299839, 48.752583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107555, 37.761993, 49.385498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.925697, 37.971954, 49.097672>,  <31.816584, 38.097931, 48.924976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.925697, 37.971954, 49.097672>,  <32.107555, 37.761993, 49.385498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925697, 37.971954, 49.097672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764819, 0.183961, 0.617423,
		0.456458, 0.831047, 0.317818,
		-0.454641, 0.524900, -0.719570,
		31.789305, 38.129425, 48.881802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859699, 38.392277, 49.712086>,  <32.107555, 37.761993, 49.385498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859699, 38.392277, 49.712086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646822, 38.381180, 49.373619>,  <31.519096, 38.374523, 49.170540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646822, 38.381180, 49.373619>,  <31.859699, 38.392277, 49.712086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646822, 38.381180, 49.373619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717605, 0.545118, 0.433462,
		0.449238, 0.837900, -0.310015,
		-0.532192, -0.027741, -0.846169,
		31.487164, 38.372856, 49.119770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774658, 39.003483, 49.574379>,  <31.859699, 38.392277, 49.712086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774658, 39.003483, 49.574379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472382, 38.805389, 49.402946>,  <31.291016, 38.686535, 49.300087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.472382, 38.805389, 49.402946>,  <31.774658, 39.003483, 49.574379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472382, 38.805389, 49.402946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654823, 0.559494, 0.508108,
		-0.011845, 0.664614, -0.747093,
		-0.755689, -0.495232, -0.428578,
		31.245674, 38.656818, 49.274372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340321, 39.504444, 49.383530>,  <31.774658, 39.003483, 49.574379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340321, 39.504444, 49.383530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107903, 39.178898, 49.382324>,  <30.968452, 38.983570, 49.381603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107903, 39.178898, 49.382324>,  <31.340321, 39.504444, 49.383530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107903, 39.178898, 49.382324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678465, 0.482326, 0.554118,
		-0.449525, 0.324010, -0.832433,
		-0.581044, -0.813867, -0.003012,
		30.933590, 38.934738, 49.381420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741781, 39.641956, 49.049881>,  <31.340321, 39.504444, 49.383530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741781, 39.641956, 49.049881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630018, 39.334457, 49.279999>,  <30.562960, 39.149960, 49.418068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630018, 39.334457, 49.279999>,  <30.741781, 39.641956, 49.049881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630018, 39.334457, 49.279999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609580, 0.604943, 0.512306,
		-0.741851, -0.207543, -0.637639,
		-0.279410, -0.768746, 0.575291,
		30.546196, 39.103832, 49.452587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080694, 39.679607, 49.241787>,  <30.741781, 39.641956, 49.049881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080694, 39.679607, 49.241787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200356, 39.437019, 49.536461>,  <30.272152, 39.291466, 49.713264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200356, 39.437019, 49.536461>,  <30.080694, 39.679607, 49.241787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200356, 39.437019, 49.536461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521848, 0.542366, 0.658417,
		-0.798863, -0.581403, -0.154236,
		0.299154, -0.606473, 0.736680,
		30.290102, 39.255077, 49.757465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520693, 39.792126, 49.680561>,  <30.080694, 39.679607, 49.241787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520693, 39.792126, 49.680561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803383, 39.619667, 49.904938>,  <29.972998, 39.516193, 50.039562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.803383, 39.619667, 49.904938>,  <29.520693, 39.792126, 49.680561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803383, 39.619667, 49.904938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413152, 0.392116, 0.821918,
		-0.574320, -0.812624, 0.098990,
		0.706726, -0.431146, 0.560938,
		30.015400, 39.490322, 50.073219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199299, 39.458225, 50.263283>,  <29.520693, 39.792126, 49.680561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199299, 39.458225, 50.263283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578279, 39.553856, 50.348305>,  <29.805668, 39.611233, 50.399319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578279, 39.553856, 50.348305>,  <29.199299, 39.458225, 50.263283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578279, 39.553856, 50.348305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313304, 0.559213, 0.767543,
		0.064633, -0.793804, 0.604729,
		0.947451, 0.239072, 0.212559,
		29.862514, 39.625576, 50.412071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241138, 39.310528, 50.980717>,  <29.199299, 39.458225, 50.263283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241138, 39.310528, 50.980717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550877, 39.552803, 50.907471>,  <29.736719, 39.698170, 50.863525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.550877, 39.552803, 50.907471>,  <29.241138, 39.310528, 50.980717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550877, 39.552803, 50.907471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095103, 0.397500, 0.912660,
		0.625579, -0.689297, 0.365405,
		0.774343, 0.605692, -0.183113,
		29.783180, 39.734512, 50.852535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847279, 39.207714, 51.528389>,  <29.241138, 39.310528, 50.980717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847279, 39.207714, 51.528389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834454, 39.579067, 51.380295>,  <29.826757, 39.801880, 51.291439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.834454, 39.579067, 51.380295>,  <29.847279, 39.207714, 51.528389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834454, 39.579067, 51.380295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070342, 0.367413, 0.927394,
		0.997007, 0.055780, 0.053523,
		-0.032065, 0.928384, -0.370237,
		29.824835, 39.857582, 51.269222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989655, 39.567772, 52.072205>,  <29.847279, 39.207714, 51.528389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989655, 39.567772, 52.072205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883867, 39.879021, 51.844318>,  <29.820395, 40.065769, 51.707584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883867, 39.879021, 51.844318>,  <29.989655, 39.567772, 52.072205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883867, 39.879021, 51.844318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292759, 0.498096, 0.816206,
		0.918884, 0.382651, 0.096072,
		-0.264469, 0.778124, -0.569718,
		29.804527, 40.112457, 51.673405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440992, 40.173866, 52.264118>,  <29.989655, 39.567772, 52.072205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440992, 40.173866, 52.264118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.090345, 40.300823, 52.119450>,  <29.879957, 40.376999, 52.032650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.090345, 40.300823, 52.119450>,  <30.440992, 40.173866, 52.264118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090345, 40.300823, 52.119450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186487, 0.468785, 0.863402,
		0.443582, 0.824320, -0.351755,
		-0.876617, 0.317392, -0.361669,
		29.827360, 40.396042, 52.010948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409290, 40.796314, 52.453548>,  <30.440992, 40.173866, 52.264118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409290, 40.796314, 52.453548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023951, 40.739170, 52.362728>,  <29.792747, 40.704884, 52.308235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023951, 40.739170, 52.362728>,  <30.409290, 40.796314, 52.453548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023951, 40.739170, 52.362728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265548, 0.627848, 0.731636,
		0.038029, 0.765112, -0.642773,
		-0.963347, -0.142864, -0.227051,
		29.734947, 40.696312, 52.294613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007044, 41.475258, 52.517643>,  <30.409290, 40.796314, 52.453548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007044, 41.475258, 52.517643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746311, 41.175262, 52.562603>,  <29.589870, 40.995266, 52.589581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746311, 41.175262, 52.562603>,  <30.007044, 41.475258, 52.517643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746311, 41.175262, 52.562603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342675, 0.423504, 0.838581,
		-0.676525, 0.508099, -0.533056,
		-0.651834, -0.749986, 0.112399,
		29.550760, 40.950268, 52.596321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400625, 41.784180, 52.673550>,  <30.007044, 41.475258, 52.517643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400625, 41.784180, 52.673550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296341, 41.411289, 52.773930>,  <29.233770, 41.187553, 52.834160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.296341, 41.411289, 52.773930>,  <29.400625, 41.784180, 52.673550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296341, 41.411289, 52.773930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388574, 0.339285, 0.856677,
		-0.883764, 0.125833, -0.450696,
		-0.260713, -0.932230, 0.250952,
		29.218126, 41.131618, 52.849216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665110, 41.722473, 52.767902>,  <29.400625, 41.784180, 52.673550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665110, 41.722473, 52.767902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862280, 41.459064, 52.995365>,  <28.980581, 41.301018, 53.131844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862280, 41.459064, 52.995365>,  <28.665110, 41.722473, 52.767902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862280, 41.459064, 52.995365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545038, 0.275746, 0.791769,
		-0.678203, -0.700223, -0.222998,
		0.492925, -0.658522, 0.568660,
		29.010157, 41.261509, 53.165962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345392, 41.865433, 53.286217>,  <28.665110, 41.722473, 52.767902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345392, 41.865433, 53.286217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.646423, 41.630596, 53.405518>,  <28.827042, 41.489697, 53.477097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.646423, 41.630596, 53.405518>,  <28.345392, 41.865433, 53.286217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646423, 41.630596, 53.405518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137238, 0.303141, 0.943012,
		-0.644042, -0.750622, 0.147567,
		0.752579, -0.587088, 0.298249,
		28.872196, 41.454472, 53.494991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110975, 41.519466, 53.797791>,  <28.345392, 41.865433, 53.286217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110975, 41.519466, 53.797791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505798, 41.521885, 53.861897>,  <28.742691, 41.523338, 53.900360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505798, 41.521885, 53.861897>,  <28.110975, 41.519466, 53.797791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505798, 41.521885, 53.861897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150353, 0.382671, 0.911568,
		-0.055816, -0.923865, 0.378627,
		0.987056, 0.006048, 0.160265,
		28.801914, 41.523701, 53.909977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299519, 41.135513, 54.436188>,  <28.110975, 41.519466, 53.797791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299519, 41.135513, 54.436188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587282, 41.405552, 54.370831>,  <28.759939, 41.567574, 54.331615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587282, 41.405552, 54.370831>,  <28.299519, 41.135513, 54.436188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587282, 41.405552, 54.370831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120458, 0.352932, 0.927862,
		0.684063, -0.647830, 0.335223,
		0.719408, 0.675097, -0.163391,
		28.803104, 41.608082, 54.321812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826488, 41.048824, 54.992233>,  <28.299519, 41.135513, 54.436188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826488, 41.048824, 54.992233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853090, 41.417419, 54.839165>,  <28.869051, 41.638577, 54.747322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853090, 41.417419, 54.839165>,  <28.826488, 41.048824, 54.992233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853090, 41.417419, 54.839165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172732, 0.388366, 0.905171,
		0.982721, 0.005903, 0.184998,
		0.066504, 0.921486, -0.382675,
		28.873041, 41.693867, 54.724361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270748, 41.374226, 55.419075>,  <28.826488, 41.048824, 54.992233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270748, 41.374226, 55.419075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072016, 41.665699, 55.230534>,  <28.952776, 41.840584, 55.117409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.072016, 41.665699, 55.230534>,  <29.270748, 41.374226, 55.419075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072016, 41.665699, 55.230534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175343, 0.447646, 0.876851,
		0.849949, 0.518296, -0.094634,
		-0.496831, 0.728685, -0.471356,
		28.922966, 41.884304, 55.089127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302032, 41.953796, 55.845406>,  <29.270748, 41.374226, 55.419075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302032, 41.953796, 55.845406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.996696, 42.039623, 55.601677>,  <28.813494, 42.091122, 55.455441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.996696, 42.039623, 55.601677>,  <29.302032, 41.953796, 55.845406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996696, 42.039623, 55.601677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509981, 0.378798, 0.772289,
		0.396519, 0.900261, -0.179726,
		-0.763342, 0.214571, -0.609318,
		28.767694, 42.103996, 55.418880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095604, 42.554638, 56.090054>,  <29.302032, 41.953796, 55.845406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095604, 42.554638, 56.090054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782486, 42.473095, 55.854877>,  <28.594614, 42.424171, 55.713772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.782486, 42.473095, 55.854877>,  <29.095604, 42.554638, 56.090054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782486, 42.473095, 55.854877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615001, 0.397518, 0.680995,
		0.094893, 0.894664, -0.436545,
		-0.782796, -0.203854, -0.587941,
		28.547647, 42.411938, 55.678493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832941, 43.194798, 56.051846>,  <29.095604, 42.554638, 56.090054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832941, 43.194798, 56.051846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571188, 42.898788, 55.989689>,  <28.414137, 42.721184, 55.952393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571188, 42.898788, 55.989689>,  <28.832941, 43.194798, 56.051846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571188, 42.898788, 55.989689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661313, 0.460432, 0.592172,
		-0.366674, 0.490271, -0.790686,
		-0.654382, -0.740025, -0.155394,
		28.374874, 42.676781, 55.943069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098391, 43.523003, 56.059483>,  <28.832941, 43.194798, 56.051846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098391, 43.523003, 56.059483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.037273, 43.132641, 56.121792>,  <28.000603, 42.898422, 56.159176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.037273, 43.132641, 56.121792>,  <28.098391, 43.523003, 56.059483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037273, 43.132641, 56.121792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593657, 0.216652, 0.775005,
		-0.790080, 0.025938, -0.612455,
		-0.152792, -0.975904, 0.155774,
		27.991436, 42.839870, 56.168526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404678, 43.502518, 56.318623>,  <28.098391, 43.523003, 56.059483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404678, 43.502518, 56.318623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.572021, 43.156815, 56.430355>,  <27.672426, 42.949390, 56.497395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.572021, 43.156815, 56.430355>,  <27.404678, 43.502518, 56.318623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572021, 43.156815, 56.430355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422689, 0.086955, 0.902094,
		-0.803935, -0.495469, -0.328936,
		0.418356, -0.864263, 0.279336,
		27.697529, 42.897537, 56.514156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852419, 43.024628, 56.557430>,  <27.404678, 43.502518, 56.318623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852419, 43.024628, 56.557430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181440, 42.882820, 56.735294>,  <27.378853, 42.797737, 56.842014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.181440, 42.882820, 56.735294>,  <26.852419, 43.024628, 56.557430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181440, 42.882820, 56.735294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462902, 0.036809, 0.885645,
		-0.330343, -0.934325, -0.133829,
		0.822554, -0.354516, 0.444661,
		27.428207, 42.776466, 56.868694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662415, 42.502094, 57.044720>,  <26.852419, 43.024628, 56.557430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662415, 42.502094, 57.044720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.037386, 42.575741, 57.162930>,  <27.262369, 42.619926, 57.233856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.037386, 42.575741, 57.162930>,  <26.662415, 42.502094, 57.044720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037386, 42.575741, 57.162930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274058, -0.133360, 0.952422,
		0.214765, -0.973816, -0.074557,
		0.937426, 0.184114, 0.295523,
		27.318613, 42.630974, 57.251587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932283, 41.898090, 57.414452>,  <26.662415, 42.502094, 57.044720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932283, 41.898090, 57.414452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.102642, 42.245914, 57.514431>,  <27.204857, 42.454609, 57.574417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.102642, 42.245914, 57.514431>,  <26.932283, 41.898090, 57.414452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102642, 42.245914, 57.514431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151496, -0.203814, 0.967217,
		0.891999, -0.449798, 0.044932,
		0.425895, 0.869564, 0.249945,
		27.230410, 42.506783, 57.589413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385014, 41.533089, 57.729496>,  <26.932283, 41.898090, 57.414452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385014, 41.533089, 57.729496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.059006, 41.302284, 57.750660>,  <25.863401, 41.163803, 57.763359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.059006, 41.302284, 57.750660>,  <26.385014, 41.533089, 57.729496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059006, 41.302284, 57.750660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213421, -0.383831, -0.898401,
		0.538696, -0.720924, 0.435976,
		-0.815020, -0.577012, 0.052908,
		25.814499, 41.129181, 57.766533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591837, 40.863537, 57.529373>,  <26.385014, 41.533089, 57.729496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591837, 40.863537, 57.529373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.196276, 40.810547, 57.502483>,  <25.958939, 40.778751, 57.486347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.196276, 40.810547, 57.502483>,  <26.591837, 40.863537, 57.529373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196276, 40.810547, 57.502483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125660, -0.504546, -0.854191,
		0.079240, -0.853161, 0.515594,
		-0.988904, -0.132476, -0.067228,
		25.899605, 40.770805, 57.482315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552816, 40.190628, 57.319786>,  <26.591837, 40.863537, 57.529373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552816, 40.190628, 57.319786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.202950, 40.348682, 57.207481>,  <25.993029, 40.443516, 57.140099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.202950, 40.348682, 57.207481>,  <26.552816, 40.190628, 57.319786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202950, 40.348682, 57.207481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086072, -0.443401, -0.892181,
		-0.477017, -0.804528, 0.353820,
		-0.874669, 0.395132, -0.280758,
		25.940548, 40.467220, 57.123253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192265, 39.694286, 56.919338>,  <26.552816, 40.190628, 57.319786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192265, 39.694286, 56.919338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.005320, 40.021072, 56.784195>,  <25.893152, 40.217144, 56.703110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.005320, 40.021072, 56.784195>,  <26.192265, 39.694286, 56.919338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005320, 40.021072, 56.784195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021879, -0.371353, -0.928234,
		-0.883796, -0.441211, 0.155681,
		-0.467360, 0.816963, -0.337854,
		25.865112, 40.266163, 56.682838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034824, 39.505760, 56.294701>,  <26.192265, 39.694286, 56.919338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034824, 39.505760, 56.294701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.937586, 39.893501, 56.280521>,  <25.879244, 40.126148, 56.272015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.937586, 39.893501, 56.280521>,  <26.034824, 39.505760, 56.294701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937586, 39.893501, 56.280521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121704, -0.066737, -0.990321,
		-0.962337, -0.236428, 0.134197,
		-0.243095, 0.969355, -0.035449,
		25.864656, 40.184307, 56.269886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.363085, 39.599113, 55.948757>,  <26.034824, 39.505760, 56.294701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.363085, 39.599113, 55.948757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.579166, 39.930679, 55.890671>,  <25.708815, 40.129620, 55.855820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.579166, 39.930679, 55.890671>,  <25.363085, 39.599113, 55.948757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579166, 39.930679, 55.890671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134136, -0.085545, -0.987264,
		-0.830776, 0.552802, 0.064975,
		0.540203, 0.828910, -0.145220,
		25.741228, 40.179352, 55.847103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994637, 39.977283, 55.496193>,  <25.363085, 39.599113, 55.948757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994637, 39.977283, 55.496193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.370592, 40.110615, 55.466530>,  <25.596165, 40.190613, 55.448730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.370592, 40.110615, 55.466530>,  <24.994637, 39.977283, 55.496193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370592, 40.110615, 55.466530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033236, -0.126837, -0.991367,
		-0.339858, 0.934239, -0.108134,
		0.939889, 0.333330, -0.074157,
		25.652559, 40.210613, 55.444283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003723, 40.448288, 54.903553>,  <24.994637, 39.977283, 55.496193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003723, 40.448288, 54.903553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.379230, 40.329914, 54.974140>,  <25.604534, 40.258888, 55.016491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.379230, 40.329914, 54.974140>,  <25.003723, 40.448288, 54.903553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379230, 40.329914, 54.974140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135926, -0.152534, -0.978906,
		0.316610, 0.942950, -0.102968,
		0.938766, -0.295936, 0.176465,
		25.660860, 40.241135, 55.027081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391727, 40.764961, 54.391258>,  <25.003723, 40.448288, 54.903553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391727, 40.764961, 54.391258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.640390, 40.479607, 54.520638>,  <25.789589, 40.308395, 54.598267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.640390, 40.479607, 54.520638>,  <25.391727, 40.764961, 54.391258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640390, 40.479607, 54.520638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244961, -0.215159, -0.945357,
		0.743999, 0.666922, 0.040997,
		0.621659, -0.713387, 0.323448,
		25.826889, 40.265591, 54.617672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107485, 40.940186, 54.160225>,  <25.391727, 40.764961, 54.391258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107485, 40.940186, 54.160225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.111094, 40.545395, 54.224464>,  <26.113258, 40.308521, 54.263008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.111094, 40.545395, 54.224464>,  <26.107485, 40.940186, 54.160225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111094, 40.545395, 54.224464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304649, -0.150260, -0.940538,
		0.952422, 0.057412, 0.299327,
		0.009022, -0.986978, 0.160601,
		26.113800, 40.249302, 54.272644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549721, 40.720486, 53.701370>,  <26.107485, 40.940186, 54.160225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549721, 40.720486, 53.701370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.441376, 40.358513, 53.832661>,  <26.376369, 40.141331, 53.911434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.441376, 40.358513, 53.832661>,  <26.549721, 40.720486, 53.701370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441376, 40.358513, 53.832661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461891, -0.421334, -0.780471,
		0.844566, -0.059794, 0.532103,
		-0.270861, -0.904932, 0.328226,
		26.360117, 40.087032, 53.931129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206875, 40.341682, 53.759048>,  <26.549721, 40.720486, 53.701370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206875, 40.341682, 53.759048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.916393, 40.071609, 53.707275>,  <26.742104, 39.909565, 53.676212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.916393, 40.071609, 53.707275>,  <27.206875, 40.341682, 53.759048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916393, 40.071609, 53.707275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535163, -0.437021, -0.722920,
		0.431542, -0.594252, 0.678701,
		-0.726203, -0.675186, -0.129429,
		26.698532, 39.869053, 53.668446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537495, 39.688137, 53.624638>,  <27.206875, 40.341682, 53.759048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537495, 39.688137, 53.624638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.168852, 39.637020, 53.478046>,  <26.947666, 39.606350, 53.390091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.168852, 39.637020, 53.478046>,  <27.537495, 39.688137, 53.624638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168852, 39.637020, 53.478046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387462, -0.247842, -0.887946,
		0.022643, -0.960335, 0.277928,
		-0.921608, -0.127792, -0.366481,
		26.892370, 39.598682, 53.368103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508242, 38.998653, 53.310986>,  <27.537495, 39.688137, 53.624638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508242, 38.998653, 53.310986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.201019, 39.197300, 53.149261>,  <27.016685, 39.316486, 53.052227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.201019, 39.197300, 53.149261>,  <27.508242, 38.998653, 53.310986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201019, 39.197300, 53.149261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200380, -0.413274, -0.888286,
		-0.608226, -0.763268, 0.217905,
		-0.768055, 0.496615, -0.404308,
		26.970602, 39.346283, 53.027969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057264, 38.508720, 53.012920>,  <27.508242, 38.998653, 53.310986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057264, 38.508720, 53.012920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.980452, 38.858452, 52.834625>,  <26.934364, 39.068291, 52.727650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.980452, 38.858452, 52.834625>,  <27.057264, 38.508720, 53.012920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980452, 38.858452, 52.834625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176119, -0.416113, -0.892094,
		-0.965456, -0.249814, -0.074078,
		-0.192033, 0.874324, -0.445736,
		26.922842, 39.120750, 52.700905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630705, 38.329899, 52.439140>,  <27.057264, 38.508720, 53.012920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630705, 38.329899, 52.439140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763557, 38.699116, 52.361500>,  <26.843269, 38.920647, 52.314915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.763557, 38.699116, 52.361500>,  <26.630705, 38.329899, 52.439140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763557, 38.699116, 52.361500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401981, -0.324674, -0.856153,
		-0.853287, 0.206333, -0.478881,
		0.332133, 0.923046, -0.194098,
		26.863197, 38.976028, 52.303272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406218, 38.456291, 51.707561>,  <26.630705, 38.329899, 52.439140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406218, 38.456291, 51.707561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.721979, 38.687008, 51.791618>,  <26.911436, 38.825436, 51.842052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.721979, 38.687008, 51.791618>,  <26.406218, 38.456291, 51.707561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721979, 38.687008, 51.791618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466449, -0.341034, -0.816163,
		-0.399086, 0.742302, -0.538255,
		0.789402, 0.576787, 0.210144,
		26.958799, 38.860043, 51.854660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650591, 38.764614, 51.027565>,  <26.406218, 38.456291, 51.707561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650591, 38.764614, 51.027565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.968018, 38.788567, 51.269779>,  <27.158474, 38.802937, 51.415108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.968018, 38.788567, 51.269779>,  <26.650591, 38.764614, 51.027565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968018, 38.788567, 51.269779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573304, -0.407048, -0.711079,
		0.203904, 0.911442, -0.357346,
		0.793565, 0.059876, 0.605532,
		27.206087, 38.806530, 51.451439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095427, 39.029770, 50.560547>,  <26.650591, 38.764614, 51.027565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095427, 39.029770, 50.560547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327805, 38.907089, 50.862125>,  <27.467232, 38.833481, 51.043072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327805, 38.907089, 50.862125>,  <27.095427, 39.029770, 50.560547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327805, 38.907089, 50.862125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619955, -0.433470, -0.654033,
		0.527407, 0.847371, -0.061681,
		0.580945, -0.306702, 0.753947,
		27.502089, 38.815079, 51.088310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828911, 39.284981, 50.449638>,  <27.095427, 39.029770, 50.560547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828911, 39.284981, 50.449638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.875731, 38.975426, 50.698605>,  <27.903822, 38.789692, 50.847984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.875731, 38.975426, 50.698605>,  <27.828911, 39.284981, 50.449638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875731, 38.975426, 50.698605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692184, -0.385847, -0.609921,
		0.712167, 0.502214, 0.490510,
		0.117049, -0.773889, 0.622411,
		27.910845, 38.743259, 50.885326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572369, 39.090706, 50.383930>,  <27.828911, 39.284981, 50.449638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572369, 39.090706, 50.383930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395456, 38.775757, 50.555710>,  <28.289309, 38.586788, 50.658779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395456, 38.775757, 50.555710>,  <28.572369, 39.090706, 50.383930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395456, 38.775757, 50.555710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640593, -0.612457, -0.463181,
		0.627717, 0.070248, 0.775265,
		-0.442279, -0.787376, 0.429450,
		28.262772, 38.539543, 50.684544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188046, 38.644230, 50.473099>,  <28.572369, 39.090706, 50.383930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188046, 38.644230, 50.473099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.865873, 38.411507, 50.518322>,  <28.672569, 38.271873, 50.545456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.865873, 38.411507, 50.518322>,  <29.188046, 38.644230, 50.473099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865873, 38.411507, 50.518322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496414, -0.766429, -0.407626,
		0.323807, -0.272194, 0.906123,
		-0.805433, -0.581805, 0.113054,
		28.624243, 38.236965, 50.552238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435530, 37.976425, 50.798607>,  <29.188046, 38.644230, 50.473099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435530, 37.976425, 50.798607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097715, 37.893471, 50.601124>,  <28.895027, 37.843697, 50.482635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.097715, 37.893471, 50.601124>,  <29.435530, 37.976425, 50.798607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097715, 37.893471, 50.601124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500736, -0.632597, -0.590834,
		-0.189788, -0.746199, 0.638097,
		-0.844538, -0.207386, -0.493708,
		28.844355, 37.831257, 50.453011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336987, 37.237709, 50.713409>,  <29.435530, 37.976425, 50.798607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336987, 37.237709, 50.713409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.099335, 37.378662, 50.424179>,  <28.956743, 37.463234, 50.250641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.099335, 37.378662, 50.424179>,  <29.336987, 37.237709, 50.713409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099335, 37.378662, 50.424179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308559, -0.730322, -0.609444,
		-0.742841, -0.585196, 0.325167,
		-0.594121, 0.352387, -0.723080,
		28.921095, 37.484375, 50.207256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022560, 36.649464, 50.367733>,  <29.336987, 37.237709, 50.713409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022560, 36.649464, 50.367733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.000729, 36.939732, 50.093384>,  <28.987631, 37.113892, 49.928772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.000729, 36.939732, 50.093384>,  <29.022560, 36.649464, 50.367733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000729, 36.939732, 50.093384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203430, -0.664411, -0.719149,
		-0.977567, -0.178777, -0.111361,
		-0.054578, 0.725670, -0.685875,
		28.984356, 37.157433, 49.887623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567556, 36.396530, 49.968250>,  <29.022560, 36.649464, 50.367733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567556, 36.396530, 49.968250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.764532, 36.664127, 49.745556>,  <28.882717, 36.824684, 49.611938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.764532, 36.664127, 49.745556>,  <28.567556, 36.396530, 49.968250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764532, 36.664127, 49.745556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096440, -0.677673, -0.729012,
		-0.864988, 0.305301, -0.398229,
		0.492438, 0.668992, -0.556736,
		28.912264, 36.864826, 49.578533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286724, 36.411911, 49.253365>,  <28.567556, 36.396530, 49.968250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286724, 36.411911, 49.253365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654476, 36.568794, 49.241295>,  <28.875128, 36.662926, 49.234055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654476, 36.568794, 49.241295>,  <28.286724, 36.411911, 49.253365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654476, 36.568794, 49.241295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262910, -0.669724, -0.694512,
		-0.292602, 0.630589, -0.718848,
		0.919381, 0.392208, -0.030175,
		28.930290, 36.686459, 49.232243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452356, 36.370407, 48.519615>,  <28.286724, 36.411911, 49.253365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452356, 36.370407, 48.519615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805353, 36.421528, 48.700668>,  <29.017151, 36.452198, 48.809299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805353, 36.421528, 48.700668>,  <28.452356, 36.370407, 48.519615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805353, 36.421528, 48.700668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439433, -0.567089, -0.696641,
		0.167652, 0.813681, -0.556611,
		0.882492, 0.127800, 0.452632,
		29.070101, 36.459869, 48.836456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940868, 36.409058, 48.038132>,  <28.452356, 36.370407, 48.519615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940868, 36.409058, 48.038132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168686, 36.303810, 48.349617>,  <29.305376, 36.240662, 48.536507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168686, 36.303810, 48.349617>,  <28.940868, 36.409058, 48.038132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168686, 36.303810, 48.349617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442218, -0.700499, -0.560129,
		0.692865, 0.663378, -0.282610,
		0.569545, -0.263119, 0.778709,
		29.339550, 36.224876, 48.583229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557028, 36.120457, 47.764717>,  <28.940868, 36.409058, 48.038132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557028, 36.120457, 47.764717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617970, 35.985767, 48.136395>,  <29.654535, 35.904953, 48.359402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617970, 35.985767, 48.136395>,  <29.557028, 36.120457, 47.764717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617970, 35.985767, 48.136395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554678, -0.749009, -0.362377,
		0.817997, 0.570615, 0.072659,
		0.152355, -0.336725, 0.929195,
		29.663675, 35.884750, 48.415154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283037, 35.975651, 47.811657>,  <29.557028, 36.120457, 47.764717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283037, 35.975651, 47.811657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.095560, 35.759323, 48.091038>,  <29.983074, 35.629528, 48.258667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.095560, 35.759323, 48.091038>,  <30.283037, 35.975651, 47.811657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095560, 35.759323, 48.091038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521398, -0.807627, -0.275470,
		0.713071, 0.235063, 0.660511,
		-0.468694, -0.540819, 0.698457,
		29.954952, 35.597076, 48.300575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719433, 35.468441, 48.087082>,  <30.283037, 35.975651, 47.811657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719433, 35.468441, 48.087082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382000, 35.290192, 48.206944>,  <30.179541, 35.183243, 48.278862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382000, 35.290192, 48.206944>,  <30.719433, 35.468441, 48.087082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382000, 35.290192, 48.206944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447024, -0.891937, -0.067957,
		0.297557, 0.076626, 0.951624,
		-0.843581, -0.445620, 0.299656,
		30.128925, 35.156506, 48.296841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978142, 35.049591, 48.501694>,  <30.719433, 35.468441, 48.087082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978142, 35.049591, 48.501694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604218, 34.923920, 48.435459>,  <30.379862, 34.848518, 48.395718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604218, 34.923920, 48.435459>,  <30.978142, 35.049591, 48.501694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604218, 34.923920, 48.435459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306023, -0.949196, 0.073321,
		-0.180209, 0.017868, 0.983466,
		-0.934812, -0.314176, -0.165586,
		30.323774, 34.829666, 48.385784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875847, 34.464676, 48.878693>,  <30.978142, 35.049591, 48.501694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875847, 34.464676, 48.878693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603342, 34.395504, 48.594166>,  <30.439838, 34.354000, 48.423450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603342, 34.395504, 48.594166>,  <30.875847, 34.464676, 48.878693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603342, 34.395504, 48.594166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263236, -0.964571, -0.017611,
		-0.683072, -0.199242, 0.702649,
		-0.681264, -0.172933, -0.711319,
		30.398964, 34.343624, 48.380772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661434, 33.820808, 48.963203>,  <30.875847, 34.464676, 48.878693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661434, 33.820808, 48.963203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526457, 33.874683, 48.590538>,  <30.445471, 33.907009, 48.366940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526457, 33.874683, 48.590538>,  <30.661434, 33.820808, 48.963203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526457, 33.874683, 48.590538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338964, -0.905934, -0.253744,
		-0.878199, -0.401424, 0.260048,
		-0.337445, 0.134691, -0.931659,
		30.425224, 33.915092, 48.311039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365635, 33.184303, 48.812180>,  <30.661434, 33.820808, 48.963203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365635, 33.184303, 48.812180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465324, 33.367458, 48.470833>,  <30.525137, 33.477352, 48.266026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.465324, 33.367458, 48.470833>,  <30.365635, 33.184303, 48.812180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465324, 33.367458, 48.470833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398112, -0.851710, -0.340730,
		-0.882834, -0.254817, -0.394554,
		0.249222, 0.457885, -0.853364,
		30.540091, 33.504826, 48.214825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127773, 32.765820, 48.288284>,  <30.365635, 33.184303, 48.812180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127773, 32.765820, 48.288284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.432261, 32.971355, 48.130035>,  <30.614952, 33.094677, 48.035084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.432261, 32.971355, 48.130035>,  <30.127773, 32.765820, 48.288284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432261, 32.971355, 48.130035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310608, -0.824425, -0.473124,
		-0.569273, 0.237265, -0.787168,
		0.761217, 0.513838, -0.395626,
		30.660625, 33.125507, 48.011349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083019, 32.644424, 47.568714>,  <30.127773, 32.765820, 48.288284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083019, 32.644424, 47.568714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454241, 32.772552, 47.644722>,  <30.676973, 32.849430, 47.690327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454241, 32.772552, 47.644722>,  <30.083019, 32.644424, 47.568714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454241, 32.772552, 47.644722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363425, -0.667251, -0.650153,
		-0.081464, 0.672437, -0.735657,
		0.928055, 0.320320, 0.190024,
		30.732656, 32.868649, 47.701729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401596, 32.719093, 46.941647>,  <30.083019, 32.644424, 47.568714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401596, 32.719093, 46.941647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689892, 32.659798, 47.212513>,  <30.862869, 32.624218, 47.375034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689892, 32.659798, 47.212513>,  <30.401596, 32.719093, 46.941647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689892, 32.659798, 47.212513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433564, -0.665816, -0.607216,
		0.540885, 0.731241, -0.415609,
		0.720740, -0.148241, 0.677169,
		30.906115, 32.615326, 47.415665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976997, 32.448448, 46.453445>,  <30.401596, 32.719093, 46.941647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976997, 32.448448, 46.453445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099941, 32.376259, 46.827175>,  <31.173708, 32.332943, 47.051411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099941, 32.376259, 46.827175>,  <30.976997, 32.448448, 46.453445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099941, 32.376259, 46.827175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639466, -0.687942, -0.343248,
		0.704708, 0.702968, -0.096037,
		0.307360, -0.180477, 0.934322,
		31.192150, 32.322117, 47.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744495, 32.442799, 46.444859>,  <30.976997, 32.448448, 46.453445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744495, 32.442799, 46.444859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.572935, 32.225052, 46.733223>,  <31.469999, 32.094402, 46.906242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.572935, 32.225052, 46.733223>,  <31.744495, 32.442799, 46.444859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572935, 32.225052, 46.733223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615373, -0.760298, -0.207995,
		0.661332, 0.354418, 0.661081,
		-0.428902, -0.544366, 0.720909,
		31.444265, 32.061741, 46.949497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192211, 32.349350, 47.012825>,  <31.744495, 32.442799, 46.444859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192211, 32.349350, 47.012825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915133, 32.061481, 46.993832>,  <31.748886, 31.888762, 46.982437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.915133, 32.061481, 46.993832>,  <32.192211, 32.349350, 47.012825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915133, 32.061481, 46.993832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691876, -0.644466, -0.325532,
		0.203675, -0.258344, 0.944338,
		-0.692694, -0.719667, -0.047480,
		31.707325, 31.845581, 46.979588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289452, 31.874712, 47.516083>,  <32.192211, 32.349350, 47.012825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289452, 31.874712, 47.516083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152824, 31.700809, 47.182781>,  <32.070847, 31.596468, 46.982800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.152824, 31.700809, 47.182781>,  <32.289452, 31.874712, 47.516083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152824, 31.700809, 47.182781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824898, -0.563559, -0.044102,
		-0.450416, -0.702417, 0.551122,
		-0.341568, -0.434755, -0.833258,
		32.050354, 31.570383, 46.932804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002258, 31.269287, 47.703632>,  <32.289452, 31.874712, 47.516083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002258, 31.269287, 47.703632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219204, 31.332680, 47.373608>,  <32.349373, 31.370716, 47.175594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.219204, 31.332680, 47.373608>,  <32.002258, 31.269287, 47.703632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219204, 31.332680, 47.373608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838472, -0.164008, 0.519679,
		-0.052956, -0.973645, -0.221835,
		0.542366, 0.158482, -0.825059,
		32.381912, 31.380224, 47.126091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561459, 30.785896, 47.432678>,  <32.002258, 31.269287, 47.703632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561459, 30.785896, 47.432678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638622, 31.170576, 47.354786>,  <32.684921, 31.401384, 47.308052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.638622, 31.170576, 47.354786>,  <32.561459, 30.785896, 47.432678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638622, 31.170576, 47.354786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821250, -0.049648, 0.568405,
		0.536967, -0.269571, -0.799374,
		0.192913, 0.961700, -0.194726,
		32.696495, 31.459085, 47.296368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257137, 30.913754, 47.056122>,  <32.561459, 30.785896, 47.432678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257137, 30.913754, 47.056122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141865, 31.211357, 47.297253>,  <33.072701, 31.389919, 47.441933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141865, 31.211357, 47.297253>,  <33.257137, 30.913754, 47.056122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141865, 31.211357, 47.297253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850602, -0.090249, 0.518008,
		0.439807, 0.662047, -0.606847,
		-0.288179, 0.744008, 0.602831,
		33.055412, 31.434559, 47.478104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837826, 31.357439, 47.021877>,  <33.257137, 30.913754, 47.056122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837826, 31.357439, 47.021877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600739, 31.329035, 47.342789>,  <33.458485, 31.311993, 47.535336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600739, 31.329035, 47.342789>,  <33.837826, 31.357439, 47.021877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600739, 31.329035, 47.342789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699733, -0.538652, 0.469285,
		0.398823, 0.839531, 0.368956,
		-0.592718, -0.071009, 0.802274,
		33.422924, 31.307732, 47.583469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394451, 31.729263, 47.256817>,  <33.837826, 31.357439, 47.021877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394451, 31.729263, 47.256817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400829, 31.868458, 47.631763>,  <34.404655, 31.951975, 47.856731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400829, 31.868458, 47.631763>,  <34.394451, 31.729263, 47.256817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400829, 31.868458, 47.631763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954662, 0.273416, -0.117746,
		-0.297265, 0.896744, -0.327846,
		0.015950, 0.347984, 0.937365,
		34.405613, 31.972853, 47.912971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981735, 32.117451, 47.325993>,  <34.394451, 31.729263, 47.256817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981735, 32.117451, 47.325993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860706, 32.152401, 47.705639>,  <34.788090, 32.173370, 47.933426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860706, 32.152401, 47.705639>,  <34.981735, 32.117451, 47.325993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860706, 32.152401, 47.705639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904971, 0.338854, 0.257305,
		-0.299127, 0.936773, -0.181604,
		-0.302574, 0.087379, 0.949112,
		34.769936, 32.178616, 47.990372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079201, 32.846340, 47.527714>,  <34.981735, 32.117451, 47.325993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079201, 32.846340, 47.527714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054600, 32.628426, 47.862240>,  <35.039837, 32.497677, 48.062954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.054600, 32.628426, 47.862240>,  <35.079201, 32.846340, 47.527714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054600, 32.628426, 47.862240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847546, 0.414028, 0.332035,
		-0.527146, 0.729239, 0.436265,
		-0.061507, -0.544786, 0.836317,
		35.036148, 32.464989, 48.113136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216496, 33.197311, 48.146915>,  <35.079201, 32.846340, 47.527714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216496, 33.197311, 48.146915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304577, 32.826603, 48.268642>,  <35.357426, 32.604179, 48.341679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.304577, 32.826603, 48.268642>,  <35.216496, 33.197311, 48.146915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304577, 32.826603, 48.268642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878633, 0.323955, 0.350795,
		-0.423691, 0.190134, 0.885627,
		0.220205, -0.926770, 0.304315,
		35.370640, 32.548573, 48.359936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596104, 33.421619, 48.639954>,  <35.216496, 33.197311, 48.146915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596104, 33.421619, 48.639954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668087, 33.032116, 48.584232>,  <35.711277, 32.798412, 48.550800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668087, 33.032116, 48.584232>,  <35.596104, 33.421619, 48.639954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668087, 33.032116, 48.584232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966895, 0.149056, 0.207116,
		-0.180918, -0.171963, 0.968348,
		0.179955, -0.973761, -0.139303,
		35.722073, 32.739986, 48.542442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005924, 33.125809, 49.118580>,  <35.596104, 33.421619, 48.639954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005924, 33.125809, 49.118580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084991, 32.877277, 48.815296>,  <36.132431, 32.728161, 48.633327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084991, 32.877277, 48.815296>,  <36.005924, 33.125809, 49.118580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084991, 32.877277, 48.815296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975214, 0.046185, 0.216389,
		-0.099430, -0.782190, 0.615056,
		0.197664, -0.621327, -0.758210,
		36.144291, 32.690880, 48.587833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639935, 32.999516, 49.362244>,  <36.005924, 33.125809, 49.118580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639935, 32.999516, 49.362244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618973, 32.837578, 48.997089>,  <36.606396, 32.740417, 48.777996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618973, 32.837578, 48.997089>,  <36.639935, 32.999516, 49.362244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618973, 32.837578, 48.997089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990760, -0.135587, 0.003254,
		-0.125092, -0.904278, 0.408206,
		-0.052404, -0.404842, -0.912884,
		36.603252, 32.716125, 48.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928829, 32.390213, 49.458870>,  <36.639935, 32.999516, 49.362244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928829, 32.390213, 49.458870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959522, 32.487148, 49.072010>,  <36.977940, 32.545307, 48.839893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.959522, 32.487148, 49.072010>,  <36.928829, 32.390213, 49.458870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959522, 32.487148, 49.072010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996219, 0.020983, 0.084298,
		0.040723, -0.969966, -0.239808,
		0.076734, 0.242335, -0.967154,
		36.982544, 32.559849, 48.781864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583923, 32.108360, 49.270241>,  <36.928829, 32.390213, 49.458870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583923, 32.108360, 49.270241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512104, 32.365234, 48.972149>,  <37.469013, 32.519360, 48.793293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512104, 32.365234, 48.972149>,  <37.583923, 32.108360, 49.270241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512104, 32.365234, 48.972149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977929, 0.198795, -0.064302,
		0.106854, -0.740326, -0.663701,
		-0.179545, 0.642182, -0.745229,
		37.458241, 32.557888, 48.748581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962963, 31.809227, 48.738220>,  <37.583923, 32.108360, 49.270241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962963, 31.809227, 48.738220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904716, 32.196159, 48.655212>,  <37.869770, 32.428318, 48.605408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904716, 32.196159, 48.655212>,  <37.962963, 31.809227, 48.738220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904716, 32.196159, 48.655212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988512, 0.133671, -0.070537,
		-0.040494, -0.215405, -0.975685,
		-0.145614, 0.967333, -0.207517,
		37.861031, 32.486359, 48.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552723, 32.005856, 48.376732>,  <37.962963, 31.809227, 48.738220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552723, 32.005856, 48.376732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424774, 32.373863, 48.467281>,  <38.348003, 32.594669, 48.521610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.424774, 32.373863, 48.467281>,  <38.552723, 32.005856, 48.376732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424774, 32.373863, 48.467281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943603, 0.287810, 0.163641,
		0.085399, 0.265954, -0.960195,
		-0.319875, 0.920018, 0.226377,
		38.328812, 32.649868, 48.535194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002060, 32.391014, 47.919189>,  <38.552723, 32.005856, 48.376732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002060, 32.391014, 47.919189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839058, 32.602367, 48.217117>,  <38.741257, 32.729179, 48.395874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.839058, 32.602367, 48.217117>,  <39.002060, 32.391014, 47.919189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839058, 32.602367, 48.217117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913203, 0.235050, 0.332884,
		0.000822, 0.815820, -0.578305,
		-0.407504, 0.528384, 0.744816,
		38.716808, 32.760883, 48.440563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573864, 32.008018, 47.412991>,  <39.002060, 32.391014, 47.919189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573864, 32.008018, 47.412991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550434, 31.635471, 47.269257>,  <38.536377, 31.411943, 47.183018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550434, 31.635471, 47.269257>,  <38.573864, 32.008018, 47.412991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550434, 31.635471, 47.269257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003238, 0.360126, -0.932898,
		0.998278, -0.053484, -0.024112,
		-0.058579, -0.931369, -0.359333,
		38.532860, 31.356060, 47.161457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994034, 32.120380, 46.789433>,  <38.573864, 32.008018, 47.412991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994034, 32.120380, 46.789433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742653, 31.812836, 46.742271>,  <38.591824, 31.628309, 46.713974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.742653, 31.812836, 46.742271>,  <38.994034, 32.120380, 46.789433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742653, 31.812836, 46.742271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100443, 0.070093, -0.992471,
		0.771333, -0.635566, 0.033176,
		-0.628455, -0.768858, -0.117903,
		38.554115, 31.582178, 46.706902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274651, 31.576445, 46.467926>,  <38.994034, 32.120380, 46.789433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274651, 31.576445, 46.467926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886196, 31.600378, 46.375557>,  <38.653126, 31.614738, 46.320137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886196, 31.600378, 46.375557>,  <39.274651, 31.576445, 46.467926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886196, 31.600378, 46.375557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231763, 0.007487, -0.972743,
		-0.056477, -0.998180, -0.021139,
		-0.971132, 0.059837, -0.230918,
		38.594856, 31.618328, 46.306282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041203, 31.084311, 46.076675>,  <39.274651, 31.576445, 46.467926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041203, 31.084311, 46.076675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793209, 31.388771, 46.000500>,  <38.644413, 31.571447, 45.954796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793209, 31.388771, 46.000500>,  <39.041203, 31.084311, 46.076675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793209, 31.388771, 46.000500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131039, -0.138857, -0.981604,
		-0.773594, -0.633535, -0.013652,
		-0.619985, 0.761152, -0.190437,
		38.607212, 31.617117, 45.943367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389095, 30.885782, 45.753658>,  <39.041203, 31.084311, 46.076675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389095, 30.885782, 45.753658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.453911, 31.260717, 45.630276>,  <38.492802, 31.485678, 45.556248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.453911, 31.260717, 45.630276>,  <38.389095, 30.885782, 45.753658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453911, 31.260717, 45.630276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008481, -0.311252, -0.950290,
		-0.986748, 0.156601, -0.042486,
		0.162041, 0.937336, -0.308455,
		38.502522, 31.541918, 45.537739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923069, 31.031637, 45.302551>,  <38.389095, 30.885782, 45.753658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923069, 31.031637, 45.302551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250854, 31.245388, 45.219685>,  <38.447525, 31.373638, 45.169964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250854, 31.245388, 45.219685>,  <37.923069, 31.031637, 45.302551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250854, 31.245388, 45.219685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059195, -0.438450, -0.896804,
		-0.570063, 0.722637, -0.390927,
		0.819466, 0.534375, -0.207168,
		38.496693, 31.405701, 45.157536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955605, 31.529156, 44.689125>,  <37.923069, 31.031637, 45.302551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955605, 31.529156, 44.689125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320969, 31.378151, 44.750011>,  <38.540188, 31.287548, 44.786541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320969, 31.378151, 44.750011>,  <37.955605, 31.529156, 44.689125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320969, 31.378151, 44.750011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015918, -0.406788, -0.913384,
		0.406733, 0.831869, -0.377573,
		0.913408, -0.377514, 0.152212,
		38.594990, 31.264896, 44.795673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371078, 31.600727, 44.050644>,  <37.955605, 31.529156, 44.689125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371078, 31.600727, 44.050644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547855, 31.297998, 44.243271>,  <38.653919, 31.116362, 44.358849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547855, 31.297998, 44.243271>,  <38.371078, 31.600727, 44.050644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547855, 31.297998, 44.243271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111427, -0.486368, -0.866620,
		0.890098, 0.436652, -0.130614,
		0.441938, -0.756823, 0.481570,
		38.680435, 31.070951, 44.387741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493999, 31.979048, 43.413464>,  <38.371078, 31.600727, 44.050644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493999, 31.979048, 43.413464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377804, 31.904665, 43.038010>,  <38.308086, 31.860035, 42.812737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.377804, 31.904665, 43.038010>,  <38.493999, 31.979048, 43.413464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377804, 31.904665, 43.038010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768887, 0.538545, -0.344647,
		0.569587, -0.821821, -0.013462,
		-0.290488, -0.185955, -0.938636,
		38.290657, 31.848879, 42.756420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152691, 32.127617, 43.479939>,  <38.493999, 31.979048, 43.413464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152691, 32.127617, 43.479939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434544, 32.331928, 43.676956>,  <39.603657, 32.454514, 43.795166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.434544, 32.331928, 43.676956>,  <39.152691, 32.127617, 43.479939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434544, 32.331928, 43.676956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654388, -0.199385, -0.729398,
		-0.274355, 0.836272, -0.474740,
		0.704631, 0.510778, 0.492545,
		39.645931, 32.485161, 43.824718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447754, 32.681812, 43.040867>,  <39.152691, 32.127617, 43.479939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447754, 32.681812, 43.040867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711357, 32.528877, 43.299950>,  <39.869518, 32.437115, 43.455399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711357, 32.528877, 43.299950>,  <39.447754, 32.681812, 43.040867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711357, 32.528877, 43.299950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561510, -0.322863, -0.761884,
		0.500421, 0.865780, 0.001920,
		0.659004, -0.382341, 0.647711,
		39.909058, 32.414173, 43.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894604, 32.506763, 42.553196>,  <39.447754, 32.681812, 43.040867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894604, 32.506763, 42.553196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.074757, 32.407349, 42.896214>,  <40.182846, 32.347702, 43.102024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.074757, 32.407349, 42.896214>,  <39.894604, 32.506763, 42.553196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074757, 32.407349, 42.896214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726980, -0.455508, -0.513821,
		0.518322, 0.854835, -0.024472,
		0.450380, -0.248534, 0.857548,
		40.209869, 32.332790, 43.153477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456806, 32.893738, 42.537682>,  <39.894604, 32.506763, 42.553196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456806, 32.893738, 42.537682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524429, 32.599602, 42.800194>,  <40.565002, 32.423122, 42.957699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.524429, 32.599602, 42.800194>,  <40.456806, 32.893738, 42.537682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524429, 32.599602, 42.800194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887735, -0.175670, -0.425520,
		0.428188, 0.654539, 0.623084,
		0.169062, -0.735336, 0.656276,
		40.575150, 32.379002, 42.997078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169102, 32.992477, 42.904732>,  <40.456806, 32.893738, 42.537682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169102, 32.992477, 42.904732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043789, 32.617599, 42.843380>,  <40.968601, 32.392673, 42.806568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.043789, 32.617599, 42.843380>,  <41.169102, 32.992477, 42.904732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043789, 32.617599, 42.843380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875507, -0.222466, -0.428948,
		0.367886, -0.268666, 0.890213,
		-0.313286, -0.937191, -0.153376,
		40.949802, 32.336441, 42.797367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796875, 32.634396, 42.818859>,  <41.169102, 32.992477, 42.904732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796875, 32.634396, 42.818859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493870, 32.447468, 42.636528>,  <41.312065, 32.335312, 42.527130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493870, 32.447468, 42.636528>,  <41.796875, 32.634396, 42.818859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493870, 32.447468, 42.636528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622641, -0.307365, -0.719614,
		0.196181, -0.828940, 0.523805,
		-0.757517, -0.467317, -0.455832,
		41.266613, 32.307274, 42.499779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945198, 31.918404, 42.521160>,  <41.796875, 32.634396, 42.818859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945198, 31.918404, 42.521160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649246, 32.090935, 42.314651>,  <41.471676, 32.194454, 42.190746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.649246, 32.090935, 42.314651>,  <41.945198, 31.918404, 42.521160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649246, 32.090935, 42.314651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648631, 0.253751, -0.717557,
		-0.178495, -0.865776, -0.467516,
		-0.739876, 0.431326, -0.516276,
		41.427284, 32.220333, 42.159767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556507, 31.818420, 42.938278>,  <41.945198, 31.918404, 42.521160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556507, 31.818420, 42.938278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833328, 32.005680, 42.718494>,  <42.999420, 32.118034, 42.586624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833328, 32.005680, 42.718494>,  <42.556507, 31.818420, 42.938278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833328, 32.005680, 42.718494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233345, 0.575224, 0.784007,
		0.683094, -0.670785, 0.288843,
		0.692049, 0.468151, -0.549456,
		43.040943, 32.146126, 42.553658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239491, 31.611969, 43.031906>,  <42.556507, 31.818420, 42.938278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239491, 31.611969, 43.031906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.203041, 32.002529, 42.953583>,  <43.181171, 32.236866, 42.906590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.203041, 32.002529, 42.953583>,  <43.239491, 31.611969, 43.031906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203041, 32.002529, 42.953583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517857, 0.214406, 0.828164,
		0.850601, -0.025935, -0.525172,
		-0.091121, 0.976400, -0.195804,
		43.175705, 32.295448, 42.894840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777779, 31.875673, 43.377228>,  <43.239491, 31.611969, 43.031906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777779, 31.875673, 43.377228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.552059, 32.194710, 43.291981>,  <43.416630, 32.386131, 43.240833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.552059, 32.194710, 43.291981>,  <43.777779, 31.875673, 43.377228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552059, 32.194710, 43.291981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396644, 0.488325, 0.777311,
		0.724047, 0.354102, -0.591919,
		-0.564296, 0.797591, -0.213118,
		43.382771, 32.433987, 43.228046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253292, 32.493313, 43.153095>,  <43.777779, 31.875673, 43.377228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253292, 32.493313, 43.153095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.922329, 32.616848, 43.340717>,  <43.723751, 32.690971, 43.453293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.922329, 32.616848, 43.340717>,  <44.253292, 32.493313, 43.153095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922329, 32.616848, 43.340717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555413, 0.573662, 0.602020,
		-0.083153, 0.758637, -0.646185,
		-0.827407, 0.308840, 0.469058,
		43.674107, 32.709499, 43.481434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079250, 33.218784, 43.018501>,  <44.253292, 32.493313, 43.153095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079250, 33.218784, 43.018501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.965328, 33.102711, 43.383945>,  <43.896976, 33.033066, 43.603210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.965328, 33.102711, 43.383945>,  <44.079250, 33.218784, 43.018501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965328, 33.102711, 43.383945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603680, 0.686047, 0.406092,
		-0.744618, 0.667184, -0.020214,
		-0.284806, -0.290181, 0.913608,
		43.879887, 33.015656, 43.658028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207138, 33.819988, 42.640778>,  <44.079250, 33.218784, 43.018501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207138, 33.819988, 42.640778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.237000, 34.203503, 42.750431>,  <44.254917, 34.433613, 42.816223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.237000, 34.203503, 42.750431>,  <44.207138, 33.819988, 42.640778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237000, 34.203503, 42.750431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487331, 0.204763, -0.848871,
		-0.870021, 0.196964, -0.451962,
		0.074652, 0.958790, 0.274134,
		44.259396, 34.491138, 42.832672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899651, 34.085796, 42.072571>,  <44.207138, 33.819988, 42.640778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899651, 34.085796, 42.072571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.158970, 34.321991, 42.264832>,  <44.314564, 34.463707, 42.380188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.158970, 34.321991, 42.264832>,  <43.899651, 34.085796, 42.072571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158970, 34.321991, 42.264832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328031, 0.353079, -0.876202,
		-0.687095, 0.725714, 0.035205,
		0.648303, 0.590486, 0.480656,
		44.353462, 34.499138, 42.409027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763527, 34.671375, 41.767025>,  <43.899651, 34.085796, 42.072571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763527, 34.671375, 41.767025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.144093, 34.676830, 41.890064>,  <44.372433, 34.680103, 41.963886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.144093, 34.676830, 41.890064>,  <43.763527, 34.671375, 41.767025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144093, 34.676830, 41.890064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285349, 0.336258, -0.897500,
		-0.115669, 0.941671, 0.316031,
		0.951418, 0.013634, 0.307600,
		44.429520, 34.680920, 41.982346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978123, 35.354530, 41.617226>,  <43.763527, 34.671375, 41.767025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978123, 35.354530, 41.617226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.280975, 35.097378, 41.570839>,  <44.462688, 34.943085, 41.543007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.280975, 35.097378, 41.570839>,  <43.978123, 35.354530, 41.617226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280975, 35.097378, 41.570839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000305, 0.177865, -0.984055,
		0.653257, 0.745028, 0.134864,
		0.757136, -0.642882, -0.115964,
		44.508118, 34.904514, 41.536049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649979, 35.504200, 41.462372>,  <43.978123, 35.354530, 41.617226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649979, 35.504200, 41.462372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.521694, 35.163738, 41.296150>,  <44.444721, 34.959461, 41.196419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.521694, 35.163738, 41.296150>,  <44.649979, 35.504200, 41.462372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521694, 35.163738, 41.296150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030884, 0.429100, -0.902729,
		0.946673, -0.302351, -0.111331,
		-0.320713, -0.851151, -0.415555,
		44.425480, 34.908394, 41.171482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107994, 35.294300, 40.936310>,  <44.649979, 35.504200, 41.462372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107994, 35.294300, 40.936310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.732452, 35.206345, 40.830322>,  <44.507130, 35.153572, 40.766727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.732452, 35.206345, 40.830322>,  <45.107994, 35.294300, 40.936310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732452, 35.206345, 40.830322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180600, 0.340727, -0.922653,
		0.293159, -0.914088, -0.280181,
		-0.938851, -0.219883, -0.264971,
		44.450798, 35.140381, 40.750832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032848, 34.956123, 40.281147>,  <45.107994, 35.294300, 40.936310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032848, 34.956123, 40.281147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720264, 35.201180, 40.328468>,  <44.532715, 35.348213, 40.356861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.720264, 35.201180, 40.328468>,  <45.032848, 34.956123, 40.281147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720264, 35.201180, 40.328468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210165, 0.436964, -0.874582,
		-0.587494, -0.658588, -0.470225,
		-0.781461, 0.612637, 0.118302,
		44.485825, 35.384972, 40.363960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437401, 34.853127, 39.714306>,  <45.032848, 34.956123, 40.281147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437401, 34.853127, 39.714306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.451965, 35.211349, 39.891685>,  <44.460705, 35.426285, 39.998116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.451965, 35.211349, 39.891685>,  <44.437401, 34.853127, 39.714306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.451965, 35.211349, 39.891685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134623, 0.444098, -0.885807,
		-0.990228, -0.027448, 0.136732,
		0.036409, 0.895558, 0.443453,
		44.462887, 35.480019, 40.024723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035416, 35.176300, 39.442688>,  <44.437401, 34.853127, 39.714306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035416, 35.176300, 39.442688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.874989, 34.846016, 39.284023>,  <44.778732, 34.647846, 39.188824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.874989, 34.846016, 39.284023>,  <45.035416, 35.176300, 39.442688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874989, 34.846016, 39.284023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758991, -0.541989, 0.360805,
		-0.512909, -0.156356, 0.844084,
		-0.401070, -0.825712, -0.396664,
		44.754669, 34.598301, 39.165024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750290, 35.192150, 39.251820>,  <45.035416, 35.176300, 39.442688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750290, 35.192150, 39.251820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.929810, 35.515144, 39.404949>,  <46.037521, 35.708939, 39.496826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.929810, 35.515144, 39.404949>,  <45.750290, 35.192150, 39.251820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929810, 35.515144, 39.404949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817113, 0.544249, -0.190053,
		-0.361815, -0.227514, 0.904061,
		0.448795, 0.807484, 0.382822,
		46.064449, 35.757389, 39.519794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290955, 35.536133, 38.835033>,  <45.750290, 35.192150, 39.251820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290955, 35.536133, 38.835033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.917896, 35.625874, 38.722012>,  <45.694061, 35.679718, 38.654198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.917896, 35.625874, 38.722012>,  <46.290955, 35.536133, 38.835033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917896, 35.625874, 38.722012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315969, 0.129833, -0.939844,
		-0.174175, -0.965820, -0.191978,
		-0.932645, 0.224357, -0.282555,
		45.638103, 35.693180, 38.637245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319546, 35.703388, 38.032486>,  <46.290955, 35.536133, 38.835033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319546, 35.703388, 38.032486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.935619, 35.791351, 38.102215>,  <45.705261, 35.844128, 38.144054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.935619, 35.791351, 38.102215>,  <46.319546, 35.703388, 38.032486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935619, 35.791351, 38.102215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143205, 0.150403, -0.978198,
		-0.241334, -0.963856, -0.112867,
		-0.959818, 0.219909, 0.174327,
		45.647675, 35.857323, 38.154514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076077, 35.604095, 37.368187>,  <46.319546, 35.703388, 38.032486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076077, 35.604095, 37.368187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.720818, 35.465454, 37.488888>,  <45.507660, 35.382271, 37.561310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.720818, 35.465454, 37.488888>,  <46.076077, 35.604095, 37.368187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720818, 35.465454, 37.488888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367157, -0.930077, 0.012346,
		0.276374, 0.121755, 0.953306,
		-0.888152, -0.346601, 0.301753,
		45.454372, 35.361473, 37.579414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880573, 35.869164, 36.683434>,  <46.076077, 35.604095, 37.368187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880573, 35.869164, 36.683434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.085102, 35.548405, 36.559811>,  <46.207821, 35.355949, 36.485638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.085102, 35.548405, 36.559811>,  <45.880573, 35.869164, 36.683434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085102, 35.548405, 36.559811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854264, -0.513483, -0.081042,
		-0.093709, 0.305456, -0.947584,
		0.511323, -0.801893, -0.309058,
		46.238499, 35.307838, 36.467094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501396, 35.655579, 36.032345>,  <45.880573, 35.869164, 36.683434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501396, 35.655579, 36.032345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.692249, 35.342152, 36.191525>,  <45.806763, 35.154095, 36.287033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.692249, 35.342152, 36.191525>,  <45.501396, 35.655579, 36.032345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692249, 35.342152, 36.191525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825470, -0.554966, -0.103014,
		0.301566, -0.279341, -0.911607,
		0.477134, -0.783570, 0.397947,
		45.835388, 35.107082, 36.310909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566940, 35.041534, 35.548737>,  <45.501396, 35.655579, 36.032345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566940, 35.041534, 35.548737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.539112, 34.927341, 35.931080>,  <45.522415, 34.858826, 36.160484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.539112, 34.927341, 35.931080>,  <45.566940, 35.041534, 35.548737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539112, 34.927341, 35.931080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648995, -0.714731, -0.260704,
		0.757606, -0.638482, -0.135555,
		-0.069570, -0.285485, 0.955855,
		45.518242, 34.841698, 36.217834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292408, 34.923954, 35.228134>,  <45.566940, 35.041534, 35.548737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292408, 34.923954, 35.228134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.541298, 35.177021, 35.412556>,  <46.690632, 35.328861, 35.523209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.541298, 35.177021, 35.412556>,  <46.292408, 34.923954, 35.228134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541298, 35.177021, 35.412556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771793, -0.397172, -0.496579,
		-0.131051, 0.664821, -0.735417,
		0.622223, 0.632667, 0.461054,
		46.727966, 35.366821, 35.550873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.659611, 35.534901, 34.726479>,  <46.292408, 34.923954, 35.228134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.659611, 35.534901, 34.726479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.841766, 35.318432, 35.009251>,  <46.951057, 35.188549, 35.178913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.841766, 35.318432, 35.009251>,  <46.659611, 35.534901, 34.726479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841766, 35.318432, 35.009251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699658, -0.273488, -0.660062,
		0.550547, 0.795194, 0.254095,
		0.455385, -0.541176, 0.706932,
		46.978382, 35.156078, 35.221329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.357784, 35.695690, 34.873421>,  <46.659611, 35.534901, 34.726479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.357784, 35.695690, 34.873421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.262745, 35.309322, 34.914490>,  <47.205723, 35.077499, 34.939133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.262745, 35.309322, 34.914490>,  <47.357784, 35.695690, 34.873421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.262745, 35.309322, 34.914490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740670, -0.248541, -0.624208,
		0.628455, -0.072265, 0.774482,
		-0.237599, -0.965922, 0.102672,
		47.191463, 35.019547, 34.945290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.880871, 35.180668, 35.219048>,  <47.357784, 35.695690, 34.873421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.880871, 35.180668, 35.219048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.661430, 34.983288, 34.949074>,  <47.529766, 34.864861, 34.787090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.661430, 34.983288, 34.949074>,  <47.880871, 35.180668, 35.219048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661430, 34.983288, 34.949074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819115, -0.155409, -0.552176,
		0.167578, -0.855779, 0.489448,
		-0.548605, -0.493447, -0.674939,
		47.496849, 34.835255, 34.746593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.810974, 34.502750, 57.251312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.184517, 34.532501, 57.391243>,  <31.408644, 34.550350, 57.475201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.184517, 34.532501, 57.391243>,  <30.810974, 34.502750, 57.251312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184517, 34.532501, 57.391243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353332, -0.343290, -0.870235,
		0.055367, 0.936280, -0.346863,
		0.933858, 0.074375, 0.349825,
		31.464674, 34.554813, 57.496189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154978, 34.872952, 56.710728>,  <30.810974, 34.502750, 57.251312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154978, 34.872952, 56.710728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.461666, 34.718605, 56.915955>,  <31.645679, 34.625996, 57.039093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.461666, 34.718605, 56.915955>,  <31.154978, 34.872952, 56.710728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461666, 34.718605, 56.915955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458852, -0.229561, -0.858345,
		0.448991, 0.893536, 0.001047,
		0.766722, -0.385869, 0.513072,
		31.691683, 34.602844, 57.069878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761606, 35.169670, 56.365437>,  <31.154978, 34.872952, 56.710728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761606, 35.169670, 56.365437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.904354, 34.882587, 56.604614>,  <31.990004, 34.710339, 56.748119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.904354, 34.882587, 56.604614>,  <31.761606, 35.169670, 56.365437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904354, 34.882587, 56.604614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687426, -0.231645, -0.688322,
		0.632526, 0.656682, 0.410706,
		0.356871, -0.717711, 0.597942,
		32.011414, 34.667274, 56.783997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457298, 35.203686, 56.251236>,  <31.761606, 35.169670, 56.365437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457298, 35.203686, 56.251236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.390480, 34.836754, 56.395794>,  <32.350391, 34.616596, 56.482529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.390480, 34.836754, 56.395794>,  <32.457298, 35.203686, 56.251236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390480, 34.836754, 56.395794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741469, -0.358475, -0.567203,
		0.649862, 0.173213, 0.740052,
		-0.167043, -0.917329, 0.361391,
		32.340366, 34.561554, 56.504211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127728, 34.918228, 56.388405>,  <32.457298, 35.203686, 56.251236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127728, 34.918228, 56.388405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.867245, 34.622429, 56.320213>,  <32.710953, 34.444950, 56.279297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.867245, 34.622429, 56.320213>,  <33.127728, 34.918228, 56.388405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867245, 34.622429, 56.320213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574511, -0.333614, -0.747422,
		0.495847, -0.584669, 0.642104,
		-0.651209, -0.739503, -0.170477,
		32.671883, 34.400578, 56.269070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583015, 34.410282, 56.275826>,  <33.127728, 34.918228, 56.388405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583015, 34.410282, 56.275826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.232376, 34.285831, 56.128975>,  <33.021992, 34.211159, 56.040863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.232376, 34.285831, 56.128975>,  <33.583015, 34.410282, 56.275826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232376, 34.285831, 56.128975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479529, -0.500625, -0.720713,
		0.040444, -0.807820, 0.588041,
		-0.876594, -0.311131, -0.367125,
		32.969398, 34.192493, 56.018837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548023, 33.605263, 56.278076>,  <33.583015, 34.410282, 56.275826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548023, 33.605263, 56.278076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.332497, 33.798225, 56.001823>,  <33.203182, 33.914001, 55.836071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.332497, 33.798225, 56.001823>,  <33.548023, 33.605263, 56.278076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332497, 33.798225, 56.001823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426040, -0.551203, -0.717402,
		-0.726754, -0.680780, 0.091472,
		-0.538812, 0.482404, -0.690628,
		33.170853, 33.942947, 55.794636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810844, 33.124176, 55.726849>,  <33.548023, 33.605263, 56.278076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810844, 33.124176, 55.726849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.596111, 33.398533, 55.530334>,  <33.467274, 33.563148, 55.412426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.596111, 33.398533, 55.530334>,  <33.810844, 33.124176, 55.726849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596111, 33.398533, 55.530334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349871, -0.348899, -0.869402,
		-0.767727, -0.638608, -0.052675,
		-0.536828, 0.685893, -0.491290,
		33.435062, 33.604301, 55.382946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423462, 32.880474, 55.202198>,  <33.810844, 33.124176, 55.726849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423462, 32.880474, 55.202198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.461178, 33.259552, 55.080219>,  <33.483807, 33.487000, 55.007034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.461178, 33.259552, 55.080219>,  <33.423462, 32.880474, 55.202198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461178, 33.259552, 55.080219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165056, -0.316950, -0.933969,
		-0.981767, 0.037727, -0.186306,
		0.094286, 0.947692, -0.304944,
		33.489464, 33.543861, 54.988735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128353, 32.897842, 54.608295>,  <33.423462, 32.880474, 55.202198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128353, 32.897842, 54.608295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.342125, 33.235516, 54.591625>,  <33.470387, 33.438122, 54.581623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.342125, 33.235516, 54.591625>,  <33.128353, 32.897842, 54.608295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342125, 33.235516, 54.591625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265285, -0.214349, -0.940042,
		-0.802501, 0.491332, -0.338504,
		0.534430, 0.844185, -0.041672,
		33.502453, 33.488770, 54.579124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899830, 33.336731, 54.076332>,  <33.128353, 32.897842, 54.608295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899830, 33.336731, 54.076332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.258221, 33.498531, 54.149662>,  <33.473255, 33.595612, 54.193661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.258221, 33.498531, 54.149662>,  <32.899830, 33.336731, 54.076332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258221, 33.498531, 54.149662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279076, -0.191729, -0.940934,
		-0.345456, 0.894216, -0.284671,
		0.895978, 0.404496, 0.183321,
		33.527016, 33.619881, 54.204659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959637, 33.922302, 53.668663>,  <32.899830, 33.336731, 54.076332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959637, 33.922302, 53.668663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.329483, 33.787815, 53.740273>,  <33.551392, 33.707123, 53.783237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.329483, 33.787815, 53.740273>,  <32.959637, 33.922302, 53.668663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329483, 33.787815, 53.740273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169737, -0.057067, -0.983836,
		0.341002, 0.940053, 0.004305,
		0.924612, -0.336221, 0.179022,
		33.606865, 33.686951, 53.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354286, 34.345051, 53.268070>,  <32.959637, 33.922302, 53.668663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354286, 34.345051, 53.268070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.566380, 34.018425, 53.359344>,  <33.693634, 33.822449, 53.414108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.566380, 34.018425, 53.359344>,  <33.354286, 34.345051, 53.268070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566380, 34.018425, 53.359344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131587, -0.186619, -0.973580,
		0.837578, 0.546252, 0.008497,
		0.530235, -0.816567, 0.228188,
		33.725449, 33.773457, 53.427799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057007, 34.355808, 52.935673>,  <33.354286, 34.345051, 53.268070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057007, 34.355808, 52.935673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.964455, 33.976521, 53.022701>,  <33.908924, 33.748947, 53.074917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.964455, 33.976521, 53.022701>,  <34.057007, 34.355808, 52.935673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964455, 33.976521, 53.022701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038219, -0.232322, -0.971888,
		0.972113, -0.216559, 0.089995,
		-0.231379, -0.948224, 0.217567,
		33.895042, 33.692055, 53.087971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471939, 33.938530, 52.443516>,  <34.057007, 34.355808, 52.935673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471939, 33.938530, 52.443516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.224827, 33.656738, 52.583263>,  <34.076561, 33.487663, 52.667114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.224827, 33.656738, 52.583263>,  <34.471939, 33.938530, 52.443516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224827, 33.656738, 52.583263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014069, -0.454127, -0.890826,
		0.786225, -0.545419, 0.290461,
		-0.617779, -0.704476, 0.349373,
		34.039494, 33.445396, 52.688076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920876, 33.261902, 52.280521>,  <34.471939, 33.938530, 52.443516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920876, 33.261902, 52.280521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.528465, 33.193123, 52.316357>,  <34.293018, 33.151855, 52.337856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.528465, 33.193123, 52.316357>,  <34.920876, 33.261902, 52.280521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528465, 33.193123, 52.316357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011228, -0.410896, -0.911613,
		0.193565, -0.895320, 0.401168,
		-0.981023, -0.171952, 0.089588,
		34.234158, 33.141537, 52.343231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726490, 32.489677, 52.212292>,  <34.920876, 33.261902, 52.280521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726490, 32.489677, 52.212292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.387371, 32.670353, 52.101131>,  <34.183899, 32.778759, 52.034435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.387371, 32.670353, 52.101131>,  <34.726490, 32.489677, 52.212292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387371, 32.670353, 52.101131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004639, -0.530307, -0.847793,
		-0.530307, -0.717464, 0.451686,
		0.847793, -0.451686, 0.277898,
		34.133034, 32.805859, 52.017761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576611, 32.220478, 51.593212>,  <34.726490, 32.489677, 52.212292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576611, 32.220478, 51.593212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272968, 32.479820, 51.569912>,  <34.090782, 32.635426, 51.555931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.272968, 32.479820, 51.569912>,  <34.576611, 32.220478, 51.593212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272968, 32.479820, 51.569912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181594, -0.296845, -0.937500,
		-0.625128, -0.701082, 0.343074,
		-0.759104, 0.648358, -0.058254,
		34.045238, 32.674328, 51.552437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945335, 31.877695, 51.314884>,  <34.576611, 32.220478, 51.593212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945335, 31.877695, 51.314884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.890217, 32.263210, 51.223560>,  <33.857147, 32.494518, 51.168766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.890217, 32.263210, 51.223560>,  <33.945335, 31.877695, 51.314884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890217, 32.263210, 51.223560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094456, -0.242248, -0.965606,
		-0.985947, -0.111491, 0.124416,
		-0.137796, 0.963787, -0.228312,
		33.848877, 32.552345, 51.155067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389145, 31.924341, 50.877228>,  <33.945335, 31.877695, 51.314884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389145, 31.924341, 50.877228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610184, 32.254215, 50.829018>,  <33.742805, 32.452141, 50.800091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.610184, 32.254215, 50.829018>,  <33.389145, 31.924341, 50.877228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610184, 32.254215, 50.829018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082381, -0.197948, -0.976745,
		-0.829366, 0.529818, -0.177324,
		0.552598, 0.824687, -0.120524,
		33.775963, 32.501621, 50.792862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109589, 32.110634, 50.222012>,  <33.389145, 31.924341, 50.877228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109589, 32.110634, 50.222012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.475246, 32.265564, 50.269875>,  <33.694641, 32.358524, 50.298592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.475246, 32.265564, 50.269875>,  <33.109589, 32.110634, 50.222012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475246, 32.265564, 50.269875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236452, -0.269670, -0.933471,
		-0.329290, 0.881621, -0.338101,
		0.914144, 0.387328, 0.119661,
		33.749489, 32.381763, 50.305775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332298, 32.098392, 49.478275>,  <33.109589, 32.110634, 50.222012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332298, 32.098392, 49.478275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671558, 32.155518, 49.682331>,  <33.875114, 32.189793, 49.804764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671558, 32.155518, 49.682331>,  <33.332298, 32.098392, 49.478275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671558, 32.155518, 49.682331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504168, -0.513258, -0.694536,
		0.162642, 0.846268, -0.507325,
		0.848152, 0.142816, 0.510138,
		33.926003, 32.198364, 49.835373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017406, 31.498932, 49.232418>,  <33.332298, 32.098392, 49.478275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017406, 31.498932, 49.232418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.722301, 31.265072, 49.097427>,  <32.545238, 31.124756, 49.016434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.722301, 31.265072, 49.097427>,  <33.017406, 31.498932, 49.232418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722301, 31.265072, 49.097427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412332, -0.005551, 0.911017,
		-0.534499, 0.811267, -0.236975,
		-0.737762, -0.584650, -0.337478,
		32.500973, 31.089676, 48.996185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356133, 31.813835, 49.559582>,  <33.017406, 31.498932, 49.232418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356133, 31.813835, 49.559582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.300350, 31.426033, 49.478973>,  <32.266880, 31.193352, 49.430607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.300350, 31.426033, 49.478973>,  <32.356133, 31.813835, 49.559582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300350, 31.426033, 49.478973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509046, -0.104372, 0.854388,
		-0.849366, 0.221738, -0.478967,
		-0.139459, -0.969504, -0.201525,
		32.258514, 31.135181, 49.418514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632013, 31.722694, 49.613117>,  <32.356133, 31.813835, 49.559582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632013, 31.722694, 49.613117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.783405, 31.355276, 49.658779>,  <31.874241, 31.134825, 49.686176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.783405, 31.355276, 49.658779>,  <31.632013, 31.722694, 49.613117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783405, 31.355276, 49.658779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414441, -0.057890, 0.908233,
		-0.827643, -0.391057, -0.402592,
		0.378477, -0.918544, 0.114158,
		31.896948, 31.079714, 49.693027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152210, 31.253155, 49.838089>,  <31.632013, 31.722694, 49.613117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152210, 31.253155, 49.838089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.495480, 31.097914, 49.972500>,  <31.701441, 31.004768, 50.053146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.495480, 31.097914, 49.972500>,  <31.152210, 31.253155, 49.838089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495480, 31.097914, 49.972500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400548, -0.096817, 0.911146,
		-0.321086, -0.916517, -0.238540,
		0.858175, -0.388103, 0.336022,
		31.752932, 30.981483, 50.073307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932083, 31.024958, 50.434563>,  <31.152210, 31.253155, 49.838089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932083, 31.024958, 50.434563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.318941, 30.924295, 50.448986>,  <31.551056, 30.863897, 50.457642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.318941, 30.924295, 50.448986>,  <30.932083, 31.024958, 50.434563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318941, 30.924295, 50.448986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090539, -0.208413, 0.973841,
		-0.237569, -0.945107, -0.224351,
		0.967142, -0.251667, 0.036056,
		31.609085, 30.848799, 50.459805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903179, 30.451124, 50.819130>,  <30.932083, 31.024958, 50.434563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903179, 30.451124, 50.819130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.264265, 30.618269, 50.860111>,  <31.480917, 30.718555, 50.884701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.264265, 30.618269, 50.860111>,  <30.903179, 30.451124, 50.819130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264265, 30.618269, 50.860111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119598, 0.014975, 0.992709,
		0.413284, -0.908386, 0.063494,
		0.902714, 0.417865, 0.102452,
		31.535080, 30.743628, 50.890846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253857, 29.998352, 51.331928>,  <30.903179, 30.451124, 50.819130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253857, 29.998352, 51.331928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.437840, 30.353394, 51.341705>,  <31.548229, 30.566418, 51.347572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.437840, 30.353394, 51.341705>,  <31.253857, 29.998352, 51.331928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437840, 30.353394, 51.341705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259310, 0.107944, 0.959743,
		0.849233, -0.447780, 0.279814,
		0.459958, 0.887604, 0.024445,
		31.575827, 30.619675, 51.349037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780241, 30.067999, 51.908821>,  <31.253857, 29.998352, 51.331928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780241, 30.067999, 51.908821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.710447, 30.454760, 51.834354>,  <31.668571, 30.686815, 51.789673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.710447, 30.454760, 51.834354>,  <31.780241, 30.067999, 51.908821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710447, 30.454760, 51.834354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071849, 0.176060, 0.981754,
		0.982035, 0.184677, 0.038751,
		-0.174485, 0.966901, -0.186166,
		31.658102, 30.744829, 51.778503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178692, 30.363819, 52.482487>,  <31.780241, 30.067999, 51.908821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178692, 30.363819, 52.482487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.921631, 30.644186, 52.358742>,  <31.767393, 30.812407, 52.284492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.921631, 30.644186, 52.358742>,  <32.178692, 30.363819, 52.482487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921631, 30.644186, 52.358742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138288, 0.291039, 0.946664,
		0.753572, 0.651161, -0.090109,
		-0.642656, 0.700918, -0.309366,
		31.728834, 30.854462, 52.265930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401085, 30.960720, 52.791451>,  <32.178692, 30.363819, 52.482487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401085, 30.960720, 52.791451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.035690, 31.058643, 52.661457>,  <31.816454, 31.117397, 52.583462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.035690, 31.058643, 52.661457>,  <32.401085, 30.960720, 52.791451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035690, 31.058643, 52.661457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215316, 0.386861, 0.896648,
		0.345230, 0.889048, -0.300680,
		-0.913485, 0.244809, -0.324982,
		31.761644, 31.132086, 52.563961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307480, 31.699789, 52.963520>,  <32.401085, 30.960720, 52.791451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307480, 31.699789, 52.963520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.957733, 31.507446, 52.937397>,  <31.747887, 31.392040, 52.921722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.957733, 31.507446, 52.937397>,  <32.307480, 31.699789, 52.963520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957733, 31.507446, 52.937397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226104, 0.284615, 0.931596,
		-0.429377, 0.829320, -0.357581,
		-0.874364, -0.480857, -0.065305,
		31.695423, 31.363190, 52.917805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945932, 32.219177, 53.138565>,  <32.307480, 31.699789, 52.963520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945932, 32.219177, 53.138565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.697432, 31.906433, 53.159492>,  <31.548332, 31.718786, 53.172050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.697432, 31.906433, 53.159492>,  <31.945932, 32.219177, 53.138565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697432, 31.906433, 53.159492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332360, 0.323375, 0.885982,
		-0.709637, 0.533028, -0.460757,
		-0.621251, -0.781863, 0.052322,
		31.511057, 31.671875, 53.175190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248154, 32.439507, 53.199936>,  <31.945932, 32.219177, 53.138565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248154, 32.439507, 53.199936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.248089, 32.084728, 53.384682>,  <31.248051, 31.871861, 53.495529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.248089, 32.084728, 53.384682>,  <31.248154, 32.439507, 53.199936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248089, 32.084728, 53.384682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378865, 0.427489, 0.820801,
		-0.925452, -0.174852, -0.336104,
		-0.000162, -0.886950, 0.461865,
		31.248041, 31.818644, 53.523243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650730, 32.389767, 53.643719>,  <31.248154, 32.439507, 53.199936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650730, 32.389767, 53.643719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.848728, 32.083290, 53.807632>,  <30.967527, 31.899405, 53.905983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.848728, 32.083290, 53.807632>,  <30.650730, 32.389767, 53.643719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848728, 32.083290, 53.807632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360565, 0.247967, 0.899169,
		-0.790551, -0.592842, -0.153519,
		0.494997, -0.766192, 0.409789,
		30.997227, 31.853432, 53.930569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162188, 31.975714, 53.954189>,  <30.650730, 32.389767, 53.643719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162188, 31.975714, 53.954189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.511482, 31.886217, 54.127346>,  <30.721060, 31.832520, 54.231239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.511482, 31.886217, 54.127346>,  <30.162188, 31.975714, 53.954189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511482, 31.886217, 54.127346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441302, 0.013656, 0.897255,
		-0.206666, -0.974552, -0.086813,
		0.873236, -0.223743, 0.432895,
		30.773453, 31.819096, 54.257214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060995, 31.444345, 54.418808>,  <30.162188, 31.975714, 53.954189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060995, 31.444345, 54.418808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.391603, 31.638983, 54.532009>,  <30.589970, 31.755764, 54.599930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.391603, 31.638983, 54.532009>,  <30.060995, 31.444345, 54.418808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391603, 31.638983, 54.532009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437429, 0.238781, 0.866971,
		0.354286, -0.840364, 0.410207,
		0.826521, 0.486593, 0.283002,
		30.639561, 31.784960, 54.616909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007206, 31.414455, 55.089333>,  <30.060995, 31.444345, 54.418808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007206, 31.414455, 55.089333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.270279, 31.710979, 55.035793>,  <30.428122, 31.888893, 55.003670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.270279, 31.710979, 55.035793>,  <30.007206, 31.414455, 55.089333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270279, 31.710979, 55.035793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301754, 0.422067, 0.854871,
		0.690217, -0.521843, 0.501278,
		0.657681, 0.741309, -0.133850,
		30.467583, 31.933372, 54.995640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997257, 31.795702, 55.775974>,  <30.007206, 31.414455, 55.089333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997257, 31.795702, 55.775974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.202381, 32.049324, 55.544456>,  <30.325455, 32.201496, 55.405548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.202381, 32.049324, 55.544456>,  <29.997257, 31.795702, 55.775974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202381, 32.049324, 55.544456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049775, 0.651094, 0.757363,
		0.857059, -0.417191, 0.302327,
		0.512808, 0.634057, -0.578791,
		30.356224, 32.239540, 55.370819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.552105, 32.153992, 56.205524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517376, 32.414917, 55.904339>,  <30.496538, 32.571472, 55.723629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517376, 32.414917, 55.904339>,  <30.552105, 32.153992, 56.205524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517376, 32.414917, 55.904339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384734, 0.675222, 0.629330,
		0.918935, 0.344329, 0.192342,
		-0.086823, 0.652314, -0.752960,
		30.491329, 32.610611, 55.678452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019318, 32.721962, 56.252403>,  <30.552105, 32.153992, 56.205524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019318, 32.721962, 56.252403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730928, 32.858582, 56.011227>,  <30.557894, 32.940552, 55.866520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730928, 32.858582, 56.011227>,  <31.019318, 32.721962, 56.252403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730928, 32.858582, 56.011227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204068, 0.726865, 0.655762,
		0.662233, 0.595829, -0.454352,
		-0.720975, 0.341549, -0.602943,
		30.514635, 32.961044, 55.830345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970705, 33.412422, 56.403419>,  <31.019318, 32.721962, 56.252403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970705, 33.412422, 56.403419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614182, 33.367458, 56.227726>,  <30.400267, 33.340481, 56.122311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614182, 33.367458, 56.227726>,  <30.970705, 33.412422, 56.403419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614182, 33.367458, 56.227726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337107, 0.812136, 0.476229,
		0.303189, 0.572538, -0.761759,
		-0.891311, -0.112407, -0.439238,
		30.346788, 33.333736, 56.095955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747078, 34.066570, 56.248020>,  <30.970705, 33.412422, 56.403419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747078, 34.066570, 56.248020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401457, 33.865650, 56.234711>,  <30.194084, 33.745098, 56.226727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401457, 33.865650, 56.234711>,  <30.747078, 34.066570, 56.248020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401457, 33.865650, 56.234711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466815, 0.774772, 0.426394,
		-0.188397, 0.383960, -0.903926,
		-0.864054, -0.502298, -0.033274,
		30.142241, 33.714962, 56.224728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211548, 34.516701, 55.925453>,  <30.747078, 34.066570, 56.248020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211548, 34.516701, 55.925453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035282, 34.232216, 56.144539>,  <29.929523, 34.061523, 56.275990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035282, 34.232216, 56.144539>,  <30.211548, 34.516701, 55.925453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035282, 34.232216, 56.144539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549611, 0.696179, 0.461803,
		-0.709749, -0.097531, -0.697670,
		-0.440663, -0.711212, 0.547717,
		29.903084, 34.018852, 56.308853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592777, 34.853409, 55.923119>,  <30.211548, 34.516701, 55.925453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592777, 34.853409, 55.923119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580517, 34.596375, 56.229359>,  <29.573160, 34.442154, 56.413105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580517, 34.596375, 56.229359>,  <29.592777, 34.853409, 55.923119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580517, 34.596375, 56.229359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647002, 0.596595, 0.474829,
		-0.761872, -0.480794, -0.434037,
		-0.030650, -0.642581, 0.765604,
		29.571321, 34.403599, 56.459042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942198, 34.742760, 56.061695>,  <29.592777, 34.853409, 55.923119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942198, 34.742760, 56.061695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117224, 34.643337, 56.407356>,  <29.222240, 34.583683, 56.614754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.117224, 34.643337, 56.407356>,  <28.942198, 34.742760, 56.061695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117224, 34.643337, 56.407356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594194, 0.641380, 0.485350,
		-0.674884, -0.725847, 0.132959,
		0.437567, -0.248551, 0.864151,
		29.248493, 34.568771, 56.666603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394033, 34.567410, 56.502190>,  <28.942198, 34.742760, 56.061695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394033, 34.567410, 56.502190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711365, 34.666424, 56.724670>,  <28.901764, 34.725834, 56.858158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711365, 34.666424, 56.724670>,  <28.394033, 34.567410, 56.502190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711365, 34.666424, 56.724670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571855, 0.616395, 0.541331,
		-0.208842, -0.747519, 0.630556,
		0.793326, 0.247534, 0.556202,
		28.949362, 34.740685, 56.891529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160574, 34.398434, 57.158134>,  <28.394033, 34.567410, 56.502190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160574, 34.398434, 57.158134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464315, 34.652809, 57.213223>,  <28.646561, 34.805435, 57.246273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464315, 34.652809, 57.213223>,  <28.160574, 34.398434, 57.158134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464315, 34.652809, 57.213223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563783, 0.537373, 0.627199,
		0.324852, -0.553910, 0.766586,
		0.759355, 0.635935, 0.137718,
		28.692122, 34.843590, 57.254539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071981, 34.598751, 57.766872>,  <28.160574, 34.398434, 57.158134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071981, 34.598751, 57.766872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328442, 34.885960, 57.658527>,  <28.482317, 35.058285, 57.593521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328442, 34.885960, 57.658527>,  <28.071981, 34.598751, 57.766872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328442, 34.885960, 57.658527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431242, 0.629061, 0.646771,
		0.634799, -0.297856, 0.712960,
		0.641140, 0.718028, -0.270879,
		28.520786, 35.101368, 57.577267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159540, 34.990269, 58.351986>,  <28.071981, 34.598751, 57.766872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159540, 34.990269, 58.351986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279520, 35.230766, 58.055733>,  <28.351507, 35.375065, 57.877979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279520, 35.230766, 58.055733>,  <28.159540, 34.990269, 58.351986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279520, 35.230766, 58.055733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560730, 0.739220, 0.373008,
		0.771760, 0.303413, 0.558862,
		0.299947, 0.601244, -0.740633,
		28.369505, 35.411140, 57.833542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107431, 35.570206, 58.687988>,  <28.159540, 34.990269, 58.351986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107431, 35.570206, 58.687988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147827, 35.688347, 58.307976>,  <28.172064, 35.759232, 58.079967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147827, 35.688347, 58.307976>,  <28.107431, 35.570206, 58.687988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147827, 35.688347, 58.307976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736064, 0.664626, 0.128382,
		0.669337, 0.686323, 0.284516,
		0.100986, 0.295352, -0.950036,
		28.178123, 35.776955, 58.022964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214813, 36.242039, 58.680920>,  <28.107431, 35.570206, 58.687988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214813, 36.242039, 58.680920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051483, 36.178493, 58.321358>,  <27.953485, 36.140366, 58.105621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051483, 36.178493, 58.321358>,  <28.214813, 36.242039, 58.680920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051483, 36.178493, 58.321358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551974, 0.827285, 0.104522,
		0.727046, 0.538852, -0.425492,
		-0.408325, -0.158868, -0.898906,
		27.928986, 36.130833, 58.051685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281914, 36.882069, 58.273006>,  <28.214813, 36.242039, 58.680920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281914, 36.882069, 58.273006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972914, 36.688862, 58.108112>,  <27.787514, 36.572937, 58.009178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972914, 36.688862, 58.108112>,  <28.281914, 36.882069, 58.273006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972914, 36.688862, 58.108112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577169, 0.804775, 0.138612,
		0.264801, 0.345005, -0.900473,
		-0.772500, -0.483020, -0.412231,
		27.741163, 36.543957, 57.984444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005205, 37.414177, 57.806644>,  <28.281914, 36.882069, 58.273006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005205, 37.414177, 57.806644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716442, 37.149918, 57.889000>,  <27.543184, 36.991360, 57.938412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716442, 37.149918, 57.889000>,  <28.005205, 37.414177, 57.806644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716442, 37.149918, 57.889000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652662, 0.748919, 0.114684,
		-0.229957, -0.051582, -0.971833,
		-0.721908, -0.660651, 0.205885,
		27.499870, 36.951721, 57.950764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427740, 37.648674, 57.389656>,  <28.005205, 37.414177, 57.806644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427740, 37.648674, 57.389656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274723, 37.393429, 57.656929>,  <27.182913, 37.240280, 57.817295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274723, 37.393429, 57.656929>,  <27.427740, 37.648674, 57.389656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274723, 37.393429, 57.656929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672608, 0.688153, 0.272110,
		-0.633452, -0.345335, -0.692446,
		-0.382540, -0.638114, 0.668187,
		27.159962, 37.201996, 57.857384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643688, 37.532055, 57.261730>,  <27.427740, 37.648674, 57.389656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643688, 37.532055, 57.261730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755360, 37.456051, 57.638229>,  <26.822363, 37.410446, 57.864128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755360, 37.456051, 57.638229>,  <26.643688, 37.532055, 57.261730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755360, 37.456051, 57.638229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687965, 0.644263, 0.334111,
		-0.669899, -0.740824, 0.049141,
		0.279177, -0.190014, 0.941252,
		26.839113, 37.399048, 57.920605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058182, 37.474712, 57.539791>,  <26.643688, 37.532055, 57.261730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058182, 37.474712, 57.539791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298880, 37.556602, 57.848595>,  <26.443298, 37.605736, 58.033875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298880, 37.556602, 57.848595>,  <26.058182, 37.474712, 57.539791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298880, 37.556602, 57.848595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711460, 0.576639, 0.401636,
		-0.362943, -0.790933, 0.492643,
		0.601745, 0.204724, 0.772005,
		26.479403, 37.618019, 58.080196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651985, 37.442532, 58.055054>,  <26.058182, 37.474712, 57.539791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651985, 37.442532, 58.055054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954912, 37.656631, 58.204708>,  <26.136669, 37.785091, 58.294502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954912, 37.656631, 58.204708>,  <25.651985, 37.442532, 58.055054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954912, 37.656631, 58.204708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653046, 0.621840, 0.432256,
		-0.001287, -0.571683, 0.820474,
		0.757317, 0.535251, 0.374135,
		26.182108, 37.817207, 58.316948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320509, 37.566265, 58.677155>,  <25.651985, 37.442532, 58.055054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320509, 37.566265, 58.677155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639303, 37.807835, 58.681026>,  <25.830580, 37.952774, 58.683350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639303, 37.807835, 58.681026>,  <25.320509, 37.566265, 58.677155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639303, 37.807835, 58.681026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545192, 0.712402, 0.441871,
		0.259962, -0.357439, 0.897027,
		0.796985, 0.603922, 0.009676,
		25.878399, 37.989010, 58.683929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467178, 37.770580, 59.330563>,  <25.320509, 37.566265, 58.677155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467178, 37.770580, 59.330563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641249, 38.062515, 59.119675>,  <25.745691, 38.237675, 58.993141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641249, 38.062515, 59.119675>,  <25.467178, 37.770580, 59.330563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641249, 38.062515, 59.119675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584364, 0.674434, 0.451285,
		0.684943, 0.111706, 0.719983,
		0.435169, 0.729836, -0.527226,
		25.771801, 38.281467, 58.961510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712440, 38.370770, 59.796810>,  <25.467178, 37.770580, 59.330563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712440, 38.370770, 59.796810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658451, 38.523643, 59.431141>,  <25.626057, 38.615368, 59.211739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658451, 38.523643, 59.431141>,  <25.712440, 38.370770, 59.796810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658451, 38.523643, 59.431141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576746, 0.719910, 0.386127,
		0.805696, 0.579363, 0.123255,
		-0.134975, 0.382188, -0.914174,
		25.617958, 38.638298, 59.156887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826780, 38.956501, 59.990768>,  <25.712440, 38.370770, 59.796810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826780, 38.956501, 59.990768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643505, 39.021317, 59.641186>,  <25.533541, 39.060207, 59.431435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643505, 39.021317, 59.641186>,  <25.826780, 38.956501, 59.990768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643505, 39.021317, 59.641186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488059, 0.775896, 0.399729,
		0.742875, 0.609695, -0.276421,
		-0.458187, 0.162039, -0.873961,
		25.506048, 39.069927, 59.378998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972887, 39.719913, 59.843414>,  <25.826780, 38.956501, 59.990768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972887, 39.719913, 59.843414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010752, 39.524258, 60.190235>,  <26.033470, 39.406864, 60.398327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010752, 39.524258, 60.190235>,  <25.972887, 39.719913, 59.843414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010752, 39.524258, 60.190235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542608, 0.755569, 0.367003,
		-0.834635, 0.435730, 0.336934,
		0.094663, -0.489137, 0.867055,
		26.039150, 39.377518, 60.450352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605604, 39.708565, 60.218803>,  <25.972887, 39.719913, 59.843414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605604, 39.708565, 60.218803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837109, 39.842098, 60.516418>,  <26.976011, 39.922218, 60.694988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837109, 39.842098, 60.516418>,  <26.605604, 39.708565, 60.218803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837109, 39.842098, 60.516418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795460, -0.432110, -0.424881,
		0.179667, 0.837757, -0.515638,
		0.578759, 0.333832, 0.744039,
		27.010736, 39.942249, 60.739632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154182, 39.761318, 59.994457>,  <26.605604, 39.708565, 60.218803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154182, 39.761318, 59.994457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279716, 39.807598, 60.371418>,  <27.355036, 39.835365, 60.597595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279716, 39.807598, 60.371418>,  <27.154182, 39.761318, 59.994457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279716, 39.807598, 60.371418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835164, -0.505802, -0.216022,
		0.451675, 0.854855, -0.255366,
		0.313833, 0.115701, 0.942402,
		27.373867, 39.842308, 60.654140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901752, 39.955460, 60.015877>,  <27.154182, 39.761318, 59.994457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901752, 39.955460, 60.015877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796225, 39.745647, 60.339672>,  <27.732908, 39.619759, 60.533947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796225, 39.745647, 60.339672>,  <27.901752, 39.955460, 60.015877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796225, 39.745647, 60.339672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691888, -0.687644, -0.220085,
		0.672079, 0.502011, 0.544330,
		-0.263820, -0.524530, 0.809486,
		27.717079, 39.588287, 60.582520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518007, 39.766197, 60.215740>,  <27.901752, 39.955460, 60.015877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518007, 39.766197, 60.215740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274727, 39.507694, 60.400105>,  <28.128759, 39.352592, 60.510723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274727, 39.507694, 60.400105>,  <28.518007, 39.766197, 60.215740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274727, 39.507694, 60.400105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645062, -0.740778, -0.187466,
		0.462586, 0.183301, 0.867419,
		-0.608202, -0.646258, 0.460914,
		28.092266, 39.313816, 60.538380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915665, 39.390369, 60.753639>,  <28.518007, 39.766197, 60.215740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915665, 39.390369, 60.753639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592527, 39.163284, 60.690281>,  <28.398645, 39.027031, 60.652267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592527, 39.163284, 60.690281>,  <28.915665, 39.390369, 60.753639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592527, 39.163284, 60.690281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587945, -0.795071, -0.148942,
		-0.041378, -0.213449, 0.976078,
		-0.807842, -0.567717, -0.158395,
		28.350174, 38.992970, 60.642761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108107, 38.847530, 61.135303>,  <28.915665, 39.390369, 60.753639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108107, 38.847530, 61.135303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825651, 38.732422, 60.876518>,  <28.656178, 38.663357, 60.721249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825651, 38.732422, 60.876518>,  <29.108107, 38.847530, 61.135303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825651, 38.732422, 60.876518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552961, -0.794816, -0.250002,
		-0.442274, -0.534281, 0.720374,
		-0.706136, -0.287769, -0.646962,
		28.613810, 38.646091, 60.682430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031773, 38.099751, 61.280689>,  <29.108107, 38.847530, 61.135303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031773, 38.099751, 61.280689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900810, 38.174725, 60.910248>,  <28.822233, 38.219707, 60.687981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900810, 38.174725, 60.910248>,  <29.031773, 38.099751, 61.280689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900810, 38.174725, 60.910248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564364, -0.747300, -0.350766,
		-0.757825, -0.637504, 0.138889,
		-0.327407, 0.187435, -0.926106,
		28.802588, 38.230953, 60.632416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870365, 37.495132, 61.138592>,  <29.031773, 38.099751, 61.280689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870365, 37.495132, 61.138592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882833, 37.676682, 60.782383>,  <28.890314, 37.785610, 60.568657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882833, 37.676682, 60.782383>,  <28.870365, 37.495132, 61.138592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882833, 37.676682, 60.782383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600892, -0.720479, -0.346178,
		-0.798722, -0.524316, -0.295188,
		0.031170, 0.453876, -0.890520,
		28.892185, 37.812843, 60.515228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842705, 37.002071, 60.659344>,  <28.870365, 37.495132, 61.138592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842705, 37.002071, 60.659344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005514, 37.291267, 60.436054>,  <29.103199, 37.464787, 60.302078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005514, 37.291267, 60.436054>,  <28.842705, 37.002071, 60.659344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005514, 37.291267, 60.436054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362511, -0.688808, -0.627797,
		-0.838403, 0.053164, -0.542452,
		0.407022, 0.722992, -0.558226,
		29.127621, 37.508163, 60.268585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687382, 36.828472, 59.965034>,  <28.842705, 37.002071, 60.659344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687382, 36.828472, 59.965034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009666, 37.064487, 59.944324>,  <29.203037, 37.206097, 59.931900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009666, 37.064487, 59.944324>,  <28.687382, 36.828472, 59.965034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009666, 37.064487, 59.944324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449645, -0.666205, -0.594970,
		-0.385546, 0.456097, -0.802078,
		0.805713, 0.590039, -0.051771,
		29.251381, 37.241501, 59.928795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907383, 36.894966, 59.246201>,  <28.687382, 36.828472, 59.965034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907383, 36.894966, 59.246201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229046, 36.982315, 59.467339>,  <29.422045, 37.034725, 59.600021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229046, 36.982315, 59.467339>,  <28.907383, 36.894966, 59.246201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229046, 36.982315, 59.467339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558790, -0.594863, -0.577833,
		0.202684, 0.773595, -0.600391,
		0.804160, 0.218375, 0.552847,
		29.470293, 37.047829, 59.633194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505333, 37.006771, 58.742474>,  <28.907383, 36.894966, 59.246201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505333, 37.006771, 58.742474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657244, 36.956730, 59.109104>,  <29.748390, 36.926704, 59.329082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657244, 36.956730, 59.109104>,  <29.505333, 37.006771, 58.742474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657244, 36.956730, 59.109104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751686, -0.535785, -0.384580,
		0.539201, 0.835036, -0.109442,
		0.379776, -0.125100, 0.916581,
		29.771177, 36.919201, 59.384079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261246, 37.076225, 58.585835>,  <29.505333, 37.006771, 58.742474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261246, 37.076225, 58.585835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244593, 36.910969, 58.949722>,  <30.234602, 36.811817, 59.168053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244593, 36.910969, 58.949722>,  <30.261246, 37.076225, 58.585835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244593, 36.910969, 58.949722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612092, -0.730187, -0.303595,
		0.789690, 0.544191, 0.283277,
		-0.041631, -0.413138, 0.909717,
		30.232103, 36.787029, 59.222637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936268, 36.909496, 58.874603>,  <30.261246, 37.076225, 58.585835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936268, 36.909496, 58.874603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671146, 36.660698, 59.041367>,  <30.512074, 36.511417, 59.141426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671146, 36.660698, 59.041367>,  <30.936268, 36.909496, 58.874603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671146, 36.660698, 59.041367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582795, -0.778098, -0.234337,
		0.470152, 0.087654, 0.878222,
		-0.662802, -0.621997, 0.416909,
		30.472305, 36.474098, 59.166439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347942, 36.371269, 59.234428>,  <30.936268, 36.909496, 58.874603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347942, 36.371269, 59.234428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983255, 36.206955, 59.232136>,  <30.764444, 36.108368, 59.230759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983255, 36.206955, 59.232136>,  <31.347942, 36.371269, 59.234428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983255, 36.206955, 59.232136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401038, -0.886886, -0.229351,
		0.089128, -0.211402, 0.973327,
		-0.911716, -0.410782, -0.005733,
		30.709742, 36.083721, 59.230415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405354, 35.872925, 59.564041>,  <31.347942, 36.371269, 59.234428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405354, 35.872925, 59.564041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085676, 35.790268, 59.338268>,  <30.893869, 35.740673, 59.202805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085676, 35.790268, 59.338268>,  <31.405354, 35.872925, 59.564041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085676, 35.790268, 59.338268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380685, -0.900717, -0.209257,
		-0.465154, -0.382109, 0.798514,
		-0.799194, -0.206646, -0.564435,
		30.845919, 35.728275, 59.168938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272667, 35.195503, 59.719444>,  <31.405354, 35.872925, 59.564041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272667, 35.195503, 59.719444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097466, 35.273102, 59.368328>,  <30.992346, 35.319660, 59.157658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097466, 35.273102, 59.368328>,  <31.272667, 35.195503, 59.719444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097466, 35.273102, 59.368328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426805, -0.814499, -0.392974,
		-0.791198, -0.546769, 0.273953,
		-0.438000, 0.193996, -0.877793,
		30.966064, 35.331299, 59.104992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116119, 34.493507, 59.386654>,  <31.272667, 35.195503, 59.719444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116119, 34.493507, 59.386654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124456, 34.770359, 59.098064>,  <31.129457, 34.936470, 58.924911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124456, 34.770359, 59.098064>,  <31.116119, 34.493507, 59.386654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124456, 34.770359, 59.098064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420797, -0.660673, -0.621643,
		-0.906916, -0.290639, -0.305014,
		0.020841, 0.692127, -0.721475,
		31.130709, 34.977997, 58.881622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810160, 34.180428, 58.684254>,  <31.116119, 34.493507, 59.386654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810160, 34.180428, 58.684254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043781, 34.475121, 58.547955>,  <31.183954, 34.651936, 58.466175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043781, 34.475121, 58.547955>,  <30.810160, 34.180428, 58.684254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043781, 34.475121, 58.547955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447698, -0.642535, -0.621865,
		-0.677088, 0.210652, -0.705108,
		0.584053, 0.736732, -0.340744,
		31.218998, 34.696140, 58.445732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876839, 33.998688, 58.008610>,  <30.810160, 34.180428, 58.684254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876839, 33.998688, 58.008610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173939, 34.263458, 58.048969>,  <31.352198, 34.422321, 58.073185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173939, 34.263458, 58.048969>,  <30.876839, 33.998688, 58.008610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173939, 34.263458, 58.048969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520351, -0.475791, -0.709125,
		-0.421379, 0.579205, -0.697826,
		0.742748, 0.661925, 0.100902,
		31.396763, 34.462036, 58.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.276478, 36.087559, 52.908230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.393826, 35.821430, 52.633629>,  <47.464233, 35.661755, 52.468868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.393826, 35.821430, 52.633629>,  <47.276478, 36.087559, 52.908230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.393826, 35.821430, 52.633629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946593, -0.101679, -0.305980,
		0.133772, 0.739602, -0.659616,
		0.293373, -0.665319, -0.686500,
		47.481838, 35.621834, 52.427677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.967720, 36.261620, 52.224243>,  <47.276478, 36.087559, 52.908230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.967720, 36.261620, 52.224243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.046272, 35.869438, 52.219456>,  <47.093403, 35.634129, 52.216583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.046272, 35.869438, 52.219456>,  <46.967720, 36.261620, 52.224243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046272, 35.869438, 52.219456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900474, -0.175503, -0.397927,
		0.388049, 0.088923, -0.917339,
		0.196380, -0.980455, -0.011970,
		47.105186, 35.575302, 52.215866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.761467, 36.136204, 51.618717>,  <46.967720, 36.261620, 52.224243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.761467, 36.136204, 51.618717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.774841, 35.772106, 51.783802>,  <46.782867, 35.553646, 51.882851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.774841, 35.772106, 51.783802>,  <46.761467, 36.136204, 51.618717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774841, 35.772106, 51.783802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912366, -0.196376, -0.359199,
		0.408007, -0.364533, -0.837046,
		0.033436, -0.910249, 0.412710,
		46.784870, 35.499031, 51.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.637554, 35.757835, 51.100044>,  <46.761467, 36.136204, 51.618717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.637554, 35.757835, 51.100044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.553738, 35.530632, 51.418407>,  <46.503448, 35.394310, 51.609425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.553738, 35.530632, 51.418407>,  <46.637554, 35.757835, 51.100044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553738, 35.530632, 51.418407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882460, -0.240726, -0.404123,
		0.421139, -0.787032, -0.450803,
		-0.209538, -0.568008, 0.795903,
		46.490875, 35.360229, 51.657177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417614, 35.090714, 50.862934>,  <46.637554, 35.757835, 51.100044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417614, 35.090714, 50.862934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.283279, 35.113750, 51.238998>,  <46.202679, 35.127575, 51.464638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.283279, 35.113750, 51.238998>,  <46.417614, 35.090714, 50.862934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283279, 35.113750, 51.238998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855188, -0.437005, -0.278710,
		0.394802, -0.897613, 0.196016,
		-0.335834, 0.057595, 0.940159,
		46.182529, 35.131027, 51.521046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059372, 34.415127, 51.012672>,  <46.417614, 35.090714, 50.862934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059372, 34.415127, 51.012672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.932240, 34.699142, 51.264011>,  <45.855961, 34.869553, 51.414814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.932240, 34.699142, 51.264011>,  <46.059372, 34.415127, 51.012672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932240, 34.699142, 51.264011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926176, -0.374341, -0.045463,
		0.202937, -0.596414, 0.776600,
		-0.317828, 0.710042, 0.628352,
		45.836891, 34.912155, 51.452518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660576, 34.113705, 51.582581>,  <46.059372, 34.415127, 51.012672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660576, 34.113705, 51.582581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.534389, 34.493279, 51.582855>,  <45.458675, 34.721024, 51.583019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.534389, 34.493279, 51.582855>,  <45.660576, 34.113705, 51.582581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534389, 34.493279, 51.582855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948931, -0.315465, -0.003333,
		-0.002947, -0.001701, 0.999994,
		-0.315469, 0.948936, 0.000684,
		45.439751, 34.777958, 51.583061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042542, 34.111843, 51.982635>,  <45.660576, 34.113705, 51.582581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042542, 34.111843, 51.982635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.021580, 34.450245, 51.770397>,  <45.009003, 34.653286, 51.643055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.021580, 34.450245, 51.770397>,  <45.042542, 34.111843, 51.982635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021580, 34.450245, 51.770397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980411, -0.144605, -0.133728,
		-0.189862, 0.513197, 0.837008,
		-0.052407, 0.846002, -0.530599,
		45.005859, 34.704044, 51.611217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290291, 34.310860, 52.044765>,  <45.042542, 34.111843, 51.982635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290291, 34.310860, 52.044765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.404457, 34.555805, 51.749863>,  <44.472958, 34.702770, 51.572922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.404457, 34.555805, 51.749863>,  <44.290291, 34.310860, 52.044765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404457, 34.555805, 51.749863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904938, -0.081155, -0.417734,
		-0.315637, 0.786402, 0.530985,
		0.285415, 0.612361, -0.737260,
		44.490082, 34.739513, 51.528683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768379, 34.912407, 51.982719>,  <44.290291, 34.310860, 52.044765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768379, 34.912407, 51.982719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.947216, 34.892250, 51.625492>,  <44.054520, 34.880157, 51.411156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.947216, 34.892250, 51.625492>,  <43.768379, 34.912407, 51.982719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947216, 34.892250, 51.625492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894283, -0.003923, -0.447484,
		0.019044, 0.998722, -0.046816,
		0.447096, -0.050389, -0.893066,
		44.081345, 34.877132, 51.357571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442020, 35.387783, 51.613625>,  <43.768379, 34.912407, 51.982719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442020, 35.387783, 51.613625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.606098, 35.137474, 51.348251>,  <43.704544, 34.987289, 51.189026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.606098, 35.137474, 51.348251>,  <43.442020, 35.387783, 51.613625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606098, 35.137474, 51.348251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875498, -0.066462, -0.478629,
		0.255422, 0.777166, -0.575128,
		0.410198, -0.625776, -0.663432,
		43.729156, 34.949741, 51.149223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069054, 35.555069, 51.047173>,  <43.442020, 35.387783, 51.613625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069054, 35.555069, 51.047173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.241100, 35.207077, 50.950722>,  <43.344326, 34.998283, 50.892853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.241100, 35.207077, 50.950722>,  <43.069054, 35.555069, 51.047173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241100, 35.207077, 50.950722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833292, -0.279831, -0.476780,
		0.347314, 0.405995, -0.845305,
		0.430113, -0.869978, -0.241123,
		43.370132, 34.946083, 50.878384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977215, 35.409801, 50.386868>,  <43.069054, 35.555069, 51.047173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977215, 35.409801, 50.386868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.015232, 35.043072, 50.541996>,  <43.038044, 34.823036, 50.635075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.015232, 35.043072, 50.541996>,  <42.977215, 35.409801, 50.386868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015232, 35.043072, 50.541996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875832, -0.262191, -0.405185,
		0.473165, -0.301154, -0.827902,
		0.095045, -0.916822, 0.387820,
		43.043747, 34.768024, 50.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737839, 34.925556, 49.869564>,  <42.977215, 35.409801, 50.386868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737839, 34.925556, 49.869564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709518, 34.745983, 50.225868>,  <42.692528, 34.638241, 50.439651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709518, 34.745983, 50.225868>,  <42.737839, 34.925556, 49.869564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709518, 34.745983, 50.225868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931697, -0.289186, -0.219799,
		0.356270, -0.845476, -0.397797,
		-0.070798, -0.448934, 0.890756,
		42.688278, 34.611301, 50.493095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365639, 34.328178, 49.657364>,  <42.737839, 34.925556, 49.869564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365639, 34.328178, 49.657364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341145, 34.327251, 50.056614>,  <42.326447, 34.326694, 50.296162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.341145, 34.327251, 50.056614>,  <42.365639, 34.328178, 49.657364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341145, 34.327251, 50.056614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924886, -0.375853, -0.057616,
		0.375280, -0.926676, 0.020873,
		-0.061237, -0.002317, 0.998120,
		42.322773, 34.326557, 50.356049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108257, 33.608849, 49.835957>,  <42.365639, 34.328178, 49.657364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108257, 33.608849, 49.835957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.028046, 33.870712, 50.127491>,  <41.979919, 34.027832, 50.302410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.028046, 33.870712, 50.127491>,  <42.108257, 33.608849, 49.835957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028046, 33.870712, 50.127491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921014, -0.379567, 0.087532,
		0.333946, -0.653716, 0.679069,
		-0.200531, 0.654663, 0.728837,
		41.967888, 34.067112, 50.346142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985481, 33.268013, 50.403927>,  <42.108257, 33.608849, 49.835957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985481, 33.268013, 50.403927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.786716, 33.612537, 50.446301>,  <41.667458, 33.819252, 50.471725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.786716, 33.612537, 50.446301>,  <41.985481, 33.268013, 50.403927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786716, 33.612537, 50.446301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859245, -0.505435, 0.078949,
		0.121543, -0.051794, 0.991234,
		-0.496915, 0.861309, 0.105936,
		41.637642, 33.870930, 50.478081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436913, 33.100704, 50.808846>,  <41.985481, 33.268013, 50.403927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436913, 33.100704, 50.808846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.328892, 33.452629, 50.652382>,  <41.264080, 33.663784, 50.558502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.328892, 33.452629, 50.652382>,  <41.436913, 33.100704, 50.808846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328892, 33.452629, 50.652382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961239, -0.269818, 0.056735,
		-0.055626, 0.391321, 0.918571,
		-0.270049, 0.879810, -0.391162,
		41.247875, 33.716572, 50.535034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885208, 33.352837, 51.288635>,  <41.436913, 33.100704, 50.808846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885208, 33.352837, 51.288635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.825119, 33.568642, 50.957249>,  <40.789066, 33.698124, 50.758415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.825119, 33.568642, 50.957249>,  <40.885208, 33.352837, 51.288635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825119, 33.568642, 50.957249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962049, -0.272858, -0.003243,
		-0.227804, 0.796542, 0.560024,
		-0.150223, 0.539510, -0.828470,
		40.780052, 33.730495, 50.708706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261013, 33.787136, 51.452335>,  <40.885208, 33.352837, 51.288635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261013, 33.787136, 51.452335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302315, 33.751301, 51.056091>,  <40.327095, 33.729797, 50.818344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.302315, 33.751301, 51.056091>,  <40.261013, 33.787136, 51.452335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302315, 33.751301, 51.056091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930583, -0.360371, -0.064401,
		-0.351219, 0.928497, -0.120582,
		0.103250, -0.089592, -0.990612,
		40.333290, 33.724422, 50.758907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566132, 33.990139, 51.212849>,  <40.261013, 33.787136, 51.452335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566132, 33.990139, 51.212849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.766041, 33.757530, 50.956081>,  <39.885986, 33.617966, 50.802021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.766041, 33.757530, 50.956081>,  <39.566132, 33.990139, 51.212849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766041, 33.757530, 50.956081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800107, -0.593806, -0.084989,
		-0.331752, 0.556079, -0.762048,
		0.499769, -0.581524, -0.641919,
		39.915970, 33.583073, 50.763504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990696, 33.703659, 50.884529>,  <39.566132, 33.990139, 51.212849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990696, 33.703659, 50.884529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298458, 33.482258, 50.757000>,  <39.483116, 33.349415, 50.680481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298458, 33.482258, 50.757000>,  <38.990696, 33.703659, 50.884529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298458, 33.482258, 50.757000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638441, -0.682202, -0.356361,
		-0.020256, 0.477736, -0.878270,
		0.769404, -0.553505, -0.318825,
		39.529278, 33.316208, 50.661354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715614, 33.451820, 50.246147>,  <38.990696, 33.703659, 50.884529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715614, 33.451820, 50.246147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019905, 33.202820, 50.319664>,  <39.202480, 33.053421, 50.363773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.019905, 33.202820, 50.319664>,  <38.715614, 33.451820, 50.246147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019905, 33.202820, 50.319664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462735, -0.718715, -0.518966,
		0.455154, 0.309745, -0.834801,
		0.760731, -0.622501, 0.183796,
		39.248123, 33.016071, 50.374802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307758, 33.271755, 49.606121>,  <38.715614, 33.451820, 50.246147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307758, 33.271755, 49.606121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423145, 33.165642, 49.238117>,  <38.492378, 33.101974, 49.017315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423145, 33.165642, 49.238117>,  <38.307758, 33.271755, 49.606121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423145, 33.165642, 49.238117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931677, -0.299372, -0.205803,
		-0.220828, 0.916516, -0.333517,
		0.288467, -0.265283, -0.920006,
		38.509686, 33.086056, 48.962116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618092, 33.496502, 49.212120>,  <38.307758, 33.271755, 49.606121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618092, 33.496502, 49.212120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876423, 33.291344, 48.985901>,  <38.031422, 33.168251, 48.850170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.876423, 33.291344, 48.985901>,  <37.618092, 33.496502, 49.212120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876423, 33.291344, 48.985901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761793, -0.383646, -0.522002,
		0.050759, 0.767957, -0.638487,
		0.645829, -0.512892, -0.565550,
		38.070171, 33.137478, 48.816235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645248, 33.753990, 48.415390>,  <37.618092, 33.496502, 49.212120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645248, 33.753990, 48.415390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714149, 33.361889, 48.454239>,  <37.755489, 33.126629, 48.477547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.714149, 33.361889, 48.454239>,  <37.645248, 33.753990, 48.415390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714149, 33.361889, 48.454239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902174, -0.196578, -0.383978,
		0.395487, -0.021478, -0.918220,
		0.172255, -0.980253, 0.097121,
		37.765827, 33.067814, 48.483376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334408, 33.443607, 47.787384>,  <37.645248, 33.753990, 48.415390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334408, 33.443607, 47.787384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357082, 33.169758, 48.078060>,  <37.370689, 33.005447, 48.252464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.357082, 33.169758, 48.078060>,  <37.334408, 33.443607, 47.787384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357082, 33.169758, 48.078060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874530, -0.385186, -0.294668,
		0.481646, -0.618804, -0.620564,
		0.056691, -0.684627, 0.726686,
		37.374088, 32.964371, 48.296066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135998, 32.826302, 47.523994>,  <37.334408, 33.443607, 47.787384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135998, 32.826302, 47.523994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.075619, 32.760132, 47.913834>,  <37.039391, 32.720432, 48.147739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.075619, 32.760132, 47.913834>,  <37.135998, 32.826302, 47.523994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075619, 32.760132, 47.913834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931096, -0.307397, -0.196387,
		0.332076, -0.937093, -0.107623,
		-0.150950, -0.165422, 0.974602,
		37.030334, 32.710506, 48.206215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730995, 32.219765, 47.515373>,  <37.135998, 32.826302, 47.523994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730995, 32.219765, 47.515373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694561, 32.406258, 47.867359>,  <36.672699, 32.518154, 48.078548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694561, 32.406258, 47.867359>,  <36.730995, 32.219765, 47.515373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694561, 32.406258, 47.867359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937808, -0.337406, 0.081692,
		0.334991, -0.817794, 0.467969,
		-0.091088, 0.466231, 0.879961,
		36.667236, 32.546127, 48.131348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276993, 31.736204, 47.731976>,  <36.730995, 32.219765, 47.515373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276993, 31.736204, 47.731976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230442, 32.032188, 47.996979>,  <36.202511, 32.209778, 48.155979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230442, 32.032188, 47.996979>,  <36.276993, 31.736204, 47.731976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230442, 32.032188, 47.996979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967906, -0.234089, 0.091431,
		0.222741, -0.630603, 0.743456,
		-0.116379, 0.739961, 0.662506,
		36.195530, 32.254177, 48.195732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037506, 31.485067, 48.313736>,  <36.276993, 31.736204, 47.731976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037506, 31.485067, 48.313736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.940323, 31.872322, 48.338005>,  <35.882011, 32.104675, 48.352566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.940323, 31.872322, 48.338005>,  <36.037506, 31.485067, 48.313736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940323, 31.872322, 48.338005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967584, -0.246314, 0.055773,
		0.068941, -0.045158, 0.996598,
		-0.242958, 0.968137, 0.060675,
		35.867435, 32.162762, 48.356209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571964, 31.361416, 48.810474>,  <36.037506, 31.485067, 48.313736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571964, 31.361416, 48.810474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497334, 31.731419, 48.678082>,  <35.452553, 31.953421, 48.598644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497334, 31.731419, 48.678082>,  <35.571964, 31.361416, 48.810474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497334, 31.731419, 48.678082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975125, -0.215400, -0.052291,
		-0.119663, 0.312992, 0.942187,
		-0.186581, 0.925007, -0.330981,
		35.441360, 32.008923, 48.578789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960949, 31.662144, 49.119968>,  <35.571964, 31.361416, 48.810474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960949, 31.662144, 49.119968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.995586, 31.918432, 48.814819>,  <35.016369, 32.072205, 48.631729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.995586, 31.918432, 48.814819>,  <34.960949, 31.662144, 49.119968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995586, 31.918432, 48.814819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987474, -0.046187, -0.150874,
		-0.131903, 0.766385, 0.628694,
		0.086590, 0.640720, -0.762877,
		35.021564, 32.110649, 48.585957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485195, 32.285927, 49.241318>,  <34.960949, 31.662144, 49.119968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485195, 32.285927, 49.241318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.550560, 32.209637, 48.854137>,  <34.589779, 32.163864, 48.621830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.550560, 32.209637, 48.854137>,  <34.485195, 32.285927, 49.241318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550560, 32.209637, 48.854137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983917, 0.040239, -0.174037,
		0.072142, 0.980818, -0.181083,
		0.163412, -0.190726, -0.967946,
		34.599583, 32.152420, 48.563755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564003, 32.864590, 49.857651>,  <34.485195, 32.285927, 49.241318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564003, 32.864590, 49.857651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.836052, 33.096382, 50.037266>,  <34.999283, 33.235458, 50.145035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.836052, 33.096382, 50.037266>,  <34.564003, 32.864590, 49.857651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836052, 33.096382, 50.037266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593597, 0.794752, -0.126541,
		-0.430202, -0.180484, 0.884507,
		0.680124, 0.579479, 0.449038,
		35.040089, 33.270226, 50.171978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.735340, 30.548538, 53.476772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957977, 30.869562, 53.390892>,  <31.091560, 31.062178, 53.339363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.957977, 30.869562, 53.390892>,  <30.735340, 30.548538, 53.476772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957977, 30.869562, 53.390892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003639, -0.260789, -0.965389,
		-0.830776, 0.536549, -0.148074,
		0.556595, 0.802561, -0.214704,
		31.124956, 31.110331, 53.326481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566721, 30.789011, 52.798050>,  <30.735340, 30.548538, 53.476772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566721, 30.789011, 52.798050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.907774, 30.995716, 52.828968>,  <31.112406, 31.119740, 52.847519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.907774, 30.995716, 52.828968>,  <30.566721, 30.789011, 52.798050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907774, 30.995716, 52.828968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116722, -0.044175, -0.992182,
		-0.509309, 0.854988, -0.097983,
		0.852631, 0.516764, 0.077297,
		31.163563, 31.150745, 52.852158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501740, 31.417376, 52.373451>,  <30.566721, 30.789011, 52.798050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501740, 31.417376, 52.373451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891327, 31.342354, 52.424374>,  <31.125080, 31.297340, 52.454926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.891327, 31.342354, 52.424374>,  <30.501740, 31.417376, 52.373451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891327, 31.342354, 52.424374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122954, -0.034707, -0.991805,
		0.190435, 0.981641, -0.010743,
		0.973970, -0.187553, 0.127306,
		31.183517, 31.286087, 52.462566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922642, 31.853378, 51.998001>,  <30.501740, 31.417376, 52.373451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922642, 31.853378, 51.998001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144558, 31.524857, 52.051170>,  <31.277708, 31.327744, 52.083073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144558, 31.524857, 52.051170>,  <30.922642, 31.853378, 51.998001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144558, 31.524857, 52.051170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364870, 0.096597, -0.926034,
		0.747716, 0.562252, 0.353261,
		0.554789, -0.821305, 0.132922,
		31.310995, 31.278465, 52.091045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413998, 31.955740, 51.434597>,  <30.922642, 31.853378, 51.998001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413998, 31.955740, 51.434597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518599, 31.585726, 51.544815>,  <31.581360, 31.363718, 51.610947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518599, 31.585726, 51.544815>,  <31.413998, 31.955740, 51.434597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518599, 31.585726, 51.544815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406394, -0.153417, -0.900726,
		0.875477, 0.347522, 0.335810,
		0.261503, -0.925036, 0.275544,
		31.597050, 31.308214, 51.627480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110657, 31.830666, 51.314465>,  <31.413998, 31.955740, 51.434597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110657, 31.830666, 51.314465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975134, 31.454405, 51.322361>,  <31.893820, 31.228649, 51.327099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.975134, 31.454405, 51.322361>,  <32.110657, 31.830666, 51.314465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975134, 31.454405, 51.322361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459627, -0.183783, -0.868888,
		0.820947, -0.285311, 0.494615,
		-0.338805, -0.940650, 0.019740,
		31.873493, 31.172211, 51.328281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670399, 31.347862, 51.175140>,  <32.110657, 31.830666, 51.314465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670399, 31.347862, 51.175140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333202, 31.161993, 51.066734>,  <32.130886, 31.050470, 51.001690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333202, 31.161993, 51.066734>,  <32.670399, 31.347862, 51.175140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333202, 31.161993, 51.066734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370099, -0.135376, -0.919076,
		0.390382, -0.875072, 0.286096,
		-0.842988, -0.464674, -0.271015,
		32.080307, 31.022591, 50.985432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875618, 30.854548, 50.792252>,  <32.670399, 31.347862, 51.175140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875618, 30.854548, 50.792252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489101, 30.838652, 50.690502>,  <32.257191, 30.829115, 50.629452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489101, 30.838652, 50.690502>,  <32.875618, 30.854548, 50.792252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489101, 30.838652, 50.690502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256406, -0.237873, -0.936842,
		-0.023279, -0.970483, 0.240043,
		-0.966289, -0.039739, -0.254375,
		32.199215, 30.826731, 50.614189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816544, 30.236389, 50.313595>,  <32.875618, 30.854548, 50.792252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816544, 30.236389, 50.313595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498531, 30.471071, 50.252018>,  <32.307724, 30.611879, 50.215073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.498531, 30.471071, 50.252018>,  <32.816544, 30.236389, 50.313595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498531, 30.471071, 50.252018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099176, -0.124647, -0.987232,
		-0.598401, -0.800152, 0.040912,
		-0.795035, 0.586703, -0.153944,
		32.260021, 30.647081, 50.205833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520084, 29.925684, 49.672905>,  <32.816544, 30.236389, 50.313595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520084, 29.925684, 49.672905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375938, 30.296650, 49.712978>,  <32.289452, 30.519230, 49.737022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375938, 30.296650, 49.712978>,  <32.520084, 29.925684, 49.672905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375938, 30.296650, 49.712978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234566, 0.194046, -0.952536,
		-0.902836, -0.319764, -0.287468,
		-0.360369, 0.927414, 0.100185,
		32.267826, 30.574875, 49.743034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046932, 29.883615, 49.150394>,  <32.520084, 29.925684, 49.672905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046932, 29.883615, 49.150394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.104843, 30.271856, 49.227306>,  <32.139591, 30.504801, 49.273453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.104843, 30.271856, 49.227306>,  <32.046932, 29.883615, 49.150394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104843, 30.271856, 49.227306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214975, 0.158828, -0.963618,
		-0.965829, 0.180844, -0.185661,
		0.144776, 0.970602, 0.192278,
		32.148277, 30.563038, 49.284988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542362, 30.280378, 48.794739>,  <32.046932, 29.883615, 49.150394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542362, 30.280378, 48.794739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.885132, 30.473808, 48.866104>,  <32.090794, 30.589867, 48.908924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.885132, 30.473808, 48.866104>,  <31.542362, 30.280378, 48.794739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885132, 30.473808, 48.866104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177989, 0.047235, -0.982898,
		-0.483735, 0.874026, -0.045594,
		0.856925, 0.483577, 0.178416,
		32.142208, 30.618881, 48.919628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601156, 30.784756, 48.321167>,  <31.542362, 30.280378, 48.794739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601156, 30.784756, 48.321167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.987104, 30.708200, 48.393166>,  <32.218674, 30.662268, 48.436363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.987104, 30.708200, 48.393166>,  <31.601156, 30.784756, 48.321167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987104, 30.708200, 48.393166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221490, 0.224049, -0.949076,
		0.141315, 0.955601, 0.258568,
		0.964869, -0.191389, 0.179995,
		32.276566, 30.650784, 48.447163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435804, 31.467049, 48.201637>,  <31.601156, 30.784756, 48.321167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435804, 31.467049, 48.201637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444300, 31.647800, 47.844906>,  <31.449398, 31.756252, 47.630867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444300, 31.647800, 47.844906>,  <31.435804, 31.467049, 48.201637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444300, 31.647800, 47.844906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197243, 0.876389, 0.439360,
		0.980125, 0.166575, 0.107744,
		0.021239, 0.451879, -0.891827,
		31.450672, 31.783363, 47.577358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701656, 32.068481, 48.345535>,  <31.435804, 31.467049, 48.201637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701656, 32.068481, 48.345535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565125, 32.132645, 47.975075>,  <31.483206, 32.171143, 47.752796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.565125, 32.132645, 47.975075>,  <31.701656, 32.068481, 48.345535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565125, 32.132645, 47.975075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275534, 0.924968, 0.261754,
		0.898651, 0.344532, -0.271520,
		-0.341330, 0.160412, -0.926154,
		31.462725, 32.180767, 47.697227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027840, 32.665592, 48.130295>,  <31.701656, 32.068481, 48.345535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027840, 32.665592, 48.130295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699287, 32.637634, 47.903862>,  <31.502157, 32.620861, 47.768002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.699287, 32.637634, 47.903862>,  <32.027840, 32.665592, 48.130295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699287, 32.637634, 47.903862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304919, 0.892552, 0.332229,
		0.482038, 0.445496, -0.754435,
		-0.821379, -0.069894, -0.566084,
		31.452873, 32.616665, 47.734035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879789, 33.357891, 47.843636>,  <32.027840, 32.665592, 48.130295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879789, 33.357891, 47.843636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.524942, 33.181347, 47.789631>,  <31.312035, 33.075420, 47.757229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.524942, 33.181347, 47.789631>,  <31.879789, 33.357891, 47.843636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524942, 33.181347, 47.789631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461431, 0.854649, 0.238027,
		0.010337, 0.273458, -0.961828,
		-0.887116, -0.441357, -0.135016,
		31.258808, 33.048939, 47.749126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547228, 33.739708, 47.359661>,  <31.879789, 33.357891, 47.843636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547228, 33.739708, 47.359661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269218, 33.563358, 47.586842>,  <31.102413, 33.457550, 47.723152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269218, 33.563358, 47.586842>,  <31.547228, 33.739708, 47.359661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269218, 33.563358, 47.586842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558140, 0.828798, -0.039668,
		-0.453231, -0.344569, -0.822103,
		-0.695026, -0.440870, 0.567955,
		31.060711, 33.431099, 47.757229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908152, 34.108921, 47.154263>,  <31.547228, 33.739708, 47.359661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908152, 34.108921, 47.154263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.804844, 33.919949, 47.491333>,  <30.742859, 33.806564, 47.693577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.804844, 33.919949, 47.491333>,  <30.908152, 34.108921, 47.154263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804844, 33.919949, 47.491333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709192, 0.685026, 0.166689,
		-0.656005, -0.554568, -0.511968,
		-0.258271, -0.472433, 0.842676,
		30.727362, 33.778217, 47.744137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174891, 34.103863, 47.089008>,  <30.908152, 34.108921, 47.154263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174891, 34.103863, 47.089008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.239346, 34.053539, 47.480560>,  <30.278019, 34.023346, 47.715492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.239346, 34.053539, 47.480560>,  <30.174891, 34.103863, 47.089008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239346, 34.053539, 47.480560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644814, 0.737458, 0.200923,
		-0.747161, -0.663573, 0.037709,
		0.161136, -0.125806, 0.978881,
		30.287685, 34.015797, 47.774223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506781, 34.144360, 47.467407>,  <30.174891, 34.103863, 47.089008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506781, 34.144360, 47.467407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768272, 34.197525, 47.765392>,  <29.925167, 34.229424, 47.944183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768272, 34.197525, 47.765392>,  <29.506781, 34.144360, 47.467407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768272, 34.197525, 47.765392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451024, 0.858924, 0.242541,
		-0.607629, -0.494553, 0.621453,
		0.653731, 0.132915, 0.744962,
		29.964392, 34.237400, 47.988880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135958, 34.184521, 48.131516>,  <29.506781, 34.144360, 47.467407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135958, 34.184521, 48.131516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.477253, 34.387455, 48.179844>,  <29.682030, 34.509216, 48.208839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.477253, 34.387455, 48.179844>,  <29.135958, 34.184521, 48.131516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477253, 34.387455, 48.179844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508384, 0.757437, 0.409677,
		0.116334, -0.410972, 0.904195,
		0.853236, 0.507337, 0.120817,
		29.733223, 34.539658, 48.216087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066040, 34.511002, 48.797718>,  <29.135958, 34.184521, 48.131516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066040, 34.511002, 48.797718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.384993, 34.691998, 48.638000>,  <29.576365, 34.800594, 48.542171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.384993, 34.691998, 48.638000>,  <29.066040, 34.511002, 48.797718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384993, 34.691998, 48.638000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262310, 0.855761, 0.445945,
		0.543485, -0.250850, 0.801061,
		0.797382, 0.452490, -0.399293,
		29.624207, 34.827744, 48.518211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288343, 35.033024, 49.272732>,  <29.066040, 34.511002, 48.797718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288343, 35.033024, 49.272732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.511400, 35.189121, 48.979679>,  <29.645235, 35.282780, 48.803848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.511400, 35.189121, 48.979679>,  <29.288343, 35.033024, 49.272732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511400, 35.189121, 48.979679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201683, 0.919846, 0.336462,
		0.805208, -0.039866, 0.591651,
		0.557641, 0.390248, -0.732627,
		29.678692, 35.306194, 48.759892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764242, 35.499493, 49.643677>,  <29.288343, 35.033024, 49.272732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764242, 35.499493, 49.643677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.693838, 35.609650, 49.265644>,  <29.651596, 35.675743, 49.038826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.693838, 35.609650, 49.265644>,  <29.764242, 35.499493, 49.643677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693838, 35.609650, 49.265644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149308, 0.941492, 0.302158,
		0.972999, 0.194291, -0.124595,
		-0.176012, 0.275397, -0.945080,
		29.641035, 35.692268, 48.982121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164396, 35.971333, 49.563156>,  <29.764242, 35.499493, 49.643677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164396, 35.971333, 49.563156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.889132, 36.036694, 49.280388>,  <29.723972, 36.075909, 49.110725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.889132, 36.036694, 49.280388>,  <30.164396, 35.971333, 49.563156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889132, 36.036694, 49.280388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045762, 0.962597, 0.267046,
		0.724113, 0.216121, -0.654944,
		-0.688161, 0.163400, -0.706919,
		29.682684, 36.085712, 49.068314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245115, 36.610779, 49.293621>,  <30.164396, 35.971333, 49.563156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245115, 36.610779, 49.293621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876583, 36.569595, 49.143661>,  <29.655464, 36.544884, 49.053684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.876583, 36.569595, 49.143661>,  <30.245115, 36.610779, 49.293621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876583, 36.569595, 49.143661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233037, 0.918121, 0.320542,
		0.311201, 0.382691, -0.869886,
		-0.921329, -0.102963, -0.374902,
		29.600183, 36.538708, 49.031193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029119, 37.239632, 48.894802>,  <30.245115, 36.610779, 49.293621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029119, 37.239632, 48.894802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.691696, 37.058353, 49.010056>,  <29.489243, 36.949585, 49.079208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.691696, 37.058353, 49.010056>,  <30.029119, 37.239632, 48.894802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691696, 37.058353, 49.010056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335006, 0.863402, 0.377237,
		-0.419742, 0.221692, -0.880153,
		-0.843556, -0.453199, 0.288138,
		29.438629, 36.922394, 49.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253883, 37.998745, 48.680668>,  <30.029119, 37.239632, 48.894802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253883, 37.998745, 48.680668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563999, 38.177750, 48.858952>,  <30.750069, 38.285152, 48.965923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563999, 38.177750, 48.858952>,  <30.253883, 37.998745, 48.680668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563999, 38.177750, 48.858952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578203, -0.218878, -0.785986,
		-0.254181, 0.867079, -0.428446,
		0.775289, 0.447512, 0.445713,
		30.796585, 38.312004, 48.992664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708055, 38.313061, 48.112564>,  <30.253883, 37.998745, 48.680668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708055, 38.313061, 48.112564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951891, 38.317856, 48.429615>,  <31.098192, 38.320732, 48.619846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.951891, 38.317856, 48.429615>,  <30.708055, 38.313061, 48.112564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951891, 38.317856, 48.429615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790377, -0.085989, -0.606556,
		0.060886, 0.996224, -0.061893,
		0.609587, 0.011988, 0.792628,
		31.134768, 38.321453, 48.667404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297928, 38.890114, 47.954254>,  <30.708055, 38.313061, 48.112564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297928, 38.890114, 47.954254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446486, 38.638142, 48.227093>,  <31.535620, 38.486958, 48.390797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446486, 38.638142, 48.227093>,  <31.297928, 38.890114, 47.954254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446486, 38.638142, 48.227093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915016, 0.123679, -0.383993,
		0.157527, 0.766742, 0.622328,
		0.371392, -0.629929, 0.682098,
		31.557903, 38.449162, 48.431721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957193, 39.179264, 48.053268>,  <31.297928, 38.890114, 47.954254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957193, 39.179264, 48.053268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980877, 38.808384, 48.201210>,  <31.995087, 38.585857, 48.289974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980877, 38.808384, 48.201210>,  <31.957193, 39.179264, 48.053268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980877, 38.808384, 48.201210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961392, -0.046778, -0.271177,
		0.268736, 0.371632, 0.888634,
		0.059210, -0.927201, 0.369855,
		31.998640, 38.530224, 48.312168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690662, 39.096279, 48.291767>,  <31.957193, 39.179264, 48.053268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690662, 39.096279, 48.291767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553654, 38.720478, 48.293308>,  <32.471451, 38.494999, 48.294231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.553654, 38.720478, 48.293308>,  <32.690662, 39.096279, 48.291767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553654, 38.720478, 48.293308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877281, -0.321298, -0.356576,
		0.336242, -0.118753, 0.934259,
		-0.342520, -0.939503, 0.003854,
		32.450897, 38.438625, 48.294464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164139, 38.695610, 48.707668>,  <32.690662, 39.096279, 48.291767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164139, 38.695610, 48.707668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995514, 38.443249, 48.447132>,  <32.894337, 38.291832, 48.290810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.995514, 38.443249, 48.447132>,  <33.164139, 38.695610, 48.707668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995514, 38.443249, 48.447132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901396, -0.369842, -0.225173,
		-0.098832, -0.682041, 0.724605,
		-0.421566, -0.630902, -0.651341,
		32.869045, 38.253979, 48.251728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424473, 38.014519, 48.757366>,  <33.164139, 38.695610, 48.707668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424473, 38.014519, 48.757366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274860, 37.967663, 48.389370>,  <33.185093, 37.939548, 48.168571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274860, 37.967663, 48.389370>,  <33.424473, 38.014519, 48.757366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274860, 37.967663, 48.389370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871011, -0.385049, -0.305087,
		-0.318503, -0.915431, 0.246050,
		-0.374027, -0.117142, -0.919990,
		33.162651, 37.932522, 48.113373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264484, 37.288052, 48.561436>,  <33.424473, 38.014519, 48.757366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264484, 37.288052, 48.561436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357784, 37.506290, 48.239460>,  <33.413765, 37.637234, 48.046276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357784, 37.506290, 48.239460>,  <33.264484, 37.288052, 48.561436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357784, 37.506290, 48.239460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762785, -0.616062, -0.196538,
		-0.603120, -0.568151, -0.559867,
		0.233249, 0.545594, -0.804936,
		33.427757, 37.669968, 47.997978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826855, 36.959312, 48.339718>,  <33.264484, 37.288052, 48.561436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826855, 36.959312, 48.339718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820072, 37.240242, 48.055054>,  <33.816002, 37.408798, 47.884254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.820072, 37.240242, 48.055054>,  <33.826855, 36.959312, 48.339718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820072, 37.240242, 48.055054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833303, -0.383419, -0.398242,
		-0.552557, -0.599780, -0.578744,
		-0.016956, 0.702320, -0.711659,
		33.814987, 37.450939, 47.841557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774475, 36.694538, 47.701481>,  <33.826855, 36.959312, 48.339718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774475, 36.694538, 47.701481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957607, 37.047981, 47.662239>,  <34.067486, 37.260048, 47.638695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.957607, 37.047981, 47.662239>,  <33.774475, 36.694538, 47.701481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957607, 37.047981, 47.662239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859890, -0.468136, -0.203565,
		-0.225798, 0.008839, -0.974134,
		0.457826, 0.883612, -0.098104,
		34.094955, 37.313065, 47.632809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129704, 36.654671, 46.985199>,  <33.774475, 36.694538, 47.701481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129704, 36.654671, 46.985199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314907, 36.941124, 47.194111>,  <34.426029, 37.112995, 47.319458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314907, 36.941124, 47.194111>,  <34.129704, 36.654671, 46.985199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314907, 36.941124, 47.194111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884698, -0.337398, -0.321670,
		-0.054144, 0.610993, -0.789782,
		0.463010, 0.716135, 0.522276,
		34.453812, 37.155964, 47.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517906, 37.165169, 46.593338>,  <34.129704, 36.654671, 46.985199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517906, 37.165169, 46.593338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706711, 37.076355, 46.934608>,  <34.819992, 37.023067, 47.139370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706711, 37.076355, 46.934608>,  <34.517906, 37.165169, 46.593338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706711, 37.076355, 46.934608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625711, -0.597372, -0.501630,
		0.621041, 0.770615, -0.143036,
		0.472010, -0.222034, 0.853175,
		34.848312, 37.009747, 47.190559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.920723, 40.720860, 53.870380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598181, 40.944389, 53.792912>,  <29.404655, 41.078506, 53.746429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598181, 40.944389, 53.792912>,  <29.920723, 40.720860, 53.870380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598181, 40.944389, 53.792912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204211, -0.570398, -0.795578,
		-0.555055, -0.601970, 0.574062,
		-0.806358, 0.558819, -0.193674,
		29.356274, 41.112038, 53.734810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447708, 40.197617, 53.679222>,  <29.920723, 40.720860, 53.870380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447708, 40.197617, 53.679222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338898, 40.540489, 53.504295>,  <29.273611, 40.746212, 53.399338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.338898, 40.540489, 53.504295>,  <29.447708, 40.197617, 53.679222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338898, 40.540489, 53.504295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246512, -0.501364, -0.829377,
		-0.930179, -0.117807, 0.347689,
		-0.272025, 0.857179, -0.437318,
		29.257290, 40.797642, 53.373100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111893, 39.901970, 53.252380>,  <29.447708, 40.197617, 53.679222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111893, 39.901970, 53.252380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144781, 40.282196, 53.132603>,  <29.164515, 40.510330, 53.060738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144781, 40.282196, 53.132603>,  <29.111893, 39.901970, 53.252380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144781, 40.282196, 53.132603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105327, -0.307063, -0.945843,
		-0.991033, 0.046229, -0.125367,
		0.082221, 0.950566, -0.299440,
		29.169447, 40.567368, 53.042770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634094, 40.000790, 52.710606>,  <29.111893, 39.901970, 53.252380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634094, 40.000790, 52.710606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916676, 40.281029, 52.670433>,  <29.086224, 40.449173, 52.646328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916676, 40.281029, 52.670433>,  <28.634094, 40.000790, 52.710606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916676, 40.281029, 52.670433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166411, -0.302347, -0.938559,
		-0.687918, 0.646335, -0.330181,
		0.706453, 0.700598, -0.100433,
		29.128611, 40.491207, 52.640305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519218, 40.427868, 52.104149>,  <28.634094, 40.000790, 52.710606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519218, 40.427868, 52.104149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907316, 40.468311, 52.192154>,  <29.140175, 40.492577, 52.244957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907316, 40.468311, 52.192154>,  <28.519218, 40.427868, 52.104149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907316, 40.468311, 52.192154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239370, -0.263619, -0.934455,
		-0.036483, 0.959313, -0.279977,
		0.970243, 0.101110, 0.220013,
		29.198389, 40.498646, 52.258160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695261, 40.799961, 51.496014>,  <28.519218, 40.427868, 52.104149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695261, 40.799961, 51.496014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048603, 40.693279, 51.650185>,  <29.260609, 40.629269, 51.742687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048603, 40.693279, 51.650185>,  <28.695261, 40.799961, 51.496014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048603, 40.693279, 51.650185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307934, -0.289712, -0.906225,
		0.353357, 0.919204, -0.173792,
		0.883355, -0.266704, 0.385426,
		29.313610, 40.613270, 51.765812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269241, 41.049725, 50.972107>,  <28.695261, 40.799961, 51.496014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269241, 41.049725, 50.972107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428345, 40.755962, 51.192085>,  <29.523806, 40.579704, 51.324074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.428345, 40.755962, 51.192085>,  <29.269241, 41.049725, 50.972107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428345, 40.755962, 51.192085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455210, -0.362460, -0.813269,
		0.796601, 0.573825, 0.190136,
		0.397758, -0.734403, 0.549947,
		29.547672, 40.535641, 51.357071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987005, 41.048500, 50.787090>,  <29.269241, 41.049725, 50.972107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987005, 41.048500, 50.787090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925341, 40.680340, 50.930809>,  <29.888342, 40.459442, 51.017040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925341, 40.680340, 50.930809>,  <29.987005, 41.048500, 50.787090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925341, 40.680340, 50.930809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468638, -0.388253, -0.793497,
		0.869835, 0.046056, 0.491188,
		-0.154160, -0.920401, 0.359300,
		29.879093, 40.404221, 51.038601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604116, 40.722542, 50.684338>,  <29.987005, 41.048500, 50.787090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604116, 40.722542, 50.684338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368124, 40.400887, 50.713425>,  <30.226528, 40.207893, 50.730877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.368124, 40.400887, 50.713425>,  <30.604116, 40.722542, 50.684338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368124, 40.400887, 50.713425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505309, -0.437971, -0.743535,
		0.629749, -0.401929, 0.664732,
		-0.589982, -0.804136, 0.072713,
		30.191130, 40.159645, 50.735237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063913, 39.993412, 50.751259>,  <30.604116, 40.722542, 50.684338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063913, 39.993412, 50.751259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.698095, 39.885597, 50.630619>,  <30.478605, 39.820908, 50.558235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.698095, 39.885597, 50.630619>,  <31.063913, 39.993412, 50.751259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698095, 39.885597, 50.630619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403692, -0.654954, -0.638801,
		-0.025357, -0.705965, 0.707792,
		-0.914543, -0.269532, -0.301600,
		30.423733, 39.804737, 50.540138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097433, 39.223110, 50.751972>,  <31.063913, 39.993412, 50.751259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097433, 39.223110, 50.751972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759335, 39.294598, 50.550529>,  <30.556475, 39.337490, 50.429665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759335, 39.294598, 50.550529>,  <31.097433, 39.223110, 50.751972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759335, 39.294598, 50.550529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231179, -0.727370, -0.646134,
		-0.481781, -0.662566, 0.573492,
		-0.845248, 0.178715, -0.503604,
		30.505760, 39.348213, 50.399448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805939, 38.475540, 50.621223>,  <31.097433, 39.223110, 50.751972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805939, 38.475540, 50.621223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.644909, 38.736229, 50.364101>,  <30.548290, 38.892643, 50.209827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.644909, 38.736229, 50.364101>,  <30.805939, 38.475540, 50.621223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644909, 38.736229, 50.364101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261984, -0.590815, -0.763087,
		-0.877097, -0.475602, 0.067106,
		-0.402573, 0.651721, -0.642802,
		30.524137, 38.931744, 50.171261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478056, 38.001690, 50.147125>,  <30.805939, 38.475540, 50.621223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478056, 38.001690, 50.147125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515337, 38.351856, 49.957409>,  <30.537704, 38.561958, 49.843578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515337, 38.351856, 49.957409>,  <30.478056, 38.001690, 50.147125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515337, 38.351856, 49.957409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208757, -0.482959, -0.850394,
		-0.973516, -0.019754, -0.227763,
		0.093201, 0.875420, -0.474293,
		30.543297, 38.614483, 49.815121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087088, 37.960384, 49.488361>,  <30.478056, 38.001690, 50.147125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087088, 37.960384, 49.488361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376343, 38.235691, 49.465195>,  <30.549896, 38.400875, 49.451294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.376343, 38.235691, 49.465195>,  <30.087088, 37.960384, 49.488361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376343, 38.235691, 49.465195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397028, -0.482822, -0.780546,
		-0.565189, 0.541450, -0.622410,
		0.723139, 0.688270, -0.057915,
		30.593285, 38.442173, 49.447819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518095, 37.900524, 48.992867>,  <30.087088, 37.960384, 49.488361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518095, 37.900524, 48.992867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334387, 37.576584, 49.138859>,  <29.224161, 37.382221, 49.226456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334387, 37.576584, 49.138859>,  <29.518095, 37.900524, 48.992867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334387, 37.576584, 49.138859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663602, 0.585938, 0.465090,
		-0.590510, -0.028599, -0.806524,
		-0.459272, -0.809850, 0.364981,
		29.196606, 37.333630, 49.248352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829159, 38.019150, 48.972298>,  <29.518095, 37.900524, 48.992867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829159, 38.019150, 48.972298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892187, 37.770096, 49.278893>,  <28.930004, 37.620663, 49.462849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892187, 37.770096, 49.278893>,  <28.829159, 38.019150, 48.972298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892187, 37.770096, 49.278893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581873, 0.568588, 0.581491,
		-0.797869, -0.537623, -0.272701,
		0.157569, -0.622631, 0.766487,
		28.939457, 37.583305, 49.508839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203371, 38.137199, 49.374702>,  <28.829159, 38.019150, 48.972298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203371, 38.137199, 49.374702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426918, 37.906422, 49.612965>,  <28.561047, 37.767956, 49.755920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.426918, 37.906422, 49.612965>,  <28.203371, 38.137199, 49.374702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426918, 37.906422, 49.612965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477652, 0.363208, 0.799955,
		-0.677876, -0.731583, -0.072594,
		0.558867, -0.576946, 0.595652,
		28.594578, 37.733337, 49.791660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731592, 37.644958, 49.801434>,  <28.203371, 38.137199, 49.374702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731592, 37.644958, 49.801434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078682, 37.728485, 49.981857>,  <28.286936, 37.778603, 50.090111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078682, 37.728485, 49.981857>,  <27.731592, 37.644958, 49.801434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078682, 37.728485, 49.981857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496368, 0.316547, 0.808342,
		0.026015, -0.925307, 0.378326,
		0.867722, 0.208818, 0.451058,
		28.338999, 37.791130, 50.117176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534790, 37.456673, 50.467888>,  <27.731592, 37.644958, 49.801434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534790, 37.456673, 50.467888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852785, 37.696640, 50.503883>,  <28.043581, 37.840618, 50.525482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852785, 37.696640, 50.503883>,  <27.534790, 37.456673, 50.467888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852785, 37.696640, 50.503883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352433, 0.336015, 0.873433,
		0.493750, -0.726081, 0.478558,
		0.794985, 0.599917, 0.089988,
		28.091280, 37.876614, 50.530880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739611, 37.487976, 51.200161>,  <27.534790, 37.456673, 50.467888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739611, 37.487976, 51.200161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914665, 37.806873, 51.033852>,  <28.019697, 37.998211, 50.934067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.914665, 37.806873, 51.033852>,  <27.739611, 37.487976, 51.200161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914665, 37.806873, 51.033852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284043, 0.561313, 0.777334,
		0.853109, -0.222091, 0.472103,
		0.437636, 0.797248, -0.415778,
		28.045956, 38.046047, 50.909119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081402, 37.821568, 51.771427>,  <27.739611, 37.487976, 51.200161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081402, 37.821568, 51.771427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.017120, 38.092136, 51.483917>,  <27.978552, 38.254478, 51.311413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.017120, 38.092136, 51.483917>,  <28.081402, 37.821568, 51.771427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017120, 38.092136, 51.483917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439404, 0.603058, 0.665767,
		0.883798, 0.422820, 0.200309,
		-0.160702, 0.676420, -0.718770,
		27.968910, 38.295063, 51.268288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241964, 38.378536, 52.086372>,  <28.081402, 37.821568, 51.771427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241964, 38.378536, 52.086372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.012354, 38.507137, 51.785141>,  <27.874588, 38.584297, 51.604401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.012354, 38.507137, 51.785141>,  <28.241964, 38.378536, 52.086372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012354, 38.507137, 51.785141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533661, 0.550654, 0.641861,
		0.621045, 0.770336, -0.144518,
		-0.574028, 0.321501, -0.753079,
		27.840145, 38.603588, 51.559216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165457, 39.017391, 52.309780>,  <28.241964, 38.378536, 52.086372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165457, 39.017391, 52.309780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880064, 38.943523, 52.039421>,  <27.708828, 38.899204, 51.877205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.880064, 38.943523, 52.039421>,  <28.165457, 39.017391, 52.309780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880064, 38.943523, 52.039421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613224, 0.631245, 0.474854,
		0.338968, 0.753278, -0.563625,
		-0.713482, -0.184668, -0.675900,
		27.666019, 38.888123, 51.836651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942087, 39.685673, 52.075382>,  <28.165457, 39.017391, 52.309780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942087, 39.685673, 52.075382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649231, 39.423889, 51.999859>,  <27.473516, 39.266819, 51.954544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649231, 39.423889, 51.999859>,  <27.942087, 39.685673, 52.075382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649231, 39.423889, 51.999859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621962, 0.529310, 0.577056,
		-0.277725, 0.539916, -0.794581,
		-0.732142, -0.654462, -0.188805,
		27.429588, 39.227551, 51.943218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303257, 40.097214, 51.899952>,  <27.942087, 39.685673, 52.075382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303257, 40.097214, 51.899952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183252, 39.748234, 52.054260>,  <27.111250, 39.538845, 52.146843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.183252, 39.748234, 52.054260>,  <27.303257, 40.097214, 51.899952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183252, 39.748234, 52.054260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731903, 0.469882, 0.493486,
		-0.611809, -0.134293, -0.779522,
		-0.300012, -0.872454, 0.385768,
		27.093248, 39.486496, 52.169991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553091, 40.198505, 52.089809>,  <27.303257, 40.097214, 51.899952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553091, 40.198505, 52.089809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659466, 39.864372, 52.282265>,  <26.723291, 39.663891, 52.397739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659466, 39.864372, 52.282265>,  <26.553091, 40.198505, 52.089809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659466, 39.864372, 52.282265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557241, 0.274062, 0.783819,
		-0.786613, -0.476556, -0.392600,
		0.265937, -0.835335, 0.481137,
		26.739246, 39.613773, 52.426605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034346, 40.064857, 52.491192>,  <26.553091, 40.198505, 52.089809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034346, 40.064857, 52.491192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305870, 39.820236, 52.653778>,  <26.468784, 39.673462, 52.751331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.305870, 39.820236, 52.653778>,  <26.034346, 40.064857, 52.491192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305870, 39.820236, 52.653778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432859, 0.113888, 0.894239,
		-0.593169, -0.782961, -0.187410,
		0.678810, -0.611557, 0.406466,
		26.509514, 39.636768, 52.775719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665926, 39.557537, 52.916454>,  <26.034346, 40.064857, 52.491192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665926, 39.557537, 52.916454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.038370, 39.564533, 53.062180>,  <26.261837, 39.568729, 53.149616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.038370, 39.564533, 53.062180>,  <25.665926, 39.557537, 52.916454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038370, 39.564533, 53.062180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364588, 0.073108, 0.928294,
		-0.010402, -0.997171, 0.074447,
		0.931111, 0.017487, 0.364317,
		26.317703, 39.569782, 53.171474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.262615, 37.933071, 58.718002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045658, 38.064857, 58.408871>,  <32.915482, 38.143929, 58.223392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045658, 38.064857, 58.408871>,  <33.262615, 37.933071, 58.718002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045658, 38.064857, 58.408871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373867, -0.729132, -0.573227,
		-0.752352, -0.599849, 0.272299,
		-0.542392, 0.329465, -0.772828,
		32.882938, 38.163696, 58.177021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839367, 37.340744, 58.493637>,  <33.262615, 37.933071, 58.718002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839367, 37.340744, 58.493637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859722, 37.593456, 58.184246>,  <32.871937, 37.745083, 57.998611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.859722, 37.593456, 58.184246>,  <32.839367, 37.340744, 58.493637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859722, 37.593456, 58.184246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422289, -0.715451, -0.556599,
		-0.905032, -0.298304, -0.303204,
		0.050892, 0.631779, -0.773476,
		32.874989, 37.782990, 57.952202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683743, 36.856583, 57.852055>,  <32.839367, 37.340744, 58.493637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683743, 36.856583, 57.852055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857319, 37.185596, 57.705017>,  <32.961464, 37.383007, 57.616795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857319, 37.185596, 57.705017>,  <32.683743, 36.856583, 57.852055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857319, 37.185596, 57.705017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319049, -0.521872, -0.791112,
		-0.842556, 0.226018, -0.488893,
		0.433945, 0.822536, -0.367595,
		32.987503, 37.432358, 57.594738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571911, 36.886734, 57.111115>,  <32.683743, 36.856583, 57.852055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571911, 36.886734, 57.111115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877724, 37.136604, 57.174702>,  <33.061211, 37.286526, 57.212852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877724, 37.136604, 57.174702>,  <32.571911, 36.886734, 57.111115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877724, 37.136604, 57.174702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486373, -0.397221, -0.778239,
		-0.422998, 0.672310, -0.607513,
		0.764535, 0.624672, 0.158969,
		33.107082, 37.324005, 57.222393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869377, 37.043163, 56.545193>,  <32.571911, 36.886734, 57.111115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869377, 37.043163, 56.545193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180111, 37.158638, 56.769047>,  <33.366550, 37.227921, 56.903358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180111, 37.158638, 56.769047>,  <32.869377, 37.043163, 56.545193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180111, 37.158638, 56.769047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625516, -0.251420, -0.738592,
		-0.072515, 0.923824, -0.375888,
		0.776834, 0.288683, 0.559634,
		33.413162, 37.245243, 56.936935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290451, 37.462261, 56.165882>,  <32.869377, 37.043163, 56.545193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290451, 37.462261, 56.165882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519390, 37.310001, 56.456406>,  <33.656754, 37.218643, 56.630718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519390, 37.310001, 56.456406>,  <33.290451, 37.462261, 56.165882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519390, 37.310001, 56.456406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576024, -0.443762, -0.686492,
		0.583623, 0.811282, -0.034720,
		0.572346, -0.380653, 0.726308,
		33.691093, 37.195805, 56.674297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847359, 37.474377, 55.901985>,  <33.290451, 37.462261, 56.165882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847359, 37.474377, 55.901985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964176, 37.227684, 56.194382>,  <34.034267, 37.079670, 56.369820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.964176, 37.227684, 56.194382>,  <33.847359, 37.474377, 55.901985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964176, 37.227684, 56.194382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682424, -0.401127, -0.611060,
		0.670082, 0.677303, 0.303728,
		0.292039, -0.616732, 0.730996,
		34.051788, 37.042664, 56.413681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544025, 37.561813, 55.893208>,  <33.847359, 37.474377, 55.901985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544025, 37.561813, 55.893208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503895, 37.212345, 56.083630>,  <34.479816, 37.002663, 56.197884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503895, 37.212345, 56.083630>,  <34.544025, 37.561813, 55.893208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503895, 37.212345, 56.083630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541482, -0.449354, -0.710548,
		0.834704, 0.186486, 0.518162,
		-0.100331, -0.873673, 0.476056,
		34.473797, 36.950245, 56.226448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189274, 37.217896, 55.776764>,  <34.544025, 37.561813, 55.893208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189274, 37.217896, 55.776764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944721, 36.920986, 55.886482>,  <34.797989, 36.742840, 55.952312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944721, 36.920986, 55.886482>,  <35.189274, 37.217896, 55.776764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944721, 36.920986, 55.886482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487978, -0.626509, -0.607753,
		0.622968, -0.237721, 0.745251,
		-0.611382, -0.742277, 0.274293,
		34.761307, 36.698303, 55.968769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609596, 36.683685, 55.951870>,  <35.189274, 37.217896, 55.776764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609596, 36.683685, 55.951870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252838, 36.518280, 55.878620>,  <35.038784, 36.419037, 55.834671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252838, 36.518280, 55.878620>,  <35.609596, 36.683685, 55.951870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252838, 36.518280, 55.878620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448031, -0.752747, -0.482328,
		0.061598, -0.512232, 0.856635,
		-0.891894, -0.413510, -0.183128,
		34.985271, 36.394226, 55.823681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677570, 35.978249, 56.066956>,  <35.609596, 36.683685, 55.951870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677570, 35.978249, 56.066956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369213, 36.016129, 55.815002>,  <35.184196, 36.038857, 55.663830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369213, 36.016129, 55.815002>,  <35.677570, 35.978249, 56.066956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369213, 36.016129, 55.815002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367828, -0.741144, -0.561612,
		-0.520017, -0.664633, 0.536512,
		-0.770898, 0.094704, -0.629879,
		35.137943, 36.044540, 55.626038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506275, 35.351765, 55.926334>,  <35.677570, 35.978249, 56.066956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506275, 35.351765, 55.926334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321453, 35.563385, 55.641628>,  <35.210560, 35.690357, 55.470806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321453, 35.563385, 55.641628>,  <35.506275, 35.351765, 55.926334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321453, 35.563385, 55.641628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152897, -0.743035, -0.651553,
		-0.873570, -0.409882, 0.262436,
		-0.462059, 0.529051, -0.711763,
		35.182835, 35.722099, 55.428101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073971, 34.850845, 55.627796>,  <35.506275, 35.351765, 55.926334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073971, 34.850845, 55.627796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104935, 35.128078, 55.341118>,  <35.123512, 35.294418, 55.169113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104935, 35.128078, 55.341118>,  <35.073971, 34.850845, 55.627796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104935, 35.128078, 55.341118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287450, -0.703839, -0.649603,
		-0.954662, -0.155726, -0.253712,
		0.077412, 0.693081, -0.716692,
		35.128159, 35.336002, 55.126110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831409, 34.560177, 54.979740>,  <35.073971, 34.850845, 55.627796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831409, 34.560177, 54.979740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048176, 34.871521, 54.852943>,  <35.178234, 35.058327, 54.776863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048176, 34.871521, 54.852943>,  <34.831409, 34.560177, 54.979740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048176, 34.871521, 54.852943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364438, -0.557507, -0.745903,
		-0.757307, 0.288690, -0.585785,
		0.541914, 0.778360, -0.316995,
		35.210751, 35.105030, 54.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169106, 34.603638, 54.601345>,  <34.831409, 34.560177, 54.979740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169106, 34.603638, 54.601345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947697, 34.271248, 54.579102>,  <33.814850, 34.071812, 54.565754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947697, 34.271248, 54.579102>,  <34.169106, 34.603638, 54.601345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947697, 34.271248, 54.579102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624477, 0.369938, 0.687876,
		-0.551037, 0.415481, -0.723694,
		-0.553522, -0.830976, -0.055609,
		33.781639, 34.021954, 54.562420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418385, 34.747070, 54.611019>,  <34.169106, 34.603638, 54.601345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418385, 34.747070, 54.611019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.432972, 34.366558, 54.733486>,  <33.441727, 34.138252, 54.806965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.432972, 34.366558, 54.733486>,  <33.418385, 34.747070, 54.611019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432972, 34.366558, 54.733486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540818, 0.238840, 0.806518,
		-0.840348, -0.194995, -0.505758,
		0.036472, -0.951279, 0.306165,
		33.443913, 34.081173, 54.825336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757530, 34.651882, 54.794239>,  <33.418385, 34.747070, 54.611019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757530, 34.651882, 54.794239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943913, 34.339859, 54.961285>,  <33.055740, 34.152645, 55.061512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.943913, 34.339859, 54.961285>,  <32.757530, 34.651882, 54.794239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943913, 34.339859, 54.961285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526223, 0.135126, 0.839542,
		-0.711319, -0.610946, -0.347520,
		0.465956, -0.780054, 0.417612,
		33.083698, 34.105843, 55.086567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141872, 34.154232, 55.000633>,  <32.757530, 34.651882, 54.794239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141872, 34.154232, 55.000633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465424, 34.130737, 55.234650>,  <32.659554, 34.116638, 55.375057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465424, 34.130737, 55.234650>,  <32.141872, 34.154232, 55.000633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465424, 34.130737, 55.234650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574529, 0.132653, 0.807663,
		-0.125050, -0.989420, 0.073551,
		0.808875, -0.058740, 0.585039,
		32.708088, 34.113117, 55.410160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780655, 33.895103, 55.497307>,  <32.141872, 34.154232, 55.000633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780655, 33.895103, 55.497307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.135410, 33.988743, 55.656620>,  <32.348263, 34.044926, 55.752209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.135410, 33.988743, 55.656620>,  <31.780655, 33.895103, 55.497307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135410, 33.988743, 55.656620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441830, 0.177940, 0.879275,
		0.134966, -0.955791, 0.261244,
		0.886888, 0.234097, 0.398281,
		32.401478, 34.058971, 55.776104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760851, 33.436134, 56.073174>,  <31.780655, 33.895103, 55.497307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760851, 33.436134, 56.073174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036858, 33.719170, 56.134098>,  <32.202461, 33.888992, 56.170654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036858, 33.719170, 56.134098>,  <31.760851, 33.436134, 56.073174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036858, 33.719170, 56.134098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338178, 0.129120, 0.932182,
		0.639932, -0.694730, 0.328385,
		0.690016, 0.707586, 0.152314,
		32.243862, 33.931446, 56.179790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964867, 33.378696, 56.755970>,  <31.760851, 33.436134, 56.073174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964867, 33.378696, 56.755970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102795, 33.746700, 56.681480>,  <32.185551, 33.967503, 56.636787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.102795, 33.746700, 56.681480>,  <31.964867, 33.378696, 56.755970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102795, 33.746700, 56.681480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348887, 0.309791, 0.884481,
		0.871423, -0.240015, 0.427802,
		0.344818, 0.920012, -0.186221,
		32.206242, 34.022705, 56.625614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462421, 33.519115, 57.252174>,  <31.964867, 33.378696, 56.755970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462421, 33.519115, 57.252174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345436, 33.881920, 57.130989>,  <32.275246, 34.099602, 57.058277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345436, 33.881920, 57.130989>,  <32.462421, 33.519115, 57.252174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345436, 33.881920, 57.130989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330790, 0.201305, 0.921984,
		0.897242, 0.369865, 0.241157,
		-0.292463, 0.907015, -0.302967,
		32.257698, 34.154026, 57.040100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704380, 34.064434, 57.698704>,  <32.462421, 33.519115, 57.252174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704380, 34.064434, 57.698704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402958, 34.251884, 57.514297>,  <32.222103, 34.364357, 57.403652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402958, 34.251884, 57.514297>,  <32.704380, 34.064434, 57.698704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402958, 34.251884, 57.514297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317626, 0.354448, 0.879477,
		0.575556, 0.809168, -0.118248,
		-0.753558, 0.468629, -0.461018,
		32.176891, 34.392475, 57.375992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636318, 34.606438, 58.036812>,  <32.704380, 34.064434, 57.698704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636318, 34.606438, 58.036812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282097, 34.623692, 57.851803>,  <32.069565, 34.634045, 57.740795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282097, 34.623692, 57.851803>,  <32.636318, 34.606438, 58.036812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282097, 34.623692, 57.851803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355669, 0.577523, 0.734825,
		0.298814, 0.815234, -0.496088,
		-0.885556, 0.043133, -0.462525,
		32.016430, 34.636631, 57.713047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317078, 35.338718, 58.146667>,  <32.636318, 34.606438, 58.036812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317078, 35.338718, 58.146667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014687, 35.079411, 58.110348>,  <31.833252, 34.923828, 58.088554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014687, 35.079411, 58.110348>,  <32.317078, 35.338718, 58.146667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014687, 35.079411, 58.110348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563984, 0.574624, 0.593068,
		-0.332292, 0.499556, -0.800016,
		-0.755979, -0.648268, -0.090799,
		31.787893, 34.884930, 58.083107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785233, 35.698284, 57.947247>,  <32.317078, 35.338718, 58.146667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785233, 35.698284, 57.947247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.619867, 35.388645, 58.139019>,  <31.520647, 35.202862, 58.254082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.619867, 35.388645, 58.139019>,  <31.785233, 35.698284, 57.947247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619867, 35.388645, 58.139019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665895, 0.616150, 0.420646,
		-0.621025, -0.145350, -0.770196,
		-0.413415, -0.774101, 0.479432,
		31.495842, 35.156414, 58.282848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008463, 35.760914, 57.796127>,  <31.785233, 35.698284, 57.947247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008463, 35.760914, 57.796127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041340, 35.534271, 58.124081>,  <31.061066, 35.398285, 58.320850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041340, 35.534271, 58.124081>,  <31.008463, 35.760914, 57.796127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041340, 35.534271, 58.124081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810228, 0.441042, 0.386021,
		-0.580323, -0.696017, -0.422830,
		0.082192, -0.566606, 0.819880,
		31.065998, 35.364288, 58.370045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375242, 35.485203, 57.895988>,  <31.008463, 35.760914, 57.796127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375242, 35.485203, 57.895988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.556984, 35.455986, 58.251118>,  <30.666029, 35.438457, 58.464195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.556984, 35.455986, 58.251118>,  <30.375242, 35.485203, 57.895988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556984, 35.455986, 58.251118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847121, 0.272893, 0.455977,
		-0.275585, -0.959268, 0.062116,
		0.454355, -0.073041, 0.887821,
		30.693291, 35.434074, 58.517464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041271, 34.970161, 57.562744>,  <30.375242, 35.485203, 57.895988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041271, 34.970161, 57.562744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690468, 34.891441, 57.387417>,  <29.479986, 34.844208, 57.282219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.690468, 34.891441, 57.387417>,  <30.041271, 34.970161, 57.562744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690468, 34.891441, 57.387417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399279, -0.805974, -0.437016,
		-0.267267, -0.558278, 0.785426,
		-0.877009, -0.196804, -0.438319,
		29.427364, 34.832401, 57.255920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891354, 34.308380, 57.772354>,  <30.041271, 34.970161, 57.562744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891354, 34.308380, 57.772354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688902, 34.382187, 57.435360>,  <29.567430, 34.426472, 57.233162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.688902, 34.382187, 57.435360>,  <29.891354, 34.308380, 57.772354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688902, 34.382187, 57.435360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369662, -0.836155, -0.405211,
		-0.779220, -0.516524, 0.354992,
		-0.506130, 0.184521, -0.842488,
		29.537064, 34.437542, 57.182613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685871, 33.642811, 57.476360>,  <29.891354, 34.308380, 57.772354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685871, 33.642811, 57.476360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.649736, 33.871040, 57.149857>,  <29.628056, 34.007980, 56.953953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.649736, 33.871040, 57.149857>,  <29.685871, 33.642811, 57.476360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649736, 33.871040, 57.149857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284448, -0.770689, -0.570200,
		-0.954426, -0.283694, -0.092678,
		-0.090337, 0.570576, -0.816261,
		29.622635, 34.042213, 56.904980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242512, 33.135593, 56.987789>,  <29.685871, 33.642811, 57.476360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242512, 33.135593, 56.987789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.480345, 33.392796, 56.794701>,  <29.623045, 33.547115, 56.678848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.480345, 33.392796, 56.794701>,  <29.242512, 33.135593, 56.987789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480345, 33.392796, 56.794701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296996, -0.733554, -0.611303,
		-0.747171, 0.220104, -0.627128,
		0.594583, 0.643003, -0.482720,
		29.658720, 33.585697, 56.649883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061947, 33.082481, 56.294872>,  <29.242512, 33.135593, 56.987789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061947, 33.082481, 56.294872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.419924, 33.260521, 56.282425>,  <29.634710, 33.367344, 56.274956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.419924, 33.260521, 56.282425>,  <29.061947, 33.082481, 56.294872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419924, 33.260521, 56.282425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303200, -0.657837, -0.689435,
		-0.327336, 0.607569, -0.723679,
		0.894942, 0.445096, -0.031119,
		29.688406, 33.394051, 56.273090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166615, 33.120693, 55.591232>,  <29.061947, 33.082481, 56.294872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166615, 33.120693, 55.591232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.533731, 33.184502, 55.736675>,  <29.754002, 33.222786, 55.823940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.533731, 33.184502, 55.736675>,  <29.166615, 33.120693, 55.591232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533731, 33.184502, 55.736675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391174, -0.520348, -0.759092,
		0.068111, 0.838922, -0.539972,
		0.917793, 0.159520, 0.363606,
		29.809069, 33.232357, 55.845757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552387, 33.222618, 55.001705>,  <29.166615, 33.120693, 55.591232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552387, 33.222618, 55.001705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.847174, 33.152252, 55.262760>,  <30.024046, 33.110031, 55.419392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.847174, 33.152252, 55.262760>,  <29.552387, 33.222618, 55.001705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847174, 33.152252, 55.262760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416343, -0.642495, -0.643318,
		0.532486, 0.745824, -0.400256,
		0.736965, -0.175914, 0.652639,
		30.068264, 33.099480, 55.458553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221083, 33.403587, 54.680531>,  <29.552387, 33.222618, 55.001705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221083, 33.403587, 54.680531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.283121, 33.131069, 54.966686>,  <30.320345, 32.967560, 55.138378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.283121, 33.131069, 54.966686>,  <30.221083, 33.403587, 54.680531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283121, 33.131069, 54.966686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407268, -0.615657, -0.674610,
		0.900043, 0.395985, 0.181983,
		0.155096, -0.681294, 0.715390,
		30.329651, 32.926682, 55.181305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871298, 33.103436, 54.551205>,  <30.221083, 33.403587, 54.680531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871298, 33.103436, 54.551205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704332, 32.841316, 54.803028>,  <30.604153, 32.684044, 54.954121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.704332, 32.841316, 54.803028>,  <30.871298, 33.103436, 54.551205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704332, 32.841316, 54.803028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635822, -0.705582, -0.312863,
		0.649226, 0.269694, 0.711176,
		-0.417415, -0.655300, 0.629560,
		30.579107, 32.644726, 54.991898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444582, 32.913181, 54.934986>,  <30.871298, 33.103436, 54.551205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444582, 32.913181, 54.934986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146269, 32.647404, 54.954266>,  <30.967281, 32.487938, 54.965832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146269, 32.647404, 54.954266>,  <31.444582, 32.913181, 54.934986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146269, 32.647404, 54.954266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559388, -0.663873, -0.496343,
		0.361788, -0.343204, 0.866787,
		-0.745784, -0.664442, 0.048197,
		30.922533, 32.448071, 54.968723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793211, 32.322479, 54.912540>,  <31.444582, 32.913181, 54.934986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793211, 32.322479, 54.912540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425980, 32.186062, 54.831730>,  <31.205641, 32.104210, 54.783245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.425980, 32.186062, 54.831730>,  <31.793211, 32.322479, 54.912540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425980, 32.186062, 54.831730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385818, -0.651876, -0.652841,
		0.090953, -0.677307, 0.730057,
		-0.918080, -0.341047, -0.202027,
		31.150555, 32.083748, 54.771122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881559, 31.620569, 54.809265>,  <31.793211, 32.322479, 54.912540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881559, 31.620569, 54.809265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528091, 31.689035, 54.634987>,  <31.316011, 31.730114, 54.530418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528091, 31.689035, 54.634987>,  <31.881559, 31.620569, 54.809265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528091, 31.689035, 54.634987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236110, -0.640712, -0.730576,
		-0.404204, -0.748460, 0.525764,
		-0.883669, 0.171164, -0.435697,
		31.262991, 31.740385, 54.504276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670107, 30.964861, 54.531757>,  <31.881559, 31.620569, 54.809265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670107, 30.964861, 54.531757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473795, 31.249392, 54.330502>,  <31.356009, 31.420109, 54.209747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473795, 31.249392, 54.330502>,  <31.670107, 30.964861, 54.531757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473795, 31.249392, 54.330502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058366, -0.549333, -0.833562,
		-0.869326, -0.438462, 0.228085,
		-0.490781, 0.711325, -0.503141,
		31.326561, 31.462790, 54.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110117, 30.731588, 54.133156>,  <31.670107, 30.964861, 54.531757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110117, 30.731588, 54.133156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213425, 31.057440, 53.925434>,  <31.275410, 31.252951, 53.800800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213425, 31.057440, 53.925434>,  <31.110117, 30.731588, 54.133156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213425, 31.057440, 53.925434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059297, -0.549897, -0.833125,
		-0.964252, 0.184377, -0.190326,
		0.258268, 0.814628, -0.519307,
		31.290905, 31.301828, 53.769642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.682926, 39.031509, 53.555763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.978025, 39.299873, 53.585720>,  <26.155085, 39.460892, 53.603695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.978025, 39.299873, 53.585720>,  <25.682926, 39.031509, 53.555763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978025, 39.299873, 53.585720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233254, 0.149233, 0.960896,
		0.633499, -0.726367, 0.266588,
		0.737747, 0.670910, 0.074889,
		26.199350, 39.501144, 53.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789682, 38.934105, 54.295441>,  <25.682926, 39.031509, 53.555763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789682, 38.934105, 54.295441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.983839, 39.263691, 54.178497>,  <26.100332, 39.461445, 54.108334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.983839, 39.263691, 54.178497>,  <25.789682, 38.934105, 54.295441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983839, 39.263691, 54.178497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171338, 0.417551, 0.892354,
		0.857344, -0.383049, 0.343853,
		0.485390, 0.823969, -0.292354,
		26.129456, 39.510883, 54.090790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269993, 39.050274, 54.826900>,  <25.789682, 38.934105, 54.295441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269993, 39.050274, 54.826900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.235397, 39.402687, 54.640865>,  <26.214640, 39.614136, 54.529243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.235397, 39.402687, 54.640865>,  <26.269993, 39.050274, 54.826900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235397, 39.402687, 54.640865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084999, 0.458609, 0.884564,
		0.992620, 0.116036, 0.035222,
		-0.086488, 0.881030, -0.465088,
		26.209452, 39.666996, 54.501339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676634, 39.469341, 55.214867>,  <26.269993, 39.050274, 54.826900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676634, 39.469341, 55.214867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.454258, 39.725056, 55.002361>,  <26.320831, 39.878483, 54.874859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.454258, 39.725056, 55.002361>,  <26.676634, 39.469341, 55.214867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454258, 39.725056, 55.002361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172124, 0.536749, 0.825999,
		0.813205, 0.550650, -0.188365,
		-0.555941, 0.639284, -0.531267,
		26.287476, 39.916840, 54.842979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999449, 40.169132, 55.306843>,  <26.676634, 39.469341, 55.214867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999449, 40.169132, 55.306843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.609919, 40.156200, 55.216846>,  <26.376202, 40.148441, 55.162849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.609919, 40.156200, 55.216846>,  <26.999449, 40.169132, 55.306843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609919, 40.156200, 55.216846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205350, 0.549519, 0.809852,
		0.097458, 0.834856, -0.541773,
		-0.973824, -0.032326, -0.224993,
		26.317772, 40.146503, 55.149349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840584, 40.773403, 55.408775>,  <26.999449, 40.169132, 55.306843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840584, 40.773403, 55.408775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.474384, 40.612843, 55.419640>,  <26.254663, 40.516506, 55.426159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.474384, 40.612843, 55.419640>,  <26.840584, 40.773403, 55.408775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474384, 40.612843, 55.419640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141677, 0.384841, 0.912044,
		-0.376546, 0.831129, -0.409191,
		-0.915500, -0.401399, 0.027158,
		26.199734, 40.492424, 55.427788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409060, 41.261463, 55.692265>,  <26.840584, 40.773403, 55.408775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409060, 41.261463, 55.692265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.190018, 40.932190, 55.752258>,  <26.058592, 40.734627, 55.788254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.190018, 40.932190, 55.752258>,  <26.409060, 41.261463, 55.692265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190018, 40.932190, 55.752258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136160, 0.264526, 0.954718,
		-0.825584, 0.502387, -0.256940,
		-0.547605, -0.823185, 0.149983,
		26.025736, 40.685234, 55.797253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742401, 41.469585, 56.016754>,  <26.409060, 41.261463, 55.692265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742401, 41.469585, 56.016754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.781559, 41.080910, 56.102764>,  <25.805054, 40.847706, 56.154369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.781559, 41.080910, 56.102764>,  <25.742401, 41.469585, 56.016754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781559, 41.080910, 56.102764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274202, 0.181364, 0.944415,
		-0.956676, -0.151416, -0.248685,
		0.097897, -0.971690, 0.215026,
		25.810928, 40.789402, 56.167271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176962, 41.341686, 56.423172>,  <25.742401, 41.469585, 56.016754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176962, 41.341686, 56.423172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.375971, 41.000679, 56.487274>,  <25.495377, 40.796074, 56.525734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.375971, 41.000679, 56.487274>,  <25.176962, 41.341686, 56.423172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375971, 41.000679, 56.487274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107479, 0.122732, 0.986603,
		-0.860768, -0.508079, -0.030566,
		0.497521, -0.852521, 0.160252,
		25.525227, 40.744923, 56.535351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.711561, 40.807373, 56.826466>,  <25.176962, 41.341686, 56.423172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.711561, 40.807373, 56.826466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.097778, 40.731422, 56.897655>,  <25.329508, 40.685852, 56.940369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.097778, 40.731422, 56.897655>,  <24.711561, 40.807373, 56.826466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097778, 40.731422, 56.897655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146247, 0.169788, 0.974568,
		-0.215262, -0.967016, 0.136169,
		0.965543, -0.189873, 0.177972,
		25.387442, 40.674461, 56.951046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685751, 40.449238, 57.406746>,  <24.711561, 40.807373, 56.826466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685751, 40.449238, 57.406746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.062584, 40.582638, 57.420948>,  <25.288683, 40.662678, 57.429470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.062584, 40.582638, 57.420948>,  <24.685751, 40.449238, 57.406746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062584, 40.582638, 57.420948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120496, 0.237775, 0.963817,
		0.312993, -0.912272, 0.264189,
		0.942081, 0.333502, 0.035504,
		25.345207, 40.682690, 57.431599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891850, 40.187599, 58.029854>,  <24.685751, 40.449238, 57.406746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891850, 40.187599, 58.029854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.166315, 40.464912, 57.941727>,  <25.330994, 40.631302, 57.888851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.166315, 40.464912, 57.941727>,  <24.891850, 40.187599, 58.029854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166315, 40.464912, 57.941727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122611, 0.188304, 0.974427,
		0.717040, -0.695629, 0.044203,
		0.686163, 0.693284, -0.220313,
		25.372164, 40.672897, 57.875633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623051, 40.015018, 58.246315>,  <24.891850, 40.187599, 58.029854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623051, 40.015018, 58.246315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.539923, 40.406193, 58.254810>,  <25.490046, 40.640896, 58.259907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.539923, 40.406193, 58.254810>,  <25.623051, 40.015018, 58.246315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539923, 40.406193, 58.254810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139599, 0.008160, 0.990174,
		0.968155, 0.208742, -0.138215,
		-0.207818, 0.977937, 0.021240,
		25.477577, 40.699574, 58.261181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199482, 39.375366, 58.149361>,  <25.623051, 40.015018, 58.246315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199482, 39.375366, 58.149361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.344072, 39.315266, 58.517437>,  <25.430826, 39.279205, 58.738285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.344072, 39.315266, 58.517437>,  <25.199482, 39.375366, 58.149361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344072, 39.315266, 58.517437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664050, -0.651305, -0.367204,
		0.654502, 0.743791, -0.135653,
		0.361475, -0.150255, 0.920195,
		25.452515, 39.270187, 58.793495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872208, 39.228413, 58.045589>,  <25.199482, 39.375366, 58.149361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.872208, 39.228413, 58.045589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.793835, 39.058857, 58.399296>,  <25.746811, 38.957123, 58.611519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.793835, 39.058857, 58.399296>,  <25.872208, 39.228413, 58.045589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793835, 39.058857, 58.399296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651648, -0.730123, -0.205608,
		0.732779, 0.535945, 0.419282,
		-0.195933, -0.423890, 0.884267,
		25.735054, 38.931690, 58.664577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457747, 39.018990, 58.186634>,  <25.872208, 39.228413, 58.045589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457747, 39.018990, 58.186634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.234287, 38.807762, 58.442463>,  <26.100212, 38.681026, 58.595959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.234287, 38.807762, 58.442463>,  <26.457747, 39.018990, 58.186634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234287, 38.807762, 58.442463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674383, -0.738101, -0.020363,
		0.482823, 0.419941, 0.768461,
		-0.558650, -0.528068, 0.639573,
		26.066692, 38.649342, 58.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861704, 38.900154, 58.767258>,  <26.457747, 39.018990, 58.186634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861704, 38.900154, 58.767258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.575527, 38.621365, 58.747749>,  <26.403822, 38.454090, 58.736046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.575527, 38.621365, 58.747749>,  <26.861704, 38.900154, 58.767258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575527, 38.621365, 58.747749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696562, -0.706114, -0.127299,
		0.054289, -0.125044, 0.990665,
		-0.715440, -0.696970, -0.048767,
		26.360895, 38.412273, 58.733120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144531, 38.355484, 58.990696>,  <26.861704, 38.900154, 58.767258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144531, 38.355484, 58.990696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.832157, 38.203423, 58.792454>,  <26.644732, 38.112186, 58.673508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.832157, 38.203423, 58.792454>,  <27.144531, 38.355484, 58.990696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832157, 38.203423, 58.792454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482221, -0.871252, -0.091560,
		-0.396989, -0.310493, 0.863709,
		-0.780937, -0.380150, -0.495604,
		26.597876, 38.089378, 58.643772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294983, 37.696556, 59.160755>,  <27.144531, 38.355484, 58.990696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294983, 37.696556, 59.160755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.026371, 37.660942, 58.866512>,  <26.865204, 37.639572, 58.689968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.026371, 37.660942, 58.866512>,  <27.294983, 37.696556, 59.160755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026371, 37.660942, 58.866512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431637, -0.853929, -0.290679,
		-0.602276, -0.512715, 0.611872,
		-0.671530, -0.089038, -0.735608,
		26.824911, 37.634232, 58.645828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054066, 37.037697, 59.160275>,  <27.294983, 37.696556, 59.160755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054066, 37.037697, 59.160275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.001947, 37.156246, 58.781818>,  <26.970676, 37.227375, 58.554745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.001947, 37.156246, 58.781818>,  <27.054066, 37.037697, 59.160275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001947, 37.156246, 58.781818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447709, -0.833858, -0.322860,
		-0.884635, -0.465663, -0.024042,
		-0.130296, 0.296377, -0.946141,
		26.962858, 37.245159, 58.497974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725983, 36.385532, 58.730621>,  <27.054066, 37.037697, 59.160275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725983, 36.385532, 58.730621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.858358, 36.650749, 58.462040>,  <26.937784, 36.809879, 58.300892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.858358, 36.650749, 58.462040>,  <26.725983, 36.385532, 58.730621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858358, 36.650749, 58.462040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540925, -0.716333, -0.440758,
		-0.773226, -0.217340, -0.595722,
		0.330941, 0.663046, -0.671452,
		26.957640, 36.849663, 58.260605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466473, 36.137352, 58.113621>,  <26.725983, 36.385532, 58.730621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466473, 36.137352, 58.113621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.792374, 36.359516, 58.047050>,  <26.987915, 36.492813, 58.007111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.792374, 36.359516, 58.047050>,  <26.466473, 36.137352, 58.113621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792374, 36.359516, 58.047050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386833, -0.734518, -0.557534,
		-0.431901, 0.389874, -0.813302,
		0.814752, 0.555411, -0.166423,
		27.036798, 36.526138, 57.997124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766895, 35.960281, 57.444595>,  <26.466473, 36.137352, 58.113621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766895, 35.960281, 57.444595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.065634, 36.148251, 57.632809>,  <27.244877, 36.261032, 57.745735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.065634, 36.148251, 57.632809>,  <26.766895, 35.960281, 57.444595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065634, 36.148251, 57.632809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662751, -0.584097, -0.468607,
		0.054627, 0.661820, -0.747670,
		0.746845, 0.469920, 0.470529,
		27.289688, 36.289227, 57.773968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363241, 35.781609, 56.958839>,  <26.766895, 35.960281, 57.444595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363241, 35.781609, 56.958839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.561939, 35.943321, 57.266033>,  <27.681158, 36.040348, 57.450348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.561939, 35.943321, 57.266033>,  <27.363241, 35.781609, 56.958839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561939, 35.943321, 57.266033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836084, -0.460293, -0.298486,
		0.232824, 0.790370, -0.566665,
		0.496746, 0.404284, 0.767983,
		27.710962, 36.064606, 57.496429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038969, 36.157963, 56.802612>,  <27.363241, 35.781609, 56.958839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038969, 36.157963, 56.802612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.115747, 36.043152, 57.178009>,  <28.161816, 35.974266, 57.403248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.115747, 36.043152, 57.178009>,  <28.038969, 36.157963, 56.802612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115747, 36.043152, 57.178009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767533, -0.552032, -0.325812,
		0.611596, 0.782865, 0.114340,
		0.191948, -0.287025, 0.938495,
		28.173332, 35.957043, 57.459557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736824, 36.188137, 56.919163>,  <28.038969, 36.157963, 56.802612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736824, 36.188137, 56.919163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.630116, 35.943932, 57.217453>,  <28.566090, 35.797409, 57.396427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.630116, 35.943932, 57.217453>,  <28.736824, 36.188137, 56.919163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630116, 35.943932, 57.217453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806482, -0.565049, -0.174086,
		0.527654, 0.554975, 0.643105,
		-0.266772, -0.610510, 0.745728,
		28.550083, 35.760780, 57.441170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287024, 36.067066, 57.336052>,  <28.736824, 36.188137, 56.919163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287024, 36.067066, 57.336052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048273, 35.748947, 57.378460>,  <28.905022, 35.558075, 57.403904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.048273, 35.748947, 57.378460>,  <29.287024, 36.067066, 57.336052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048273, 35.748947, 57.378460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783458, -0.606219, -0.136722,
		0.173006, 0.001456, 0.984920,
		-0.596878, -0.795296, 0.106020,
		28.869209, 35.510357, 57.410267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715042, 35.647495, 57.610855>,  <29.287024, 36.067066, 57.336052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715042, 35.647495, 57.610855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.411892, 35.408607, 57.505817>,  <29.230001, 35.265274, 57.442795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.411892, 35.408607, 57.505817>,  <29.715042, 35.647495, 57.610855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411892, 35.408607, 57.505817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642533, -0.613545, -0.459037,
		0.113032, -0.516617, 0.848723,
		-0.757875, -0.597218, -0.262594,
		29.184528, 35.229443, 57.427040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835367, 35.625198, 58.392822>,  <29.715042, 35.647495, 57.610855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835367, 35.625198, 58.392822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.113483, 35.606262, 58.679691>,  <30.280354, 35.594898, 58.851810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.113483, 35.606262, 58.679691>,  <29.835367, 35.625198, 58.392822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113483, 35.606262, 58.679691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449358, 0.750126, 0.485168,
		-0.560937, -0.659598, 0.500281,
		0.695289, -0.047343, 0.717169,
		30.322071, 35.592060, 58.894840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583345, 35.489143, 59.083611>,  <29.835367, 35.625198, 58.392822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583345, 35.489143, 59.083611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.934526, 35.668274, 59.151318>,  <30.145235, 35.775753, 59.191940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.934526, 35.668274, 59.151318>,  <29.583345, 35.489143, 59.083611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934526, 35.668274, 59.151318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472347, 0.752631, 0.458731,
		0.078036, -0.482697, 0.872304,
		0.877952, 0.447828, 0.169268,
		30.197912, 35.802624, 59.202099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570026, 35.752621, 59.832470>,  <29.583345, 35.489143, 59.083611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570026, 35.752621, 59.832470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.851286, 35.967308, 59.645916>,  <30.020042, 36.096123, 59.533985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.851286, 35.967308, 59.645916>,  <29.570026, 35.752621, 59.832470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851286, 35.967308, 59.645916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240633, 0.796832, 0.554216,
		0.669085, -0.277471, 0.689445,
		0.703151, 0.536721, -0.466380,
		30.062231, 36.128323, 59.506001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997253, 36.096863, 60.281841>,  <29.570026, 35.752621, 59.832470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997253, 36.096863, 60.281841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.085196, 36.315243, 59.958458>,  <30.137960, 36.446274, 59.764427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.085196, 36.315243, 59.958458>,  <29.997253, 36.096863, 60.281841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085196, 36.315243, 59.958458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232634, 0.834163, 0.500053,
		0.947389, 0.078135, 0.310402,
		0.219854, 0.545955, -0.808454,
		30.151152, 36.479031, 59.715923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377447, 36.769436, 60.540314>,  <29.997253, 36.096863, 60.281841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377447, 36.769436, 60.540314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195250, 36.798466, 60.185402>,  <30.085932, 36.815884, 59.972454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195250, 36.798466, 60.185402>,  <30.377447, 36.769436, 60.540314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195250, 36.798466, 60.185402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421048, 0.860590, 0.286538,
		0.784376, 0.504102, -0.361435,
		-0.455492, 0.072572, -0.887277,
		30.058601, 36.820236, 59.919220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565804, 37.452148, 60.308910>,  <30.377447, 36.769436, 60.540314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565804, 37.452148, 60.308910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.239279, 37.347427, 60.102962>,  <30.043364, 37.284595, 59.979393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.239279, 37.347427, 60.102962>,  <30.565804, 37.452148, 60.308910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239279, 37.347427, 60.102962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445784, 0.852382, 0.273351,
		0.367300, 0.452661, -0.812520,
		-0.816313, -0.261806, -0.514869,
		29.994385, 37.268887, 59.948502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263756, 38.075443, 59.832973>,  <30.565804, 37.452148, 60.308910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263756, 38.075443, 59.832973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951075, 37.828461, 59.868061>,  <29.763466, 37.680271, 59.889114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951075, 37.828461, 59.868061>,  <30.263756, 38.075443, 59.832973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951075, 37.828461, 59.868061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576745, 0.769234, 0.275036,
		-0.237295, 0.164407, -0.957424,
		-0.781701, -0.617454, 0.087714,
		29.716564, 37.643223, 59.894375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366728, 38.680550, 59.511536>,  <30.263756, 38.075443, 59.832973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366728, 38.680550, 59.511536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.562725, 39.019516, 59.593307>,  <30.680323, 39.222897, 59.642372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.562725, 39.019516, 59.593307>,  <30.366728, 38.680550, 59.511536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562725, 39.019516, 59.593307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664779, -0.211545, -0.716462,
		-0.563895, 0.486964, -0.667000,
		0.489992, 0.847417, 0.204434,
		30.709723, 39.273743, 59.654636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366524, 39.064266, 58.915184>,  <30.366728, 38.680550, 59.511536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366524, 39.064266, 58.915184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.690689, 39.166836, 59.125889>,  <30.885189, 39.228378, 59.252312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.690689, 39.166836, 59.125889>,  <30.366524, 39.064266, 58.915184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690689, 39.166836, 59.125889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580622, -0.231601, -0.780538,
		-0.078153, 0.938406, -0.336579,
		0.810414, 0.256426, 0.526759,
		30.933813, 39.243763, 59.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876019, 39.382950, 58.494503>,  <30.366524, 39.064266, 58.915184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876019, 39.382950, 58.494503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.090319, 39.253304, 58.806381>,  <31.218899, 39.175518, 58.993507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.090319, 39.253304, 58.806381>,  <30.876019, 39.382950, 58.494503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090319, 39.253304, 58.806381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783865, -0.152356, -0.601949,
		0.313890, 0.933670, 0.172436,
		0.535750, -0.324112, 0.779694,
		31.251043, 39.156071, 59.040291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530069, 39.510788, 58.194725>,  <30.876019, 39.382950, 58.494503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530069, 39.510788, 58.194725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.619938, 39.302280, 58.524040>,  <31.673859, 39.177174, 58.721630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.619938, 39.302280, 58.524040>,  <31.530069, 39.510788, 58.194725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619938, 39.302280, 58.524040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777864, -0.412930, -0.473726,
		0.586900, 0.746836, 0.312706,
		0.224669, -0.521272, 0.823285,
		31.687338, 39.145897, 58.771027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229939, 39.687481, 58.453087>,  <31.530069, 39.510788, 58.194725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229939, 39.687481, 58.453087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.132095, 39.321495, 58.581459>,  <32.073387, 39.101902, 58.658482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.132095, 39.321495, 58.581459>,  <32.229939, 39.687481, 58.453087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132095, 39.321495, 58.581459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790559, -0.379839, -0.480353,
		0.561410, 0.136216, 0.816250,
		-0.244611, -0.914969, 0.320932,
		32.058712, 39.047005, 58.677738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879066, 39.302170, 58.680851>,  <32.229939, 39.687481, 58.453087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879066, 39.302170, 58.680851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624756, 39.008884, 58.584370>,  <32.472168, 38.832912, 58.526482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.624756, 39.008884, 58.584370>,  <32.879066, 39.302170, 58.680851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624756, 39.008884, 58.584370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726304, -0.462496, -0.508508,
		0.261290, -0.498487, 0.826582,
		-0.635776, -0.733218, -0.241208,
		32.434025, 38.788918, 58.512009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260223, 38.660904, 58.820671>,  <32.879066, 39.302170, 58.680851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260223, 38.660904, 58.820671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.952633, 38.577168, 58.579060>,  <32.768078, 38.526924, 58.434093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.952633, 38.577168, 58.579060>,  <33.260223, 38.660904, 58.820671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952633, 38.577168, 58.579060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604810, -0.544284, -0.581343,
		-0.207063, -0.812362, 0.545154,
		-0.768980, -0.209339, -0.604026,
		32.721939, 38.514366, 58.397850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.950827, 43.676369, 57.807514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821722, 43.584846, 57.440151>,  <28.744259, 43.529934, 57.219734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821722, 43.584846, 57.440151>,  <28.950827, 43.676369, 57.807514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821722, 43.584846, 57.440151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510338, 0.775131, -0.372461,
		0.797108, -0.588914, -0.133414,
		-0.322761, -0.228806, -0.918408,
		28.724894, 43.516205, 57.164627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484343, 42.966965, 57.669453>,  <28.950827, 43.676369, 57.807514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484343, 42.966965, 57.669453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123863, 42.838657, 57.552868>,  <27.907576, 42.761673, 57.482918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123863, 42.838657, 57.552868>,  <28.484343, 42.966965, 57.669453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123863, 42.838657, 57.552868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384830, -0.282883, -0.878569,
		0.199369, -0.903927, 0.378376,
		-0.901198, -0.320769, -0.291460,
		27.853504, 42.742428, 57.465431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544176, 42.235603, 57.309467>,  <28.484343, 42.966965, 57.669453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544176, 42.235603, 57.309467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209835, 42.409813, 57.175800>,  <28.009232, 42.514339, 57.095600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209835, 42.409813, 57.175800>,  <28.544176, 42.235603, 57.309467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209835, 42.409813, 57.175800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291482, -0.163727, -0.942460,
		-0.465179, -0.885161, 0.009903,
		-0.835851, 0.435527, -0.334171,
		27.959080, 42.540470, 57.075550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151102, 41.704201, 56.953655>,  <28.544176, 42.235603, 57.309467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151102, 41.704201, 56.953655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029673, 42.056652, 56.808632>,  <27.956816, 42.268124, 56.721619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029673, 42.056652, 56.808632>,  <28.151102, 41.704201, 56.953655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029673, 42.056652, 56.808632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134695, -0.337012, -0.931816,
		-0.943240, -0.331708, -0.016377,
		-0.303572, 0.881131, -0.362562,
		27.938601, 42.320992, 56.699863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648985, 41.659313, 56.352806>,  <28.151102, 41.704201, 56.953655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648985, 41.659313, 56.352806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785038, 42.033867, 56.318172>,  <27.866669, 42.258598, 56.297390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785038, 42.033867, 56.318172>,  <27.648985, 41.659313, 56.352806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785038, 42.033867, 56.318172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345127, -0.209953, -0.914771,
		-0.874756, 0.281258, -0.394583,
		0.340131, 0.936383, -0.086588,
		27.887077, 42.314781, 56.292194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519405, 41.705296, 55.634361>,  <27.648985, 41.659313, 56.352806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519405, 41.705296, 55.634361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792923, 41.981247, 55.729439>,  <27.957033, 42.146816, 55.786484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792923, 41.981247, 55.729439>,  <27.519405, 41.705296, 55.634361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792923, 41.981247, 55.729439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462982, -0.158428, -0.872094,
		-0.563980, 0.706379, -0.427732,
		0.683794, 0.689876, 0.237691,
		27.998060, 42.188210, 55.800747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542627, 41.963478, 55.030384>,  <27.519405, 41.705296, 55.634361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542627, 41.963478, 55.030384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858479, 42.114494, 55.223858>,  <28.047989, 42.205105, 55.339943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858479, 42.114494, 55.223858>,  <27.542627, 41.963478, 55.030384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858479, 42.114494, 55.223858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518182, 0.011835, -0.855189,
		-0.328594, 0.925917, -0.186290,
		0.789629, 0.377542, 0.483682,
		28.095367, 42.227757, 55.368961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817404, 42.586021, 54.609711>,  <27.542627, 41.963478, 55.030384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817404, 42.586021, 54.609711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100517, 42.444305, 54.854176>,  <28.270386, 42.359276, 55.000854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100517, 42.444305, 54.854176>,  <27.817404, 42.586021, 54.609711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100517, 42.444305, 54.854176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675052, 0.084240, -0.732945,
		0.208194, 0.931332, 0.298791,
		0.707785, -0.354294, 0.611159,
		28.312853, 42.338017, 55.037525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532745, 42.923981, 54.430946>,  <27.817404, 42.586021, 54.609711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532745, 42.923981, 54.430946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611689, 42.592655, 54.640686>,  <28.659054, 42.393860, 54.766529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611689, 42.592655, 54.640686>,  <28.532745, 42.923981, 54.430946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611689, 42.592655, 54.640686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739610, -0.225261, -0.634220,
		0.643450, 0.512984, 0.568172,
		0.197358, -0.828314, 0.524352,
		28.670897, 42.344162, 54.797993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217913, 42.848972, 54.357086>,  <28.532745, 42.923981, 54.430946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217913, 42.848972, 54.357086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092121, 42.478519, 54.440395>,  <29.016647, 42.256248, 54.490379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092121, 42.478519, 54.440395>,  <29.217913, 42.848972, 54.357086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092121, 42.478519, 54.440395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709169, -0.375059, -0.597001,
		0.631017, -0.040045, 0.774734,
		-0.314478, -0.926136, 0.208270,
		28.997778, 42.200680, 54.502876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872135, 42.286316, 54.279446>,  <29.217913, 42.848972, 54.357086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872135, 42.286316, 54.279446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536364, 42.068966, 54.283459>,  <29.334902, 41.938557, 54.285866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536364, 42.068966, 54.283459>,  <29.872135, 42.286316, 54.279446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536364, 42.068966, 54.283459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352735, -0.558768, -0.750571,
		0.413448, -0.626513, 0.660714,
		-0.839428, -0.543379, 0.010029,
		29.284534, 41.905952, 54.286469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041706, 41.577866, 54.214172>,  <29.872135, 42.286316, 54.279446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041706, 41.577866, 54.214172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659796, 41.574463, 54.095291>,  <29.430649, 41.572422, 54.023964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659796, 41.574463, 54.095291>,  <30.041706, 41.577866, 54.214172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659796, 41.574463, 54.095291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234829, -0.634696, -0.736218,
		-0.182367, -0.772715, 0.607991,
		-0.954776, -0.008512, -0.297203,
		29.373363, 41.571911, 54.006130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398924, 41.439583, 54.895107>,  <30.041706, 41.577866, 54.214172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398924, 41.439583, 54.895107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752668, 41.491817, 55.074371>,  <30.964914, 41.523159, 55.181931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752668, 41.491817, 55.074371>,  <30.398924, 41.439583, 54.895107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752668, 41.491817, 55.074371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465337, 0.322652, 0.824231,
		-0.036965, -0.937466, 0.346110,
		0.884361, 0.130590, 0.448164,
		31.017977, 41.530994, 55.208820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366625, 41.039120, 55.515686>,  <30.398924, 41.439583, 54.895107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366625, 41.039120, 55.515686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621000, 41.339607, 55.586391>,  <30.773626, 41.519901, 55.628815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621000, 41.339607, 55.586391>,  <30.366625, 41.039120, 55.515686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621000, 41.339607, 55.586391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453141, 0.178069, 0.873473,
		0.624694, -0.635578, 0.453650,
		0.635941, 0.751221, 0.176768,
		30.811783, 41.564972, 55.639423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487007, 41.040302, 56.238777>,  <30.366625, 41.039120, 55.515686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487007, 41.040302, 56.238777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628483, 41.397873, 56.128654>,  <30.713369, 41.612415, 56.062580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628483, 41.397873, 56.128654>,  <30.487007, 41.040302, 56.238777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628483, 41.397873, 56.128654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154240, 0.346046, 0.925453,
		0.922558, -0.284859, 0.260272,
		0.353690, 0.893928, -0.275310,
		30.734591, 41.666050, 56.046062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038223, 41.218159, 56.794804>,  <30.487007, 41.040302, 56.238777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038223, 41.218159, 56.794804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946255, 41.564430, 56.616936>,  <30.891073, 41.772194, 56.510216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946255, 41.564430, 56.616936>,  <31.038223, 41.218159, 56.794804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946255, 41.564430, 56.616936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061671, 0.443030, 0.894383,
		0.971253, 0.233061, -0.048475,
		-0.229922, 0.865683, -0.444668,
		30.877277, 41.824135, 56.483536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408758, 41.671833, 57.120132>,  <31.038223, 41.218159, 56.794804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408758, 41.671833, 57.120132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115984, 41.883801, 56.948807>,  <30.940319, 42.010983, 56.846012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115984, 41.883801, 56.948807>,  <31.408758, 41.671833, 57.120132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115984, 41.883801, 56.948807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184605, 0.450871, 0.873291,
		0.655888, 0.718263, -0.232184,
		-0.731937, 0.529919, -0.428316,
		30.896402, 42.042778, 56.820312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577658, 42.313789, 57.334091>,  <31.408758, 41.671833, 57.120132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577658, 42.313789, 57.334091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190109, 42.301807, 57.235794>,  <30.957581, 42.294617, 57.176815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190109, 42.301807, 57.235794>,  <31.577658, 42.313789, 57.334091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190109, 42.301807, 57.235794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229057, 0.485036, 0.843963,
		0.093912, 0.873981, -0.476799,
		-0.968872, -0.029956, -0.245742,
		30.899448, 42.292820, 57.162071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396883, 42.987915, 57.401474>,  <31.577658, 42.313789, 57.334091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396883, 42.987915, 57.401474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066458, 42.765938, 57.440792>,  <30.868202, 42.632751, 57.464382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066458, 42.765938, 57.440792>,  <31.396883, 42.987915, 57.401474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066458, 42.765938, 57.440792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185121, 0.431913, 0.882712,
		-0.532308, 0.710979, -0.459519,
		-0.826062, -0.554941, 0.098294,
		30.818640, 42.599457, 57.470280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043182, 43.222095, 57.998306>,  <31.396883, 42.987915, 57.401474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043182, 43.222095, 57.998306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802650, 42.914848, 57.910313>,  <30.658331, 42.730499, 57.857517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802650, 42.914848, 57.910313>,  <31.043182, 43.222095, 57.998306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802650, 42.914848, 57.910313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467928, 0.115389, 0.876201,
		-0.647645, 0.629822, -0.428812,
		-0.601331, -0.768121, -0.219981,
		30.622252, 42.684414, 57.844318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323153, 43.433464, 57.985870>,  <31.043182, 43.222095, 57.998306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323153, 43.433464, 57.985870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325266, 43.045418, 58.082905>,  <30.326534, 42.812592, 58.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325266, 43.045418, 58.082905>,  <30.323153, 43.433464, 57.985870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325266, 43.045418, 58.082905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544857, 0.200622, 0.814176,
		-0.838512, -0.136477, -0.527514,
		0.005285, -0.970116, 0.242584,
		30.326851, 42.754383, 58.155682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574532, 43.186012, 58.192261>,  <30.323153, 43.433464, 57.985870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574532, 43.186012, 58.192261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846951, 42.948849, 58.364140>,  <30.010403, 42.806553, 58.467266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846951, 42.948849, 58.364140>,  <29.574532, 43.186012, 58.192261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846951, 42.948849, 58.364140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506883, 0.041752, 0.861003,
		-0.528435, -0.804188, -0.272099,
		0.681048, -0.592907, 0.429692,
		30.051266, 42.770977, 58.493046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143616, 42.487411, 58.420734>,  <29.574532, 43.186012, 58.192261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143616, 42.487411, 58.420734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492411, 42.524101, 58.613075>,  <29.701689, 42.546116, 58.728481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492411, 42.524101, 58.613075>,  <29.143616, 42.487411, 58.420734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492411, 42.524101, 58.613075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489419, 0.183975, 0.852422,
		-0.010277, -0.978642, 0.205316,
		0.871988, 0.091726, 0.480856,
		29.754007, 42.551620, 58.757332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005819, 42.169655, 59.035038>,  <29.143616, 42.487411, 58.420734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005819, 42.169655, 59.035038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336584, 42.382179, 59.108715>,  <29.535044, 42.509693, 59.152920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336584, 42.382179, 59.108715>,  <29.005819, 42.169655, 59.035038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336584, 42.382179, 59.108715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383984, 0.294206, 0.875214,
		0.410819, -0.794452, 0.447297,
		0.826912, 0.531309, 0.184192,
		29.584658, 42.541573, 59.163971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175980, 42.062046, 59.747387>,  <29.005819, 42.169655, 59.035038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175980, 42.062046, 59.747387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368790, 42.392120, 59.629589>,  <29.484476, 42.590164, 59.558910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368790, 42.392120, 59.629589>,  <29.175980, 42.062046, 59.747387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368790, 42.392120, 59.629589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197251, 0.429693, 0.881167,
		0.853664, -0.366657, 0.369892,
		0.482026, 0.825182, -0.294490,
		29.513397, 42.639675, 59.541241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665358, 42.164547, 60.242691>,  <29.175980, 42.062046, 59.747387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665358, 42.164547, 60.242691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572323, 42.514580, 60.072922>,  <29.516502, 42.724598, 59.971058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572323, 42.514580, 60.072922>,  <29.665358, 42.164547, 60.242691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572323, 42.514580, 60.072922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190023, 0.387097, 0.902245,
		0.953831, 0.290502, 0.076251,
		-0.232588, 0.875079, -0.424428,
		29.502546, 42.777103, 59.945595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622198, 42.011002, 60.929424>,  <29.665358, 42.164547, 60.242691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622198, 42.011002, 60.929424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545111, 41.639202, 61.055214>,  <29.498859, 41.416122, 61.130688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545111, 41.639202, 61.055214>,  <29.622198, 42.011002, 60.929424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545111, 41.639202, 61.055214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728430, -0.350246, -0.588828,
		0.657458, 0.115597, 0.744571,
		-0.192716, -0.929497, 0.314477,
		29.487295, 41.360352, 61.149555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275423, 41.634697, 60.816883>,  <29.622198, 42.011002, 60.929424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275423, 41.634697, 60.816883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029703, 41.323990, 60.872406>,  <29.882271, 41.137566, 60.905720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029703, 41.323990, 60.872406>,  <30.275423, 41.634697, 60.816883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029703, 41.323990, 60.872406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666852, -0.605099, -0.434929,
		0.421833, -0.174612, 0.889701,
		-0.614301, -0.776766, 0.138810,
		29.845413, 41.090961, 60.914047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653673, 41.027489, 60.974171>,  <30.275423, 41.634697, 60.816883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653673, 41.027489, 60.974171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302088, 40.866249, 60.872238>,  <30.091137, 40.769505, 60.811081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302088, 40.866249, 60.872238>,  <30.653673, 41.027489, 60.974171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302088, 40.866249, 60.872238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476886, -0.745134, -0.466213,
		-0.001952, -0.531308, 0.847176,
		-0.878963, -0.403096, -0.254828,
		30.038399, 40.745319, 60.795792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716705, 40.401100, 61.150642>,  <30.653673, 41.027489, 60.974171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716705, 40.401100, 61.150642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416485, 40.415260, 60.886696>,  <30.236353, 40.423756, 60.728329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416485, 40.415260, 60.886696>,  <30.716705, 40.401100, 61.150642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416485, 40.415260, 60.886696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409590, -0.758685, -0.506589,
		-0.518562, -0.650495, 0.554932,
		-0.750553, 0.035403, -0.659862,
		30.191319, 40.425880, 60.688736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437904, 39.741421, 61.147739>,  <30.716705, 40.401100, 61.150642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437904, 39.741421, 61.147739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344858, 39.927574, 60.806141>,  <30.289030, 40.039265, 60.601181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344858, 39.927574, 60.806141>,  <30.437904, 39.741421, 61.147739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344858, 39.927574, 60.806141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413468, -0.747461, -0.519949,
		-0.880304, -0.474047, -0.018553,
		-0.232613, 0.465384, -0.853996,
		30.275074, 40.067188, 60.549942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234777, 39.253117, 60.754169>,  <30.437904, 39.741421, 61.147739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234777, 39.253117, 60.754169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283121, 39.535835, 60.475365>,  <30.312128, 39.705467, 60.308083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283121, 39.535835, 60.475365>,  <30.234777, 39.253117, 60.754169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283121, 39.535835, 60.475365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410345, -0.674935, -0.613254,
		-0.903886, -0.211898, -0.371604,
		0.120862, 0.706798, -0.697015,
		30.319380, 39.747875, 60.266262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059254, 38.988350, 60.102684>,  <30.234777, 39.253117, 60.754169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059254, 38.988350, 60.102684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299088, 39.299522, 60.027508>,  <30.442987, 39.486225, 59.982403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299088, 39.299522, 60.027508>,  <30.059254, 38.988350, 60.102684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299088, 39.299522, 60.027508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540575, -0.566835, -0.621672,
		-0.590150, 0.271149, -0.760396,
		0.599585, 0.777931, -0.187941,
		30.478964, 39.532902, 59.971127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703846, 38.463058, 59.633820>,  <30.059254, 38.988350, 60.102684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703846, 38.463058, 59.633820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509335, 38.164379, 59.815361>,  <29.392628, 37.985172, 59.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509335, 38.164379, 59.815361>,  <29.703846, 38.463058, 59.633820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509335, 38.164379, 59.815361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716922, 0.637876, 0.281314,
		-0.499557, -0.188580, -0.845506,
		-0.486277, -0.746694, 0.453853,
		29.363451, 37.940372, 59.951515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039400, 38.545311, 59.473808>,  <29.703846, 38.463058, 59.633820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039400, 38.545311, 59.473808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986351, 38.297989, 59.783676>,  <28.954521, 38.149593, 59.969597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986351, 38.297989, 59.783676>,  <29.039400, 38.545311, 59.473808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986351, 38.297989, 59.783676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824416, 0.502687, 0.260086,
		-0.550227, -0.604154, -0.576409,
		-0.132621, -0.618307, 0.774667,
		28.946564, 38.112495, 60.016075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234966, 38.394981, 59.487785>,  <29.039400, 38.545311, 59.473808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234966, 38.394981, 59.487785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383148, 38.305115, 59.848293>,  <28.472057, 38.251194, 60.064598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383148, 38.305115, 59.848293>,  <28.234966, 38.394981, 59.487785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383148, 38.305115, 59.848293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759456, 0.485384, 0.433162,
		-0.534781, -0.844941, 0.009185,
		0.370454, -0.224671, 0.901269,
		28.494284, 38.237713, 60.118675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752285, 38.044407, 59.921837>,  <28.234966, 38.394981, 59.487785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752285, 38.044407, 59.921837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998466, 38.237576, 60.170998>,  <28.146175, 38.353477, 60.320496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998466, 38.237576, 60.170998>,  <27.752285, 38.044407, 59.921837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998466, 38.237576, 60.170998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771415, 0.531184, 0.350376,
		-0.161672, -0.696155, 0.699450,
		0.615452, 0.482920, 0.622902,
		28.183102, 38.382450, 60.357868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346100, 38.223721, 60.514709>,  <27.752285, 38.044407, 59.921837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346100, 38.223721, 60.514709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667295, 38.460438, 60.542961>,  <27.860014, 38.602467, 60.559914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667295, 38.460438, 60.542961>,  <27.346100, 38.223721, 60.514709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667295, 38.460438, 60.542961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578053, 0.744472, 0.334091,
		0.145129, -0.309102, 0.939890,
		0.802990, 0.591792, 0.070633,
		27.908192, 38.637974, 60.564152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242958, 38.527714, 61.133179>,  <27.346100, 38.223721, 60.514709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242958, 38.527714, 61.133179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508873, 38.766865, 60.954021>,  <27.668423, 38.910355, 60.846527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508873, 38.766865, 60.954021>,  <27.242958, 38.527714, 61.133179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508873, 38.766865, 60.954021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430737, 0.796634, 0.424076,
		0.610347, -0.088998, 0.787119,
		0.664787, 0.597875, -0.447888,
		27.708309, 38.946228, 60.819656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466576, 38.896797, 61.662922>,  <27.242958, 38.527714, 61.133179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466576, 38.896797, 61.662922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537745, 39.111019, 61.332703>,  <27.580446, 39.239552, 61.134571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537745, 39.111019, 61.332703>,  <27.466576, 38.896797, 61.662922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537745, 39.111019, 61.332703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357044, 0.816896, 0.452992,
		0.916987, 0.214160, 0.336558,
		0.177921, 0.535553, -0.825547,
		27.591122, 39.271687, 61.085037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659214, 39.580833, 61.922585>,  <27.466576, 38.896797, 61.662922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659214, 39.580833, 61.922585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547598, 39.642052, 61.543381>,  <27.480627, 39.678783, 61.315861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547598, 39.642052, 61.543381>,  <27.659214, 39.580833, 61.922585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547598, 39.642052, 61.543381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533913, 0.795834, 0.285631,
		0.798169, 0.585855, -0.140360,
		-0.279042, 0.153042, -0.948005,
		27.463886, 39.687965, 61.258980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631512, 40.346462, 61.809532>,  <27.659214, 39.580833, 61.922585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631512, 40.346462, 61.809532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427837, 40.203239, 61.496475>,  <27.305632, 40.117306, 61.308643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427837, 40.203239, 61.496475>,  <27.631512, 40.346462, 61.809532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427837, 40.203239, 61.496475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648553, 0.757422, 0.075435,
		0.565779, 0.545995, -0.617886,
		-0.509188, -0.358053, -0.782640,
		27.275082, 40.095825, 61.261684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.129074, 33.735222, 47.141289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419388, 34.007862, 47.178505>,  <36.593578, 34.171444, 47.200836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.419388, 34.007862, 47.178505>,  <36.129074, 33.735222, 47.141289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419388, 34.007862, 47.178505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617158, 0.585404, 0.525755,
		0.303886, -0.439008, 0.845533,
		0.725789, 0.681597, 0.093041,
		36.637123, 34.212341, 47.206417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208614, 33.832787, 47.846191>,  <36.129074, 33.735222, 47.141289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208614, 33.832787, 47.846191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347828, 34.150669, 47.647266>,  <36.431355, 34.341396, 47.527912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.347828, 34.150669, 47.647266>,  <36.208614, 33.832787, 47.846191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347828, 34.150669, 47.647266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763003, 0.548340, 0.342271,
		0.544692, 0.260312, 0.797213,
		0.348047, 0.794708, -0.497295,
		36.452240, 34.389080, 47.498074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388737, 34.431370, 48.349625>,  <36.208614, 33.832787, 47.846191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388737, 34.431370, 48.349625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327061, 34.583450, 47.984840>,  <36.290054, 34.674698, 47.765968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327061, 34.583450, 47.984840>,  <36.388737, 34.431370, 48.349625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327061, 34.583450, 47.984840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755666, 0.549266, 0.356755,
		0.636549, 0.744144, 0.202618,
		-0.154186, 0.380204, -0.911960,
		36.280804, 34.697510, 47.711254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094330, 35.111176, 48.477795>,  <36.388737, 34.431370, 48.349625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094330, 35.111176, 48.477795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004391, 35.067379, 48.090504>,  <35.950428, 35.041100, 47.858131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.004391, 35.067379, 48.090504>,  <36.094330, 35.111176, 48.477795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004391, 35.067379, 48.090504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918690, 0.354979, 0.173202,
		0.324735, 0.928440, -0.180404,
		-0.224847, -0.109490, -0.968223,
		35.936935, 35.034531, 47.800037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762871, 35.790756, 48.148502>,  <36.094330, 35.111176, 48.477795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762871, 35.790756, 48.148502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651966, 35.468906, 47.938469>,  <35.585423, 35.275799, 47.812450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651966, 35.468906, 47.938469>,  <35.762871, 35.790756, 48.148502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651966, 35.468906, 47.938469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960308, 0.249452, 0.124825,
		0.030545, 0.538847, -0.841850,
		-0.277263, -0.804622, -0.525079,
		35.568787, 35.227520, 47.780945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229641, 36.100887, 47.873741>,  <35.762871, 35.790756, 48.148502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229641, 36.100887, 47.873741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187233, 35.714600, 47.778965>,  <35.161789, 35.482826, 47.722099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187233, 35.714600, 47.778965>,  <35.229641, 36.100887, 47.873741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187233, 35.714600, 47.778965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993528, 0.093113, 0.065056,
		-0.040764, 0.242300, -0.969345,
		-0.106021, -0.965723, -0.236936,
		35.155426, 35.424881, 47.707886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654472, 35.990780, 47.426605>,  <35.229641, 36.100887, 47.873741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654472, 35.990780, 47.426605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726360, 35.636276, 47.597366>,  <34.769493, 35.423573, 47.699821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.726360, 35.636276, 47.597366>,  <34.654472, 35.990780, 47.426605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726360, 35.636276, 47.597366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982950, -0.144645, 0.113522,
		-0.038862, -0.440022, -0.897146,
		0.179720, -0.886261, 0.426898,
		34.780277, 35.370399, 47.725437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157791, 35.521736, 47.111000>,  <34.654472, 35.990780, 47.426605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157791, 35.521736, 47.111000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.259815, 35.345287, 47.455173>,  <34.321030, 35.239418, 47.661678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.259815, 35.345287, 47.455173>,  <34.157791, 35.521736, 47.111000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259815, 35.345287, 47.455173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959876, -0.222770, 0.170327,
		0.116544, -0.869357, -0.480245,
		0.255059, -0.441125, 0.860438,
		34.336334, 35.212952, 47.713306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634609, 35.133194, 47.202229>,  <34.157791, 35.521736, 47.111000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634609, 35.133194, 47.202229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835636, 35.102612, 47.546688>,  <33.956253, 35.084263, 47.753365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835636, 35.102612, 47.546688>,  <33.634609, 35.133194, 47.202229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835636, 35.102612, 47.546688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817189, -0.367132, 0.444315,
		0.282186, -0.927021, -0.246986,
		0.502566, -0.076455, 0.861151,
		33.986404, 35.079674, 47.805035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602264, 34.369682, 47.401928>,  <33.634609, 35.133194, 47.202229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602264, 34.369682, 47.401928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.619942, 34.637547, 47.698471>,  <33.630547, 34.798264, 47.876396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.619942, 34.637547, 47.698471>,  <33.602264, 34.369682, 47.401928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619942, 34.637547, 47.698471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864489, -0.346293, 0.364336,
		0.500706, -0.656994, 0.563606,
		0.044193, 0.669657, 0.741355,
		33.633202, 34.838444, 47.920879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357662, 34.049450, 47.892849>,  <33.602264, 34.369682, 47.401928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357662, 34.049450, 47.892849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330589, 34.421474, 48.037300>,  <33.314346, 34.644688, 48.123970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.330589, 34.421474, 48.037300>,  <33.357662, 34.049450, 47.892849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330589, 34.421474, 48.037300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858033, -0.238958, 0.454619,
		0.509116, -0.279089, 0.814193,
		-0.067678, 0.930058, 0.361125,
		33.310287, 34.700493, 48.145638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177132, 33.958519, 48.563560>,  <33.357662, 34.049450, 47.892849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177132, 33.958519, 48.563560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065647, 34.336845, 48.496925>,  <32.998756, 34.563843, 48.456944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065647, 34.336845, 48.496925>,  <33.177132, 33.958519, 48.563560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065647, 34.336845, 48.496925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824218, -0.146534, 0.546985,
		0.492936, 0.289757, 0.820399,
		-0.278709, 0.945817, -0.166591,
		32.982033, 34.620590, 48.446949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927109, 34.181602, 49.220642>,  <33.177132, 33.958519, 48.563560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927109, 34.181602, 49.220642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.756527, 34.408886, 48.939137>,  <32.654179, 34.545258, 48.770233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.756527, 34.408886, 48.939137>,  <32.927109, 34.181602, 49.220642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756527, 34.408886, 48.939137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878516, -0.075008, 0.471787,
		0.215286, 0.819458, 0.531169,
		-0.426452, 0.568209, -0.703759,
		32.628590, 34.579350, 48.728008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627834, 34.624916, 49.684795>,  <32.927109, 34.181602, 49.220642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627834, 34.624916, 49.684795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451588, 34.666531, 49.328136>,  <32.345840, 34.691498, 49.114140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.451588, 34.666531, 49.328136>,  <32.627834, 34.624916, 49.684795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451588, 34.666531, 49.328136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897589, -0.035776, 0.439380,
		0.013810, 0.993930, 0.109142,
		-0.440617, 0.104033, -0.891647,
		32.319401, 34.697739, 49.060642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164337, 35.233742, 49.745335>,  <32.627834, 34.624916, 49.684795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164337, 35.233742, 49.745335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.046120, 34.974224, 49.464844>,  <31.975189, 34.818512, 49.296551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.046120, 34.974224, 49.464844>,  <32.164337, 35.233742, 49.745335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046120, 34.974224, 49.464844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919009, -0.007389, 0.394168,
		-0.260916, 0.760926, -0.594066,
		-0.295543, -0.648796, -0.701226,
		31.957457, 34.779587, 49.254475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533281, 35.469383, 49.593262>,  <32.164337, 35.233742, 49.745335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533281, 35.469383, 49.593262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.530682, 35.091949, 49.460838>,  <31.529121, 34.865490, 49.381386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.530682, 35.091949, 49.460838>,  <31.533281, 35.469383, 49.593262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530682, 35.091949, 49.460838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909395, -0.132113, 0.394396,
		-0.415884, 0.303627, -0.857235,
		-0.006498, -0.943587, -0.331060,
		31.528732, 34.808872, 49.361519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824408, 35.424515, 49.460884>,  <31.533281, 35.469383, 49.593262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824408, 35.424515, 49.460884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.962374, 35.051125, 49.500187>,  <31.045153, 34.827091, 49.523769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.962374, 35.051125, 49.500187>,  <30.824408, 35.424515, 49.460884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962374, 35.051125, 49.500187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908199, -0.305455, 0.286134,
		-0.237085, -0.187931, -0.953138,
		0.344914, -0.933477, 0.098260,
		31.065847, 34.771080, 49.529663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416130, 35.083893, 49.047222>,  <30.824408, 35.424515, 49.460884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416130, 35.083893, 49.047222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.553291, 34.808914, 49.303295>,  <30.635588, 34.643925, 49.456940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.553291, 34.808914, 49.303295>,  <30.416130, 35.083893, 49.047222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553291, 34.808914, 49.303295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935339, -0.312933, 0.164965,
		0.086928, -0.655352, -0.750305,
		0.342905, -0.687450, 0.640179,
		30.656162, 34.602680, 49.495350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952316, 34.601139, 49.028000>,  <30.416130, 35.083893, 49.047222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952316, 34.601139, 49.028000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.121489, 34.455940, 49.360111>,  <30.222992, 34.368820, 49.559380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.121489, 34.455940, 49.360111>,  <29.952316, 34.601139, 49.028000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121489, 34.455940, 49.360111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886757, -0.354390, 0.296764,
		0.186519, -0.861767, -0.471771,
		0.422933, -0.362994, 0.830279,
		30.248369, 34.347042, 49.609196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748859, 33.919552, 49.083031>,  <29.952316, 34.601139, 49.028000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748859, 33.919552, 49.083031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.846960, 34.066158, 49.442032>,  <29.905821, 34.154121, 49.657433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.846960, 34.066158, 49.442032>,  <29.748859, 33.919552, 49.083031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846960, 34.066158, 49.442032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861018, -0.343108, 0.375399,
		0.445532, -0.864837, 0.231429,
		0.245254, 0.366516, 0.897506,
		29.920536, 34.176113, 49.711285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368034, 33.515408, 49.493938>,  <29.748859, 33.919552, 49.083031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368034, 33.515408, 49.493938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.481125, 33.777889, 49.773785>,  <29.548979, 33.935379, 49.941692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.481125, 33.777889, 49.773785>,  <29.368034, 33.515408, 49.493938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481125, 33.777889, 49.773785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846529, -0.172287, 0.503692,
		0.451058, -0.734655, 0.506783,
		0.282728, 0.656201, 0.699618,
		29.565943, 33.974751, 49.983669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263840, 33.213249, 50.181995>,  <29.368034, 33.515408, 49.493938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263840, 33.213249, 50.181995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.248354, 33.612183, 50.206718>,  <29.239063, 33.851543, 50.221554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.248354, 33.612183, 50.206718>,  <29.263840, 33.213249, 50.181995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248354, 33.612183, 50.206718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886684, -0.062807, 0.458091,
		0.460753, -0.037068, 0.886754,
		-0.038714, 0.997337, 0.061806,
		29.236740, 33.911385, 50.225262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121893, 33.352364, 50.814098>,  <29.263840, 33.213249, 50.181995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121893, 33.352364, 50.814098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986624, 33.669834, 50.611824>,  <28.905462, 33.860317, 50.490459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986624, 33.669834, 50.611824>,  <29.121893, 33.352364, 50.814098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986624, 33.669834, 50.611824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899999, -0.115710, 0.420253,
		0.275030, 0.597237, 0.753436,
		-0.338171, 0.793674, -0.505690,
		28.885172, 33.907936, 50.460117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788515, 33.712120, 51.408493>,  <29.121893, 33.352364, 50.814098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788515, 33.712120, 51.408493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.662323, 33.884289, 51.070213>,  <28.586607, 33.987591, 50.867245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.662323, 33.884289, 51.070213>,  <28.788515, 33.712120, 51.408493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662323, 33.884289, 51.070213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925303, 0.058109, 0.374749,
		0.210444, 0.900756, 0.379938,
		-0.315480, 0.430421, -0.845701,
		28.567678, 34.013416, 50.816502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327765, 34.355854, 51.615532>,  <28.788515, 33.712120, 51.408493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327765, 34.355854, 51.615532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227806, 34.211117, 51.256283>,  <28.167831, 34.124275, 51.040733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227806, 34.211117, 51.256283>,  <28.327765, 34.355854, 51.615532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227806, 34.211117, 51.256283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967161, 0.048832, 0.249429,
		-0.046396, 0.930961, -0.362160,
		-0.249894, -0.361839, -0.898123,
		28.152838, 34.102566, 50.986847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852909, 34.846226, 51.434402>,  <28.327765, 34.355854, 51.615532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852909, 34.846226, 51.434402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.795897, 34.516407, 51.215385>,  <27.761690, 34.318516, 51.083977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.795897, 34.516407, 51.215385>,  <27.852909, 34.846226, 51.434402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795897, 34.516407, 51.215385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982056, 0.048787, 0.182169,
		-0.123495, 0.563682, -0.816708,
		-0.142530, -0.824550, -0.547542,
		27.753138, 34.269043, 51.051125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339306, 35.117271, 50.989647>,  <27.852909, 34.846226, 51.434402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339306, 35.117271, 50.989647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315519, 34.719604, 51.025642>,  <27.301249, 34.481003, 51.047241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315519, 34.719604, 51.025642>,  <27.339306, 35.117271, 50.989647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315519, 34.719604, 51.025642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996561, 0.064335, 0.052219,
		-0.057704, -0.086575, -0.994573,
		-0.059465, -0.994166, 0.089989,
		27.297680, 34.421356, 51.052639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620773, 34.980286, 50.896122>,  <27.339306, 35.117271, 50.989647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620773, 34.980286, 50.896122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.720556, 34.605919, 50.995583>,  <26.780426, 34.381298, 51.055260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.720556, 34.605919, 50.995583>,  <26.620773, 34.980286, 50.896122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720556, 34.605919, 50.995583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858104, -0.094635, 0.504680,
		-0.448807, -0.339269, -0.826722,
		0.249459, -0.935917, 0.248655,
		26.795395, 34.325142, 51.070179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025753, 34.582748, 50.682243>,  <26.620773, 34.980286, 50.896122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025753, 34.582748, 50.682243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.222803, 34.404648, 50.981327>,  <26.341034, 34.297787, 51.160778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.222803, 34.404648, 50.981327>,  <26.025753, 34.582748, 50.682243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222803, 34.404648, 50.981327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819350, 0.052202, 0.570913,
		-0.293233, -0.893881, -0.339102,
		0.492627, -0.445254, 0.747709,
		26.370590, 34.271072, 51.205639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539598, 34.076260, 50.910629>,  <26.025753, 34.582748, 50.682243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539598, 34.076260, 50.910629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813116, 34.099792, 51.201550>,  <25.977226, 34.113911, 51.376102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.813116, 34.099792, 51.201550>,  <25.539598, 34.076260, 50.910629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813116, 34.099792, 51.201550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725575, 0.160338, 0.669203,
		-0.077246, -0.985307, 0.152323,
		0.683793, 0.058828, 0.727300,
		26.018253, 34.117439, 51.419739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.208351, 33.762127, 51.449772>,  <25.539598, 34.076260, 50.910629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.208351, 33.762127, 51.449772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.500181, 33.984623, 51.608925>,  <25.675280, 34.118122, 51.704418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.500181, 33.984623, 51.608925>,  <25.208351, 33.762127, 51.449772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500181, 33.984623, 51.608925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610558, 0.267647, 0.745375,
		0.308117, -0.786740, 0.534888,
		0.729577, 0.556243, 0.397884,
		25.719055, 34.151497, 51.728291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118158, 33.581944, 52.133202>,  <25.208351, 33.762127, 51.449772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118158, 33.581944, 52.133202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.321007, 33.926598, 52.125031>,  <25.442715, 34.133389, 52.120129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.321007, 33.926598, 52.125031>,  <25.118158, 33.581944, 52.133202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321007, 33.926598, 52.125031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647514, 0.396527, 0.650763,
		0.568820, -0.316786, 0.759006,
		0.507119, 0.861634, -0.020429,
		25.473143, 34.185089, 52.118900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.014719, 33.814487, 52.777809>,  <25.118158, 33.581944, 52.133202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.014719, 33.814487, 52.777809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.126612, 34.132778, 52.562935>,  <25.193747, 34.323753, 52.434010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.126612, 34.132778, 52.562935>,  <25.014719, 33.814487, 52.777809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126612, 34.132778, 52.562935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698234, 0.552647, 0.455028,
		0.658953, 0.247800, 0.710194,
		0.279731, 0.795724, -0.537191,
		25.210531, 34.371494, 52.401779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211378, 34.411171, 53.233147>,  <25.014719, 33.814487, 52.777809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211378, 34.411171, 53.233147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.113138, 34.585403, 52.886745>,  <25.054195, 34.689941, 52.678905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.113138, 34.585403, 52.886745>,  <25.211378, 34.411171, 53.233147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113138, 34.585403, 52.886745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713838, 0.523142, 0.465573,
		0.655833, 0.732526, 0.182449,
		-0.245598, 0.435578, -0.865999,
		25.039459, 34.716076, 52.626945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166573, 35.189827, 53.401814>,  <25.211378, 34.411171, 53.233147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166573, 35.189827, 53.401814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.951962, 35.117828, 53.072029>,  <24.823195, 35.074631, 52.874157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.951962, 35.117828, 53.072029>,  <25.166573, 35.189827, 53.401814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951962, 35.117828, 53.072029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761444, 0.524427, 0.381022,
		0.363788, 0.832212, -0.418428,
		-0.536526, -0.179998, -0.824464,
		24.791004, 35.063828, 52.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<34.950474, 32.270935, 50.560474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655754, 32.325195, 50.295528>,  <34.478924, 32.357754, 50.136562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655754, 32.325195, 50.295528>,  <34.950474, 32.270935, 50.560474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655754, 32.325195, 50.295528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499471, 0.551077, 0.668463,
		0.455693, 0.823354, -0.338277,
		-0.736798, 0.135654, -0.662364,
		34.434715, 32.365891, 50.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847317, 32.961498, 50.530594>,  <34.950474, 32.270935, 50.560474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847317, 32.961498, 50.530594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512550, 32.755535, 50.456352>,  <34.311691, 32.631958, 50.411808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.512550, 32.755535, 50.456352>,  <34.847317, 32.961498, 50.530594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512550, 32.755535, 50.456352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446827, 0.446893, 0.775005,
		-0.316107, 0.731546, -0.604084,
		-0.836912, -0.514906, -0.185608,
		34.261478, 32.601063, 50.400669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425026, 33.577221, 50.492786>,  <34.847317, 32.961498, 50.530594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425026, 33.577221, 50.492786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224033, 33.246719, 50.594627>,  <34.103436, 33.048420, 50.655731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224033, 33.246719, 50.594627>,  <34.425026, 33.577221, 50.492786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224033, 33.246719, 50.594627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216900, 0.405527, 0.887976,
		-0.836937, 0.390972, -0.382985,
		-0.502485, -0.826250, 0.254599,
		34.073288, 32.998844, 50.671005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812374, 33.773380, 50.808208>,  <34.425026, 33.577221, 50.492786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812374, 33.773380, 50.808208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850315, 33.395332, 50.933270>,  <33.873081, 33.168503, 51.008305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850315, 33.395332, 50.933270>,  <33.812374, 33.773380, 50.808208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850315, 33.395332, 50.933270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362041, 0.259811, 0.895223,
		-0.927324, -0.198109, -0.317528,
		0.094854, -0.945119, 0.312653,
		33.878773, 33.111797, 51.027065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250565, 33.684910, 51.338688>,  <33.812374, 33.773380, 50.808208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250565, 33.684910, 51.338688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498348, 33.378429, 51.407047>,  <33.647018, 33.194542, 51.448063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498348, 33.378429, 51.407047>,  <33.250565, 33.684910, 51.338688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498348, 33.378429, 51.407047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187246, 0.067200, 0.980012,
		-0.762371, -0.639077, -0.101840,
		0.619459, -0.766202, 0.170896,
		33.684185, 33.148567, 51.458317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920967, 33.322891, 51.843311>,  <33.250565, 33.684910, 51.338688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920967, 33.322891, 51.843311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291817, 33.179829, 51.888062>,  <33.514328, 33.093990, 51.914913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291817, 33.179829, 51.888062>,  <32.920967, 33.322891, 51.843311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291817, 33.179829, 51.888062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071342, 0.124630, 0.989635,
		-0.367894, -0.925499, 0.090032,
		0.927127, -0.357658, 0.111878,
		33.569954, 33.072533, 51.921623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915180, 32.821911, 52.421730>,  <32.920967, 33.322891, 51.843311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915180, 32.821911, 52.421730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289207, 32.960258, 52.390659>,  <33.513622, 33.043266, 52.372017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.289207, 32.960258, 52.390659>,  <32.915180, 32.821911, 52.421730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289207, 32.960258, 52.390659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029104, 0.293295, 0.955579,
		0.353285, -0.891266, 0.284315,
		0.935063, 0.345866, -0.077677,
		33.569725, 33.064018, 52.367355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167545, 32.543041, 53.024059>,  <32.915180, 32.821911, 52.421730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167545, 32.543041, 53.024059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.419727, 32.833206, 52.913570>,  <33.571037, 33.007305, 52.847275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.419727, 32.833206, 52.913570>,  <33.167545, 32.543041, 53.024059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419727, 32.833206, 52.913570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145863, 0.238804, 0.960050,
		0.762397, -0.645561, 0.044744,
		0.630456, 0.725413, -0.276227,
		33.608864, 33.050831, 52.830704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783810, 32.463467, 53.427963>,  <33.167545, 32.543041, 53.024059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783810, 32.463467, 53.427963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.785378, 32.849010, 53.321407>,  <33.786320, 33.080338, 53.257473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.785378, 32.849010, 53.321407>,  <33.783810, 32.463467, 53.427963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785378, 32.849010, 53.321407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302647, 0.252758, 0.918977,
		0.953094, -0.084224, -0.290718,
		0.003919, 0.963857, -0.266392,
		33.786552, 33.138168, 53.241489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444309, 32.682262, 53.699478>,  <33.783810, 32.463467, 53.427963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444309, 32.682262, 53.699478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205910, 32.994183, 53.622856>,  <34.062870, 33.181335, 53.576881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205910, 32.994183, 53.622856>,  <34.444309, 32.682262, 53.699478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205910, 32.994183, 53.622856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005284, 0.242358, 0.970173,
		0.802967, 0.577212, -0.148565,
		-0.596001, 0.779801, -0.191555,
		34.027111, 33.228123, 53.565388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752575, 33.256855, 54.058002>,  <34.444309, 32.682262, 53.699478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752575, 33.256855, 54.058002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400429, 33.419216, 53.959866>,  <34.189140, 33.516632, 53.900982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400429, 33.419216, 53.959866>,  <34.752575, 33.256855, 54.058002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400429, 33.419216, 53.959866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060679, 0.609434, 0.790512,
		0.470390, 0.681056, -0.561157,
		-0.880370, 0.405899, -0.245346,
		34.136318, 33.540985, 53.886261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770844, 33.881149, 54.436333>,  <34.752575, 33.256855, 54.058002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770844, 33.881149, 54.436333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386345, 33.812607, 54.349941>,  <34.155647, 33.771481, 54.298107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386345, 33.812607, 54.349941>,  <34.770844, 33.881149, 54.436333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386345, 33.812607, 54.349941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273365, 0.490787, 0.827285,
		-0.035762, 0.854263, -0.518609,
		-0.961245, -0.171355, -0.215974,
		34.097973, 33.761200, 54.285149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695930, 34.523457, 54.133015>,  <34.770844, 33.881149, 54.436333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695930, 34.523457, 54.133015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006538, 34.761765, 54.215069>,  <35.192902, 34.904747, 54.264301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006538, 34.761765, 54.215069>,  <34.695930, 34.523457, 54.133015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006538, 34.761765, 54.215069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505411, -0.394522, -0.767406,
		-0.376266, 0.699582, -0.607461,
		0.776520, 0.595767, 0.205131,
		35.239494, 34.940495, 54.276608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947189, 34.970322, 53.537937>,  <34.695930, 34.523457, 54.133015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947189, 34.970322, 53.537937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251976, 34.907944, 53.789360>,  <35.434849, 34.870518, 53.940212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251976, 34.907944, 53.789360>,  <34.947189, 34.970322, 53.537937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251976, 34.907944, 53.789360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562319, -0.322142, -0.761592,
		0.321250, 0.933759, -0.157773,
		0.761969, -0.155943, 0.628559,
		35.480568, 34.861160, 53.977928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474438, 35.297005, 53.274963>,  <34.947189, 34.970322, 53.537937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474438, 35.297005, 53.274963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.618336, 35.009411, 53.512836>,  <35.704674, 34.836857, 53.655560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.618336, 35.009411, 53.512836>,  <35.474438, 35.297005, 53.274963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618336, 35.009411, 53.512836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545812, -0.354767, -0.759098,
		0.756752, 0.597666, 0.264805,
		0.359743, -0.718983, 0.594684,
		35.726257, 34.793716, 53.691242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236683, 35.366032, 53.027374>,  <35.474438, 35.297005, 53.274963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236683, 35.366032, 53.027374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172421, 35.012768, 53.203651>,  <36.133862, 34.800808, 53.309418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.172421, 35.012768, 53.203651>,  <36.236683, 35.366032, 53.027374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172421, 35.012768, 53.203651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531263, -0.453675, -0.715499,
		0.831834, 0.119174, 0.542079,
		-0.160659, -0.883163, 0.440695,
		36.124222, 34.747818, 53.335861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884628, 35.066299, 52.944862>,  <36.236683, 35.366032, 53.027374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884628, 35.066299, 52.944862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675209, 34.753128, 53.079281>,  <36.549557, 34.565228, 53.159931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675209, 34.753128, 53.079281>,  <36.884628, 35.066299, 52.944862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675209, 34.753128, 53.079281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647690, -0.621987, -0.440033,
		0.553528, -0.012726, 0.832733,
		-0.523549, -0.782924, 0.336045,
		36.518143, 34.518250, 53.180096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361889, 34.559025, 53.075508>,  <36.884628, 35.066299, 52.944862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361889, 34.559025, 53.075508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026695, 34.348164, 53.019104>,  <36.825577, 34.221645, 52.985264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026695, 34.348164, 53.019104>,  <37.361889, 34.559025, 53.075508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026695, 34.348164, 53.019104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512896, -0.672650, -0.533367,
		0.186319, -0.519277, 0.834048,
		-0.837988, -0.527156, -0.141008,
		36.775299, 34.190018, 52.976803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592003, 33.913582, 53.238541>,  <37.361889, 34.559025, 53.075508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592003, 33.913582, 53.238541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263073, 33.880375, 53.013371>,  <37.065716, 33.860451, 52.878269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263073, 33.880375, 53.013371>,  <37.592003, 33.913582, 53.238541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263073, 33.880375, 53.013371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388593, -0.804609, -0.448998,
		-0.415660, -0.587972, 0.693913,
		-0.822327, -0.083020, -0.562926,
		37.016376, 33.855469, 52.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481873, 33.243576, 53.112694>,  <37.592003, 33.913582, 53.238541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481873, 33.243576, 53.112694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258965, 33.404278, 52.822029>,  <37.125217, 33.500698, 52.647629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.258965, 33.404278, 52.822029>,  <37.481873, 33.243576, 53.112694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258965, 33.404278, 52.822029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416113, -0.622203, -0.663109,
		-0.718538, -0.671908, 0.179563,
		-0.557273, 0.401750, -0.726667,
		37.091782, 33.524803, 52.604031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527287, 32.710827, 52.565022>,  <37.481873, 33.243576, 53.112694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527287, 32.710827, 52.565022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403328, 33.030762, 52.359409>,  <37.328953, 33.222721, 52.236042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.403328, 33.030762, 52.359409>,  <37.527287, 32.710827, 52.565022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403328, 33.030762, 52.359409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514936, -0.313296, -0.797926,
		-0.799253, -0.511969, -0.314773,
		-0.309896, 0.799833, -0.514034,
		37.310360, 33.270710, 52.205200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375561, 32.503120, 51.889568>,  <37.527287, 32.710827, 52.565022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375561, 32.503120, 51.889568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394859, 32.897892, 51.828060>,  <37.406437, 33.134754, 51.791157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394859, 32.897892, 51.828060>,  <37.375561, 32.503120, 51.889568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394859, 32.897892, 51.828060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344541, -0.160941, -0.924873,
		-0.937531, -0.008360, -0.347802,
		0.048243, 0.986929, -0.153768,
		37.409332, 33.193970, 51.781929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872623, 32.827862, 51.205181>,  <37.375561, 32.503120, 51.889568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872623, 32.827862, 51.205181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172985, 33.076916, 51.293243>,  <37.353203, 33.226349, 51.346081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172985, 33.076916, 51.293243>,  <36.872623, 32.827862, 51.205181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172985, 33.076916, 51.293243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295971, -0.019269, -0.955003,
		-0.590378, 0.782274, -0.198751,
		0.750903, 0.622637, 0.220154,
		37.398254, 33.263706, 51.359291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935719, 33.381592, 50.593365>,  <36.872623, 32.827862, 51.205181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935719, 33.381592, 50.593365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289425, 33.370953, 50.779854>,  <37.501648, 33.364571, 50.891747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.289425, 33.370953, 50.779854>,  <36.935719, 33.381592, 50.593365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289425, 33.370953, 50.779854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466281, -0.004187, -0.884627,
		0.025482, 0.999637, 0.008700,
		0.884270, -0.026598, 0.466219,
		37.554707, 33.362972, 50.919720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281204, 33.790352, 50.215103>,  <36.935719, 33.381592, 50.593365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281204, 33.790352, 50.215103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556225, 33.587063, 50.422562>,  <37.721237, 33.465092, 50.547035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556225, 33.587063, 50.422562>,  <37.281204, 33.790352, 50.215103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556225, 33.587063, 50.422562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606279, 0.008696, -0.795204,
		0.399629, 0.861183, 0.314102,
		0.687548, -0.508220, 0.518643,
		37.762489, 33.434597, 50.578156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859825, 34.156052, 50.111069>,  <37.281204, 33.790352, 50.215103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859825, 34.156052, 50.111069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945141, 33.774368, 50.194969>,  <37.996330, 33.545357, 50.245308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945141, 33.774368, 50.194969>,  <37.859825, 34.156052, 50.111069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945141, 33.774368, 50.194969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526943, -0.068428, -0.847141,
		0.822702, 0.291211, 0.488219,
		0.213289, -0.954209, 0.209747,
		38.009129, 33.488106, 50.257893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629150, 34.950768, 50.272533>,  <37.859825, 34.156052, 50.111069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629150, 34.950768, 50.272533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435081, 34.894669, 50.617775>,  <37.318642, 34.861008, 50.824921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.435081, 34.894669, 50.617775>,  <37.629150, 34.950768, 50.272533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435081, 34.894669, 50.617775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752714, 0.435346, 0.493858,
		-0.445009, 0.889272, -0.105651,
		-0.485169, -0.140246, 0.863100,
		37.289532, 34.852596, 50.876705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359848, 35.462254, 50.497524>,  <37.629150, 34.950768, 50.272533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359848, 35.462254, 50.497524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426910, 35.249714, 50.829685>,  <37.467148, 35.122192, 51.028980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426910, 35.249714, 50.829685>,  <37.359848, 35.462254, 50.497524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426910, 35.249714, 50.829685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715312, 0.645196, 0.268421,
		-0.678395, 0.548993, 0.488249,
		0.167655, -0.531346, 0.830399,
		37.477207, 35.090309, 51.078804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156925, 35.906746, 49.808601>,  <37.359848, 35.462254, 50.497524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156925, 35.906746, 49.808601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102921, 36.077778, 49.451065>,  <37.070518, 36.180397, 49.236542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102921, 36.077778, 49.451065>,  <37.156925, 35.906746, 49.808601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102921, 36.077778, 49.451065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182249, 0.875993, 0.446567,
		0.973939, 0.223192, -0.040341,
		-0.135009, 0.427577, -0.893840,
		37.062416, 36.206051, 49.182915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378967, 36.669662, 49.799873>,  <37.156925, 35.906746, 49.808601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378967, 36.669662, 49.799873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.125694, 36.630302, 49.492783>,  <36.973732, 36.606686, 49.308529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.125694, 36.630302, 49.492783>,  <37.378967, 36.669662, 49.799873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125694, 36.630302, 49.492783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563190, 0.738976, 0.369772,
		0.530944, 0.666507, -0.523324,
		-0.633180, -0.098402, -0.767724,
		36.935741, 36.600780, 49.262466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172886, 37.369053, 49.370026>,  <37.378967, 36.669662, 49.799873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172886, 37.369053, 49.370026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875835, 37.104290, 49.329266>,  <36.697605, 36.945431, 49.304810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875835, 37.104290, 49.329266>,  <37.172886, 37.369053, 49.370026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875835, 37.104290, 49.329266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656392, 0.689198, 0.306846,
		-0.132873, 0.294760, -0.946288,
		-0.742626, -0.661908, -0.101902,
		36.653049, 36.905716, 49.298695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541080, 37.732052, 49.011440>,  <37.172886, 37.369053, 49.370026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541080, 37.732052, 49.011440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416683, 37.421982, 49.231396>,  <36.342045, 37.235939, 49.363369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.416683, 37.421982, 49.231396>,  <36.541080, 37.732052, 49.011440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416683, 37.421982, 49.231396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679698, 0.585808, 0.441406,
		-0.664299, -0.236485, -0.709071,
		-0.310994, -0.775180, 0.549890,
		36.323383, 37.189426, 49.396362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826389, 37.792599, 48.945988>,  <36.541080, 37.732052, 49.011440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826389, 37.792599, 48.945988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877316, 37.555420, 49.264034>,  <35.907871, 37.413113, 49.454861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.877316, 37.555420, 49.264034>,  <35.826389, 37.792599, 48.945988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877316, 37.555420, 49.264034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738260, 0.478704, 0.475199,
		-0.662392, -0.647500, -0.376804,
		0.127314, -0.592947, 0.795113,
		35.915508, 37.377537, 49.502567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195786, 37.583675, 49.195770>,  <35.826389, 37.792599, 48.945988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195786, 37.583675, 49.195770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402756, 37.492931, 49.525814>,  <35.526939, 37.438484, 49.723839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402756, 37.492931, 49.525814>,  <35.195786, 37.583675, 49.195770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402756, 37.492931, 49.525814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724563, 0.396853, 0.563486,
		-0.455279, -0.889406, 0.040968,
		0.517426, -0.226860, 0.825109,
		35.557983, 37.424873, 49.773346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675617, 37.260094, 49.610779>,  <35.195786, 37.583675, 49.195770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675617, 37.260094, 49.610779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979725, 37.418568, 49.816704>,  <35.162189, 37.513653, 49.940258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.979725, 37.418568, 49.816704>,  <34.675617, 37.260094, 49.610779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979725, 37.418568, 49.816704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647911, 0.405177, 0.645014,
		0.046952, -0.823936, 0.564734,
		0.760268, 0.396182, 0.514813,
		35.207806, 37.537422, 49.971149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431759, 37.206482, 50.266678>,  <34.675617, 37.260094, 49.610779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431759, 37.206482, 50.266678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.734138, 37.467106, 50.292027>,  <34.915565, 37.623482, 50.307236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.734138, 37.467106, 50.292027>,  <34.431759, 37.206482, 50.266678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734138, 37.467106, 50.292027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509506, 0.524813, 0.681891,
		0.411034, -0.547762, 0.728703,
		0.755947, 0.651559, 0.063372,
		34.960922, 37.662575, 50.311039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632828, 37.315918, 51.034786>,  <34.431759, 37.206482, 50.266678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632828, 37.315918, 51.034786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741962, 37.632805, 50.816448>,  <34.807446, 37.822937, 50.685444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741962, 37.632805, 50.816448>,  <34.632828, 37.315918, 51.034786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741962, 37.632805, 50.816448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427399, 0.608123, 0.668967,
		0.861910, 0.050775, 0.504512,
		0.272839, 0.792217, -0.545849,
		34.823814, 37.870472, 50.652695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856571, 37.821423, 51.529881>,  <34.632828, 37.315918, 51.034786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856571, 37.821423, 51.529881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772789, 38.029896, 51.198944>,  <34.722519, 38.154980, 51.000381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772789, 38.029896, 51.198944>,  <34.856571, 37.821423, 51.529881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772789, 38.029896, 51.198944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436082, 0.707516, 0.556105,
		0.875191, 0.477270, 0.079084,
		-0.209460, 0.521185, -0.827341,
		34.709949, 38.186253, 50.950741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217163, 38.508354, 51.652180>,  <34.856571, 37.821423, 51.529881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217163, 38.508354, 51.652180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967266, 38.618359, 51.359863>,  <34.817326, 38.684361, 51.184471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967266, 38.618359, 51.359863>,  <35.217163, 38.508354, 51.652180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967266, 38.618359, 51.359863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195587, 0.850967, 0.487444,
		0.755935, 0.447462, -0.477850,
		-0.624747, 0.275015, -0.730793,
		34.779842, 38.700863, 51.140625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339897, 39.172321, 51.533222>,  <35.217163, 38.508354, 51.652180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339897, 39.172321, 51.533222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970814, 39.105358, 51.394321>,  <34.749363, 39.065182, 51.310982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.970814, 39.105358, 51.394321>,  <35.339897, 39.172321, 51.533222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970814, 39.105358, 51.394321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309290, 0.859164, 0.407648,
		0.230099, 0.483541, -0.844537,
		-0.922710, -0.167407, -0.347247,
		34.694000, 39.055138, 51.290146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082035, 39.866261, 51.496548>,  <35.339897, 39.172321, 51.533222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082035, 39.866261, 51.496548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761868, 39.627033, 51.480358>,  <34.569767, 39.483498, 51.470646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761868, 39.627033, 51.480358>,  <35.082035, 39.866261, 51.496548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761868, 39.627033, 51.480358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523631, 0.664741, 0.532851,
		-0.291776, 0.447699, -0.845241,
		-0.800424, -0.598067, -0.040474,
		34.521740, 39.447613, 51.468216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483120, 40.287437, 51.467243>,  <35.082035, 39.866261, 51.496548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483120, 40.287437, 51.467243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334892, 39.930050, 51.568737>,  <34.245956, 39.715618, 51.629635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334892, 39.930050, 51.568737>,  <34.483120, 40.287437, 51.467243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334892, 39.930050, 51.568737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552208, 0.431598, 0.713295,
		-0.746821, 0.124213, -0.653322,
		-0.370573, -0.893473, 0.253735,
		34.223721, 39.662006, 51.644859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721783, 40.311390, 51.402020>,  <34.483120, 40.287437, 51.467243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721783, 40.311390, 51.402020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842136, 40.042637, 51.672737>,  <33.914349, 39.881386, 51.835167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.842136, 40.042637, 51.672737>,  <33.721783, 40.311390, 51.402020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842136, 40.042637, 51.672737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663468, 0.362303, 0.654634,
		-0.685039, -0.645998, -0.336760,
		0.300883, -0.671880, 0.676791,
		33.932400, 39.841072, 51.875774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201408, 40.368763, 51.818348>,  <33.721783, 40.311390, 51.402020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201408, 40.368763, 51.818348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447735, 40.140034, 52.035156>,  <33.595531, 40.002796, 52.165241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.447735, 40.140034, 52.035156>,  <33.201408, 40.368763, 51.818348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447735, 40.140034, 52.035156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532248, 0.205305, 0.821317,
		-0.580930, -0.794269, -0.177923,
		0.615818, -0.571826, 0.542016,
		33.632481, 39.968487, 52.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757526, 39.935375, 52.236145>,  <33.201408, 40.368763, 51.818348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757526, 39.935375, 52.236145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119316, 39.952152, 52.405930>,  <33.336391, 39.962219, 52.507801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119316, 39.952152, 52.405930>,  <32.757526, 39.935375, 52.236145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119316, 39.952152, 52.405930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419746, 0.264275, 0.868315,
		-0.075759, -0.963535, 0.256633,
		0.904474, 0.041938, 0.424462,
		33.390659, 39.964733, 52.533268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771244, 39.447899, 52.725201>,  <32.757526, 39.935375, 52.236145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771244, 39.447899, 52.725201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050026, 39.719036, 52.818829>,  <33.217293, 39.881718, 52.875008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050026, 39.719036, 52.818829>,  <32.771244, 39.447899, 52.725201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050026, 39.719036, 52.818829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446897, 0.155265, 0.881008,
		0.560842, -0.718625, 0.411138,
		0.696950, 0.677843, 0.234073,
		33.259109, 39.922390, 52.889050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804127, 39.388500, 53.464748>,  <32.771244, 39.447899, 52.725201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804127, 39.388500, 53.464748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963722, 39.744862, 53.377934>,  <33.059479, 39.958679, 53.325844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.963722, 39.744862, 53.377934>,  <32.804127, 39.388500, 53.464748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963722, 39.744862, 53.377934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457038, 0.398412, 0.795226,
		0.794935, -0.218097, 0.566139,
		0.398993, 0.890899, -0.217033,
		33.083420, 40.012131, 53.312824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052078, 39.698421, 54.045654>,  <32.804127, 39.388500, 53.464748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052078, 39.698421, 54.045654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011612, 40.017174, 53.807415>,  <32.987331, 40.208427, 53.664471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.011612, 40.017174, 53.807415>,  <33.052078, 39.698421, 54.045654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011612, 40.017174, 53.807415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506840, 0.473872, 0.720110,
		0.856083, 0.374729, 0.355951,
		-0.101171, 0.796883, -0.595602,
		32.981262, 40.256237, 53.628735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252831, 40.192223, 54.518448>,  <33.052078, 39.698421, 54.045654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252831, 40.192223, 54.518448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.059589, 40.375465, 54.219986>,  <32.943645, 40.485413, 54.040909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.059589, 40.375465, 54.219986>,  <33.252831, 40.192223, 54.518448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059589, 40.375465, 54.219986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496192, 0.558895, 0.664402,
		0.721392, 0.691210, -0.042692,
		-0.483101, 0.458111, -0.746155,
		32.914658, 40.512897, 53.996140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217213, 40.915695, 54.724091>,  <33.252831, 40.192223, 54.518448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217213, 40.915695, 54.724091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934128, 40.863846, 54.446285>,  <32.764278, 40.832737, 54.279602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934128, 40.863846, 54.446285>,  <33.217213, 40.915695, 54.724091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934128, 40.863846, 54.446285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648658, 0.508775, 0.566031,
		0.279980, 0.851085, -0.444145,
		-0.707711, -0.129621, -0.694510,
		32.721813, 40.824959, 54.237930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874722, 41.544338, 54.658619>,  <33.217213, 40.915695, 54.724091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874722, 41.544338, 54.658619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616852, 41.295593, 54.480774>,  <32.462128, 41.146347, 54.374065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616852, 41.295593, 54.480774>,  <32.874722, 41.544338, 54.658619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616852, 41.295593, 54.480774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764126, 0.541246, 0.350949,
		0.022405, 0.565990, -0.824107,
		-0.644678, -0.621859, -0.444614,
		32.423447, 41.109035, 54.347389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330673, 42.012573, 54.411854>,  <32.874722, 41.544338, 54.658619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330673, 42.012573, 54.411854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.202835, 41.634335, 54.436211>,  <32.126133, 41.407391, 54.450825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.202835, 41.634335, 54.436211>,  <32.330673, 42.012573, 54.411854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202835, 41.634335, 54.436211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818977, 0.307976, 0.484176,
		-0.476587, 0.104873, -0.872849,
		-0.319594, -0.945596, 0.060889,
		32.106956, 41.350655, 54.454479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568678, 41.986782, 54.200214>,  <32.330673, 42.012573, 54.411854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568678, 41.986782, 54.200214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639820, 41.658581, 54.417522>,  <31.682505, 41.461658, 54.547905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639820, 41.658581, 54.417522>,  <31.568678, 41.986782, 54.200214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639820, 41.658581, 54.417522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870179, 0.126662, 0.476178,
		-0.459517, -0.557429, -0.691460,
		0.177854, -0.820506, 0.543266,
		31.693176, 41.412430, 54.580502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972368, 41.867718, 54.392002>,  <31.568678, 41.986782, 54.200214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972368, 41.867718, 54.392002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175285, 41.660782, 54.667686>,  <31.297035, 41.536621, 54.833096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175285, 41.660782, 54.667686>,  <30.972368, 41.867718, 54.392002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175285, 41.660782, 54.667686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658481, 0.283226, 0.697271,
		-0.555928, -0.807554, -0.196980,
		0.507294, -0.517340, 0.689212,
		31.327473, 41.505581, 54.874451>
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
