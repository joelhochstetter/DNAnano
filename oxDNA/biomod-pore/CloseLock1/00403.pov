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
	<24.482075, 34.805477, 35.133152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264147, 35.053455, 34.907291>,  <24.133390, 35.202244, 34.771774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264147, 35.053455, 34.907291>,  <24.482075, 34.805477, 35.133152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264147, 35.053455, 34.907291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500264, 0.780709, 0.374471,
		0.672984, -0.078457, -0.735484,
		-0.544819, 0.619950, -0.564654,
		24.100700, 35.239441, 34.737896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960901, 35.297031, 34.609673>,  <24.482075, 34.805477, 35.133152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960901, 35.297031, 34.609673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603151, 35.442860, 34.713348>,  <24.388502, 35.530357, 34.775555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603151, 35.442860, 34.713348>,  <24.960901, 35.297031, 34.609673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603151, 35.442860, 34.713348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433345, 0.849856, 0.299929,
		-0.110929, 0.380568, -0.918075,
		-0.894375, 0.364573, 0.259191,
		24.334839, 35.552231, 34.791107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730366, 35.967670, 34.285484>,  <24.960901, 35.297031, 34.609673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730366, 35.967670, 34.285484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638578, 35.896801, 34.668308>,  <24.583506, 35.854279, 34.898003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638578, 35.896801, 34.668308>,  <24.730366, 35.967670, 34.285484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.638578, 35.896801, 34.668308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611097, 0.739106, 0.283343,
		-0.757565, 0.649872, -0.061335,
		-0.229470, -0.177169, 0.957055,
		24.569736, 35.843651, 34.955425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089199, 36.529148, 34.568501>,  <24.730366, 35.967670, 34.285484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089199, 36.529148, 34.568501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975325, 36.353054, 34.909122>,  <24.907000, 36.247398, 35.113495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.975325, 36.353054, 34.909122>,  <25.089199, 36.529148, 34.568501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975325, 36.353054, 34.909122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760871, 0.436583, 0.480073,
		-0.583120, 0.784594, 0.210673,
		-0.284687, -0.440235, 0.851555,
		24.889919, 36.220985, 35.164589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148390, 36.990582, 35.035328>,  <25.089199, 36.529148, 34.568501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148390, 36.990582, 35.035328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170799, 36.651520, 35.246361>,  <25.184246, 36.448082, 35.372982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170799, 36.651520, 35.246361>,  <25.148390, 36.990582, 35.035328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170799, 36.651520, 35.246361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711058, 0.404819, 0.574907,
		-0.700897, 0.342932, 0.625412,
		0.056025, -0.847655, 0.527581,
		25.187607, 36.397224, 35.404636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882267, 36.941776, 35.781750>,  <25.148390, 36.990582, 35.035328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882267, 36.941776, 35.781750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213034, 36.729660, 35.706917>,  <25.411493, 36.602390, 35.662018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213034, 36.729660, 35.706917>,  <24.882267, 36.941776, 35.781750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213034, 36.729660, 35.706917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501435, 0.544810, 0.672119,
		-0.254495, -0.649596, 0.716420,
		0.826919, -0.530289, -0.187079,
		25.461109, 36.570572, 35.650791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080275, 36.705128, 36.440300>,  <24.882267, 36.941776, 35.781750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080275, 36.705128, 36.440300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382109, 36.714825, 36.177998>,  <25.563210, 36.720642, 36.020615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382109, 36.714825, 36.177998>,  <25.080275, 36.705128, 36.440300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382109, 36.714825, 36.177998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478487, 0.663534, 0.575129,
		0.449059, -0.747754, 0.489092,
		0.754584, 0.024243, -0.655756,
		25.608484, 36.722099, 35.981270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711086, 36.593559, 36.914131>,  <25.080275, 36.705128, 36.440300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711086, 36.593559, 36.914131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811642, 36.759319, 36.564259>,  <25.871975, 36.858776, 36.354336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811642, 36.759319, 36.564259>,  <25.711086, 36.593559, 36.914131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811642, 36.759319, 36.564259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510235, 0.711197, 0.483591,
		0.822475, -0.567864, -0.032656,
		0.251389, 0.414403, -0.874685,
		25.887058, 36.883640, 36.301853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372236, 36.731838, 36.966263>,  <25.711086, 36.593559, 36.914131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372236, 36.731838, 36.966263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275772, 36.979019, 36.666935>,  <26.217894, 37.127327, 36.487339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275772, 36.979019, 36.666935>,  <26.372236, 36.731838, 36.966263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275772, 36.979019, 36.666935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572866, 0.713050, 0.404208,
		0.783368, -0.331207, -0.525962,
		-0.241161, 0.617950, -0.748318,
		26.203424, 37.164406, 36.442440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987179, 37.166801, 36.820492>,  <26.372236, 36.731838, 36.966263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987179, 37.166801, 36.820492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685701, 37.392517, 36.685719>,  <26.504814, 37.527946, 36.604855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685701, 37.392517, 36.685719>,  <26.987179, 37.166801, 36.820492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685701, 37.392517, 36.685719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409207, 0.804074, 0.431294,
		0.514292, 0.187190, -0.836937,
		-0.753693, 0.564292, -0.336930,
		26.459593, 37.561806, 36.584641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204275, 37.884056, 37.021679>,  <26.987179, 37.166801, 36.820492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204275, 37.884056, 37.021679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844618, 37.958332, 36.863155>,  <26.628822, 38.002895, 36.768044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.844618, 37.958332, 36.863155>,  <27.204275, 37.884056, 37.021679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.844618, 37.958332, 36.863155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008728, 0.912959, 0.407957,
		0.437563, 0.363354, -0.822504,
		-0.899145, 0.185685, -0.396306,
		26.574875, 38.014038, 36.744263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334000, 38.349876, 36.628578>,  <27.204275, 37.884056, 37.021679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334000, 38.349876, 36.628578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948904, 38.378410, 36.732918>,  <26.717846, 38.395531, 36.795521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948904, 38.378410, 36.732918>,  <27.334000, 38.349876, 36.628578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948904, 38.378410, 36.732918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165749, 0.917817, 0.360748,
		-0.213674, 0.390541, -0.895444,
		-0.962741, 0.071337, 0.260846,
		26.660082, 38.399811, 36.811172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141825, 38.939758, 36.410217>,  <27.334000, 38.349876, 36.628578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141825, 38.939758, 36.410217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871155, 38.835327, 36.685593>,  <26.708754, 38.772667, 36.850819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871155, 38.835327, 36.685593>,  <27.141825, 38.939758, 36.410217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871155, 38.835327, 36.685593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083403, 0.901823, 0.423979,
		-0.731543, 0.344314, -0.588466,
		-0.676674, -0.261079, 0.688440,
		26.668152, 38.757004, 36.892124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907944, 39.580326, 36.491959>,  <27.141825, 38.939758, 36.410217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907944, 39.580326, 36.491959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813490, 39.375698, 36.822422>,  <26.756817, 39.252922, 37.020699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813490, 39.375698, 36.822422>,  <26.907944, 39.580326, 36.491959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813490, 39.375698, 36.822422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001934, 0.849950, 0.526859,
		-0.971718, 0.126008, -0.199713,
		-0.236135, -0.511573, 0.826156,
		26.742649, 39.222225, 37.070271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553764, 40.105442, 36.813454>,  <26.907944, 39.580326, 36.491959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553764, 40.105442, 36.813454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630104, 39.828659, 37.091953>,  <26.675909, 39.662590, 37.259052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.630104, 39.828659, 37.091953>,  <26.553764, 40.105442, 36.813454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630104, 39.828659, 37.091953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130385, 0.685134, 0.716653,
		-0.972921, -0.227554, 0.040537,
		0.190851, -0.691961, 0.696251,
		26.687359, 39.621071, 37.300827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052631, 40.237053, 37.348381>,  <26.553764, 40.105442, 36.813454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052631, 40.237053, 37.348381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329664, 40.021969, 37.540714>,  <26.495884, 39.892918, 37.656113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329664, 40.021969, 37.540714>,  <26.052631, 40.237053, 37.348381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329664, 40.021969, 37.540714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020265, 0.651815, 0.758107,
		-0.721056, -0.534794, 0.440538,
		0.692580, -0.537710, 0.480833,
		26.537437, 39.860657, 37.684963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818813, 40.192890, 38.048649>,  <26.052631, 40.237053, 37.348381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818813, 40.192890, 38.048649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210640, 40.115036, 38.068913>,  <26.445736, 40.068325, 38.081070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210640, 40.115036, 38.068913>,  <25.818813, 40.192890, 38.048649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210640, 40.115036, 38.068913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079387, 0.605622, 0.791782,
		-0.184786, -0.771582, 0.608699,
		0.979567, -0.194633, 0.050657,
		26.504511, 40.056644, 38.084110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950386, 40.150925, 38.725937>,  <25.818813, 40.192890, 38.048649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950386, 40.150925, 38.725937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315798, 40.220974, 38.579075>,  <26.535044, 40.263004, 38.490959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315798, 40.220974, 38.579075>,  <25.950386, 40.150925, 38.725937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315798, 40.220974, 38.579075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164638, 0.666174, 0.727397,
		0.371970, -0.724944, 0.579737,
		0.913528, 0.175123, -0.367151,
		26.589855, 40.273510, 38.468929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385077, 40.236202, 39.282570>,  <25.950386, 40.150925, 38.725937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385077, 40.236202, 39.282570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601440, 40.415440, 38.997860>,  <26.731258, 40.522980, 38.827034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601440, 40.415440, 38.997860>,  <26.385077, 40.236202, 39.282570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601440, 40.415440, 38.997860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262725, 0.713906, 0.649087,
		0.798994, -0.538100, 0.268435,
		0.540910, 0.448092, -0.711779,
		26.763714, 40.549866, 38.784325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921322, 40.461346, 39.626049>,  <26.385077, 40.236202, 39.282570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921322, 40.461346, 39.626049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949879, 40.689240, 39.298561>,  <26.967012, 40.825977, 39.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949879, 40.689240, 39.298561>,  <26.921322, 40.461346, 39.626049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949879, 40.689240, 39.298561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486237, 0.696802, 0.527295,
		0.870906, -0.435735, -0.227282,
		0.071390, 0.569738, -0.818720,
		26.971296, 40.860161, 39.052944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622759, 40.756676, 39.543934>,  <26.921322, 40.461346, 39.626049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622759, 40.756676, 39.543934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373016, 41.017788, 39.372330>,  <27.223171, 41.174454, 39.269367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373016, 41.017788, 39.372330>,  <27.622759, 40.756676, 39.543934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373016, 41.017788, 39.372330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337761, 0.720828, 0.605248,
		0.704340, 0.232987, -0.670539,
		-0.624358, 0.652782, -0.429014,
		27.185709, 41.213623, 39.243626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079725, 41.274181, 39.403095>,  <27.622759, 40.756676, 39.543934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079725, 41.274181, 39.403095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704248, 41.412075, 39.404385>,  <27.478962, 41.494812, 39.405159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704248, 41.412075, 39.404385>,  <28.079725, 41.274181, 39.403095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704248, 41.412075, 39.404385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318715, 0.864196, 0.389340,
		0.131434, 0.366498, -0.921089,
		-0.938694, 0.344738, 0.003223,
		27.422640, 41.515495, 39.405350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051260, 41.879337, 39.072876>,  <28.079725, 41.274181, 39.403095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051260, 41.879337, 39.072876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721838, 41.907028, 39.298073>,  <27.524185, 41.923645, 39.433189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721838, 41.907028, 39.298073>,  <28.051260, 41.879337, 39.072876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721838, 41.907028, 39.298073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290424, 0.904027, 0.313670,
		-0.487246, 0.421832, -0.764624,
		-0.823557, 0.069231, 0.562993,
		27.474771, 41.927799, 39.466972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792011, 42.579269, 38.907463>,  <28.051260, 41.879337, 39.072876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792011, 42.579269, 38.907463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650002, 42.466991, 39.264153>,  <27.564796, 42.399624, 39.478165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650002, 42.466991, 39.264153>,  <27.792011, 42.579269, 38.907463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650002, 42.466991, 39.264153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187750, 0.913018, 0.362145,
		-0.915810, 0.295992, -0.271444,
		-0.355024, -0.280692, 0.891723,
		27.543493, 42.382782, 39.531670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375811, 43.188568, 39.100082>,  <27.792011, 42.579269, 38.907463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375811, 43.188568, 39.100082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419416, 42.987953, 39.443378>,  <27.445580, 42.867584, 39.649357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419416, 42.987953, 39.443378>,  <27.375811, 43.188568, 39.100082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419416, 42.987953, 39.443378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153259, 0.861542, 0.484001,
		-0.982154, 0.078769, 0.170788,
		0.109017, -0.501538, 0.858239,
		27.452122, 42.837490, 39.700851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065680, 43.583611, 39.687134>,  <27.375811, 43.188568, 39.100082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065680, 43.583611, 39.687134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367754, 43.346813, 39.799728>,  <27.548998, 43.204735, 39.867283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367754, 43.346813, 39.799728>,  <27.065680, 43.583611, 39.687134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367754, 43.346813, 39.799728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352854, 0.729012, 0.586546,
		-0.552439, -0.343628, 0.759428,
		0.755186, -0.591998, 0.281484,
		27.594309, 43.169212, 39.884174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142710, 43.652859, 40.374691>,  <27.065680, 43.583611, 39.687134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142710, 43.652859, 40.374691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503450, 43.575695, 40.220055>,  <27.719894, 43.529396, 40.127274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503450, 43.575695, 40.220055>,  <27.142710, 43.652859, 40.374691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503450, 43.575695, 40.220055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368671, 0.810153, 0.455778,
		0.225271, -0.553568, 0.801759,
		0.901851, -0.192912, -0.386588,
		27.774006, 43.517822, 40.104076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540234, 43.798172, 40.846680>,  <27.142710, 43.652859, 40.374691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540234, 43.798172, 40.846680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808220, 43.802155, 40.549747>,  <27.969011, 43.804543, 40.371590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808220, 43.802155, 40.549747>,  <27.540234, 43.798172, 40.846680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808220, 43.802155, 40.549747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536953, 0.684005, 0.493780,
		0.512670, -0.729409, 0.452915,
		0.669964, 0.009952, -0.742327,
		28.009209, 43.805141, 40.327049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298923, 43.783741, 41.279625>,  <27.540234, 43.798172, 40.846680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298923, 43.783741, 41.279625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297823, 43.941956, 40.912247>,  <28.297163, 44.036884, 40.691818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297823, 43.941956, 40.912247>,  <28.298923, 43.783741, 41.279625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297823, 43.941956, 40.912247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792956, 0.560449, 0.238991,
		0.609272, -0.727629, -0.315188,
		-0.002750, 0.395541, -0.918444,
		28.296999, 44.060619, 40.636715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908493, 43.754913, 40.735760>,  <28.298923, 43.783741, 41.279625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908493, 43.754913, 40.735760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725498, 44.103718, 40.666126>,  <28.615702, 44.313000, 40.624348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725498, 44.103718, 40.666126>,  <28.908493, 43.754913, 40.735760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725498, 44.103718, 40.666126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846363, 0.487057, 0.215512,
		0.272716, -0.048740, -0.960859,
		-0.457489, 0.872009, -0.174080,
		28.588251, 44.365322, 40.613903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665442, 43.638680, 40.681076>,  <28.908493, 43.754913, 40.735760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665442, 43.638680, 40.681076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655857, 43.873184, 41.004982>,  <29.650106, 44.013885, 41.199326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655857, 43.873184, 41.004982>,  <29.665442, 43.638680, 40.681076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655857, 43.873184, 41.004982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665449, 0.595127, -0.450557,
		-0.746058, -0.549654, 0.375868,
		-0.023962, 0.586263, 0.809766,
		29.648668, 44.049065, 41.247913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756283, 44.028503, 39.967354>,  <29.665442, 43.638680, 40.681076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756283, 44.028503, 39.967354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006620, 44.290436, 39.797878>,  <30.156822, 44.447594, 39.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006620, 44.290436, 39.797878>,  <29.756283, 44.028503, 39.967354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006620, 44.290436, 39.797878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464868, -0.749376, -0.471522,
		-0.626271, 0.098139, -0.773403,
		0.625845, 0.654832, -0.423691,
		30.194374, 44.486885, 39.670773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774813, 43.803383, 39.277744>,  <29.756283, 44.028503, 39.967354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774813, 43.803383, 39.277744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139845, 43.816319, 39.440788>,  <30.358864, 43.824081, 39.538616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.139845, 43.816319, 39.440788>,  <29.774813, 43.803383, 39.277744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139845, 43.816319, 39.440788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171381, -0.935334, -0.309481,
		0.371243, 0.352284, -0.859112,
		0.912582, 0.032343, 0.407612,
		30.413620, 43.826023, 39.563072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342218, 43.704781, 38.737598>,  <29.774813, 43.803383, 39.277744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342218, 43.704781, 38.737598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380432, 43.579926, 39.115688>,  <30.403360, 43.505013, 39.342541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380432, 43.579926, 39.115688>,  <30.342218, 43.704781, 38.737598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380432, 43.579926, 39.115688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282071, -0.902156, -0.326420,
		0.954625, 0.297804, 0.001858,
		0.095534, -0.312133, 0.945223,
		30.409092, 43.486286, 39.399254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955500, 43.263226, 38.871010>,  <30.342218, 43.704781, 38.737598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955500, 43.263226, 38.871010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667974, 43.152225, 39.125977>,  <30.495459, 43.085625, 39.278957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667974, 43.152225, 39.125977>,  <30.955500, 43.263226, 38.871010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667974, 43.152225, 39.125977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001890, -0.916098, -0.400951,
		0.695199, -0.289414, 0.657980,
		-0.718815, -0.277497, 0.637417,
		30.452330, 43.068977, 39.317204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090984, 42.657688, 39.322483>,  <30.955500, 43.263226, 38.871010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090984, 42.657688, 39.322483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693754, 42.674084, 39.278450>,  <30.455416, 42.683922, 39.252029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693754, 42.674084, 39.278450>,  <31.090984, 42.657688, 39.322483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693754, 42.674084, 39.278450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014184, -0.888425, -0.458802,
		-0.116606, -0.457188, 0.881693,
		-0.993077, 0.040993, -0.110080,
		30.395830, 42.686382, 39.245426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935261, 41.950939, 39.496555>,  <31.090984, 42.657688, 39.322483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935261, 41.950939, 39.496555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619020, 42.094746, 39.298283>,  <30.429277, 42.181030, 39.179317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619020, 42.094746, 39.298283>,  <30.935261, 41.950939, 39.496555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619020, 42.094746, 39.298283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168867, -0.906114, -0.387868,
		-0.588588, -0.222944, 0.777084,
		-0.790599, 0.359518, -0.495680,
		30.381840, 42.202602, 39.149578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293074, 41.559258, 39.608891>,  <30.935261, 41.950939, 39.496555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293074, 41.559258, 39.608891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221846, 41.758366, 39.269356>,  <30.179110, 41.877831, 39.065636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221846, 41.758366, 39.269356>,  <30.293074, 41.559258, 39.608891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221846, 41.758366, 39.269356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316642, -0.845725, -0.429519,
		-0.931681, 0.192293, 0.308212,
		-0.178069, 0.497767, -0.848834,
		30.168425, 41.907696, 39.014706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677917, 41.283573, 39.318844>,  <30.293074, 41.559258, 39.608891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677917, 41.283573, 39.318844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861109, 41.453999, 39.006760>,  <29.971024, 41.556255, 38.819508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861109, 41.453999, 39.006760>,  <29.677917, 41.283573, 39.318844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861109, 41.453999, 39.006760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229523, -0.791231, -0.566810,
		-0.858822, 0.438662, -0.264574,
		0.457977, 0.426063, -0.780210,
		29.998503, 41.581818, 38.772697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252741, 41.253151, 38.851345>,  <29.677917, 41.283573, 39.318844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252741, 41.253151, 38.851345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576681, 41.308468, 38.623302>,  <29.771046, 41.341660, 38.486477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576681, 41.308468, 38.623302>,  <29.252741, 41.253151, 38.851345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576681, 41.308468, 38.623302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298339, -0.739669, -0.603228,
		-0.505112, 0.658608, -0.557761,
		0.809849, 0.138296, -0.570104,
		29.819635, 41.349957, 38.452271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071478, 41.349434, 38.023876>,  <29.252741, 41.253151, 38.851345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071478, 41.349434, 38.023876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434816, 41.184078, 38.049229>,  <29.652821, 41.084866, 38.064442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434816, 41.184078, 38.049229>,  <29.071478, 41.349434, 38.023876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434816, 41.184078, 38.049229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301099, -0.751598, -0.586891,
		0.290249, 0.514017, -0.807182,
		0.908347, -0.413386, 0.063381,
		29.707321, 41.060062, 38.068241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265013, 41.149494, 37.324242>,  <29.071478, 41.349434, 38.023876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265013, 41.149494, 37.324242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537249, 40.941517, 37.530720>,  <29.700590, 40.816730, 37.654606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537249, 40.941517, 37.530720>,  <29.265013, 41.149494, 37.324242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537249, 40.941517, 37.530720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055724, -0.739238, -0.671135,
		0.730541, 0.428004, -0.532092,
		0.680591, -0.519942, 0.516194,
		29.741426, 40.785534, 37.685577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849873, 41.080757, 36.804962>,  <29.265013, 41.149494, 37.324242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849873, 41.080757, 36.804962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866533, 40.803638, 37.092934>,  <29.876530, 40.637367, 37.265717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866533, 40.803638, 37.092934>,  <29.849873, 41.080757, 36.804962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866533, 40.803638, 37.092934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029463, -0.719387, -0.693984,
		0.998698, 0.050118, -0.009553,
		0.041654, -0.692799, 0.719927,
		29.879030, 40.595798, 37.308910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863983, 40.437534, 36.464832>,  <29.849873, 41.080757, 36.804962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863983, 40.437534, 36.464832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845743, 40.242817, 36.813763>,  <29.834799, 40.125984, 37.023121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845743, 40.242817, 36.813763>,  <29.863983, 40.437534, 36.464832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845743, 40.242817, 36.813763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013488, -0.872854, -0.487795,
		0.998869, -0.034009, 0.033236,
		-0.045599, -0.486795, 0.872325,
		29.832064, 40.096779, 37.075459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426643, 39.845879, 36.621311>,  <29.863983, 40.437534, 36.464832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426643, 39.845879, 36.621311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102074, 39.742344, 36.830921>,  <29.907331, 39.680225, 36.956688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102074, 39.742344, 36.830921>,  <30.426643, 39.845879, 36.621311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102074, 39.742344, 36.830921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125746, -0.798281, -0.589012,
		0.570773, -0.543831, 0.615196,
		-0.811422, -0.258834, 0.524022,
		29.858646, 39.664692, 36.988129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515371, 39.234501, 36.806145>,  <30.426643, 39.845879, 36.621311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515371, 39.234501, 36.806145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121870, 39.278149, 36.863171>,  <29.885769, 39.304337, 36.897388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121870, 39.278149, 36.863171>,  <30.515371, 39.234501, 36.806145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121870, 39.278149, 36.863171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170340, -0.818192, -0.549132,
		0.056725, -0.564494, 0.823485,
		-0.983751, 0.109123, 0.142568,
		29.826744, 39.310886, 36.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282097, 38.645630, 37.236198>,  <30.515371, 39.234501, 36.806145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282097, 38.645630, 37.236198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977432, 38.798183, 37.026661>,  <29.794634, 38.889717, 36.900936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977432, 38.798183, 37.026661>,  <30.282097, 38.645630, 37.236198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977432, 38.798183, 37.026661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243438, -0.917639, -0.314130,
		-0.600507, -0.111737, 0.791775,
		-0.761663, 0.381385, -0.523847,
		29.748934, 38.912598, 36.869507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721333, 38.172432, 37.281910>,  <30.282097, 38.645630, 37.236198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721333, 38.172432, 37.281910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591051, 38.400768, 36.980431>,  <29.512882, 38.537769, 36.799545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591051, 38.400768, 36.980431>,  <29.721333, 38.172432, 37.281910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591051, 38.400768, 36.980431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404715, -0.804616, -0.434511,
		-0.854472, 0.163511, 0.493094,
		-0.325704, 0.570840, -0.753697,
		29.493340, 38.572021, 36.754322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009413, 37.993172, 37.198071>,  <29.721333, 38.172432, 37.281910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009413, 37.993172, 37.198071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126820, 38.148853, 36.848816>,  <29.197264, 38.242264, 36.639263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126820, 38.148853, 36.848816>,  <29.009413, 37.993172, 37.198071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126820, 38.148853, 36.848816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198637, -0.868599, -0.453960,
		-0.935089, 0.306682, -0.177636,
		0.293516, 0.389208, -0.873136,
		29.214874, 38.265617, 36.586876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431400, 37.980267, 36.777981>,  <29.009413, 37.993172, 37.198071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431400, 37.980267, 36.777981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752190, 37.980392, 36.539036>,  <28.944662, 37.980469, 36.395668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752190, 37.980392, 36.539036>,  <28.431400, 37.980267, 36.777981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752190, 37.980392, 36.539036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367403, -0.788234, -0.493662,
		-0.471015, 0.615375, -0.632027,
		0.801973, 0.000314, -0.597361,
		28.992781, 37.980488, 36.359829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186327, 37.673668, 36.234669>,  <28.431400, 37.980267, 36.777981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186327, 37.673668, 36.234669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576902, 37.669003, 36.148476>,  <28.811247, 37.666203, 36.096760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576902, 37.669003, 36.148476>,  <28.186327, 37.673668, 36.234669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576902, 37.669003, 36.148476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138224, -0.800635, -0.582991,
		-0.165724, 0.599039, -0.783382,
		0.976437, -0.011666, -0.215486,
		28.869833, 37.665504, 36.083828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205902, 37.557579, 35.498280>,  <28.186327, 37.673668, 36.234669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205902, 37.557579, 35.498280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548712, 37.425686, 35.656666>,  <28.754398, 37.346550, 35.751698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548712, 37.425686, 35.656666>,  <28.205902, 37.557579, 35.498280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548712, 37.425686, 35.656666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079351, -0.843732, -0.530867,
		0.509131, 0.423546, -0.749263,
		0.857023, -0.329735, 0.395962,
		28.805819, 37.326767, 35.775455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589115, 37.212467, 34.968956>,  <28.205902, 37.557579, 35.498280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589115, 37.212467, 34.968956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748985, 37.059223, 35.302059>,  <28.844908, 36.967278, 35.501923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748985, 37.059223, 35.302059>,  <28.589115, 37.212467, 34.968956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748985, 37.059223, 35.302059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218812, -0.922085, -0.319187,
		0.890158, -0.054647, -0.452362,
		0.399674, -0.383109, 0.832760,
		28.868887, 36.944290, 35.551888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076515, 36.565536, 34.774437>,  <28.589115, 37.212467, 34.968956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076515, 36.565536, 34.774437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954338, 36.529625, 35.153625>,  <28.881031, 36.508076, 35.381138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954338, 36.529625, 35.153625>,  <29.076515, 36.565536, 34.774437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954338, 36.529625, 35.153625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081400, -0.989439, -0.119936,
		0.948725, -0.113798, 0.294909,
		-0.305443, -0.089781, 0.947969,
		28.862705, 36.502689, 35.438015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327913, 36.042034, 34.960991>,  <29.076515, 36.565536, 34.774437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327913, 36.042034, 34.960991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028460, 36.066223, 35.225079>,  <28.848787, 36.080734, 35.383530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028460, 36.066223, 35.225079>,  <29.327913, 36.042034, 34.960991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028460, 36.066223, 35.225079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166769, -0.980988, -0.099254,
		0.641664, -0.184409, 0.744487,
		-0.748635, 0.060470, 0.660218,
		28.803869, 36.084366, 35.423145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102842, 35.383636, 35.079891>,  <29.327913, 36.042034, 34.960991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102842, 35.383636, 35.079891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834433, 35.557228, 35.320354>,  <28.673388, 35.661385, 35.464630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.834433, 35.557228, 35.320354>,  <29.102842, 35.383636, 35.079891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834433, 35.557228, 35.320354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557242, -0.830037, -0.022797,
		0.489088, -0.350287, 0.798806,
		-0.671024, 0.433979, 0.601156,
		28.633125, 35.687424, 35.500702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933504, 34.893108, 35.649284>,  <29.102842, 35.383636, 35.079891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933504, 34.893108, 35.649284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615479, 35.124077, 35.575035>,  <28.424664, 35.262657, 35.530483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615479, 35.124077, 35.575035>,  <28.933504, 34.893108, 35.649284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615479, 35.124077, 35.575035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603976, -0.781773, 0.155060,
		-0.055584, 0.235397, 0.970309,
		-0.795062, 0.577425, -0.185628,
		28.376961, 35.297306, 35.519348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470522, 35.123569, 36.155617>,  <28.933504, 34.893108, 35.649284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470522, 35.123569, 36.155617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759066, 35.061512, 35.885632>,  <29.932192, 35.024277, 35.723640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759066, 35.061512, 35.885632>,  <29.470522, 35.123569, 36.155617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759066, 35.061512, 35.885632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573501, -0.412538, 0.707749,
		-0.388247, -0.897632, -0.208615,
		0.721360, -0.155141, -0.674960,
		29.975473, 35.014969, 35.683144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633106, 34.419689, 36.056259>,  <29.470522, 35.123569, 36.155617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633106, 34.419689, 36.056259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965261, 34.635239, 35.999592>,  <30.164555, 34.764568, 35.965591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965261, 34.635239, 35.999592>,  <29.633106, 34.419689, 36.056259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965261, 34.635239, 35.999592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506428, -0.623923, 0.595189,
		0.232342, -0.565983, -0.790999,
		0.830390, 0.538872, -0.141666,
		30.214378, 34.796902, 35.957092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201683, 34.056488, 35.865993>,  <29.633106, 34.419689, 36.056259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201683, 34.056488, 35.865993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337976, 34.390621, 36.038555>,  <30.419752, 34.591103, 36.142094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337976, 34.390621, 36.038555>,  <30.201683, 34.056488, 35.865993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337976, 34.390621, 36.038555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613981, -0.545212, 0.570764,
		0.711989, 0.070396, -0.698653,
		0.340734, 0.835337, 0.431407,
		30.440197, 34.641224, 36.167976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955391, 34.034286, 35.851540>,  <30.201683, 34.056488, 35.865993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955391, 34.034286, 35.851540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837898, 34.260391, 36.159878>,  <30.767403, 34.396053, 36.344879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837898, 34.260391, 36.159878>,  <30.955391, 34.034286, 35.851540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837898, 34.260391, 36.159878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512926, -0.587280, 0.626106,
		0.806615, 0.579293, -0.117434,
		-0.293732, 0.565262, 0.770844,
		30.749779, 34.429970, 36.391132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438093, 34.567913, 36.110813>,  <30.955391, 34.034286, 35.851540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438093, 34.567913, 36.110813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305866, 34.586933, 36.487846>,  <31.226530, 34.598343, 36.714066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305866, 34.586933, 36.487846>,  <31.438093, 34.567913, 36.110813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305866, 34.586933, 36.487846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764142, -0.572672, 0.296874,
		0.553907, 0.818405, 0.152973,
		-0.330567, 0.047547, 0.942584,
		31.206696, 34.601196, 36.770622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933458, 34.844856, 36.476322>,  <31.438093, 34.567913, 36.110813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933458, 34.844856, 36.476322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707268, 34.587234, 36.682404>,  <31.571554, 34.432663, 36.806053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707268, 34.587234, 36.682404>,  <31.933458, 34.844856, 36.476322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707268, 34.587234, 36.682404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797838, -0.585474, 0.143789,
		0.209029, 0.492355, 0.844922,
		-0.565475, -0.644055, 0.515200,
		31.537624, 34.394016, 36.836964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373779, 34.393387, 36.904343>,  <31.933458, 34.844856, 36.476322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373779, 34.393387, 36.904343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458809, 34.093872, 37.155464>,  <32.509827, 33.914165, 37.306137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458809, 34.093872, 37.155464>,  <32.373779, 34.393387, 36.904343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458809, 34.093872, 37.155464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153579, 0.608898, 0.778239,
		-0.965001, -0.261847, 0.014436,
		0.212570, -0.748785, 0.627802,
		32.522579, 33.869236, 37.343803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764441, 34.408772, 37.362854>,  <32.373779, 34.393387, 36.904343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764441, 34.408772, 37.362854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062710, 34.210407, 37.540859>,  <32.241673, 34.091389, 37.647663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062710, 34.210407, 37.540859>,  <31.764441, 34.408772, 37.362854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062710, 34.210407, 37.540859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262582, 0.395125, 0.880299,
		-0.612392, -0.773268, 0.164416,
		0.745672, -0.495915, 0.445018,
		32.286411, 34.061634, 37.674366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441961, 34.272942, 37.948792>,  <31.764441, 34.408772, 37.362854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441961, 34.272942, 37.948792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829279, 34.228813, 38.038448>,  <32.061668, 34.202335, 38.092243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829279, 34.228813, 38.038448>,  <31.441961, 34.272942, 37.948792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829279, 34.228813, 38.038448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175064, 0.340426, 0.923831,
		-0.178221, -0.933777, 0.310319,
		0.968293, -0.110320, 0.224142,
		32.119766, 34.195717, 38.105690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575243, 33.846397, 38.604340>,  <31.441961, 34.272942, 37.948792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575243, 33.846397, 38.604340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915718, 34.054653, 38.577770>,  <32.120003, 34.179607, 38.561829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915718, 34.054653, 38.577770>,  <31.575243, 33.846397, 38.604340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915718, 34.054653, 38.577770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031023, 0.176247, 0.983857,
		0.523947, -0.835384, 0.166170,
		0.851186, 0.520644, -0.066428,
		32.171074, 34.210846, 38.557842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990755, 33.583202, 39.140461>,  <31.575243, 33.846397, 38.604340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990755, 33.583202, 39.140461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144138, 33.939659, 39.043446>,  <32.236168, 34.153534, 38.985237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144138, 33.939659, 39.043446>,  <31.990755, 33.583202, 39.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144138, 33.939659, 39.043446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093301, 0.223892, 0.970138,
		0.918833, -0.394638, 0.002709,
		0.383460, 0.891141, -0.242540,
		32.259178, 34.207001, 38.970684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629517, 33.749809, 39.500767>,  <31.990755, 33.583202, 39.140461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629517, 33.749809, 39.500767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494785, 34.110096, 39.391033>,  <32.413948, 34.326267, 39.325195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494785, 34.110096, 39.391033>,  <32.629517, 33.749809, 39.500767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494785, 34.110096, 39.391033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129048, 0.332767, 0.934137,
		0.932680, 0.279244, -0.228322,
		-0.336830, 0.900716, -0.274329,
		32.393738, 34.380310, 39.308735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971115, 34.201977, 39.896549>,  <32.629517, 33.749809, 39.500767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971115, 34.201977, 39.896549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653286, 34.413765, 39.777683>,  <32.462589, 34.540840, 39.706364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653286, 34.413765, 39.777683>,  <32.971115, 34.201977, 39.896549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653286, 34.413765, 39.777683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088231, 0.383538, 0.919301,
		0.600718, 0.756674, -0.258034,
		-0.794577, 0.529474, -0.297161,
		32.414913, 34.572609, 39.688534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102074, 34.824005, 40.343964>,  <32.971115, 34.201977, 39.896549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102074, 34.824005, 40.343964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722572, 34.836597, 40.218189>,  <32.494869, 34.844151, 40.142727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722572, 34.836597, 40.218189>,  <33.102074, 34.824005, 40.343964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722572, 34.836597, 40.218189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282250, 0.363043, 0.887995,
		0.142103, 0.931240, -0.335556,
		-0.948758, 0.031476, -0.314433,
		32.437946, 34.846039, 40.123859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815311, 35.495979, 40.520359>,  <33.102074, 34.824005, 40.343964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815311, 35.495979, 40.520359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493889, 35.269260, 40.447651>,  <32.301037, 35.133228, 40.404026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493889, 35.269260, 40.447651>,  <32.815311, 35.495979, 40.520359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493889, 35.269260, 40.447651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382666, 0.258006, 0.887130,
		-0.455923, 0.782417, -0.424215,
		-0.803555, -0.566796, -0.181774,
		32.252823, 35.099220, 40.393120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285702, 35.844276, 40.768147>,  <32.815311, 35.495979, 40.520359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285702, 35.844276, 40.768147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142281, 35.472378, 40.734669>,  <32.056229, 35.249237, 40.714584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142281, 35.472378, 40.734669>,  <32.285702, 35.844276, 40.768147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142281, 35.472378, 40.734669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438015, 0.088390, 0.894611,
		-0.824367, 0.357426, -0.438937,
		-0.358555, -0.929749, -0.083692,
		32.034714, 35.193455, 40.709560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577349, 35.805908, 41.046021>,  <32.285702, 35.844276, 40.768147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577349, 35.805908, 41.046021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712389, 35.429409, 41.042423>,  <31.793413, 35.203510, 41.040264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712389, 35.429409, 41.042423>,  <31.577349, 35.805908, 41.046021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712389, 35.429409, 41.042423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291561, -0.113647, 0.949777,
		-0.894996, -0.318024, -0.312798,
		0.337601, -0.941247, -0.008990,
		31.813669, 35.147034, 41.039726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234236, 35.461079, 41.614063>,  <31.577349, 35.805908, 41.046021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234236, 35.461079, 41.614063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521826, 35.195812, 41.530842>,  <31.694380, 35.036652, 41.480907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521826, 35.195812, 41.530842>,  <31.234236, 35.461079, 41.614063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521826, 35.195812, 41.530842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025773, -0.324579, 0.945507,
		-0.694558, -0.674434, -0.250456,
		0.718975, -0.663165, -0.208057,
		31.737518, 34.996864, 41.468426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983156, 34.670753, 41.723850>,  <31.234236, 35.461079, 41.614063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983156, 34.670753, 41.723850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374243, 34.723976, 41.788799>,  <31.608894, 34.755909, 41.827770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374243, 34.723976, 41.788799>,  <30.983156, 34.670753, 41.723850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374243, 34.723976, 41.788799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090752, -0.429586, 0.898454,
		0.189295, -0.893170, -0.407939,
		0.977717, 0.133052, 0.162375,
		31.667559, 34.763893, 41.837513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030947, 34.065170, 42.046452>,  <30.983156, 34.670753, 41.723850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030947, 34.065170, 42.046452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366087, 34.268925, 42.124969>,  <31.567171, 34.391178, 42.172081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366087, 34.268925, 42.124969>,  <31.030947, 34.065170, 42.046452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366087, 34.268925, 42.124969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021151, -0.329025, 0.944084,
		0.545491, -0.795153, -0.264899,
		0.837850, 0.509387, 0.196298,
		31.617441, 34.421741, 42.183857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515570, 33.563492, 42.559837>,  <31.030947, 34.065170, 42.046452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515570, 33.563492, 42.559837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638687, 33.943027, 42.588013>,  <31.712557, 34.170750, 42.604919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638687, 33.943027, 42.588013>,  <31.515570, 33.563492, 42.559837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638687, 33.943027, 42.588013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046855, -0.058830, 0.997168,
		0.950299, -0.310223, 0.026351,
		0.307794, 0.948842, 0.070442,
		31.731026, 34.227680, 42.609146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080891, 33.596905, 43.003662>,  <31.515570, 33.563492, 42.559837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080891, 33.596905, 43.003662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904745, 33.955719, 42.988674>,  <31.799059, 34.171009, 42.979683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904745, 33.955719, 42.988674>,  <32.080891, 33.596905, 43.003662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904745, 33.955719, 42.988674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001493, 0.042465, 0.999097,
		0.897820, 0.439906, -0.020039,
		-0.440360, 0.897039, -0.037468,
		31.772636, 34.224831, 42.977432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462349, 34.005375, 43.560814>,  <32.080891, 33.596905, 43.003662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462349, 34.005375, 43.560814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097717, 34.138027, 43.463623>,  <31.878937, 34.217617, 43.405308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097717, 34.138027, 43.463623>,  <32.462349, 34.005375, 43.560814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097717, 34.138027, 43.463623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221745, 0.101057, 0.969854,
		0.346185, 0.937982, -0.018585,
		-0.911584, 0.331628, -0.242977,
		31.824242, 34.237514, 43.390728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413418, 34.510094, 44.041920>,  <32.462349, 34.005375, 43.560814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413418, 34.510094, 44.041920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036434, 34.420174, 43.942932>,  <31.810244, 34.366222, 43.883541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036434, 34.420174, 43.942932>,  <32.413418, 34.510094, 44.041920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036434, 34.420174, 43.942932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271429, 0.082323, 0.958931,
		-0.195194, 0.970921, -0.138602,
		-0.942457, -0.224799, -0.247467,
		31.753696, 34.352734, 43.868690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155804, 34.878674, 44.518520>,  <32.413418, 34.510094, 44.041920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155804, 34.878674, 44.518520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854931, 34.654797, 44.379402>,  <31.674406, 34.520470, 44.295933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854931, 34.654797, 44.379402>,  <32.155804, 34.878674, 44.518520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854931, 34.654797, 44.379402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345068, -0.115085, 0.931495,
		-0.561380, 0.820668, -0.106568,
		-0.752184, -0.559696, -0.347793,
		31.629276, 34.486889, 44.275063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607885, 35.145924, 44.779514>,  <32.155804, 34.878674, 44.518520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607885, 35.145924, 44.779514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500462, 34.768551, 44.701725>,  <31.436007, 34.542130, 44.655052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500462, 34.768551, 44.701725>,  <31.607885, 35.145924, 44.779514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500462, 34.768551, 44.701725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490760, -0.039711, 0.870389,
		-0.828872, 0.329191, -0.452332,
		-0.268562, -0.943428, -0.194469,
		31.419893, 34.485523, 44.643383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862844, 35.150299, 44.976788>,  <31.607885, 35.145924, 44.779514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862844, 35.150299, 44.976788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956097, 34.763344, 44.937187>,  <31.012049, 34.531170, 44.913425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956097, 34.763344, 44.937187>,  <30.862844, 35.150299, 44.976788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956097, 34.763344, 44.937187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414114, -0.190878, 0.889986,
		-0.879863, -0.166487, -0.445111,
		0.233133, -0.967392, -0.099002,
		31.026037, 34.473125, 44.907486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299446, 34.746235, 45.225468>,  <30.862844, 35.150299, 44.976788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299446, 34.746235, 45.225468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610464, 34.495506, 45.245560>,  <30.797075, 34.345070, 45.257614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610464, 34.495506, 45.245560>,  <30.299446, 34.746235, 45.225468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610464, 34.495506, 45.245560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280665, -0.274445, 0.919732,
		-0.562721, -0.729230, -0.389319,
		0.777543, -0.626820, 0.050233,
		30.843727, 34.307461, 45.260632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065693, 34.120564, 45.409069>,  <30.299446, 34.746235, 45.225468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065693, 34.120564, 45.409069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449640, 34.109425, 45.520695>,  <30.680010, 34.102741, 45.587669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449640, 34.109425, 45.520695>,  <30.065693, 34.120564, 45.409069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449640, 34.109425, 45.520695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277945, -0.227046, 0.933379,
		0.037372, -0.973486, -0.225674,
		0.959870, -0.027842, 0.279061,
		30.737600, 34.101070, 45.604412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028610, 33.567158, 45.915535>,  <30.065693, 34.120564, 45.409069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028610, 33.567158, 45.915535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391253, 33.726639, 45.970814>,  <30.608839, 33.822327, 46.003979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391253, 33.726639, 45.970814>,  <30.028610, 33.567158, 45.915535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391253, 33.726639, 45.970814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054770, -0.213538, 0.975398,
		0.418405, -0.891872, -0.171758,
		0.906608, 0.398704, 0.138194,
		30.663235, 33.846249, 46.012272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427382, 33.104721, 46.346855>,  <30.028610, 33.567158, 45.915535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427382, 33.104721, 46.346855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633902, 33.443890, 46.394970>,  <30.757814, 33.647388, 46.423840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633902, 33.443890, 46.394970>,  <30.427382, 33.104721, 46.346855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633902, 33.443890, 46.394970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007412, -0.144874, 0.989422,
		0.856376, -0.509947, -0.081083,
		0.516300, 0.847919, 0.120287,
		30.788792, 33.698265, 46.431057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996618, 32.930691, 46.635441>,  <30.427382, 33.104721, 46.346855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996618, 32.930691, 46.635441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971794, 33.322269, 46.713223>,  <30.956900, 33.557217, 46.759892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971794, 33.322269, 46.713223>,  <30.996618, 32.930691, 46.635441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971794, 33.322269, 46.713223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333306, -0.163321, 0.928565,
		0.940774, 0.122442, -0.316152,
		-0.062061, 0.978945, 0.194459,
		30.953176, 33.615952, 46.771561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598700, 33.079250, 46.969971>,  <30.996618, 32.930691, 46.635441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598700, 33.079250, 46.969971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334553, 33.364407, 47.064373>,  <31.176065, 33.535500, 47.121014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334553, 33.364407, 47.064373>,  <31.598700, 33.079250, 46.969971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334553, 33.364407, 47.064373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190892, -0.144600, 0.970902,
		0.726275, 0.686204, -0.040596,
		-0.660367, 0.712892, 0.236010,
		31.136442, 33.578274, 47.135178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989590, 33.584240, 47.492290>,  <31.598700, 33.079250, 46.969971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989590, 33.584240, 47.492290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591175, 33.592884, 47.526802>,  <31.352127, 33.598072, 47.547508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591175, 33.592884, 47.526802>,  <31.989590, 33.584240, 47.492290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591175, 33.592884, 47.526802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087264, 0.049937, 0.994933,
		0.017195, 0.998519, -0.051625,
		-0.996037, 0.021612, 0.086276,
		31.292364, 33.599369, 47.552685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819921, 34.044193, 48.013508>,  <31.989590, 33.584240, 47.492290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819921, 34.044193, 48.013508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483501, 33.827816, 48.014969>,  <31.281649, 33.697990, 48.015846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483501, 33.827816, 48.014969>,  <31.819921, 34.044193, 48.013508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483501, 33.827816, 48.014969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069936, 0.115422, 0.990852,
		-0.536418, 0.833100, -0.134907,
		-0.841050, -0.540945, 0.003651,
		31.231186, 33.665531, 48.016064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418850, 34.426670, 48.383717>,  <31.819921, 34.044193, 48.013508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418850, 34.426670, 48.383717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247343, 34.065327, 48.379559>,  <31.144440, 33.848522, 48.377064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247343, 34.065327, 48.379559>,  <31.418850, 34.426670, 48.383717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247343, 34.065327, 48.379559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195768, -0.104143, 0.975105,
		-0.881949, 0.416057, 0.221501,
		-0.428767, -0.903355, -0.010398,
		31.118713, 33.794319, 48.376438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916691, 34.440926, 48.852356>,  <31.418850, 34.426670, 48.383717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916691, 34.440926, 48.852356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 34.057297, 48.800781>,  <31.078047, 33.827122, 48.769836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017538, 34.057297, 48.800781>,  <30.916691, 34.440926, 48.852356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017538, 34.057297, 48.800781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210281, -0.075762, 0.974701,
		-0.944573, -0.272855, 0.182572,
		0.252120, -0.959067, -0.128939,
		31.093174, 33.769577, 48.762100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883799, 34.245197, 49.539124>,  <30.916691, 34.440926, 48.852356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883799, 34.245197, 49.539124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053617, 33.927105, 49.365978>,  <31.155510, 33.736252, 49.262093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053617, 33.927105, 49.365978>,  <30.883799, 34.245197, 49.539124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053617, 33.927105, 49.365978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304795, -0.324654, 0.895377,
		-0.852560, -0.512066, 0.104551,
		0.424549, -0.795229, -0.432862,
		31.180983, 33.688538, 49.236118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574657, 33.711422, 49.956566>,  <30.883799, 34.245197, 49.539124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574657, 33.711422, 49.956566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893631, 33.541138, 49.785515>,  <31.085016, 33.438965, 49.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893631, 33.541138, 49.785515>,  <30.574657, 33.711422, 49.956566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893631, 33.541138, 49.785515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182125, -0.505830, 0.843188,
		-0.575266, -0.750268, -0.325832,
		0.797433, -0.425716, -0.427629,
		31.132862, 33.413425, 49.657227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583462, 33.037052, 50.193554>,  <30.574657, 33.711422, 49.956566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583462, 33.037052, 50.193554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955967, 33.130959, 50.082104>,  <31.179470, 33.187302, 50.015232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955967, 33.130959, 50.082104>,  <30.583462, 33.037052, 50.193554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955967, 33.130959, 50.082104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357691, -0.443571, 0.821768,
		0.069331, -0.864945, -0.497055,
		0.931263, 0.234766, -0.278630,
		31.235346, 33.201389, 49.998516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032852, 32.427658, 50.099922>,  <30.583462, 33.037052, 50.193554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032852, 32.427658, 50.099922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271627, 32.735916, 50.189156>,  <31.414892, 32.920872, 50.242695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271627, 32.735916, 50.189156>,  <31.032852, 32.427658, 50.099922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271627, 32.735916, 50.189156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386369, -0.519835, 0.761900,
		0.703124, -0.368613, -0.608063,
		0.596938, 0.770647, 0.223088,
		31.450708, 32.967110, 50.256081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672785, 32.109627, 50.213562>,  <31.032852, 32.427658, 50.099922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672785, 32.109627, 50.213562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741165, 32.462788, 50.388493>,  <31.782194, 32.674686, 50.493450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741165, 32.462788, 50.388493>,  <31.672785, 32.109627, 50.213562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741165, 32.462788, 50.388493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420853, -0.466762, 0.777827,
		0.890875, 0.051078, -0.451368,
		0.170952, 0.882907, 0.437323,
		31.792450, 32.727661, 50.519688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191174, 31.918327, 50.580883>,  <31.672785, 32.109627, 50.213562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191174, 31.918327, 50.580883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099655, 32.269276, 50.749584>,  <32.044743, 32.479843, 50.850803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099655, 32.269276, 50.749584>,  <32.191174, 31.918327, 50.580883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099655, 32.269276, 50.749584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248302, -0.366316, 0.896749,
		0.941275, 0.309895, -0.134041,
		-0.228797, 0.877370, 0.421751,
		32.031017, 32.532486, 50.876110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799278, 32.267597, 50.944004>,  <32.191174, 31.918327, 50.580883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799278, 32.267597, 50.944004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451122, 32.394001, 51.095028>,  <32.242229, 32.469845, 51.185642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451122, 32.394001, 51.095028>,  <32.799278, 32.267597, 50.944004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451122, 32.394001, 51.095028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221319, -0.433887, 0.873361,
		0.439811, 0.843729, 0.307713,
		-0.870393, 0.316011, 0.377562,
		32.190006, 32.488804, 51.208298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979816, 32.460575, 51.628948>,  <32.799278, 32.267597, 50.944004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979816, 32.460575, 51.628948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580742, 32.434132, 51.622570>,  <32.341297, 32.418266, 51.618744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580742, 32.434132, 51.622570>,  <32.979816, 32.460575, 51.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580742, 32.434132, 51.622570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008221, -0.350005, 0.936712,
		-0.067510, 0.934412, 0.349738,
		-0.997685, -0.066113, -0.015947,
		32.281437, 32.414299, 51.617786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823856, 32.676430, 52.249062>,  <32.979816, 32.460575, 51.628948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823856, 32.676430, 52.249062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486240, 32.502743, 52.123173>,  <32.283669, 32.398529, 52.047642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486240, 32.502743, 52.123173>,  <32.823856, 32.676430, 52.249062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486240, 32.502743, 52.123173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084968, -0.471169, 0.877941,
		-0.529503, 0.767760, 0.360792,
		-0.844042, -0.434217, -0.314720,
		32.233028, 32.372478, 52.028755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273853, 32.793251, 52.735889>,  <32.823856, 32.676430, 52.249062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273853, 32.793251, 52.735889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183445, 32.460575, 52.533028>,  <32.129200, 32.260967, 52.411312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183445, 32.460575, 52.533028>,  <32.273853, 32.793251, 52.735889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183445, 32.460575, 52.533028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216532, -0.464702, 0.858583,
		-0.949752, 0.303871, -0.075057,
		-0.226019, -0.831694, -0.507150,
		32.115639, 32.211067, 52.380882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649334, 32.545643, 53.006004>,  <32.273853, 32.793251, 52.735889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649334, 32.545643, 53.006004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868929, 32.254642, 52.841389>,  <32.000687, 32.080044, 52.742619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868929, 32.254642, 52.841389>,  <31.649334, 32.545643, 53.006004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868929, 32.254642, 52.841389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110045, -0.550991, 0.827224,
		-0.828555, -0.408847, -0.382544,
		0.548986, -0.727498, -0.411535,
		32.033627, 32.036392, 52.717930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365969, 31.948221, 52.792721>,  <31.649334, 32.545643, 53.006004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365969, 31.948221, 52.792721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723768, 31.917643, 52.968914>,  <31.938448, 31.899296, 53.074631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723768, 31.917643, 52.968914>,  <31.365969, 31.948221, 52.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723768, 31.917643, 52.968914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435416, -0.372455, 0.819567,
		0.101406, -0.924896, -0.366448,
		0.894500, -0.076448, 0.440484,
		31.992119, 31.894709, 53.101059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270472, 31.362257, 53.235733>,  <31.365969, 31.948221, 52.792721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270472, 31.362257, 53.235733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613762, 31.510372, 53.377911>,  <31.819736, 31.599241, 53.463219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613762, 31.510372, 53.377911>,  <31.270472, 31.362257, 53.235733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613762, 31.510372, 53.377911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150863, -0.479934, 0.864236,
		0.490605, -0.795331, -0.356028,
		0.858223, 0.370287, 0.355444,
		31.871229, 31.621458, 53.484543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527420, 30.953028, 53.703300>,  <31.270472, 31.362257, 53.235733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527420, 30.953028, 53.703300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797024, 31.227053, 53.813862>,  <31.958786, 31.391468, 53.880199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797024, 31.227053, 53.813862>,  <31.527420, 30.953028, 53.703300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797024, 31.227053, 53.813862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125568, -0.474967, 0.870999,
		0.727972, -0.552354, -0.406154,
		0.674010, 0.685063, 0.276405,
		31.999228, 31.432571, 53.896782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919567, 30.632584, 54.200466>,  <31.527420, 30.953028, 53.703300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919567, 30.632584, 54.200466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059574, 30.997921, 54.283695>,  <32.143578, 31.217123, 54.333633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059574, 30.997921, 54.283695>,  <31.919567, 30.632584, 54.200466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059574, 30.997921, 54.283695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349168, -0.333326, 0.875771,
		0.869235, -0.233883, -0.435580,
		0.350018, 0.913341, 0.208074,
		32.164581, 31.271923, 54.346119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636200, 30.556196, 54.389404>,  <31.919567, 30.632584, 54.200466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636200, 30.556196, 54.389404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478733, 30.884548, 54.554901>,  <32.384251, 31.081560, 54.654198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478733, 30.884548, 54.554901>,  <32.636200, 30.556196, 54.389404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478733, 30.884548, 54.554901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297274, -0.312214, 0.902303,
		0.869857, 0.478204, -0.121117,
		-0.393670, 0.820879, 0.413740,
		32.360634, 31.130812, 54.679024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333790, 30.446812, 54.534271>,  <32.636200, 30.556196, 54.389404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333790, 30.446812, 54.534271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682354, 30.626556, 54.455570>,  <33.891495, 30.734404, 54.408352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682354, 30.626556, 54.455570>,  <33.333790, 30.446812, 54.534271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682354, 30.626556, 54.455570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142211, -0.615273, -0.775381,
		-0.469483, 0.647697, -0.600061,
		0.871414, 0.449364, -0.196751,
		33.943779, 30.761366, 54.396545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352341, 30.823849, 53.867622>,  <33.333790, 30.446812, 54.534271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352341, 30.823849, 53.867622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716499, 30.679857, 53.949196>,  <33.934994, 30.593462, 53.998138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716499, 30.679857, 53.949196>,  <33.352341, 30.823849, 53.867622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716499, 30.679857, 53.949196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022505, -0.449092, -0.893202,
		0.413119, 0.817760, -0.400751,
		0.910399, -0.359980, 0.203932,
		33.989620, 30.571863, 54.010376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884838, 30.934223, 53.280205>,  <33.352341, 30.823849, 53.867622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884838, 30.934223, 53.280205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008820, 30.611116, 53.480782>,  <34.083210, 30.417252, 53.601128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008820, 30.611116, 53.480782>,  <33.884838, 30.934223, 53.280205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008820, 30.611116, 53.480782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028770, -0.535142, -0.844272,
		0.950317, 0.247258, -0.189108,
		0.309953, -0.807767, 0.501440,
		34.101807, 30.368786, 53.631214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401920, 30.613132, 52.839886>,  <33.884838, 30.934223, 53.280205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401920, 30.613132, 52.839886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225094, 30.359447, 53.093613>,  <34.118999, 30.207237, 53.245850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225094, 30.359447, 53.093613>,  <34.401920, 30.613132, 52.839886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225094, 30.359447, 53.093613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156908, -0.641587, -0.750830,
		0.883154, -0.431443, 0.184108,
		-0.442061, -0.634211, 0.634317,
		34.092476, 30.169184, 53.283909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816498, 30.047312, 53.035057>,  <34.401920, 30.613132, 52.839886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816498, 30.047312, 53.035057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419495, 30.010208, 53.003227>,  <34.181293, 29.987946, 52.984131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419495, 30.010208, 53.003227>,  <34.816498, 30.047312, 53.035057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419495, 30.010208, 53.003227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117728, -0.550827, -0.826275,
		0.032815, -0.829449, 0.557618,
		-0.992504, -0.092762, -0.079574,
		34.121742, 29.982380, 52.979355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601944, 29.384676, 52.904713>,  <34.816498, 30.047312, 53.035057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601944, 29.384676, 52.904713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312233, 29.613598, 52.750889>,  <34.138405, 29.750952, 52.658596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312233, 29.613598, 52.750889>,  <34.601944, 29.384676, 52.904713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312233, 29.613598, 52.750889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183051, -0.378113, -0.907482,
		-0.664762, -0.727665, 0.169099,
		-0.724281, 0.572306, -0.384555,
		34.094948, 29.785290, 52.635521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182343, 28.990591, 52.476471>,  <34.601944, 29.384676, 52.904713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182343, 28.990591, 52.476471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117718, 29.358791, 52.334160>,  <34.078941, 29.579712, 52.248775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117718, 29.358791, 52.334160>,  <34.182343, 28.990591, 52.476471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117718, 29.358791, 52.334160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145693, -0.334314, -0.931133,
		-0.976049, -0.202269, -0.080099,
		-0.161561, 0.920501, -0.355776,
		34.069248, 29.634941, 52.227428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972477, 28.954620, 51.695534>,  <34.182343, 28.990591, 52.476471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972477, 28.954620, 51.695534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075554, 29.340199, 51.722076>,  <34.137398, 29.571547, 51.738003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075554, 29.340199, 51.722076>,  <33.972477, 28.954620, 51.695534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075554, 29.340199, 51.722076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041689, 0.057518, -0.997473,
		-0.965328, 0.259804, -0.025364,
		0.257689, 0.963947, 0.066354,
		34.152859, 29.629383, 51.741982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662178, 29.195993, 51.168922>,  <33.972477, 28.954620, 51.695534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662178, 29.195993, 51.168922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944324, 29.471972, 51.233963>,  <34.113613, 29.637558, 51.272987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944324, 29.471972, 51.233963>,  <33.662178, 29.195993, 51.168922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944324, 29.471972, 51.233963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123769, 0.105993, -0.986634,
		-0.697956, 0.716062, -0.010630,
		0.705364, 0.689943, 0.162605,
		34.155933, 29.678955, 51.282745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511322, 29.684139, 50.681015>,  <33.662178, 29.195993, 51.168922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511322, 29.684139, 50.681015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886967, 29.756712, 50.797733>,  <34.112354, 29.800257, 50.867764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886967, 29.756712, 50.797733>,  <33.511322, 29.684139, 50.681015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886967, 29.756712, 50.797733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243832, 0.246430, -0.937986,
		-0.242088, 0.952026, 0.187187,
		0.939116, 0.181433, 0.291792,
		34.168701, 29.811142, 50.885269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788055, 30.409447, 50.671543>,  <33.511322, 29.684139, 50.681015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788055, 30.409447, 50.671543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108913, 30.174892, 50.626446>,  <34.301430, 30.034159, 50.599388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108913, 30.174892, 50.626446>,  <33.788055, 30.409447, 50.671543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108913, 30.174892, 50.626446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187030, 0.426037, -0.885162,
		0.567082, 0.688943, 0.451416,
		0.802146, -0.586388, -0.112745,
		34.349556, 29.998976, 50.592621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167854, 30.705406, 50.080070>,  <33.788055, 30.409447, 50.671543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167854, 30.705406, 50.080070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340340, 30.350786, 50.147106>,  <34.443832, 30.138014, 50.187328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340340, 30.350786, 50.147106>,  <34.167854, 30.705406, 50.080070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340340, 30.350786, 50.147106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418626, 0.032055, -0.907593,
		0.799253, 0.461523, 0.384955,
		0.431215, -0.886549, 0.167586,
		34.469704, 30.084822, 50.197380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843269, 30.864742, 49.826263>,  <34.167854, 30.705406, 50.080070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843269, 30.864742, 49.826263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824741, 30.465227, 49.819637>,  <34.813625, 30.225517, 49.815662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824741, 30.465227, 49.819637>,  <34.843269, 30.864742, 49.826263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824741, 30.465227, 49.819637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428177, -0.004866, -0.903682,
		0.902507, -0.048954, 0.427884,
		-0.046321, -0.998789, -0.016569,
		34.810844, 30.165590, 49.814667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480484, 30.621128, 49.416134>,  <34.843269, 30.864742, 49.826263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480484, 30.621128, 49.416134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245018, 30.298140, 49.431438>,  <35.103737, 30.104347, 49.440620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245018, 30.298140, 49.431438>,  <35.480484, 30.621128, 49.416134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245018, 30.298140, 49.431438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355894, -0.301374, -0.884598,
		0.725817, -0.507116, 0.464782,
		-0.588667, -0.807470, 0.038263,
		35.068417, 30.055899, 49.442917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857643, 30.025646, 49.257050>,  <35.480484, 30.621128, 49.416134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857643, 30.025646, 49.257050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483364, 29.912251, 49.173046>,  <35.258797, 29.844213, 49.122643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483364, 29.912251, 49.173046>,  <35.857643, 30.025646, 49.257050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483364, 29.912251, 49.173046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324927, -0.460543, -0.826028,
		0.137451, -0.841151, 0.523042,
		-0.935697, -0.283488, -0.210010,
		35.202656, 29.827204, 49.110043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957596, 29.302807, 48.969551>,  <35.857643, 30.025646, 49.257050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957596, 29.302807, 48.969551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617352, 29.483757, 48.862358>,  <35.413204, 29.592327, 48.798042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617352, 29.483757, 48.862358>,  <35.957596, 29.302807, 48.969551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617352, 29.483757, 48.862358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224869, -0.147717, -0.963127,
		-0.475279, -0.879510, 0.023925,
		-0.850614, 0.452374, -0.267982,
		35.362167, 29.619469, 48.781963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684891, 28.922546, 48.465816>,  <35.957596, 29.302807, 48.969551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684891, 28.922546, 48.465816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487637, 29.267128, 48.417297>,  <35.369282, 29.473877, 48.388187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487637, 29.267128, 48.417297>,  <35.684891, 28.922546, 48.465816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487637, 29.267128, 48.417297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136016, -0.214063, -0.967304,
		-0.859253, -0.460515, 0.222734,
		-0.493137, 0.861454, -0.121297,
		35.339695, 29.525564, 48.380909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119408, 28.796093, 48.045357>,  <35.684891, 28.922546, 48.465816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119408, 28.796093, 48.045357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182690, 29.189045, 48.005547>,  <35.220657, 29.424816, 47.981659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182690, 29.189045, 48.005547>,  <35.119408, 28.796093, 48.045357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182690, 29.189045, 48.005547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109280, -0.082756, -0.990560,
		-0.981341, 0.167585, 0.094262,
		0.158203, 0.982378, -0.099525,
		35.230152, 29.483759, 47.975689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874905, 28.975939, 47.447250>,  <35.119408, 28.796093, 48.045357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874905, 28.975939, 47.447250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078033, 29.313892, 47.514523>,  <35.199913, 29.516665, 47.554886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078033, 29.313892, 47.514523>,  <34.874905, 28.975939, 47.447250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078033, 29.313892, 47.514523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070006, 0.235058, -0.969457,
		-0.858610, 0.480542, 0.178515,
		0.507827, 0.844883, 0.168182,
		35.230381, 29.567358, 47.564976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455257, 29.546909, 47.302784>,  <34.874905, 28.975939, 47.447250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455257, 29.546909, 47.302784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839066, 29.655264, 47.271954>,  <35.069351, 29.720276, 47.253456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839066, 29.655264, 47.271954>,  <34.455257, 29.546909, 47.302784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839066, 29.655264, 47.271954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191327, 0.426113, -0.884207,
		-0.206673, 0.863162, 0.460692,
		0.959521, 0.270885, -0.077080,
		35.126923, 29.736530, 47.248829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443459, 30.222258, 47.140114>,  <34.455257, 29.546909, 47.302784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443459, 30.222258, 47.140114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803280, 30.091734, 47.023956>,  <35.019173, 30.013420, 46.954262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803280, 30.091734, 47.023956>,  <34.443459, 30.222258, 47.140114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803280, 30.091734, 47.023956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248361, 0.164805, -0.954545,
		0.359333, 0.930786, 0.067209,
		0.899553, -0.326308, -0.290391,
		35.073147, 29.993841, 46.936840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731289, 30.681002, 46.607441>,  <34.443459, 30.222258, 47.140114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731289, 30.681002, 46.607441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920597, 30.336210, 46.534767>,  <35.034184, 30.129335, 46.491165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920597, 30.336210, 46.534767>,  <34.731289, 30.681002, 46.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920597, 30.336210, 46.534767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295684, 0.038835, -0.954496,
		0.829809, 0.505458, -0.236493,
		0.473274, -0.861977, -0.181682,
		35.062580, 30.077618, 46.480263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027760, 30.810431, 45.947163>,  <34.731289, 30.681002, 46.607441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027760, 30.810431, 45.947163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055515, 30.415537, 46.004513>,  <35.072170, 30.178600, 46.038921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055515, 30.415537, 46.004513>,  <35.027760, 30.810431, 45.947163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055515, 30.415537, 46.004513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083325, -0.148953, -0.985327,
		0.994104, 0.056426, -0.092597,
		0.069391, -0.987233, 0.143373,
		35.076332, 30.119368, 46.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411621, 30.664034, 45.407223>,  <35.027760, 30.810431, 45.947163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411621, 30.664034, 45.407223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244598, 30.312870, 45.500961>,  <35.144386, 30.102171, 45.557205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244598, 30.312870, 45.500961>,  <35.411621, 30.664034, 45.407223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244598, 30.312870, 45.500961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245420, -0.139357, -0.959348,
		0.874881, -0.458094, -0.157268,
		-0.417555, -0.877912, 0.234346,
		35.119331, 30.049496, 45.571266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632202, 30.258404, 44.846325>,  <35.411621, 30.664034, 45.407223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632202, 30.258404, 44.846325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321819, 30.071896, 45.016258>,  <35.135590, 29.959990, 45.118217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321819, 30.071896, 45.016258>,  <35.632202, 30.258404, 44.846325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321819, 30.071896, 45.016258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363810, -0.219384, -0.905270,
		0.515305, -0.857007, 0.000597,
		-0.775953, -0.466272, 0.424837,
		35.089035, 29.932014, 45.143711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491283, 29.785513, 44.384918>,  <35.632202, 30.258404, 44.846325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491283, 29.785513, 44.384918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147301, 29.798979, 44.588623>,  <34.940910, 29.807058, 44.710846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147301, 29.798979, 44.588623>,  <35.491283, 29.785513, 44.384918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147301, 29.798979, 44.588623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510188, -0.030057, -0.859537,
		-0.013625, -0.998981, 0.043020,
		-0.859955, 0.033660, 0.509259,
		34.889313, 29.809078, 44.741402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155827, 29.192413, 44.176540>,  <35.491283, 29.785513, 44.384918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155827, 29.192413, 44.176540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865742, 29.440989, 44.295124>,  <34.691692, 29.590134, 44.366272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865742, 29.440989, 44.295124>,  <35.155827, 29.192413, 44.176540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865742, 29.440989, 44.295124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422245, -0.061309, -0.904406,
		-0.543858, -0.781060, 0.306862,
		-0.725208, 0.621439, 0.296455,
		34.648178, 29.627420, 44.384060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599323, 28.913942, 43.847710>,  <35.155827, 29.192413, 44.176540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599323, 28.913942, 43.847710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458054, 29.268383, 43.967770>,  <34.373291, 29.481049, 44.039806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458054, 29.268383, 43.967770>,  <34.599323, 28.913942, 43.847710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458054, 29.268383, 43.967770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525459, 0.077568, -0.847276,
		-0.774056, -0.456951, 0.438216,
		-0.353172, 0.886104, 0.300151,
		34.352100, 29.534214, 44.057816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824940, 28.878748, 43.897591>,  <34.599323, 28.913942, 43.847710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824940, 28.878748, 43.897591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954941, 29.250093, 43.825466>,  <34.032940, 29.472900, 43.782192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954941, 29.250093, 43.825466>,  <33.824940, 28.878748, 43.897591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954941, 29.250093, 43.825466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480764, -0.002004, -0.876848,
		-0.814396, 0.371665, 0.445673,
		0.325000, 0.928365, -0.180315,
		34.052441, 29.528603, 43.771370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239433, 29.252716, 43.590797>,  <33.824940, 28.878748, 43.897591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239433, 29.252716, 43.590797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565155, 29.471615, 43.513409>,  <33.760586, 29.602955, 43.466976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565155, 29.471615, 43.513409>,  <33.239433, 29.252716, 43.590797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565155, 29.471615, 43.513409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294240, 0.101861, -0.950288,
		-0.500337, 0.830748, 0.243968,
		0.814301, 0.547249, -0.193474,
		33.809444, 29.635790, 43.455368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037750, 29.798273, 43.219032>,  <33.239433, 29.252716, 43.590797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037750, 29.798273, 43.219032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425365, 29.817081, 43.122078>,  <33.657936, 29.828367, 43.063904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425365, 29.817081, 43.122078>,  <33.037750, 29.798273, 43.219032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425365, 29.817081, 43.122078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236902, 0.453703, -0.859087,
		0.069575, 0.889912, 0.450796,
		0.969039, 0.047023, -0.242388,
		33.716076, 29.831188, 43.049362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177303, 30.464930, 42.990101>,  <33.037750, 29.798273, 43.219032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177303, 30.464930, 42.990101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477009, 30.233740, 42.860764>,  <33.656830, 30.095026, 42.783161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477009, 30.233740, 42.860764>,  <33.177303, 30.464930, 42.990101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477009, 30.233740, 42.860764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039057, 0.448818, -0.892769,
		0.661121, 0.681547, 0.313708,
		0.749262, -0.577976, -0.323342,
		33.701786, 30.060347, 42.763760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696495, 30.939466, 42.675125>,  <33.177303, 30.464930, 42.990101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696495, 30.939466, 42.675125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725578, 30.578878, 42.504448>,  <33.743031, 30.362526, 42.402042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725578, 30.578878, 42.504448>,  <33.696495, 30.939466, 42.675125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725578, 30.578878, 42.504448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128499, 0.432727, -0.892320,
		0.989040, 0.010052, 0.147302,
		0.072712, -0.901469, -0.426693,
		33.747391, 30.308437, 42.376442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021271, 31.025448, 42.062096>,  <33.696495, 30.939466, 42.675125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021271, 31.025448, 42.062096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909096, 30.645483, 42.006935>,  <33.841789, 30.417503, 41.973839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909096, 30.645483, 42.006935>,  <34.021271, 31.025448, 42.062096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909096, 30.645483, 42.006935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007442, 0.145818, -0.989283,
		0.959843, -0.276408, -0.047962,
		-0.280440, -0.949913, -0.137906,
		33.824963, 30.360510, 41.965565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498569, 30.621761, 41.691933>,  <34.021271, 31.025448, 42.062096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498569, 30.621761, 41.691933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163769, 30.424707, 41.596657>,  <33.962887, 30.306475, 41.539490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163769, 30.424707, 41.596657>,  <34.498569, 30.621761, 41.691933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163769, 30.424707, 41.596657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180157, 0.162937, -0.970049,
		0.516691, -0.854846, -0.047627,
		-0.837003, -0.492636, -0.238194,
		33.912666, 30.276917, 41.525200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684780, 30.386599, 41.104538>,  <34.498569, 30.621761, 41.691933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684780, 30.386599, 41.104538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292316, 30.310421, 41.091579>,  <34.056839, 30.264713, 41.083805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292316, 30.310421, 41.091579>,  <34.684780, 30.386599, 41.104538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292316, 30.310421, 41.091579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029448, 0.018308, -0.999399,
		0.190925, -0.981527, -0.012355,
		-0.981163, -0.190446, -0.032399,
		33.997967, 30.253288, 41.081860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475563, 30.119255, 40.479221>,  <34.684780, 30.386599, 41.104538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475563, 30.119255, 40.479221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108421, 30.231581, 40.591431>,  <33.888138, 30.298977, 40.658756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108421, 30.231581, 40.591431>,  <34.475563, 30.119255, 40.479221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108421, 30.231581, 40.591431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189501, 0.310973, -0.931335,
		-0.348769, -0.907986, -0.232212,
		-0.917850, 0.280817, 0.280522,
		33.833065, 30.315826, 40.675587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096157, 29.998585, 39.952950>,  <34.475563, 30.119255, 40.479221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096157, 29.998585, 39.952950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869080, 30.266129, 40.144932>,  <33.732834, 30.426655, 40.260120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869080, 30.266129, 40.144932>,  <34.096157, 29.998585, 39.952950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869080, 30.266129, 40.144932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244511, 0.419709, -0.874104,
		-0.786094, -0.613574, -0.074721,
		-0.567689, 0.668858, 0.479956,
		33.698772, 30.466785, 40.288918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508083, 30.021444, 39.583637>,  <34.096157, 29.998585, 39.952950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508083, 30.021444, 39.583637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531071, 30.376982, 39.765472>,  <33.544861, 30.590305, 39.874573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531071, 30.376982, 39.765472>,  <33.508083, 30.021444, 39.583637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531071, 30.376982, 39.765472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286916, 0.450838, -0.845237,
		-0.956231, -0.081857, 0.280931,
		0.057466, 0.888845, 0.454591,
		33.548309, 30.643635, 39.901848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886234, 30.301918, 39.475830>,  <33.508083, 30.021444, 39.583637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886234, 30.301918, 39.475830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145588, 30.594854, 39.559040>,  <33.301201, 30.770617, 39.608967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145588, 30.594854, 39.559040>,  <32.886234, 30.301918, 39.475830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145588, 30.594854, 39.559040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200401, 0.427788, -0.881383,
		-0.734463, 0.529788, 0.424133,
		0.648385, 0.732340, 0.208025,
		33.340103, 30.814556, 39.621449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517075, 30.898956, 39.373108>,  <32.886234, 30.301918, 39.475830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517075, 30.898956, 39.373108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895752, 31.027658, 39.366795>,  <33.122959, 31.104879, 39.363007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895752, 31.027658, 39.366795>,  <32.517075, 30.898956, 39.373108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895752, 31.027658, 39.366795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195728, 0.535599, -0.821477,
		-0.255864, 0.780773, 0.570024,
		0.946691, 0.321756, -0.015779,
		33.179760, 31.124186, 39.362061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470436, 31.687317, 39.292770>,  <32.517075, 30.898956, 39.373108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470436, 31.687317, 39.292770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836342, 31.569811, 39.181839>,  <33.055885, 31.499308, 39.115280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836342, 31.569811, 39.181839>,  <32.470436, 31.687317, 39.292770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836342, 31.569811, 39.181839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044391, 0.609232, -0.791748,
		0.401548, 0.736572, 0.544262,
		0.914761, -0.293765, -0.277333,
		33.110771, 31.481682, 39.098640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879650, 32.278294, 39.157425>,  <32.470436, 31.687317, 39.292770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879650, 32.278294, 39.157425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071327, 31.994701, 38.950455>,  <33.186333, 31.824547, 38.826275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071327, 31.994701, 38.950455>,  <32.879650, 32.278294, 39.157425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071327, 31.994701, 38.950455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039280, 0.606246, -0.794307,
		0.876831, 0.360300, 0.318357,
		0.479191, -0.708978, -0.517423,
		33.215084, 31.782007, 38.795227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382774, 32.640385, 38.900742>,  <32.879650, 32.278294, 39.157425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382774, 32.640385, 38.900742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358852, 32.338829, 38.639030>,  <33.344501, 32.157898, 38.482002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358852, 32.338829, 38.639030>,  <33.382774, 32.640385, 38.900742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358852, 32.338829, 38.639030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067214, 0.650922, -0.756163,
		0.995945, -0.089196, 0.011746,
		-0.059801, -0.753886, -0.654278,
		33.340912, 32.112663, 38.442749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831253, 32.884228, 38.367687>,  <33.382774, 32.640385, 38.900742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831253, 32.884228, 38.367687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623055, 32.591984, 38.190914>,  <33.498135, 32.416637, 38.084850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623055, 32.591984, 38.190914>,  <33.831253, 32.884228, 38.367687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623055, 32.591984, 38.190914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117790, 0.451178, -0.884626,
		0.845702, -0.512498, -0.148778,
		-0.520494, -0.730606, -0.441929,
		33.466908, 32.372803, 38.058334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146305, 33.501762, 38.187298>,  <33.831253, 32.884228, 38.367687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146305, 33.501762, 38.187298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358700, 33.840691, 38.183163>,  <34.486137, 34.044048, 38.180683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358700, 33.840691, 38.183163>,  <34.146305, 33.501762, 38.187298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358700, 33.840691, 38.183163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568971, -0.347463, 0.745347,
		0.627952, -0.401653, -0.666597,
		0.530988, 0.847316, -0.010339,
		34.517998, 34.094887, 38.180061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849091, 33.348942, 38.013424>,  <34.146305, 33.501762, 38.187298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849091, 33.348942, 38.013424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810158, 33.669659, 38.249271>,  <34.786797, 33.862087, 38.390781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810158, 33.669659, 38.249271>,  <34.849091, 33.348942, 38.013424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810158, 33.669659, 38.249271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430745, -0.500136, 0.751214,
		0.897210, 0.327095, -0.296688,
		-0.097334, 0.801793, 0.589622,
		34.780956, 33.910198, 38.426159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453667, 33.380264, 38.369801>,  <34.849091, 33.348942, 38.013424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453667, 33.380264, 38.369801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180241, 33.575676, 38.586720>,  <35.016186, 33.692921, 38.716869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180241, 33.575676, 38.586720>,  <35.453667, 33.380264, 38.369801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180241, 33.575676, 38.586720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277009, -0.513754, 0.811987,
		0.675282, 0.705265, 0.215858,
		-0.683564, 0.488526, 0.542294,
		34.975170, 33.722233, 38.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810680, 33.451412, 38.943546>,  <35.453667, 33.380264, 38.369801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810680, 33.451412, 38.943546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429546, 33.516731, 39.045872>,  <35.200867, 33.555923, 39.107269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429546, 33.516731, 39.045872>,  <35.810680, 33.451412, 38.943546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429546, 33.516731, 39.045872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197224, -0.307496, 0.930886,
		0.230676, 0.937432, 0.260786,
		-0.952833, 0.163299, 0.255816,
		35.143696, 33.565720, 39.122616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949257, 33.777061, 39.503883>,  <35.810680, 33.451412, 38.943546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949257, 33.777061, 39.503883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575954, 33.634109, 39.518383>,  <35.351974, 33.548336, 39.527081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575954, 33.634109, 39.518383>,  <35.949257, 33.777061, 39.503883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575954, 33.634109, 39.518383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164044, -0.334246, 0.928100,
		-0.319573, 0.872099, 0.370563,
		-0.933254, -0.357384, 0.036247,
		35.295979, 33.526894, 39.529259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771477, 33.904873, 40.160370>,  <35.949257, 33.777061, 39.503883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771477, 33.904873, 40.160370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519653, 33.621777, 40.032150>,  <35.368557, 33.451920, 39.955219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519653, 33.621777, 40.032150>,  <35.771477, 33.904873, 40.160370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519653, 33.621777, 40.032150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217217, -0.556452, 0.801983,
		-0.745969, 0.435269, 0.504054,
		-0.629561, -0.707744, -0.320549,
		35.330784, 33.409454, 39.935986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197632, 33.874451, 40.689224>,  <35.771477, 33.904873, 40.160370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197632, 33.874451, 40.689224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212921, 33.521275, 40.502052>,  <35.222092, 33.309368, 40.389748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212921, 33.521275, 40.502052>,  <35.197632, 33.874451, 40.689224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212921, 33.521275, 40.502052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117303, -0.461069, 0.879577,
		-0.992360, -0.088505, 0.085950,
		0.038218, -0.882939, -0.467929,
		35.224388, 33.256393, 40.361675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677311, 33.468853, 41.016964>,  <35.197632, 33.874451, 40.689224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677311, 33.468853, 41.016964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953365, 33.229626, 40.853973>,  <35.118996, 33.086090, 40.756180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953365, 33.229626, 40.853973>,  <34.677311, 33.468853, 41.016964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953365, 33.229626, 40.853973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064489, -0.509990, 0.857759,
		-0.720805, -0.618244, -0.313392,
		0.690132, -0.598067, -0.407473,
		35.160404, 33.050205, 40.731731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621849, 32.816891, 41.363644>,  <34.677311, 33.468853, 41.016964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621849, 32.816891, 41.363644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974548, 32.776669, 41.179291>,  <35.186169, 32.752537, 41.068680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974548, 32.776669, 41.179291>,  <34.621849, 32.816891, 41.363644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974548, 32.776669, 41.179291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327442, -0.572829, 0.751431,
		-0.339567, -0.813484, -0.472164,
		0.881746, -0.100555, -0.460883,
		35.239071, 32.746502, 41.041027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819851, 32.069069, 41.292622>,  <34.621849, 32.816891, 41.363644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819851, 32.069069, 41.292622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144436, 32.302830, 41.292534>,  <35.339188, 32.443085, 41.292480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144436, 32.302830, 41.292534>,  <34.819851, 32.069069, 41.292622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144436, 32.302830, 41.292534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402882, -0.559143, 0.724600,
		0.423332, -0.588078, -0.689169,
		0.811466, 0.584400, -0.000223,
		35.387875, 32.478149, 41.292465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292545, 31.615355, 41.401840>,  <34.819851, 32.069069, 41.292622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292545, 31.615355, 41.401840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500755, 31.953365, 41.450798>,  <35.625679, 32.156174, 41.480175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500755, 31.953365, 41.450798>,  <35.292545, 31.615355, 41.401840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500755, 31.953365, 41.450798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494723, -0.415314, 0.763390,
		0.695921, -0.336808, -0.634236,
		0.520523, 0.845029, 0.122399,
		35.656914, 32.206875, 41.487518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936569, 31.428932, 41.531898>,  <35.292545, 31.615355, 41.401840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936569, 31.428932, 41.531898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952732, 31.798401, 41.684319>,  <35.962429, 32.020081, 41.775768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952732, 31.798401, 41.684319>,  <35.936569, 31.428932, 41.531898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952732, 31.798401, 41.684319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538734, -0.341321, 0.770238,
		0.841506, 0.174157, -0.511407,
		0.040412, 0.923672, 0.381047,
		35.964855, 32.075504, 41.798634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687634, 31.544306, 41.618038>,  <35.936569, 31.428932, 41.531898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687634, 31.544306, 41.618038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483047, 31.801970, 41.845531>,  <36.360294, 31.956568, 41.982029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483047, 31.801970, 41.845531>,  <36.687634, 31.544306, 41.618038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483047, 31.801970, 41.845531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528571, -0.285992, 0.799263,
		0.677507, 0.709414, -0.194208,
		-0.511466, 0.644159, 0.568737,
		36.329609, 31.995216, 42.016151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177738, 31.596544, 42.198162>,  <36.687634, 31.544306, 41.618038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177738, 31.596544, 42.198162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840668, 31.778917, 42.312717>,  <36.638424, 31.888342, 42.381451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840668, 31.778917, 42.312717>,  <37.177738, 31.596544, 42.198162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840668, 31.778917, 42.312717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239952, -0.158150, 0.957816,
		0.481992, 0.875850, 0.023867,
		-0.842678, 0.455933, 0.286389,
		36.587864, 31.915697, 42.398636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261616, 32.175583, 42.608936>,  <37.177738, 31.596544, 42.198162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261616, 32.175583, 42.608936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899765, 32.048275, 42.722324>,  <36.682655, 31.971889, 42.790359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899765, 32.048275, 42.722324>,  <37.261616, 32.175583, 42.608936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899765, 32.048275, 42.722324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345377, -0.157690, 0.925121,
		-0.249737, 0.934793, 0.252574,
		-0.904625, -0.318270, 0.283475,
		36.628376, 31.952793, 42.807365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114880, 32.617264, 43.116886>,  <37.261616, 32.175583, 42.608936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114880, 32.617264, 43.116886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856827, 32.320480, 43.189892>,  <36.701996, 32.142410, 43.233696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856827, 32.320480, 43.189892>,  <37.114880, 32.617264, 43.116886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856827, 32.320480, 43.189892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150055, 0.111187, 0.982406,
		-0.749193, 0.661167, 0.039603,
		-0.645131, -0.741954, 0.182512,
		36.663288, 32.097893, 43.244644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752140, 32.787922, 43.760422>,  <37.114880, 32.617264, 43.116886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752140, 32.787922, 43.760422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677597, 32.394928, 43.759846>,  <36.632870, 32.159134, 43.759502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677597, 32.394928, 43.759846>,  <36.752140, 32.787922, 43.760422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677597, 32.394928, 43.759846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092077, -0.018923, 0.995572,
		-0.978158, 0.185401, 0.093990,
		-0.186359, -0.982481, -0.001438,
		36.621689, 32.100185, 43.759415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254971, 32.673019, 44.256519>,  <36.752140, 32.787922, 43.760422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254971, 32.673019, 44.256519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456493, 32.331127, 44.206524>,  <36.577408, 32.125992, 44.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456493, 32.331127, 44.206524>,  <36.254971, 32.673019, 44.256519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456493, 32.331127, 44.206524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095332, -0.088789, 0.991478,
		-0.858541, -0.511426, 0.036751,
		0.503805, -0.854728, -0.124985,
		36.607635, 32.074707, 44.169029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987000, 32.207382, 44.648354>,  <36.254971, 32.673019, 44.256519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987000, 32.207382, 44.648354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339405, 32.024715, 44.598919>,  <36.550846, 31.915115, 44.569260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339405, 32.024715, 44.598919>,  <35.987000, 32.207382, 44.648354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339405, 32.024715, 44.598919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046573, -0.176233, 0.983246,
		-0.470797, -0.872006, -0.133995,
		0.881011, -0.456669, -0.123582,
		36.603710, 31.887714, 44.561844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033401, 31.507105, 45.078606>,  <35.987000, 32.207382, 44.648354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033401, 31.507105, 45.078606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411312, 31.620546, 45.012928>,  <36.638058, 31.688612, 44.973522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411312, 31.620546, 45.012928>,  <36.033401, 31.507105, 45.078606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411312, 31.620546, 45.012928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154805, 0.055354, 0.986393,
		0.288834, -0.957343, 0.008394,
		0.944781, 0.283604, -0.164190,
		36.694748, 31.705627, 44.963673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366714, 31.063354, 45.437241>,  <36.033401, 31.507105, 45.078606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366714, 31.063354, 45.437241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633320, 31.355352, 45.376747>,  <36.793282, 31.530552, 45.340450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633320, 31.355352, 45.376747>,  <36.366714, 31.063354, 45.437241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633320, 31.355352, 45.376747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188891, 0.030884, 0.981512,
		0.721170, -0.682754, -0.117305,
		0.666509, 0.729995, -0.151238,
		36.833271, 31.574350, 45.331375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920868, 30.842272, 45.847603>,  <36.366714, 31.063354, 45.437241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920868, 30.842272, 45.847603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928322, 31.239548, 45.801601>,  <36.932796, 31.477913, 45.773998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.928322, 31.239548, 45.801601>,  <36.920868, 30.842272, 45.847603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928322, 31.239548, 45.801601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170295, 0.110192, 0.979213,
		0.985217, -0.037835, -0.167082,
		0.018637, 0.993190, -0.115006,
		36.933914, 31.537504, 45.767101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516441, 30.961037, 46.136360>,  <36.920868, 30.842272, 45.847603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516441, 30.961037, 46.136360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305588, 31.300573, 46.120369>,  <37.179077, 31.504295, 46.110775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305588, 31.300573, 46.120369>,  <37.516441, 30.961037, 46.136360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305588, 31.300573, 46.120369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146723, 0.137253, 0.979609,
		0.837021, 0.510518, -0.196895,
		-0.527132, 0.848842, -0.039979,
		37.147449, 31.555225, 46.108376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790752, 31.345894, 46.675556>,  <37.516441, 30.961037, 46.136360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790752, 31.345894, 46.675556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432907, 31.516960, 46.623753>,  <37.218201, 31.619600, 46.592670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432907, 31.516960, 46.623753>,  <37.790752, 31.345894, 46.675556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432907, 31.516960, 46.623753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095248, 0.100671, 0.990350,
		0.436575, 0.898314, -0.049328,
		-0.894612, 0.427664, -0.129514,
		37.164524, 31.645260, 46.584900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852898, 31.898270, 47.066662>,  <37.790752, 31.345894, 46.675556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852898, 31.898270, 47.066662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465431, 31.806383, 47.028900>,  <37.232952, 31.751251, 47.006245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465431, 31.806383, 47.028900>,  <37.852898, 31.898270, 47.066662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465431, 31.806383, 47.028900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083799, -0.055496, 0.994936,
		-0.233790, 0.971675, 0.034508,
		-0.968669, -0.229714, -0.094400,
		37.174831, 31.737469, 47.000580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485989, 32.336136, 47.503639>,  <37.852898, 31.898270, 47.066662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485989, 32.336136, 47.503639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251194, 32.018215, 47.442009>,  <37.110317, 31.827463, 47.405029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251194, 32.018215, 47.442009>,  <37.485989, 32.336136, 47.503639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251194, 32.018215, 47.442009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149673, -0.080498, 0.985453,
		-0.795644, 0.601505, -0.071710,
		-0.586982, -0.794803, -0.154077,
		37.075100, 31.779774, 47.395786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061146, 32.444561, 47.956200>,  <37.485989, 32.336136, 47.503639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061146, 32.444561, 47.956200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058910, 32.055775, 47.862183>,  <37.057568, 31.822502, 47.805771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058910, 32.055775, 47.862183>,  <37.061146, 32.444561, 47.956200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058910, 32.055775, 47.862183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241907, -0.226753, 0.943432,
		-0.970283, 0.062130, -0.233859,
		-0.005587, -0.971969, -0.235044,
		37.057236, 31.764185, 47.791668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341843, 32.147598, 48.121380>,  <37.061146, 32.444561, 47.956200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341843, 32.147598, 48.121380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583191, 31.828831, 48.109566>,  <36.728001, 31.637571, 48.102478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583191, 31.828831, 48.109566>,  <36.341843, 32.147598, 48.121380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583191, 31.828831, 48.109566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275792, -0.243279, 0.929922,
		-0.748255, -0.552939, -0.366570,
		0.603368, -0.796915, -0.029538,
		36.764202, 31.589756, 48.100704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981014, 31.663927, 48.581356>,  <36.341843, 32.147598, 48.121380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981014, 31.663927, 48.581356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355412, 31.526398, 48.551163>,  <36.580051, 31.443880, 48.533047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355412, 31.526398, 48.551163>,  <35.981014, 31.663927, 48.581356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355412, 31.526398, 48.551163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015273, -0.174560, 0.984528,
		-0.351681, -0.922667, -0.158136,
		0.935995, -0.343824, -0.075481,
		36.636211, 31.423250, 48.528519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988205, 31.010214, 48.969669>,  <35.981014, 31.663927, 48.581356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988205, 31.010214, 48.969669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367306, 31.131968, 48.931480>,  <36.594769, 31.205019, 48.908569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367306, 31.131968, 48.931480>,  <35.988205, 31.010214, 48.969669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367306, 31.131968, 48.931480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159306, -0.192324, 0.968314,
		0.276378, -0.932932, -0.230766,
		0.947754, 0.304383, -0.095468,
		36.651630, 31.223282, 48.902840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438560, 30.532295, 49.381947>,  <35.988205, 31.010214, 48.969669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438560, 30.532295, 49.381947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669277, 30.858828, 49.369862>,  <36.807709, 31.054747, 49.362610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669277, 30.858828, 49.369862>,  <36.438560, 30.532295, 49.381947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669277, 30.858828, 49.369862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208252, -0.111184, 0.971735,
		0.789900, -0.566780, -0.234132,
		0.576792, 0.816332, -0.030209,
		36.842316, 31.103727, 49.360798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103874, 30.422619, 49.819611>,  <36.438560, 30.532295, 49.381947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103874, 30.422619, 49.819611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115749, 30.820704, 49.782368>,  <37.122875, 31.059555, 49.760021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115749, 30.820704, 49.782368>,  <37.103874, 30.422619, 49.819611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115749, 30.820704, 49.782368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421449, 0.072003, 0.903989,
		0.906366, -0.066076, -0.417295,
		0.029686, 0.995213, -0.093108,
		37.124657, 31.119268, 49.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733650, 30.504499, 50.088520>,  <37.103874, 30.422619, 49.819611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733650, 30.504499, 50.088520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563416, 30.865955, 50.107746>,  <37.461273, 31.082829, 50.119282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563416, 30.865955, 50.107746>,  <37.733650, 30.504499, 50.088520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563416, 30.865955, 50.107746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453270, 0.166899, 0.875609,
		0.783213, 0.394435, -0.480623,
		-0.425586, 0.903640, 0.048069,
		37.435741, 31.137047, 50.122166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355240, 30.968569, 50.150219>,  <37.733650, 30.504499, 50.088520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355240, 30.968569, 50.150219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022125, 31.159019, 50.263195>,  <37.822258, 31.273291, 50.330982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022125, 31.159019, 50.263195>,  <38.355240, 30.968569, 50.150219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022125, 31.159019, 50.263195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497442, 0.419685, 0.759221,
		0.242949, 0.772765, -0.586353,
		-0.832783, 0.476129, 0.282443,
		37.772289, 31.301859, 50.347927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573547, 31.642750, 50.362106>,  <38.355240, 30.968569, 50.150219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573547, 31.642750, 50.362106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217789, 31.571371, 50.530453>,  <38.004333, 31.528543, 50.631462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217789, 31.571371, 50.530453>,  <38.573547, 31.642750, 50.362106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217789, 31.571371, 50.530453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326420, 0.396642, 0.857977,
		-0.320040, 0.900461, -0.294523,
		-0.889396, -0.178449, 0.420870,
		37.950970, 31.517836, 50.656715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541801, 32.141422, 50.752510>,  <38.573547, 31.642750, 50.362106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541801, 32.141422, 50.752510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246059, 31.916445, 50.900574>,  <38.068615, 31.781460, 50.989410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246059, 31.916445, 50.900574>,  <38.541801, 32.141422, 50.752510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246059, 31.916445, 50.900574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230155, 0.305522, 0.923951,
		-0.632758, 0.768320, -0.096440,
		-0.739355, -0.562441, 0.370155,
		38.024254, 31.747713, 51.011620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012562, 32.607059, 51.182381>,  <38.541801, 32.141422, 50.752510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012562, 32.607059, 51.182381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996433, 32.227894, 51.308765>,  <37.986755, 32.000393, 51.384598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996433, 32.227894, 51.308765>,  <38.012562, 32.607059, 51.182381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996433, 32.227894, 51.308765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031572, 0.317271, 0.947809,
		-0.998688, 0.028242, -0.042720,
		-0.040322, -0.947914, 0.315963,
		37.984337, 31.943520, 51.403553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773296, 32.764950, 51.854321>,  <38.012562, 32.607059, 51.182381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773296, 32.764950, 51.854321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892857, 32.383701, 51.835503>,  <37.964592, 32.154953, 51.824211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892857, 32.383701, 51.835503>,  <37.773296, 32.764950, 51.854321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892857, 32.383701, 51.835503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137751, -0.005691, 0.990451,
		-0.944290, -0.302525, 0.129593,
		0.298898, -0.953124, -0.047047,
		37.982525, 32.097763, 51.821388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161930, 32.725597, 52.188805>,  <37.773296, 32.764950, 51.854321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161930, 32.725597, 52.188805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273823, 33.101250, 52.268593>,  <37.340958, 33.326641, 52.316463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273823, 33.101250, 52.268593>,  <37.161930, 32.725597, 52.188805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273823, 33.101250, 52.268593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582435, 0.331162, -0.742362,
		-0.763228, 0.091489, 0.639619,
		0.279735, 0.939128, 0.199466,
		37.357742, 33.382988, 52.328434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506863, 33.141777, 52.331669>,  <37.161930, 32.725597, 52.188805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506863, 33.141777, 52.331669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807259, 33.379929, 52.217449>,  <36.987495, 33.522820, 52.148918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807259, 33.379929, 52.217449>,  <36.506863, 33.141777, 52.331669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807259, 33.379929, 52.217449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595999, 0.425021, -0.681280,
		-0.284259, 0.681818, 0.674033,
		0.750988, 0.595383, -0.285546,
		37.032555, 33.558544, 52.131786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232506, 33.781910, 52.260342>,  <36.506863, 33.141777, 52.331669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232506, 33.781910, 52.260342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568260, 33.814495, 52.045380>,  <36.769711, 33.834045, 51.916405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568260, 33.814495, 52.045380>,  <36.232506, 33.781910, 52.260342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568260, 33.814495, 52.045380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520267, 0.406635, -0.750980,
		0.157353, 0.909952, 0.383702,
		0.839382, 0.081459, -0.537403,
		36.820076, 33.838932, 51.884159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143513, 34.458427, 51.972370>,  <36.232506, 33.781910, 52.260342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143513, 34.458427, 51.972370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397457, 34.291756, 51.712112>,  <36.549824, 34.191753, 51.555958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397457, 34.291756, 51.712112>,  <36.143513, 34.458427, 51.972370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397457, 34.291756, 51.712112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559851, 0.332263, -0.759058,
		0.532468, 0.846155, -0.022339,
		0.634858, -0.416681, -0.650640,
		36.587914, 34.166752, 51.516922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086967, 34.928600, 51.436028>,  <36.143513, 34.458427, 51.972370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086967, 34.928600, 51.436028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294132, 34.631393, 51.266468>,  <36.418430, 34.453072, 51.164730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294132, 34.631393, 51.266468>,  <36.086967, 34.928600, 51.436028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294132, 34.631393, 51.266468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382667, 0.241958, -0.891640,
		0.765069, 0.624007, -0.159014,
		0.517915, -0.743016, -0.423901,
		36.449505, 34.408489, 51.139297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446049, 35.195965, 50.782730>,  <36.086967, 34.928600, 51.436028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446049, 35.195965, 50.782730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438488, 34.796597, 50.761559>,  <36.433952, 34.556976, 50.748856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438488, 34.796597, 50.761559>,  <36.446049, 35.195965, 50.782730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438488, 34.796597, 50.761559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404913, 0.056051, -0.912636,
		0.914160, 0.004183, -0.405333,
		-0.018902, -0.998419, -0.052933,
		36.432816, 34.497070, 50.745678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888050, 34.892693, 50.189064>,  <36.446049, 35.195965, 50.782730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888050, 34.892693, 50.189064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605572, 34.627678, 50.288933>,  <36.436085, 34.468670, 50.348854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605572, 34.627678, 50.288933>,  <36.888050, 34.892693, 50.189064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605572, 34.627678, 50.288933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459498, 0.160583, -0.873541,
		0.538658, -0.731614, -0.417837,
		-0.706193, -0.662536, 0.249676,
		36.393715, 34.428917, 50.363834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672981, 34.713669, 49.572338>,  <36.888050, 34.892693, 50.189064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672981, 34.713669, 49.572338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393639, 34.541130, 49.800808>,  <36.226032, 34.437607, 49.937889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393639, 34.541130, 49.800808>,  <36.672981, 34.713669, 49.572338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393639, 34.541130, 49.800808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637086, 0.010887, -0.770716,
		0.326224, -0.902122, -0.282405,
		-0.698354, -0.431343, 0.571178,
		36.184132, 34.411728, 49.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387882, 34.165104, 49.172985>,  <36.672981, 34.713669, 49.572338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387882, 34.165104, 49.172985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087894, 34.205036, 49.434544>,  <35.907902, 34.228996, 49.591476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087894, 34.205036, 49.434544>,  <36.387882, 34.165104, 49.172985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087894, 34.205036, 49.434544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649632, -0.297365, -0.699680,
		0.124594, -0.949530, 0.287870,
		-0.749970, 0.099834, 0.653894,
		35.862904, 34.234985, 49.630711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015057, 33.490547, 49.246857>,  <36.387882, 34.165104, 49.172985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015057, 33.490547, 49.246857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754681, 33.775917, 49.350628>,  <35.598457, 33.947140, 49.412891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754681, 33.775917, 49.350628>,  <36.015057, 33.490547, 49.246857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754681, 33.775917, 49.350628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588588, -0.258490, -0.765994,
		-0.479424, -0.651307, 0.588176,
		-0.650935, 0.713430, 0.259426,
		35.559399, 33.989944, 49.428455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396206, 33.176376, 49.204620>,  <36.015057, 33.490547, 49.246857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396206, 33.176376, 49.204620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341911, 33.570076, 49.159309>,  <35.309334, 33.806297, 49.132122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341911, 33.570076, 49.159309>,  <35.396206, 33.176376, 49.204620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341911, 33.570076, 49.159309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533770, -0.168969, -0.828576,
		-0.834665, -0.052002, 0.548297,
		-0.135733, 0.984248, -0.113276,
		35.301193, 33.865349, 49.125328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673630, 33.245487, 49.074505>,  <35.396206, 33.176376, 49.204620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673630, 33.245487, 49.074505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827553, 33.589359, 48.940117>,  <34.919907, 33.795681, 48.859482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827553, 33.589359, 48.940117>,  <34.673630, 33.245487, 49.074505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827553, 33.589359, 48.940117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512092, -0.103988, -0.852612,
		-0.767908, 0.500142, 0.400218,
		0.384809, 0.859677, -0.335973,
		34.942997, 33.847263, 48.839325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059242, 33.587635, 48.773525>,  <34.673630, 33.245487, 49.074505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059242, 33.587635, 48.773525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395905, 33.746559, 48.627232>,  <34.597904, 33.841911, 48.539455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395905, 33.746559, 48.627232>,  <34.059242, 33.587635, 48.773525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395905, 33.746559, 48.627232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396737, -0.004519, -0.917921,
		-0.366350, 0.917674, 0.153823,
		0.841658, 0.397308, -0.365731,
		34.648403, 33.865753, 48.517513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915737, 34.173733, 48.271427>,  <34.059242, 33.587635, 48.773525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915737, 34.173733, 48.271427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279228, 34.052227, 48.156921>,  <34.497322, 33.979324, 48.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279228, 34.052227, 48.156921>,  <33.915737, 34.173733, 48.271427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279228, 34.052227, 48.156921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291934, 0.027615, -0.956040,
		0.298313, 0.952348, -0.063584,
		0.908726, -0.303762, -0.286261,
		34.551846, 33.961098, 48.071045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102463, 34.684376, 47.749088>,  <33.915737, 34.173733, 48.271427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102463, 34.684376, 47.749088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349094, 34.375500, 47.687698>,  <34.497074, 34.190174, 47.650864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349094, 34.375500, 47.687698>,  <34.102463, 34.684376, 47.749088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349094, 34.375500, 47.687698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058510, 0.149454, -0.987036,
		0.785118, 0.617563, 0.046969,
		0.616576, -0.772192, -0.153472,
		34.534069, 34.143841, 47.641655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604790, 34.896366, 47.210751>,  <34.102463, 34.684376, 47.749088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604790, 34.896366, 47.210751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613987, 34.496475, 47.212498>,  <34.619507, 34.256542, 47.213547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613987, 34.496475, 47.212498>,  <34.604790, 34.896366, 47.210751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613987, 34.496475, 47.212498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260398, 0.001767, -0.965500,
		0.965228, 0.023340, 0.260367,
		0.022995, -0.999726, 0.004372,
		34.620884, 34.196556, 47.213810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314354, 34.684185, 46.860134>,  <34.604790, 34.896366, 47.210751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314354, 34.684185, 46.860134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041225, 34.394878, 46.818878>,  <34.877350, 34.221294, 46.794125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041225, 34.394878, 46.818878>,  <35.314354, 34.684185, 46.860134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041225, 34.394878, 46.818878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315379, -0.164461, -0.934606,
		0.659009, -0.670697, 0.340401,
		-0.682820, -0.723269, -0.103142,
		34.836380, 34.177898, 46.787937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607552, 34.029652, 46.567520>,  <35.314354, 34.684185, 46.860134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607552, 34.029652, 46.567520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216644, 34.010284, 46.484951>,  <34.982101, 33.998665, 46.435410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216644, 34.010284, 46.484951>,  <35.607552, 34.029652, 46.567520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216644, 34.010284, 46.484951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210399, -0.100982, -0.972386,
		0.026235, -0.993709, 0.108873,
		-0.977263, -0.048417, -0.206426,
		34.923466, 33.995758, 46.423023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465683, 33.358112, 46.227150>,  <35.607552, 34.029652, 46.567520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465683, 33.358112, 46.227150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182137, 33.609562, 46.099194>,  <35.012009, 33.760433, 46.022419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182137, 33.609562, 46.099194>,  <35.465683, 33.358112, 46.227150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182137, 33.609562, 46.099194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323683, -0.113031, -0.939390,
		-0.626683, -0.769449, -0.123351,
		-0.708870, 0.628627, -0.319893,
		34.969475, 33.798149, 46.003227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223763, 33.164848, 45.644001>,  <35.465683, 33.358112, 46.227150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223763, 33.164848, 45.644001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057076, 33.526443, 45.605721>,  <34.957066, 33.743401, 45.582752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057076, 33.526443, 45.605721>,  <35.223763, 33.164848, 45.644001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057076, 33.526443, 45.605721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244435, 0.010031, -0.969614,
		-0.875558, -0.427444, -0.225146,
		-0.416714, 0.903986, -0.095700,
		34.932060, 33.797638, 45.577011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948189, 33.094574, 45.005985>,  <35.223763, 33.164848, 45.644001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948189, 33.094574, 45.005985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952770, 33.486423, 45.086182>,  <34.955521, 33.721535, 45.134300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952770, 33.486423, 45.086182>,  <34.948189, 33.094574, 45.005985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952770, 33.486423, 45.086182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129450, 0.197365, -0.971745,
		-0.991520, 0.037084, -0.124553,
		0.011453, 0.979628, 0.200492,
		34.956207, 33.780312, 45.146328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678596, 33.455322, 44.401714>,  <34.948189, 33.094574, 45.005985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678596, 33.455322, 44.401714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877304, 33.741741, 44.597874>,  <34.996529, 33.913593, 44.715569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877304, 33.741741, 44.597874>,  <34.678596, 33.455322, 44.401714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877304, 33.741741, 44.597874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280981, 0.401923, -0.871498,
		-0.821138, 0.570728, -0.001532,
		0.496772, 0.716050, 0.490397,
		35.026337, 33.956554, 44.744991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443268, 34.103645, 44.139584>,  <34.678596, 33.455322, 44.401714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443268, 34.103645, 44.139584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813164, 34.143963, 44.286392>,  <35.035099, 34.168152, 44.374477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813164, 34.143963, 44.286392>,  <34.443268, 34.103645, 44.139584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813164, 34.143963, 44.286392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327674, 0.279744, -0.902426,
		-0.193628, 0.954769, 0.225663,
		0.924737, 0.100791, 0.367020,
		35.090584, 34.174202, 44.396500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624985, 34.869019, 43.948372>,  <34.443268, 34.103645, 44.139584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624985, 34.869019, 43.948372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943260, 34.631680, 43.997055>,  <35.134228, 34.489277, 44.026264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943260, 34.631680, 43.997055>,  <34.624985, 34.869019, 43.948372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943260, 34.631680, 43.997055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397750, 0.360310, -0.843784,
		0.456805, 0.719802, 0.522700,
		0.795691, -0.593349, 0.121710,
		35.181969, 34.453674, 44.033569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118683, 35.250740, 43.729950>,  <34.624985, 34.869019, 43.948372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118683, 35.250740, 43.729950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327877, 34.909821, 43.733578>,  <35.453392, 34.705269, 43.735752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327877, 34.909821, 43.733578>,  <35.118683, 35.250740, 43.729950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327877, 34.909821, 43.733578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502511, 0.299722, -0.810956,
		0.688456, 0.428673, 0.585037,
		0.522983, -0.852295, 0.009067,
		35.484772, 34.654133, 43.736298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826607, 35.465733, 43.559246>,  <35.118683, 35.250740, 43.729950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826607, 35.465733, 43.559246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815613, 35.072609, 43.486214>,  <35.809017, 34.836735, 43.442394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815613, 35.072609, 43.486214>,  <35.826607, 35.465733, 43.559246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815613, 35.072609, 43.486214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559253, 0.136272, -0.817720,
		0.828542, -0.124582, 0.545892,
		-0.027484, -0.982807, -0.182580,
		35.807369, 34.777767, 43.431438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541756, 35.299129, 43.579807>,  <35.826607, 35.465733, 43.559246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541756, 35.299129, 43.579807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341625, 35.016506, 43.379623>,  <36.221546, 34.846931, 43.259514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341625, 35.016506, 43.379623>,  <36.541756, 35.299129, 43.579807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341625, 35.016506, 43.379623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561747, 0.174952, -0.808599,
		0.658875, -0.685691, 0.309373,
		-0.500323, -0.706555, -0.500456,
		36.191528, 34.804539, 43.229485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122864, 34.842720, 43.412769>,  <36.541756, 35.299129, 43.579807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122864, 34.842720, 43.412769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802448, 34.775421, 43.182980>,  <36.610199, 34.735043, 43.045105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802448, 34.775421, 43.182980>,  <37.122864, 34.842720, 43.412769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802448, 34.775421, 43.182980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568551, 0.086441, -0.818094,
		0.187299, -0.981948, 0.026414,
		-0.801043, -0.168246, -0.574478,
		36.562134, 34.724949, 43.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254696, 34.309708, 42.929672>,  <37.122864, 34.842720, 43.412769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254696, 34.309708, 42.929672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968948, 34.520214, 42.745182>,  <36.797501, 34.646519, 42.634487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968948, 34.520214, 42.745182>,  <37.254696, 34.309708, 42.929672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968948, 34.520214, 42.745182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566512, 0.048019, -0.822653,
		-0.410790, -0.848961, -0.332441,
		-0.714364, 0.526269, -0.461221,
		36.754639, 34.678093, 42.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474033, 34.243790, 42.320900>,  <37.254696, 34.309708, 42.929672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474033, 34.243790, 42.320900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188995, 34.520557, 42.274502>,  <37.017971, 34.686619, 42.246662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188995, 34.520557, 42.274502>,  <37.474033, 34.243790, 42.320900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188995, 34.520557, 42.274502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337728, 0.193393, -0.921162,
		-0.614936, -0.695592, -0.371491,
		-0.712596, 0.691918, -0.115997,
		36.975216, 34.728134, 42.239704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039379, 34.123936, 41.676151>,  <37.474033, 34.243790, 42.320900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039379, 34.123936, 41.676151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056084, 34.509815, 41.780159>,  <37.066105, 34.741344, 41.842564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056084, 34.509815, 41.780159>,  <37.039379, 34.123936, 41.676151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056084, 34.509815, 41.780159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415358, 0.219932, -0.882670,
		-0.908699, 0.144865, -0.391511,
		0.041762, 0.964699, 0.260023,
		37.068611, 34.799225, 41.858166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758335, 34.568012, 41.138397>,  <37.039379, 34.123936, 41.676151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758335, 34.568012, 41.138397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918678, 34.870251, 41.345619>,  <37.014885, 35.051594, 41.469952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918678, 34.870251, 41.345619>,  <36.758335, 34.568012, 41.138397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918678, 34.870251, 41.345619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272697, 0.441435, -0.854851,
		-0.874613, 0.483947, -0.029097,
		0.400859, 0.755599, 0.518056,
		37.038937, 35.096931, 41.501038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628632, 35.130848, 40.733639>,  <36.758335, 34.568012, 41.138397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628632, 35.130848, 40.733639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938393, 35.234344, 40.964584>,  <37.124252, 35.296440, 41.103153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938393, 35.234344, 40.964584>,  <36.628632, 35.130848, 40.733639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938393, 35.234344, 40.964584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461340, 0.393563, -0.795156,
		-0.432965, 0.882136, 0.185413,
		0.774407, 0.258737, 0.577363,
		37.170715, 35.311966, 41.137794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916477, 35.844910, 40.423157>,  <36.628632, 35.130848, 40.733639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916477, 35.844910, 40.423157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212730, 35.720470, 40.661377>,  <37.390480, 35.645805, 40.804310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212730, 35.720470, 40.661377>,  <36.916477, 35.844910, 40.423157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212730, 35.720470, 40.661377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671857, 0.354180, -0.650511,
		-0.008558, 0.881914, 0.471332,
		0.740631, -0.311101, 0.595551,
		37.434921, 35.627140, 40.840042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348484, 36.404953, 40.552319>,  <36.916477, 35.844910, 40.423157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348484, 36.404953, 40.552319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574772, 36.079746, 40.607414>,  <37.710545, 35.884624, 40.640472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574772, 36.079746, 40.607414>,  <37.348484, 36.404953, 40.552319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574772, 36.079746, 40.607414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761312, 0.450788, -0.466040,
		0.316807, 0.368508, 0.873977,
		0.565718, -0.813014, 0.137737,
		37.744488, 35.835842, 40.648735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906139, 36.620029, 40.840668>,  <37.348484, 36.404953, 40.552319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906139, 36.620029, 40.840668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018021, 36.269100, 40.684681>,  <38.085148, 36.058544, 40.591091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018021, 36.269100, 40.684681>,  <37.906139, 36.620029, 40.840668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018021, 36.269100, 40.684681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818833, 0.430060, -0.380213,
		0.501277, -0.212968, 0.838669,
		0.279704, -0.877322, -0.389964,
		38.101933, 36.005905, 40.567692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684574, 36.623978, 40.900864>,  <37.906139, 36.620029, 40.840668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684574, 36.623978, 40.900864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592545, 36.343487, 40.630947>,  <38.537327, 36.175194, 40.468998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592545, 36.343487, 40.630947>,  <38.684574, 36.623978, 40.900864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592545, 36.343487, 40.630947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717460, 0.346258, -0.604446,
		0.657507, -0.623206, 0.423437,
		-0.230076, -0.701227, -0.674793,
		38.523521, 36.133118, 40.428509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336456, 36.416679, 40.611332>,  <38.684574, 36.623978, 40.900864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336456, 36.416679, 40.611332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070374, 36.316124, 40.330105>,  <38.910725, 36.255791, 40.161369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070374, 36.316124, 40.330105>,  <39.336456, 36.416679, 40.611332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070374, 36.316124, 40.330105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661294, 0.238854, -0.711083,
		0.346692, -0.937950, 0.007357,
		-0.665203, -0.251392, -0.703070,
		38.870811, 36.240707, 40.119183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701836, 36.090832, 40.266697>,  <39.336456, 36.416679, 40.611332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701836, 36.090832, 40.266697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388008, 36.146820, 40.025082>,  <39.199711, 36.180412, 39.880112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388008, 36.146820, 40.025082>,  <39.701836, 36.090832, 40.266697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388008, 36.146820, 40.025082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613918, 0.311957, -0.725112,
		0.086940, -0.939729, -0.330681,
		-0.784567, 0.139970, -0.604038,
		39.152637, 36.188812, 39.843868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756538, 35.687664, 39.705547>,  <39.701836, 36.090832, 40.266697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756538, 35.687664, 39.705547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534073, 36.008179, 39.617348>,  <39.400593, 36.200489, 39.564430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534073, 36.008179, 39.617348>,  <39.756538, 35.687664, 39.705547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534073, 36.008179, 39.617348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737285, 0.353277, -0.575853,
		-0.383528, -0.482837, -0.787258,
		-0.556163, 0.801289, -0.220497,
		39.367226, 36.248566, 39.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759064, 35.672279, 38.916332>,  <39.756538, 35.687664, 39.705547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759064, 35.672279, 38.916332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709240, 36.011932, 39.121647>,  <39.679344, 36.215725, 39.244835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709240, 36.011932, 39.121647>,  <39.759064, 35.672279, 38.916332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709240, 36.011932, 39.121647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666506, 0.454829, -0.590678,
		-0.735020, 0.268537, -0.622602,
		-0.124559, 0.849128, 0.513290,
		39.671871, 36.266670, 39.275635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677124, 36.136578, 38.396393>,  <39.759064, 35.672279, 38.916332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677124, 36.136578, 38.396393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854752, 36.308350, 38.710941>,  <39.961330, 36.411415, 38.899673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854752, 36.308350, 38.710941>,  <39.677124, 36.136578, 38.396393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854752, 36.308350, 38.710941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732261, 0.331821, -0.594717,
		-0.516328, 0.839930, -0.167105,
		0.444072, 0.429433, 0.786376,
		39.987972, 36.437180, 38.946854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871548, 36.814182, 38.193237>,  <39.677124, 36.136578, 38.396393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871548, 36.814182, 38.193237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104671, 36.672829, 38.485935>,  <40.244545, 36.588017, 38.661552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104671, 36.672829, 38.485935>,  <39.871548, 36.814182, 38.193237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104671, 36.672829, 38.485935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812334, 0.276719, -0.513361,
		-0.021074, 0.893614, 0.448341,
		0.582811, -0.353384, 0.731745,
		40.279514, 36.566814, 38.705460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254517, 37.361004, 38.550510>,  <39.871548, 36.814182, 38.193237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254517, 37.361004, 38.550510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432140, 37.002895, 38.536057>,  <40.538715, 36.788029, 38.527386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432140, 37.002895, 38.536057>,  <40.254517, 37.361004, 38.550510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432140, 37.002895, 38.536057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795422, 0.412454, -0.444056,
		0.412454, 0.168443, 0.895270,
		0.444056, -0.895270, -0.036135,
		40.565357, 36.734314, 38.525215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856979, 37.414101, 38.871559>,  <40.254517, 37.361004, 38.550510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856979, 37.414101, 38.871559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865326, 37.116940, 38.603931>,  <40.870335, 36.938641, 38.443356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865326, 37.116940, 38.603931>,  <40.856979, 37.414101, 38.871559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865326, 37.116940, 38.603931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623039, 0.533043, -0.572439,
		0.781912, -0.404912, 0.473982,
		0.020865, -0.742907, -0.669069,
		40.871586, 36.894066, 38.403210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519604, 37.105076, 38.925121>,  <40.856979, 37.414101, 38.871559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519604, 37.105076, 38.925121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312244, 37.126740, 38.583752>,  <41.187828, 37.139736, 38.378929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312244, 37.126740, 38.583752>,  <41.519604, 37.105076, 38.925121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312244, 37.126740, 38.583752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665094, 0.652835, -0.362568,
		0.537511, -0.755562, -0.374446,
		-0.518394, 0.054158, -0.853426,
		41.156727, 37.142986, 38.327724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973671, 37.202629, 38.390011>,  <41.519604, 37.105076, 38.925121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973671, 37.202629, 38.390011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622910, 37.321510, 38.238903>,  <41.412453, 37.392841, 38.148239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622910, 37.321510, 38.238903>,  <41.973671, 37.202629, 38.390011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622910, 37.321510, 38.238903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456105, 0.762528, -0.458824,
		0.151696, -0.574647, -0.804220,
		-0.876902, 0.297206, -0.377771,
		41.359840, 37.410671, 38.125572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667446, 37.018600, 38.294945>,  <41.973671, 37.202629, 38.390011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667446, 37.018600, 38.294945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896969, 36.962692, 37.972157>,  <43.034683, 36.929146, 37.778484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896969, 36.962692, 37.972157>,  <42.667446, 37.018600, 38.294945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896969, 36.962692, 37.972157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814371, -0.201867, -0.544104,
		-0.086852, 0.969389, -0.229658,
		0.573809, -0.139770, -0.806974,
		43.069111, 36.920761, 37.730064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402580, 37.428822, 37.791225>,  <42.667446, 37.018600, 38.294945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402580, 37.428822, 37.791225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607456, 37.142792, 37.600929>,  <42.730381, 36.971172, 37.486752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607456, 37.142792, 37.600929>,  <42.402580, 37.428822, 37.791225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607456, 37.142792, 37.600929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828658, -0.265804, -0.492619,
		0.225806, 0.646541, -0.728695,
		0.512189, -0.715075, -0.475741,
		42.761112, 36.928268, 37.458206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226322, 37.567921, 37.123077>,  <42.402580, 37.428822, 37.791225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226322, 37.567921, 37.123077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354321, 37.194363, 37.186874>,  <42.431122, 36.970226, 37.225151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354321, 37.194363, 37.186874>,  <42.226322, 37.567921, 37.123077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354321, 37.194363, 37.186874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802026, -0.356639, -0.479128,
		0.504337, 0.025402, -0.863133,
		0.319998, -0.933897, 0.159493,
		42.450321, 36.914192, 37.234722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071743, 37.226925, 36.454258>,  <42.226322, 37.567921, 37.123077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071743, 37.226925, 36.454258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120754, 36.935375, 36.723698>,  <42.150162, 36.760445, 36.885361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120754, 36.935375, 36.723698>,  <42.071743, 37.226925, 36.454258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120754, 36.935375, 36.723698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858307, -0.418585, -0.296809,
		0.498294, -0.541790, -0.676881,
		0.122524, -0.728870, 0.673600,
		42.157513, 36.716713, 36.925777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015697, 36.637142, 36.012501>,  <42.071743, 37.226925, 36.454258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015697, 36.637142, 36.012501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973003, 36.448563, 36.362667>,  <41.947388, 36.335415, 36.572765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973003, 36.448563, 36.362667>,  <42.015697, 36.637142, 36.012501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973003, 36.448563, 36.362667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806272, -0.474179, -0.353667,
		0.581837, -0.743567, -0.329505,
		-0.106731, -0.471447, 0.875412,
		41.940983, 36.307129, 36.625290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907887, 35.972137, 35.901424>,  <42.015697, 36.637142, 36.012501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907887, 35.972137, 35.901424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761417, 35.992550, 36.273083>,  <41.673534, 36.004799, 36.496078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761417, 35.992550, 36.273083>,  <41.907887, 35.972137, 35.901424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761417, 35.992550, 36.273083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800971, -0.525541, -0.286797,
		0.473667, -0.849236, 0.233319,
		-0.366177, 0.051035, 0.929144,
		41.651566, 36.007862, 36.551826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690029, 35.258537, 36.082214>,  <41.907887, 35.972137, 35.901424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690029, 35.258537, 36.082214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490593, 35.527023, 36.301624>,  <41.370934, 35.688114, 36.433270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490593, 35.527023, 36.301624>,  <41.690029, 35.258537, 36.082214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490593, 35.527023, 36.301624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858589, -0.469492, -0.205918,
		0.119314, -0.573627, 0.810380,
		-0.498587, 0.671214, 0.548527,
		41.341019, 35.728386, 36.466183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146610, 34.879345, 36.228931>,  <41.690029, 35.258537, 36.082214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146610, 34.879345, 36.228931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031818, 35.248589, 36.331314>,  <40.962944, 35.470135, 36.392746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031818, 35.248589, 36.331314>,  <41.146610, 34.879345, 36.228931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031818, 35.248589, 36.331314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942532, -0.224375, -0.247567,
		-0.171099, -0.312300, 0.934448,
		-0.286982, 0.923106, 0.255962,
		40.945724, 35.525520, 36.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644955, 34.840382, 36.730961>,  <41.146610, 34.879345, 36.228931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644955, 34.840382, 36.730961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565487, 35.192341, 36.558304>,  <40.517807, 35.403515, 36.454708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565487, 35.192341, 36.558304>,  <40.644955, 34.840382, 36.730961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565487, 35.192341, 36.558304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883434, -0.351471, -0.309858,
		-0.424352, 0.319769, 0.847156,
		-0.198668, 0.879895, -0.431642,
		40.505886, 35.456310, 36.428810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981781, 35.026958, 36.944717>,  <40.644955, 34.840382, 36.730961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981781, 35.026958, 36.944717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033772, 35.263542, 36.626400>,  <40.064964, 35.405491, 36.435410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033772, 35.263542, 36.626400>,  <39.981781, 35.026958, 36.944717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033772, 35.263542, 36.626400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841768, -0.358304, -0.403787,
		-0.523959, 0.722353, 0.451302,
		0.129973, 0.591460, -0.795790,
		40.072762, 35.440979, 36.387665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356495, 35.306049, 36.861469>,  <39.981781, 35.026958, 36.944717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356495, 35.306049, 36.861469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538666, 35.361210, 36.509659>,  <39.647968, 35.394306, 36.298573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538666, 35.361210, 36.509659>,  <39.356495, 35.306049, 36.861469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538666, 35.361210, 36.509659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778846, -0.416846, -0.468656,
		-0.431255, 0.898455, -0.082441,
		0.455431, 0.137902, -0.879526,
		39.675297, 35.402580, 36.245800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843189, 35.551540, 36.443260>,  <39.356495, 35.306049, 36.861469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843189, 35.551540, 36.443260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107479, 35.392067, 36.188862>,  <39.266052, 35.296383, 36.036224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107479, 35.392067, 36.188862>,  <38.843189, 35.551540, 36.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107479, 35.392067, 36.188862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748621, -0.411861, -0.519554,
		-0.054800, 0.819401, -0.570595,
		0.660729, -0.398688, -0.635991,
		39.305698, 35.272461, 35.998066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583302, 35.733055, 35.952435>,  <38.843189, 35.551540, 36.443260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583302, 35.733055, 35.952435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826645, 35.451927, 35.804955>,  <38.972652, 35.283249, 35.716465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826645, 35.451927, 35.804955>,  <38.583302, 35.733055, 35.952435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826645, 35.451927, 35.804955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711621, -0.277346, -0.645504,
		0.351414, 0.655076, -0.668867,
		0.608362, -0.702819, -0.368702,
		39.009155, 35.241081, 35.694344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542187, 35.798519, 35.264858>,  <38.583302, 35.733055, 35.952435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542187, 35.798519, 35.264858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638050, 35.415112, 35.326584>,  <38.695568, 35.185066, 35.363617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638050, 35.415112, 35.326584>,  <38.542187, 35.798519, 35.264858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638050, 35.415112, 35.326584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735612, -0.283010, -0.615451,
		0.633590, 0.033987, -0.772922,
		0.239662, -0.958515, 0.154311,
		38.709949, 35.127556, 35.372879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618042, 35.515503, 34.618294>,  <38.542187, 35.798519, 35.264858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618042, 35.515503, 34.618294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579170, 35.180557, 34.833469>,  <38.555847, 34.979588, 34.962574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579170, 35.180557, 34.833469>,  <38.618042, 35.515503, 34.618294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579170, 35.180557, 34.833469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640170, -0.361259, -0.677993,
		0.762062, -0.410254, -0.500951,
		-0.097176, -0.837367, 0.537934,
		38.550018, 34.929348, 34.994850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752907, 34.935368, 34.149708>,  <38.618042, 35.515503, 34.618294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752907, 34.935368, 34.149708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557381, 34.781376, 34.462845>,  <38.440063, 34.688980, 34.650726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557381, 34.781376, 34.462845>,  <38.752907, 34.935368, 34.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557381, 34.781376, 34.462845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631294, -0.463239, -0.621994,
		0.602100, -0.798249, -0.016595,
		-0.488819, -0.384979, 0.782846,
		38.410736, 34.665882, 34.697701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611393, 34.110966, 33.995323>,  <38.752907, 34.935368, 34.149708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611393, 34.110966, 33.995323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363335, 34.232922, 34.284447>,  <38.214500, 34.306095, 34.457920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363335, 34.232922, 34.284447>,  <38.611393, 34.110966, 33.995323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363335, 34.232922, 34.284447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760339, -0.460437, -0.458129,
		0.193129, -0.833690, 0.517361,
		-0.620150, 0.304892, 0.722810,
		38.177288, 34.324390, 34.501289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085976, 33.566902, 34.018234>,  <38.611393, 34.110966, 33.995323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085976, 33.566902, 34.018234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904163, 33.846897, 34.238567>,  <37.795074, 34.014893, 34.370766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904163, 33.846897, 34.238567>,  <38.085976, 33.566902, 34.018234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904163, 33.846897, 34.238567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887762, -0.406443, -0.216062,
		0.072642, -0.587218, 0.806163,
		-0.454535, 0.699986, 0.550834,
		37.767803, 34.056892, 34.403816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652824, 33.201839, 34.576683>,  <38.085976, 33.566902, 34.018234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652824, 33.201839, 34.576683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509373, 33.561958, 34.478016>,  <37.423302, 33.778030, 34.418816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509373, 33.561958, 34.478016>,  <37.652824, 33.201839, 34.576683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509373, 33.561958, 34.478016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839491, -0.426611, -0.336539,
		-0.408213, 0.086374, 0.908791,
		-0.358632, 0.900302, -0.246658,
		37.401783, 33.832050, 34.404018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965649, 33.112789, 34.728989>,  <37.652824, 33.201839, 34.576683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965649, 33.112789, 34.728989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982323, 33.436626, 34.494785>,  <36.992329, 33.630928, 34.354263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982323, 33.436626, 34.494785>,  <36.965649, 33.112789, 34.728989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982323, 33.436626, 34.494785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768170, -0.348757, -0.536920,
		-0.638887, 0.472157, 0.607364,
		0.041688, 0.809590, -0.585513,
		36.994827, 33.679504, 34.319130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245316, 33.406418, 34.831707>,  <36.965649, 33.112789, 34.728989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245316, 33.406418, 34.831707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408268, 33.509647, 34.481293>,  <36.506039, 33.571583, 34.271042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408268, 33.509647, 34.481293>,  <36.245316, 33.406418, 34.831707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408268, 33.509647, 34.481293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726011, -0.490413, -0.482082,
		-0.554031, 0.832403, -0.012422,
		0.407378, 0.258070, -0.876038,
		36.530483, 33.587067, 34.218483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785793, 33.885349, 34.356476>,  <36.245316, 33.406418, 34.831707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785793, 33.885349, 34.356476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034187, 33.648354, 34.151211>,  <36.183224, 33.506157, 34.028053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034187, 33.648354, 34.151211>,  <35.785793, 33.885349, 34.356476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034187, 33.648354, 34.151211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783214, -0.443271, -0.435989,
		0.030850, 0.672657, -0.739311,
		0.620986, -0.592489, -0.513160,
		36.220482, 33.470608, 33.997261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874893, 34.033508, 33.591873>,  <35.785793, 33.885349, 34.356476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874893, 34.033508, 33.591873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899464, 33.637550, 33.643005>,  <35.914207, 33.399975, 33.673683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899464, 33.637550, 33.643005>,  <35.874893, 34.033508, 33.591873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899464, 33.637550, 33.643005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903768, -0.109514, -0.413776,
		0.423593, -0.090110, -0.901359,
		0.061426, -0.989892, 0.127828,
		35.917892, 33.340584, 33.681355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896904, 33.623737, 32.940132>,  <35.874893, 34.033508, 33.591873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896904, 33.623737, 32.940132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703968, 33.418137, 33.223866>,  <35.588207, 33.294777, 33.394104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703968, 33.418137, 33.223866>,  <35.896904, 33.623737, 32.940132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703968, 33.418137, 33.223866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850140, 0.079436, -0.520530,
		0.211206, -0.854105, -0.475286,
		-0.482342, -0.513998, 0.709332,
		35.559265, 33.263939, 33.436665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391434, 33.312607, 33.312424>,  <35.896904, 33.623737, 32.940132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391434, 33.312607, 33.312424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684818, 33.443081, 33.073887>,  <36.860851, 33.521366, 32.930763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684818, 33.443081, 33.073887>,  <36.391434, 33.312607, 33.312424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684818, 33.443081, 33.073887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230069, 0.944684, 0.233754,
		0.639607, -0.034249, 0.767939,
		0.733465, 0.326190, -0.596346,
		36.904858, 33.540939, 32.894981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256050, 32.519665, 33.536896>,  <36.391434, 33.312607, 33.312424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256050, 32.519665, 33.536896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287579, 32.173313, 33.339291>,  <36.306496, 31.965504, 33.220730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287579, 32.173313, 33.339291>,  <36.256050, 32.519665, 33.536896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287579, 32.173313, 33.339291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972932, 0.174804, -0.151152,
		0.217234, -0.468725, 0.856216,
		0.078822, -0.865875, -0.494011,
		36.311226, 31.913551, 33.191086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724243, 32.002731, 33.785309>,  <36.256050, 32.519665, 33.536896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724243, 32.002731, 33.785309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695633, 31.954264, 33.389290>,  <36.678467, 31.925184, 33.151676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695633, 31.954264, 33.389290>,  <36.724243, 32.002731, 33.785309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695633, 31.954264, 33.389290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964269, 0.245447, -0.099706,
		0.255086, -0.961808, 0.099280,
		-0.071530, -0.121166, -0.990052,
		36.674175, 31.917913, 33.092274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331345, 32.035572, 33.597240>,  <36.724243, 32.002731, 33.785309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331345, 32.035572, 33.597240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194023, 32.003941, 33.222885>,  <37.111629, 31.984962, 32.998272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194023, 32.003941, 33.222885>,  <37.331345, 32.035572, 33.597240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194023, 32.003941, 33.222885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881713, 0.316198, -0.350144,
		0.323615, -0.945392, -0.038827,
		-0.343300, -0.079078, -0.935891,
		37.091034, 31.980217, 32.942120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723179, 31.629017, 33.197712>,  <37.331345, 32.035572, 33.597240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723179, 31.629017, 33.197712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552689, 31.909376, 32.968952>,  <37.450394, 32.077591, 32.831696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552689, 31.909376, 32.968952>,  <37.723179, 31.629017, 33.197712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552689, 31.909376, 32.968952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901753, 0.278952, -0.330194,
		-0.071899, -0.656452, -0.750934,
		-0.426230, 0.700897, -0.571901,
		37.424820, 32.119644, 32.797382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089901, 31.713463, 32.545479>,  <37.723179, 31.629017, 33.197712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089901, 31.713463, 32.545479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898251, 32.064137, 32.562737>,  <37.783260, 32.274540, 32.573090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898251, 32.064137, 32.562737>,  <38.089901, 31.713463, 32.545479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898251, 32.064137, 32.562737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815326, 0.462719, -0.348043,
		-0.325086, -0.131582, -0.936485,
		-0.479126, 0.876685, 0.043141,
		37.754513, 32.327141, 32.575680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245983, 31.908228, 31.872501>,  <38.089901, 31.713463, 32.545479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245983, 31.908228, 31.872501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174305, 32.115791, 32.206837>,  <38.131298, 32.240330, 32.407436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174305, 32.115791, 32.206837>,  <38.245983, 31.908228, 31.872501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174305, 32.115791, 32.206837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907071, 0.416106, -0.063858,
		-0.380933, 0.746720, -0.545251,
		-0.179198, 0.518907, 0.835837,
		38.120544, 32.271465, 32.457588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548737, 32.555542, 31.811348>,  <38.245983, 31.908228, 31.872501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548737, 32.555542, 31.811348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506355, 32.486637, 32.203083>,  <38.480927, 32.445293, 32.438126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506355, 32.486637, 32.203083>,  <38.548737, 32.555542, 31.811348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506355, 32.486637, 32.203083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924346, 0.345989, 0.160858,
		-0.366549, 0.922289, 0.122573,
		-0.105949, -0.172263, 0.979337,
		38.474571, 32.434959, 32.496883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616852, 33.158825, 32.166622>,  <38.548737, 32.555542, 31.811348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616852, 33.158825, 32.166622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708347, 32.873814, 32.431946>,  <38.763245, 32.702808, 32.591141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708347, 32.873814, 32.431946>,  <38.616852, 33.158825, 32.166622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708347, 32.873814, 32.431946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900513, 0.413711, 0.133866,
		-0.369801, 0.566698, 0.736274,
		0.228743, -0.712528, 0.663310,
		38.776970, 32.660053, 32.630939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918236, 33.525673, 32.650917>,  <38.616852, 33.158825, 32.166622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918236, 33.525673, 32.650917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007648, 33.159889, 32.785854>,  <39.061298, 32.940418, 32.866817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007648, 33.159889, 32.785854>,  <38.918236, 33.525673, 32.650917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007648, 33.159889, 32.785854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946265, 0.286587, 0.149838,
		-0.233699, 0.285724, 0.929380,
		0.223536, -0.914456, 0.337345,
		39.074711, 32.885551, 32.887058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158009, 33.599613, 33.381115>,  <38.918236, 33.525673, 32.650917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158009, 33.599613, 33.381115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312660, 33.275368, 33.205200>,  <39.405453, 33.080818, 33.099651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312660, 33.275368, 33.205200>,  <39.158009, 33.599613, 33.381115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312660, 33.275368, 33.205200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910802, 0.260778, 0.320053,
		-0.144754, -0.524302, 0.839139,
		0.386633, -0.810618, -0.439787,
		39.428650, 33.032181, 33.073265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623714, 33.451866, 33.894081>,  <39.158009, 33.599613, 33.381115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623714, 33.451866, 33.894081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740089, 33.251392, 33.568096>,  <39.809914, 33.131107, 33.372505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740089, 33.251392, 33.568096>,  <39.623714, 33.451866, 33.894081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740089, 33.251392, 33.568096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928094, 0.354733, 0.113167,
		0.232377, -0.789288, 0.568354,
		0.290935, -0.501188, -0.814965,
		39.827370, 33.101036, 33.323608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197880, 33.142380, 34.067814>,  <39.623714, 33.451866, 33.894081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197880, 33.142380, 34.067814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211494, 33.148457, 33.668091>,  <40.219666, 33.152103, 33.428257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211494, 33.148457, 33.668091>,  <40.197880, 33.142380, 34.067814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211494, 33.148457, 33.668091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967967, 0.248375, 0.036748,
		0.248761, -0.968545, -0.006254,
		0.034039, 0.015195, -0.999305,
		40.221706, 33.153015, 33.368298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869152, 32.752934, 33.789059>,  <40.197880, 33.142380, 34.067814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869152, 32.752934, 33.789059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744400, 32.997066, 33.497791>,  <40.669548, 33.143547, 33.323032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744400, 32.997066, 33.497791>,  <40.869152, 32.752934, 33.789059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744400, 32.997066, 33.497791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918656, 0.389307, -0.067161,
		0.242489, -0.689879, -0.682104,
		-0.311881, 0.610334, -0.728164,
		40.650837, 33.180168, 33.279343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446690, 32.833187, 33.261539>,  <40.869152, 32.752934, 33.789059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446690, 32.833187, 33.261539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210644, 33.144905, 33.177193>,  <41.069016, 33.331936, 33.126587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210644, 33.144905, 33.177193>,  <41.446690, 32.833187, 33.261539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210644, 33.144905, 33.177193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792175, 0.609299, 0.034837,
		0.155628, -0.146483, -0.976894,
		-0.590117, 0.779293, -0.210864,
		41.033607, 33.378693, 33.113934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688942, 33.139675, 32.663174>,  <41.446690, 32.833187, 33.261539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688942, 33.139675, 32.663174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464531, 33.422653, 32.835114>,  <41.329884, 33.592442, 32.938278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464531, 33.422653, 32.835114>,  <41.688942, 33.139675, 32.663174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464531, 33.422653, 32.835114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805543, 0.586168, 0.086648,
		-0.190665, 0.394874, -0.898733,
		-0.561023, 0.707447, 0.429850,
		41.296223, 33.634888, 32.964069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800175, 33.724094, 32.273617>,  <41.688942, 33.139675, 32.663174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800175, 33.724094, 32.273617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663380, 33.832329, 32.633579>,  <41.581303, 33.897270, 32.849556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663380, 33.832329, 32.633579>,  <41.800175, 33.724094, 32.273617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663380, 33.832329, 32.633579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760991, 0.641578, 0.096282,
		-0.551308, 0.717747, -0.425322,
		-0.341983, 0.270585, 0.899906,
		41.560783, 33.913506, 32.903553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222347, 34.352676, 32.404175>,  <41.800175, 33.724094, 32.273617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222347, 34.352676, 32.404175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059593, 34.299664, 32.765701>,  <41.961941, 34.267857, 32.982616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059593, 34.299664, 32.765701>,  <42.222347, 34.352676, 32.404175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059593, 34.299664, 32.765701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731141, 0.545882, 0.409200,
		-0.547607, 0.827314, -0.125215,
		-0.406890, -0.132531, 0.903812,
		41.937527, 34.259903, 33.036846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992413, 34.977798, 32.713428>,  <42.222347, 34.352676, 32.404175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992413, 34.977798, 32.713428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992340, 34.749889, 33.042149>,  <41.992298, 34.613144, 33.239380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992340, 34.749889, 33.042149>,  <41.992413, 34.977798, 32.713428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992340, 34.749889, 33.042149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535440, 0.694019, 0.481291,
		-0.844573, 0.440114, 0.304953,
		-0.000179, -0.569769, 0.821805,
		41.992287, 34.578960, 33.288689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783913, 35.394157, 33.223381>,  <41.992413, 34.977798, 32.713428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783913, 35.394157, 33.223381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968422, 35.081879, 33.392017>,  <42.079128, 34.894512, 33.493198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968422, 35.081879, 33.392017>,  <41.783913, 35.394157, 33.223381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968422, 35.081879, 33.392017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603338, 0.624386, 0.496110,
		-0.650548, 0.025521, 0.759036,
		0.461271, -0.780698, 0.421591,
		42.106804, 34.847668, 33.518494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804588, 35.627426, 33.921471>,  <41.783913, 35.394157, 33.223381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804588, 35.627426, 33.921471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082336, 35.347569, 33.854122>,  <42.248985, 35.179653, 33.813713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082336, 35.347569, 33.854122>,  <41.804588, 35.627426, 33.921471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082336, 35.347569, 33.854122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646245, 0.503330, 0.573608,
		-0.316576, -0.507104, 0.801639,
		0.694368, -0.699646, -0.168371,
		42.290646, 35.137676, 33.803612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116688, 35.679638, 34.544647>,  <41.804588, 35.627426, 33.921471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116688, 35.679638, 34.544647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396427, 35.477119, 34.342827>,  <42.564270, 35.355610, 34.221733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396427, 35.477119, 34.342827>,  <42.116688, 35.679638, 34.544647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396427, 35.477119, 34.342827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708994, 0.401714, 0.579614,
		-0.090769, -0.763079, 0.639899,
		0.699348, -0.506296, -0.504555,
		42.606232, 35.325230, 34.191460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541508, 35.421757, 35.103649>,  <42.116688, 35.679638, 34.544647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541508, 35.421757, 35.103649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777821, 35.371140, 34.784912>,  <42.919609, 35.340771, 34.593670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777821, 35.371140, 34.784912>,  <42.541508, 35.421757, 35.103649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777821, 35.371140, 34.784912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803473, 0.182246, 0.566760,
		0.073503, -0.975076, 0.209342,
		0.590786, -0.126542, -0.796843,
		42.955055, 35.333176, 34.545860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117840, 35.081409, 35.387100>,  <42.541508, 35.421757, 35.103649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117840, 35.081409, 35.387100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224030, 35.235870, 35.033737>,  <43.287743, 35.328548, 34.821720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.224030, 35.235870, 35.033737>,  <43.117840, 35.081409, 35.387100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224030, 35.235870, 35.033737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912133, 0.196220, 0.359876,
		0.312311, -0.901322, -0.300134,
		0.265472, 0.386155, -0.883408,
		43.303673, 35.351715, 34.768715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635204, 34.715199, 35.212952>,  <43.117840, 35.081409, 35.387100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635204, 34.715199, 35.212952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665306, 35.071938, 35.034538>,  <43.683369, 35.285980, 34.927490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.665306, 35.071938, 35.034538>,  <43.635204, 34.715199, 35.212952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665306, 35.071938, 35.034538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900702, 0.131137, 0.414171,
		0.427869, -0.432915, -0.793418,
		0.075254, 0.891845, -0.446037,
		43.687881, 35.339493, 34.900726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263695, 34.806149, 35.170822>,  <43.635204, 34.715199, 35.212952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263695, 34.806149, 35.170822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191921, 35.182972, 35.057449>,  <44.148857, 35.409065, 34.989426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191921, 35.182972, 35.057449>,  <44.263695, 34.806149, 35.170822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191921, 35.182972, 35.057449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883468, 0.281042, 0.374832,
		0.432769, -0.183143, -0.882706,
		-0.179430, 0.942058, -0.283427,
		44.138092, 35.465588, 34.972420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870441, 35.084122, 34.838848>,  <44.263695, 34.806149, 35.170822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870441, 35.084122, 34.838848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647743, 35.396076, 34.953262>,  <44.514126, 35.583248, 35.021912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647743, 35.396076, 34.953262>,  <44.870441, 35.084122, 34.838848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647743, 35.396076, 34.953262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821590, 0.466158, 0.328157,
		0.122588, 0.417701, -0.900276,
		-0.556743, 0.779886, 0.286034,
		44.480721, 35.630043, 35.039074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119644, 35.679554, 34.515656>,  <44.870441, 35.084122, 34.838848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119644, 35.679554, 34.515656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937153, 35.766514, 34.860817>,  <44.827660, 35.818687, 35.067913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937153, 35.766514, 34.860817>,  <45.119644, 35.679554, 34.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937153, 35.766514, 34.860817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882217, 0.237344, 0.406647,
		-0.116401, 0.946788, -0.300073,
		-0.456229, 0.217395, 0.862899,
		44.800285, 35.831734, 35.119686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756458, 35.472214, 34.441536>,  <45.119644, 35.679554, 34.515656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756458, 35.472214, 34.441536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875378, 35.831768, 34.312775>,  <45.946728, 36.047501, 34.235519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875378, 35.831768, 34.312775>,  <45.756458, 35.472214, 34.441536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875378, 35.831768, 34.312775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236758, -0.396020, -0.887194,
		-0.924966, 0.187544, -0.330553,
		0.297294, 0.898885, -0.321903,
		45.964565, 36.101433, 34.216206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425911, 35.481808, 34.666790>,  <45.756458, 35.472214, 34.441536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425911, 35.481808, 34.666790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487324, 35.087719, 34.636410>,  <46.524170, 34.851265, 34.618179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487324, 35.087719, 34.636410>,  <46.425911, 35.481808, 34.666790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487324, 35.087719, 34.636410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597400, 0.153771, -0.787063,
		0.787110, 0.075461, 0.612179,
		0.153528, -0.985221, -0.075954,
		46.533382, 34.792152, 34.613625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016033, 34.940746, 34.678085>,  <46.425911, 35.481808, 34.666790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016033, 34.940746, 34.678085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346867, 34.716049, 34.685871>,  <47.545368, 34.581230, 34.690544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346867, 34.716049, 34.685871>,  <47.016033, 34.940746, 34.678085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346867, 34.716049, 34.685871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548419, 0.814084, 0.191060,
		-0.123174, -0.147346, 0.981385,
		0.827082, -0.561744, 0.019467,
		47.594990, 34.547527, 34.691711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.408112, 35.301964, 35.211697>,  <47.016033, 34.940746, 34.678085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.408112, 35.301964, 35.211697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662285, 35.101334, 34.976868>,  <47.814789, 34.980957, 34.835972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662285, 35.101334, 34.976868>,  <47.408112, 35.301964, 35.211697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.662285, 35.101334, 34.976868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637485, 0.769784, 0.032326,
		0.435702, -0.394788, 0.808892,
		0.635434, -0.501572, -0.587068,
		47.852917, 34.950863, 34.800747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.104469, 36.705219, 46.724190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.739346, 36.542179, 46.734390>,  <33.520271, 36.444355, 46.740513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.739346, 36.542179, 46.734390>,  <34.104469, 36.705219, 46.724190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739346, 36.542179, 46.734390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052862, 0.055995, -0.997031,
		0.404961, -0.911443, -0.072659,
		-0.912805, -0.407599, 0.025505,
		33.465504, 36.419899, 46.742043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173115, 36.102898, 46.387943>,  <34.104469, 36.705219, 46.724190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173115, 36.102898, 46.387943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789047, 36.210915, 46.359245>,  <33.558605, 36.275726, 46.342026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.789047, 36.210915, 46.359245>,  <34.173115, 36.102898, 46.387943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789047, 36.210915, 46.359245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046695, -0.098076, -0.994083,
		-0.275486, -0.957839, 0.081560,
		-0.960170, 0.270048, -0.071745,
		33.500996, 36.291927, 46.337723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957813, 35.701092, 45.840908>,  <34.173115, 36.102898, 46.387943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957813, 35.701092, 45.840908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671413, 35.977680, 45.879284>,  <33.499573, 36.143635, 45.902309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671413, 35.977680, 45.879284>,  <33.957813, 35.701092, 45.840908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671413, 35.977680, 45.879284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225317, -0.098828, -0.969260,
		-0.660735, -0.715611, 0.226562,
		-0.716004, 0.691473, 0.095940,
		33.456612, 36.185123, 45.908066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383785, 35.507412, 45.534004>,  <33.957813, 35.701092, 45.840908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383785, 35.507412, 45.534004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.279922, 35.893658, 45.539341>,  <33.217606, 36.125404, 45.542542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.279922, 35.893658, 45.539341>,  <33.383785, 35.507412, 45.534004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279922, 35.893658, 45.539341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211764, -0.043456, -0.976354,
		-0.942198, -0.256338, 0.215765,
		-0.259653, 0.965610, 0.013339,
		33.202026, 36.183342, 45.543343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704926, 35.557610, 45.188236>,  <33.383785, 35.507412, 45.534004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704926, 35.557610, 45.188236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.892124, 35.908482, 45.145294>,  <33.004444, 36.119007, 45.119530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.892124, 35.908482, 45.145294>,  <32.704926, 35.557610, 45.188236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892124, 35.908482, 45.145294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109916, -0.062759, -0.991957,
		-0.876867, 0.476035, 0.067046,
		0.467999, 0.877184, -0.107356,
		33.032524, 36.171638, 45.113087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449253, 35.871647, 44.601456>,  <32.704926, 35.557610, 45.188236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449253, 35.871647, 44.601456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793350, 36.074032, 44.626705>,  <32.999809, 36.195461, 44.641853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.793350, 36.074032, 44.626705>,  <32.449253, 35.871647, 44.601456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793350, 36.074032, 44.626705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036265, 0.062766, -0.997369,
		-0.508591, 0.860270, 0.035645,
		0.860244, 0.505960, 0.063120,
		33.051422, 36.225819, 44.645641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202168, 36.449711, 44.270252>,  <32.449253, 35.871647, 44.601456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202168, 36.449711, 44.270252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.601879, 36.441360, 44.257557>,  <32.841705, 36.436348, 44.249939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.601879, 36.441360, 44.257557>,  <32.202168, 36.449711, 44.270252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601879, 36.441360, 44.257557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022482, 0.348576, -0.937011,
		0.030628, 0.937048, 0.347855,
		0.999278, -0.020878, -0.031743,
		32.901661, 36.435097, 44.248035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353924, 37.030682, 43.836212>,  <32.202168, 36.449711, 44.270252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353924, 37.030682, 43.836212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676449, 36.794140, 43.831161>,  <32.869965, 36.652214, 43.828133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.676449, 36.794140, 43.831161>,  <32.353924, 37.030682, 43.836212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676449, 36.794140, 43.831161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156313, 0.233623, -0.959680,
		0.570466, 0.771826, 0.280809,
		0.806310, -0.591359, -0.012627,
		32.918343, 36.616734, 43.827374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964909, 37.419636, 43.561195>,  <32.353924, 37.030682, 43.836212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964909, 37.419636, 43.561195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045849, 37.029385, 43.527252>,  <33.094414, 36.795235, 43.506886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045849, 37.029385, 43.527252>,  <32.964909, 37.419636, 43.561195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045849, 37.029385, 43.527252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264627, 0.137897, -0.954441,
		0.942882, 0.170680, 0.286082,
		0.202354, -0.975630, -0.084854,
		33.106556, 36.736694, 43.501797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700069, 37.376156, 43.182507>,  <32.964909, 37.419636, 43.561195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700069, 37.376156, 43.182507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515003, 37.024807, 43.134483>,  <33.403965, 36.813999, 43.105671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.515003, 37.024807, 43.134483>,  <33.700069, 37.376156, 43.182507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515003, 37.024807, 43.134483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288291, -0.021007, -0.957312,
		0.838351, -0.477523, 0.262945,
		-0.462663, -0.878368, -0.120054,
		33.376205, 36.761295, 43.098469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183270, 36.993198, 42.838425>,  <33.700069, 37.376156, 43.182507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183270, 36.993198, 42.838425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.837395, 36.799767, 42.784069>,  <33.629871, 36.683708, 42.751457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.837395, 36.799767, 42.784069>,  <34.183270, 36.993198, 42.838425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837395, 36.799767, 42.784069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282108, -0.243678, -0.927920,
		0.415614, -0.840695, 0.347128,
		-0.864685, -0.483584, -0.135890,
		33.577988, 36.654690, 42.743301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452042, 36.369095, 42.616737>,  <34.183270, 36.993198, 42.838425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452042, 36.369095, 42.616737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078514, 36.446468, 42.496365>,  <33.854397, 36.492893, 42.424141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078514, 36.446468, 42.496365>,  <34.452042, 36.369095, 42.616737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078514, 36.446468, 42.496365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268218, -0.178048, -0.946762,
		-0.236722, -0.964821, 0.114381,
		-0.933821, 0.193440, -0.300930,
		33.798367, 36.504501, 42.406086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341629, 35.835365, 42.099709>,  <34.452042, 36.369095, 42.616737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341629, 35.835365, 42.099709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.051975, 36.102215, 42.029778>,  <33.878181, 36.262325, 41.987820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.051975, 36.102215, 42.029778>,  <34.341629, 35.835365, 42.099709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051975, 36.102215, 42.029778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242049, 0.008470, -0.970227,
		-0.645784, -0.744896, -0.167611,
		-0.724138, 0.667127, -0.174832,
		33.834736, 36.302353, 41.977329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972641, 35.649632, 41.480957>,  <34.341629, 35.835365, 42.099709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972641, 35.649632, 41.480957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922695, 36.043785, 41.527294>,  <33.892727, 36.280277, 41.555096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922695, 36.043785, 41.527294>,  <33.972641, 35.649632, 41.480957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922695, 36.043785, 41.527294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287041, 0.147643, -0.946472,
		-0.949745, -0.084932, -0.301283,
		-0.124868, 0.985387, 0.115845,
		33.885235, 36.339401, 41.562046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635960, 35.929836, 40.761177>,  <33.972641, 35.649632, 41.480957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635960, 35.929836, 40.761177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.799759, 36.241467, 40.951061>,  <33.898041, 36.428444, 41.064991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.799759, 36.241467, 40.951061>,  <33.635960, 35.929836, 40.761177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799759, 36.241467, 40.951061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363539, 0.337893, -0.868140,
		-0.836749, 0.528079, -0.144857,
		0.409500, 0.779077, 0.474709,
		33.922607, 36.475189, 41.093475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497898, 36.506069, 40.380070>,  <33.635960, 35.929836, 40.761177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497898, 36.506069, 40.380070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804768, 36.648579, 40.593426>,  <33.988892, 36.734085, 40.721439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804768, 36.648579, 40.593426>,  <33.497898, 36.506069, 40.380070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804768, 36.648579, 40.593426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345231, 0.471500, -0.811482,
		-0.540607, 0.806693, 0.238726,
		0.767177, 0.356277, 0.533392,
		34.034920, 36.755463, 40.753445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578465, 37.099529, 40.170261>,  <33.497898, 36.506069, 40.380070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578465, 37.099529, 40.170261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926548, 37.063732, 40.364056>,  <34.135399, 37.042255, 40.480331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926548, 37.063732, 40.364056>,  <33.578465, 37.099529, 40.170261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926548, 37.063732, 40.364056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468381, 0.455290, -0.757186,
		-0.152822, 0.885835, 0.438113,
		0.870210, -0.089489, 0.484486,
		34.187611, 37.036884, 40.509403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902523, 37.796143, 40.025047>,  <33.578465, 37.099529, 40.170261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902523, 37.796143, 40.025047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.189381, 37.540337, 40.135845>,  <34.361496, 37.386852, 40.202324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.189381, 37.540337, 40.135845>,  <33.902523, 37.796143, 40.025047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189381, 37.540337, 40.135845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519333, 0.225322, -0.824332,
		0.464761, 0.735015, 0.493710,
		0.717141, -0.639517, 0.276996,
		34.404522, 37.348480, 40.218945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573895, 38.141209, 40.052082>,  <33.902523, 37.796143, 40.025047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573895, 38.141209, 40.052082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685223, 37.757702, 40.029087>,  <34.752018, 37.527599, 40.015289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685223, 37.757702, 40.029087>,  <34.573895, 38.141209, 40.052082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685223, 37.757702, 40.029087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720696, 0.248025, -0.647364,
		0.634929, 0.138744, 0.760010,
		0.278320, -0.958767, -0.057486,
		34.768719, 37.470074, 40.011841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355556, 38.133205, 40.185829>,  <34.573895, 38.141209, 40.052082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355556, 38.133205, 40.185829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213604, 37.819584, 39.982136>,  <35.128433, 37.631413, 39.859921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.213604, 37.819584, 39.982136>,  <35.355556, 38.133205, 40.185829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213604, 37.819584, 39.982136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608933, 0.219462, -0.762258,
		0.709407, -0.580604, 0.399551,
		-0.354884, -0.784050, -0.509237,
		35.107140, 37.584370, 39.829365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872971, 38.096210, 39.697033>,  <35.355556, 38.133205, 40.185829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872971, 38.096210, 39.697033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622658, 37.819656, 39.552597>,  <35.472469, 37.653725, 39.465935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622658, 37.819656, 39.552597>,  <35.872971, 38.096210, 39.697033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622658, 37.819656, 39.552597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392839, 0.120571, -0.911669,
		0.673848, -0.712358, 0.196151,
		-0.625784, -0.691382, -0.361089,
		35.434921, 37.612244, 39.444271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389999, 37.648628, 39.377193>,  <35.872971, 38.096210, 39.697033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389999, 37.648628, 39.377193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018864, 37.672058, 39.229851>,  <35.796181, 37.686115, 39.141445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018864, 37.672058, 39.229851>,  <36.389999, 37.648628, 39.377193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018864, 37.672058, 39.229851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366125, 0.331553, -0.869497,
		0.071196, -0.941616, -0.329074,
		-0.927838, 0.058577, -0.368354,
		35.740513, 37.689632, 39.119343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107784, 37.372406, 39.475784>,  <36.389999, 37.648628, 39.377193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107784, 37.372406, 39.475784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451694, 37.573734, 39.441254>,  <37.658043, 37.694530, 39.420536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451694, 37.573734, 39.441254>,  <37.107784, 37.372406, 39.475784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451694, 37.573734, 39.441254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117517, -0.030496, 0.992603,
		0.496963, -0.863562, -0.085369,
		0.859777, 0.503319, -0.086328,
		37.709629, 37.724731, 39.415356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669361, 36.969017, 39.871677>,  <37.107784, 37.372406, 39.475784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669361, 36.969017, 39.871677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765617, 37.356522, 39.847706>,  <37.823372, 37.589024, 39.833321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.765617, 37.356522, 39.847706>,  <37.669361, 36.969017, 39.871677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765617, 37.356522, 39.847706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260690, -0.005031, 0.965409,
		0.934951, -0.247937, -0.253758,
		0.240637, 0.968763, -0.059931,
		37.837807, 37.647152, 39.829727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369408, 37.032665, 40.128273>,  <37.669361, 36.969017, 39.871677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369408, 37.032665, 40.128273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190296, 37.387283, 40.174809>,  <38.082829, 37.600052, 40.202728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190296, 37.387283, 40.174809>,  <38.369408, 37.032665, 40.128273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190296, 37.387283, 40.174809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382482, 0.072312, 0.921129,
		0.808208, 0.456959, -0.371467,
		-0.447780, 0.886544, 0.116335,
		38.055962, 37.653248, 40.209709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844036, 37.406178, 40.597080>,  <38.369408, 37.032665, 40.128273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844036, 37.406178, 40.597080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488537, 37.589180, 40.585613>,  <38.275238, 37.698982, 40.578735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488537, 37.589180, 40.585613>,  <38.844036, 37.406178, 40.597080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488537, 37.589180, 40.585613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064416, 0.186553, 0.980331,
		0.453855, 0.869417, -0.195268,
		-0.888744, 0.457506, -0.028664,
		38.221912, 37.726433, 40.577015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884197, 37.829411, 41.140785>,  <38.844036, 37.406178, 40.597080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884197, 37.829411, 41.140785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489189, 37.810436, 41.080719>,  <38.252186, 37.799049, 41.044678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489189, 37.810436, 41.080719>,  <38.884197, 37.829411, 41.140785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489189, 37.810436, 41.080719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156503, 0.189386, 0.969350,
		-0.017545, 0.980756, -0.194447,
		-0.987522, -0.047439, -0.150168,
		38.192932, 37.796204, 41.035667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645214, 38.394062, 41.577862>,  <38.884197, 37.829411, 41.140785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645214, 38.394062, 41.577862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330311, 38.159897, 41.500385>,  <38.141369, 38.019398, 41.453899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330311, 38.159897, 41.500385>,  <38.645214, 38.394062, 41.577862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330311, 38.159897, 41.500385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296020, 0.083253, 0.951547,
		-0.540922, 0.806449, -0.238836,
		-0.787258, -0.585413, -0.193692,
		38.094135, 37.984272, 41.442276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028961, 38.695827, 41.920822>,  <38.645214, 38.394062, 41.577862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028961, 38.695827, 41.920822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948532, 38.309895, 41.853104>,  <37.900276, 38.078335, 41.812473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948532, 38.309895, 41.853104>,  <38.028961, 38.695827, 41.920822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948532, 38.309895, 41.853104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348293, -0.091120, 0.932946,
		-0.915567, 0.246553, -0.317724,
		-0.201070, -0.964836, -0.169299,
		37.888210, 38.020443, 41.802315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451057, 38.683876, 42.257809>,  <38.028961, 38.695827, 41.920822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451057, 38.683876, 42.257809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570030, 38.305435, 42.206539>,  <37.641415, 38.078369, 42.175777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.570030, 38.305435, 42.206539>,  <37.451057, 38.683876, 42.257809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570030, 38.305435, 42.206539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284619, -0.216005, 0.933988,
		-0.911334, -0.241314, -0.333524,
		0.297427, -0.946102, -0.128170,
		37.659260, 38.021603, 42.168087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823616, 38.229549, 42.358089>,  <37.451057, 38.683876, 42.257809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823616, 38.229549, 42.358089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144691, 37.997349, 42.412815>,  <37.337337, 37.858028, 42.445652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144691, 37.997349, 42.412815>,  <36.823616, 38.229549, 42.358089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144691, 37.997349, 42.412815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360719, -0.289849, 0.886493,
		-0.474950, -0.760927, -0.442054,
		0.802686, -0.580497, 0.136817,
		37.385498, 37.823200, 42.453861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559868, 37.648293, 42.683998>,  <36.823616, 38.229549, 42.358089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559868, 37.648293, 42.683998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943150, 37.596592, 42.786091>,  <37.173119, 37.565571, 42.847347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943150, 37.596592, 42.786091>,  <36.559868, 37.648293, 42.683998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943150, 37.596592, 42.786091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270575, -0.119604, 0.955240,
		-0.092924, -0.984374, -0.149573,
		0.958204, -0.129236, 0.255233,
		37.230610, 37.557819, 42.862659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615898, 37.079071, 43.091740>,  <36.559868, 37.648293, 42.683998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615898, 37.079071, 43.091740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944031, 37.289978, 43.180321>,  <37.140911, 37.416523, 43.233471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.944031, 37.289978, 43.180321>,  <36.615898, 37.079071, 43.091740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944031, 37.289978, 43.180321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115327, -0.226761, 0.967098,
		0.560140, -0.818881, -0.125211,
		0.820331, 0.527270, 0.221457,
		37.190128, 37.448158, 43.246758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950745, 36.760822, 43.648312>,  <36.615898, 37.079071, 43.091740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950745, 36.760822, 43.648312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109955, 37.127171, 43.669350>,  <37.205479, 37.346977, 43.681973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109955, 37.127171, 43.669350>,  <36.950745, 36.760822, 43.648312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109955, 37.127171, 43.669350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072837, -0.088702, 0.993391,
		0.914480, -0.391559, -0.102015,
		0.398021, 0.915867, 0.052596,
		37.229362, 37.401932, 43.685127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662178, 36.762547, 43.988087>,  <36.950745, 36.760822, 43.648312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662178, 36.762547, 43.988087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542625, 37.141857, 44.030853>,  <37.470894, 37.369446, 44.056511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542625, 37.141857, 44.030853>,  <37.662178, 36.762547, 43.988087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542625, 37.141857, 44.030853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141863, -0.066638, 0.987641,
		0.943685, 0.310359, -0.114609,
		-0.298886, 0.948281, 0.106914,
		37.452961, 37.426342, 44.062927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049202, 37.048363, 44.552738>,  <37.662178, 36.762547, 43.988087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049202, 37.048363, 44.552738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755341, 37.315044, 44.502480>,  <37.579025, 37.475056, 44.472324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755341, 37.315044, 44.502480>,  <38.049202, 37.048363, 44.552738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755341, 37.315044, 44.502480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252620, -0.096938, 0.962697,
		0.629659, 0.738987, 0.239640,
		-0.734651, 0.666709, -0.125645,
		37.534946, 37.515057, 44.464787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070274, 37.562580, 45.120502>,  <38.049202, 37.048363, 44.552738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070274, 37.562580, 45.120502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698357, 37.596172, 44.977154>,  <37.475204, 37.616329, 44.891144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698357, 37.596172, 44.977154>,  <38.070274, 37.562580, 45.120502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698357, 37.596172, 44.977154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357860, 0.021574, 0.933526,
		0.086130, 0.996233, 0.009994,
		-0.929794, 0.083982, -0.358370,
		37.419418, 37.621368, 44.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742668, 37.938759, 45.711361>,  <38.070274, 37.562580, 45.120502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742668, 37.938759, 45.711361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442272, 37.800686, 45.486198>,  <37.262035, 37.717842, 45.351101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.442272, 37.800686, 45.486198>,  <37.742668, 37.938759, 45.711361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442272, 37.800686, 45.486198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621718, 0.082464, 0.778888,
		-0.222436, 0.934907, -0.276533,
		-0.750992, -0.345179, -0.562906,
		37.216976, 37.697132, 45.317326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149250, 38.410179, 45.776417>,  <37.742668, 37.938759, 45.711361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149250, 38.410179, 45.776417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026398, 38.040894, 45.684032>,  <36.952686, 37.819321, 45.628601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026398, 38.040894, 45.684032>,  <37.149250, 38.410179, 45.776417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026398, 38.040894, 45.684032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709262, 0.060246, 0.702366,
		-0.634521, 0.379530, -0.673305,
		-0.307133, -0.923216, -0.230958,
		36.934258, 37.763927, 45.614746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444225, 38.436012, 45.746849>,  <37.149250, 38.410179, 45.776417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444225, 38.436012, 45.746849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537239, 38.052898, 45.814461>,  <36.593048, 37.823029, 45.855030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.537239, 38.052898, 45.814461>,  <36.444225, 38.436012, 45.746849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537239, 38.052898, 45.814461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757867, -0.069516, 0.648695,
		-0.609562, -0.278948, -0.742039,
		0.232536, -0.957787, 0.169031,
		36.606998, 37.765564, 45.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.387093, 37.754135, 45.595169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716957, 37.590801, 45.751732>,  <35.914875, 37.492802, 45.845669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716957, 37.590801, 45.751732>,  <35.387093, 37.754135, 45.595169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716957, 37.590801, 45.751732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526303, -0.300441, 0.795450,
		-0.207215, -0.861974, -0.462669,
		0.824661, -0.408334, 0.391404,
		35.964355, 37.468300, 45.869152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080750, 37.164539, 45.860367>,  <35.387093, 37.754135, 45.595169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080750, 37.164539, 45.860367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427673, 37.243793, 46.043018>,  <35.635830, 37.291344, 46.152611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427673, 37.243793, 46.043018>,  <35.080750, 37.164539, 45.860367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427673, 37.243793, 46.043018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404416, -0.254347, 0.878496,
		0.290201, -0.946600, -0.140470,
		0.867313, 0.198132, 0.456631,
		35.687866, 37.303234, 46.180008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855869, 36.959045, 46.464924>,  <35.080750, 37.164539, 45.860367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855869, 36.959045, 46.464924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233231, 37.057224, 46.554131>,  <35.459648, 37.116131, 46.607655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233231, 37.057224, 46.554131>,  <34.855869, 36.959045, 46.464924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233231, 37.057224, 46.554131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199160, -0.118406, 0.972787,
		0.265177, -0.962151, -0.062821,
		0.943407, 0.245449, 0.223021,
		35.516254, 37.130859, 46.621037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148937, 36.361481, 46.911762>,  <34.855869, 36.959045, 46.464924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148937, 36.361481, 46.911762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333431, 36.708511, 46.986141>,  <35.444130, 36.916729, 47.030769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333431, 36.708511, 46.986141>,  <35.148937, 36.361481, 46.911762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333431, 36.708511, 46.986141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003924, -0.207577, 0.978211,
		0.887267, -0.451918, -0.092338,
		0.461239, 0.867572, 0.185949,
		35.471802, 36.968784, 47.041927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673565, 36.185085, 47.293900>,  <35.148937, 36.361481, 46.911762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673565, 36.185085, 47.293900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620365, 36.573898, 47.371315>,  <35.588444, 36.807186, 47.417767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620365, 36.573898, 47.371315>,  <35.673565, 36.185085, 47.293900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620365, 36.573898, 47.371315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166771, -0.214441, 0.962394,
		0.976984, 0.095725, 0.190629,
		-0.133004, 0.972035, 0.193541,
		35.580463, 36.865509, 47.429379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133926, 36.382252, 47.918491>,  <35.673565, 36.185085, 47.293900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133926, 36.382252, 47.918491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.843349, 36.654766, 47.882420>,  <35.669003, 36.818275, 47.860775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.843349, 36.654766, 47.882420>,  <36.133926, 36.382252, 47.918491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843349, 36.654766, 47.882420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208310, -0.093243, 0.973608,
		0.654894, 0.726057, 0.209654,
		-0.726444, 0.681283, -0.090181,
		35.625416, 36.859150, 47.855366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218960, 36.932602, 48.475819>,  <36.133926, 36.382252, 47.918491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218960, 36.932602, 48.475819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.834103, 36.993423, 48.385342>,  <35.603188, 37.029919, 48.331055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.834103, 36.993423, 48.385342>,  <36.218960, 36.932602, 48.475819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834103, 36.993423, 48.385342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214984, 0.086744, 0.972758,
		0.167537, 0.984558, -0.050770,
		-0.962140, 0.152058, -0.226197,
		35.545460, 37.039040, 48.317482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942810, 37.544968, 48.852566>,  <36.218960, 36.932602, 48.475819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942810, 37.544968, 48.852566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633251, 37.315891, 48.744408>,  <35.447517, 37.178448, 48.679512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633251, 37.315891, 48.744408>,  <35.942810, 37.544968, 48.852566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633251, 37.315891, 48.744408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273527, -0.082832, 0.958291,
		-0.571199, 0.815578, -0.092542,
		-0.773896, -0.572688, -0.270397,
		35.401081, 37.144085, 48.663288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322220, 37.889732, 49.133556>,  <35.942810, 37.544968, 48.852566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322220, 37.889732, 49.133556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220905, 37.511333, 49.052631>,  <35.160118, 37.284294, 49.004074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220905, 37.511333, 49.052631>,  <35.322220, 37.889732, 49.133556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220905, 37.511333, 49.052631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457878, -0.066994, 0.886487,
		-0.852170, 0.317172, -0.416184,
		-0.253287, -0.945999, -0.202316,
		35.144920, 37.227535, 48.991936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608192, 37.884590, 49.375000>,  <35.322220, 37.889732, 49.133556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608192, 37.884590, 49.375000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728119, 37.504421, 49.342010>,  <34.800076, 37.276318, 49.322216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728119, 37.504421, 49.342010>,  <34.608192, 37.884590, 49.375000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728119, 37.504421, 49.342010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418606, -0.208747, 0.883852,
		-0.857252, -0.230467, -0.460439,
		0.299813, -0.950426, -0.082474,
		34.818062, 37.219292, 49.317268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041794, 37.373058, 49.501286>,  <34.608192, 37.884590, 49.375000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041794, 37.373058, 49.501286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394638, 37.229481, 49.623291>,  <34.606346, 37.143333, 49.696495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.394638, 37.229481, 49.623291>,  <34.041794, 37.373058, 49.501286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394638, 37.229481, 49.623291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336984, -0.028451, 0.941080,
		-0.329115, -0.932926, -0.146055,
		0.882114, -0.358942, 0.305017,
		34.659271, 37.121799, 49.714798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819305, 36.926697, 50.068661>,  <34.041794, 37.373058, 49.501286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819305, 36.926697, 50.068661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213791, 36.971313, 50.117550>,  <34.450481, 36.998081, 50.146885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.213791, 36.971313, 50.117550>,  <33.819305, 36.926697, 50.068661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213791, 36.971313, 50.117550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103586, -0.159869, 0.981688,
		0.129036, -0.980817, -0.146111,
		0.986215, 0.111538, 0.122227,
		34.509655, 37.004776, 50.154217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897125, 36.523575, 50.668171>,  <33.819305, 36.926697, 50.068661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897125, 36.523575, 50.668171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271355, 36.648720, 50.602673>,  <34.495892, 36.723808, 50.563374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271355, 36.648720, 50.602673>,  <33.897125, 36.523575, 50.668171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271355, 36.648720, 50.602673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247569, -0.250489, 0.935930,
		0.251802, -0.916172, -0.311807,
		0.935578, 0.312863, -0.163742,
		34.552029, 36.742580, 50.553551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289371, 36.058941, 50.909050>,  <33.897125, 36.523575, 50.668171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289371, 36.058941, 50.909050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548462, 36.363686, 50.910587>,  <34.703915, 36.546532, 50.911510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548462, 36.363686, 50.910587>,  <34.289371, 36.058941, 50.909050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548462, 36.363686, 50.910587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358472, -0.309208, 0.880845,
		0.672270, -0.569171, -0.473389,
		0.647727, 0.761863, 0.003839,
		34.742779, 36.592243, 50.911739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836575, 35.731716, 51.188747>,  <34.289371, 36.058941, 50.909050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836575, 35.731716, 51.188747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884720, 36.124763, 51.245277>,  <34.913609, 36.360592, 51.279194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884720, 36.124763, 51.245277>,  <34.836575, 35.731716, 51.188747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884720, 36.124763, 51.245277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375392, -0.176842, 0.909839,
		0.919017, -0.056460, -0.390153,
		0.120365, 0.982619, 0.141326,
		34.920830, 36.419548, 51.287674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484215, 35.850266, 51.445183>,  <34.836575, 35.731716, 51.188747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484215, 35.850266, 51.445183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261200, 36.156879, 51.572666>,  <35.127392, 36.340847, 51.649158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261200, 36.156879, 51.572666>,  <35.484215, 35.850266, 51.445183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261200, 36.156879, 51.572666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288549, -0.181042, 0.940193,
		0.778391, 0.616156, -0.120245,
		-0.557537, 0.766535, 0.318713,
		35.093941, 36.386841, 51.668282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043785, 36.193291, 51.885174>,  <35.484215, 35.850266, 51.445183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043785, 36.193291, 51.885174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680149, 36.325657, 51.986408>,  <35.461967, 36.405079, 52.047150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680149, 36.325657, 51.986408>,  <36.043785, 36.193291, 51.885174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680149, 36.325657, 51.986408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219862, -0.134911, 0.966157,
		0.353863, 0.933966, 0.049890,
		-0.909088, 0.330918, 0.253083,
		35.407421, 36.424931, 52.062332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238350, 36.647785, 52.445221>,  <36.043785, 36.193291, 51.885174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238350, 36.647785, 52.445221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855194, 36.533409, 52.455746>,  <35.625301, 36.464783, 52.462063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855194, 36.533409, 52.455746>,  <36.238350, 36.647785, 52.445221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855194, 36.533409, 52.455746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081734, -0.183658, 0.979586,
		-0.275268, 0.940484, 0.199294,
		-0.957887, -0.285938, 0.026315,
		35.567829, 36.447628, 52.463638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004375, 36.963913, 53.045403>,  <36.238350, 36.647785, 52.445221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004375, 36.963913, 53.045403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710201, 36.699680, 52.985046>,  <35.533695, 36.541142, 52.948833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.710201, 36.699680, 52.985046>,  <36.004375, 36.963913, 53.045403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710201, 36.699680, 52.985046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092830, -0.318808, 0.943262,
		-0.671203, 0.679705, 0.295785,
		-0.735439, -0.660578, -0.150888,
		35.489571, 36.501507, 52.939781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587029, 37.081593, 53.548683>,  <36.004375, 36.963913, 53.045403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587029, 37.081593, 53.548683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492855, 36.707355, 53.443432>,  <35.436352, 36.482815, 53.380283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.492855, 36.707355, 53.443432>,  <35.587029, 37.081593, 53.548683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492855, 36.707355, 53.443432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062354, -0.255638, 0.964760,
		-0.969887, 0.243547, 0.001848,
		-0.235437, -0.935593, -0.263126,
		35.422222, 36.426678, 53.364494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226364, 36.888103, 54.033638>,  <35.587029, 37.081593, 53.548683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226364, 36.888103, 54.033638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326637, 36.533005, 53.879200>,  <35.386799, 36.319946, 53.786537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326637, 36.533005, 53.879200>,  <35.226364, 36.888103, 54.033638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326637, 36.533005, 53.879200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092327, -0.375088, 0.922380,
		-0.963657, -0.266869, -0.012064,
		0.250680, -0.887744, -0.386096,
		35.401840, 36.266682, 53.763371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841438, 36.372967, 54.415932>,  <35.226364, 36.888103, 54.033638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841438, 36.372967, 54.415932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137695, 36.168381, 54.241642>,  <35.315449, 36.045631, 54.137070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137695, 36.168381, 54.241642>,  <34.841438, 36.372967, 54.415932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137695, 36.168381, 54.241642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097749, -0.559570, 0.822999,
		-0.664749, -0.652141, -0.364447,
		0.740644, -0.511463, -0.435720,
		35.359890, 36.014942, 54.110928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708164, 35.624683, 54.502216>,  <34.841438, 36.372967, 54.415932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708164, 35.624683, 54.502216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079464, 35.769032, 54.466179>,  <35.302246, 35.855640, 54.444557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079464, 35.769032, 54.466179>,  <34.708164, 35.624683, 54.502216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079464, 35.769032, 54.466179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287313, -0.541839, 0.789850,
		0.236219, -0.759065, -0.606647,
		0.928252, 0.360875, -0.090097,
		35.357941, 35.877293, 54.439152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016441, 35.776596, 54.878975>,  <34.708164, 35.624683, 54.502216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016441, 35.776596, 54.878975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691357, 35.546543, 54.916313>,  <33.496304, 35.408512, 54.938717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.691357, 35.546543, 54.916313>,  <34.016441, 35.776596, 54.878975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691357, 35.546543, 54.916313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016928, -0.136839, -0.990449,
		0.582417, -0.806532, 0.101475,
		-0.812714, -0.575137, 0.093350,
		33.447544, 35.374001, 54.944317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084217, 35.101830, 54.483238>,  <34.016441, 35.776596, 54.878975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084217, 35.101830, 54.483238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698818, 35.199234, 54.527744>,  <33.467579, 35.257679, 54.554447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.698818, 35.199234, 54.527744>,  <34.084217, 35.101830, 54.483238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698818, 35.199234, 54.527744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168426, -0.228234, -0.958928,
		-0.208108, -0.942663, 0.260915,
		-0.963496, 0.243505, 0.111271,
		33.409771, 35.272289, 54.561127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821560, 34.636036, 54.095764>,  <34.084217, 35.101830, 54.483238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821560, 34.636036, 54.095764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540379, 34.919125, 54.124008>,  <33.371670, 35.088978, 54.140953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.540379, 34.919125, 54.124008>,  <33.821560, 34.636036, 54.095764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540379, 34.919125, 54.124008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261164, -0.164508, -0.951173,
		-0.661551, -0.687070, 0.300474,
		-0.702953, 0.707723, 0.070608,
		33.329491, 35.131443, 54.145191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146042, 34.307671, 54.107380>,  <33.821560, 34.636036, 54.095764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146042, 34.307671, 54.107380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119579, 34.681343, 53.967140>,  <33.103703, 34.905548, 53.882996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.119579, 34.681343, 53.967140>,  <33.146042, 34.307671, 54.107380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119579, 34.681343, 53.967140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230004, -0.356184, -0.905666,
		-0.970939, 0.020725, 0.238430,
		-0.066155, 0.934186, -0.350600,
		33.099731, 34.961597, 53.861961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702442, 34.249695, 53.545177>,  <33.146042, 34.307671, 54.107380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702442, 34.249695, 53.545177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.848366, 34.620262, 53.507938>,  <32.935921, 34.842602, 53.485596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.848366, 34.620262, 53.507938>,  <32.702442, 34.249695, 53.545177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848366, 34.620262, 53.507938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113865, -0.054849, -0.991981,
		-0.924093, 0.372486, 0.085477,
		0.364810, 0.926416, -0.093099,
		32.957809, 34.898186, 53.480007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116375, 34.612835, 53.185402>,  <32.702442, 34.249695, 53.545177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116375, 34.612835, 53.185402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.451347, 34.822651, 53.123993>,  <32.652328, 34.948540, 53.087147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.451347, 34.822651, 53.123993>,  <32.116375, 34.612835, 53.185402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451347, 34.822651, 53.123993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193947, 0.022588, -0.980752,
		-0.510980, 0.851083, 0.120649,
		0.837427, 0.524545, -0.153523,
		32.702576, 34.980015, 53.077934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058552, 35.014858, 52.629826>,  <32.116375, 34.612835, 53.185402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058552, 35.014858, 52.629826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458313, 35.028210, 52.633518>,  <32.698170, 35.036221, 52.635735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458313, 35.028210, 52.633518>,  <32.058552, 35.014858, 52.629826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458313, 35.028210, 52.633518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010503, -0.038155, -0.999217,
		-0.032998, 0.998715, -0.038482,
		0.999400, 0.033376, 0.009231,
		32.758133, 35.038223, 52.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241600, 35.547230, 52.138828>,  <32.058552, 35.014858, 52.629826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241600, 35.547230, 52.138828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542660, 35.285519, 52.168350>,  <32.723293, 35.128494, 52.186062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542660, 35.285519, 52.168350>,  <32.241600, 35.547230, 52.138828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542660, 35.285519, 52.168350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155728, 0.067978, -0.985458,
		0.639745, 0.753195, 0.153052,
		0.752646, -0.654276, 0.073805,
		32.768452, 35.089237, 52.190491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745068, 35.904991, 51.793125>,  <32.241600, 35.547230, 52.138828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745068, 35.904991, 51.793125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835709, 35.515438, 51.787483>,  <32.890095, 35.281704, 51.784100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835709, 35.515438, 51.787483>,  <32.745068, 35.904991, 51.793125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835709, 35.515438, 51.787483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280162, 0.079043, -0.956693,
		0.932824, 0.212836, 0.290757,
		0.226601, -0.973885, -0.014105,
		32.903690, 35.223274, 51.783253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380310, 35.837097, 51.565361>,  <32.745068, 35.904991, 51.793125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380310, 35.837097, 51.565361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249611, 35.462360, 51.515465>,  <33.171192, 35.237518, 51.485527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249611, 35.462360, 51.515465>,  <33.380310, 35.837097, 51.565361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249611, 35.462360, 51.515465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123803, 0.088421, -0.988359,
		0.936968, -0.338388, 0.087093,
		-0.326748, -0.936843, -0.124741,
		33.151585, 35.181309, 51.478043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901005, 35.422401, 51.108383>,  <33.380310, 35.837097, 51.565361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901005, 35.422401, 51.108383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534931, 35.262371, 51.088882>,  <33.315289, 35.166351, 51.077183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.534931, 35.262371, 51.088882>,  <33.901005, 35.422401, 51.108383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534931, 35.262371, 51.088882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010353, 0.144250, -0.989487,
		0.402907, -0.905056, -0.136157,
		-0.915183, -0.400081, -0.048749,
		33.260376, 35.142345, 51.074257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943279, 34.993340, 50.592083>,  <33.901005, 35.422401, 51.108383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943279, 34.993340, 50.592083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551167, 35.065277, 50.624847>,  <33.315899, 35.108440, 50.644505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551167, 35.065277, 50.624847>,  <33.943279, 34.993340, 50.592083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551167, 35.065277, 50.624847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059946, 0.124331, -0.990428,
		-0.188305, -0.975807, -0.111098,
		-0.980279, 0.179843, 0.081908,
		33.257084, 35.119228, 50.649422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752094, 34.876385, 49.968292>,  <33.943279, 34.993340, 50.592083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752094, 34.876385, 49.968292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418144, 35.058941, 50.091381>,  <33.217773, 35.168476, 50.165234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.418144, 35.058941, 50.091381>,  <33.752094, 34.876385, 49.968292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418144, 35.058941, 50.091381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271138, 0.145545, -0.951473,
		-0.479034, -0.877794, 0.002234,
		-0.834872, 0.456393, 0.307724,
		33.167683, 35.195858, 50.183697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173626, 34.614075, 49.620426>,  <33.752094, 34.876385, 49.968292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173626, 34.614075, 49.620426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058456, 34.981915, 49.727345>,  <32.989353, 35.202618, 49.791496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.058456, 34.981915, 49.727345>,  <33.173626, 34.614075, 49.620426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058456, 34.981915, 49.727345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203381, 0.214027, -0.955420,
		-0.935808, -0.329449, 0.125405,
		-0.287923, 0.919595, 0.267292,
		32.972080, 35.257793, 49.807533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575153, 34.704971, 49.204800>,  <33.173626, 34.614075, 49.620426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575153, 34.704971, 49.204800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.681282, 35.075726, 49.310997>,  <32.744961, 35.298180, 49.374718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.681282, 35.075726, 49.310997>,  <32.575153, 34.704971, 49.204800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681282, 35.075726, 49.310997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065319, 0.292012, -0.954182,
		-0.961945, 0.235824, 0.138020,
		0.265322, 0.926885, 0.265496,
		32.760880, 35.353790, 49.390644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171421, 35.150330, 48.825977>,  <32.575153, 34.704971, 49.204800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171421, 35.150330, 48.825977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469021, 35.392208, 48.939682>,  <32.647579, 35.537334, 49.007904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469021, 35.392208, 48.939682>,  <32.171421, 35.150330, 48.825977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469021, 35.392208, 48.939682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001210, 0.426650, -0.904416,
		-0.668179, 0.672541, 0.318159,
		0.744000, 0.604697, 0.284264,
		32.692223, 35.573616, 49.024960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102879, 35.659405, 48.490158>,  <32.171421, 35.150330, 48.825977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102879, 35.659405, 48.490158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480503, 35.762207, 48.572811>,  <32.707077, 35.823891, 48.622402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.480503, 35.762207, 48.572811>,  <32.102879, 35.659405, 48.490158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480503, 35.762207, 48.572811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131198, 0.282164, -0.950353,
		-0.302554, 0.924300, 0.232661,
		0.944059, 0.257008, 0.206636,
		32.763721, 35.839310, 48.634804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193176, 36.311710, 48.202938>,  <32.102879, 35.659405, 48.490158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193176, 36.311710, 48.202938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570686, 36.186005, 48.243988>,  <32.797192, 36.110580, 48.268616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570686, 36.186005, 48.243988>,  <32.193176, 36.311710, 48.202938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570686, 36.186005, 48.243988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184202, 0.242105, -0.952604,
		0.274528, 0.917944, 0.286380,
		0.943771, -0.314268, 0.102623,
		32.853817, 36.091724, 48.274776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642029, 36.924366, 48.101753>,  <32.193176, 36.311710, 48.202938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642029, 36.924366, 48.101753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.874210, 36.607285, 48.027248>,  <33.013519, 36.417038, 47.982544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.874210, 36.607285, 48.027248>,  <32.642029, 36.924366, 48.101753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874210, 36.607285, 48.027248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297133, 0.419160, -0.857914,
		0.758143, 0.442639, 0.478842,
		0.580457, -0.792702, -0.186261,
		33.048347, 36.369473, 47.971371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375340, 37.115452, 47.934898>,  <32.642029, 36.924366, 48.101753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375340, 37.115452, 47.934898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303314, 36.758869, 47.768585>,  <33.260098, 36.544918, 47.668797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303314, 36.758869, 47.768585>,  <33.375340, 37.115452, 47.934898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303314, 36.758869, 47.768585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259287, 0.364726, -0.894285,
		0.948866, -0.268835, 0.165470,
		-0.180063, -0.891461, -0.415782,
		33.249294, 36.491432, 47.643852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778927, 37.116131, 47.336647>,  <33.375340, 37.115452, 47.934898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778927, 37.116131, 47.336647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511185, 36.826698, 47.269238>,  <33.350540, 36.653038, 47.228790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511185, 36.826698, 47.269238>,  <33.778927, 37.116131, 47.336647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511185, 36.826698, 47.269238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003193, 0.224030, -0.974577,
		0.742938, -0.652873, -0.147645,
		-0.669352, -0.723579, -0.168525,
		33.310379, 36.609623, 47.218681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.161095, 34.135643, 33.186176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.922333, 34.010033, 33.481499>,  <36.779076, 33.934666, 33.658691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.922333, 34.010033, 33.481499>,  <37.161095, 34.135643, 33.186176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922333, 34.010033, 33.481499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602449, 0.432307, 0.670944,
		-0.529869, 0.845280, -0.068860,
		-0.596904, -0.314028, 0.738304,
		36.743263, 33.915825, 33.702991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038624, 34.727509, 33.545708>,  <37.161095, 34.135643, 33.186176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038624, 34.727509, 33.545708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017014, 34.408043, 33.785446>,  <37.004047, 34.216366, 33.929291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.017014, 34.408043, 33.785446>,  <37.038624, 34.727509, 33.545708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017014, 34.408043, 33.785446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636374, 0.435002, 0.637026,
		-0.769486, 0.415828, 0.484745,
		-0.054029, -0.798662, 0.599350,
		37.000805, 34.168446, 33.965252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951870, 35.062820, 34.238338>,  <37.038624, 34.727509, 33.545708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951870, 35.062820, 34.238338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069054, 34.685555, 34.301094>,  <37.139362, 34.459194, 34.338749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069054, 34.685555, 34.301094>,  <36.951870, 35.062820, 34.238338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069054, 34.685555, 34.301094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668751, 0.319402, 0.671382,
		-0.683335, -0.091767, 0.724315,
		0.292958, -0.943165, 0.156889,
		37.156940, 34.402603, 34.348160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062046, 34.988052, 34.987827>,  <36.951870, 35.062820, 34.238338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062046, 34.988052, 34.987827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287777, 34.710155, 34.809448>,  <37.423214, 34.543419, 34.702419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287777, 34.710155, 34.809448>,  <37.062046, 34.988052, 34.987827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287777, 34.710155, 34.809448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765880, 0.238934, 0.596941,
		-0.308169, -0.678411, 0.666926,
		0.564323, -0.694743, -0.445949,
		37.457073, 34.501732, 34.675663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380718, 34.603859, 35.541126>,  <37.062046, 34.988052, 34.987827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380718, 34.603859, 35.541126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603764, 34.525589, 35.218441>,  <37.737591, 34.478626, 35.024830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603764, 34.525589, 35.218441>,  <37.380718, 34.603859, 35.541126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603764, 34.525589, 35.218441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823296, 0.254550, 0.507335,
		0.106074, -0.947056, 0.303039,
		0.557613, -0.195675, -0.806708,
		37.771046, 34.466885, 34.976429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871284, 34.295982, 35.850979>,  <37.380718, 34.603859, 35.541126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871284, 34.295982, 35.850979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016285, 34.383450, 35.488590>,  <38.103287, 34.435928, 35.271156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016285, 34.383450, 35.488590>,  <37.871284, 34.295982, 35.850979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016285, 34.383450, 35.488590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865416, 0.281807, 0.414294,
		0.345902, -0.934221, -0.087085,
		0.362501, 0.218670, -0.905967,
		38.125034, 34.449051, 35.216801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510845, 33.862663, 35.686562>,  <37.871284, 34.295982, 35.850979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510845, 33.862663, 35.686562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512707, 34.208405, 35.485413>,  <38.513824, 34.415848, 35.364723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512707, 34.208405, 35.485413>,  <38.510845, 33.862663, 35.686562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512707, 34.208405, 35.485413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854616, 0.257679, 0.450813,
		0.519239, -0.431857, -0.737489,
		0.004651, 0.864350, -0.502869,
		38.514103, 34.467709, 35.334553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146820, 33.919651, 35.478130>,  <38.510845, 33.862663, 35.686562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146820, 33.919651, 35.478130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000446, 34.291870, 35.472958>,  <38.912621, 34.515202, 35.469856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000446, 34.291870, 35.472958>,  <39.146820, 33.919651, 35.478130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000446, 34.291870, 35.472958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867159, 0.345984, 0.358232,
		0.337826, 0.119879, -0.933543,
		-0.365935, 0.930550, -0.012928,
		38.890667, 34.571033, 35.469078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781784, 34.219967, 35.225994>,  <39.146820, 33.919651, 35.478130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781784, 34.219967, 35.225994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560341, 34.524277, 35.361492>,  <39.427475, 34.706863, 35.442791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560341, 34.524277, 35.361492>,  <39.781784, 34.219967, 35.225994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560341, 34.524277, 35.361492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808849, 0.394385, 0.436148,
		0.198211, 0.515449, -0.833681,
		-0.553603, 0.760771, 0.338749,
		39.394260, 34.752506, 35.463116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138241, 34.816933, 35.121983>,  <39.781784, 34.219967, 35.225994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138241, 34.816933, 35.121983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872612, 34.966167, 35.381153>,  <39.713234, 35.055710, 35.536655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872612, 34.966167, 35.381153>,  <40.138241, 34.816933, 35.121983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872612, 34.966167, 35.381153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709248, 0.588572, 0.388008,
		-0.236593, 0.717209, -0.655466,
		-0.664072, 0.373088, 0.647931,
		39.673389, 35.078094, 35.575531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131531, 35.600571, 34.996426>,  <40.138241, 34.816933, 35.121983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131531, 35.600571, 34.996426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003990, 35.529930, 35.368908>,  <39.927464, 35.487545, 35.592396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.003990, 35.529930, 35.368908>,  <40.131531, 35.600571, 34.996426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003990, 35.529930, 35.368908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749521, 0.554378, 0.361777,
		-0.580130, 0.813313, -0.044402,
		-0.318853, -0.176597, 0.931207,
		39.908333, 35.476952, 35.648270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371376, 36.207287, 35.318371>,  <40.131531, 35.600571, 34.996426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371376, 36.207287, 35.318371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295280, 35.967476, 35.629337>,  <40.249622, 35.823589, 35.815918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295280, 35.967476, 35.629337>,  <40.371376, 36.207287, 35.318371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295280, 35.967476, 35.629337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757118, 0.414503, 0.504934,
		-0.624964, 0.684655, 0.375057,
		-0.190243, -0.599528, 0.777415,
		40.238209, 35.787617, 35.862560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410351, 36.592602, 35.854572>,  <40.371376, 36.207287, 35.318371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410351, 36.592602, 35.854572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.446705, 36.227169, 36.013119>,  <40.468517, 36.007908, 36.108246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.446705, 36.227169, 36.013119>,  <40.410351, 36.592602, 35.854572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446705, 36.227169, 36.013119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787948, 0.309362, 0.532385,
		-0.608998, 0.263928, 0.747972,
		0.090883, -0.913585, 0.396363,
		40.473969, 35.953094, 36.132027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466301, 36.691990, 36.583736>,  <40.410351, 36.592602, 35.854572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466301, 36.691990, 36.583736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.635754, 36.335075, 36.521294>,  <40.737423, 36.120926, 36.483826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.635754, 36.335075, 36.521294>,  <40.466301, 36.691990, 36.583736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635754, 36.335075, 36.521294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794383, 0.283128, 0.537395,
		-0.435309, -0.351667, 0.828756,
		0.423628, -0.892283, -0.156110,
		40.762840, 36.067390, 36.474461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740925, 36.582638, 37.217785>,  <40.466301, 36.691990, 36.583736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740925, 36.582638, 37.217785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917797, 36.302746, 36.993340>,  <41.023918, 36.134811, 36.858673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917797, 36.302746, 36.993340>,  <40.740925, 36.582638, 37.217785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917797, 36.302746, 36.993340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862937, 0.161300, 0.478876,
		-0.244579, -0.695955, 0.675150,
		0.442178, -0.699735, -0.561115,
		41.050449, 36.092827, 36.825005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209373, 36.243412, 37.702820>,  <40.740925, 36.582638, 37.217785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209373, 36.243412, 37.702820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334007, 36.158180, 37.332413>,  <41.408787, 36.107040, 37.110168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.334007, 36.158180, 37.332413>,  <41.209373, 36.243412, 37.702820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334007, 36.158180, 37.332413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950119, 0.083999, 0.300361,
		0.013785, -0.973418, 0.228621,
		0.311581, -0.213077, -0.926021,
		41.427483, 36.094257, 37.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764286, 35.857285, 37.827370>,  <41.209373, 36.243412, 37.702820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764286, 35.857285, 37.827370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797825, 36.005890, 37.457516>,  <41.817947, 36.095051, 37.235603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797825, 36.005890, 37.457516>,  <41.764286, 35.857285, 37.827370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797825, 36.005890, 37.457516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971647, 0.175376, 0.158573,
		0.221070, -0.911715, -0.346271,
		0.083846, 0.371509, -0.924636,
		41.822979, 36.117344, 37.180126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476540, 35.684856, 37.715111>,  <41.764286, 35.857285, 37.827370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476540, 35.684856, 37.715111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376072, 35.975639, 37.459469>,  <42.315792, 36.150108, 37.306084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376072, 35.975639, 37.459469>,  <42.476540, 35.684856, 37.715111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376072, 35.975639, 37.459469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885904, 0.438668, 0.150811,
		0.389986, -0.528304, -0.754192,
		-0.251166, 0.726956, -0.639102,
		42.300724, 36.193726, 37.267738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986046, 35.652988, 37.094776>,  <42.476540, 35.684856, 37.715111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986046, 35.652988, 37.094776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838432, 36.019722, 37.155750>,  <42.749863, 36.239761, 37.192337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.838432, 36.019722, 37.155750>,  <42.986046, 35.652988, 37.094776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838432, 36.019722, 37.155750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929359, 0.365827, 0.049623,
		-0.010270, 0.159981, -0.987067,
		-0.369035, 0.916830, 0.152437,
		42.727722, 36.294769, 37.201481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471169, 36.042583, 36.843414>,  <42.986046, 35.652988, 37.094776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471169, 36.042583, 36.843414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249531, 36.310673, 37.040913>,  <43.116550, 36.471527, 37.159412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249531, 36.310673, 37.040913>,  <43.471169, 36.042583, 36.843414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249531, 36.310673, 37.040913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823944, 0.526144, 0.210450,
		-0.118734, 0.523429, -0.843756,
		-0.554093, 0.670220, 0.493748,
		43.083302, 36.511738, 37.189037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698730, 36.579144, 36.682854>,  <43.471169, 36.042583, 36.843414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698730, 36.579144, 36.682854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523708, 36.661476, 37.032982>,  <43.418697, 36.710876, 37.243057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.523708, 36.661476, 37.032982>,  <43.698730, 36.579144, 36.682854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523708, 36.661476, 37.032982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827563, 0.472917, 0.302472,
		-0.351693, 0.856727, -0.377267,
		-0.437552, 0.205835, 0.875317,
		43.392445, 36.723228, 37.295578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160915, 36.255280, 36.166630>,  <43.698730, 36.579144, 36.682854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160915, 36.255280, 36.166630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345737, 36.111744, 35.842224>,  <44.456631, 36.025623, 35.647583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.345737, 36.111744, 35.842224>,  <44.160915, 36.255280, 36.166630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345737, 36.111744, 35.842224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882489, -0.095440, -0.460549,
		0.087861, 0.928506, -0.360773,
		0.462055, -0.358842, -0.811010,
		44.484352, 36.004093, 35.598923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828121, 36.615932, 35.611084>,  <44.160915, 36.255280, 36.166630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828121, 36.615932, 35.611084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025204, 36.323040, 35.423004>,  <44.143452, 36.147305, 35.310158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025204, 36.323040, 35.423004>,  <43.828121, 36.615932, 35.611084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025204, 36.323040, 35.423004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759616, -0.098302, -0.642899,
		0.424527, 0.673928, -0.604646,
		0.492706, -0.732227, -0.470195,
		44.173016, 36.103371, 35.281944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672943, 36.676613, 34.859596>,  <43.828121, 36.615932, 35.611084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672943, 36.676613, 34.859596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821342, 36.307728, 34.903202>,  <43.910381, 36.086395, 34.929363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821342, 36.307728, 34.903202>,  <43.672943, 36.676613, 34.859596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821342, 36.307728, 34.903202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738107, -0.364076, -0.568020,
		0.563525, 0.130270, -0.815763,
		0.370996, -0.922214, 0.109013,
		43.932640, 36.031063, 34.935905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765762, 36.455509, 34.246021>,  <43.672943, 36.676613, 34.859596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765762, 36.455509, 34.246021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744980, 36.117222, 34.458462>,  <43.732510, 35.914249, 34.585926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744980, 36.117222, 34.458462>,  <43.765762, 36.455509, 34.246021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744980, 36.117222, 34.458462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762598, -0.309772, -0.567879,
		0.644783, -0.434522, -0.628845,
		-0.051957, -0.845714, 0.531101,
		43.729393, 35.863506, 34.617790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667534, 36.045845, 33.721252>,  <43.765762, 36.455509, 34.246021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667534, 36.045845, 33.721252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569946, 35.835247, 34.047020>,  <43.511395, 35.708889, 34.242481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.569946, 35.835247, 34.047020>,  <43.667534, 36.045845, 33.721252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569946, 35.835247, 34.047020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789506, -0.379854, -0.482070,
		0.563169, -0.760601, -0.322997,
		-0.243972, -0.526494, 0.814421,
		43.496754, 35.677299, 34.291348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586956, 35.417648, 33.437515>,  <43.667534, 36.045845, 33.721252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586956, 35.417648, 33.437515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387543, 35.383675, 33.782597>,  <43.267895, 35.363289, 33.989643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387543, 35.383675, 33.782597>,  <43.586956, 35.417648, 33.437515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387543, 35.383675, 33.782597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766869, -0.420822, -0.484583,
		0.404203, -0.903158, 0.144657,
		-0.498530, -0.084937, 0.862701,
		43.237984, 35.358192, 34.041409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369972, 34.772697, 33.348015>,  <43.586956, 35.417648, 33.437515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369972, 34.772697, 33.348015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133488, 34.906647, 33.641495>,  <42.991596, 34.987019, 33.817585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133488, 34.906647, 33.641495>,  <43.369972, 34.772697, 33.348015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133488, 34.906647, 33.641495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756765, -0.544901, -0.361094,
		0.278874, -0.768726, 0.575577,
		-0.591215, 0.334877, 0.733704,
		42.956123, 35.007111, 33.861607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187134, 34.199062, 33.758785>,  <43.369972, 34.772697, 33.348015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187134, 34.199062, 33.758785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901440, 34.476902, 33.793201>,  <42.730022, 34.643604, 33.813850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901440, 34.476902, 33.793201>,  <43.187134, 34.199062, 33.758785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901440, 34.476902, 33.793201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684279, -0.667169, -0.294361,
		-0.147061, -0.269117, 0.951814,
		-0.714238, 0.694595, 0.086037,
		42.687168, 34.685280, 33.819012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757149, 33.865017, 34.040569>,  <43.187134, 34.199062, 33.758785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757149, 33.865017, 34.040569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562004, 34.186600, 33.904545>,  <42.444916, 34.379551, 33.822929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562004, 34.186600, 33.904545>,  <42.757149, 33.865017, 34.040569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562004, 34.186600, 33.904545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763872, -0.581732, -0.279441,
		-0.422482, 0.123432, 0.897927,
		-0.487862, 0.803960, -0.340058,
		42.415646, 34.427788, 33.802528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139744, 33.727154, 34.220551>,  <42.757149, 33.865017, 34.040569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139744, 33.727154, 34.220551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078953, 34.012177, 33.946568>,  <42.042477, 34.183189, 33.782177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078953, 34.012177, 33.946568>,  <42.139744, 33.727154, 34.220551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078953, 34.012177, 33.946568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823392, -0.474625, -0.311058,
		-0.546744, 0.516714, 0.658845,
		-0.151977, 0.712557, -0.684957,
		42.033360, 34.225945, 33.741081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507568, 34.078918, 34.230095>,  <42.139744, 33.727154, 34.220551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507568, 34.078918, 34.230095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621662, 34.134308, 33.850735>,  <41.690117, 34.167542, 33.623119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621662, 34.134308, 33.850735>,  <41.507568, 34.078918, 34.230095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621662, 34.134308, 33.850735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887003, -0.336761, -0.315939,
		-0.363135, 0.931352, 0.026772,
		0.285235, 0.138476, -0.948402,
		41.707233, 34.175850, 33.566216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936428, 34.320633, 34.022717>,  <41.507568, 34.078918, 34.230095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936428, 34.320633, 34.022717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.127739, 34.219215, 33.686394>,  <41.242527, 34.158363, 33.484600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.127739, 34.219215, 33.686394>,  <40.936428, 34.320633, 34.022717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127739, 34.219215, 33.686394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839078, -0.414537, -0.352289,
		-0.259225, 0.873998, -0.411009,
		0.478278, -0.253547, -0.840812,
		41.271221, 34.143150, 33.434151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528614, 34.573799, 33.416607>,  <40.936428, 34.320633, 34.022717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528614, 34.573799, 33.416607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.758350, 34.269409, 33.295914>,  <40.896194, 34.086773, 33.223499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.758350, 34.269409, 33.295914>,  <40.528614, 34.573799, 33.416607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758350, 34.269409, 33.295914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814306, -0.568861, -0.115341,
		-0.083870, 0.311946, -0.946391,
		0.574345, -0.760978, -0.301730,
		40.930653, 34.041115, 33.205395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209675, 34.351532, 32.865234>,  <40.528614, 34.573799, 33.416607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209675, 34.351532, 32.865234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.464264, 34.049057, 32.925999>,  <40.617020, 33.867573, 32.962460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.464264, 34.049057, 32.925999>,  <40.209675, 34.351532, 32.865234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464264, 34.049057, 32.925999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715090, -0.652344, -0.251183,
		0.289043, 0.051239, -0.955944,
		0.636475, -0.756189, 0.151915,
		40.655205, 33.822201, 32.971573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252781, 33.886730, 32.272118>,  <40.209675, 34.351532, 32.865234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252781, 33.886730, 32.272118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.358326, 33.679466, 32.597542>,  <40.421654, 33.555107, 32.792797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.358326, 33.679466, 32.597542>,  <40.252781, 33.886730, 32.272118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358326, 33.679466, 32.597542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746352, -0.643977, -0.168085,
		0.611010, -0.562851, -0.556656,
		0.263867, -0.518163, 0.813561,
		40.437485, 33.524017, 32.841610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334641, 33.150543, 32.096878>,  <40.252781, 33.886730, 32.272118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334641, 33.150543, 32.096878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.292625, 33.141731, 32.494568>,  <40.267418, 33.136444, 32.733181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.292625, 33.141731, 32.494568>,  <40.334641, 33.150543, 32.096878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292625, 33.141731, 32.494568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710529, -0.697820, -0.090524,
		0.695785, -0.715934, 0.057643,
		-0.105033, -0.022028, 0.994225,
		40.261116, 33.135124, 32.792835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043644, 32.476749, 32.195507>,  <40.334641, 33.150543, 32.096878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043644, 32.476749, 32.195507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996601, 32.647038, 32.554379>,  <39.968376, 32.749210, 32.769703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.996601, 32.647038, 32.554379>,  <40.043644, 32.476749, 32.195507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996601, 32.647038, 32.554379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849578, -0.510920, 0.131065,
		0.514184, -0.746810, 0.421770,
		-0.117610, 0.425718, 0.897180,
		39.961319, 32.774754, 32.823532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851295, 31.903044, 32.531456>,  <40.043644, 32.476749, 32.195507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851295, 31.903044, 32.531456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733936, 32.229225, 32.731037>,  <39.663521, 32.424934, 32.850788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.733936, 32.229225, 32.731037>,  <39.851295, 31.903044, 32.531456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733936, 32.229225, 32.731037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914573, -0.391384, 0.101857,
		0.278343, -0.426448, 0.860620,
		-0.293397, 0.815451, 0.498957,
		39.645916, 32.473862, 32.880726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491634, 31.631313, 33.126804>,  <39.851295, 31.903044, 32.531456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491634, 31.631313, 33.126804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363510, 32.006454, 33.073391>,  <39.286636, 32.231541, 33.041344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363510, 32.006454, 33.073391>,  <39.491634, 31.631313, 33.126804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363510, 32.006454, 33.073391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947080, -0.313916, 0.067050,
		0.020964, 0.147946, 0.988773,
		-0.320311, 0.937853, -0.133536,
		39.267418, 32.287811, 33.033329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865761, 31.625507, 33.458652>,  <39.491634, 31.631313, 33.126804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865761, 31.625507, 33.458652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855156, 31.946749, 33.220554>,  <38.848793, 32.139492, 33.077694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855156, 31.946749, 33.220554>,  <38.865761, 31.625507, 33.458652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855156, 31.946749, 33.220554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976976, -0.146918, -0.154703,
		-0.211695, 0.577443, 0.788508,
		-0.026514, 0.803103, -0.595250,
		38.847202, 32.187679, 33.041981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329136, 32.074078, 33.775703>,  <38.865761, 31.625507, 33.458652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329136, 32.074078, 33.775703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379967, 32.167652, 33.390137>,  <38.410465, 32.223797, 33.158798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.379967, 32.167652, 33.390137>,  <38.329136, 32.074078, 33.775703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379967, 32.167652, 33.390137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948005, -0.257227, -0.187403,
		-0.291785, 0.937608, 0.189084,
		0.127073, 0.233934, -0.963913,
		38.418087, 32.237831, 33.100964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.977673, 38.541840, 43.903164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763313, 38.214512, 43.820049>,  <37.634697, 38.018116, 43.770180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763313, 38.214512, 43.820049>,  <37.977673, 38.541840, 43.903164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763313, 38.214512, 43.820049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413829, -0.040074, -0.909472,
		0.735910, -0.573367, 0.360119,
		-0.535893, -0.818318, -0.207785,
		37.602547, 37.969017, 43.757713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247501, 38.156845, 43.416206>,  <37.977673, 38.541840, 43.903164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247501, 38.156845, 43.416206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918015, 37.934010, 43.374004>,  <37.720322, 37.800308, 43.348682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918015, 37.934010, 43.374004>,  <38.247501, 38.156845, 43.416206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918015, 37.934010, 43.374004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255375, -0.198391, -0.946269,
		0.506228, -0.806405, 0.305686,
		-0.823721, -0.557092, -0.105504,
		37.670898, 37.766880, 43.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520947, 37.759991, 42.983208>,  <38.247501, 38.156845, 43.416206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520947, 37.759991, 42.983208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123032, 37.722771, 42.966496>,  <37.884285, 37.700439, 42.956467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123032, 37.722771, 42.966496>,  <38.520947, 37.759991, 42.983208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123032, 37.722771, 42.966496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057623, -0.174708, -0.982933,
		0.084159, -0.980214, 0.179158,
		-0.994785, -0.093046, -0.041780,
		37.824596, 37.694859, 42.953960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478092, 37.098103, 42.615570>,  <38.520947, 37.759991, 42.983208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478092, 37.098103, 42.615570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139946, 37.308052, 42.575840>,  <37.937057, 37.434021, 42.552002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139946, 37.308052, 42.575840>,  <38.478092, 37.098103, 42.615570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139946, 37.308052, 42.575840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093119, -0.038291, -0.994918,
		-0.526005, -0.850321, -0.016505,
		-0.845368, 0.524869, -0.099323,
		37.886337, 37.465511, 42.546043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975132, 36.700588, 42.168064>,  <38.478092, 37.098103, 42.615570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975132, 36.700588, 42.168064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893280, 37.091824, 42.152779>,  <37.844170, 37.326565, 42.143608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893280, 37.091824, 42.152779>,  <37.975132, 36.700588, 42.168064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893280, 37.091824, 42.152779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015313, -0.035836, -0.999240,
		-0.978719, -0.205061, -0.007644,
		-0.204631, 0.978093, -0.038214,
		37.831890, 37.385250, 42.141315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388062, 36.815212, 41.684345>,  <37.975132, 36.700588, 42.168064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388062, 36.815212, 41.684345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548500, 37.180222, 41.716408>,  <37.644764, 37.399227, 41.735645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548500, 37.180222, 41.716408>,  <37.388062, 36.815212, 41.684345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548500, 37.180222, 41.716408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238273, 0.188419, -0.952746,
		-0.884505, 0.363041, 0.293003,
		0.401094, 0.912524, 0.080154,
		37.668827, 37.453979, 41.740456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077770, 37.083225, 41.199680>,  <37.388062, 36.815212, 41.684345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077770, 37.083225, 41.199680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375504, 37.341465, 41.267990>,  <37.554146, 37.496410, 41.308975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375504, 37.341465, 41.267990>,  <37.077770, 37.083225, 41.199680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375504, 37.341465, 41.267990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048514, 0.307330, -0.950365,
		-0.666041, 0.699106, 0.260077,
		0.744336, 0.645599, 0.170778,
		37.598804, 37.535145, 41.319225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886143, 37.776527, 40.925076>,  <37.077770, 37.083225, 41.199680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886143, 37.776527, 40.925076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284908, 37.779282, 40.956375>,  <37.524166, 37.780933, 40.975155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284908, 37.779282, 40.956375>,  <36.886143, 37.776527, 40.925076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284908, 37.779282, 40.956375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071559, 0.331372, -0.940783,
		-0.032406, 0.943475, 0.329855,
		0.996910, 0.006883, 0.078253,
		37.583981, 37.781345, 40.979851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060635, 38.370239, 40.622437>,  <36.886143, 37.776527, 40.925076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060635, 38.370239, 40.622437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403111, 38.164139, 40.607147>,  <37.608597, 38.040478, 40.597973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403111, 38.164139, 40.607147>,  <37.060635, 38.370239, 40.622437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403111, 38.164139, 40.607147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097589, 0.233917, -0.967346,
		0.507369, 0.824498, 0.250559,
		0.856185, -0.515253, -0.038220,
		37.659966, 38.009563, 40.595680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664349, 38.867676, 40.305248>,  <37.060635, 38.370239, 40.622437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664349, 38.867676, 40.305248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767273, 38.481899, 40.281097>,  <37.829029, 38.250435, 40.266605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767273, 38.481899, 40.281097>,  <37.664349, 38.867676, 40.305248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767273, 38.481899, 40.281097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078544, 0.083148, -0.993437,
		0.963131, 0.250882, 0.097146,
		0.257313, -0.964440, -0.060377,
		37.844467, 38.192566, 40.262985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177044, 38.880367, 39.835934>,  <37.664349, 38.867676, 40.305248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177044, 38.880367, 39.835934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065880, 38.496140, 39.839260>,  <37.999184, 38.265602, 39.841255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065880, 38.496140, 39.839260>,  <38.177044, 38.880367, 39.835934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065880, 38.496140, 39.839260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017055, -0.013588, -0.999762,
		0.960456, -0.277700, 0.020159,
		-0.277908, -0.960572, 0.008314,
		37.982506, 38.207970, 39.841755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707897, 38.588428, 39.299564>,  <38.177044, 38.880367, 39.835934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707897, 38.588428, 39.299564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395885, 38.343060, 39.348988>,  <38.208679, 38.195839, 39.378639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395885, 38.343060, 39.348988>,  <38.707897, 38.588428, 39.299564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395885, 38.343060, 39.348988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161812, 0.006999, -0.986797,
		0.604462, -0.789721, -0.104719,
		-0.780028, -0.613425, 0.123556,
		38.161877, 38.159031, 39.386055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791756, 37.976654, 38.947086>,  <38.707897, 38.588428, 39.299564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791756, 37.976654, 38.947086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402706, 38.057152, 38.993557>,  <38.169277, 38.105450, 39.021439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402706, 38.057152, 38.993557>,  <38.791756, 37.976654, 38.947086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402706, 38.057152, 38.993557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137016, -0.092886, -0.986204,
		-0.187678, -0.975127, 0.117917,
		-0.972627, 0.201245, 0.116175,
		38.110916, 38.117523, 39.028408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209427, 37.386448, 39.287128>,  <38.791756, 37.976654, 38.947086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209427, 37.386448, 39.287128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303852, 37.009342, 39.192917>,  <39.360508, 36.783081, 39.136391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303852, 37.009342, 39.192917>,  <39.209427, 37.386448, 39.287128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303852, 37.009342, 39.192917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739102, -0.331555, 0.586344,
		-0.630873, 0.035662, -0.775066,
		0.236067, -0.942761, -0.235527,
		39.374672, 36.726513, 39.122257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532639, 37.093235, 39.161350>,  <39.209427, 37.386448, 39.287128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532639, 37.093235, 39.161350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811058, 36.824097, 39.261581>,  <38.978111, 36.662613, 39.321720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811058, 36.824097, 39.261581>,  <38.532639, 37.093235, 39.161350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811058, 36.824097, 39.261581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624589, -0.395303, 0.673516,
		-0.354114, -0.625315, -0.695403,
		0.696054, -0.672843, 0.250582,
		39.019875, 36.622242, 39.336754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225822, 36.524895, 39.033787>,  <38.532639, 37.093235, 39.161350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225822, 36.524895, 39.033787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510685, 36.427292, 39.297089>,  <38.681602, 36.368732, 39.455070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510685, 36.427292, 39.297089>,  <38.225822, 36.524895, 39.033787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510685, 36.427292, 39.297089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677509, -0.484499, 0.553392,
		0.183893, -0.840073, -0.510353,
		0.712156, -0.244004, 0.658253,
		38.724331, 36.354092, 39.494564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093597, 35.798676, 39.197414>,  <38.225822, 36.524895, 39.033787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093597, 35.798676, 39.197414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313866, 35.973888, 39.481640>,  <38.446026, 36.079014, 39.652176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313866, 35.973888, 39.481640>,  <38.093597, 35.798676, 39.197414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313866, 35.973888, 39.481640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468656, -0.542181, 0.697425,
		0.690745, -0.717057, -0.093276,
		0.550666, 0.438029, 0.710562,
		38.479065, 36.105297, 39.694809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331024, 35.245728, 39.560917>,  <38.093597, 35.798676, 39.197414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331024, 35.245728, 39.560917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364933, 35.539360, 39.830414>,  <38.385277, 35.715542, 39.992111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364933, 35.539360, 39.830414>,  <38.331024, 35.245728, 39.560917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364933, 35.539360, 39.830414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359306, -0.608166, 0.707837,
		0.929362, -0.302085, 0.212207,
		0.084770, 0.734084, 0.673747,
		38.390366, 35.759586, 40.032539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510509, 34.868862, 40.209202>,  <38.331024, 35.245728, 39.560917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510509, 34.868862, 40.209202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375259, 35.230556, 40.313534>,  <38.294109, 35.447575, 40.376133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375259, 35.230556, 40.313534>,  <38.510509, 34.868862, 40.209202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375259, 35.230556, 40.313534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385479, -0.385909, 0.838141,
		0.858533, 0.182849, 0.479048,
		-0.338122, 0.904235, 0.260831,
		38.273823, 35.501827, 40.391785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422768, 34.729332, 40.852970>,  <38.510509, 34.868862, 40.209202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422768, 34.729332, 40.852970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221268, 35.071476, 40.804646>,  <38.100368, 35.276760, 40.775650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221268, 35.071476, 40.804646>,  <38.422768, 34.729332, 40.852970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221268, 35.071476, 40.804646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592137, -0.240084, 0.769242,
		0.628972, 0.459046, 0.627432,
		-0.503754, 0.855358, -0.120812,
		38.070141, 35.328083, 40.768402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334061, 35.093647, 41.625633>,  <38.422768, 34.729332, 40.852970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334061, 35.093647, 41.625633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070637, 35.218613, 41.351788>,  <37.912582, 35.293591, 41.187481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070637, 35.218613, 41.351788>,  <38.334061, 35.093647, 41.625633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070637, 35.218613, 41.351788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742048, -0.118304, 0.659825,
		0.125143, 0.942552, 0.309734,
		-0.658562, 0.312410, -0.684614,
		37.873070, 35.312336, 41.146404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168709, 35.749752, 41.839275>,  <38.334061, 35.093647, 41.625633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168709, 35.749752, 41.839275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865009, 35.605488, 41.622585>,  <37.682789, 35.518929, 41.492573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865009, 35.605488, 41.622585>,  <38.168709, 35.749752, 41.839275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865009, 35.605488, 41.622585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499454, -0.210756, 0.840314,
		-0.417236, 0.908576, -0.020115,
		-0.759249, -0.360656, -0.541727,
		37.637234, 35.497292, 41.460068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616184, 35.890137, 42.321053>,  <38.168709, 35.749752, 41.839275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616184, 35.890137, 42.321053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436779, 35.664871, 42.043438>,  <37.329136, 35.529713, 41.876869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436779, 35.664871, 42.043438>,  <37.616184, 35.890137, 42.321053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436779, 35.664871, 42.043438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722814, -0.228200, 0.652277,
		-0.525718, 0.794211, -0.304713,
		-0.448509, -0.563164, -0.694035,
		37.302227, 35.495922, 41.835228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915897, 36.018154, 42.340904>,  <37.616184, 35.890137, 42.321053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915897, 36.018154, 42.340904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956226, 35.652054, 42.184875>,  <36.980423, 35.432396, 42.091259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956226, 35.652054, 42.184875>,  <36.915897, 36.018154, 42.340904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956226, 35.652054, 42.184875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801892, -0.306828, 0.512666,
		-0.588902, 0.261110, -0.764864,
		0.100819, -0.915248, -0.390073,
		36.986473, 35.377480, 42.067852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203781, 35.759361, 42.184586>,  <36.915897, 36.018154, 42.340904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203781, 35.759361, 42.184586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451321, 35.445263, 42.192768>,  <36.599846, 35.256805, 42.197678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451321, 35.445263, 42.192768>,  <36.203781, 35.759361, 42.184586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451321, 35.445263, 42.192768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705675, -0.544329, 0.453572,
		-0.345029, -0.295129, -0.890985,
		0.618851, -0.785241, 0.020456,
		36.636974, 35.209690, 42.198906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787956, 35.160389, 41.985813>,  <36.203781, 35.759361, 42.184586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787956, 35.160389, 41.985813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108856, 35.034920, 42.188992>,  <36.301395, 34.959641, 42.310898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108856, 35.034920, 42.188992>,  <35.787956, 35.160389, 41.985813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108856, 35.034920, 42.188992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594358, -0.339857, 0.728859,
		-0.055993, -0.886627, -0.459083,
		0.802249, -0.313670, 0.507944,
		36.349529, 34.940819, 42.341373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601696, 34.514896, 42.174904>,  <35.787956, 35.160389, 41.985813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601696, 34.514896, 42.174904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900242, 34.576607, 42.433868>,  <36.079369, 34.613632, 42.589245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900242, 34.576607, 42.433868>,  <35.601696, 34.514896, 42.174904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900242, 34.576607, 42.433868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524236, -0.463015, 0.714698,
		0.410018, -0.872821, -0.264704,
		0.746366, 0.154272, 0.647409,
		36.124153, 34.622887, 42.628090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565926, 33.885326, 42.528507>,  <35.601696, 34.514896, 42.174904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565926, 33.885326, 42.528507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743587, 34.169197, 42.747261>,  <35.850185, 34.339520, 42.878513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743587, 34.169197, 42.747261>,  <35.565926, 33.885326, 42.528507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743587, 34.169197, 42.747261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464356, -0.339674, 0.817921,
		0.766223, -0.617233, 0.178676,
		0.444156, 0.709679, 0.546882,
		35.876835, 34.382099, 42.911327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935516, 33.297653, 42.265831>,  <35.565926, 33.885326, 42.528507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935516, 33.297653, 42.265831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958942, 32.927734, 42.115459>,  <35.973000, 32.705784, 42.025238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958942, 32.927734, 42.115459>,  <35.935516, 33.297653, 42.265831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958942, 32.927734, 42.115459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219099, 0.355484, -0.908640,
		0.973943, 0.135579, -0.181803,
		0.058564, -0.924797, -0.375926,
		35.976513, 32.650295, 42.002682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273010, 33.385269, 41.577816>,  <35.935516, 33.297653, 42.265831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273010, 33.385269, 41.577816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098492, 33.026127, 41.554173>,  <35.993778, 32.810642, 41.539986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098492, 33.026127, 41.554173>,  <36.273010, 33.385269, 41.577816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098492, 33.026127, 41.554173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247648, 0.182974, -0.951415,
		0.865051, -0.400464, -0.302184,
		-0.436299, -0.897858, -0.059108,
		35.967602, 32.756771, 41.536442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412033, 33.178417, 40.896175>,  <36.273010, 33.385269, 41.577816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412033, 33.178417, 40.896175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124287, 32.938953, 41.037098>,  <35.951637, 32.795277, 41.121651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124287, 32.938953, 41.037098>,  <36.412033, 33.178417, 40.896175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124287, 32.938953, 41.037098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408992, -0.044913, -0.911432,
		0.561461, -0.799743, -0.212539,
		-0.719366, -0.598660, 0.352305,
		35.908478, 32.759357, 41.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332359, 32.639763, 40.383263>,  <36.412033, 33.178417, 40.896175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332359, 32.639763, 40.383263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989056, 32.671959, 40.586006>,  <35.783073, 32.691277, 40.707653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989056, 32.671959, 40.586006>,  <36.332359, 32.639763, 40.383263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989056, 32.671959, 40.586006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510645, -0.035343, -0.859065,
		-0.051267, -0.996125, 0.071456,
		-0.858262, 0.080530, 0.506855,
		35.731575, 32.696106, 40.738064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852409, 32.131779, 40.148136>,  <36.332359, 32.639763, 40.383263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852409, 32.131779, 40.148136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653786, 32.434444, 40.318260>,  <35.534611, 32.616043, 40.420334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653786, 32.434444, 40.318260>,  <35.852409, 32.131779, 40.148136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653786, 32.434444, 40.318260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433651, 0.208202, -0.876698,
		-0.751913, -0.619772, 0.224741,
		-0.496561, 0.756660, 0.425315,
		35.504818, 32.661442, 40.445854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309715, 32.278263, 39.636944>,  <35.852409, 32.131779, 40.148136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309715, 32.278263, 39.636944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229729, 32.584400, 39.881653>,  <35.181736, 32.768082, 40.028477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229729, 32.584400, 39.881653>,  <35.309715, 32.278263, 39.636944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229729, 32.584400, 39.881653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383962, 0.513231, -0.767572,
		-0.901436, -0.388384, 0.191234,
		-0.199965, 0.765344, 0.611770,
		35.169739, 32.814003, 40.065186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479313, 32.478527, 39.583885>,  <35.309715, 32.278263, 39.636944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479313, 32.478527, 39.583885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734287, 32.765060, 39.697407>,  <34.887272, 32.936981, 39.765518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734287, 32.765060, 39.697407>,  <34.479313, 32.478527, 39.583885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734287, 32.765060, 39.697407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245611, 0.538023, -0.806354,
		-0.730310, 0.444293, 0.518894,
		0.637435, 0.716334, 0.283801,
		34.925518, 32.979961, 39.782547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034687, 33.045704, 39.614517>,  <34.479313, 32.478527, 39.583885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034687, 33.045704, 39.614517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414654, 33.164921, 39.576935>,  <34.642635, 33.236450, 39.554386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414654, 33.164921, 39.576935>,  <34.034687, 33.045704, 39.614517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414654, 33.164921, 39.576935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257952, 0.578114, -0.774109,
		-0.176397, 0.759577, 0.626041,
		0.949918, 0.298039, -0.093957,
		34.699631, 33.254333, 39.548748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903584, 33.748947, 39.564365>,  <34.034687, 33.045704, 39.614517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903584, 33.748947, 39.564365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275311, 33.706875, 39.422768>,  <34.498344, 33.681633, 39.337807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275311, 33.706875, 39.422768>,  <33.903584, 33.748947, 39.564365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275311, 33.706875, 39.422768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140004, 0.786677, -0.601280,
		0.341726, 0.608338, 0.716343,
		0.929313, -0.105182, -0.353997,
		34.554104, 33.675320, 39.316570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254364, 34.432453, 39.525234>,  <33.903584, 33.748947, 39.564365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254364, 34.432453, 39.525234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445843, 34.187603, 39.273472>,  <34.560730, 34.040691, 39.122414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445843, 34.187603, 39.273472>,  <34.254364, 34.432453, 39.525234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445843, 34.187603, 39.273472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065445, 0.690010, -0.720835,
		0.875540, 0.386250, 0.290243,
		0.478693, -0.612124, -0.629410,
		34.589451, 34.003967, 39.084648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559322, 34.982445, 39.177986>,  <34.254364, 34.432453, 39.525234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559322, 34.982445, 39.177986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613331, 34.651096, 38.960518>,  <34.645737, 34.452290, 38.830036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613331, 34.651096, 38.960518>,  <34.559322, 34.982445, 39.177986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613331, 34.651096, 38.960518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161723, 0.522910, -0.836905,
		0.977555, 0.200927, -0.063360,
		0.135025, -0.828368, -0.543668,
		34.653839, 34.402584, 38.797417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925594, 35.159275, 38.618256>,  <34.559322, 34.982445, 39.177986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925594, 35.159275, 38.618256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768990, 34.809273, 38.504356>,  <34.675026, 34.599270, 38.436016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768990, 34.809273, 38.504356>,  <34.925594, 35.159275, 38.618256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768990, 34.809273, 38.504356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198723, 0.382548, -0.902312,
		0.898460, -0.296677, -0.323655,
		-0.391508, -0.875009, -0.284747,
		34.651539, 34.546772, 38.418934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.689213, 32.502899, 45.227806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452694, 32.181580, 45.256294>,  <37.310783, 31.988787, 45.273388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452694, 32.181580, 45.256294>,  <37.689213, 32.502899, 45.227806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452694, 32.181580, 45.256294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020973, -0.103603, -0.994398,
		0.806180, -0.586492, 0.078108,
		-0.591298, -0.803302, 0.071223,
		37.275303, 31.940590, 45.277660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920197, 31.943632, 44.676342>,  <37.689213, 32.502899, 45.227806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920197, 31.943632, 44.676342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536560, 31.879276, 44.769524>,  <37.306377, 31.840662, 44.825432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.536560, 31.879276, 44.769524>,  <37.920197, 31.943632, 44.676342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536560, 31.879276, 44.769524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186952, -0.257986, -0.947888,
		0.212603, -0.952658, 0.217352,
		-0.959087, -0.160890, 0.232950,
		37.248833, 31.831009, 44.839409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682865, 31.241884, 44.317410>,  <37.920197, 31.943632, 44.676342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682865, 31.241884, 44.317410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370434, 31.477249, 44.401016>,  <37.182976, 31.618467, 44.451180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370434, 31.477249, 44.401016>,  <37.682865, 31.241884, 44.317410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370434, 31.477249, 44.401016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319935, -0.089655, -0.943188,
		-0.536245, -0.803574, 0.258282,
		-0.781078, 0.588413, 0.209015,
		37.136112, 31.653772, 44.463722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164707, 30.954517, 43.907463>,  <37.682865, 31.241884, 44.317410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164707, 30.954517, 43.907463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005699, 31.308886, 44.003067>,  <36.910294, 31.521507, 44.060429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.005699, 31.308886, 44.003067>,  <37.164707, 30.954517, 43.907463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005699, 31.308886, 44.003067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410786, 0.061097, -0.909682,
		-0.820509, -0.459797, 0.339637,
		-0.397518, 0.885920, 0.239009,
		36.886444, 31.574661, 44.074768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535099, 30.851242, 43.660477>,  <37.164707, 30.954517, 43.907463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535099, 30.851242, 43.660477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595573, 31.245832, 43.685795>,  <36.631859, 31.482588, 43.700985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595573, 31.245832, 43.685795>,  <36.535099, 30.851242, 43.660477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595573, 31.245832, 43.685795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450697, 0.125773, -0.883772,
		-0.879782, 0.105085, 0.463618,
		0.151182, 0.986478, 0.063291,
		36.640926, 31.541777, 43.704781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914932, 31.051071, 43.398209>,  <36.535099, 30.851242, 43.660477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914932, 31.051071, 43.398209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140499, 31.379496, 43.362762>,  <36.275841, 31.576550, 43.341496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140499, 31.379496, 43.362762>,  <35.914932, 31.051071, 43.398209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140499, 31.379496, 43.362762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376616, 0.160190, -0.912414,
		-0.734953, 0.547903, 0.399559,
		0.563920, 0.821061, -0.088616,
		36.309673, 31.625814, 43.336178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467358, 31.459551, 43.031204>,  <35.914932, 31.051071, 43.398209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467358, 31.459551, 43.031204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829300, 31.621466, 42.978470>,  <36.046467, 31.718615, 42.946827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.829300, 31.621466, 42.978470>,  <35.467358, 31.459551, 43.031204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829300, 31.621466, 42.978470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317338, 0.434905, -0.842706,
		-0.283778, 0.804366, 0.521981,
		0.904857, 0.404787, -0.131839,
		36.100758, 31.742901, 42.938919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431252, 32.220760, 42.965649>,  <35.467358, 31.459551, 43.031204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431252, 32.220760, 42.965649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777641, 32.127117, 42.788891>,  <35.985477, 32.070930, 42.682835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.777641, 32.127117, 42.788891>,  <35.431252, 32.220760, 42.965649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777641, 32.127117, 42.788891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200929, 0.646298, -0.736156,
		0.457941, 0.726285, 0.512640,
		0.865978, -0.234112, -0.441898,
		36.037434, 32.056885, 42.656322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663628, 32.824860, 42.806572>,  <35.431252, 32.220760, 42.965649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663628, 32.824860, 42.806572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.842426, 32.552994, 42.573936>,  <35.949707, 32.389874, 42.434357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.842426, 32.552994, 42.573936>,  <35.663628, 32.824860, 42.806572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842426, 32.552994, 42.573936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217276, 0.548194, -0.807635,
		0.867746, 0.487378, 0.097367,
		0.447000, -0.679666, -0.581589,
		35.976524, 32.349094, 42.399460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854980, 33.496468, 43.133053>,  <35.663628, 32.824860, 42.806572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854980, 33.496468, 43.133053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.848228, 33.882919, 43.236053>,  <35.844177, 34.114792, 43.297852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.848228, 33.882919, 43.236053>,  <35.854980, 33.496468, 43.133053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848228, 33.882919, 43.236053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347074, -0.247184, 0.904677,
		0.937686, -0.074099, 0.339492,
		-0.016881, 0.966131, 0.257499,
		35.843163, 34.172760, 43.313305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276546, 33.618893, 43.723778>,  <35.854980, 33.496468, 43.133053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276546, 33.618893, 43.723778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.030037, 33.931911, 43.759167>,  <35.882130, 34.119720, 43.780399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.030037, 33.931911, 43.759167>,  <36.276546, 33.618893, 43.723778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030037, 33.931911, 43.759167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254249, -0.304029, 0.918109,
		0.745359, 0.543315, 0.386327,
		-0.616277, 0.782544, 0.088474,
		35.845154, 34.166676, 43.785709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324852, 33.907211, 44.423573>,  <36.276546, 33.618893, 43.723778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324852, 33.907211, 44.423573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974663, 34.051361, 44.294781>,  <35.764549, 34.137852, 44.217506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974663, 34.051361, 44.294781>,  <36.324852, 33.907211, 44.423573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974663, 34.051361, 44.294781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399323, -0.164216, 0.901983,
		0.272177, 0.918240, 0.287673,
		-0.875477, 0.360373, -0.321979,
		35.712021, 34.159473, 44.198189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262524, 34.436302, 44.911068>,  <36.324852, 33.907211, 44.423573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262524, 34.436302, 44.911068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902260, 34.363068, 44.753437>,  <35.686104, 34.319126, 44.658859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902260, 34.363068, 44.753437>,  <36.262524, 34.436302, 44.911068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902260, 34.363068, 44.753437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401439, 0.003456, 0.915879,
		-0.166326, 0.983090, -0.076612,
		-0.900656, -0.183090, -0.394076,
		35.632061, 34.308140, 44.635216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730530, 34.925495, 45.308319>,  <36.262524, 34.436302, 44.911068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730530, 34.925495, 45.308319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.485954, 34.661636, 45.133499>,  <35.339211, 34.503323, 45.028606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.485954, 34.661636, 45.133499>,  <35.730530, 34.925495, 45.308319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485954, 34.661636, 45.133499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436651, -0.179347, 0.881573,
		-0.659909, 0.729865, -0.178375,
		-0.611438, -0.659645, -0.437049,
		35.302525, 34.463741, 45.002384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081760, 35.008995, 45.354153>,  <35.730530, 34.925495, 45.308319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081760, 35.008995, 45.354153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012585, 34.624245, 45.269417>,  <34.971077, 34.393394, 45.218575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012585, 34.624245, 45.269417>,  <35.081760, 35.008995, 45.354153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012585, 34.624245, 45.269417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364992, -0.137182, 0.920848,
		-0.914807, 0.236573, -0.327354,
		-0.172941, -0.961880, -0.211842,
		34.960701, 34.335682, 45.205864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365868, 34.934643, 45.479538>,  <35.081760, 35.008995, 45.354153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365868, 34.934643, 45.479538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552032, 34.583515, 45.524837>,  <34.663731, 34.372841, 45.552017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552032, 34.583515, 45.524837>,  <34.365868, 34.934643, 45.479538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552032, 34.583515, 45.524837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394619, -0.091269, 0.914301,
		-0.792252, -0.470221, -0.388881,
		0.465416, -0.877817, 0.113250,
		34.691658, 34.320171, 45.558811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851711, 34.464714, 45.860619>,  <34.365868, 34.934643, 45.479538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851711, 34.464714, 45.860619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.210186, 34.292427, 45.903214>,  <34.425270, 34.189056, 45.928768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.210186, 34.292427, 45.903214>,  <33.851711, 34.464714, 45.860619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210186, 34.292427, 45.903214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242644, -0.274857, 0.930364,
		-0.371458, -0.859613, -0.350833,
		0.896182, -0.430719, 0.106482,
		34.479042, 34.163212, 45.935158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710613, 33.769882, 46.181320>,  <33.851711, 34.464714, 45.860619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710613, 33.769882, 46.181320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091892, 33.858974, 46.263100>,  <34.320660, 33.912430, 46.312168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091892, 33.858974, 46.263100>,  <33.710613, 33.769882, 46.181320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091892, 33.858974, 46.263100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138602, -0.279053, 0.950220,
		0.268696, -0.934088, -0.235123,
		0.953201, 0.222732, 0.204447,
		34.377853, 33.925793, 46.324432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932144, 33.281727, 46.729698>,  <33.710613, 33.769882, 46.181320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932144, 33.281727, 46.729698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.233727, 33.543941, 46.746769>,  <34.414677, 33.701271, 46.757011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.233727, 33.543941, 46.746769>,  <33.932144, 33.281727, 46.729698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233727, 33.543941, 46.746769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087009, -0.164037, 0.982609,
		0.651138, -0.737131, -0.180714,
		0.753955, 0.655538, 0.042674,
		34.459911, 33.740604, 46.759571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520256, 32.912228, 47.140560>,  <33.932144, 33.281727, 46.729698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520256, 32.912228, 47.140560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565670, 33.308937, 47.164192>,  <34.592918, 33.546963, 47.178371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565670, 33.308937, 47.164192>,  <34.520256, 32.912228, 47.140560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565670, 33.308937, 47.164192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127578, -0.073530, 0.989099,
		0.985309, -0.104757, -0.134877,
		0.113532, 0.991776, 0.059085,
		34.599731, 33.606468, 47.181919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224453, 33.004421, 47.377773>,  <34.520256, 32.912228, 47.140560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224453, 33.004421, 47.377773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011658, 33.333790, 47.456738>,  <34.883980, 33.531410, 47.504116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011658, 33.333790, 47.456738>,  <35.224453, 33.004421, 47.377773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011658, 33.333790, 47.456738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386442, 0.028651, 0.921869,
		0.753427, 0.566713, -0.333445,
		-0.531988, 0.823417, 0.197415,
		34.852062, 33.580814, 47.515961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689434, 33.568184, 47.637360>,  <35.224453, 33.004421, 47.377773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689434, 33.568184, 47.637360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.328827, 33.663555, 47.781811>,  <35.112461, 33.720776, 47.868481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.328827, 33.663555, 47.781811>,  <35.689434, 33.568184, 47.637360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328827, 33.663555, 47.781811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402892, 0.157917, 0.901521,
		0.157917, 0.958236, -0.238424,
		-0.901521, 0.238424, 0.361128,
		35.058369, 33.735081, 47.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755165, 34.280022, 47.893093>,  <35.689434, 33.568184, 47.637360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755165, 34.280022, 47.893093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428967, 34.138344, 48.076183>,  <35.233250, 34.053337, 48.186039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428967, 34.138344, 48.076183>,  <35.755165, 34.280022, 47.893093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428967, 34.138344, 48.076183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376029, 0.276949, 0.884252,
		-0.439968, 0.893220, -0.092661,
		-0.815494, -0.354199, 0.457726,
		35.184319, 34.032085, 48.213501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.002193, 33.895386, 47.670341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387850, 33.796108, 47.632748>,  <30.619244, 33.736542, 47.610191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387850, 33.796108, 47.632748>,  <30.002193, 33.895386, 47.670341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387850, 33.796108, 47.632748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000769, 0.351537, -0.936174,
		0.265389, 0.902676, 0.338740,
		0.964141, -0.248190, -0.093988,
		30.677092, 33.721653, 47.604549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292526, 34.514053, 47.335670>,  <30.002193, 33.895386, 47.670341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292526, 34.514053, 47.335670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555656, 34.215885, 47.292561>,  <30.713535, 34.036983, 47.266697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555656, 34.215885, 47.292561>,  <30.292526, 34.514053, 47.335670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555656, 34.215885, 47.292561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232995, 0.337476, -0.912044,
		0.716225, 0.574856, 0.395679,
		0.657826, -0.745420, -0.107770,
		30.753004, 33.992260, 47.260231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845564, 34.894405, 47.030514>,  <30.292526, 34.514053, 47.335670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845564, 34.894405, 47.030514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888742, 34.501736, 46.967705>,  <30.914650, 34.266132, 46.930019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.888742, 34.501736, 46.967705>,  <30.845564, 34.894405, 47.030514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888742, 34.501736, 46.967705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207398, 0.176709, -0.962164,
		0.972283, 0.071295, 0.222673,
		0.107945, -0.981678, -0.157024,
		30.921125, 34.207233, 46.920597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330662, 34.902473, 46.555832>,  <30.845564, 34.894405, 47.030514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330662, 34.902473, 46.555832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.151453, 34.545998, 46.527378>,  <31.043928, 34.332111, 46.510307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.151453, 34.545998, 46.527378>,  <31.330662, 34.902473, 46.555832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151453, 34.545998, 46.527378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112913, 0.022526, -0.993350,
		0.886864, -0.453074, 0.090535,
		-0.448022, -0.891188, -0.071135,
		31.017046, 34.278641, 46.506039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788500, 34.471050, 46.180019>,  <31.330662, 34.902473, 46.555832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788500, 34.471050, 46.180019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.448368, 34.266193, 46.131599>,  <31.244289, 34.143280, 46.102547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.448368, 34.266193, 46.131599>,  <31.788500, 34.471050, 46.180019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448368, 34.266193, 46.131599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115689, 0.042470, -0.992377,
		0.513376, -0.857852, 0.023135,
		-0.850330, -0.512139, -0.121048,
		31.193270, 34.112553, 46.095284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977226, 33.945385, 45.739395>,  <31.788500, 34.471050, 46.180019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977226, 33.945385, 45.739395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579273, 33.968761, 45.706436>,  <31.340502, 33.982788, 45.686661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579273, 33.968761, 45.706436>,  <31.977226, 33.945385, 45.739395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579273, 33.968761, 45.706436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080998, -0.025992, -0.996375,
		-0.060378, -0.997952, 0.021125,
		-0.994884, 0.058448, -0.082401,
		31.280807, 33.986294, 45.681717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811380, 33.390614, 45.338451>,  <31.977226, 33.945385, 45.739395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811380, 33.390614, 45.338451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521448, 33.665234, 45.315601>,  <31.347488, 33.830006, 45.301891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521448, 33.665234, 45.315601>,  <31.811380, 33.390614, 45.338451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521448, 33.665234, 45.315601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007598, -0.074949, -0.997158,
		-0.688885, -0.723206, 0.049109,
		-0.724831, 0.686554, -0.057126,
		31.303999, 33.871201, 45.298462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370373, 33.189434, 44.871792>,  <31.811380, 33.390614, 45.338451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370373, 33.189434, 44.871792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267252, 33.575905, 44.874100>,  <31.205379, 33.807789, 44.875484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.267252, 33.575905, 44.874100>,  <31.370373, 33.189434, 44.871792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267252, 33.575905, 44.874100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002253, 0.005366, -0.999983,
		-0.966195, -0.257810, 0.000793,
		-0.257801, 0.966181, 0.005766,
		31.189911, 33.865761, 44.875828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878517, 33.316204, 44.371738>,  <31.370373, 33.189434, 44.871792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878517, 33.316204, 44.371738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050253, 33.671738, 44.435795>,  <31.153294, 33.885056, 44.474228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050253, 33.671738, 44.435795>,  <30.878517, 33.316204, 44.371738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050253, 33.671738, 44.435795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133696, 0.112816, -0.984580,
		-0.893192, 0.444131, -0.070397,
		0.429340, 0.888831, 0.160145,
		31.179054, 33.938389, 44.483837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784100, 33.632221, 43.743225>,  <30.878517, 33.316204, 44.371738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784100, 33.632221, 43.743225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001638, 33.918480, 43.918530>,  <31.132162, 34.090237, 44.023712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.001638, 33.918480, 43.918530>,  <30.784100, 33.632221, 43.743225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001638, 33.918480, 43.918530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288607, 0.330892, -0.898452,
		-0.787995, 0.615107, -0.026587,
		0.543847, 0.715649, 0.438265,
		31.164793, 34.133175, 44.050011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516882, 34.389084, 43.481083>,  <30.784100, 33.632221, 43.743225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516882, 34.389084, 43.481083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899567, 34.351845, 43.591381>,  <31.129177, 34.329502, 43.657562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.899567, 34.351845, 43.591381>,  <30.516882, 34.389084, 43.481083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899567, 34.351845, 43.591381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291042, 0.305062, -0.906770,
		0.000301, 0.947771, 0.318952,
		0.956710, -0.093101, 0.275749,
		31.186581, 34.323914, 43.674107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795492, 35.000095, 43.193203>,  <30.516882, 34.389084, 43.481083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795492, 35.000095, 43.193203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.109259, 34.758373, 43.249065>,  <31.297518, 34.613338, 43.282581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.109259, 34.758373, 43.249065>,  <30.795492, 35.000095, 43.193203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109259, 34.758373, 43.249065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399250, 0.319656, -0.859313,
		0.474648, 0.729816, 0.492013,
		0.784416, -0.604308, 0.139655,
		31.344584, 34.577080, 43.290962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361023, 35.424789, 42.888569>,  <30.795492, 35.000095, 43.193203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361023, 35.424789, 42.888569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486170, 35.047512, 42.933304>,  <31.561258, 34.821148, 42.960144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486170, 35.047512, 42.933304>,  <31.361023, 35.424789, 42.888569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486170, 35.047512, 42.933304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551699, 0.084619, -0.829740,
		0.773139, 0.321298, 0.546831,
		0.312866, -0.943190, 0.111837,
		31.580030, 34.764557, 42.966854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146492, 35.414726, 42.883461>,  <31.361023, 35.424789, 42.888569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146492, 35.414726, 42.883461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984449, 35.067390, 42.769005>,  <31.887224, 34.858990, 42.700329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984449, 35.067390, 42.769005>,  <32.146492, 35.414726, 42.883461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984449, 35.067390, 42.769005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520464, 0.038284, -0.853025,
		0.751669, -0.494492, 0.436430,
		-0.405105, -0.868339, -0.286142,
		31.862917, 34.806889, 42.683163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898502, 35.536079, 42.997856>,  <32.146492, 35.414726, 42.883461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898502, 35.536079, 42.997856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040440, 35.909428, 43.019421>,  <33.125603, 36.133438, 43.032360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.040440, 35.909428, 43.019421>,  <32.898502, 35.536079, 42.997856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040440, 35.909428, 43.019421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073577, -0.085367, 0.993629,
		0.932027, -0.348615, -0.098966,
		0.354842, 0.933371, 0.053914,
		33.146893, 36.189438, 43.035595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447159, 35.522541, 43.502560>,  <32.898502, 35.536079, 42.997856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447159, 35.522541, 43.502560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312485, 35.897861, 43.470982>,  <33.231678, 36.123055, 43.452034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312485, 35.897861, 43.470982>,  <33.447159, 35.522541, 43.502560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312485, 35.897861, 43.470982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055224, 0.103368, 0.993109,
		0.939996, 0.330007, -0.086619,
		-0.336687, 0.938302, -0.078941,
		33.211479, 36.179352, 43.447300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003334, 35.897022, 43.821400>,  <33.447159, 35.522541, 43.502560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003334, 35.897022, 43.821400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.666195, 36.112099, 43.830307>,  <33.463913, 36.241146, 43.835651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.666195, 36.112099, 43.830307>,  <34.003334, 35.897022, 43.821400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666195, 36.112099, 43.830307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194202, 0.265305, 0.944404,
		0.501894, 0.800311, -0.328033,
		-0.842845, 0.537695, 0.022267,
		33.413342, 36.273407, 43.836987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224159, 36.332687, 44.278736>,  <34.003334, 35.897022, 43.821400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224159, 36.332687, 44.278736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826168, 36.370300, 44.265030>,  <33.587372, 36.392868, 44.256805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826168, 36.370300, 44.265030>,  <34.224159, 36.332687, 44.278736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826168, 36.370300, 44.265030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025112, 0.096882, 0.994979,
		0.096882, 0.990844, -0.094034,
		-0.994979, 0.094034, -0.034269,
		33.527676, 36.398510, 44.254749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115990, 36.909279, 44.709942>,  <34.224159, 36.332687, 44.278736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115990, 36.909279, 44.709942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768845, 36.710846, 44.699219>,  <33.560558, 36.591785, 44.692783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768845, 36.710846, 44.699219>,  <34.115990, 36.909279, 44.709942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768845, 36.710846, 44.699219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072275, 0.072681, 0.994733,
		-0.491518, 0.865230, -0.098932,
		-0.867863, -0.496079, -0.026810,
		33.508484, 36.562023, 44.691177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595921, 37.357277, 44.981415>,  <34.115990, 36.909279, 44.709942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595921, 37.357277, 44.981415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416630, 37.001846, 45.020447>,  <33.309055, 36.788586, 45.043865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416630, 37.001846, 45.020447>,  <33.595921, 37.357277, 44.981415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416630, 37.001846, 45.020447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183999, 0.198533, 0.962668,
		-0.874780, 0.413536, -0.252484,
		-0.448224, -0.888579, 0.097582,
		33.282162, 36.735271, 45.049721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082283, 37.414219, 45.465664>,  <33.595921, 37.357277, 44.981415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082283, 37.414219, 45.465664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113358, 37.015579, 45.476696>,  <33.132004, 36.776398, 45.483315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113358, 37.015579, 45.476696>,  <33.082283, 37.414219, 45.465664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113358, 37.015579, 45.476696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019083, 0.026175, 0.999475,
		-0.996795, -0.078173, -0.016985,
		0.077687, -0.996596, 0.027583,
		33.136665, 36.716599, 45.484970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552361, 37.132961, 45.857136>,  <33.082283, 37.414219, 45.465664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552361, 37.132961, 45.857136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826759, 36.842758, 45.879181>,  <32.991398, 36.668636, 45.892406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826759, 36.842758, 45.879181>,  <32.552361, 37.132961, 45.857136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826759, 36.842758, 45.879181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240434, -0.154544, 0.958284,
		-0.686727, -0.670634, -0.280455,
		0.686001, -0.725510, 0.055114,
		33.032558, 36.625107, 45.895714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265152, 36.646275, 46.341515>,  <32.552361, 37.132961, 45.857136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265152, 36.646275, 46.341515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645390, 36.523079, 46.325928>,  <32.873531, 36.449162, 46.316578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.645390, 36.523079, 46.325928>,  <32.265152, 36.646275, 46.341515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645390, 36.523079, 46.325928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051089, -0.279003, 0.958930,
		-0.306214, -0.909559, -0.280953,
		0.950590, -0.307992, -0.038966,
		32.930569, 36.430683, 46.314240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238232, 36.000679, 46.739662>,  <32.265152, 36.646275, 46.341515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238232, 36.000679, 46.739662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602081, 36.166065, 46.755810>,  <32.820393, 36.265297, 46.765499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602081, 36.166065, 46.755810>,  <32.238232, 36.000679, 46.739662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602081, 36.166065, 46.755810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087653, -0.286002, 0.954212,
		0.406077, -0.864437, -0.296396,
		0.909625, 0.413464, 0.040368,
		32.874969, 36.290104, 46.767921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684296, 35.548195, 47.096333>,  <32.238232, 36.000679, 46.739662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684296, 35.548195, 47.096333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892967, 35.888630, 47.119984>,  <33.018169, 36.092892, 47.134174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892967, 35.888630, 47.119984>,  <32.684296, 35.548195, 47.096333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892967, 35.888630, 47.119984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361852, -0.283501, 0.888082,
		0.772599, -0.441902, -0.455866,
		0.521683, 0.851088, 0.059129,
		33.049473, 36.143955, 47.137722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362385, 35.341595, 47.095551>,  <32.684296, 35.548195, 47.096333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362385, 35.341595, 47.095551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325344, 35.703896, 47.260975>,  <33.303120, 35.921276, 47.360229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325344, 35.703896, 47.260975>,  <33.362385, 35.341595, 47.095551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325344, 35.703896, 47.260975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264370, -0.378071, 0.887227,
		0.959965, 0.191492, -0.204444,
		-0.092603, 0.905756, 0.413559,
		33.297562, 35.975624, 47.385044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685898, 35.252022, 47.738827>,  <33.362385, 35.341595, 47.095551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685898, 35.252022, 47.738827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.516888, 35.607578, 47.809643>,  <33.415482, 35.820911, 47.852131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.516888, 35.607578, 47.809643>,  <33.685898, 35.252022, 47.738827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516888, 35.607578, 47.809643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105176, -0.145921, 0.983689,
		0.900228, 0.434253, -0.031835,
		-0.422525, 0.888893, 0.177036,
		33.390129, 35.874245, 47.862755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053112, 35.624226, 48.288017>,  <33.685898, 35.252022, 47.738827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053112, 35.624226, 48.288017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672207, 35.746288, 48.284367>,  <33.443665, 35.819527, 48.282177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672207, 35.746288, 48.284367>,  <34.053112, 35.624226, 48.288017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672207, 35.746288, 48.284367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081375, -0.224895, 0.970979,
		0.294245, 0.925367, 0.238990,
		-0.952259, 0.305154, -0.009127,
		33.386528, 35.837833, 48.281628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334881, 36.467300, 48.269829>,  <34.053112, 35.624226, 48.288017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334881, 36.467300, 48.269829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663395, 36.666882, 48.380489>,  <34.860504, 36.786633, 48.446888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663395, 36.666882, 48.380489>,  <34.334881, 36.467300, 48.269829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663395, 36.666882, 48.380489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137923, 0.296891, -0.944898,
		-0.553599, 0.814186, 0.175013,
		0.821283, 0.498956, 0.276654,
		34.909779, 36.816570, 48.463486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320534, 37.151588, 47.936680>,  <34.334881, 36.467300, 48.269829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320534, 37.151588, 47.936680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701859, 37.089226, 48.040131>,  <34.930653, 37.051807, 48.102203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701859, 37.089226, 48.040131>,  <34.320534, 37.151588, 47.936680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701859, 37.089226, 48.040131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297346, 0.335009, -0.894066,
		0.052747, 0.929227, 0.365726,
		0.953312, -0.155906, 0.258631,
		34.987850, 37.042454, 48.117722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715412, 37.736900, 47.723457>,  <34.320534, 37.151588, 47.936680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715412, 37.736900, 47.723457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997356, 37.460381, 47.787048>,  <35.166523, 37.294468, 47.825203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997356, 37.460381, 47.787048>,  <34.715412, 37.736900, 47.723457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997356, 37.460381, 47.787048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506070, 0.333033, -0.795602,
		0.497050, 0.641248, 0.584588,
		0.704865, -0.691296, 0.158982,
		35.208817, 37.252991, 47.834743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365536, 38.111168, 47.744347>,  <34.715412, 37.736900, 47.723457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365536, 38.111168, 47.744347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405380, 37.729042, 47.633022>,  <35.429287, 37.499767, 47.566227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405380, 37.729042, 47.633022>,  <35.365536, 38.111168, 47.744347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405380, 37.729042, 47.633022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372054, 0.295171, -0.880029,
		0.922851, -0.015885, 0.384830,
		0.099611, -0.955313, -0.278308,
		35.435265, 37.442448, 47.549530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931068, 38.136948, 47.401630>,  <35.365536, 38.111168, 47.744347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931068, 38.136948, 47.401630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775661, 37.791534, 47.273029>,  <35.682415, 37.584286, 47.195869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775661, 37.791534, 47.273029>,  <35.931068, 38.136948, 47.401630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775661, 37.791534, 47.273029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499594, 0.095763, -0.860951,
		0.774248, -0.495115, 0.394210,
		-0.388519, -0.863534, -0.321500,
		35.659107, 37.532475, 47.176579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498688, 37.888515, 47.106834>,  <35.931068, 38.136948, 47.401630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498688, 37.888515, 47.106834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215321, 37.645840, 46.962570>,  <36.045300, 37.500233, 46.876011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215321, 37.645840, 46.962570>,  <36.498688, 37.888515, 47.106834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215321, 37.645840, 46.962570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542365, -0.140946, -0.828236,
		0.451648, -0.782345, 0.428895,
		-0.708417, -0.606688, -0.360658,
		36.002796, 37.463833, 46.854374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767849, 37.353897, 46.829613>,  <36.498688, 37.888515, 47.106834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767849, 37.353897, 46.829613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416985, 37.342541, 46.637867>,  <36.206467, 37.335728, 46.522820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.416985, 37.342541, 46.637867>,  <36.767849, 37.353897, 46.829613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416985, 37.342541, 46.637867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479912, -0.086508, -0.873041,
		-0.016679, -0.995847, 0.089508,
		-0.877158, -0.028395, -0.479361,
		36.153835, 37.334023, 46.494057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793644, 36.729202, 46.492683>,  <36.767849, 37.353897, 46.829613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793644, 36.729202, 46.492683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564365, 36.996002, 46.302292>,  <36.426800, 37.156082, 46.188057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.564365, 36.996002, 46.302292>,  <36.793644, 36.729202, 46.492683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564365, 36.996002, 46.302292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566713, -0.096869, -0.818201,
		-0.591847, -0.738735, -0.322472,
		-0.573196, 0.666999, -0.475982,
		36.392406, 37.196102, 46.159496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672760, 36.473042, 45.792709>,  <36.793644, 36.729202, 46.492683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672760, 36.473042, 45.792709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631168, 36.870853, 45.788883>,  <36.606213, 37.109543, 45.786587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.631168, 36.870853, 45.788883>,  <36.672760, 36.473042, 45.792709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631168, 36.870853, 45.788883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624604, 0.057815, -0.778799,
		-0.773988, -0.086955, -0.627201,
		-0.103982, 0.994533, -0.009565,
		36.599976, 37.169212, 45.786015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326454, 36.697338, 45.196850>,  <36.672760, 36.473042, 45.792709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326454, 36.697338, 45.196850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536118, 37.012939, 45.325058>,  <36.661915, 37.202301, 45.401981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.536118, 37.012939, 45.325058>,  <36.326454, 36.697338, 45.196850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536118, 37.012939, 45.325058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513576, 0.007369, -0.858012,
		-0.679335, 0.614347, -0.401350,
		0.524160, 0.789001, 0.320520,
		36.693367, 37.249641, 45.421215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273468, 37.139057, 44.688564>,  <36.326454, 36.697338, 45.196850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273468, 37.139057, 44.688564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560139, 37.326347, 44.895309>,  <36.732140, 37.438721, 45.019356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.560139, 37.326347, 44.895309>,  <36.273468, 37.139057, 44.688564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560139, 37.326347, 44.895309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441401, 0.269253, -0.855960,
		-0.539946, 0.841588, -0.013708,
		0.716675, 0.468223, 0.516860,
		36.775143, 37.466816, 45.050369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280407, 37.764042, 44.397472>,  <36.273468, 37.139057, 44.688564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280407, 37.764042, 44.397472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643112, 37.710651, 44.557453>,  <36.860737, 37.678616, 44.653442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.643112, 37.710651, 44.557453>,  <36.280407, 37.764042, 44.397472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643112, 37.710651, 44.557453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420318, 0.361255, -0.832363,
		-0.033383, 0.922864, 0.383677,
		0.906763, -0.133479, 0.399956,
		36.915142, 37.670609, 44.677441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567341, 38.459682, 44.283852>,  <36.280407, 37.764042, 44.397472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567341, 38.459682, 44.283852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825901, 38.160580, 44.344547>,  <36.981037, 37.981117, 44.380962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825901, 38.160580, 44.344547>,  <36.567341, 38.459682, 44.283852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825901, 38.160580, 44.344547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435136, 0.197919, -0.878342,
		0.626758, 0.633784, 0.453312,
		0.646398, -0.747761, 0.151735,
		37.019821, 37.936253, 44.390068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242985, 38.710667, 44.210316>,  <36.567341, 38.459682, 44.283852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242985, 38.710667, 44.210316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292351, 38.315910, 44.168713>,  <37.321972, 38.079056, 44.143749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292351, 38.315910, 44.168713>,  <37.242985, 38.710667, 44.210316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292351, 38.315910, 44.168713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531859, 0.154269, -0.832663,
		0.837792, 0.047446, 0.543925,
		0.123417, -0.986889, -0.104011,
		37.329376, 38.019844, 44.137508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.546093, 42.266621, 40.862980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493385, 42.443012, 40.507862>,  <27.461761, 42.548847, 40.294792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493385, 42.443012, 40.507862>,  <27.546093, 42.266621, 40.862980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493385, 42.443012, 40.507862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401830, -0.842481, -0.358828,
		-0.906184, 0.309459, 0.288211,
		-0.131770, 0.440976, -0.887793,
		27.453854, 42.575306, 40.241524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847157, 42.118202, 40.661312>,  <27.546093, 42.266621, 40.862980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847157, 42.118202, 40.661312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062227, 42.194111, 40.332706>,  <27.191271, 42.239655, 40.135544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.062227, 42.194111, 40.332706>,  <26.847157, 42.118202, 40.661312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062227, 42.194111, 40.332706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353069, -0.834125, -0.423766,
		-0.765665, 0.517902, -0.381489,
		0.537679, 0.189771, -0.821516,
		27.223532, 42.251041, 40.086250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427233, 41.934948, 40.222797>,  <26.847157, 42.118202, 40.661312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427233, 41.934948, 40.222797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746895, 41.971203, 39.985096>,  <26.938692, 41.992958, 39.842476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746895, 41.971203, 39.985096>,  <26.427233, 41.934948, 40.222797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746895, 41.971203, 39.985096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306228, -0.789288, -0.532212,
		-0.517275, 0.607296, -0.603008,
		0.799157, 0.090642, -0.594249,
		26.986643, 41.998394, 39.806820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144983, 41.896858, 39.466633>,  <26.427233, 41.934948, 40.222797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144983, 41.896858, 39.466633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530354, 41.790642, 39.452248>,  <26.761576, 41.726910, 39.443615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530354, 41.790642, 39.452248>,  <26.144983, 41.896858, 39.466633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530354, 41.790642, 39.452248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233460, -0.765888, -0.599093,
		0.131542, 0.585579, -0.799872,
		0.963428, -0.265544, -0.035963,
		26.819382, 41.710979, 39.441460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211060, 41.799171, 38.765167>,  <26.144983, 41.896858, 39.466633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211060, 41.799171, 38.765167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.523516, 41.604305, 38.921364>,  <26.710989, 41.487385, 39.015083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.523516, 41.604305, 38.921364>,  <26.211060, 41.799171, 38.765167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523516, 41.604305, 38.921364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146978, -0.751340, -0.643339,
		0.606809, 0.445144, -0.658505,
		0.781140, -0.487170, 0.390494,
		26.757858, 41.458153, 39.038513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692345, 41.642303, 38.104271>,  <26.211060, 41.799171, 38.765167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692345, 41.642303, 38.104271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766308, 41.408230, 38.420086>,  <26.810686, 41.267788, 38.609577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766308, 41.408230, 38.420086>,  <26.692345, 41.642303, 38.104271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766308, 41.408230, 38.420086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054513, -0.808264, -0.586291,
		0.981243, 0.065371, -0.181356,
		0.184910, -0.585180, 0.789540,
		26.821781, 41.232677, 38.656948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297630, 41.251995, 37.873894>,  <26.692345, 41.642303, 38.104271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297630, 41.251995, 37.873894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122765, 41.011566, 38.141506>,  <27.017845, 40.867310, 38.302074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122765, 41.011566, 38.141506>,  <27.297630, 41.251995, 37.873894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122765, 41.011566, 38.141506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156369, -0.783342, -0.601602,
		0.885684, -0.158383, 0.436438,
		-0.437164, -0.601075, 0.669027,
		26.991615, 40.831245, 38.342213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680706, 40.664291, 37.894287>,  <27.297630, 41.251995, 37.873894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680706, 40.664291, 37.894287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340044, 40.542046, 38.064598>,  <27.135647, 40.468697, 38.166786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340044, 40.542046, 38.064598>,  <27.680706, 40.664291, 37.894287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340044, 40.542046, 38.064598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014186, -0.798649, -0.601630,
		0.523914, -0.518420, 0.675836,
		-0.851653, -0.305615, 0.425778,
		27.084549, 40.450359, 38.192333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788727, 39.930462, 37.989754>,  <27.680706, 40.664291, 37.894287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788727, 39.930462, 37.989754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392881, 39.987328, 37.998276>,  <27.155375, 40.021446, 38.003387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.392881, 39.987328, 37.998276>,  <27.788727, 39.930462, 37.989754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392881, 39.987328, 37.998276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137834, -0.896279, -0.421528,
		-0.040833, -0.420086, 0.906565,
		-0.989613, 0.142168, 0.021304,
		27.095997, 40.029980, 38.004665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543636, 39.300049, 38.259521>,  <27.788727, 39.930462, 37.989754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543636, 39.300049, 38.259521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240444, 39.472801, 38.063992>,  <27.058529, 39.576450, 37.946674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240444, 39.472801, 38.063992>,  <27.543636, 39.300049, 38.259521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240444, 39.472801, 38.063992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169140, -0.853912, -0.492164,
		-0.629968, -0.290371, 0.720296,
		-0.757979, 0.431878, -0.488824,
		27.013050, 39.602364, 37.917343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951042, 38.761261, 38.247623>,  <27.543636, 39.300049, 38.259521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951042, 38.761261, 38.247623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866905, 39.018219, 37.952847>,  <26.816423, 39.172394, 37.775982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.866905, 39.018219, 37.952847>,  <26.951042, 38.761261, 38.247623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866905, 39.018219, 37.952847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375084, -0.749148, -0.545975,
		-0.902811, 0.161574, 0.398529,
		-0.210342, 0.642394, -0.736944,
		26.803802, 39.210938, 37.731762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352831, 38.524063, 38.080605>,  <26.951042, 38.761261, 38.247623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352831, 38.524063, 38.080605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434881, 38.763893, 37.771172>,  <26.484112, 38.907791, 37.585510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434881, 38.763893, 37.771172>,  <26.352831, 38.524063, 38.080605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434881, 38.763893, 37.771172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443574, -0.647607, -0.619554,
		-0.872448, 0.470228, 0.133116,
		0.205124, 0.599576, -0.773585,
		26.496418, 38.943768, 37.539097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706169, 38.506794, 37.774120>,  <26.352831, 38.524063, 38.080605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706169, 38.506794, 37.774120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.973972, 38.604927, 37.493671>,  <26.134655, 38.663807, 37.325401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.973972, 38.604927, 37.493671>,  <25.706169, 38.506794, 37.774120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973972, 38.604927, 37.493671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349669, -0.728667, -0.588876,
		-0.655355, 0.639418, -0.402063,
		0.669508, 0.245334, -0.701120,
		26.174826, 38.678528, 37.283337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454458, 38.284966, 37.224541>,  <25.706169, 38.506794, 37.774120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454458, 38.284966, 37.224541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813284, 38.345146, 37.058342>,  <26.028580, 38.381252, 36.958622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.813284, 38.345146, 37.058342>,  <25.454458, 38.284966, 37.224541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813284, 38.345146, 37.058342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179523, -0.735095, -0.653764,
		-0.403787, 0.661061, -0.632420,
		0.897066, 0.150447, -0.415498,
		26.082403, 38.390282, 36.933693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299501, 38.238476, 36.544285>,  <25.454458, 38.284966, 37.224541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299501, 38.238476, 36.544285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.689779, 38.163849, 36.590267>,  <25.923946, 38.119072, 36.617855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.689779, 38.163849, 36.590267>,  <25.299501, 38.238476, 36.544285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689779, 38.163849, 36.590267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110178, -0.871103, -0.478582,
		0.189423, 0.454284, -0.870486,
		0.975694, -0.186563, 0.114954,
		25.982487, 38.107880, 36.624752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560434, 38.245026, 35.985538>,  <25.299501, 38.238476, 36.544285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560434, 38.245026, 35.985538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.844183, 38.027874, 36.165348>,  <26.014433, 37.897583, 36.273235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.844183, 38.027874, 36.165348>,  <25.560434, 38.245026, 35.985538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844183, 38.027874, 36.165348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011250, -0.646414, -0.762904,
		0.704743, 0.536127, -0.464656,
		0.709373, -0.542879, 0.449524,
		26.056995, 37.865009, 36.300205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.110012, 38.136658, 35.504547>,  <25.560434, 38.245026, 35.985538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.110012, 38.136658, 35.504547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119249, 37.838558, 35.771099>,  <26.124792, 37.659698, 35.931030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119249, 37.838558, 35.771099>,  <26.110012, 38.136658, 35.504547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119249, 37.838558, 35.771099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069890, -0.666133, -0.742551,
		0.997288, -0.029427, -0.067468,
		0.023092, -0.745253, 0.666383,
		26.126177, 37.614983, 35.971012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223288, 37.517040, 35.213760>,  <26.110012, 38.136658, 35.504547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223288, 37.517040, 35.213760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.128645, 37.325207, 35.551758>,  <26.071859, 37.210106, 35.754555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.128645, 37.325207, 35.551758>,  <26.223288, 37.517040, 35.213760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128645, 37.325207, 35.551758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253557, -0.809075, -0.530195,
		0.937937, -0.339702, 0.069830,
		-0.236606, -0.479584, 0.844995,
		26.057663, 37.181332, 35.805256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635294, 36.959335, 35.229042>,  <26.223288, 37.517040, 35.213760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635294, 36.959335, 35.229042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308100, 36.903767, 35.452324>,  <26.111782, 36.870426, 35.586292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308100, 36.903767, 35.452324>,  <26.635294, 36.959335, 35.229042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308100, 36.903767, 35.452324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284653, -0.745500, -0.602662,
		0.499870, -0.651866, 0.570264,
		-0.817987, -0.138926, 0.558209,
		26.062704, 36.862087, 35.619785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598030, 36.237099, 35.390194>,  <26.635294, 36.959335, 35.229042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598030, 36.237099, 35.390194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228865, 36.390087, 35.407852>,  <26.007366, 36.481880, 35.418446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228865, 36.390087, 35.407852>,  <26.598030, 36.237099, 35.390194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228865, 36.390087, 35.407852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348695, -0.781740, -0.517005,
		-0.163233, -0.492542, 0.854843,
		-0.922912, 0.382472, 0.044141,
		25.951992, 36.504829, 35.421093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301836, 36.027733, 35.361416>,  <26.598030, 36.237099, 35.390194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301836, 36.027733, 35.361416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640114, 35.821739, 35.417400>,  <27.843081, 35.698143, 35.450993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.640114, 35.821739, 35.417400>,  <27.301836, 36.027733, 35.361416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640114, 35.821739, 35.417400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507525, 0.857194, 0.087386,
		-0.164980, -0.002866, 0.986293,
		0.845695, -0.514985, 0.139965,
		27.893822, 35.667244, 35.459389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559919, 36.245388, 36.023617>,  <27.301836, 36.027733, 35.361416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559919, 36.245388, 36.023617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886892, 36.062607, 35.883331>,  <28.083076, 35.952938, 35.799160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886892, 36.062607, 35.883331>,  <27.559919, 36.245388, 36.023617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886892, 36.062607, 35.883331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562784, 0.763356, 0.317116,
		0.122810, -0.456595, 0.881157,
		0.817430, -0.456956, -0.350712,
		28.132122, 35.925522, 35.778118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065050, 36.209782, 36.562332>,  <27.559919, 36.245388, 36.023617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065050, 36.209782, 36.562332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276459, 36.172493, 36.224819>,  <28.403303, 36.150120, 36.022312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276459, 36.172493, 36.224819>,  <28.065050, 36.209782, 36.562332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276459, 36.172493, 36.224819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632193, 0.706583, 0.317918,
		0.566568, -0.701463, 0.432379,
		0.528519, -0.093225, -0.843787,
		28.435015, 36.144527, 35.971684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773996, 36.258244, 36.696140>,  <28.065050, 36.209782, 36.562332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773996, 36.258244, 36.696140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.759649, 36.362823, 36.310318>,  <28.751041, 36.425571, 36.078827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.759649, 36.362823, 36.310318>,  <28.773996, 36.258244, 36.696140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.759649, 36.362823, 36.310318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653266, 0.736542, 0.175352,
		0.756278, -0.623820, -0.197212,
		-0.035867, 0.261447, -0.964551,
		28.748890, 36.441257, 36.020954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399519, 36.600609, 36.687134>,  <28.773996, 36.258244, 36.696140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399519, 36.600609, 36.687134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217581, 36.686710, 36.341469>,  <29.108418, 36.738373, 36.134068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217581, 36.686710, 36.341469>,  <29.399519, 36.600609, 36.687134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217581, 36.686710, 36.341469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399013, 0.916762, 0.018341,
		0.796182, -0.336471, -0.502873,
		-0.454844, 0.215256, -0.864165,
		29.081127, 36.751286, 36.082218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935738, 36.956745, 36.341850>,  <29.399519, 36.600609, 36.687134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935738, 36.956745, 36.341850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.608784, 37.077320, 36.145477>,  <29.412611, 37.149666, 36.027653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.608784, 37.077320, 36.145477>,  <29.935738, 36.956745, 36.341850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608784, 37.077320, 36.145477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286392, 0.952037, 0.107730,
		0.499864, -0.052543, -0.864509,
		-0.817384, 0.301439, -0.490937,
		29.363569, 37.167751, 35.998196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196512, 37.524345, 35.877644>,  <29.935738, 36.956745, 36.341850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196512, 37.524345, 35.877644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.804602, 37.554970, 35.951591>,  <29.569456, 37.573345, 35.995960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.804602, 37.554970, 35.951591>,  <30.196512, 37.524345, 35.877644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804602, 37.554970, 35.951591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106073, 0.982138, 0.155413,
		-0.169673, 0.171880, -0.970396,
		-0.979775, 0.076563, 0.184874,
		29.510670, 37.577938, 36.007053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901947, 38.087189, 35.445812>,  <30.196512, 37.524345, 35.877644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901947, 38.087189, 35.445812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635260, 38.047241, 35.741249>,  <29.475248, 38.023273, 35.918510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635260, 38.047241, 35.741249>,  <29.901947, 38.087189, 35.445812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635260, 38.047241, 35.741249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158995, 0.949111, 0.271863,
		-0.728154, 0.298688, -0.616909,
		-0.666717, -0.099873, 0.738589,
		29.435244, 38.017281, 35.962826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633575, 38.765808, 35.500690>,  <29.901947, 38.087189, 35.445812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633575, 38.765808, 35.500690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491106, 38.605747, 35.838451>,  <29.405624, 38.509708, 36.041107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491106, 38.605747, 35.838451>,  <29.633575, 38.765808, 35.500690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491106, 38.605747, 35.838451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003871, 0.903025, 0.429570,
		-0.934413, 0.156269, -0.320083,
		-0.356171, -0.400157, 0.844403,
		29.384254, 38.485699, 36.091774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115820, 39.278748, 35.744579>,  <29.633575, 38.765808, 35.500690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115820, 39.278748, 35.744579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244789, 39.060913, 36.054283>,  <29.322170, 38.930214, 36.240105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.244789, 39.060913, 36.054283>,  <29.115820, 39.278748, 35.744579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244789, 39.060913, 36.054283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073940, 0.829929, 0.552948,
		-0.943704, -0.121034, 0.307854,
		0.322422, -0.544581, 0.774258,
		29.341516, 38.897537, 36.286560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685423, 39.424782, 36.298176>,  <29.115820, 39.278748, 35.744579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685423, 39.424782, 36.298176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996721, 39.258198, 36.486176>,  <29.183500, 39.158249, 36.598976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996721, 39.258198, 36.486176>,  <28.685423, 39.424782, 36.298176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996721, 39.258198, 36.486176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067019, 0.799258, 0.597240,
		-0.624373, -0.433301, 0.649930,
		0.778246, -0.416458, 0.469995,
		29.230196, 39.133259, 36.627174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549934, 39.514473, 36.996132>,  <28.685423, 39.424782, 36.298176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549934, 39.514473, 36.996132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936140, 39.413033, 37.019695>,  <29.167864, 39.352169, 37.033833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.936140, 39.413033, 37.019695>,  <28.549934, 39.514473, 36.996132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936140, 39.413033, 37.019695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088521, 0.532538, 0.841765,
		-0.244842, -0.807521, 0.536622,
		0.965514, -0.253602, 0.058905,
		29.225794, 39.336952, 37.037365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842234, 39.421490, 37.691154>,  <28.549934, 39.514473, 36.996132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842234, 39.421490, 37.691154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177324, 39.503517, 37.488705>,  <29.378380, 39.552734, 37.367233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177324, 39.503517, 37.488705>,  <28.842234, 39.421490, 37.691154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177324, 39.503517, 37.488705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232730, 0.704368, 0.670598,
		0.494013, -0.679569, 0.542345,
		0.837728, 0.205065, -0.506123,
		29.428642, 39.565037, 37.336868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487782, 39.462601, 38.160728>,  <28.842234, 39.421490, 37.691154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487782, 39.462601, 38.160728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574957, 39.686874, 37.841194>,  <29.627262, 39.821438, 37.649475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.574957, 39.686874, 37.841194>,  <29.487782, 39.462601, 38.160728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574957, 39.686874, 37.841194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490698, 0.644580, 0.586287,
		0.843634, -0.519762, -0.134646,
		0.217940, 0.560683, -0.798835,
		29.640339, 39.855080, 37.601543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197126, 39.631416, 38.091011>,  <29.487782, 39.462601, 38.160728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197126, 39.631416, 38.091011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059586, 39.938541, 37.874779>,  <29.977062, 40.122818, 37.745037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059586, 39.938541, 37.874779>,  <30.197126, 39.631416, 38.091011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059586, 39.938541, 37.874779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526115, 0.634370, 0.566373,
		0.777798, -0.089661, -0.622086,
		-0.343851, 0.767812, -0.540584,
		29.956430, 40.168884, 37.712605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754021, 40.129093, 38.024845>,  <30.197126, 39.631416, 38.091011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754021, 40.129093, 38.024845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.417782, 40.334312, 37.955360>,  <30.216038, 40.457443, 37.913670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.417782, 40.334312, 37.955360>,  <30.754021, 40.129093, 38.024845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417782, 40.334312, 37.955360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356616, 0.765584, 0.535449,
		0.407703, 0.388148, -0.826510,
		-0.840597, 0.513051, -0.173711,
		30.165604, 40.488228, 37.903248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981899, 40.866589, 37.974197>,  <30.754021, 40.129093, 38.024845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981899, 40.866589, 37.974197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586987, 40.920570, 38.007809>,  <30.350039, 40.952957, 38.027973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586987, 40.920570, 38.007809>,  <30.981899, 40.866589, 37.974197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586987, 40.920570, 38.007809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158208, 0.885782, 0.436303,
		-0.015548, 0.444048, -0.895868,
		-0.987283, 0.134950, 0.084024,
		30.290802, 40.961056, 38.033016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916048, 41.618534, 37.878094>,  <30.981899, 40.866589, 37.974197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916048, 41.618534, 37.878094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569901, 41.516068, 38.050377>,  <30.362211, 41.454586, 38.153748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.569901, 41.516068, 38.050377>,  <30.916048, 41.618534, 37.878094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569901, 41.516068, 38.050377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031292, 0.885419, 0.463740,
		-0.500157, 0.387828, -0.774230,
		-0.865369, -0.256170, 0.430712,
		30.310289, 41.439217, 38.179592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468014, 42.164349, 37.694424>,  <30.916048, 41.618534, 37.878094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468014, 42.164349, 37.694424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.324501, 41.980446, 38.019360>,  <30.238394, 41.870106, 38.214321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.324501, 41.980446, 38.019360>,  <30.468014, 42.164349, 37.694424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324501, 41.980446, 38.019360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007871, 0.871743, 0.489900,
		-0.933388, 0.169374, -0.316386,
		-0.358783, -0.459757, 0.812341,
		30.216866, 41.842518, 38.263062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044193, 42.614193, 37.950546>,  <30.468014, 42.164349, 37.694424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044193, 42.614193, 37.950546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057962, 42.381905, 38.275894>,  <30.066223, 42.242531, 38.471104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057962, 42.381905, 38.275894>,  <30.044193, 42.614193, 37.950546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057962, 42.381905, 38.275894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045655, 0.812093, 0.581740,
		-0.998364, -0.057159, 0.001441,
		0.034422, -0.580722, 0.813374,
		30.068289, 42.207687, 38.519905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395771, 42.594124, 38.449409>,  <30.044193, 42.614193, 37.950546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395771, 42.594124, 38.449409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696369, 42.468884, 38.681694>,  <29.876728, 42.393738, 38.821064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696369, 42.468884, 38.681694>,  <29.395771, 42.594124, 38.449409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696369, 42.468884, 38.681694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142806, 0.782143, 0.606514,
		-0.644096, -0.538722, 0.543064,
		0.751496, -0.313100, 0.580708,
		29.921818, 42.374954, 38.855907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150738, 42.515961, 39.147514>,  <29.395771, 42.594124, 38.449409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150738, 42.515961, 39.147514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541229, 42.601562, 39.161259>,  <29.775524, 42.652924, 39.169506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541229, 42.601562, 39.161259>,  <29.150738, 42.515961, 39.147514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541229, 42.601562, 39.161259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175588, 0.687901, 0.704245,
		0.127076, -0.693537, 0.709125,
		0.976228, 0.214006, 0.034361,
		29.834097, 42.665764, 39.171566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.205139, 35.016567, 48.537037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.111023, 34.647930, 48.660522>,  <35.054554, 34.426746, 48.734615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.111023, 34.647930, 48.660522>,  <35.205139, 35.016567, 48.537037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111023, 34.647930, 48.660522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313254, 0.228780, 0.921701,
		-0.920061, 0.313570, 0.234864,
		-0.235286, -0.921593, 0.308718,
		35.040436, 34.371452, 48.753139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893391, 35.138824, 49.217594>,  <35.205139, 35.016567, 48.537037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893391, 35.138824, 49.217594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012932, 34.758621, 49.183620>,  <35.084656, 34.530499, 49.163239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012932, 34.758621, 49.183620>,  <34.893391, 35.138824, 49.217594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012932, 34.758621, 49.183620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389727, 0.040325, 0.920047,
		-0.871092, -0.308059, 0.382491,
		0.298852, -0.950512, -0.084932,
		35.102589, 34.473469, 49.158142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900127, 35.023262, 49.841419>,  <34.893391, 35.138824, 49.217594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900127, 35.023262, 49.841419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105537, 34.709038, 49.703327>,  <35.228783, 34.520504, 49.620472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.105537, 34.709038, 49.703327>,  <34.900127, 35.023262, 49.841419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105537, 34.709038, 49.703327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520829, -0.034386, 0.852968,
		-0.681929, -0.617829, 0.391484,
		0.513527, -0.785560, -0.345232,
		35.259594, 34.473370, 49.599758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919365, 34.569286, 50.450222>,  <34.900127, 35.023262, 49.841419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919365, 34.569286, 50.450222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219910, 34.475101, 50.203640>,  <35.400234, 34.418591, 50.055691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219910, 34.475101, 50.203640>,  <34.919365, 34.569286, 50.450222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219910, 34.475101, 50.203640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613339, -0.095471, 0.784029,
		-0.243464, -0.967182, 0.072687,
		0.751359, -0.235465, -0.616454,
		35.445316, 34.404461, 50.018703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201782, 34.030300, 50.729977>,  <34.919365, 34.569286, 50.450222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201782, 34.030300, 50.729977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508564, 34.129723, 50.493332>,  <35.692631, 34.189377, 50.351345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508564, 34.129723, 50.493332>,  <35.201782, 34.030300, 50.729977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508564, 34.129723, 50.493332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627843, -0.100056, 0.771882,
		0.132662, -0.963436, -0.232792,
		0.766951, 0.248556, -0.591613,
		35.738647, 34.204288, 50.315849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624363, 33.430073, 50.747238>,  <35.201782, 34.030300, 50.729977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624363, 33.430073, 50.747238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846886, 33.744812, 50.640358>,  <35.980400, 33.933655, 50.576229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846886, 33.744812, 50.640358>,  <35.624363, 33.430073, 50.747238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846886, 33.744812, 50.640358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664396, -0.228039, 0.711741,
		0.499101, -0.573470, -0.649639,
		0.556305, 0.786848, -0.267197,
		36.013779, 33.980865, 50.560200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219238, 33.201740, 50.617867>,  <35.624363, 33.430073, 50.747238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219238, 33.201740, 50.617867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299187, 33.592030, 50.653698>,  <36.347157, 33.826202, 50.675198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299187, 33.592030, 50.653698>,  <36.219238, 33.201740, 50.617867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299187, 33.592030, 50.653698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828697, -0.217113, 0.515871,
		0.522793, -0.028878, -0.851970,
		0.199871, 0.975719, 0.089574,
		36.359150, 33.884747, 50.680569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878319, 33.279385, 50.499359>,  <36.219238, 33.201740, 50.617867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878319, 33.279385, 50.499359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813385, 33.611660, 50.712379>,  <36.774426, 33.811024, 50.840191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.813385, 33.611660, 50.712379>,  <36.878319, 33.279385, 50.499359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813385, 33.611660, 50.712379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623226, -0.332117, 0.708017,
		0.765008, 0.446834, -0.463791,
		-0.162333, 0.830685, 0.532550,
		36.764687, 33.860867, 50.872143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512295, 33.498142, 50.871243>,  <36.878319, 33.279385, 50.499359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512295, 33.498142, 50.871243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222672, 33.702007, 51.057140>,  <37.048897, 33.824326, 51.168678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222672, 33.702007, 51.057140>,  <37.512295, 33.498142, 50.871243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222672, 33.702007, 51.057140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421737, -0.206035, 0.882999,
		0.545785, 0.835341, -0.065762,
		-0.724056, 0.509662, 0.464745,
		37.005455, 33.854904, 51.196564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893791, 34.024765, 51.338463>,  <37.512295, 33.498142, 50.871243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893791, 34.024765, 51.338463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.536221, 34.022869, 51.517738>,  <37.321678, 34.021732, 51.625301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.536221, 34.022869, 51.517738>,  <37.893791, 34.024765, 51.338463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536221, 34.022869, 51.517738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446290, -0.101909, 0.889067,
		0.041457, 0.994782, 0.093216,
		-0.893928, -0.004743, 0.448186,
		37.268044, 34.021446, 51.652195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958164, 34.474976, 51.907059>,  <37.893791, 34.024765, 51.338463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958164, 34.474976, 51.907059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669025, 34.207062, 51.975033>,  <37.495541, 34.046314, 52.015816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.669025, 34.207062, 51.975033>,  <37.958164, 34.474976, 51.907059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669025, 34.207062, 51.975033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369644, -0.167026, 0.914038,
		-0.583826, 0.723526, 0.368317,
		-0.722849, -0.669785, 0.169933,
		37.452171, 34.006126, 52.026012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774181, 34.544189, 52.596035>,  <37.958164, 34.474976, 51.907059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774181, 34.544189, 52.596035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667133, 34.173088, 52.491989>,  <37.602905, 33.950428, 52.429562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667133, 34.173088, 52.491989>,  <37.774181, 34.544189, 52.596035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667133, 34.173088, 52.491989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546196, -0.368468, 0.752264,
		-0.793755, 0.059252, 0.605345,
		-0.267624, -0.927750, -0.260110,
		37.586845, 33.894764, 52.413956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567085, 34.656025, 53.334442>,  <37.774181, 34.544189, 52.596035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567085, 34.656025, 53.334442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355148, 34.641407, 53.673367>,  <37.227985, 34.632637, 53.876720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355148, 34.641407, 53.673367>,  <37.567085, 34.656025, 53.334442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355148, 34.641407, 53.673367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527843, 0.767776, 0.363184,
		-0.663815, 0.639676, -0.387511,
		-0.529841, -0.036542, 0.847309,
		37.196198, 34.630444, 53.927559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127674, 35.292446, 53.427967>,  <37.567085, 34.656025, 53.334442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127674, 35.292446, 53.427967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245018, 35.111588, 53.764896>,  <37.315422, 35.003071, 53.967052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245018, 35.111588, 53.764896>,  <37.127674, 35.292446, 53.427967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245018, 35.111588, 53.764896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492760, 0.826540, 0.272066,
		-0.819225, 0.335249, 0.465272,
		0.293356, -0.452151, 0.842319,
		37.333023, 34.975941, 54.017593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400326, 35.517811, 53.500896>,  <37.127674, 35.292446, 53.427967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400326, 35.517811, 53.500896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079582, 35.673584, 53.682167>,  <35.887135, 35.767048, 53.790928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079582, 35.673584, 53.682167>,  <36.400326, 35.517811, 53.500896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079582, 35.673584, 53.682167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480057, 0.031696, -0.876664,
		-0.355762, -0.920511, 0.161532,
		-0.801859, 0.389429, 0.453174,
		35.839024, 35.790413, 53.818119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861301, 35.190842, 53.217125>,  <36.400326, 35.517811, 53.500896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861301, 35.190842, 53.217125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723667, 35.531197, 53.375916>,  <35.641087, 35.735409, 53.471191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723667, 35.531197, 53.375916>,  <35.861301, 35.190842, 53.217125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723667, 35.531197, 53.375916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438233, 0.228384, -0.869363,
		-0.830395, -0.473106, 0.294304,
		-0.344087, 0.850889, 0.396980,
		35.620441, 35.786465, 53.495010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219173, 35.190483, 53.097450>,  <35.861301, 35.190842, 53.217125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219173, 35.190483, 53.097450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308838, 35.573071, 53.172195>,  <35.362637, 35.802624, 53.217041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308838, 35.573071, 53.172195>,  <35.219173, 35.190483, 53.097450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308838, 35.573071, 53.172195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331142, 0.255089, -0.908446,
		-0.916568, 0.141759, 0.373908,
		0.224160, 0.956470, 0.186864,
		35.376087, 35.860012, 53.228256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653496, 35.518158, 52.852409>,  <35.219173, 35.190483, 53.097450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653496, 35.518158, 52.852409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898083, 35.834152, 52.870403>,  <35.044834, 36.023750, 52.881199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898083, 35.834152, 52.870403>,  <34.653496, 35.518158, 52.852409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898083, 35.834152, 52.870403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343660, 0.316349, -0.884207,
		-0.712744, 0.525205, 0.464925,
		0.611469, 0.789989, 0.044984,
		35.081524, 36.071148, 52.883900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276157, 36.113503, 52.635036>,  <34.653496, 35.518158, 52.852409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276157, 36.113503, 52.635036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658989, 36.224747, 52.602394>,  <34.888687, 36.291492, 52.582809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.658989, 36.224747, 52.602394>,  <34.276157, 36.113503, 52.635036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658989, 36.224747, 52.602394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193798, 0.404702, -0.893677,
		-0.215511, 0.871133, 0.441227,
		0.957078, 0.278106, -0.081606,
		34.946114, 36.308178, 52.577911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230686, 36.797539, 52.474987>,  <34.276157, 36.113503, 52.635036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230686, 36.797539, 52.474987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601181, 36.698864, 52.360985>,  <34.823479, 36.639660, 52.292583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601181, 36.698864, 52.360985>,  <34.230686, 36.797539, 52.474987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601181, 36.698864, 52.360985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171005, 0.398805, -0.900951,
		0.335915, 0.883232, 0.327203,
		0.926239, -0.246689, -0.285002,
		34.879051, 36.624859, 52.275486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530624, 37.440460, 52.106247>,  <34.230686, 36.797539, 52.474987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530624, 37.440460, 52.106247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703163, 37.111492, 51.957886>,  <34.806686, 36.914112, 51.868870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703163, 37.111492, 51.957886>,  <34.530624, 37.440460, 52.106247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703163, 37.111492, 51.957886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162281, 0.333683, -0.928612,
		0.887470, 0.460747, 0.010472,
		0.431350, -0.822415, -0.370905,
		34.832569, 36.864769, 51.846615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990349, 37.632275, 51.679733>,  <34.530624, 37.440460, 52.106247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990349, 37.632275, 51.679733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940582, 37.260475, 51.540848>,  <34.910721, 37.037395, 51.457516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940582, 37.260475, 51.540848>,  <34.990349, 37.632275, 51.679733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940582, 37.260475, 51.540848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055265, 0.342894, -0.937747,
		0.990690, -0.135861, 0.008706,
		-0.124418, -0.929497, -0.347209,
		34.903255, 36.981625, 51.436684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088200, 37.784416, 50.957039>,  <34.990349, 37.632275, 51.679733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088200, 37.784416, 50.957039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062618, 37.386856, 50.992992>,  <35.047268, 37.148319, 51.014565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062618, 37.386856, 50.992992>,  <35.088200, 37.784416, 50.957039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062618, 37.386856, 50.992992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062928, -0.093902, -0.993591,
		0.995967, -0.057891, 0.068550,
		-0.063957, -0.993897, 0.089880,
		35.043430, 37.088688, 51.019955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671608, 37.414570, 50.693913>,  <35.088200, 37.784416, 50.957039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671608, 37.414570, 50.693913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327652, 37.217606, 50.640060>,  <35.121281, 37.099426, 50.607750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327652, 37.217606, 50.640060>,  <35.671608, 37.414570, 50.693913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327652, 37.217606, 50.640060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149621, 0.009043, -0.988702,
		0.488064, -0.870316, 0.065899,
		-0.859888, -0.492410, -0.134631,
		35.069687, 37.069881, 50.599670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823883, 36.918095, 50.297607>,  <35.671608, 37.414570, 50.693913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823883, 36.918095, 50.297607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426491, 36.938789, 50.256966>,  <35.188057, 36.951206, 50.232582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426491, 36.938789, 50.256966>,  <35.823883, 36.918095, 50.297607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426491, 36.938789, 50.256966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088544, -0.211322, -0.973398,
		-0.071829, -0.976046, 0.205363,
		-0.993479, 0.051734, -0.101602,
		35.128448, 36.954311, 50.226486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663410, 36.335033, 49.911922>,  <35.823883, 36.918095, 50.297607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663410, 36.335033, 49.911922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351212, 36.580360, 49.863472>,  <35.163891, 36.727554, 49.834404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.351212, 36.580360, 49.863472>,  <35.663410, 36.335033, 49.911922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351212, 36.580360, 49.863472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046377, -0.136411, -0.989566,
		-0.623439, -0.777969, 0.078024,
		-0.780495, 0.613316, -0.121123,
		35.117062, 36.764355, 49.827133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294300, 36.020554, 49.340305>,  <35.663410, 36.335033, 49.911922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294300, 36.020554, 49.340305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160244, 36.397301, 49.349781>,  <35.079811, 36.623348, 49.355469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160244, 36.397301, 49.349781>,  <35.294300, 36.020554, 49.340305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160244, 36.397301, 49.349781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067850, 0.049209, -0.996481,
		-0.939723, -0.332351, -0.080398,
		-0.335137, 0.941871, 0.023693,
		35.059704, 36.679863, 49.356888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758789, 36.038460, 48.815712>,  <35.294300, 36.020554, 49.340305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758789, 36.038460, 48.815712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889275, 36.412933, 48.868080>,  <34.967567, 36.637619, 48.899502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889275, 36.412933, 48.868080>,  <34.758789, 36.038460, 48.815712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889275, 36.412933, 48.868080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019473, 0.131814, -0.991083,
		-0.945094, 0.325857, 0.024770,
		0.326217, 0.936185, 0.130922,
		34.987141, 36.693790, 48.907356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029045, 36.075260, 48.867386>,  <34.758789, 36.038460, 48.815712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029045, 36.075260, 48.867386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637905, 36.025131, 48.800331>,  <33.403221, 35.995052, 48.760098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637905, 36.025131, 48.800331>,  <34.029045, 36.075260, 48.867386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637905, 36.025131, 48.800331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154553, -0.107752, 0.982091,
		-0.141140, 0.986247, 0.085996,
		-0.977851, -0.125321, -0.167635,
		33.344551, 35.987534, 48.750042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687637, 36.345028, 49.428925>,  <34.029045, 36.075260, 48.867386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687637, 36.345028, 49.428925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379665, 36.122822, 49.303322>,  <33.194881, 35.989498, 49.227959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379665, 36.122822, 49.303322>,  <33.687637, 36.345028, 49.428925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379665, 36.122822, 49.303322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374586, -0.004927, 0.927179,
		-0.516613, 0.831489, -0.204296,
		-0.769933, -0.555519, -0.314009,
		33.148685, 35.956165, 49.209118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109390, 36.558029, 49.769417>,  <33.687637, 36.345028, 49.428925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109390, 36.558029, 49.769417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011303, 36.185291, 49.662434>,  <32.952450, 35.961647, 49.598244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011303, 36.185291, 49.662434>,  <33.109390, 36.558029, 49.769417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011303, 36.185291, 49.662434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301227, -0.188994, 0.934635,
		-0.921483, 0.309757, -0.234352,
		-0.245218, -0.931843, -0.267462,
		32.937737, 35.905739, 49.582195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613781, 36.396294, 50.269218>,  <33.109390, 36.558029, 49.769417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613781, 36.396294, 50.269218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725712, 36.043259, 50.118095>,  <32.792870, 35.831436, 50.027420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725712, 36.043259, 50.118095>,  <32.613781, 36.396294, 50.269218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725712, 36.043259, 50.118095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189837, -0.436626, 0.879386,
		-0.941095, -0.174353, -0.289726,
		0.279826, -0.882586, -0.377808,
		32.809658, 35.778484, 50.004753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090683, 35.838829, 50.567219>,  <32.613781, 36.396294, 50.269218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090683, 35.838829, 50.567219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430435, 35.657379, 50.459312>,  <32.634289, 35.548508, 50.394569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430435, 35.657379, 50.459312>,  <32.090683, 35.838829, 50.567219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430435, 35.657379, 50.459312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056933, -0.429392, 0.901322,
		-0.524700, -0.780924, -0.338891,
		0.849382, -0.453629, -0.269762,
		32.685249, 35.521290, 50.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027599, 35.206226, 50.880547>,  <32.090683, 35.838829, 50.567219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027599, 35.206226, 50.880547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418468, 35.208179, 50.795597>,  <32.652992, 35.209351, 50.744625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418468, 35.208179, 50.795597>,  <32.027599, 35.206226, 50.880547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418468, 35.208179, 50.795597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165464, -0.644469, 0.746512,
		-0.133225, -0.764615, -0.630568,
		0.977176, 0.004882, -0.212376,
		32.711620, 35.209644, 50.731884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207584, 34.464417, 50.815292>,  <32.027599, 35.206226, 50.880547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207584, 34.464417, 50.815292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530361, 34.678989, 50.914158>,  <32.724026, 34.807732, 50.973476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530361, 34.678989, 50.914158>,  <32.207584, 34.464417, 50.815292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530361, 34.678989, 50.914158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128350, -0.567731, 0.813147,
		0.576518, -0.624438, -0.526976,
		0.806941, 0.536430, 0.247161,
		32.772442, 34.839920, 50.988308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297615, 33.874844, 50.384148>,  <32.207584, 34.464417, 50.815292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297615, 33.874844, 50.384148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012707, 33.597122, 50.342941>,  <31.841761, 33.430489, 50.318218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.012707, 33.597122, 50.342941>,  <32.297615, 33.874844, 50.384148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012707, 33.597122, 50.342941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079405, 0.225526, -0.970996,
		0.697397, -0.683434, -0.215767,
		-0.712273, -0.694302, -0.103013,
		31.799025, 33.388832, 50.312038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418461, 33.494968, 49.778301>,  <32.297615, 33.874844, 50.384148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418461, 33.494968, 49.778301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036556, 33.399067, 49.848663>,  <31.807413, 33.341526, 49.890881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036556, 33.399067, 49.848663>,  <32.418461, 33.494968, 49.778301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036556, 33.399067, 49.848663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173539, -0.031101, -0.984336,
		0.241468, -0.970336, -0.011913,
		-0.954766, -0.239753, 0.175901,
		31.750126, 33.327141, 49.901432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278896, 33.065086, 49.141144>,  <32.418461, 33.494968, 49.778301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278896, 33.065086, 49.141144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917027, 33.164387, 49.279675>,  <31.699905, 33.223969, 49.362793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917027, 33.164387, 49.279675>,  <32.278896, 33.065086, 49.141144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917027, 33.164387, 49.279675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320666, 0.138599, -0.936997,
		-0.280614, -0.958728, -0.045780,
		-0.904671, 0.248254, 0.346325,
		31.645626, 33.238861, 49.383572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810978, 32.625648, 48.805622>,  <32.278896, 33.065086, 49.141144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810978, 32.625648, 48.805622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600821, 32.939487, 48.937302>,  <31.474726, 33.127792, 49.016308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600821, 32.939487, 48.937302>,  <31.810978, 32.625648, 48.805622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600821, 32.939487, 48.937302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348544, 0.154488, -0.924473,
		-0.776196, -0.600451, 0.192300,
		-0.525392, 0.784597, 0.329196,
		31.443203, 33.174866, 49.036060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183678, 32.477051, 48.478672>,  <31.810978, 32.625648, 48.805622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183678, 32.477051, 48.478672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156981, 32.863937, 48.576683>,  <31.140963, 33.096069, 48.635490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156981, 32.863937, 48.576683>,  <31.183678, 32.477051, 48.478672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156981, 32.863937, 48.576683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389521, 0.200830, -0.898855,
		-0.918596, -0.155434, 0.363347,
		-0.066741, 0.967216, 0.245026,
		31.136957, 33.154102, 48.650192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512587, 32.626389, 48.343655>,  <31.183678, 32.477051, 48.478672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512587, 32.626389, 48.343655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.681742, 32.988693, 48.354656>,  <30.783234, 33.206078, 48.361256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.681742, 32.988693, 48.354656>,  <30.512587, 32.626389, 48.343655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681742, 32.988693, 48.354656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259206, 0.149990, -0.954104,
		-0.868320, 0.396349, 0.298209,
		0.422887, 0.905765, 0.027503,
		30.808607, 33.260422, 48.362907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045870, 33.166992, 47.990009>,  <30.512587, 32.626389, 48.343655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045870, 33.166992, 47.990009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.413736, 33.324070, 47.990658>,  <30.634457, 33.418316, 47.991047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.413736, 33.324070, 47.990658>,  <30.045870, 33.166992, 47.990009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413736, 33.324070, 47.990658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096765, 0.230603, -0.968225,
		-0.380594, 0.890286, 0.250077,
		0.919666, 0.392699, 0.001617,
		30.689636, 33.441879, 47.991142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.497055, 30.853197, 51.906818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.357758, 31.227619, 51.886738>,  <38.274178, 31.452272, 51.874691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.357758, 31.227619, 51.886738>,  <38.497055, 30.853197, 51.906818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357758, 31.227619, 51.886738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585288, -0.258955, -0.768362,
		-0.732230, -0.238200, 0.638044,
		-0.348248, 0.936057, -0.050199,
		38.253284, 31.508436, 51.871677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916843, 30.686718, 51.788383>,  <38.497055, 30.853197, 51.906818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916843, 30.686718, 51.788383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.925728, 31.073355, 51.686245>,  <37.931061, 31.305338, 51.624962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.925728, 31.073355, 51.686245>,  <37.916843, 30.686718, 51.788383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925728, 31.073355, 51.686245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522749, -0.206484, -0.827102,
		-0.852197, 0.151856, 0.500700,
		0.022214, 0.966595, -0.255347,
		37.932392, 31.363333, 51.609642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258865, 30.874741, 51.599842>,  <37.916843, 30.686718, 51.788383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258865, 30.874741, 51.599842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.508217, 31.122908, 51.409481>,  <37.657829, 31.271809, 51.295265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.508217, 31.122908, 51.409481>,  <37.258865, 30.874741, 51.599842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508217, 31.122908, 51.409481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404509, -0.264974, -0.875306,
		-0.669156, 0.738154, 0.085785,
		0.623380, 0.620417, -0.475899,
		37.695232, 31.309032, 51.266712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792477, 31.350868, 51.261471>,  <37.258865, 30.874741, 51.599842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792477, 31.350868, 51.261471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.143032, 31.378609, 51.070835>,  <37.353367, 31.395252, 50.956455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.143032, 31.378609, 51.070835>,  <36.792477, 31.350868, 51.261471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143032, 31.378609, 51.070835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467400, -0.116117, -0.876387,
		-0.116117, 0.990812, -0.069349,
		0.876387, 0.069349, -0.476588,
		37.405949, 31.399414, 50.927860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701420, 31.888847, 50.746868>,  <36.792477, 31.350868, 51.261471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701420, 31.888847, 50.746868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029060, 31.697964, 50.619534>,  <37.225647, 31.583433, 50.543133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.029060, 31.697964, 50.619534>,  <36.701420, 31.888847, 50.746868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029060, 31.697964, 50.619534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412887, -0.105195, -0.904687,
		0.398237, 0.872471, -0.283199,
		0.819104, -0.477209, -0.318339,
		37.274792, 31.554800, 50.524033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899921, 32.336998, 50.242527>,  <36.701420, 31.888847, 50.746868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899921, 32.336998, 50.242527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081398, 31.986458, 50.177814>,  <37.190285, 31.776134, 50.138988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081398, 31.986458, 50.177814>,  <36.899921, 32.336998, 50.242527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081398, 31.986458, 50.177814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349894, -0.008211, -0.936754,
		0.819594, 0.481608, -0.310354,
		0.453696, -0.876348, -0.161781,
		37.217506, 31.723553, 50.129280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173100, 32.375439, 49.635792>,  <36.899921, 32.336998, 50.242527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173100, 32.375439, 49.635792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.133518, 31.979521, 49.676819>,  <37.109768, 31.741970, 49.701435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.133518, 31.979521, 49.676819>,  <37.173100, 32.375439, 49.635792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133518, 31.979521, 49.676819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354544, -0.061239, -0.933032,
		0.929788, -0.128694, -0.344865,
		-0.098957, -0.989792, 0.102567,
		37.103832, 31.682583, 49.707588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618916, 32.088909, 49.140450>,  <37.173100, 32.375439, 49.635792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618916, 32.088909, 49.140450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357876, 31.793024, 49.206116>,  <37.201252, 31.615494, 49.245514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357876, 31.793024, 49.206116>,  <37.618916, 32.088909, 49.140450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357876, 31.793024, 49.206116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014109, -0.228485, -0.973445,
		0.757575, -0.632950, 0.159545,
		-0.652596, -0.739709, 0.164164,
		37.162098, 31.571112, 49.255363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905949, 31.574390, 48.810829>,  <37.618916, 32.088909, 49.140450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905949, 31.574390, 48.810829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.532417, 31.433903, 48.837975>,  <37.308296, 31.349609, 48.854263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.532417, 31.433903, 48.837975>,  <37.905949, 31.574390, 48.810829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532417, 31.433903, 48.837975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040105, -0.291321, -0.955784,
		0.355460, -0.889819, 0.286130,
		-0.933831, -0.351219, 0.067867,
		37.252270, 31.328537, 48.858334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903431, 30.941517, 48.325867>,  <37.905949, 31.574390, 48.810829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903431, 30.941517, 48.325867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.531109, 31.080435, 48.371437>,  <37.307716, 31.163786, 48.398781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.531109, 31.080435, 48.371437>,  <37.903431, 30.941517, 48.325867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531109, 31.080435, 48.371437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113114, 0.022690, -0.993323,
		-0.347564, -0.937480, 0.018164,
		-0.930809, 0.347298, 0.113929,
		37.251865, 31.184624, 48.405617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384323, 30.472250, 48.003250>,  <37.903431, 30.941517, 48.325867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384323, 30.472250, 48.003250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.238674, 30.844311, 48.022141>,  <37.151287, 31.067547, 48.033474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.238674, 30.844311, 48.022141>,  <37.384323, 30.472250, 48.003250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238674, 30.844311, 48.022141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121713, 0.002753, -0.992561,
		-0.923365, -0.367159, 0.112210,
		-0.364119, 0.930154, 0.047230,
		37.129440, 31.123358, 48.036308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870922, 30.467791, 47.532448>,  <37.384323, 30.472250, 48.003250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870922, 30.467791, 47.532448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.957649, 30.853643, 47.592415>,  <37.009686, 31.085155, 47.628395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.957649, 30.853643, 47.592415>,  <36.870922, 30.467791, 47.532448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957649, 30.853643, 47.592415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014867, 0.150287, -0.988531,
		-0.976098, 0.216562, 0.018244,
		0.216820, 0.964632, 0.149914,
		37.022694, 31.143032, 47.637390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065613, 30.381262, 47.702808>,  <36.870922, 30.467791, 47.532448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065613, 30.381262, 47.702808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731770, 30.171650, 47.634899>,  <35.531464, 30.045883, 47.594154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731770, 30.171650, 47.634899>,  <36.065613, 30.381262, 47.702808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731770, 30.171650, 47.634899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258752, 0.100877, 0.960662,
		-0.486290, 0.845704, -0.219787,
		-0.834607, -0.524031, -0.169772,
		35.481388, 30.014441, 47.583969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452408, 30.747217, 47.840096>,  <36.065613, 30.381262, 47.702808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452408, 30.747217, 47.840096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398262, 30.353779, 47.887791>,  <35.365776, 30.117716, 47.916409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.398262, 30.353779, 47.887791>,  <35.452408, 30.747217, 47.840096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398262, 30.353779, 47.887791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211030, 0.146208, 0.966483,
		-0.968061, 0.105665, -0.227360,
		-0.135365, -0.983594, 0.119240,
		35.357651, 30.058701, 47.923561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850056, 30.693302, 48.167164>,  <35.452408, 30.747217, 47.840096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850056, 30.693302, 48.167164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.020641, 30.338642, 48.238697>,  <35.122993, 30.125847, 48.281616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.020641, 30.338642, 48.238697>,  <34.850056, 30.693302, 48.167164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020641, 30.338642, 48.238697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484160, -0.056772, 0.873136,
		-0.764012, -0.458946, -0.453492,
		0.426468, -0.886648, 0.178829,
		35.148582, 30.072647, 48.292347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281311, 30.273722, 48.380516>,  <34.850056, 30.693302, 48.167164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281311, 30.273722, 48.380516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.613750, 30.084759, 48.497887>,  <34.813213, 29.971380, 48.568310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.613750, 30.084759, 48.497887>,  <34.281311, 30.273722, 48.380516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613750, 30.084759, 48.497887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419715, -0.186677, 0.888252,
		-0.364842, -0.861383, -0.353424,
		0.831101, -0.472409, 0.293427,
		34.863083, 29.943037, 48.585915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038372, 29.665787, 48.689816>,  <34.281311, 30.273722, 48.380516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038372, 29.665787, 48.689816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403049, 29.747177, 48.832596>,  <34.621857, 29.796011, 48.918262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.403049, 29.747177, 48.832596>,  <34.038372, 29.665787, 48.689816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403049, 29.747177, 48.832596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299443, -0.265811, 0.916340,
		0.281335, -0.942307, -0.181409,
		0.911693, 0.203477, 0.356949,
		34.676559, 29.808220, 48.939682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063919, 29.223606, 49.372391>,  <34.038372, 29.665787, 48.689816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063919, 29.223606, 49.372391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.381092, 29.466169, 49.396122>,  <34.571396, 29.611708, 49.410358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.381092, 29.466169, 49.396122>,  <34.063919, 29.223606, 49.372391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381092, 29.466169, 49.396122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047896, -0.035028, 0.998238,
		0.607419, -0.794381, 0.001270,
		0.792937, 0.606410, 0.059324,
		34.618973, 29.648092, 49.413918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574234, 28.897745, 49.868713>,  <34.063919, 29.223606, 49.372391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574234, 28.897745, 49.868713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.674580, 29.284603, 49.852215>,  <34.734787, 29.516718, 49.842316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.674580, 29.284603, 49.852215>,  <34.574234, 28.897745, 49.868713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674580, 29.284603, 49.852215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128457, 0.075493, 0.988837,
		0.959462, -0.242761, 0.143175,
		0.250860, 0.967144, -0.041248,
		34.749836, 29.574747, 49.839840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072117, 28.933926, 50.287033>,  <34.574234, 28.897745, 49.868713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072117, 28.933926, 50.287033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.923328, 29.304974, 50.273403>,  <34.834057, 29.527603, 50.265224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.923328, 29.304974, 50.273403>,  <35.072117, 28.933926, 50.287033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923328, 29.304974, 50.273403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050545, 0.016413, 0.998587,
		0.926869, 0.373163, 0.040781,
		-0.371967, 0.927621, -0.034074,
		34.811737, 29.583260, 50.263180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419914, 29.352776, 50.836597>,  <35.072117, 28.933926, 50.287033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419914, 29.352776, 50.836597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080090, 29.539522, 50.738392>,  <34.876194, 29.651569, 50.679470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080090, 29.539522, 50.738392>,  <35.419914, 29.352776, 50.836597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080090, 29.539522, 50.738392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148067, 0.235651, 0.960492,
		0.506274, 0.852353, -0.131074,
		-0.849566, 0.466864, -0.245509,
		34.825218, 29.679581, 50.664738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422890, 30.003653, 51.187958>,  <35.419914, 29.352776, 50.836597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422890, 30.003653, 51.187958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.040638, 29.928802, 51.096958>,  <34.811287, 29.883892, 51.042358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.040638, 29.928802, 51.096958>,  <35.422890, 30.003653, 51.187958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040638, 29.928802, 51.096958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245219, 0.077456, 0.966369,
		-0.163212, 0.979277, -0.119906,
		-0.955630, -0.187126, -0.227496,
		34.753948, 29.872665, 51.028709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197872, 30.538153, 51.525414>,  <35.422890, 30.003653, 51.187958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197872, 30.538153, 51.525414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892788, 30.284950, 51.472374>,  <34.709740, 30.133028, 51.440552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.892788, 30.284950, 51.472374>,  <35.197872, 30.538153, 51.525414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892788, 30.284950, 51.472374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290834, 0.152574, 0.944530,
		-0.577662, 0.758963, -0.300469,
		-0.762707, -0.633006, -0.132596,
		34.663975, 30.095049, 51.432594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634010, 30.801687, 51.874226>,  <35.197872, 30.538153, 51.525414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634010, 30.801687, 51.874226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469196, 30.443869, 51.804932>,  <34.370308, 30.229177, 51.763355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.469196, 30.443869, 51.804932>,  <34.634010, 30.801687, 51.874226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469196, 30.443869, 51.804932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520587, 0.075081, 0.850501,
		-0.747808, 0.440620, -0.496626,
		-0.412035, -0.894548, -0.173234,
		34.345585, 30.175505, 51.752960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952839, 30.931179, 51.874111>,  <34.634010, 30.801687, 51.874226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952839, 30.931179, 51.874111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.017590, 30.548685, 51.971611>,  <34.056438, 30.319189, 52.030113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.017590, 30.548685, 51.971611>,  <33.952839, 30.931179, 51.874111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017590, 30.548685, 51.971611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485974, 0.137732, 0.863053,
		-0.858852, -0.258163, -0.442409,
		0.161875, -0.956233, 0.243752,
		34.066151, 30.261816, 52.044735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306072, 30.670696, 52.073746>,  <33.952839, 30.931179, 51.874111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306072, 30.670696, 52.073746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.557686, 30.411669, 52.245781>,  <33.708652, 30.256252, 52.349003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.557686, 30.411669, 52.245781>,  <33.306072, 30.670696, 52.073746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557686, 30.411669, 52.245781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376531, 0.230229, 0.897340,
		-0.680107, -0.726396, -0.099008,
		0.629030, -0.647567, 0.430091,
		33.746395, 30.217400, 52.374809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620716, 31.017122, 52.119514>,  <33.306072, 30.670696, 52.073746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620716, 31.017122, 52.119514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.403824, 31.316973, 52.271328>,  <32.273689, 31.496883, 52.362415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.403824, 31.316973, 52.271328>,  <32.620716, 31.017122, 52.119514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403824, 31.316973, 52.271328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009251, 0.446350, -0.894811,
		-0.840181, -0.488702, -0.235088,
		-0.542228, 0.749627, 0.379536,
		32.241154, 31.541861, 52.385189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006332, 31.162058, 51.692127>,  <32.620716, 31.017122, 52.119514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006332, 31.162058, 51.692127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048450, 31.496870, 51.906898>,  <32.073723, 31.697758, 52.035759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.048450, 31.496870, 51.906898>,  <32.006332, 31.162058, 51.692127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048450, 31.496870, 51.906898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254937, 0.544606, -0.799007,
		-0.961207, -0.052747, 0.270737,
		0.105299, 0.837032, 0.536926,
		32.080040, 31.747980, 52.067978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429876, 31.539019, 51.590744>,  <32.006332, 31.162058, 51.692127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429876, 31.539019, 51.590744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.661509, 31.813471, 51.766876>,  <31.800488, 31.978142, 51.872555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.661509, 31.813471, 51.766876>,  <31.429876, 31.539019, 51.590744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661509, 31.813471, 51.766876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364338, 0.700966, -0.613110,
		-0.729330, 0.194611, 0.655900,
		0.579082, 0.686129, 0.440331,
		31.835234, 32.019310, 51.898975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974648, 32.154385, 51.675430>,  <31.429876, 31.539019, 51.590744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974648, 32.154385, 51.675430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363871, 32.245693, 51.662453>,  <31.597404, 32.300480, 51.654667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.363871, 32.245693, 51.662453>,  <30.974648, 32.154385, 51.675430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363871, 32.245693, 51.662453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170226, 0.616332, -0.768868,
		-0.155515, 0.753675, 0.638584,
		0.973056, 0.228274, -0.032447,
		31.655788, 32.314175, 51.652718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073181, 32.962799, 51.665096>,  <30.974648, 32.154385, 51.675430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073181, 32.962799, 51.665096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413307, 32.802155, 51.529053>,  <31.617382, 32.705769, 51.447426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413307, 32.802155, 51.529053>,  <31.073181, 32.962799, 51.665096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413307, 32.802155, 51.529053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048864, 0.703718, -0.708797,
		0.524004, 0.586080, 0.618005,
		0.850313, -0.401611, -0.340112,
		31.668402, 32.681671, 51.427017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530577, 33.565239, 51.448215>,  <31.073181, 32.962799, 51.665096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530577, 33.565239, 51.448215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669815, 33.242867, 51.256676>,  <31.753359, 33.049442, 51.141750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669815, 33.242867, 51.256676>,  <31.530577, 33.565239, 51.448215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669815, 33.242867, 51.256676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103790, 0.540792, -0.834729,
		0.931695, 0.240867, 0.271896,
		0.348097, -0.805933, -0.478853,
		31.774244, 33.001087, 51.113018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130161, 33.806534, 51.083782>,  <31.530577, 33.565239, 51.448215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130161, 33.806534, 51.083782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970852, 33.484947, 50.907139>,  <31.875267, 33.291996, 50.801151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970852, 33.484947, 50.907139>,  <32.130161, 33.806534, 51.083782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970852, 33.484947, 50.907139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092892, 0.514315, -0.852556,
		0.912552, -0.298526, -0.279518,
		-0.398270, -0.803967, -0.441609,
		31.851370, 33.243755, 50.774658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806915, 33.879482, 51.315475>,  <32.130161, 33.806534, 51.083782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806915, 33.879482, 51.315475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886772, 34.269543, 51.353893>,  <32.934685, 34.503578, 51.376945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.886772, 34.269543, 51.353893>,  <32.806915, 33.879482, 51.315475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886772, 34.269543, 51.353893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336443, -0.160281, 0.927964,
		0.920298, -0.152947, -0.360081,
		0.199643, 0.975150, 0.096048,
		32.946667, 34.562088, 51.382710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401501, 33.983078, 51.773758>,  <32.806915, 33.879482, 51.315475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401501, 33.983078, 51.773758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239365, 34.347370, 51.805424>,  <33.142082, 34.565945, 51.824425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239365, 34.347370, 51.805424>,  <33.401501, 33.983078, 51.773758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239365, 34.347370, 51.805424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309856, 0.055402, 0.949168,
		0.860053, 0.409262, -0.304653,
		-0.405337, 0.910733, 0.079164,
		33.117764, 34.620590, 51.829174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864613, 34.360592, 52.181362>,  <33.401501, 33.983078, 51.773758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864613, 34.360592, 52.181362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.526707, 34.573269, 52.205608>,  <33.323963, 34.700874, 52.220158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.526707, 34.573269, 52.205608>,  <33.864613, 34.360592, 52.181362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526707, 34.573269, 52.205608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166697, 0.153811, 0.973938,
		0.508515, 0.832852, -0.218565,
		-0.844763, 0.531696, 0.060618,
		33.273277, 34.732777, 52.223793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001774, 34.821499, 52.682835>,  <33.864613, 34.360592, 52.181362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001774, 34.821499, 52.682835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.613556, 34.917850, 52.681213>,  <33.380627, 34.975662, 52.680241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.613556, 34.917850, 52.681213>,  <34.001774, 34.821499, 52.682835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613556, 34.917850, 52.681213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066419, 0.283695, 0.956612,
		0.231579, 0.928167, -0.291338,
		-0.970546, 0.240882, -0.004050,
		33.322392, 34.990116, 52.679996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892715, 35.563534, 52.961254>,  <34.001774, 34.821499, 52.682835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892715, 35.563534, 52.961254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525146, 35.407761, 52.986309>,  <33.304604, 35.314297, 53.001343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.525146, 35.407761, 52.986309>,  <33.892715, 35.563534, 52.961254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525146, 35.407761, 52.986309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065023, 0.306195, 0.949745,
		-0.389038, 0.868671, -0.306692,
		-0.918924, -0.389429, 0.062637,
		33.249470, 35.290932, 53.005100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420536, 36.094933, 53.186050>,  <33.892715, 35.563534, 52.961254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420536, 36.094933, 53.186050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.271538, 35.739380, 53.292736>,  <33.182140, 35.526047, 53.356747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.271538, 35.739380, 53.292736>,  <33.420536, 36.094933, 53.186050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271538, 35.739380, 53.292736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109891, 0.327623, 0.938396,
		-0.921506, 0.320235, -0.219718,
		-0.372492, -0.888883, 0.266715,
		33.159790, 35.472713, 53.372749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826725, 36.265251, 53.643917>,  <33.420536, 36.094933, 53.186050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826725, 36.265251, 53.643917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915188, 35.880093, 53.705784>,  <32.968266, 35.648998, 53.742905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915188, 35.880093, 53.705784>,  <32.826725, 36.265251, 53.643917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915188, 35.880093, 53.705784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080798, 0.139955, 0.986856,
		-0.971885, -0.230748, -0.046848,
		0.221158, -0.962896, 0.154664,
		32.981537, 35.591225, 53.752182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352829, 36.029022, 54.119045>,  <32.826725, 36.265251, 53.643917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352829, 36.029022, 54.119045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647297, 35.758629, 54.132244>,  <32.823978, 35.596394, 54.140163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647297, 35.758629, 54.132244>,  <32.352829, 36.029022, 54.119045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647297, 35.758629, 54.132244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019219, 0.069612, 0.997389,
		-0.676520, -0.733617, 0.064238,
		0.736173, -0.675988, 0.032995,
		32.868149, 35.555832, 54.142143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118690, 35.590839, 54.632103>,  <32.352829, 36.029022, 54.119045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118690, 35.590839, 54.632103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.514782, 35.537003, 54.617546>,  <32.752438, 35.504700, 54.608810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.514782, 35.537003, 54.617546>,  <32.118690, 35.590839, 54.632103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514782, 35.537003, 54.617546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030122, -0.048364, 0.998375,
		-0.136140, -0.989719, -0.043837,
		0.990232, -0.134599, -0.036397,
		32.811852, 35.496624, 54.606628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.631931, 37.410816, 38.457729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957897, 37.491676, 38.675003>,  <35.153477, 37.540192, 38.805367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957897, 37.491676, 38.675003>,  <34.631931, 37.410816, 38.457729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957897, 37.491676, 38.675003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391517, -0.499037, 0.773095,
		0.427350, -0.842673, -0.327528,
		0.814915, 0.202150, 0.543184,
		35.202374, 37.552322, 38.837959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544182, 36.855186, 38.879707>,  <34.631931, 37.410816, 38.457729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544182, 36.855186, 38.879707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822399, 37.078281, 39.060883>,  <34.989330, 37.212139, 39.169586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822399, 37.078281, 39.060883>,  <34.544182, 36.855186, 38.879707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822399, 37.078281, 39.060883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200709, -0.454478, 0.867851,
		0.689880, -0.694537, -0.204167,
		0.695544, 0.557735, 0.452935,
		35.031063, 37.245602, 39.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975563, 36.464088, 39.238506>,  <34.544182, 36.855186, 38.879707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975563, 36.464088, 39.238506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998962, 36.825092, 39.409176>,  <35.013000, 37.041695, 39.511578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998962, 36.825092, 39.409176>,  <34.975563, 36.464088, 39.238506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998962, 36.825092, 39.409176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298313, -0.392073, 0.870223,
		0.952674, -0.178187, 0.246296,
		0.058496, 0.902512, 0.426674,
		35.016510, 37.095844, 39.537178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046764, 36.285637, 39.806404>,  <34.975563, 36.464088, 39.238506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046764, 36.285637, 39.806404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003727, 36.668850, 39.912682>,  <34.977905, 36.898777, 39.976448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003727, 36.668850, 39.912682>,  <35.046764, 36.285637, 39.806404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003727, 36.668850, 39.912682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421877, -0.285990, 0.860366,
		0.900246, -0.019519, 0.434944,
		-0.107596, 0.958034, 0.265696,
		34.971447, 36.956261, 39.992390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292355, 36.425571, 40.511913>,  <35.046764, 36.285637, 39.806404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292355, 36.425571, 40.511913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036526, 36.725086, 40.442329>,  <34.883026, 36.904793, 40.400578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036526, 36.725086, 40.442329>,  <35.292355, 36.425571, 40.511913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036526, 36.725086, 40.442329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359775, -0.091581, 0.928534,
		0.679341, 0.656455, 0.327967,
		-0.639576, 0.748785, -0.173962,
		34.844654, 36.949722, 40.390141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307846, 36.792515, 41.078621>,  <35.292355, 36.425571, 40.511913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307846, 36.792515, 41.078621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960148, 36.889744, 40.906425>,  <34.751530, 36.948082, 40.803108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960148, 36.889744, 40.906425>,  <35.307846, 36.792515, 41.078621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960148, 36.889744, 40.906425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465251, -0.107766, 0.878595,
		0.167174, 0.964002, 0.206767,
		-0.869250, 0.243076, -0.430487,
		34.699371, 36.962666, 40.777279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940632, 37.350502, 41.484573>,  <35.307846, 36.792515, 41.078621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940632, 37.350502, 41.484573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660782, 37.162067, 41.269684>,  <34.492874, 37.049007, 41.140751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660782, 37.162067, 41.269684>,  <34.940632, 37.350502, 41.484573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660782, 37.162067, 41.269684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586889, -0.049973, 0.808124,
		-0.407545, 0.880669, -0.241515,
		-0.699621, -0.471089, -0.537221,
		34.450897, 37.020741, 41.108517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323891, 37.583874, 41.529972>,  <34.940632, 37.350502, 41.484573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323891, 37.583874, 41.529972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208481, 37.215958, 41.423592>,  <34.139233, 36.995209, 41.359764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208481, 37.215958, 41.423592>,  <34.323891, 37.583874, 41.529972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208481, 37.215958, 41.423592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558789, -0.063790, 0.826853,
		-0.777499, 0.387181, -0.495566,
		-0.288529, -0.919795, -0.265949,
		34.121922, 36.940018, 41.343807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609417, 37.560802, 41.642963>,  <34.323891, 37.583874, 41.529972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609417, 37.560802, 41.642963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708431, 37.173897, 41.620632>,  <33.767841, 36.941753, 41.607231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708431, 37.173897, 41.620632>,  <33.609417, 37.560802, 41.642963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708431, 37.173897, 41.620632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630923, -0.204658, 0.748365,
		-0.735297, -0.150022, -0.660933,
		0.247537, -0.967268, -0.055832,
		33.782692, 36.883717, 41.603882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930012, 37.194874, 41.648895>,  <33.609417, 37.560802, 41.642963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930012, 37.194874, 41.648895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212139, 36.935448, 41.763363>,  <33.381416, 36.779793, 41.832043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212139, 36.935448, 41.763363>,  <32.930012, 37.194874, 41.648895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212139, 36.935448, 41.763363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470396, -0.126190, 0.873386,
		-0.530334, -0.750628, -0.394086,
		0.705318, -0.648563, 0.286169,
		33.423733, 36.740879, 41.849213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582302, 36.571327, 41.981453>,  <32.930012, 37.194874, 41.648895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582302, 36.571327, 41.981453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959049, 36.536938, 42.111374>,  <33.185097, 36.516304, 42.189327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959049, 36.536938, 42.111374>,  <32.582302, 36.571327, 41.981453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959049, 36.536938, 42.111374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335542, -0.190616, 0.922538,
		-0.017398, -0.977893, -0.208381,
		0.941865, -0.085971, 0.324808,
		33.241608, 36.511147, 42.208817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561359, 35.914547, 42.408848>,  <32.582302, 36.571327, 41.981453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561359, 35.914547, 42.408848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861092, 36.154385, 42.521263>,  <33.040932, 36.298286, 42.588711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861092, 36.154385, 42.521263>,  <32.561359, 35.914547, 42.408848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861092, 36.154385, 42.521263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211742, -0.185159, 0.959625,
		0.627426, -0.778587, -0.011786,
		0.749335, 0.599598, 0.281034,
		33.085892, 36.334263, 42.605572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631405, 35.154606, 42.381908>,  <32.561359, 35.914547, 42.408848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631405, 35.154606, 42.381908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318840, 34.917889, 42.302742>,  <32.131302, 34.775860, 42.255241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318840, 34.917889, 42.302742>,  <32.631405, 35.154606, 42.381908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318840, 34.917889, 42.302742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151132, 0.128247, -0.980159,
		0.605432, -0.795824, -0.010776,
		-0.781416, -0.591791, -0.197920,
		32.084415, 34.740353, 42.243366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911686, 34.699730, 41.775761>,  <32.631405, 35.154606, 42.381908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911686, 34.699730, 41.775761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512363, 34.676914, 41.780380>,  <32.272770, 34.663223, 41.783154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512363, 34.676914, 41.780380>,  <32.911686, 34.699730, 41.775761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512363, 34.676914, 41.780380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002780, -0.151471, -0.988458,
		0.058131, -0.986815, 0.151056,
		-0.998305, -0.057040, 0.011548,
		32.212872, 34.659801, 41.783844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782703, 34.230331, 41.246292>,  <32.911686, 34.699730, 41.775761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782703, 34.230331, 41.246292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461475, 34.459850, 41.310593>,  <32.268738, 34.597561, 41.349174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461475, 34.459850, 41.310593>,  <32.782703, 34.230331, 41.246292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461475, 34.459850, 41.310593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175465, 0.030108, -0.984025,
		-0.569469, -0.818445, 0.076502,
		-0.803067, 0.573796, 0.160754,
		32.220554, 34.631989, 41.358818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184685, 33.881794, 41.038029>,  <32.782703, 34.230331, 41.246292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184685, 33.881794, 41.038029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077072, 34.266819, 41.024815>,  <32.012505, 34.497833, 41.016888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077072, 34.266819, 41.024815>,  <32.184685, 33.881794, 41.038029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077072, 34.266819, 41.024815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293104, -0.114494, -0.949200,
		-0.917449, -0.245680, 0.312934,
		-0.269029, 0.962565, -0.033033,
		31.996363, 34.555588, 41.014904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590818, 33.974461, 40.662460>,  <32.184685, 33.881794, 41.038029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590818, 33.974461, 40.662460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761759, 34.336014, 40.654800>,  <31.864323, 34.552944, 40.650204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761759, 34.336014, 40.654800>,  <31.590818, 33.974461, 40.662460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761759, 34.336014, 40.654800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185301, 0.066838, -0.980406,
		-0.884893, 0.422525, 0.196054,
		0.427349, 0.903883, -0.019150,
		31.889963, 34.607178, 40.649055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249065, 34.315022, 40.116367>,  <31.590818, 33.974461, 40.662460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249065, 34.315022, 40.116367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552803, 34.559608, 40.205364>,  <31.735044, 34.706360, 40.258762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552803, 34.559608, 40.205364>,  <31.249065, 34.315022, 40.116367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552803, 34.559608, 40.205364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151744, 0.166092, -0.974365,
		-0.632750, 0.773639, 0.033334,
		0.759343, 0.611471, 0.222490,
		31.780605, 34.743050, 40.272110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190065, 34.891380, 39.700832>,  <31.249065, 34.315022, 40.116367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190065, 34.891380, 39.700832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574490, 34.861031, 39.807121>,  <31.805143, 34.842819, 39.870895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574490, 34.861031, 39.807121>,  <31.190065, 34.891380, 39.700832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574490, 34.861031, 39.807121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266573, 0.001180, -0.963814,
		0.072814, 0.997117, 0.021360,
		0.961060, -0.075873, 0.265718,
		31.862808, 34.838268, 39.886837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505663, 35.362343, 39.316147>,  <31.190065, 34.891380, 39.700832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505663, 35.362343, 39.316147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784437, 35.102016, 39.436626>,  <31.951702, 34.945820, 39.508915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784437, 35.102016, 39.436626>,  <31.505663, 35.362343, 39.316147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784437, 35.102016, 39.436626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316881, -0.097305, -0.943460,
		0.643324, 0.752978, 0.138415,
		0.696937, -0.650812, 0.301203,
		31.993519, 34.906773, 39.526989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115391, 35.572815, 38.887920>,  <31.505663, 35.362343, 39.316147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115391, 35.572815, 38.887920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201466, 35.209995, 39.032669>,  <32.253109, 34.992302, 39.119518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201466, 35.209995, 39.032669>,  <32.115391, 35.572815, 38.887920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201466, 35.209995, 39.032669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193976, -0.323469, -0.926143,
		0.957114, 0.269490, 0.106339,
		0.215188, -0.907052, 0.361872,
		32.266022, 34.937881, 39.141232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786469, 35.307941, 38.504711>,  <32.115391, 35.572815, 38.887920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786469, 35.307941, 38.504711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634048, 34.974262, 38.664165>,  <32.542599, 34.774055, 38.759838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634048, 34.974262, 38.664165>,  <32.786469, 35.307941, 38.504711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634048, 34.974262, 38.664165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213265, -0.498848, -0.840041,
		0.899623, -0.235079, 0.367990,
		-0.381047, -0.834199, 0.398640,
		32.519733, 34.724003, 38.783756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267284, 34.825260, 38.388451>,  <32.786469, 35.307941, 38.504711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267284, 34.825260, 38.388451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929657, 34.620522, 38.452408>,  <32.727081, 34.497677, 38.490784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929657, 34.620522, 38.452408>,  <33.267284, 34.825260, 38.388451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929657, 34.620522, 38.452408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172460, -0.541443, -0.822859,
		0.507752, -0.666972, 0.545286,
		-0.844065, -0.511848, 0.159893,
		32.676437, 34.466969, 38.500374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390583, 34.145927, 38.369850>,  <33.267284, 34.825260, 38.388451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390583, 34.145927, 38.369850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006721, 34.178703, 38.262257>,  <32.776405, 34.198368, 38.197701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006721, 34.178703, 38.262257>,  <33.390583, 34.145927, 38.369850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006721, 34.178703, 38.262257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165033, -0.610385, -0.774722,
		-0.227660, -0.787856, 0.572237,
		-0.959654, 0.081935, -0.268982,
		32.718826, 34.203285, 38.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177982, 33.445168, 38.379025>,  <33.390583, 34.145927, 38.369850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177982, 33.445168, 38.379025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914536, 33.651104, 38.159512>,  <32.756466, 33.774666, 38.027805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914536, 33.651104, 38.159512>,  <33.177982, 33.445168, 38.379025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914536, 33.651104, 38.159512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020952, -0.716470, -0.697303,
		-0.752187, -0.470754, 0.461092,
		-0.658616, 0.514841, -0.548783,
		32.716949, 33.805557, 37.994877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908958, 32.884129, 38.110252>,  <33.177982, 33.445168, 38.379025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908958, 32.884129, 38.110252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803970, 33.201309, 37.890312>,  <32.740978, 33.391617, 37.758350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803970, 33.201309, 37.890312>,  <32.908958, 32.884129, 38.110252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803970, 33.201309, 37.890312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166493, -0.598493, -0.783636,
		-0.950468, -0.114136, 0.289108,
		-0.262470, 0.792956, -0.549846,
		32.725227, 33.439198, 37.725357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173813, 32.888763, 37.907547>,  <32.908958, 32.884129, 38.110252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173813, 32.888763, 37.907547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449730, 33.047459, 37.665298>,  <32.615280, 33.142673, 37.519947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449730, 33.047459, 37.665298>,  <32.173813, 32.888763, 37.907547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449730, 33.047459, 37.665298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283257, -0.621933, -0.730045,
		-0.666292, 0.675130, -0.316629,
		0.689797, 0.396736, -0.605624,
		32.656670, 33.166481, 37.483612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440506, 32.172413, 37.588886>,  <32.173813, 32.888763, 37.907547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440506, 32.172413, 37.588886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835167, 32.184361, 37.524857>,  <33.071964, 32.191528, 37.486439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835167, 32.184361, 37.524857>,  <32.440506, 32.172413, 37.588886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835167, 32.184361, 37.524857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142609, -0.633031, 0.760877,
		-0.078600, -0.773549, -0.628842,
		0.986653, 0.029873, -0.160071,
		33.131165, 32.193321, 37.476833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710365, 31.478821, 37.543056>,  <32.440506, 32.172413, 37.588886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710365, 31.478821, 37.543056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982300, 31.738445, 37.679615>,  <33.145458, 31.894220, 37.761551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982300, 31.738445, 37.679615>,  <32.710365, 31.478821, 37.543056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982300, 31.738445, 37.679615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314783, -0.678709, 0.663525,
		0.662375, -0.343621, -0.665721,
		0.679832, 0.649060, 0.341394,
		33.186249, 31.933163, 37.782032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215252, 31.025845, 37.871456>,  <32.710365, 31.478821, 37.543056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215252, 31.025845, 37.871456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266182, 31.389616, 38.029812>,  <33.296741, 31.607878, 38.124825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266182, 31.389616, 38.029812>,  <33.215252, 31.025845, 37.871456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266182, 31.389616, 38.029812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273878, -0.415860, 0.867209,
		0.953299, -0.001994, -0.302023,
		0.127328, 0.909426, 0.395893,
		33.304382, 31.662443, 38.148579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966404, 31.083227, 38.086979>,  <33.215252, 31.025845, 37.871456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966404, 31.083227, 38.086979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715748, 31.299759, 38.311226>,  <33.565353, 31.429678, 38.445774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715748, 31.299759, 38.311226>,  <33.966404, 31.083227, 38.086979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715748, 31.299759, 38.311226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271999, -0.522209, 0.808279,
		0.730303, 0.658984, 0.179995,
		-0.626638, 0.541330, 0.560613,
		33.527756, 31.462158, 38.479408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325829, 31.109499, 38.688202>,  <33.966404, 31.083227, 38.086979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325829, 31.109499, 38.688202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969719, 31.245468, 38.809444>,  <33.756054, 31.327049, 38.882191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969719, 31.245468, 38.809444>,  <34.325829, 31.109499, 38.688202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969719, 31.245468, 38.809444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171419, -0.366491, 0.914494,
		0.421941, 0.866105, 0.268007,
		-0.890270, 0.339921, 0.303105,
		33.702637, 31.347445, 38.900375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450439, 31.460602, 39.325417>,  <34.325829, 31.109499, 38.688202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450439, 31.460602, 39.325417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064312, 31.356243, 39.329411>,  <33.832638, 31.293629, 39.331806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064312, 31.356243, 39.329411>,  <34.450439, 31.460602, 39.325417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064312, 31.356243, 39.329411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054037, -0.162244, 0.985270,
		-0.255434, 0.951636, 0.170715,
		-0.965315, -0.260896, 0.009980,
		33.774719, 31.277975, 39.332405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145016, 31.809132, 39.900211>,  <34.450439, 31.460602, 39.325417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145016, 31.809132, 39.900211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902706, 31.501429, 39.818935>,  <33.757320, 31.316807, 39.770168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902706, 31.501429, 39.818935>,  <34.145016, 31.809132, 39.900211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902706, 31.501429, 39.818935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028587, -0.276259, 0.960658,
		-0.795126, 0.576129, 0.189340,
		-0.605770, -0.769257, -0.203191,
		33.720974, 31.270651, 39.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764977, 31.777422, 40.434357>,  <34.145016, 31.809132, 39.900211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764977, 31.777422, 40.434357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686531, 31.416922, 40.279804>,  <33.639465, 31.200623, 40.187073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686531, 31.416922, 40.279804>,  <33.764977, 31.777422, 40.434357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686531, 31.416922, 40.279804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012876, -0.396366, 0.918002,
		-0.980497, 0.175057, 0.089337,
		-0.196113, -0.901248, -0.386382,
		33.627697, 31.146547, 40.163891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232407, 31.444107, 40.916218>,  <33.764977, 31.777422, 40.434357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232407, 31.444107, 40.916218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381916, 31.130552, 40.717899>,  <33.471622, 30.942419, 40.598907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381916, 31.130552, 40.717899>,  <33.232407, 31.444107, 40.916218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381916, 31.130552, 40.717899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056080, -0.552662, 0.831517,
		-0.925824, -0.282993, -0.250530,
		0.373771, -0.783887, -0.495797,
		33.494049, 30.895386, 40.569160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752354, 30.764799, 41.158981>,  <33.232407, 31.444107, 40.916218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752354, 30.764799, 41.158981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078663, 30.611338, 40.985855>,  <33.274448, 30.519260, 40.881977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078663, 30.611338, 40.985855>,  <32.752354, 30.764799, 41.158981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078663, 30.611338, 40.985855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150708, -0.581483, 0.799478,
		-0.558393, -0.717421, -0.416539,
		0.815772, -0.383647, -0.432817,
		33.323395, 30.496243, 40.856010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643219, 29.960140, 41.098701>,  <32.752354, 30.764799, 41.158981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643219, 29.960140, 41.098701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033802, 30.046410, 41.097404>,  <33.268154, 30.098171, 41.096626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033802, 30.046410, 41.097404>,  <32.643219, 29.960140, 41.098701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033802, 30.046410, 41.097404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140380, -0.624032, 0.768686,
		0.163763, -0.751046, -0.639618,
		0.976460, 0.215672, -0.003239,
		33.326740, 30.111111, 41.096432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975250, 29.426929, 41.352913>,  <32.643219, 29.960140, 41.098701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975250, 29.426929, 41.352913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265598, 29.698156, 41.399097>,  <33.439808, 29.860893, 41.426807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265598, 29.698156, 41.399097>,  <32.975250, 29.426929, 41.352913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265598, 29.698156, 41.399097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294075, -0.457692, 0.839070,
		0.621793, -0.575103, -0.531629,
		0.725874, 0.678067, 0.115466,
		33.483360, 29.901577, 41.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492348, 29.086311, 41.823532>,  <32.975250, 29.426929, 41.352913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492348, 29.086311, 41.823532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617168, 29.465611, 41.847034>,  <33.692062, 29.693190, 41.861134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617168, 29.465611, 41.847034>,  <33.492348, 29.086311, 41.823532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617168, 29.465611, 41.847034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395855, -0.185990, 0.899281,
		0.863668, -0.257365, -0.433407,
		0.312053, 0.948246, 0.058754,
		33.710785, 29.750084, 41.864662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193741, 29.090992, 41.979229>,  <33.492348, 29.086311, 41.823532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193741, 29.090992, 41.979229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047729, 29.440647, 42.107372>,  <33.960121, 29.650440, 42.184258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047729, 29.440647, 42.107372>,  <34.193741, 29.090992, 41.979229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047729, 29.440647, 42.107372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250775, -0.239068, 0.938061,
		0.896584, 0.422762, -0.131945,
		-0.365033, 0.874139, 0.320362,
		33.938221, 29.702888, 42.203480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745316, 29.469141, 42.319546>,  <34.193741, 29.090992, 41.979229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745316, 29.469141, 42.319546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394798, 29.612347, 42.448505>,  <34.184490, 29.698271, 42.525883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394798, 29.612347, 42.448505>,  <34.745316, 29.469141, 42.319546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394798, 29.612347, 42.448505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220607, -0.296731, 0.929130,
		0.428309, 0.885311, 0.181042,
		-0.876290, 0.358016, 0.322398,
		34.131912, 29.719751, 42.545223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992821, 29.671391, 42.955040>,  <34.745316, 29.469141, 42.319546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992821, 29.671391, 42.955040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603577, 29.758900, 42.983894>,  <34.370029, 29.811405, 43.001205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603577, 29.758900, 42.983894>,  <34.992821, 29.671391, 42.955040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603577, 29.758900, 42.983894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074584, 0.002959, 0.997210,
		0.217951, 0.975771, -0.019196,
		-0.973106, 0.218775, 0.072132,
		34.311646, 29.824532, 43.005535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881538, 30.317732, 43.246033>,  <34.992821, 29.671391, 42.955040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881538, 30.317732, 43.246033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552509, 30.096714, 43.299789>,  <34.355091, 29.964104, 43.332043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552509, 30.096714, 43.299789>,  <34.881538, 30.317732, 43.246033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552509, 30.096714, 43.299789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029382, 0.194713, 0.980420,
		-0.567893, 0.810420, -0.143932,
		-0.822577, -0.552545, 0.134388,
		34.305737, 29.930950, 43.340107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583340, 30.726404, 43.808720>,  <34.881538, 30.317732, 43.246033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583340, 30.726404, 43.808720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382694, 30.380848, 43.790516>,  <34.262306, 30.173513, 43.779594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382694, 30.380848, 43.790516>,  <34.583340, 30.726404, 43.808720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382694, 30.380848, 43.790516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120866, 0.017893, 0.992508,
		-0.856606, 0.503358, -0.113390,
		-0.501615, -0.863893, -0.045511,
		34.232208, 30.121679, 43.776863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040447, 30.745504, 44.322517>,  <34.583340, 30.726404, 43.808720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040447, 30.745504, 44.322517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117973, 30.358885, 44.255325>,  <34.164490, 30.126913, 44.215012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117973, 30.358885, 44.255325>,  <34.040447, 30.745504, 44.322517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117973, 30.358885, 44.255325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180827, -0.133096, 0.974468,
		-0.964230, -0.219238, 0.148983,
		0.193812, -0.966551, -0.167979,
		34.176117, 30.068920, 44.204933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745056, 30.398678, 44.869839>,  <34.040447, 30.745504, 44.322517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745056, 30.398678, 44.869839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004753, 30.142105, 44.706352>,  <34.160572, 29.988161, 44.608261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004753, 30.142105, 44.706352>,  <33.745056, 30.398678, 44.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004753, 30.142105, 44.706352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364233, -0.209540, 0.907429,
		-0.667694, -0.738011, 0.097588,
		0.649244, -0.641430, -0.408717,
		34.199528, 29.949677, 44.583736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800907, 29.924232, 45.340748>,  <33.745056, 30.398678, 44.869839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800907, 29.924232, 45.340748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149109, 29.878305, 45.149311>,  <34.358028, 29.850750, 45.034451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149109, 29.878305, 45.149311>,  <33.800907, 29.924232, 45.340748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149109, 29.878305, 45.149311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464903, -0.127336, 0.876156,
		-0.161544, -0.985191, -0.057465,
		0.870499, -0.114822, -0.478589,
		34.410259, 29.843861, 45.005733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019257, 29.259098, 45.474682>,  <33.800907, 29.924232, 45.340748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019257, 29.259098, 45.474682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339005, 29.484365, 45.390919>,  <34.530853, 29.619526, 45.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339005, 29.484365, 45.390919>,  <34.019257, 29.259098, 45.474682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339005, 29.484365, 45.390919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322745, -0.108490, 0.940248,
		0.506801, -0.819188, -0.268484,
		0.799367, 0.563170, -0.209406,
		34.578815, 29.653316, 45.328098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477047, 28.924284, 45.916870>,  <34.019257, 29.259098, 45.474682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477047, 28.924284, 45.916870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680477, 29.249126, 45.802444>,  <34.802536, 29.444033, 45.733788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680477, 29.249126, 45.802444>,  <34.477047, 28.924284, 45.916870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680477, 29.249126, 45.802444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514984, -0.020644, 0.856951,
		0.690031, -0.583143, -0.428721,
		0.508576, 0.812107, -0.286064,
		34.833050, 29.492758, 45.716625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216755, 28.844189, 45.983814>,  <34.477047, 28.924284, 45.916870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216755, 28.844189, 45.983814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128330, 29.232018, 46.025879>,  <35.075275, 29.464716, 46.051117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128330, 29.232018, 46.025879>,  <35.216755, 28.844189, 45.983814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128330, 29.232018, 46.025879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493877, 0.018319, 0.869339,
		0.840961, 0.244115, -0.482899,
		-0.221065, 0.969573, 0.105157,
		35.062012, 29.522890, 46.057426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906063, 29.103682, 46.208344>,  <35.216755, 28.844189, 45.983814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906063, 29.103682, 46.208344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638451, 29.385534, 46.302910>,  <35.477882, 29.554646, 46.359650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638451, 29.385534, 46.302910>,  <35.906063, 29.103682, 46.208344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638451, 29.385534, 46.302910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408071, 0.082392, 0.909225,
		0.621188, 0.704775, -0.342662,
		-0.669031, 0.704630, 0.236417,
		35.437740, 29.596924, 46.373837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260036, 29.469227, 46.696934>,  <35.906063, 29.103682, 46.208344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260036, 29.469227, 46.696934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901073, 29.640175, 46.740776>,  <35.685696, 29.742744, 46.767082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901073, 29.640175, 46.740776>,  <36.260036, 29.469227, 46.696934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901073, 29.640175, 46.740776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242812, 0.270985, 0.931456,
		0.368378, 0.862508, -0.346955,
		-0.897407, 0.427372, 0.109602,
		35.631851, 29.768387, 46.773655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386345, 30.013338, 47.115005>,  <36.260036, 29.469227, 46.696934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386345, 30.013338, 47.115005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992329, 29.958683, 47.157009>,  <35.755920, 29.925890, 47.182213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992329, 29.958683, 47.157009>,  <36.386345, 30.013338, 47.115005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992329, 29.958683, 47.157009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099048, 0.049765, 0.993838,
		-0.141024, 0.989370, -0.035486,
		-0.985039, -0.136640, 0.105013,
		35.696815, 29.917690, 47.188515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365971, 30.754026, 47.090004>,  <36.386345, 30.013338, 47.115005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365971, 30.754026, 47.090004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539062, 31.099255, 47.194195>,  <36.642918, 31.306393, 47.256710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539062, 31.099255, 47.194195>,  <36.365971, 30.754026, 47.090004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539062, 31.099255, 47.194195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020073, 0.298085, -0.954328,
		-0.901299, 0.407739, 0.146315,
		0.432732, 0.863072, 0.260480,
		36.668880, 31.358177, 47.272339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929863, 31.341444, 46.883301>,  <36.365971, 30.754026, 47.090004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929863, 31.341444, 46.883301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305744, 31.472795, 46.921516>,  <36.531273, 31.551607, 46.944447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305744, 31.472795, 46.921516>,  <35.929863, 31.341444, 46.883301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305744, 31.472795, 46.921516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023866, 0.215712, -0.976165,
		-0.341161, 0.919585, 0.194868,
		0.939702, 0.328378, 0.095540,
		36.587654, 31.571308, 46.950180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959747, 32.020641, 46.453358>,  <35.929863, 31.341444, 46.883301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959747, 32.020641, 46.453358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340660, 31.902721, 46.484989>,  <36.569206, 31.831968, 46.503967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340660, 31.902721, 46.484989>,  <35.959747, 32.020641, 46.453358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340660, 31.902721, 46.484989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124462, 0.138494, -0.982511,
		0.278696, 0.945468, 0.168577,
		0.952280, -0.294804, 0.079077,
		36.626343, 31.814280, 46.508713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414169, 32.618649, 46.217731>,  <35.959747, 32.020641, 46.453358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414169, 32.618649, 46.217731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610069, 32.272526, 46.175056>,  <36.727608, 32.064850, 46.149452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610069, 32.272526, 46.175056>,  <36.414169, 32.618649, 46.217731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610069, 32.272526, 46.175056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130938, 0.193977, -0.972228,
		0.861974, 0.462180, 0.208302,
		0.489750, -0.865311, -0.106687,
		36.756996, 32.012932, 46.143051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028954, 32.850090, 45.804909>,  <36.414169, 32.618649, 46.217731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028954, 32.850090, 45.804909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987743, 32.453377, 45.774578>,  <36.963017, 32.215347, 45.756382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987743, 32.453377, 45.774578>,  <37.028954, 32.850090, 45.804909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987743, 32.453377, 45.774578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359752, 0.033914, -0.932431,
		0.927342, -0.123344, 0.353303,
		-0.103027, -0.991784, -0.075823,
		36.956837, 32.155842, 45.751831>
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
