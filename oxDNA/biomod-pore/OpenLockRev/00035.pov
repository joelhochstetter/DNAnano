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
	<40.408264, 35.697941, 49.812801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360916, 35.359848, 49.604351>,  <40.332508, 35.156990, 49.479282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360916, 35.359848, 49.604351>,  <40.408264, 35.697941, 49.812801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360916, 35.359848, 49.604351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972603, -0.204436, 0.110673,
		-0.200080, -0.493745, 0.846276,
		-0.118365, -0.845235, -0.521122,
		40.325405, 35.106277, 49.448013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721161, 35.102314, 50.244701>,  <40.408264, 35.697941, 49.812801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721161, 35.102314, 50.244701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711613, 35.019825, 49.853416>,  <40.705883, 34.970333, 49.618645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711613, 35.019825, 49.853416>,  <40.721161, 35.102314, 50.244701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711613, 35.019825, 49.853416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975376, -0.219404, 0.022456,
		-0.219255, -0.953590, 0.206382,
		-0.023868, -0.206223, -0.978214,
		40.704453, 34.957958, 49.559952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002949, 34.396645, 50.141403>,  <40.721161, 35.102314, 50.244701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002949, 34.396645, 50.141403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022202, 34.570900, 49.781868>,  <41.033752, 34.675453, 49.566147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022202, 34.570900, 49.781868>,  <41.002949, 34.396645, 50.141403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022202, 34.570900, 49.781868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977095, -0.207287, -0.048137,
		-0.207287, -0.875931, -0.435634,
		0.048137, 0.435634, -0.898836,
		41.036644, 34.701591, 49.512218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215401, 33.928619, 49.619106>,  <41.002949, 34.396645, 50.141403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215401, 33.928619, 49.619106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327389, 34.291058, 49.492226>,  <41.394581, 34.508518, 49.416100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327389, 34.291058, 49.492226>,  <41.215401, 33.928619, 49.619106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327389, 34.291058, 49.492226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956303, -0.292229, 0.009291,
		-0.084276, -0.305938, -0.948314,
		0.279967, 0.906093, -0.317198,
		41.411381, 34.562885, 49.397068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674961, 33.646667, 49.167221>,  <41.215401, 33.928619, 49.619106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674961, 33.646667, 49.167221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751244, 34.031158, 49.246895>,  <41.797012, 34.261852, 49.294701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751244, 34.031158, 49.246895>,  <41.674961, 33.646667, 49.167221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751244, 34.031158, 49.246895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978651, -0.202010, 0.037879,
		0.076648, 0.187707, -0.979230,
		0.190704, 0.961227, 0.199184,
		41.808456, 34.319527, 49.306648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266640, 33.779774, 48.829784>,  <41.674961, 33.646667, 49.167221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266640, 33.779774, 48.829784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277893, 34.106968, 49.059605>,  <42.284645, 34.303284, 49.197498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277893, 34.106968, 49.059605>,  <42.266640, 33.779774, 48.829784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277893, 34.106968, 49.059605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969405, -0.162538, 0.183943,
		0.243849, 0.551803, -0.797528,
		0.028129, 0.817982, 0.574555,
		42.286331, 34.352364, 49.231972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767056, 34.067051, 48.585835>,  <42.266640, 33.779774, 48.829784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767056, 34.067051, 48.585835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747715, 34.240273, 48.945862>,  <42.736111, 34.344204, 49.161880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747715, 34.240273, 48.945862>,  <42.767056, 34.067051, 48.585835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747715, 34.240273, 48.945862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984101, -0.133532, 0.117107,
		0.170902, 0.891423, -0.419711,
		-0.048347, 0.433052, 0.900071,
		42.733212, 34.370190, 49.215881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254753, 34.550690, 48.637680>,  <42.767056, 34.067051, 48.585835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254753, 34.550690, 48.637680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186607, 34.471207, 49.023735>,  <43.145718, 34.423515, 49.255367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.186607, 34.471207, 49.023735>,  <43.254753, 34.550690, 48.637680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186607, 34.471207, 49.023735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983833, 0.020570, 0.177903,
		-0.055204, 0.979842, 0.191994,
		-0.170367, -0.198711, 0.965137,
		43.135498, 34.411594, 49.313274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696659, 35.033688, 48.946404>,  <43.254753, 34.550690, 48.637680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696659, 35.033688, 48.946404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603676, 34.770103, 49.232544>,  <43.547886, 34.611954, 49.404228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603676, 34.770103, 49.232544>,  <43.696659, 35.033688, 48.946404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603676, 34.770103, 49.232544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961427, -0.044495, 0.271439,
		-0.147038, 0.750860, 0.643885,
		-0.232462, -0.658960, 0.715355,
		43.533936, 34.572414, 49.447151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951275, 35.400173, 49.529491>,  <43.696659, 35.033688, 48.946404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951275, 35.400173, 49.529491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925335, 35.020752, 49.653458>,  <43.909771, 34.793098, 49.727837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925335, 35.020752, 49.653458>,  <43.951275, 35.400173, 49.529491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925335, 35.020752, 49.653458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943006, 0.043331, 0.329943,
		-0.326397, 0.313648, 0.891678,
		-0.064849, -0.948550, 0.309915,
		43.905880, 34.736187, 49.746433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102573, 35.385841, 50.287922>,  <43.951275, 35.400173, 49.529491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102573, 35.385841, 50.287922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151524, 35.011833, 50.154793>,  <44.180893, 34.787430, 50.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151524, 35.011833, 50.154793>,  <44.102573, 35.385841, 50.287922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151524, 35.011833, 50.154793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766121, -0.124185, 0.630584,
		-0.630938, -0.332148, 0.701139,
		0.122376, -0.935016, -0.332819,
		44.188236, 34.731327, 50.054947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320171, 35.089424, 50.860123>,  <44.102573, 35.385841, 50.287922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320171, 35.089424, 50.860123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410316, 34.835503, 50.564491>,  <44.464405, 34.683151, 50.387112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410316, 34.835503, 50.564491>,  <44.320171, 35.089424, 50.860123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410316, 34.835503, 50.564491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788854, -0.326301, 0.520805,
		-0.571771, -0.700395, 0.427230,
		0.225363, -0.634803, -0.739078,
		44.477924, 34.645061, 50.342766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632572, 34.553886, 51.236698>,  <44.320171, 35.089424, 50.860123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632572, 34.553886, 51.236698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755600, 34.544830, 50.856197>,  <44.829418, 34.539398, 50.627895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755600, 34.544830, 50.856197>,  <44.632572, 34.553886, 51.236698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755600, 34.544830, 50.856197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941611, -0.136689, 0.307709,
		-0.136981, -0.990356, -0.020761,
		0.307579, -0.022602, -0.951254,
		44.847874, 34.538036, 50.570820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937386, 33.882359, 51.160912>,  <44.632572, 34.553886, 51.236698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937386, 33.882359, 51.160912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077415, 34.120243, 50.871422>,  <45.161434, 34.262974, 50.697727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077415, 34.120243, 50.871422>,  <44.937386, 33.882359, 51.160912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077415, 34.120243, 50.871422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934026, -0.280194, 0.221556,
		-0.071021, -0.753535, -0.653561,
		0.350074, 0.594708, -0.723720,
		45.182438, 34.298656, 50.654305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.531448, 33.508369, 50.755592>,  <44.937386, 33.882359, 51.160912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.531448, 33.508369, 50.755592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571342, 33.900917, 50.689915>,  <45.595280, 34.136448, 50.650509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571342, 33.900917, 50.689915>,  <45.531448, 33.508369, 50.755592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571342, 33.900917, 50.689915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924118, -0.030181, 0.380914,
		0.368863, -0.189723, -0.909915,
		0.099731, 0.981374, -0.164194,
		45.601261, 34.195328, 50.640656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190453, 33.513355, 50.498024>,  <45.531448, 33.508369, 50.755592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190453, 33.513355, 50.498024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115646, 33.894974, 50.591671>,  <46.070763, 34.123947, 50.647861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115646, 33.894974, 50.591671>,  <46.190453, 33.513355, 50.498024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115646, 33.894974, 50.591671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960960, 0.128201, 0.245195,
		0.203914, 0.270835, -0.940780,
		-0.187017, 0.954051, 0.234120,
		46.059540, 34.181190, 50.661907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751816, 33.956238, 50.282761>,  <46.190453, 33.513355, 50.498024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751816, 33.956238, 50.282761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596485, 34.174591, 50.579735>,  <46.503288, 34.305603, 50.757919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596485, 34.174591, 50.579735>,  <46.751816, 33.956238, 50.282761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596485, 34.174591, 50.579735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921297, 0.212123, 0.325908,
		0.020421, 0.810562, -0.585296,
		-0.388324, 0.545887, 0.742437,
		46.479988, 34.338356, 50.802467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.172733, 34.603004, 50.213493>,  <46.751816, 33.956238, 50.282761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.172733, 34.603004, 50.213493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.002926, 34.566872, 50.573856>,  <46.901043, 34.545193, 50.790073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.002926, 34.566872, 50.573856>,  <47.172733, 34.603004, 50.213493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.002926, 34.566872, 50.573856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827883, 0.364148, 0.426621,
		-0.366602, 0.926950, -0.079799,
		-0.424515, -0.090336, 0.900903,
		46.875572, 34.539772, 50.844128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441544, 35.190136, 50.631527>,  <47.172733, 34.603004, 50.213493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441544, 35.190136, 50.631527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315941, 34.892414, 50.867290>,  <47.240578, 34.713779, 51.008747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315941, 34.892414, 50.867290>,  <47.441544, 35.190136, 50.631527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315941, 34.892414, 50.867290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827845, 0.089301, 0.553803,
		-0.464835, 0.661838, 0.588131,
		-0.314007, -0.744309, 0.589410,
		47.221737, 34.669121, 51.044113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.777531, 35.363247, 51.190292>,  <47.441544, 35.190136, 50.631527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.777531, 35.363247, 51.190292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655243, 35.000507, 51.306332>,  <47.581871, 34.782864, 51.375957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.655243, 35.000507, 51.306332>,  <47.777531, 35.363247, 51.190292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655243, 35.000507, 51.306332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810121, -0.087669, 0.579670,
		-0.500242, 0.412231, 0.761461,
		-0.305715, -0.906851, 0.290101,
		47.563530, 34.728451, 51.393360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.636742, 35.450249, 51.949665>,  <47.777531, 35.363247, 51.190292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.636742, 35.450249, 51.949665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726173, 35.080051, 51.827374>,  <47.779835, 34.857933, 51.753998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726173, 35.080051, 51.827374>,  <47.636742, 35.450249, 51.949665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726173, 35.080051, 51.827374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647418, -0.093463, 0.756383,
		-0.728602, -0.367052, 0.578284,
		0.223583, -0.925493, -0.305733,
		47.793247, 34.802402, 51.735653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.091320, 34.786388, 51.697834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.327076, 34.829567, 52.018074>,  <24.468531, 34.855473, 52.210220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.327076, 34.829567, 52.018074>,  <24.091320, 34.786388, 51.697834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327076, 34.829567, 52.018074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620202, -0.695499, -0.362809,
		0.517655, 0.710372, -0.476869,
		0.589392, 0.107945, 0.800603,
		24.503893, 34.861950, 52.258255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707863, 34.878590, 51.344357>,  <24.091320, 34.786388, 51.697834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707863, 34.878590, 51.344357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.801067, 34.769257, 51.717667>,  <24.856989, 34.703659, 51.941650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.801067, 34.769257, 51.717667>,  <24.707863, 34.878590, 51.344357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801067, 34.769257, 51.717667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771971, -0.531647, -0.348443,
		0.591412, 0.801649, 0.087123,
		0.233010, -0.273330, 0.933272,
		24.870970, 34.687256, 51.997650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475334, 35.083630, 51.580307>,  <24.707863, 34.878590, 51.344357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475334, 35.083630, 51.580307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.360956, 34.788162, 51.824474>,  <25.292330, 34.610882, 51.970974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.360956, 34.788162, 51.824474>,  <25.475334, 35.083630, 51.580307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360956, 34.788162, 51.824474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796541, -0.537341, -0.277105,
		0.532690, 0.406986, 0.742027,
		-0.285943, -0.738666, 0.610417,
		25.275173, 34.566563, 52.007599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046095, 34.953655, 51.931808>,  <25.475334, 35.083630, 51.580307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046095, 34.953655, 51.931808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.848383, 34.611855, 51.995689>,  <25.729755, 34.406773, 52.034019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.848383, 34.611855, 51.995689>,  <26.046095, 34.953655, 51.931808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848383, 34.611855, 51.995689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864090, -0.503043, -0.017222,
		0.095055, 0.129488, 0.987014,
		-0.494280, -0.854506, 0.159706,
		25.700098, 34.355503, 52.043602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505388, 34.609863, 52.313972>,  <26.046095, 34.953655, 51.931808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505388, 34.609863, 52.313972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.249739, 34.321976, 52.205509>,  <26.096350, 34.149242, 52.140430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.249739, 34.321976, 52.205509>,  <26.505388, 34.609863, 52.313972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249739, 34.321976, 52.205509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768128, -0.615088, -0.177894,
		-0.038753, -0.321981, 0.945953,
		-0.639123, -0.719719, -0.271159,
		26.058002, 34.106060, 52.124161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621145, 34.041538, 52.688313>,  <26.505388, 34.609863, 52.313972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621145, 34.041538, 52.688313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.438658, 33.880672, 52.370792>,  <26.329165, 33.784153, 52.180279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.438658, 33.880672, 52.370792>,  <26.621145, 34.041538, 52.688313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438658, 33.880672, 52.370792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758737, -0.641894, -0.110861,
		-0.464953, -0.652865, 0.597985,
		-0.456220, -0.402169, -0.793803,
		26.301792, 33.760021, 52.132652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708355, 33.434132, 52.862022>,  <26.621145, 34.041538, 52.688313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708355, 33.434132, 52.862022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.641230, 33.415775, 52.468121>,  <26.600954, 33.404762, 52.231781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.641230, 33.415775, 52.468121>,  <26.708355, 33.434132, 52.862022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641230, 33.415775, 52.468121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816579, -0.566111, -0.112772,
		-0.552302, -0.823051, 0.132478,
		-0.167814, -0.045895, -0.984750,
		26.590885, 33.402008, 52.172695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076012, 32.813107, 52.681183>,  <26.708355, 33.434132, 52.862022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076012, 32.813107, 52.681183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.029230, 33.021675, 52.343086>,  <27.001162, 33.146816, 52.140228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.029230, 33.021675, 52.343086>,  <27.076012, 32.813107, 52.681183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029230, 33.021675, 52.343086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898711, -0.306640, -0.313512,
		-0.422659, -0.796297, -0.432747,
		-0.116952, 0.521423, -0.845245,
		26.994144, 33.178101, 52.089512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165951, 32.360138, 52.124035>,  <27.076012, 32.813107, 52.681183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165951, 32.360138, 52.124035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.216408, 32.729588, 51.979256>,  <27.246681, 32.951256, 51.892387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.216408, 32.729588, 51.979256>,  <27.165951, 32.360138, 52.124035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216408, 32.729588, 51.979256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779066, -0.318112, -0.540241,
		-0.614120, -0.213837, -0.759691,
		0.126143, 0.923622, -0.361953,
		27.254251, 33.006676, 51.870670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577692, 32.174728, 51.541191>,  <27.165951, 32.360138, 52.124035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577692, 32.174728, 51.541191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.613409, 32.572586, 51.562035>,  <27.634840, 32.811298, 51.574539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.613409, 32.572586, 51.562035>,  <27.577692, 32.174728, 51.541191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613409, 32.572586, 51.562035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784151, -0.037947, -0.619409,
		-0.614112, 0.096167, -0.783338,
		0.089292, 0.994642, 0.052105,
		27.640196, 32.870979, 51.577667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676624, 32.390469, 50.779083>,  <27.577692, 32.174728, 51.541191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676624, 32.390469, 50.779083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.813883, 32.682365, 51.015633>,  <27.896238, 32.857506, 51.157562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.813883, 32.682365, 51.015633>,  <27.676624, 32.390469, 50.779083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813883, 32.682365, 51.015633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851842, 0.023493, -0.523272,
		-0.395747, 0.683317, -0.613565,
		0.343146, 0.729744, 0.591375,
		27.916826, 32.901287, 51.193047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006758, 32.780048, 50.387371>,  <27.676624, 32.390469, 50.779083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006758, 32.780048, 50.387371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158220, 32.892948, 50.739952>,  <28.249098, 32.960690, 50.951500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158220, 32.892948, 50.739952>,  <28.006758, 32.780048, 50.387371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158220, 32.892948, 50.739952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897489, 0.120709, -0.424197,
		-0.226129, 0.951717, -0.207608,
		0.378655, 0.282249, 0.881451,
		28.271816, 32.977623, 51.004387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370378, 33.414238, 50.299881>,  <28.006758, 32.780048, 50.387371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370378, 33.414238, 50.299881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.569248, 33.275246, 50.617893>,  <28.688570, 33.191849, 50.808701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.569248, 33.275246, 50.617893>,  <28.370378, 33.414238, 50.299881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569248, 33.275246, 50.617893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863049, 0.292315, -0.411945,
		-0.089258, 0.890960, 0.445223,
		0.497172, -0.347480, 0.795033,
		28.718399, 33.171001, 50.856403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943537, 33.824100, 50.331997>,  <28.370378, 33.414238, 50.299881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943537, 33.824100, 50.331997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.025373, 33.507282, 50.562057>,  <29.074474, 33.317192, 50.700096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.025373, 33.507282, 50.562057>,  <28.943537, 33.824100, 50.331997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025373, 33.507282, 50.562057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957609, 0.040218, -0.285251,
		0.202801, 0.609132, 0.766701,
		0.204591, -0.792049, 0.575153,
		29.086750, 33.269669, 50.734604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323271, 34.083157, 50.780216>,  <28.943537, 33.824100, 50.331997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323271, 34.083157, 50.780216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.426792, 33.697277, 50.799713>,  <29.488905, 33.465748, 50.811413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.426792, 33.697277, 50.799713>,  <29.323271, 34.083157, 50.780216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426792, 33.697277, 50.799713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965014, 0.256034, -0.056519,
		0.042044, 0.061666, 0.997211,
		0.258805, -0.964699, 0.048744,
		29.504435, 33.407867, 50.814335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878942, 34.106613, 51.063580>,  <29.323271, 34.083157, 50.780216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878942, 34.106613, 51.063580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.915333, 33.730980, 50.931007>,  <29.937166, 33.505600, 50.851463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.915333, 33.730980, 50.931007>,  <29.878942, 34.106613, 51.063580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915333, 33.730980, 50.931007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981968, 0.139976, -0.127067,
		0.165718, -0.313890, 0.934885,
		0.090976, -0.939084, -0.331427,
		29.942625, 33.449253, 50.831581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468056, 33.793915, 51.406723>,  <29.878942, 34.106613, 51.063580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468056, 33.793915, 51.406723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.405472, 33.621746, 51.051136>,  <30.367922, 33.518444, 50.837784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.405472, 33.621746, 51.051136>,  <30.468056, 33.793915, 51.406723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405472, 33.621746, 51.051136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949885, 0.181043, -0.254837,
		0.270628, -0.884286, 0.380524,
		-0.156458, -0.430420, -0.888966,
		30.358534, 33.492619, 50.784447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129974, 33.438198, 51.248753>,  <30.468056, 33.793915, 51.406723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129974, 33.438198, 51.248753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940710, 33.434952, 50.896378>,  <30.827150, 33.433006, 50.684952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940710, 33.434952, 50.896378>,  <31.129974, 33.438198, 51.248753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940710, 33.434952, 50.896378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857545, 0.224847, -0.462667,
		0.201828, -0.974360, -0.099434,
		-0.473162, -0.008110, -0.880938,
		30.798761, 33.432518, 50.632095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621809, 33.199959, 50.810623>,  <31.129974, 33.438198, 51.248753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621809, 33.199959, 50.810623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381912, 33.393070, 50.555363>,  <31.237974, 33.508938, 50.402206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.381912, 33.393070, 50.555363>,  <31.621809, 33.199959, 50.810623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381912, 33.393070, 50.555363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795407, 0.272582, -0.541320,
		-0.087387, -0.832242, -0.547482,
		-0.599743, 0.482775, -0.638151,
		31.201990, 33.537903, 50.363918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871511, 32.964630, 50.193302>,  <31.621809, 33.199959, 50.810623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871511, 32.964630, 50.193302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.689236, 33.310459, 50.108574>,  <31.579870, 33.517956, 50.057739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.689236, 33.310459, 50.108574>,  <31.871511, 32.964630, 50.193302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689236, 33.310459, 50.108574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822792, 0.318317, -0.470837,
		-0.339647, -0.388837, -0.856415,
		-0.455690, 0.864570, -0.211817,
		31.552528, 33.569832, 50.045029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924185, 33.034695, 49.459778>,  <31.871511, 32.964630, 50.193302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924185, 33.034695, 49.459778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873617, 33.401154, 49.611935>,  <31.843277, 33.621029, 49.703228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873617, 33.401154, 49.611935>,  <31.924185, 33.034695, 49.459778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873617, 33.401154, 49.611935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782363, 0.327838, -0.529557,
		-0.609858, 0.230662, -0.758201,
		-0.126418, 0.916143, 0.380396,
		31.835691, 33.675995, 49.726055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.379297, 34.921066, 35.325859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.139469, 35.001232, 35.015930>,  <23.995571, 35.049332, 34.829975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.139469, 35.001232, 35.015930>,  <24.379297, 34.921066, 35.325859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.139469, 35.001232, 35.015930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526256, -0.630671, -0.570359,
		-0.602962, -0.749726, 0.272666,
		-0.599575, 0.200412, -0.774819,
		23.959597, 35.061356, 34.783485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645651, 34.228439, 35.130939>,  <24.379297, 34.921066, 35.325859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645651, 34.228439, 35.130939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.249950, 34.258308, 35.080654>,  <24.012529, 34.276230, 35.050484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.249950, 34.258308, 35.080654>,  <24.645651, 34.228439, 35.130939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249950, 34.258308, 35.080654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027749, -0.748258, -0.662828,
		-0.143561, -0.659192, 0.738144,
		-0.989253, 0.074673, -0.125712,
		23.953175, 34.280712, 35.042942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135269, 34.828312, 34.971432>,  <24.645651, 34.228439, 35.130939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135269, 34.828312, 34.971432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.171726, 34.438259, 35.052246>,  <25.193602, 34.204227, 35.100735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.171726, 34.438259, 35.052246>,  <25.135269, 34.828312, 34.971432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171726, 34.438259, 35.052246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906399, 0.165265, 0.388751,
		-0.412471, 0.147694, 0.898918,
		0.091144, -0.975128, 0.202037,
		25.199070, 34.145721, 35.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420992, 34.878105, 35.687912>,  <25.135269, 34.828312, 34.971432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420992, 34.878105, 35.687912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.510960, 34.515633, 35.544666>,  <25.564939, 34.298149, 35.458717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.510960, 34.515633, 35.544666>,  <25.420992, 34.878105, 35.687912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510960, 34.515633, 35.544666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913513, 0.068249, 0.401044,
		-0.338977, -0.417349, 0.843158,
		0.224920, -0.906180, -0.358119,
		25.578436, 34.243778, 35.437229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504955, 34.221870, 36.179642>,  <25.420992, 34.878105, 35.687912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504955, 34.221870, 36.179642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.742100, 34.241638, 35.858128>,  <25.884386, 34.253498, 35.665218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.742100, 34.241638, 35.858128>,  <25.504955, 34.221870, 36.179642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742100, 34.241638, 35.858128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803327, 0.033612, 0.594589,
		0.056402, -0.998212, -0.019773,
		0.592862, 0.049420, -0.803787,
		25.919958, 34.256462, 35.616993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878826, 33.566578, 36.168175>,  <25.504955, 34.221870, 36.179642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878826, 33.566578, 36.168175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.047947, 33.878773, 35.983967>,  <26.149420, 34.066090, 35.873440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.047947, 33.878773, 35.983967>,  <25.878826, 33.566578, 36.168175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047947, 33.878773, 35.983967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776172, -0.049577, 0.628569,
		0.467758, -0.623205, -0.626753,
		0.422800, 0.780486, -0.460524,
		26.174788, 34.112919, 35.845810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502060, 33.473969, 36.121208>,  <25.878826, 33.566578, 36.168175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502060, 33.473969, 36.121208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.504761, 33.873959, 36.120300>,  <26.506382, 34.113953, 36.119755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.504761, 33.873959, 36.120300>,  <26.502060, 33.473969, 36.121208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504761, 33.873959, 36.120300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677278, -0.002901, 0.735721,
		0.735696, -0.006509, -0.677280,
		0.006754, 0.999975, -0.002274,
		26.506786, 34.173950, 36.119617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197966, 33.679340, 36.288162>,  <26.502060, 33.473969, 36.121208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197966, 33.679340, 36.288162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988789, 33.999130, 36.406403>,  <26.863283, 34.191002, 36.477345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.988789, 33.999130, 36.406403>,  <27.197966, 33.679340, 36.288162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988789, 33.999130, 36.406403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531002, 0.034282, 0.846677,
		0.666760, 0.599726, -0.442448,
		-0.522942, 0.799471, 0.295598,
		26.831905, 34.238972, 36.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674368, 34.100822, 36.440411>,  <27.197966, 33.679340, 36.288162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674368, 34.100822, 36.440411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.343544, 34.192196, 36.645851>,  <27.145050, 34.247021, 36.769115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.343544, 34.192196, 36.645851>,  <27.674368, 34.100822, 36.440411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343544, 34.192196, 36.645851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535100, 0.040101, 0.843837,
		0.172167, 0.972733, -0.155402,
		-0.827059, 0.228437, 0.513605,
		27.095427, 34.260727, 36.799934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755556, 34.787621, 36.880333>,  <27.674368, 34.100822, 36.440411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755556, 34.787621, 36.880333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.567961, 34.477566, 37.049667>,  <27.455404, 34.291534, 37.151268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.567961, 34.477566, 37.049667>,  <27.755556, 34.787621, 36.880333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567961, 34.477566, 37.049667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642804, 0.029134, 0.765477,
		-0.605684, 0.631120, 0.484598,
		-0.468989, -0.775138, 0.423332,
		27.427263, 34.245026, 37.176666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631998, 34.903534, 37.590870>,  <27.755556, 34.787621, 36.880333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631998, 34.903534, 37.590870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.677509, 34.508366, 37.548798>,  <27.704815, 34.271263, 37.523556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.677509, 34.508366, 37.548798>,  <27.631998, 34.903534, 37.590870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677509, 34.508366, 37.548798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639768, -0.008140, 0.768525,
		-0.760100, -0.154731, 0.631115,
		0.113777, -0.987923, -0.105179,
		27.711643, 34.211990, 37.517242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521049, 34.338993, 38.105537>,  <27.631998, 34.903534, 37.590870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521049, 34.338993, 38.105537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861143, 34.252529, 37.913548>,  <28.065199, 34.200653, 37.798355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861143, 34.252529, 37.913548>,  <27.521049, 34.338993, 38.105537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861143, 34.252529, 37.913548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495236, 0.019374, 0.868542,
		-0.178442, -0.976166, 0.123522,
		0.850235, -0.216157, -0.479976,
		28.116213, 34.187683, 37.769554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840481, 33.701187, 38.470238>,  <27.521049, 34.338993, 38.105537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840481, 33.701187, 38.470238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.100109, 33.950436, 38.295685>,  <28.255886, 34.099987, 38.190952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.100109, 33.950436, 38.295685>,  <27.840481, 33.701187, 38.470238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100109, 33.950436, 38.295685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627868, -0.114919, 0.769789,
		0.429526, -0.773635, -0.465830,
		0.649068, 0.623124, -0.436380,
		28.294830, 34.137371, 38.164772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511574, 33.366161, 38.382610>,  <27.840481, 33.701187, 38.470238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511574, 33.366161, 38.382610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531311, 33.760883, 38.444290>,  <28.543154, 33.997719, 38.481297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.531311, 33.760883, 38.444290>,  <28.511574, 33.366161, 38.382610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531311, 33.760883, 38.444290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688839, -0.145420, 0.710179,
		0.723234, 0.071176, -0.686926,
		0.049345, 0.986807, 0.154201,
		28.546114, 34.056927, 38.490551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249212, 33.711441, 38.400642>,  <28.511574, 33.366161, 38.382610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249212, 33.711441, 38.400642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.943752, 33.845482, 38.621387>,  <28.760477, 33.925907, 38.753834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.943752, 33.845482, 38.621387>,  <29.249212, 33.711441, 38.400642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943752, 33.845482, 38.621387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476005, -0.285251, 0.831896,
		0.436188, 0.897963, 0.058321,
		-0.763648, 0.335102, 0.551858,
		28.714659, 33.946014, 38.786945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414629, 34.275265, 38.888302>,  <29.249212, 33.711441, 38.400642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414629, 34.275265, 38.888302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.142626, 34.008564, 39.010307>,  <28.979424, 33.848545, 39.083511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.142626, 34.008564, 39.010307>,  <29.414629, 34.275265, 38.888302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142626, 34.008564, 39.010307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639182, -0.335272, 0.692127,
		-0.359215, 0.665608, 0.654163,
		-0.680008, -0.666752, 0.305010,
		28.938623, 33.808537, 39.101810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426788, 34.209827, 39.555553>,  <29.414629, 34.275265, 38.888302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426788, 34.209827, 39.555553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.306368, 33.855721, 39.413754>,  <29.234116, 33.643257, 39.328674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.306368, 33.855721, 39.413754>,  <29.426788, 34.209827, 39.555553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306368, 33.855721, 39.413754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846161, -0.419413, 0.328793,
		-0.439751, -0.200981, 0.875343,
		-0.301049, -0.885268, -0.354499,
		29.216053, 33.590141, 39.307404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244394, 33.753517, 40.103420>,  <29.426788, 34.209827, 39.555553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244394, 33.753517, 40.103420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333019, 33.523571, 39.788349>,  <29.386194, 33.385605, 39.599304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333019, 33.523571, 39.788349>,  <29.244394, 33.753517, 40.103420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333019, 33.523571, 39.788349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750593, -0.415116, 0.514091,
		-0.622511, -0.705131, 0.339514,
		0.221564, -0.574864, -0.787681,
		29.399488, 33.351112, 39.552044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591599, 34.341869, 40.318649>,  <29.244394, 33.753517, 40.103420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591599, 34.341869, 40.318649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198183, 34.352039, 40.247093>,  <28.962133, 34.358143, 40.204159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198183, 34.352039, 40.247093>,  <29.591599, 34.341869, 40.318649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198183, 34.352039, 40.247093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174920, 0.382089, -0.907420,
		0.045279, -0.923776, -0.380248,
		-0.983541, 0.025426, -0.178887,
		28.903120, 34.359669, 40.193428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765188, 34.933491, 39.826668>,  <29.591599, 34.341869, 40.318649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765188, 34.933491, 39.826668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049501, 35.178108, 39.687645>,  <30.220089, 35.324879, 39.604229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049501, 35.178108, 39.687645>,  <29.765188, 34.933491, 39.826668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049501, 35.178108, 39.687645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235309, 0.258917, 0.936799,
		0.662884, -0.747646, 0.040132,
		0.710784, 0.611546, -0.347560,
		30.262737, 35.361572, 39.583378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377325, 34.594875, 39.959908>,  <29.765188, 34.933491, 39.826668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377325, 34.594875, 39.959908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322289, 34.989956, 39.989605>,  <30.289267, 35.227005, 40.007423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322289, 34.989956, 39.989605>,  <30.377325, 34.594875, 39.959908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322289, 34.989956, 39.989605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016737, -0.077268, 0.996870,
		0.990348, 0.135919, 0.027162,
		-0.137592, 0.987702, 0.074247,
		30.281012, 35.286266, 40.011879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877033, 34.911823, 40.351410>,  <30.377325, 34.594875, 39.959908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877033, 34.911823, 40.351410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602470, 35.184578, 40.452511>,  <30.437733, 35.348228, 40.513172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602470, 35.184578, 40.452511>,  <30.877033, 34.911823, 40.351410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602470, 35.184578, 40.452511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078391, -0.276157, 0.957910,
		0.722982, 0.677328, 0.136102,
		-0.686405, 0.681883, 0.252753,
		30.396549, 35.389141, 40.528336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214689, 35.371513, 40.808758>,  <30.877033, 34.911823, 40.351410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214689, 35.371513, 40.808758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.819712, 35.364346, 40.871532>,  <30.582726, 35.360046, 40.909199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.819712, 35.364346, 40.871532>,  <31.214689, 35.371513, 40.808758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819712, 35.364346, 40.871532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155576, -0.282133, 0.946677,
		0.027317, 0.959208, 0.281378,
		-0.987446, -0.017916, 0.156937,
		30.523478, 35.358971, 40.918613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068155, 35.808113, 41.359520>,  <31.214689, 35.371513, 40.808758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068155, 35.808113, 41.359520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778162, 35.535053, 41.322880>,  <30.604166, 35.371216, 41.300896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.778162, 35.535053, 41.322880>,  <31.068155, 35.808113, 41.359520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778162, 35.535053, 41.322880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179836, -0.315982, 0.931565,
		-0.664876, 0.658895, 0.351847,
		-0.724981, -0.682651, -0.091596,
		30.560667, 35.330257, 41.295403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813295, 35.880428, 41.978687>,  <31.068155, 35.808113, 41.359520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813295, 35.880428, 41.978687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772882, 35.512768, 41.826393>,  <30.748634, 35.292171, 41.735016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772882, 35.512768, 41.826393>,  <30.813295, 35.880428, 41.978687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772882, 35.512768, 41.826393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130507, -0.391634, 0.910819,
		-0.986286, 0.042335, 0.159523,
		-0.101035, -0.919147, -0.380738,
		30.742573, 35.237022, 41.712173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304617, 35.528744, 42.382030>,  <30.813295, 35.880428, 41.978687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304617, 35.528744, 42.382030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552341, 35.250591, 42.236214>,  <30.700977, 35.083698, 42.148724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552341, 35.250591, 42.236214>,  <30.304617, 35.528744, 42.382030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552341, 35.250591, 42.236214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101763, -0.389290, 0.915477,
		-0.778522, -0.604063, -0.170328,
		0.619312, -0.695386, -0.364543,
		30.738134, 35.041977, 42.126850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135807, 34.809017, 42.494934>,  <30.304617, 35.528744, 42.382030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135807, 34.809017, 42.494934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534929, 34.806049, 42.468609>,  <30.774403, 34.804268, 42.452812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534929, 34.806049, 42.468609>,  <30.135807, 34.809017, 42.494934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534929, 34.806049, 42.468609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057286, -0.402047, 0.913825,
		-0.033244, -0.915589, -0.400739,
		0.997804, -0.007423, -0.065816,
		30.834270, 34.803822, 42.448864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537535, 34.107800, 42.510303>,  <30.135807, 34.809017, 42.494934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537535, 34.107800, 42.510303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729160, 34.424946, 42.660965>,  <30.844135, 34.615234, 42.751362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.729160, 34.424946, 42.660965>,  <30.537535, 34.107800, 42.510303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729160, 34.424946, 42.660965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182115, -0.509534, 0.840957,
		0.858680, -0.334278, -0.388492,
		0.479064, 0.792864, 0.376650,
		30.872879, 34.662804, 42.773960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174341, 33.827679, 42.839890>,  <30.537535, 34.107800, 42.510303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174341, 33.827679, 42.839890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090038, 34.183617, 43.001762>,  <31.039457, 34.397179, 43.098885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090038, 34.183617, 43.001762>,  <31.174341, 33.827679, 42.839890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090038, 34.183617, 43.001762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307608, -0.332577, 0.891499,
		0.927878, 0.312373, -0.203629,
		-0.210758, 0.889840, 0.404679,
		31.026812, 34.450569, 43.123165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762905, 34.110294, 43.198761>,  <31.174341, 33.827679, 42.839890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762905, 34.110294, 43.198761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413614, 34.207619, 43.367653>,  <31.204041, 34.266014, 43.468987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.413614, 34.207619, 43.367653>,  <31.762905, 34.110294, 43.198761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413614, 34.207619, 43.367653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372217, -0.226228, 0.900153,
		0.314535, 0.943198, 0.106984,
		-0.873225, 0.243308, 0.422231,
		31.151648, 34.280613, 43.494324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865128, 34.501141, 43.771278>,  <31.762905, 34.110294, 43.198761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865128, 34.501141, 43.771278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519005, 34.308037, 43.825211>,  <31.311331, 34.192173, 43.857571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.519005, 34.308037, 43.825211>,  <31.865128, 34.501141, 43.771278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519005, 34.308037, 43.825211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314487, -0.313441, 0.896020,
		-0.390304, 0.817737, 0.423047,
		-0.865309, -0.482764, 0.134831,
		31.259413, 34.163208, 43.865662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680759, 34.622227, 44.521641>,  <31.865128, 34.501141, 43.771278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680759, 34.622227, 44.521641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517725, 34.293411, 44.362583>,  <31.419905, 34.096123, 44.267147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517725, 34.293411, 44.362583>,  <31.680759, 34.622227, 44.521641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517725, 34.293411, 44.362583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427223, -0.556522, 0.712576,
		-0.807066, 0.120551, 0.578025,
		-0.407585, -0.822041, -0.397647,
		31.395449, 34.046799, 44.243290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502535, 34.313290, 45.041950>,  <31.680759, 34.622227, 44.521641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502535, 34.313290, 45.041950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585173, 34.023510, 44.778896>,  <31.634756, 33.849640, 44.621063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585173, 34.023510, 44.778896>,  <31.502535, 34.313290, 45.041950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585173, 34.023510, 44.778896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493895, -0.503001, 0.709265,
		-0.844621, -0.471334, 0.253886,
		0.206596, -0.724454, -0.657636,
		31.647152, 33.806175, 44.581604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645454, 34.226471, 45.010490>,  <31.502535, 34.313290, 45.041950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645454, 34.226471, 45.010490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555382, 33.911144, 45.239521>,  <30.501339, 33.721947, 45.376938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555382, 33.911144, 45.239521>,  <30.645454, 34.226471, 45.010490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555382, 33.911144, 45.239521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949307, -0.045219, 0.311082,
		-0.219341, 0.613601, 0.758540,
		-0.225181, -0.788320, 0.572577,
		30.487827, 33.674648, 45.411293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034275, 34.288315, 45.628464>,  <30.645454, 34.226471, 45.010490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034275, 34.288315, 45.628464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.931433, 33.901840, 45.620651>,  <30.869726, 33.669956, 45.615963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.931433, 33.901840, 45.620651>,  <31.034275, 34.288315, 45.628464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931433, 33.901840, 45.620651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962986, -0.257844, 0.078581,
		-0.080958, 0.001399, 0.996717,
		-0.257107, -0.966186, -0.019527,
		30.854301, 33.611984, 45.614792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856972, 35.051342, 45.428440>,  <31.034275, 34.288315, 45.628464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856972, 35.051342, 45.428440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961212, 35.350639, 45.672482>,  <31.023756, 35.530216, 45.818905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961212, 35.350639, 45.672482>,  <30.856972, 35.051342, 45.428440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961212, 35.350639, 45.672482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604787, -0.619101, 0.500946,
		0.752542, 0.238433, -0.613865,
		0.260602, 0.748240, 0.610101,
		31.039392, 35.575111, 45.855511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557331, 34.999290, 45.540020>,  <30.856972, 35.051342, 45.428440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557331, 34.999290, 45.540020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407845, 35.218418, 45.839413>,  <31.318151, 35.349895, 46.019047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.407845, 35.218418, 45.839413>,  <31.557331, 34.999290, 45.540020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407845, 35.218418, 45.839413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679453, -0.387631, 0.622965,
		0.631409, 0.741372, -0.227355,
		-0.373719, 0.547823, 0.748481,
		31.295729, 35.382767, 46.063957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028442, 35.540379, 45.899338>,  <31.557331, 34.999290, 45.540020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028442, 35.540379, 45.899338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761232, 35.420052, 46.171585>,  <31.600906, 35.347855, 46.334934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.761232, 35.420052, 46.171585>,  <32.028442, 35.540379, 45.899338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761232, 35.420052, 46.171585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730401, -0.090151, 0.677043,
		-0.142310, 0.949410, 0.279943,
		-0.668029, -0.300821, 0.680621,
		31.560823, 35.329803, 46.375771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146854, 35.921989, 46.516285>,  <32.028442, 35.540379, 45.899338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146854, 35.921989, 46.516285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971907, 35.570404, 46.592312>,  <31.866938, 35.359451, 46.637928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.971907, 35.570404, 46.592312>,  <32.146854, 35.921989, 46.516285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971907, 35.570404, 46.592312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696322, -0.197264, 0.690089,
		-0.569073, 0.434169, 0.698321,
		-0.437369, -0.878967, 0.190064,
		31.840696, 35.306713, 46.649330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043415, 35.919933, 47.207664>,  <32.146854, 35.921989, 46.516285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043415, 35.919933, 47.207664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079884, 35.543411, 47.077660>,  <32.101765, 35.317497, 46.999657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079884, 35.543411, 47.077660>,  <32.043415, 35.919933, 47.207664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079884, 35.543411, 47.077660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796495, -0.126974, 0.591163,
		-0.597733, -0.312767, 0.738168,
		0.091169, -0.941304, -0.325014,
		32.107235, 35.261021, 46.980156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261524, 36.161522, 47.842033>,  <32.043415, 35.919933, 47.207664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261524, 36.161522, 47.842033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510876, 36.260513, 48.138721>,  <32.660484, 36.319908, 48.316734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510876, 36.260513, 48.138721>,  <32.261524, 36.161522, 47.842033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510876, 36.260513, 48.138721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664134, 0.333099, -0.669307,
		-0.412708, 0.909834, 0.043286,
		0.623377, 0.247480, 0.741724,
		32.697887, 36.334759, 48.361240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191395, 35.574627, 48.430244>,  <32.261524, 36.161522, 47.842033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191395, 35.574627, 48.430244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402859, 35.315323, 48.649433>,  <32.529736, 35.159740, 48.780945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402859, 35.315323, 48.649433>,  <32.191395, 35.574627, 48.430244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402859, 35.315323, 48.649433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816208, 0.210963, -0.537866,
		0.233076, 0.731608, 0.640645,
		0.528659, -0.648263, 0.547973,
		32.561455, 35.120846, 48.813824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826668, 35.836784, 48.533314>,  <32.191395, 35.574627, 48.430244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826668, 35.836784, 48.533314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931671, 35.464909, 48.636673>,  <32.994675, 35.241783, 48.698689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.931671, 35.464909, 48.636673>,  <32.826668, 35.836784, 48.533314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931671, 35.464909, 48.636673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929738, 0.172041, -0.325559,
		0.258212, 0.325707, 0.909528,
		0.262513, -0.929686, 0.258399,
		33.010426, 35.186001, 48.714191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416431, 35.867943, 48.948387>,  <32.826668, 35.836784, 48.533314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416431, 35.867943, 48.948387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415691, 35.500340, 48.790691>,  <33.415249, 35.279778, 48.696075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415691, 35.500340, 48.790691>,  <33.416431, 35.867943, 48.948387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415691, 35.500340, 48.790691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940763, 0.132072, -0.312284,
		0.339059, -0.371463, 0.864323,
		-0.001849, -0.919006, -0.394239,
		33.415138, 35.224636, 48.672421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058727, 35.548828, 49.085724>,  <33.416431, 35.867943, 48.948387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058727, 35.548828, 49.085724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922684, 35.342278, 48.771355>,  <33.841057, 35.218346, 48.582733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922684, 35.342278, 48.771355>,  <34.058727, 35.548828, 49.085724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922684, 35.342278, 48.771355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934633, -0.093320, -0.343151,
		0.103852, -0.851262, 0.514362,
		-0.340112, -0.516376, -0.785926,
		33.820652, 35.187366, 48.535576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602310, 35.025513, 48.986450>,  <34.058727, 35.548828, 49.085724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602310, 35.025513, 48.986450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385952, 35.006664, 48.650543>,  <34.256138, 34.995354, 48.448997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385952, 35.006664, 48.650543>,  <34.602310, 35.025513, 48.986450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385952, 35.006664, 48.650543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821165, -0.245613, -0.515134,
		-0.181981, -0.968222, 0.171550,
		-0.540899, -0.047126, -0.839767,
		34.223682, 34.992527, 48.398613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712238, 34.287476, 48.576450>,  <34.602310, 35.025513, 48.986450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712238, 34.287476, 48.576450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614811, 34.580170, 48.321815>,  <34.556355, 34.755787, 48.169033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614811, 34.580170, 48.321815>,  <34.712238, 34.287476, 48.576450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614811, 34.580170, 48.321815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814547, -0.201960, -0.543807,
		-0.526486, -0.650985, -0.546838,
		-0.243570, 0.731732, -0.636586,
		34.541740, 34.799690, 48.130840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863422, 33.972553, 47.983177>,  <34.712238, 34.287476, 48.576450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863422, 33.972553, 47.983177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862396, 34.366341, 47.912960>,  <34.861782, 34.602612, 47.870831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862396, 34.366341, 47.912960>,  <34.863422, 33.972553, 47.983177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862396, 34.366341, 47.912960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859311, -0.087613, -0.503893,
		-0.511447, -0.152137, -0.845740,
		-0.002563, 0.984469, -0.175543,
		34.861626, 34.661682, 47.860298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125408, 33.899334, 47.449062>,  <34.863422, 33.972553, 47.983177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125408, 33.899334, 47.449062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157402, 34.290348, 47.527058>,  <35.176598, 34.524956, 47.573856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.157402, 34.290348, 47.527058>,  <35.125408, 33.899334, 47.449062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157402, 34.290348, 47.527058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873026, 0.025706, -0.486995,
		-0.481069, 0.209187, -0.851360,
		0.079988, 0.977538, 0.194992,
		35.181400, 34.583611, 47.585556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295979, 34.200157, 46.791489>,  <35.125408, 33.899334, 47.449062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295979, 34.200157, 46.791489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402115, 34.476585, 47.060417>,  <35.465797, 34.642441, 47.221775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402115, 34.476585, 47.060417>,  <35.295979, 34.200157, 46.791489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402115, 34.476585, 47.060417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944638, -0.046736, -0.324770,
		-0.193016, 0.721277, -0.665210,
		0.265338, 0.691068, 0.672325,
		35.481716, 34.683907, 47.262115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695774, 34.755688, 46.478214>,  <35.295979, 34.200157, 46.791489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695774, 34.755688, 46.478214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799198, 34.759224, 46.864597>,  <35.861252, 34.761345, 47.096428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799198, 34.759224, 46.864597>,  <35.695774, 34.755688, 46.478214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799198, 34.759224, 46.864597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960506, -0.108805, -0.256106,
		0.102838, 0.994024, -0.036621,
		0.258560, 0.008838, 0.965955,
		35.876766, 34.761875, 47.154385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244335, 35.088913, 46.418701>,  <35.695774, 34.755688, 46.478214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244335, 35.088913, 46.418701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262878, 34.931652, 46.786022>,  <36.274006, 34.837296, 47.006416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.262878, 34.931652, 46.786022>,  <36.244335, 35.088913, 46.418701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262878, 34.931652, 46.786022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992111, -0.089069, -0.088218,
		0.116476, 0.915147, 0.385926,
		0.046358, -0.393157, 0.918302,
		36.276787, 34.813705, 47.061512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745991, 35.435055, 46.758457>,  <36.244335, 35.088913, 46.418701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745991, 35.435055, 46.758457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737717, 35.081078, 46.944550>,  <36.732754, 34.868690, 47.056206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737717, 35.081078, 46.944550>,  <36.745991, 35.435055, 46.758457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737717, 35.081078, 46.944550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991276, -0.078738, -0.105700,
		0.130171, 0.458986, 0.878856,
		-0.020685, -0.884947, 0.465231,
		36.731510, 34.815594, 47.084118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251171, 35.443230, 47.212532>,  <36.745991, 35.435055, 46.758457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251171, 35.443230, 47.212532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186428, 35.054634, 47.143230>,  <37.147583, 34.821476, 47.101650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186428, 35.054634, 47.143230>,  <37.251171, 35.443230, 47.212532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186428, 35.054634, 47.143230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973941, -0.129003, -0.186541,
		0.158872, -0.198931, 0.967050,
		-0.161861, -0.971486, -0.173252,
		37.137871, 34.763187, 47.091255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732899, 35.028801, 47.595997>,  <37.251171, 35.443230, 47.212532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732899, 35.028801, 47.595997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622105, 34.842800, 47.259651>,  <37.555626, 34.731197, 47.057846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.622105, 34.842800, 47.259651>,  <37.732899, 35.028801, 47.595997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622105, 34.842800, 47.259651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960670, -0.152013, -0.232390,
		-0.019759, -0.872159, 0.488822,
		-0.276989, -0.465005, -0.840861,
		37.539009, 34.703300, 47.007393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293224, 34.642735, 47.535587>,  <37.732899, 35.028801, 47.595997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293224, 34.642735, 47.535587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091755, 34.683079, 47.192394>,  <37.970875, 34.707283, 46.986477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.091755, 34.683079, 47.192394>,  <38.293224, 34.642735, 47.535587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091755, 34.683079, 47.192394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863888, 0.062371, -0.499808,
		0.003104, -0.992944, -0.118544,
		-0.503675, 0.100858, -0.857986,
		37.940651, 34.713337, 46.934998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638882, 34.328346, 47.018974>,  <38.293224, 34.642735, 47.535587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638882, 34.328346, 47.018974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414440, 34.594543, 46.822086>,  <38.279774, 34.754261, 46.703953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414440, 34.594543, 46.822086>,  <38.638882, 34.328346, 47.018974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414440, 34.594543, 46.822086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812939, 0.331089, -0.479071,
		-0.155849, -0.668955, -0.726780,
		-0.561107, 0.665491, -0.492220,
		38.246109, 34.794189, 46.674419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976101, 33.833813, 47.470798>,  <38.638882, 34.328346, 47.018974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976101, 33.833813, 47.470798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338150, 33.680538, 47.544479>,  <39.555378, 33.588573, 47.588688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.338150, 33.680538, 47.544479>,  <38.976101, 33.833813, 47.470798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338150, 33.680538, 47.544479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331961, -0.366241, 0.869292,
		-0.265634, -0.847962, -0.458694,
		0.905119, -0.383182, 0.184205,
		39.609684, 33.565582, 47.599739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822811, 33.189228, 47.784946>,  <38.976101, 33.833813, 47.470798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822811, 33.189228, 47.784946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197422, 33.275421, 47.895573>,  <39.422188, 33.327137, 47.961948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.197422, 33.275421, 47.895573>,  <38.822811, 33.189228, 47.784946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197422, 33.275421, 47.895573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237620, -0.189895, 0.952616,
		0.257794, -0.957865, -0.126637,
		0.936525, 0.215487, 0.276562,
		39.478378, 33.340069, 47.978542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142746, 32.618881, 48.186768>,  <38.822811, 33.189228, 47.784946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142746, 32.618881, 48.186768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.324203, 32.956768, 48.300365>,  <39.433079, 33.159500, 48.368523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.324203, 32.956768, 48.300365>,  <39.142746, 32.618881, 48.186768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324203, 32.956768, 48.300365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075738, -0.280972, 0.956723,
		0.887957, -0.455524, -0.063485,
		0.453648, 0.844720, 0.283991,
		39.460297, 33.210186, 48.385563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682262, 32.510109, 48.668457>,  <39.142746, 32.618881, 48.186768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682262, 32.510109, 48.668457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542702, 32.878788, 48.736275>,  <39.458965, 33.099995, 48.776966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.542702, 32.878788, 48.736275>,  <39.682262, 32.510109, 48.668457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542702, 32.878788, 48.736275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122336, -0.224161, 0.966843,
		0.929142, 0.316587, 0.190966,
		-0.348897, 0.921696, 0.169548,
		39.438034, 33.155296, 48.787140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078423, 32.742947, 49.294254>,  <39.682262, 32.510109, 48.668457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078423, 32.742947, 49.294254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754013, 32.976288, 49.276657>,  <39.559368, 33.116291, 49.266098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754013, 32.976288, 49.276657>,  <40.078423, 32.742947, 49.294254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754013, 32.976288, 49.276657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219158, -0.233243, 0.947400,
		0.542407, 0.778008, 0.317013,
		-0.811026, 0.583353, -0.043994,
		39.510704, 33.151295, 49.263458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060421, 33.000652, 50.006310>,  <40.078423, 32.742947, 49.294254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060421, 33.000652, 50.006310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693329, 33.050262, 49.855370>,  <39.473076, 33.080029, 49.764805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.693329, 33.050262, 49.855370>,  <40.060421, 33.000652, 50.006310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693329, 33.050262, 49.855370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394367, -0.171005, 0.902902,
		0.047455, 0.977432, 0.205848,
		-0.917727, 0.124027, -0.377352,
		39.418011, 33.087471, 49.742165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646770, 33.353344, 50.492348>,  <40.060421, 33.000652, 50.006310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646770, 33.353344, 50.492348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362167, 33.183788, 50.268177>,  <39.191406, 33.082054, 50.133675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.362167, 33.183788, 50.268177>,  <39.646770, 33.353344, 50.492348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362167, 33.183788, 50.268177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570128, -0.117962, 0.813043,
		-0.410748, 0.898000, -0.157739,
		-0.711505, -0.423887, -0.560428,
		39.148716, 33.056622, 50.100048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023739, 33.770153, 50.574226>,  <39.646770, 33.353344, 50.492348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023739, 33.770153, 50.574226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923073, 33.403370, 50.450386>,  <38.862675, 33.183300, 50.376083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923073, 33.403370, 50.450386>,  <39.023739, 33.770153, 50.574226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923073, 33.403370, 50.450386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687160, -0.055975, 0.724347,
		-0.681526, 0.395037, -0.616010,
		-0.251663, -0.916958, -0.309602,
		38.847572, 33.128281, 50.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244984, 33.763077, 50.457935>,  <39.023739, 33.770153, 50.574226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244984, 33.763077, 50.457935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425735, 33.418930, 50.552231>,  <38.534187, 33.212440, 50.608807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425735, 33.418930, 50.552231>,  <38.244984, 33.763077, 50.457935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425735, 33.418930, 50.552231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699407, -0.177656, 0.692292,
		-0.553745, -0.477711, -0.682025,
		0.451881, -0.860367, 0.235738,
		38.561298, 33.160820, 50.622952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668365, 33.499420, 50.703384>,  <38.244984, 33.763077, 50.457935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668365, 33.499420, 50.703384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967266, 33.253551, 50.804417>,  <38.146606, 33.106030, 50.865036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967266, 33.253551, 50.804417>,  <37.668365, 33.499420, 50.703384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967266, 33.253551, 50.804417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512357, -0.290830, 0.808027,
		-0.423217, -0.733207, -0.532255,
		0.747247, -0.614675, 0.252580,
		38.191441, 33.069149, 50.880192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316078, 32.840755, 50.877270>,  <37.668365, 33.499420, 50.703384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316078, 32.840755, 50.877270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670162, 32.854233, 51.062859>,  <37.882614, 32.862320, 51.174213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670162, 32.854233, 51.062859>,  <37.316078, 32.840755, 50.877270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670162, 32.854233, 51.062859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452478, -0.169252, 0.875567,
		0.108028, -0.984997, -0.134578,
		0.885209, 0.033692, 0.463973,
		37.935726, 32.864342, 51.202049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382614, 32.193180, 51.281185>,  <37.316078, 32.840755, 50.877270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382614, 32.193180, 51.281185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626904, 32.459225, 51.453072>,  <37.773476, 32.618851, 51.556202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626904, 32.459225, 51.453072>,  <37.382614, 32.193180, 51.281185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626904, 32.459225, 51.453072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301771, -0.306227, 0.902862,
		0.732090, -0.681071, 0.013691,
		0.610720, 0.665107, 0.429713,
		37.810120, 32.658756, 51.581985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687073, 31.865456, 51.934788>,  <37.382614, 32.193180, 51.281185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687073, 31.865456, 51.934788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715282, 32.262165, 51.977509>,  <37.732208, 32.500191, 52.003143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715282, 32.262165, 51.977509>,  <37.687073, 31.865456, 51.934788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715282, 32.262165, 51.977509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244132, -0.086652, 0.965863,
		0.967174, -0.094194, 0.236013,
		0.070528, 0.991776, 0.106804,
		37.736443, 32.559696, 52.009548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843277, 31.853148, 52.601902>,  <37.687073, 31.865456, 51.934788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843277, 31.853148, 52.601902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756145, 32.233986, 52.516048>,  <37.703869, 32.462490, 52.464539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.756145, 32.233986, 52.516048>,  <37.843277, 31.853148, 52.601902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756145, 32.233986, 52.516048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282283, 0.149054, 0.947681,
		0.934275, 0.267015, 0.236292,
		-0.217824, 0.952096, -0.214632,
		37.690800, 32.519615, 52.451660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115421, 32.206310, 53.087303>,  <37.843277, 31.853148, 52.601902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115421, 32.206310, 53.087303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844463, 32.470463, 52.957664>,  <37.681889, 32.628956, 52.879883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.844463, 32.470463, 52.957664>,  <38.115421, 32.206310, 53.087303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844463, 32.470463, 52.957664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243222, 0.214736, 0.945902,
		0.694251, 0.719573, 0.015159,
		-0.677391, 0.660381, -0.324097,
		37.641247, 32.668575, 52.860435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126709, 32.780842, 53.529415>,  <38.115421, 32.206310, 53.087303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126709, 32.780842, 53.529415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763000, 32.786270, 53.363022>,  <37.544777, 32.789528, 53.263187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763000, 32.786270, 53.363022>,  <38.126709, 32.780842, 53.529415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763000, 32.786270, 53.363022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406480, 0.185817, 0.894565,
		0.089433, 0.982491, -0.163443,
		-0.909272, 0.013567, -0.415981,
		37.490219, 32.790340, 53.238228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713238, 33.492275, 53.685284>,  <38.126709, 32.780842, 53.529415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713238, 33.492275, 53.685284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464176, 33.195213, 53.586685>,  <37.314739, 33.016975, 53.527527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464176, 33.195213, 53.586685>,  <37.713238, 33.492275, 53.685284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464176, 33.195213, 53.586685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471006, 0.104152, 0.875960,
		-0.624864, 0.661522, -0.414647,
		-0.622653, -0.742658, -0.246500,
		37.277382, 32.972416, 53.512733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087154, 33.730282, 53.874462>,  <37.713238, 33.492275, 53.685284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087154, 33.730282, 53.874462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974117, 33.348019, 53.841324>,  <36.906296, 33.118660, 53.821442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974117, 33.348019, 53.841324>,  <37.087154, 33.730282, 53.874462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974117, 33.348019, 53.841324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639996, 0.123509, 0.758387,
		-0.714524, 0.267338, -0.646518,
		-0.282596, -0.955655, -0.082845,
		36.889339, 33.061321, 53.816471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430187, 33.775848, 53.841782>,  <37.087154, 33.730282, 53.874462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430187, 33.775848, 53.841782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521626, 33.403122, 53.954540>,  <36.576488, 33.179485, 54.022194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521626, 33.403122, 53.954540>,  <36.430187, 33.775848, 53.841782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521626, 33.403122, 53.954540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636490, 0.076045, 0.767527,
		-0.736630, -0.354877, -0.575707,
		0.228598, -0.931815, 0.281893,
		36.590206, 33.123577, 54.039108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835068, 33.561028, 54.098083>,  <36.430187, 33.775848, 53.841782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835068, 33.561028, 54.098083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110500, 33.309177, 54.241982>,  <36.275761, 33.158066, 54.328320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.110500, 33.309177, 54.241982>,  <35.835068, 33.561028, 54.098083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110500, 33.309177, 54.241982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532031, -0.101548, 0.840614,
		-0.492743, -0.770231, -0.404906,
		0.688584, -0.629629, 0.359749,
		36.317074, 33.120289, 54.349907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504086, 33.056789, 54.341564>,  <35.835068, 33.561028, 54.098083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504086, 33.056789, 54.341564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844444, 33.000023, 54.543880>,  <36.048660, 32.965961, 54.665272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844444, 33.000023, 54.543880>,  <35.504086, 33.056789, 54.341564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844444, 33.000023, 54.543880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518481, -0.071940, 0.852058,
		-0.084558, -0.987257, -0.134809,
		0.850898, -0.141944, 0.505791,
		36.099716, 32.957447, 54.695618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352741, 32.560875, 54.794724>,  <35.504086, 33.056789, 54.341564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352741, 32.560875, 54.794724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657898, 32.769497, 54.947552>,  <35.840992, 32.894669, 55.039249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657898, 32.769497, 54.947552>,  <35.352741, 32.560875, 54.794724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657898, 32.769497, 54.947552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449133, 0.002442, 0.893461,
		0.465055, -0.853215, 0.236110,
		0.762891, 0.521554, 0.382072,
		35.886765, 32.925964, 55.062172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437141, 32.254868, 55.452934>,  <35.352741, 32.560875, 54.794724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437141, 32.254868, 55.452934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633682, 32.601349, 55.489319>,  <35.751606, 32.809238, 55.511150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633682, 32.601349, 55.489319>,  <35.437141, 32.254868, 55.452934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633682, 32.601349, 55.489319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386637, 0.123345, 0.913946,
		0.780441, -0.484234, 0.395511,
		0.491348, 0.866200, 0.090959,
		35.781086, 32.861210, 55.516605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875225, 32.214088, 56.059612>,  <35.437141, 32.254868, 55.452934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875225, 32.214088, 56.059612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825058, 32.600319, 55.968456>,  <35.794956, 32.832058, 55.913761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825058, 32.600319, 55.968456>,  <35.875225, 32.214088, 56.059612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825058, 32.600319, 55.968456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117091, 0.213692, 0.969858,
		0.985170, 0.148322, 0.086259,
		-0.125418, 0.965576, -0.227890,
		35.787434, 32.889992, 55.900089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076012, 32.640602, 56.672043>,  <35.875225, 32.214088, 56.059612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076012, 32.640602, 56.672043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924789, 32.930195, 56.441242>,  <35.834057, 33.103951, 56.302761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924789, 32.930195, 56.441242>,  <36.076012, 32.640602, 56.672043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924789, 32.930195, 56.441242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156721, 0.564211, 0.810620,
		0.912423, 0.396884, -0.099838,
		-0.378051, 0.723981, -0.576999,
		35.811375, 33.147388, 56.268143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298321, 33.175816, 56.956287>,  <36.076012, 32.640602, 56.672043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298321, 33.175816, 56.956287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985912, 33.307598, 56.744076>,  <35.798466, 33.386669, 56.616749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985912, 33.307598, 56.744076>,  <36.298321, 33.175816, 56.956287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985912, 33.307598, 56.744076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290960, 0.559721, 0.775922,
		0.552582, 0.760375, -0.341296,
		-0.781022, 0.329457, -0.530530,
		35.751606, 33.406437, 56.584915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295116, 33.994190, 56.927517>,  <36.298321, 33.175816, 56.956287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295116, 33.994190, 56.927517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927124, 33.840988, 56.894184>,  <35.706329, 33.749065, 56.874184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.927124, 33.840988, 56.894184>,  <36.295116, 33.994190, 56.927517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927124, 33.840988, 56.894184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352888, 0.716777, 0.601416,
		-0.170617, 0.582697, -0.794578,
		-0.919978, -0.383009, -0.083333,
		35.651131, 33.726086, 56.869183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854500, 34.534081, 56.975735>,  <36.295116, 33.994190, 56.927517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854500, 34.534081, 56.975735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602531, 34.234440, 57.057762>,  <35.451351, 34.054657, 57.106979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602531, 34.234440, 57.057762>,  <35.854500, 34.534081, 56.975735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602531, 34.234440, 57.057762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311040, 0.485258, 0.817177,
		-0.711658, 0.450970, -0.538673,
		-0.629918, -0.749099, 0.205068,
		35.413555, 34.009708, 57.119282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277180, 34.916016, 57.171413>,  <35.854500, 34.534081, 56.975735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277180, 34.916016, 57.171413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233631, 34.541672, 57.305462>,  <35.207500, 34.317066, 57.385891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233631, 34.541672, 57.305462>,  <35.277180, 34.916016, 57.171413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233631, 34.541672, 57.305462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517465, 0.341205, 0.784735,
		-0.848750, -0.087979, -0.521423,
		-0.108872, -0.935862, 0.335124,
		35.200970, 34.260914, 57.405998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642372, 34.869202, 57.605022>,  <35.277180, 34.916016, 57.171413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642372, 34.869202, 57.605022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822170, 34.541512, 57.747467>,  <34.930050, 34.344898, 57.832932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822170, 34.541512, 57.747467>,  <34.642372, 34.869202, 57.605022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822170, 34.541512, 57.747467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336714, 0.213859, 0.917000,
		-0.827390, -0.532097, -0.179717,
		0.449499, -0.819230, 0.356109,
		34.957020, 34.295742, 57.854301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157249, 34.498196, 57.976379>,  <34.642372, 34.869202, 57.605022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157249, 34.498196, 57.976379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.510956, 34.378834, 58.120064>,  <34.723179, 34.307217, 58.206272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.510956, 34.378834, 58.120064>,  <34.157249, 34.498196, 57.976379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510956, 34.378834, 58.120064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344501, 0.102463, 0.933177,
		-0.315274, -0.948922, -0.012198,
		0.884263, -0.298408, 0.359209,
		34.776234, 34.289310, 58.227825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101257, 33.966732, 58.395588>,  <34.157249, 34.498196, 57.976379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101257, 33.966732, 58.395588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447723, 34.104649, 58.540295>,  <34.655605, 34.187397, 58.627117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447723, 34.104649, 58.540295>,  <34.101257, 33.966732, 58.395588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447723, 34.104649, 58.540295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335841, -0.134482, 0.932269,
		0.370087, -0.928997, -0.000690,
		0.866167, 0.344788, 0.361766,
		34.707573, 34.208084, 58.648823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218006, 33.441284, 58.951931>,  <34.101257, 33.966732, 58.395588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218006, 33.441284, 58.951931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441807, 33.765152, 59.022797>,  <34.576088, 33.959473, 59.065315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441807, 33.765152, 59.022797>,  <34.218006, 33.441284, 58.951931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441807, 33.765152, 59.022797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272271, -0.022342, 0.961961,
		0.782829, -0.586460, 0.207949,
		0.559506, 0.809670, 0.177166,
		34.609657, 34.008053, 59.075947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617760, 33.225391, 59.503090>,  <34.218006, 33.441284, 58.951931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617760, 33.225391, 59.503090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603111, 33.625114, 59.505550>,  <34.594322, 33.864948, 59.507027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603111, 33.625114, 59.505550>,  <34.617760, 33.225391, 59.503090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603111, 33.625114, 59.505550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034182, -0.007402, 0.999388,
		0.998744, 0.036388, 0.034430,
		-0.036621, 0.999310, 0.006149,
		34.592125, 33.924908, 59.507397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186935, 33.509838, 59.964916>,  <34.617760, 33.225391, 59.503090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186935, 33.509838, 59.964916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896671, 33.784252, 59.943863>,  <34.722511, 33.948898, 59.931229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.896671, 33.784252, 59.943863>,  <35.186935, 33.509838, 59.964916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896671, 33.784252, 59.943863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064910, 0.007900, 0.997860,
		0.684980, 0.727528, 0.038797,
		-0.725665, 0.686033, -0.052635,
		34.678970, 33.990063, 59.928074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159157, 33.918957, 60.632042>,  <35.186935, 33.509838, 59.964916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159157, 33.918957, 60.632042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809925, 34.049461, 60.487110>,  <34.600388, 34.127766, 60.400150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809925, 34.049461, 60.487110>,  <35.159157, 33.918957, 60.632042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809925, 34.049461, 60.487110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277030, 0.279583, 0.919287,
		0.401232, 0.902987, -0.153713,
		-0.873079, 0.326264, -0.362332,
		34.548000, 34.147339, 60.378410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046402, 34.486145, 61.008255>,  <35.159157, 33.918957, 60.632042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046402, 34.486145, 61.008255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689365, 34.387493, 60.857281>,  <34.475143, 34.328300, 60.766697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.689365, 34.387493, 60.857281>,  <35.046402, 34.486145, 61.008255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689365, 34.387493, 60.857281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408280, 0.086971, 0.908704,
		-0.191287, 0.965200, -0.178323,
		-0.892590, -0.246629, -0.377435,
		34.421589, 34.313503, 60.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629215, 35.006767, 61.072548>,  <35.046402, 34.486145, 61.008255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629215, 35.006767, 61.072548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381050, 34.694351, 61.044060>,  <34.232151, 34.506901, 61.026966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381050, 34.694351, 61.044060>,  <34.629215, 35.006767, 61.072548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381050, 34.694351, 61.044060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341861, 0.187585, 0.920838,
		-0.705849, 0.595645, -0.383386,
		-0.620410, -0.781037, -0.071222,
		34.194927, 34.460041, 61.022694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067543, 35.296589, 61.369602>,  <34.629215, 35.006767, 61.072548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067543, 35.296589, 61.369602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012974, 34.900475, 61.380363>,  <33.980232, 34.662807, 61.386818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012974, 34.900475, 61.380363>,  <34.067543, 35.296589, 61.369602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012974, 34.900475, 61.380363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321324, 0.069919, 0.944385,
		-0.937092, 0.120189, -0.327740,
		-0.136420, -0.990286, 0.026901,
		33.972046, 34.603390, 61.388435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430752, 35.214821, 61.582310>,  <34.067543, 35.296589, 61.369602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430752, 35.214821, 61.582310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.599018, 34.860653, 61.661369>,  <33.699978, 34.648151, 61.708805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.599018, 34.860653, 61.661369>,  <33.430752, 35.214821, 61.582310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599018, 34.860653, 61.661369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328773, 0.054269, 0.942849,
		-0.845545, -0.461610, -0.268273,
		0.420669, -0.885422, 0.197652,
		33.725220, 34.595028, 61.720665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921978, 34.904747, 61.896290>,  <33.430752, 35.214821, 61.582310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921978, 34.904747, 61.896290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264343, 34.720768, 61.990826>,  <33.469765, 34.610382, 62.047546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.264343, 34.720768, 61.990826>,  <32.921978, 34.904747, 61.896290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264343, 34.720768, 61.990826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257045, 0.018160, 0.966229,
		-0.448703, -0.887763, -0.102682,
		0.855917, -0.459943, 0.236343,
		33.521118, 34.582787, 62.061729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682461, 34.390167, 62.303341>,  <32.921978, 34.904747, 61.896290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682461, 34.390167, 62.303341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067795, 34.445152, 62.395508>,  <33.298996, 34.478142, 62.450806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.067795, 34.445152, 62.395508>,  <32.682461, 34.390167, 62.303341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067795, 34.445152, 62.395508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224666, -0.056175, 0.972815,
		0.146670, -0.988913, -0.023232,
		0.963334, 0.137463, 0.230414,
		33.356796, 34.486393, 62.464634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739666, 33.940022, 62.860275>,  <32.682461, 34.390167, 62.303341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739666, 33.940022, 62.860275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055702, 34.183331, 62.890648>,  <33.245323, 34.329315, 62.908871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055702, 34.183331, 62.890648>,  <32.739666, 33.940022, 62.860275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055702, 34.183331, 62.890648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152674, 0.075294, 0.985404,
		0.593678, -0.790148, 0.152356,
		0.790087, 0.608274, 0.075934,
		33.292728, 34.365814, 62.913429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042068, 33.783314, 63.497681>,  <32.739666, 33.940022, 62.860275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042068, 33.783314, 63.497681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189587, 34.142277, 63.400803>,  <33.278095, 34.357655, 63.342674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189587, 34.142277, 63.400803>,  <33.042068, 33.783314, 63.497681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189587, 34.142277, 63.400803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052727, 0.280342, 0.958451,
		0.928015, -0.340699, 0.150706,
		0.368793, 0.897403, -0.242197,
		33.300224, 34.411499, 63.328144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579132, 33.877232, 63.896587>,  <33.042068, 33.783314, 63.497681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579132, 33.877232, 63.896587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516445, 34.255585, 63.782928>,  <33.478832, 34.482597, 63.714733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516445, 34.255585, 63.782928>,  <33.579132, 33.877232, 63.896587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516445, 34.255585, 63.782928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074090, 0.275632, 0.958404,
		0.984861, 0.171251, 0.026884,
		-0.156717, 0.945886, -0.284147,
		33.469429, 34.539352, 63.697685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036903, 34.358608, 64.287254>,  <33.579132, 33.877232, 63.896587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036903, 34.358608, 64.287254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709816, 34.550259, 64.159653>,  <33.513561, 34.665249, 64.083092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709816, 34.550259, 64.159653>,  <34.036903, 34.358608, 64.287254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709816, 34.550259, 64.159653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132691, 0.382374, 0.914430,
		0.560112, 0.790079, -0.249099,
		-0.817721, 0.479130, -0.319009,
		33.464500, 34.693996, 64.063950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033474, 35.099762, 64.458160>,  <34.036903, 34.358608, 64.287254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033474, 35.099762, 64.458160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644993, 35.019356, 64.406998>,  <33.411903, 34.971111, 64.376297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644993, 35.019356, 64.406998>,  <34.033474, 35.099762, 64.458160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644993, 35.019356, 64.406998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224120, 0.588558, 0.776769,
		-0.080856, 0.783067, -0.616659,
		-0.971202, -0.201012, -0.127913,
		33.353634, 34.959053, 64.368622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684067, 35.792393, 64.258537>,  <34.033474, 35.099762, 64.458160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684067, 35.792393, 64.258537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.462616, 35.501659, 64.421120>,  <33.329746, 35.327217, 64.518669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.462616, 35.501659, 64.421120>,  <33.684067, 35.792393, 64.258537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462616, 35.501659, 64.421120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363948, 0.650180, 0.666940,
		-0.749026, 0.221307, -0.624487,
		-0.553627, -0.726835, 0.406457,
		33.296528, 35.283607, 64.543060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028843, 36.146122, 64.345444>,  <33.684067, 35.792393, 64.258537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028843, 36.146122, 64.345444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081905, 35.824902, 64.577827>,  <33.113743, 35.632168, 64.717255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.081905, 35.824902, 64.577827>,  <33.028843, 36.146122, 64.345444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081905, 35.824902, 64.577827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269691, 0.534776, 0.800800,
		-0.953765, -0.262910, -0.145635,
		0.132657, -0.803052, 0.580955,
		33.121704, 35.583984, 64.752113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534576, 36.181362, 64.835136>,  <33.028843, 36.146122, 64.345444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534576, 36.181362, 64.835136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807358, 35.932076, 64.988266>,  <32.971027, 35.782505, 65.080139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.807358, 35.932076, 64.988266>,  <32.534576, 36.181362, 64.835136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807358, 35.932076, 64.988266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194144, 0.350386, 0.916263,
		-0.705162, -0.699167, 0.117952,
		0.681949, -0.623214, 0.382818,
		33.011944, 35.745110, 65.103111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268551, 35.549885, 65.207558>,  <32.534576, 36.181362, 64.835136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268551, 35.549885, 65.207558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624481, 35.671646, 65.343529>,  <32.838039, 35.744705, 65.425110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624481, 35.671646, 65.343529>,  <32.268551, 35.549885, 65.207558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624481, 35.671646, 65.343529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410757, 0.209931, 0.887248,
		0.198730, -0.929119, 0.311841,
		0.889823, 0.304413, 0.339922,
		32.891430, 35.762966, 65.445503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710627, 36.110161, 65.219604>,  <32.268551, 35.549885, 65.207558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710627, 36.110161, 65.219604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647247, 36.432041, 64.990746>,  <31.609221, 36.625172, 64.853432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647247, 36.432041, 64.990746>,  <31.710627, 36.110161, 65.219604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647247, 36.432041, 64.990746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505515, -0.431639, -0.747090,
		-0.848145, -0.407600, -0.338398,
		-0.158449, 0.804705, -0.572140,
		31.599712, 36.673454, 64.819107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331806, 35.973293, 64.532349>,  <31.710627, 36.110161, 65.219604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331806, 35.973293, 64.532349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626814, 36.243286, 64.540977>,  <31.803820, 36.405281, 64.546158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626814, 36.243286, 64.540977>,  <31.331806, 35.973293, 64.532349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626814, 36.243286, 64.540977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482736, -0.504589, -0.715790,
		-0.472260, 0.538323, -0.697982,
		0.737520, 0.674980, 0.021571,
		31.848070, 36.445782, 64.547447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688946, 36.366486, 64.033875>,  <31.331806, 35.973293, 64.532349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688946, 36.366486, 64.033875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085167, 36.398586, 64.078346>,  <32.322899, 36.417847, 64.105026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085167, 36.398586, 64.078346>,  <31.688946, 36.366486, 64.033875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085167, 36.398586, 64.078346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116445, -0.064178, -0.991122,
		-0.072406, 0.994706, -0.072917,
		0.990554, 0.080254, 0.111182,
		32.382332, 36.422661, 64.111702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018414, 36.969311, 63.817448>,  <31.688946, 36.366486, 64.033875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018414, 36.969311, 63.817448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296730, 36.683380, 63.789463>,  <32.463718, 36.511822, 63.772675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.296730, 36.683380, 63.789463>,  <32.018414, 36.969311, 63.817448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296730, 36.683380, 63.789463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137114, 0.227807, -0.964004,
		0.705036, 0.661152, 0.256520,
		0.695791, -0.714830, -0.069959,
		32.505466, 36.468933, 63.768475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741741, 37.283089, 63.624298>,  <32.018414, 36.969311, 63.817448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741741, 37.283089, 63.624298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674107, 36.902885, 63.520039>,  <32.633526, 36.674763, 63.457485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.674107, 36.902885, 63.520039>,  <32.741741, 37.283089, 63.624298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674107, 36.902885, 63.520039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105337, 0.245510, -0.963654,
		0.979956, -0.190395, 0.058612,
		-0.169085, -0.950513, -0.260644,
		32.623383, 36.617733, 63.441845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242229, 37.116920, 63.151012>,  <32.741741, 37.283089, 63.624298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242229, 37.116920, 63.151012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930744, 36.873280, 63.090881>,  <32.743851, 36.727097, 63.054802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.930744, 36.873280, 63.090881>,  <33.242229, 37.116920, 63.151012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930744, 36.873280, 63.090881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113712, 0.098609, -0.988608,
		0.616986, -0.786939, -0.007526,
		-0.778716, -0.609101, -0.150324,
		32.697128, 36.690548, 63.045784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387745, 36.761608, 62.603249>,  <33.242229, 37.116920, 63.151012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387745, 36.761608, 62.603249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993080, 36.697979, 62.617088>,  <32.756283, 36.659801, 62.625393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993080, 36.697979, 62.617088>,  <33.387745, 36.761608, 62.603249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993080, 36.697979, 62.617088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046080, 0.069073, -0.996547,
		0.156130, -0.984848, -0.075481,
		-0.986661, -0.159069, 0.034597,
		32.697083, 36.650257, 62.627468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276012, 36.551910, 62.003750>,  <33.387745, 36.761608, 62.603249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276012, 36.551910, 62.003750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891277, 36.597370, 62.103310>,  <32.660435, 36.624645, 62.163044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891277, 36.597370, 62.103310>,  <33.276012, 36.551910, 62.003750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891277, 36.597370, 62.103310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267802, -0.204528, -0.941515,
		-0.056090, -0.972242, 0.227157,
		-0.961840, 0.113643, 0.248897,
		32.602726, 36.631462, 62.177979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793365, 35.955078, 61.663296>,  <33.276012, 36.551910, 62.003750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793365, 35.955078, 61.663296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619698, 36.305450, 61.747440>,  <32.515495, 36.515675, 61.797928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.619698, 36.305450, 61.747440>,  <32.793365, 35.955078, 61.663296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619698, 36.305450, 61.747440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177597, 0.145704, -0.973257,
		-0.883152, -0.459917, 0.092302,
		-0.434169, 0.875926, 0.210358,
		32.489449, 36.568230, 61.810547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173988, 35.863342, 61.392143>,  <32.793365, 35.955078, 61.663296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173988, 35.863342, 61.392143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192574, 36.261402, 61.426834>,  <32.203724, 36.500237, 61.447647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192574, 36.261402, 61.426834>,  <32.173988, 35.863342, 61.392143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192574, 36.261402, 61.426834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273471, 0.096172, -0.957061,
		-0.960758, 0.020749, 0.276612,
		0.046461, 0.995149, 0.086724,
		32.206512, 36.559948, 61.452850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512444, 36.212860, 61.099224>,  <32.173988, 35.863342, 61.392143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512444, 36.212860, 61.099224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809904, 36.480015, 61.087200>,  <31.988380, 36.640308, 61.079987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.809904, 36.480015, 61.087200>,  <31.512444, 36.212860, 61.099224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809904, 36.480015, 61.087200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233606, 0.217453, -0.947704,
		-0.626426, 0.711784, 0.317733,
		0.743652, 0.667891, -0.030059,
		32.033001, 36.680382, 61.078182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434538, 36.616024, 60.491421>,  <31.512444, 36.212860, 61.099224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434538, 36.616024, 60.491421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782351, 36.791012, 60.583107>,  <31.991037, 36.896004, 60.638119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782351, 36.791012, 60.583107>,  <31.434538, 36.616024, 60.491421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782351, 36.791012, 60.583107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025145, 0.424293, -0.905176,
		-0.493237, 0.792842, 0.357936,
		0.869531, 0.437466, 0.229213,
		32.043209, 36.922253, 60.651871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332047, 37.131786, 60.227543>,  <31.434538, 36.616024, 60.491421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332047, 37.131786, 60.227543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731560, 37.125553, 60.246250>,  <31.971268, 37.121811, 60.257473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731560, 37.125553, 60.246250>,  <31.332047, 37.131786, 60.227543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731560, 37.125553, 60.246250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049194, 0.254780, -0.965747,
		0.003138, 0.966874, 0.255237,
		0.998784, -0.015587, 0.046765,
		32.031197, 37.120876, 60.260281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710354, 37.756821, 59.996719>,  <31.332047, 37.131786, 60.227543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710354, 37.756821, 59.996719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946892, 37.440468, 59.933712>,  <32.088814, 37.250656, 59.895908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946892, 37.440468, 59.933712>,  <31.710354, 37.756821, 59.996719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946892, 37.440468, 59.933712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170241, 0.313364, -0.934249,
		0.788243, 0.525649, 0.319948,
		0.591347, -0.790883, -0.157520,
		32.124294, 37.203201, 59.886456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100834, 37.996246, 59.509800>,  <31.710354, 37.756821, 59.996719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100834, 37.996246, 59.509800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204498, 37.610809, 59.483513>,  <32.266697, 37.379547, 59.467743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204498, 37.610809, 59.483513>,  <32.100834, 37.996246, 59.509800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204498, 37.610809, 59.483513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142369, 0.105409, -0.984185,
		0.955285, 0.245703, 0.164504,
		0.259157, -0.963597, -0.065715,
		32.282246, 37.321732, 59.463799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593723, 37.976112, 59.085110>,  <32.100834, 37.996246, 59.509800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593723, 37.976112, 59.085110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509480, 37.585407, 59.069210>,  <32.458935, 37.350983, 59.059669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509480, 37.585407, 59.069210>,  <32.593723, 37.976112, 59.085110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509480, 37.585407, 59.069210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192381, -0.001550, -0.981319,
		0.958454, -0.214320, 0.188237,
		-0.210609, -0.976762, -0.039745,
		32.446297, 37.292377, 59.057285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154819, 37.707504, 58.734421>,  <32.593723, 37.976112, 59.085110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154819, 37.707504, 58.734421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835342, 37.471855, 58.685387>,  <32.643658, 37.330467, 58.655964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835342, 37.471855, 58.685387>,  <33.154819, 37.707504, 58.734421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835342, 37.471855, 58.685387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093636, 0.079566, -0.992422,
		0.594413, -0.804116, -0.008386,
		-0.798690, -0.589123, -0.122590,
		32.595734, 37.295120, 58.648609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391449, 37.198990, 58.238605>,  <33.154819, 37.707504, 58.734421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391449, 37.198990, 58.238605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992519, 37.171501, 58.228573>,  <32.753162, 37.155006, 58.222553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992519, 37.171501, 58.228573>,  <33.391449, 37.198990, 58.238605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992519, 37.171501, 58.228573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028628, -0.051099, -0.998283,
		0.067323, -0.996326, 0.052929,
		-0.997320, -0.068723, -0.025082,
		32.693325, 37.150883, 58.221046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311665, 36.675766, 57.679211>,  <33.391449, 37.198990, 58.238605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311665, 36.675766, 57.679211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964054, 36.864086, 57.740047>,  <32.755486, 36.977077, 57.776550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964054, 36.864086, 57.740047>,  <33.311665, 36.675766, 57.679211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964054, 36.864086, 57.740047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166642, 0.010909, -0.985957,
		-0.465852, -0.882170, 0.068975,
		-0.869030, 0.470804, 0.152088,
		32.703346, 37.005329, 57.785675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875847, 36.227108, 57.229229>,  <33.311665, 36.675766, 57.679211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875847, 36.227108, 57.229229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703247, 36.584415, 57.279629>,  <32.599689, 36.798801, 57.309868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.703247, 36.584415, 57.279629>,  <32.875847, 36.227108, 57.229229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703247, 36.584415, 57.279629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133502, 0.074908, -0.988213,
		-0.892182, -0.443231, 0.086932,
		-0.431495, 0.893272, 0.126004,
		32.573799, 36.852398, 57.317429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301960, 36.280048, 56.827362>,  <32.875847, 36.227108, 57.229229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301960, 36.280048, 56.827362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407227, 36.658268, 56.903965>,  <32.470387, 36.885201, 56.949928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407227, 36.658268, 56.903965>,  <32.301960, 36.280048, 56.827362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407227, 36.658268, 56.903965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044817, 0.210273, -0.976615,
		-0.963709, 0.248430, 0.097714,
		0.263167, 0.945551, 0.191508,
		32.486176, 36.941933, 56.961418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925152, 36.711674, 56.452728>,  <32.301960, 36.280048, 56.827362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925152, 36.711674, 56.452728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.271851, 36.883411, 56.554245>,  <32.479870, 36.986454, 56.615154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.271851, 36.883411, 56.554245>,  <31.925152, 36.711674, 56.452728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271851, 36.883411, 56.554245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198461, 0.169928, -0.965266,
		-0.457558, 0.887010, 0.062076,
		0.866749, 0.429345, 0.253789,
		32.531876, 37.012215, 56.630383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997152, 37.255451, 55.959167>,  <31.925152, 36.711674, 56.452728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997152, 37.255451, 55.959167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360886, 37.168858, 56.101295>,  <32.579124, 37.116901, 56.186573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360886, 37.168858, 56.101295>,  <31.997152, 37.255451, 55.959167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360886, 37.168858, 56.101295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389895, 0.145245, -0.909333,
		0.145245, 0.965422, 0.216481,
		0.909333, -0.216481, 0.355317,
		32.633686, 37.103912, 56.207890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516747, 37.641022, 55.569157>,  <31.997152, 37.255451, 55.959167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516747, 37.641022, 55.569157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762325, 37.370258, 55.731567>,  <32.909672, 37.207798, 55.829014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762325, 37.370258, 55.731567>,  <32.516747, 37.641022, 55.569157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762325, 37.370258, 55.731567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520093, -0.040042, -0.853171,
		0.593779, 0.734975, 0.327473,
		0.613946, -0.676911, 0.406031,
		32.946510, 37.167187, 55.853378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257610, 37.891785, 55.489620>,  <32.516747, 37.641022, 55.569157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257610, 37.891785, 55.489620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317844, 37.501579, 55.553741>,  <33.353985, 37.267456, 55.592216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317844, 37.501579, 55.553741>,  <33.257610, 37.891785, 55.489620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317844, 37.501579, 55.553741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570714, -0.046624, -0.819824,
		0.807223, 0.214944, 0.549718,
		0.150586, -0.975513, 0.160307,
		33.363022, 37.208927, 55.601833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005997, 37.796131, 55.394562>,  <33.257610, 37.891785, 55.489620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005997, 37.796131, 55.394562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796848, 37.457310, 55.356392>,  <33.671360, 37.254017, 55.333492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796848, 37.457310, 55.356392>,  <34.005997, 37.796131, 55.394562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796848, 37.457310, 55.356392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380929, -0.132047, -0.915127,
		0.762563, -0.514839, 0.391711,
		-0.522867, -0.847056, -0.095423,
		33.639988, 37.203194, 55.327766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503025, 37.268078, 55.302315>,  <34.005997, 37.796131, 55.394562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503025, 37.268078, 55.302315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158222, 37.165825, 55.127228>,  <33.951340, 37.104473, 55.022175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158222, 37.165825, 55.127228>,  <34.503025, 37.268078, 55.302315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158222, 37.165825, 55.127228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480369, -0.136302, -0.866410,
		0.161823, -0.957117, 0.240292,
		-0.862008, -0.255634, -0.437713,
		33.899620, 37.089134, 54.995914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677635, 36.703655, 54.971191>,  <34.503025, 37.268078, 55.302315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677635, 36.703655, 54.971191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349297, 36.802116, 54.765038>,  <34.152294, 36.861191, 54.641346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349297, 36.802116, 54.765038>,  <34.677635, 36.703655, 54.971191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349297, 36.802116, 54.765038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430439, -0.326504, -0.841497,
		-0.375406, -0.912583, 0.162059,
		-0.820849, 0.246147, -0.515383,
		34.103043, 36.875961, 54.610424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724743, 36.188976, 54.413513>,  <34.677635, 36.703655, 54.971191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724743, 36.188976, 54.413513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445900, 36.454849, 54.306000>,  <34.278595, 36.614372, 54.241493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445900, 36.454849, 54.306000>,  <34.724743, 36.188976, 54.413513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445900, 36.454849, 54.306000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271723, -0.101993, -0.956956,
		-0.663485, -0.740132, -0.109510,
		-0.697104, 0.664683, -0.268781,
		34.236771, 36.654255, 54.225365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349644, 35.816971, 53.925335>,  <34.724743, 36.188976, 54.413513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349644, 35.816971, 53.925335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249802, 36.200165, 53.868805>,  <34.189896, 36.430080, 53.834888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.249802, 36.200165, 53.868805>,  <34.349644, 35.816971, 53.925335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249802, 36.200165, 53.868805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186607, -0.095621, -0.977770,
		-0.950198, -0.270427, -0.154898,
		-0.249604, 0.957980, -0.141322,
		34.174919, 36.487560, 53.826408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860447, 35.795547, 53.225300>,  <34.349644, 35.816971, 53.925335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860447, 35.795547, 53.225300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015110, 36.159225, 53.287086>,  <34.107906, 36.377434, 53.324158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015110, 36.159225, 53.287086>,  <33.860447, 35.795547, 53.225300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015110, 36.159225, 53.287086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201824, 0.080006, -0.976149,
		-0.899868, 0.408611, -0.152563,
		0.386659, 0.909196, 0.154462,
		34.131107, 36.431984, 53.333424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540028, 36.277611, 52.724693>,  <33.860447, 35.795547, 53.225300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540028, 36.277611, 52.724693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880924, 36.443657, 52.852047>,  <34.085461, 36.543285, 52.928459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880924, 36.443657, 52.852047>,  <33.540028, 36.277611, 52.724693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880924, 36.443657, 52.852047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318373, 0.071369, -0.945275,
		-0.415118, 0.906966, -0.071337,
		0.852242, 0.415113, 0.318380,
		34.136597, 36.568192, 52.947559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726498, 36.848644, 52.270634>,  <33.540028, 36.277611, 52.724693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726498, 36.848644, 52.270634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082748, 36.741310, 52.417484>,  <34.296497, 36.676910, 52.505596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082748, 36.741310, 52.417484>,  <33.726498, 36.848644, 52.270634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082748, 36.741310, 52.417484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419794, 0.174806, -0.890627,
		0.174806, 0.947334, 0.268331,
		0.890627, -0.268331, 0.367128,
		34.349937, 36.660812, 52.527622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226120, 37.160000, 51.800663>,  <33.726498, 36.848644, 52.270634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226120, 37.160000, 51.800663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455051, 36.890163, 51.987156>,  <34.592411, 36.728264, 52.099052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455051, 36.890163, 51.987156>,  <34.226120, 37.160000, 51.800663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455051, 36.890163, 51.987156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594925, -0.049723, -0.802242,
		0.564364, 0.736519, 0.372870,
		0.572326, -0.674586, 0.466236,
		34.626751, 36.687786, 52.127026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947891, 37.314629, 51.705093>,  <34.226120, 37.160000, 51.800663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947891, 37.314629, 51.705093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940475, 36.923630, 51.789139>,  <34.936024, 36.689030, 51.839565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940475, 36.923630, 51.789139>,  <34.947891, 37.314629, 51.705093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940475, 36.923630, 51.789139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648823, -0.171653, -0.741326,
		0.760713, 0.122579, 0.637408,
		-0.018542, -0.977502, 0.210111,
		34.934914, 36.630379, 51.852173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633427, 37.085590, 51.756554>,  <34.947891, 37.314629, 51.705093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633427, 37.085590, 51.756554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430122, 36.751144, 51.674011>,  <35.308140, 36.550476, 51.624485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430122, 36.751144, 51.674011>,  <35.633427, 37.085590, 51.756554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430122, 36.751144, 51.674011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599034, -0.171088, -0.782232,
		0.618730, -0.521194, 0.587818,
		-0.508263, -0.836113, -0.206355,
		35.277645, 36.500309, 51.612106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124386, 36.638092, 51.689980>,  <35.633427, 37.085590, 51.756554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124386, 36.638092, 51.689980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826538, 36.443752, 51.506901>,  <35.647831, 36.327148, 51.397053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826538, 36.443752, 51.506901>,  <36.124386, 36.638092, 51.689980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826538, 36.443752, 51.506901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636022, -0.308389, -0.707370,
		0.202527, -0.817829, 0.538645,
		-0.744620, -0.485852, -0.457700,
		35.603153, 36.297997, 51.369591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352371, 35.999741, 51.382133>,  <36.124386, 36.638092, 51.689980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352371, 35.999741, 51.382133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996777, 36.022999, 51.200443>,  <35.783421, 36.036953, 51.091431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996777, 36.022999, 51.200443>,  <36.352371, 35.999741, 51.382133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996777, 36.022999, 51.200443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387270, -0.433874, -0.813495,
		-0.244376, -0.899095, 0.363192,
		-0.888989, 0.058145, -0.454221,
		35.730080, 36.040443, 51.064178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291523, 35.376312, 51.041359>,  <36.352371, 35.999741, 51.382133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291523, 35.376312, 51.041359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049828, 35.634811, 50.854916>,  <35.904812, 35.789909, 50.743050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049828, 35.634811, 50.854916>,  <36.291523, 35.376312, 51.041359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049828, 35.634811, 50.854916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313914, -0.344592, -0.884712,
		-0.732362, -0.680895, 0.005349,
		-0.604239, 0.646250, -0.466108,
		35.868557, 35.828686, 50.715084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046574, 35.034695, 50.427052>,  <36.291523, 35.376312, 51.041359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046574, 35.034695, 50.427052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984184, 35.415085, 50.320232>,  <35.946751, 35.643318, 50.256142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.984184, 35.415085, 50.320232>,  <36.046574, 35.034695, 50.427052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984184, 35.415085, 50.320232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414879, -0.182277, -0.891432,
		-0.896408, -0.249835, -0.366109,
		-0.155978, 0.950977, -0.267046,
		35.937389, 35.700378, 50.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551582, 35.066010, 49.820911>,  <36.046574, 35.034695, 50.427052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551582, 35.066010, 49.820911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757641, 35.408688, 49.810398>,  <35.881275, 35.614296, 49.804089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757641, 35.408688, 49.810398>,  <35.551582, 35.066010, 49.820911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757641, 35.408688, 49.810398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207396, -0.154349, -0.966004,
		-0.831630, 0.492185, -0.257188,
		0.515149, 0.856698, -0.026284,
		35.912186, 35.665695, 49.802513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279060, 35.504730, 49.154343>,  <35.551582, 35.066010, 49.820911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279060, 35.504730, 49.154343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622757, 35.676304, 49.265854>,  <35.828976, 35.779247, 49.332764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622757, 35.676304, 49.265854>,  <35.279060, 35.504730, 49.154343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622757, 35.676304, 49.265854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266837, 0.089163, -0.959608,
		-0.436470, 0.898923, -0.037844,
		0.859239, 0.428938, 0.278783,
		35.880527, 35.804985, 49.349487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313709, 36.274460, 48.959961>,  <35.279060, 35.504730, 49.154343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313709, 36.274460, 48.959961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671646, 36.096340, 48.972389>,  <35.886410, 35.989468, 48.979847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671646, 36.096340, 48.972389>,  <35.313709, 36.274460, 48.959961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671646, 36.096340, 48.972389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144296, 0.222700, -0.964149,
		0.422414, 0.867246, 0.263536,
		0.894844, -0.445297, 0.031069,
		35.940098, 35.962749, 48.981709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697033, 36.748543, 49.159687>,  <35.313709, 36.274460, 48.959961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697033, 36.748543, 49.159687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580215, 37.072800, 48.956684>,  <34.510124, 37.267353, 48.834881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580215, 37.072800, 48.956684>,  <34.697033, 36.748543, 49.159687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580215, 37.072800, 48.956684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562277, 0.283721, 0.776755,
		0.773662, 0.512209, 0.372947,
		-0.292048, 0.810645, -0.507507,
		34.492599, 37.315994, 48.804432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786983, 37.374023, 49.575706>,  <34.697033, 36.748543, 49.159687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786983, 37.374023, 49.575706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502972, 37.430660, 49.299789>,  <34.332565, 37.464642, 49.134239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502972, 37.430660, 49.299789>,  <34.786983, 37.374023, 49.575706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502972, 37.430660, 49.299789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675882, 0.137842, 0.724005,
		0.197597, 0.980281, -0.002171,
		-0.710027, 0.141593, -0.689792,
		34.289963, 37.473137, 49.092854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339916, 37.756618, 49.811760>,  <34.786983, 37.374023, 49.575706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339916, 37.756618, 49.811760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092869, 37.659603, 49.512501>,  <33.944641, 37.601395, 49.332947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092869, 37.659603, 49.512501>,  <34.339916, 37.756618, 49.811760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092869, 37.659603, 49.512501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786441, 0.181381, 0.590433,
		-0.007505, 0.953035, -0.302768,
		-0.617620, -0.242540, -0.748145,
		33.907581, 37.586842, 49.288059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702110, 38.184795, 49.820892>,  <34.339916, 37.756618, 49.811760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702110, 38.184795, 49.820892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586796, 37.881191, 49.587379>,  <33.517609, 37.699028, 49.447273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.586796, 37.881191, 49.587379>,  <33.702110, 38.184795, 49.820892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586796, 37.881191, 49.587379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893066, -0.006809, 0.449874,
		-0.345432, 0.651047, -0.675880,
		-0.288287, -0.759007, -0.583780,
		33.500309, 37.653488, 49.412247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105804, 38.301895, 49.705757>,  <33.702110, 38.184795, 49.820892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105804, 38.301895, 49.705757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103439, 37.905079, 49.655453>,  <33.102020, 37.666988, 49.625271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.103439, 37.905079, 49.655453>,  <33.105804, 38.301895, 49.705757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103439, 37.905079, 49.655453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898975, -0.049805, 0.435158,
		-0.437959, 0.115633, -0.891527,
		-0.005916, -0.992043, -0.125763,
		33.101665, 37.607468, 49.617725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406105, 38.104916, 49.491375>,  <33.105804, 38.301895, 49.705757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406105, 38.104916, 49.491375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574146, 37.772423, 49.637012>,  <32.674973, 37.572926, 49.724396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.574146, 37.772423, 49.637012>,  <32.406105, 38.104916, 49.491375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574146, 37.772423, 49.637012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744904, -0.086722, 0.661511,
		-0.518297, -0.549114, -0.655623,
		0.420102, -0.831236, 0.364089,
		32.700176, 37.523052, 49.746239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824865, 37.743393, 49.594429>,  <32.406105, 38.104916, 49.491375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824865, 37.743393, 49.594429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085548, 37.526920, 49.806995>,  <32.241959, 37.397038, 49.934536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.085548, 37.526920, 49.806995>,  <31.824865, 37.743393, 49.594429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085548, 37.526920, 49.806995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713448, -0.199592, 0.671680,
		-0.257434, -0.816876, -0.516180,
		0.651705, -0.541181, 0.531417,
		32.281059, 37.364567, 49.966419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501442, 37.089809, 49.738705>,  <31.824865, 37.743393, 49.594429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501442, 37.089809, 49.738705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.772535, 37.147575, 50.027100>,  <31.935190, 37.182236, 50.200138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.772535, 37.147575, 50.027100>,  <31.501442, 37.089809, 49.738705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772535, 37.147575, 50.027100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692807, -0.203116, 0.691927,
		0.246370, -0.968446, -0.037605,
		0.677732, 0.144417, 0.720987,
		31.975855, 37.190899, 50.243397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436914, 36.514408, 50.211464>,  <31.501442, 37.089809, 49.738705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436914, 36.514408, 50.211464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626461, 36.796970, 50.421776>,  <31.740189, 36.966507, 50.547962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626461, 36.796970, 50.421776>,  <31.436914, 36.514408, 50.211464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626461, 36.796970, 50.421776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541878, -0.236729, 0.806429,
		0.694131, -0.667050, 0.270606,
		0.473868, 0.706402, 0.525780,
		31.768621, 37.008892, 50.579510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630594, 36.223984, 50.868454>,  <31.436914, 36.514408, 50.211464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630594, 36.223984, 50.868454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636391, 36.615757, 50.948948>,  <31.639870, 36.850822, 50.997246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.636391, 36.615757, 50.948948>,  <31.630594, 36.223984, 50.868454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636391, 36.615757, 50.948948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529264, -0.163236, 0.832607,
		0.848333, -0.118573, 0.516014,
		0.014492, 0.979436, 0.201235,
		31.640738, 36.909588, 51.009319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890032, 36.370888, 51.656277>,  <31.630594, 36.223984, 50.868454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890032, 36.370888, 51.656277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683256, 36.685612, 51.521400>,  <31.559191, 36.874447, 51.440475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683256, 36.685612, 51.521400>,  <31.890032, 36.370888, 51.656277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683256, 36.685612, 51.521400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580603, -0.032819, 0.813525,
		0.629025, 0.616319, 0.473791,
		-0.516941, 0.786812, -0.337193,
		31.528173, 36.921654, 51.420242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578722, 36.767548, 52.321274>,  <31.890032, 36.370888, 51.656277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578722, 36.767548, 52.321274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381697, 36.942886, 52.020546>,  <31.263481, 37.048092, 51.840111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381697, 36.942886, 52.020546>,  <31.578722, 36.767548, 52.321274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381697, 36.942886, 52.020546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789002, 0.139601, 0.598321,
		0.367229, 0.887897, 0.277097,
		-0.492564, 0.438350, -0.751818,
		31.233927, 37.074390, 51.795002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428890, 37.550819, 52.428776>,  <31.578722, 36.767548, 52.321274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428890, 37.550819, 52.428776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143497, 37.392494, 52.197510>,  <30.972261, 37.297497, 52.058750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143497, 37.392494, 52.197510>,  <31.428890, 37.550819, 52.428776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143497, 37.392494, 52.197510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700675, 0.401753, 0.589618,
		-0.001101, 0.825786, -0.563982,
		-0.713480, -0.395818, -0.578165,
		30.929453, 37.273750, 52.024059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990061, 38.062897, 52.357769>,  <31.428890, 37.550819, 52.428776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990061, 38.062897, 52.357769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.825832, 37.700642, 52.315353>,  <30.727295, 37.483288, 52.289902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.825832, 37.700642, 52.315353>,  <30.990061, 38.062897, 52.357769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825832, 37.700642, 52.315353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731194, 0.257520, 0.631696,
		-0.544782, 0.336893, -0.767929,
		-0.410571, -0.905641, -0.106042,
		30.702662, 37.428947, 52.283539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311132, 38.200233, 52.305073>,  <30.990061, 38.062897, 52.357769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311132, 38.200233, 52.305073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.284927, 37.812984, 52.401768>,  <30.269203, 37.580635, 52.459785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.284927, 37.812984, 52.401768>,  <30.311132, 38.200233, 52.305073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284927, 37.812984, 52.401768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752626, 0.207008, 0.625061,
		-0.655180, -0.140989, -0.742200,
		-0.065514, -0.968127, 0.241740,
		30.265272, 37.522545, 52.474289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577150, 38.027969, 52.577019>,  <30.311132, 38.200233, 52.305073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577150, 38.027969, 52.577019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805094, 37.730064, 52.715919>,  <29.941860, 37.551319, 52.799259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.805094, 37.730064, 52.715919>,  <29.577150, 38.027969, 52.577019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805094, 37.730064, 52.715919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437829, 0.082423, 0.895272,
		-0.695389, -0.662217, -0.279111,
		0.569859, -0.744766, 0.347254,
		29.976051, 37.506634, 52.820095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231947, 37.882175, 53.158432>,  <29.577150, 38.027969, 52.577019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231947, 37.882175, 53.158432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587893, 37.712212, 53.224884>,  <29.801460, 37.610233, 53.264755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587893, 37.712212, 53.224884>,  <29.231947, 37.882175, 53.158432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587893, 37.712212, 53.224884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127371, 0.118280, 0.984777,
		-0.438088, -0.897477, 0.051133,
		0.889863, -0.424906, 0.166129,
		29.854851, 37.584740, 53.274723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076735, 37.365150, 53.716427>,  <29.231947, 37.882175, 53.158432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076735, 37.365150, 53.716427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467760, 37.449390, 53.715038>,  <29.702375, 37.499935, 53.714207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467760, 37.449390, 53.715038>,  <29.076735, 37.365150, 53.716427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467760, 37.449390, 53.715038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013929, 0.081064, 0.996612,
		0.210173, -0.974204, 0.082179,
		0.977565, 0.210605, -0.003468,
		29.761030, 37.512573, 53.713997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374315, 36.954350, 54.263309>,  <29.076735, 37.365150, 53.716427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374315, 36.954350, 54.263309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638941, 37.242981, 54.181667>,  <29.797716, 37.416161, 54.132683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.638941, 37.242981, 54.181667>,  <29.374315, 36.954350, 54.263309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638941, 37.242981, 54.181667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190829, 0.101224, 0.976390,
		0.725202, -0.684894, -0.070732,
		0.661564, 0.721578, -0.204105,
		29.837410, 37.459454, 54.120438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843302, 36.786747, 54.728642>,  <29.374315, 36.954350, 54.263309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843302, 36.786747, 54.728642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957035, 37.154465, 54.619793>,  <30.025274, 37.375095, 54.554482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957035, 37.154465, 54.619793>,  <29.843302, 36.786747, 54.728642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957035, 37.154465, 54.619793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383265, 0.151181, 0.911182,
		0.878785, -0.363374, -0.309348,
		0.284332, 0.919295, -0.272124,
		30.042336, 37.430252, 54.538155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579716, 36.888363, 54.825619>,  <29.843302, 36.786747, 54.728642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579716, 36.888363, 54.825619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405508, 37.247719, 54.848293>,  <30.300983, 37.463333, 54.861900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.405508, 37.247719, 54.848293>,  <30.579716, 36.888363, 54.825619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405508, 37.247719, 54.848293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280883, 0.075793, 0.956745,
		0.855235, 0.432606, -0.285353,
		-0.435521, 0.898392, 0.056691,
		30.274851, 37.517235, 54.865299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991184, 37.372948, 55.029945>,  <30.579716, 36.888363, 54.825619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991184, 37.372948, 55.029945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638748, 37.544456, 55.109776>,  <30.427286, 37.647362, 55.157673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.638748, 37.544456, 55.109776>,  <30.991184, 37.372948, 55.029945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638748, 37.544456, 55.109776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275463, 0.122241, 0.953508,
		0.384442, 0.895104, -0.225817,
		-0.881093, 0.428773, 0.199574,
		30.374420, 37.673088, 55.169647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113905, 37.990978, 55.395164>,  <30.991184, 37.372948, 55.029945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113905, 37.990978, 55.395164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740669, 37.893009, 55.500507>,  <30.516727, 37.834229, 55.563713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.740669, 37.893009, 55.500507>,  <31.113905, 37.990978, 55.395164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740669, 37.893009, 55.500507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210960, 0.220319, 0.952342,
		-0.291276, 0.944177, -0.153907,
		-0.933088, -0.244926, 0.263357,
		30.460743, 37.819530, 55.579514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128296, 38.290386, 55.999176>,  <31.113905, 37.990978, 55.395164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128296, 38.290386, 55.999176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.795639, 38.068764, 56.014084>,  <30.596045, 37.935791, 56.023029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.795639, 38.068764, 56.014084>,  <31.128296, 38.290386, 55.999176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795639, 38.068764, 56.014084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058758, -0.021053, 0.998050,
		-0.552192, 0.832212, 0.050064,
		-0.831644, -0.554057, 0.037274,
		30.546146, 37.902546, 56.025265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639673, 38.560127, 56.452248>,  <31.128296, 38.290386, 55.999176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639673, 38.560127, 56.452248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539362, 38.172920, 56.455284>,  <30.479176, 37.940598, 56.457108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.539362, 38.172920, 56.455284>,  <30.639673, 38.560127, 56.452248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539362, 38.172920, 56.455284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037769, 0.017623, 0.999131,
		-0.967307, 0.250276, -0.040980,
		-0.250781, -0.968014, 0.007594,
		30.464128, 37.882515, 56.457561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086802, 38.567581, 57.008011>,  <30.639673, 38.560127, 56.452248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086802, 38.567581, 57.008011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178125, 38.184395, 56.938530>,  <30.232920, 37.954483, 56.896839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178125, 38.184395, 56.938530>,  <30.086802, 38.567581, 57.008011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178125, 38.184395, 56.938530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106292, -0.201878, 0.973626,
		-0.967769, -0.203826, -0.147915,
		0.228311, -0.957967, -0.173706,
		30.246618, 37.897003, 56.886417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481209, 38.094036, 57.133038>,  <30.086802, 38.567581, 57.008011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481209, 38.094036, 57.133038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.826000, 37.898346, 57.186180>,  <30.032875, 37.780930, 57.218067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.826000, 37.898346, 57.186180>,  <29.481209, 38.094036, 57.133038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826000, 37.898346, 57.186180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301027, -0.283088, 0.910628,
		-0.407897, -0.824933, -0.391287,
		0.861976, -0.489230, 0.132856,
		30.084593, 37.751575, 57.226036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454716, 37.351387, 57.303047>,  <29.481209, 38.094036, 57.133038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454716, 37.351387, 57.303047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.791304, 37.503815, 57.456261>,  <29.993256, 37.595272, 57.548187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.791304, 37.503815, 57.456261>,  <29.454716, 37.351387, 57.303047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791304, 37.503815, 57.456261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247994, -0.357435, 0.900411,
		0.480033, -0.852656, -0.206266,
		0.841467, 0.381074, 0.383034,
		30.043743, 37.618137, 57.571171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728477, 36.777142, 57.671818>,  <29.454716, 37.351387, 57.303047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728477, 36.777142, 57.671818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.905285, 37.108860, 57.808575>,  <30.011370, 37.307892, 57.890629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.905285, 37.108860, 57.808575>,  <29.728477, 36.777142, 57.671818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905285, 37.108860, 57.808575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081521, -0.342432, 0.935999,
		0.893295, -0.441599, -0.083756,
		0.442016, 0.829295, 0.341893,
		30.037889, 37.357647, 57.911144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180519, 36.554344, 58.094345>,  <29.728477, 36.777142, 57.671818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180519, 36.554344, 58.094345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082754, 36.920681, 58.221771>,  <30.024096, 37.140484, 58.298229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082754, 36.920681, 58.221771>,  <30.180519, 36.554344, 58.094345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082754, 36.920681, 58.221771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145332, -0.359422, 0.921789,
		0.958718, 0.178999, 0.220949,
		-0.244413, 0.915847, 0.318570,
		30.009430, 37.195435, 58.317341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494757, 36.591755, 58.760990>,  <30.180519, 36.554344, 58.094345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494757, 36.591755, 58.760990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253782, 36.909779, 58.789127>,  <30.109198, 37.100594, 58.806011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.253782, 36.909779, 58.789127>,  <30.494757, 36.591755, 58.760990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253782, 36.909779, 58.789127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109175, -0.169383, 0.979485,
		0.790665, 0.582398, 0.188843,
		-0.602437, 0.795061, 0.070342,
		30.073051, 37.148296, 58.810230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781422, 37.029732, 59.188374>,  <30.494757, 36.591755, 58.760990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781422, 37.029732, 59.188374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391689, 37.118900, 59.200920>,  <30.157850, 37.172401, 59.208450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391689, 37.118900, 59.200920>,  <30.781422, 37.029732, 59.188374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391689, 37.118900, 59.200920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005711, -0.114834, 0.993368,
		0.225046, 0.968049, 0.110613,
		-0.974331, 0.222922, 0.031371,
		30.099390, 37.185776, 59.210331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583935, 37.222370, 59.858135>,  <30.781422, 37.029732, 59.188374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583935, 37.222370, 59.858135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.214365, 37.135044, 59.732468>,  <29.992622, 37.082649, 59.657066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.214365, 37.135044, 59.732468>,  <30.583935, 37.222370, 59.858135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214365, 37.135044, 59.732468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279294, -0.176293, 0.943883,
		-0.261450, 0.959822, 0.101907,
		-0.923926, -0.218316, -0.314165,
		29.937187, 37.069550, 59.638218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187857, 37.644878, 60.255692>,  <30.583935, 37.222370, 59.858135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187857, 37.644878, 60.255692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941717, 37.354500, 60.132824>,  <29.794033, 37.180275, 60.059105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941717, 37.354500, 60.132824>,  <30.187857, 37.644878, 60.255692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941717, 37.354500, 60.132824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176028, -0.253286, 0.951242,
		-0.768350, 0.639415, 0.028072,
		-0.615348, -0.725944, -0.307167,
		29.757113, 37.136715, 60.040672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734818, 37.610657, 60.757107>,  <30.187857, 37.644878, 60.255692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734818, 37.610657, 60.757107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695889, 37.250027, 60.588490>,  <29.672531, 37.033649, 60.487320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.695889, 37.250027, 60.588490>,  <29.734818, 37.610657, 60.757107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695889, 37.250027, 60.588490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371483, -0.360035, 0.855789,
		-0.923324, 0.239885, -0.299878,
		-0.097324, -0.901571, -0.421542,
		29.666691, 36.979557, 60.462029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027353, 37.392166, 60.826775>,  <29.734818, 37.610657, 60.757107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027353, 37.392166, 60.826775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.268560, 37.076305, 60.781475>,  <29.413284, 36.886791, 60.754295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.268560, 37.076305, 60.781475>,  <29.027353, 37.392166, 60.826775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268560, 37.076305, 60.781475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407134, -0.426729, 0.807554,
		-0.686013, -0.440858, -0.578818,
		0.603015, -0.789649, -0.113254,
		29.449465, 36.839409, 60.747498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688805, 36.909611, 61.179790>,  <29.027353, 37.392166, 60.826775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688805, 36.909611, 61.179790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.003878, 36.693077, 61.062134>,  <29.192921, 36.563156, 60.991539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.003878, 36.693077, 61.062134>,  <28.688805, 36.909611, 61.179790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003878, 36.693077, 61.062134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180958, -0.659667, 0.729447,
		-0.588907, -0.521345, -0.617566,
		0.787682, -0.541330, -0.294141,
		29.240183, 36.530678, 60.973892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400024, 36.236526, 61.185005>,  <28.688805, 36.909611, 61.179790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400024, 36.236526, 61.185005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.797707, 36.211517, 61.219990>,  <29.036316, 36.196514, 61.240982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.797707, 36.211517, 61.219990>,  <28.400024, 36.236526, 61.185005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797707, 36.211517, 61.219990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106955, -0.657838, 0.745527,
		0.010929, -0.750560, -0.660712,
		0.994204, -0.062519, 0.087465,
		29.095968, 36.192760, 61.246231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650423, 35.465912, 61.146576>,  <28.400024, 36.236526, 61.185005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650423, 35.465912, 61.146576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900244, 35.701923, 61.351242>,  <29.050137, 35.843529, 61.474041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900244, 35.701923, 61.351242>,  <28.650423, 35.465912, 61.146576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900244, 35.701923, 61.351242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194994, -0.516601, 0.833727,
		0.756248, -0.620479, -0.207594,
		0.624554, 0.590025, 0.511668,
		29.087610, 35.878929, 61.504742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983213, 34.952671, 61.608913>,  <28.650423, 35.465912, 61.146576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983213, 34.952671, 61.608913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114058, 34.574795, 61.599518>,  <29.192564, 34.348068, 61.593880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114058, 34.574795, 61.599518>,  <28.983213, 34.952671, 61.608913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114058, 34.574795, 61.599518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096679, 0.058183, -0.993614,
		0.940028, 0.322750, 0.110364,
		0.327110, -0.944694, -0.023491,
		29.212191, 34.291386, 61.592472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574093, 34.967300, 61.200191>,  <28.983213, 34.952671, 61.608913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574093, 34.967300, 61.200191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427355, 34.595348, 61.189308>,  <29.339312, 34.372177, 61.182777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.427355, 34.595348, 61.189308>,  <29.574093, 34.967300, 61.200191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427355, 34.595348, 61.189308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018074, 0.036369, -0.999175,
		0.930107, -0.366049, -0.030148,
		-0.366843, -0.929885, -0.027211,
		29.317303, 34.316383, 61.181145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021467, 34.545483, 60.782784>,  <29.574093, 34.967300, 61.200191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021467, 34.545483, 60.782784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663876, 34.366371, 60.775936>,  <29.449320, 34.258904, 60.771828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.663876, 34.366371, 60.775936>,  <30.021467, 34.545483, 60.782784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663876, 34.366371, 60.775936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022164, -0.006030, -0.999736,
		0.447556, -0.894125, 0.015315,
		-0.893981, -0.447777, -0.017119,
		29.395681, 34.232037, 60.770802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133984, 34.245693, 60.235432>,  <30.021467, 34.545483, 60.782784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133984, 34.245693, 60.235432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747860, 34.143417, 60.256592>,  <29.516186, 34.082054, 60.269287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.747860, 34.143417, 60.256592>,  <30.133984, 34.245693, 60.235432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747860, 34.143417, 60.256592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028045, -0.099909, -0.994601,
		0.259592, -0.961583, 0.089273,
		-0.965311, -0.255687, 0.052903,
		29.458267, 34.066711, 60.272461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038145, 33.629501, 59.942200>,  <30.133984, 34.245693, 60.235432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038145, 33.629501, 59.942200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670937, 33.786053, 59.916706>,  <29.450611, 33.879982, 59.901409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.670937, 33.786053, 59.916706>,  <30.038145, 33.629501, 59.942200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670937, 33.786053, 59.916706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099869, -0.383749, -0.918021,
		-0.383749, -0.836398, 0.391376,
		0.918021, -0.391376, 0.063733,
		29.395531, 33.903465, 59.897587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702593, 33.217575, 59.440189>,  <30.038145, 33.629501, 59.942200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702593, 33.217575, 59.440189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467829, 33.541420, 59.443352>,  <29.326971, 33.735725, 59.445248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467829, 33.541420, 59.443352>,  <29.702593, 33.217575, 59.440189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467829, 33.541420, 59.443352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174596, -0.117026, -0.977661,
		-0.790603, -0.575179, 0.210039,
		-0.586910, 0.809613, 0.007903,
		29.291756, 33.784306, 59.445724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966000, 32.990536, 59.133808>,  <29.702593, 33.217575, 59.440189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966000, 32.990536, 59.133808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.030823, 33.382172, 59.084621>,  <29.069717, 33.617153, 59.055111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.030823, 33.382172, 59.084621>,  <28.966000, 32.990536, 59.133808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030823, 33.382172, 59.084621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121862, -0.143513, -0.982117,
		-0.979228, 0.144175, -0.142571,
		0.162058, 0.979090, -0.122962,
		29.079439, 33.675900, 59.047733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455683, 33.277317, 58.616158>,  <28.966000, 32.990536, 59.133808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455683, 33.277317, 58.616158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772354, 33.520782, 58.637207>,  <28.962357, 33.666862, 58.649837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.772354, 33.520782, 58.637207>,  <28.455683, 33.277317, 58.616158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772354, 33.520782, 58.637207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023670, 0.055515, -0.998177,
		-0.610479, 0.791481, 0.029542,
		0.791678, 0.608667, 0.052625,
		29.009857, 33.703384, 58.652996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376247, 33.676846, 58.069141>,  <28.455683, 33.277317, 58.616158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376247, 33.676846, 58.069141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.750412, 33.803551, 58.131958>,  <28.974911, 33.879574, 58.169647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.750412, 33.803551, 58.131958>,  <28.376247, 33.676846, 58.069141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750412, 33.803551, 58.131958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153710, 0.035657, -0.987472,
		-0.318395, 0.947834, -0.015335,
		0.935413, 0.316763, 0.157045,
		29.031036, 33.898579, 58.179070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430725, 34.247429, 57.679520>,  <28.376247, 33.676846, 58.069141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430725, 34.247429, 57.679520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805321, 34.125523, 57.748920>,  <29.030079, 34.052380, 57.790562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805321, 34.125523, 57.748920>,  <28.430725, 34.247429, 57.679520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805321, 34.125523, 57.748920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199552, 0.056269, -0.978270,
		0.288384, 0.950763, 0.113512,
		0.936490, -0.304770, 0.173499,
		29.086267, 34.034092, 57.800972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858597, 34.756641, 57.486362>,  <28.430725, 34.247429, 57.679520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858597, 34.756641, 57.486362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086559, 34.429192, 57.457920>,  <29.223337, 34.232719, 57.440853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.086559, 34.429192, 57.457920>,  <28.858597, 34.756641, 57.486362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086559, 34.429192, 57.457920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182961, 0.210783, -0.960258,
		0.801081, 0.534249, 0.269903,
		0.569907, -0.818626, -0.071108,
		29.257532, 34.183605, 57.436588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570084, 34.878307, 57.188610>,  <28.858597, 34.756641, 57.486362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570084, 34.878307, 57.188610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416906, 34.517357, 57.109539>,  <29.325001, 34.300789, 57.062096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416906, 34.517357, 57.109539>,  <29.570084, 34.878307, 57.188610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416906, 34.517357, 57.109539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111698, 0.167190, -0.979577,
		0.916995, -0.397201, 0.036769,
		-0.382942, -0.902374, -0.197679,
		29.302023, 34.246643, 57.050236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032887, 34.293484, 56.882969>,  <29.570084, 34.878307, 57.188610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032887, 34.293484, 56.882969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648367, 34.301662, 56.773067>,  <29.417656, 34.306568, 56.707127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648367, 34.301662, 56.773067>,  <30.032887, 34.293484, 56.882969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648367, 34.301662, 56.773067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265525, 0.334857, -0.904084,
		0.073522, -0.942047, -0.327325,
		-0.961296, 0.020443, -0.274756,
		29.359978, 34.307796, 56.690639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991426, 34.010406, 56.256176>,  <30.032887, 34.293484, 56.882969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991426, 34.010406, 56.256176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.627592, 34.176159, 56.243916>,  <29.409292, 34.275612, 56.236561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.627592, 34.176159, 56.243916>,  <29.991426, 34.010406, 56.256176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627592, 34.176159, 56.243916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137435, 0.230419, -0.963337,
		-0.392131, -0.880450, -0.266537,
		-0.909585, 0.414385, -0.030650,
		29.354717, 34.300476, 56.234722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697647, 33.801949, 55.540451>,  <29.991426, 34.010406, 56.256176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697647, 33.801949, 55.540451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557257, 34.137924, 55.706013>,  <29.473022, 34.339508, 55.805351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557257, 34.137924, 55.706013>,  <29.697647, 33.801949, 55.540451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557257, 34.137924, 55.706013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048836, 0.425005, -0.903872,
		-0.935109, -0.337453, -0.108148,
		-0.350978, 0.839938, 0.413906,
		29.451963, 34.389904, 55.830185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071367, 33.822689, 55.207249>,  <29.697647, 33.801949, 55.540451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071367, 33.822689, 55.207249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177891, 34.189503, 55.325996>,  <29.241804, 34.409592, 55.397243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.177891, 34.189503, 55.325996>,  <29.071367, 33.822689, 55.207249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177891, 34.189503, 55.325996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032629, 0.316391, -0.948067,
		-0.963335, 0.242793, 0.114180,
		0.266309, 0.917032, 0.296869,
		29.257784, 34.464611, 55.415058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587915, 34.229256, 54.924229>,  <29.071367, 33.822689, 55.207249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587915, 34.229256, 54.924229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.892263, 34.468517, 55.024860>,  <29.074873, 34.612072, 55.085239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.892263, 34.468517, 55.024860>,  <28.587915, 34.229256, 54.924229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892263, 34.468517, 55.024860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060647, 0.451552, -0.890181,
		-0.646064, 0.662055, 0.379848,
		0.760870, 0.598150, 0.251580,
		29.120525, 34.647961, 55.100334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340576, 34.828888, 54.644665>,  <28.587915, 34.229256, 54.924229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340576, 34.828888, 54.644665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.738100, 34.841454, 54.687294>,  <28.976614, 34.848991, 54.712872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.738100, 34.841454, 54.687294>,  <28.340576, 34.828888, 54.644665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738100, 34.841454, 54.687294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087619, 0.368291, -0.925572,
		-0.068325, 0.929180, 0.363258,
		0.993808, 0.031411, 0.106578,
		29.036243, 34.850876, 54.719269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614017, 35.435814, 54.439404>,  <28.340576, 34.828888, 54.644665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614017, 35.435814, 54.439404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957396, 35.232449, 54.412323>,  <29.163422, 35.110428, 54.396072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957396, 35.232449, 54.412323>,  <28.614017, 35.435814, 54.439404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957396, 35.232449, 54.412323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153799, 0.381086, -0.911658,
		0.489304, 0.772195, 0.405335,
		0.858445, -0.508417, -0.067704,
		29.214930, 35.079922, 54.392014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062271, 35.874168, 54.141468>,  <28.614017, 35.435814, 54.439404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062271, 35.874168, 54.141468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.214199, 35.509766, 54.077217>,  <29.305357, 35.291122, 54.038666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.214199, 35.509766, 54.077217>,  <29.062271, 35.874168, 54.141468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214199, 35.509766, 54.077217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205060, 0.252242, -0.945687,
		0.902045, 0.326253, 0.282618,
		0.379822, -0.911006, -0.160632,
		29.328146, 35.236465, 54.029026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573257, 36.061073, 53.747669>,  <29.062271, 35.874168, 54.141468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573257, 36.061073, 53.747669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558401, 35.666565, 53.683308>,  <29.549488, 35.429859, 53.644691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.558401, 35.666565, 53.683308>,  <29.573257, 36.061073, 53.747669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558401, 35.666565, 53.683308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249251, 0.146780, -0.957251,
		0.967727, -0.075656, 0.240378,
		-0.037139, -0.986272, -0.160900,
		29.547260, 35.370682, 53.635036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077969, 35.831745, 53.250240>,  <29.573257, 36.061073, 53.747669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077969, 35.831745, 53.250240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830975, 35.517956, 53.227211>,  <29.682779, 35.329681, 53.213394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.830975, 35.517956, 53.227211>,  <30.077969, 35.831745, 53.250240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830975, 35.517956, 53.227211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185510, -0.074108, -0.979844,
		0.764396, -0.615718, 0.191288,
		-0.617483, -0.784474, -0.057574,
		29.645729, 35.282612, 53.209938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422934, 35.186111, 52.881062>,  <30.077969, 35.831745, 53.250240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422934, 35.186111, 52.881062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.025034, 35.189110, 52.840240>,  <29.786293, 35.190910, 52.815750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.025034, 35.189110, 52.840240>,  <30.422934, 35.186111, 52.881062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025034, 35.189110, 52.840240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100675, -0.106564, -0.989196,
		-0.018289, -0.994278, 0.105250,
		-0.994751, 0.007495, -0.102048,
		29.726608, 35.191360, 52.809628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425106, 35.027367, 52.202000>,  <30.422934, 35.186111, 52.881062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425106, 35.027367, 52.202000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.038393, 35.080715, 52.289219>,  <29.806366, 35.112724, 52.341553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.038393, 35.080715, 52.289219>,  <30.425106, 35.027367, 52.202000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038393, 35.080715, 52.289219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235679, -0.134909, -0.962422,
		-0.098945, -0.981840, 0.161861,
		-0.966781, 0.133374, 0.218050,
		29.748360, 35.120728, 52.354633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030851, 34.526257, 51.871540>,  <30.425106, 35.027367, 52.202000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030851, 34.526257, 51.871540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.769867, 34.817459, 51.955738>,  <29.613276, 34.992180, 52.006256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.769867, 34.817459, 51.955738>,  <30.030851, 34.526257, 51.871540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769867, 34.817459, 51.955738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402011, -0.097040, -0.910478,
		-0.642403, -0.678672, 0.355980,
		-0.652460, 0.728002, 0.210495,
		29.574129, 35.035858, 52.018887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410498, 34.374447, 51.678547>,  <30.030851, 34.526257, 51.871540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410498, 34.374447, 51.678547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405149, 34.774384, 51.683212>,  <29.401941, 35.014347, 51.686012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405149, 34.774384, 51.683212>,  <29.410498, 34.374447, 51.678547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405149, 34.774384, 51.683212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232498, 0.008236, -0.972562,
		-0.972505, -0.015716, 0.232351,
		-0.013371, 0.999842, 0.011663,
		29.401138, 35.074337, 51.686710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780403, 34.501907, 51.331612>,  <29.410498, 34.374447, 51.678547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780403, 34.501907, 51.331612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.001907, 34.832626, 51.292103>,  <29.134809, 35.031059, 51.268398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.001907, 34.832626, 51.292103>,  <28.780403, 34.501907, 51.331612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001907, 34.832626, 51.292103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231273, 0.038772, -0.972116,
		-0.799914, 0.561161, 0.212687,
		0.553760, 0.826798, -0.098767,
		29.168036, 35.080666, 51.262474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508514, 34.920128, 50.830437>,  <28.780403, 34.501907, 51.331612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508514, 34.920128, 50.830437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887583, 35.047375, 50.819717>,  <29.115025, 35.123722, 50.813286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.887583, 35.047375, 50.819717>,  <28.508514, 34.920128, 50.830437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887583, 35.047375, 50.819717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056091, 0.083271, -0.994947,
		-0.314276, 0.944388, 0.096757,
		0.947673, 0.318116, -0.026802,
		29.171885, 35.142811, 50.811676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513187, 35.437363, 50.214207>,  <28.508514, 34.920128, 50.830437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513187, 35.437363, 50.214207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900894, 35.354980, 50.268024>,  <29.133518, 35.305550, 50.300316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.900894, 35.354980, 50.268024>,  <28.513187, 35.437363, 50.214207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900894, 35.354980, 50.268024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150951, 0.066047, -0.986332,
		0.194255, 0.976330, 0.095107,
		0.969267, -0.205957, 0.134548,
		29.191675, 35.293194, 50.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851273, 35.796143, 49.720417>,  <28.513187, 35.437363, 50.214207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851273, 35.796143, 49.720417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134031, 35.536427, 49.832642>,  <29.303686, 35.380596, 49.899975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.134031, 35.536427, 49.832642>,  <28.851273, 35.796143, 49.720417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134031, 35.536427, 49.832642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267390, -0.121906, -0.955846,
		0.654827, 0.750703, 0.087440,
		0.706897, -0.649295, 0.280558,
		29.346100, 35.341637, 49.916809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485771, 35.925369, 49.274891>,  <28.851273, 35.796143, 49.720417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485771, 35.925369, 49.274891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556227, 35.552822, 49.402344>,  <29.598499, 35.329292, 49.478817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.556227, 35.552822, 49.402344>,  <29.485771, 35.925369, 49.274891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556227, 35.552822, 49.402344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529838, -0.183100, -0.828098,
		0.829606, 0.314683, 0.461224,
		0.176138, -0.931369, 0.318632,
		29.609068, 35.273411, 49.497932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131151, 35.805756, 48.945457>,  <29.485771, 35.925369, 49.274891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131151, 35.805756, 48.945457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009769, 35.446301, 49.072186>,  <29.936941, 35.230629, 49.148224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.009769, 35.446301, 49.072186>,  <30.131151, 35.805756, 48.945457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009769, 35.446301, 49.072186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447201, -0.427919, -0.785428,
		0.841385, -0.096658, 0.531723,
		-0.303453, -0.898634, 0.316819,
		29.918734, 35.176712, 49.167233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689022, 35.357891, 48.877472>,  <30.131151, 35.805756, 48.945457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689022, 35.357891, 48.877472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379990, 35.108074, 48.923183>,  <30.194571, 34.958183, 48.950611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379990, 35.108074, 48.923183>,  <30.689022, 35.357891, 48.877472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379990, 35.108074, 48.923183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344218, -0.563263, -0.751165,
		0.533506, -0.540999, 0.650147,
		-0.772583, -0.624544, 0.114283,
		30.148214, 34.920712, 48.957470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039520, 34.731659, 49.046993>,  <30.689022, 35.357891, 48.877472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039520, 34.731659, 49.046993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676117, 34.662582, 48.894787>,  <30.458075, 34.621136, 48.803463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676117, 34.662582, 48.894787>,  <31.039520, 34.731659, 49.046993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676117, 34.662582, 48.894787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404142, -0.594613, -0.695057,
		-0.106227, -0.785246, 0.610003,
		-0.908507, -0.172694, -0.380515,
		30.403564, 34.610775, 48.780632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051805, 34.037445, 48.906986>,  <31.039520, 34.731659, 49.046993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051805, 34.037445, 48.906986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775463, 34.217915, 48.681011>,  <30.609657, 34.326195, 48.545425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775463, 34.217915, 48.681011>,  <31.051805, 34.037445, 48.906986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775463, 34.217915, 48.681011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243664, -0.590383, -0.769464,
		-0.680695, -0.669245, 0.297935,
		-0.690856, 0.451175, -0.564942,
		30.568205, 34.353268, 48.511528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603380, 33.448429, 48.638630>,  <31.051805, 34.037445, 48.906986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603380, 33.448429, 48.638630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544609, 33.740757, 48.372002>,  <30.509346, 33.916153, 48.212025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.544609, 33.740757, 48.372002>,  <30.603380, 33.448429, 48.638630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544609, 33.740757, 48.372002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350805, -0.591578, -0.725928,
		-0.924850, -0.340495, -0.169456,
		-0.146928, 0.730821, -0.666568,
		30.500530, 33.960003, 48.172031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322454, 33.147957, 47.953701>,  <30.603380, 33.448429, 48.638630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322454, 33.147957, 47.953701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454782, 33.515163, 47.866249>,  <30.534180, 33.735489, 47.813778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.454782, 33.515163, 47.866249>,  <30.322454, 33.147957, 47.953701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454782, 33.515163, 47.866249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603844, -0.383958, -0.698534,
		-0.725211, 0.099074, -0.681362,
		0.330820, 0.918020, -0.218625,
		30.554029, 33.790569, 47.800663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511255, 33.069317, 47.199776>,  <30.322454, 33.147957, 47.953701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511255, 33.069317, 47.199776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685562, 33.400185, 47.341705>,  <30.790146, 33.598705, 47.426861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685562, 33.400185, 47.341705>,  <30.511255, 33.069317, 47.199776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685562, 33.400185, 47.341705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804326, -0.180958, -0.565963,
		-0.403939, 0.532020, -0.744169,
		0.435767, 0.827169, 0.354821,
		30.816292, 33.648335, 47.448151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817514, 33.443016, 46.558514>,  <30.511255, 33.069317, 47.199776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817514, 33.443016, 46.558514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019127, 33.574360, 46.878044>,  <31.140095, 33.653168, 47.069763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019127, 33.574360, 46.878044>,  <30.817514, 33.443016, 46.558514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019127, 33.574360, 46.878044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863615, -0.203374, -0.461312,
		0.010985, 0.922399, -0.386083,
		0.504033, 0.328360, 0.798831,
		31.170338, 33.672867, 47.117695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292332, 33.885635, 46.337086>,  <30.817514, 33.443016, 46.558514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292332, 33.885635, 46.337086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.466976, 33.758770, 46.673840>,  <31.571762, 33.682652, 46.875893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.466976, 33.758770, 46.673840>,  <31.292332, 33.885635, 46.337086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466976, 33.758770, 46.673840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892068, 0.031385, -0.450810,
		0.116559, 0.947851, 0.296636,
		0.436610, -0.317166, 0.841889,
		31.597960, 33.663620, 46.926407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776449, 34.291100, 46.569031>,  <31.292332, 33.885635, 46.337086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776449, 34.291100, 46.569031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.902884, 33.970985, 46.772850>,  <31.978745, 33.778919, 46.895142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.902884, 33.970985, 46.772850>,  <31.776449, 34.291100, 46.569031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902884, 33.970985, 46.772850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927273, 0.147020, -0.344311,
		0.200634, 0.581320, 0.788552,
		0.316088, -0.800283, 0.509545,
		31.997709, 33.730900, 46.925713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455967, 34.622608, 46.655300>,  <31.776449, 34.291100, 46.569031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455967, 34.622608, 46.655300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444664, 34.227249, 46.715004>,  <32.437881, 33.990036, 46.750828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444664, 34.227249, 46.715004>,  <32.455967, 34.622608, 46.655300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444664, 34.227249, 46.715004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812309, -0.109729, -0.572812,
		0.582542, 0.105061, 0.805982,
		-0.028260, -0.988394, 0.149263,
		32.436188, 33.930733, 46.759785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747005, 34.844822, 45.929169>,  <32.455967, 34.622608, 46.655300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747005, 34.844822, 45.929169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768764, 34.471798, 45.786415>,  <32.781818, 34.247982, 45.700764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.768764, 34.471798, 45.786415>,  <32.747005, 34.844822, 45.929169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768764, 34.471798, 45.786415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995981, -0.076141, 0.047163,
		-0.071156, 0.352888, -0.932956,
		0.054393, -0.932562, -0.356888,
		32.785084, 34.192028, 45.679348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377666, 34.792484, 45.157574>,  <32.747005, 34.844822, 45.929169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377666, 34.792484, 45.157574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347542, 34.507137, 45.436264>,  <32.329468, 34.335930, 45.603477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347542, 34.507137, 45.436264>,  <32.377666, 34.792484, 45.157574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347542, 34.507137, 45.436264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974403, -0.095775, -0.203388,
		0.211820, -0.694213, -0.687896,
		-0.075311, -0.713369, 0.696730,
		32.324947, 34.293125, 45.645283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909847, 34.563751, 44.745033>,  <32.377666, 34.792484, 45.157574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909847, 34.563751, 44.745033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976196, 34.237995, 44.967472>,  <33.016006, 34.042542, 45.100937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976196, 34.237995, 44.967472>,  <32.909847, 34.563751, 44.745033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976196, 34.237995, 44.967472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980829, 0.077764, -0.178681,
		0.102272, 0.575077, 0.811681,
		0.165875, -0.814395, 0.556099,
		33.025959, 33.993675, 45.134300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517658, 34.767052, 44.972153>,  <32.909847, 34.563751, 44.745033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517658, 34.767052, 44.972153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516014, 34.370934, 44.916588>,  <33.515026, 34.133263, 44.883247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516014, 34.370934, 44.916588>,  <33.517658, 34.767052, 44.972153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516014, 34.370934, 44.916588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945065, 0.041556, -0.324229,
		0.326855, -0.132616, 0.935723,
		-0.004114, -0.990296, -0.138913,
		33.514778, 34.073845, 44.874912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961739, 34.178226, 45.333069>,  <33.517658, 34.767052, 44.972153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961739, 34.178226, 45.333069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889217, 34.013298, 44.975945>,  <33.845707, 33.914341, 44.761669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.889217, 34.013298, 44.975945>,  <33.961739, 34.178226, 45.333069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889217, 34.013298, 44.975945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980933, -0.011194, -0.194025,
		0.070007, -0.910968, 0.406493,
		-0.181301, -0.412325, -0.892814,
		33.834827, 33.889599, 44.708099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358047, 33.422394, 45.231777>,  <33.961739, 34.178226, 45.333069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358047, 33.422394, 45.231777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297333, 33.634209, 44.897938>,  <34.260902, 33.761295, 44.697636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297333, 33.634209, 44.897938>,  <34.358047, 33.422394, 45.231777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297333, 33.634209, 44.897938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981234, -0.020858, -0.191691,
		-0.118915, -0.848033, -0.516430,
		-0.151788, 0.529533, -0.834599,
		34.251797, 33.793068, 44.647556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785526, 32.900635, 45.636520>,  <34.358047, 33.422394, 45.231777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785526, 32.900635, 45.636520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862270, 32.619751, 45.910774>,  <34.908318, 32.451221, 46.075325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.862270, 32.619751, 45.910774>,  <34.785526, 32.900635, 45.636520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862270, 32.619751, 45.910774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897714, 0.407888, 0.166545,
		-0.396611, 0.583549, 0.708640,
		0.191859, -0.702209, 0.685633,
		34.919827, 32.409088, 46.116463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063694, 33.300007, 46.213585>,  <34.785526, 32.900635, 45.636520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063694, 33.300007, 46.213585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184254, 32.923050, 46.271637>,  <35.256588, 32.696877, 46.306469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184254, 32.923050, 46.271637>,  <35.063694, 33.300007, 46.213585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184254, 32.923050, 46.271637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906261, 0.330441, 0.263626,
		-0.296395, 0.052068, 0.953645,
		0.301397, -0.942389, 0.145129,
		35.274673, 32.640331, 46.315174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529510, 33.258949, 46.851196>,  <35.063694, 33.300007, 46.213585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529510, 33.258949, 46.851196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633091, 32.938599, 46.635220>,  <35.695240, 32.746387, 46.505634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633091, 32.938599, 46.635220>,  <35.529510, 33.258949, 46.851196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633091, 32.938599, 46.635220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965101, 0.237145, 0.111095,
		0.039071, -0.549866, 0.834338,
		0.258947, -0.800880, -0.539942,
		35.710773, 32.698334, 46.473236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925655, 32.872601, 47.225052>,  <35.529510, 33.258949, 46.851196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925655, 32.872601, 47.225052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035362, 32.727531, 46.868793>,  <36.101185, 32.640488, 46.655041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035362, 32.727531, 46.868793>,  <35.925655, 32.872601, 47.225052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035362, 32.727531, 46.868793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954110, 0.218408, 0.204871,
		0.120222, -0.905961, 0.405933,
		0.274264, -0.362675, -0.890644,
		36.117641, 32.618729, 46.601601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427761, 32.482388, 47.409248>,  <35.925655, 32.872601, 47.225052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427761, 32.482388, 47.409248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485733, 32.550697, 47.019409>,  <36.520515, 32.591682, 46.785507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485733, 32.550697, 47.019409>,  <36.427761, 32.482388, 47.409248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485733, 32.550697, 47.019409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962759, 0.202869, 0.178716,
		0.228235, -0.964199, -0.135013,
		0.144928, 0.170774, -0.974593,
		36.529213, 32.601929, 46.727032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066235, 32.240261, 47.280609>,  <36.427761, 32.482388, 47.409248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066235, 32.240261, 47.280609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044277, 32.493793, 46.972000>,  <37.031101, 32.645912, 46.786835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.044277, 32.493793, 46.972000>,  <37.066235, 32.240261, 47.280609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044277, 32.493793, 46.972000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948170, 0.275295, 0.158700,
		0.312985, -0.722821, -0.616092,
		-0.054896, 0.633831, -0.771521,
		37.027809, 32.683945, 46.740543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654827, 32.086342, 46.932728>,  <37.066235, 32.240261, 47.280609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654827, 32.086342, 46.932728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542534, 32.437298, 46.777096>,  <37.475159, 32.647869, 46.683716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542534, 32.437298, 46.777096>,  <37.654827, 32.086342, 46.932728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542534, 32.437298, 46.777096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891212, 0.388771, 0.233662,
		0.356274, -0.281153, -0.891079,
		-0.280730, 0.877388, -0.389076,
		37.458313, 32.700516, 46.660374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204372, 32.218513, 46.548424>,  <37.654827, 32.086342, 46.932728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204372, 32.218513, 46.548424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010609, 32.568424, 46.552608>,  <37.894348, 32.778370, 46.555119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010609, 32.568424, 46.552608>,  <38.204372, 32.218513, 46.548424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010609, 32.568424, 46.552608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869452, 0.480070, 0.116562,
		0.096945, 0.065558, -0.993128,
		-0.484412, 0.874777, 0.010460,
		37.865284, 32.830856, 46.555748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463608, 32.538628, 46.031517>,  <38.204372, 32.218513, 46.548424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463608, 32.538628, 46.031517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308159, 32.779049, 46.310860>,  <38.214890, 32.923302, 46.478466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308159, 32.779049, 46.310860>,  <38.463608, 32.538628, 46.031517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308159, 32.779049, 46.310860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856224, 0.515567, 0.032739,
		-0.340371, 0.610672, -0.715001,
		-0.388624, 0.601058, 0.698356,
		38.191570, 32.959366, 46.520367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569336, 33.221214, 45.784447>,  <38.463608, 32.538628, 46.031517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569336, 33.221214, 45.784447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539352, 33.263454, 46.181080>,  <38.521362, 33.288799, 46.419060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539352, 33.263454, 46.181080>,  <38.569336, 33.221214, 45.784447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539352, 33.263454, 46.181080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877135, 0.480004, 0.015184,
		-0.474358, 0.870887, -0.128609,
		-0.074957, 0.105605, 0.991579,
		38.516865, 33.295135, 46.478554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683784, 34.004555, 45.958481>,  <38.569336, 33.221214, 45.784447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683784, 34.004555, 45.958481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798470, 33.724865, 46.220436>,  <38.867279, 33.557053, 46.377609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798470, 33.724865, 46.220436>,  <38.683784, 34.004555, 45.958481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798470, 33.724865, 46.220436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920564, 0.390349, 0.013754,
		-0.265254, 0.598927, 0.755597,
		0.286709, -0.699224, 0.654892,
		38.884483, 33.515099, 46.416904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074783, 34.401539, 46.390381>,  <38.683784, 34.004555, 45.958481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074783, 34.401539, 46.390381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232700, 34.034130, 46.381882>,  <39.327450, 33.813683, 46.376781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232700, 34.034130, 46.381882>,  <39.074783, 34.401539, 46.390381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232700, 34.034130, 46.381882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883441, 0.385863, -0.265785,
		0.252329, 0.086160, 0.963798,
		0.394794, -0.918524, -0.021247,
		39.351139, 33.758572, 46.375507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665783, 34.334335, 46.883812>,  <39.074783, 34.401539, 46.390381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665783, 34.334335, 46.883812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.680367, 34.121605, 46.545383>,  <39.689117, 33.993965, 46.342327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.680367, 34.121605, 46.545383>,  <39.665783, 34.334335, 46.883812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680367, 34.121605, 46.545383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848426, 0.463838, -0.255005,
		0.528057, -0.708529, 0.468127,
		0.036457, -0.531828, -0.846067,
		39.691303, 33.962055, 46.291565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358341, 34.180889, 46.816277>,  <39.665783, 34.334335, 46.883812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358341, 34.180889, 46.816277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147095, 34.182594, 46.476612>,  <40.020348, 34.183617, 46.272812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.147095, 34.182594, 46.476612>,  <40.358341, 34.180889, 46.816277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147095, 34.182594, 46.476612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766485, 0.432818, -0.474520,
		0.365511, -0.901471, -0.231843,
		-0.528112, 0.004262, -0.849164,
		39.988663, 34.183872, 46.221863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543205, 33.673218, 46.278744>,  <40.358341, 34.180889, 46.816277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543205, 33.673218, 46.278744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437492, 34.047325, 46.184574>,  <40.374065, 34.271790, 46.128071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.437492, 34.047325, 46.184574>,  <40.543205, 33.673218, 46.278744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437492, 34.047325, 46.184574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936056, 0.189955, -0.296168,
		-0.232277, -0.298642, -0.925667,
		-0.264283, 0.935270, -0.235423,
		40.358208, 34.327908, 46.113949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780567, 33.791119, 45.572285>,  <40.543205, 33.673218, 46.278744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780567, 33.791119, 45.572285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778286, 34.136364, 45.774273>,  <40.776917, 34.343513, 45.895466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778286, 34.136364, 45.774273>,  <40.780567, 33.791119, 45.572285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778286, 34.136364, 45.774273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891291, 0.233350, -0.388777,
		-0.453395, 0.447858, -0.770620,
		-0.005707, 0.863117, 0.504972,
		40.776573, 34.395298, 45.925766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889122, 34.327354, 45.117226>,  <40.780567, 33.791119, 45.572285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889122, 34.327354, 45.117226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008629, 34.454342, 45.477215>,  <41.080334, 34.530533, 45.693211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.008629, 34.454342, 45.477215>,  <40.889122, 34.327354, 45.117226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008629, 34.454342, 45.477215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906029, 0.201855, -0.371976,
		-0.299754, 0.926537, -0.227326,
		0.298763, 0.317465, 0.899976,
		41.098259, 34.549580, 45.747208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201057, 34.997307, 45.009533>,  <40.889122, 34.327354, 45.117226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201057, 34.997307, 45.009533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372093, 34.782940, 45.300728>,  <41.474716, 34.654320, 45.475445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.372093, 34.782940, 45.300728>,  <41.201057, 34.997307, 45.009533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372093, 34.782940, 45.300728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818672, -0.111921, -0.563249,
		0.383331, 0.836820, 0.390883,
		0.427590, -0.535916, 0.727984,
		41.500370, 34.622166, 45.519123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705139, 35.083576, 45.538532>,  <41.201057, 34.997307, 45.009533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705139, 35.083576, 45.538532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734760, 34.978588, 45.923370>,  <41.752533, 34.915596, 46.154274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.734760, 34.978588, 45.923370>,  <41.705139, 35.083576, 45.538532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734760, 34.978588, 45.923370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853477, -0.482344, -0.197283,
		0.515841, 0.835736, 0.188290,
		0.074056, -0.262468, 0.962095,
		41.756977, 34.899849, 46.211998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319744, 35.396885, 45.936619>,  <41.705139, 35.083576, 45.538532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319744, 35.396885, 45.936619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.217655, 35.035072, 46.073254>,  <42.156403, 34.817986, 46.155235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.217655, 35.035072, 46.073254>,  <42.319744, 35.396885, 45.936619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217655, 35.035072, 46.073254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870580, -0.368684, -0.325825,
		0.420658, 0.214225, 0.881564,
		-0.255218, -0.904533, 0.341590,
		42.141090, 34.763714, 46.175732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859680, 35.126274, 46.274525>,  <42.319744, 35.396885, 45.936619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859680, 35.126274, 46.274525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.649494, 34.790161, 46.221130>,  <42.523384, 34.588493, 46.189095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.649494, 34.790161, 46.221130>,  <42.859680, 35.126274, 46.274525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649494, 34.790161, 46.221130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845700, -0.498653, -0.190098,
		0.093171, -0.212780, 0.972648,
		-0.525463, -0.840280, -0.133488,
		42.491856, 34.538078, 46.181084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105812, 34.672783, 46.894009>,  <42.859680, 35.126274, 46.274525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105812, 34.672783, 46.894009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.972366, 34.514767, 46.551628>,  <42.892300, 34.419956, 46.346199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.972366, 34.514767, 46.551628>,  <43.105812, 34.672783, 46.894009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972366, 34.514767, 46.551628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794759, -0.606183, -0.030003,
		-0.507008, -0.690281, 0.516192,
		-0.333617, -0.395037, -0.855947,
		42.872280, 34.396255, 46.294846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131088, 33.828712, 46.913689>,  <43.105812, 34.672783, 46.894009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131088, 33.828712, 46.913689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.168098, 34.002758, 46.555447>,  <43.190304, 34.107185, 46.340500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.168098, 34.002758, 46.555447>,  <43.131088, 33.828712, 46.913689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168098, 34.002758, 46.555447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929303, -0.360716, -0.079245,
		-0.357541, -0.824959, -0.437728,
		0.092522, 0.435116, -0.895608,
		43.195854, 34.133293, 46.286762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300117, 33.355831, 46.368668>,  <43.131088, 33.828712, 46.913689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300117, 33.355831, 46.368668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429260, 33.729057, 46.305241>,  <43.506748, 33.952995, 46.267185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429260, 33.729057, 46.305241>,  <43.300117, 33.355831, 46.368668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429260, 33.729057, 46.305241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944986, -0.308497, 0.108774,
		0.052577, -0.184961, -0.981339,
		0.322859, 0.933070, -0.158565,
		43.526119, 34.008980, 46.257671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598190, 33.492004, 45.708515>,  <43.300117, 33.355831, 46.368668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598190, 33.492004, 45.708515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.777870, 33.724037, 45.980316>,  <43.885677, 33.863258, 46.143398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.777870, 33.724037, 45.980316>,  <43.598190, 33.492004, 45.708515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777870, 33.724037, 45.980316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858553, -0.490704, -0.148652,
		0.247207, 0.650166, -0.718452,
		0.449195, 0.580081, 0.679507,
		43.912628, 33.898060, 46.184170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158508, 33.987274, 45.503853>,  <43.598190, 33.492004, 45.708515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158508, 33.987274, 45.503853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.217243, 33.844673, 45.872925>,  <44.252483, 33.759113, 46.094368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.217243, 33.844673, 45.872925>,  <44.158508, 33.987274, 45.503853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217243, 33.844673, 45.872925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873484, -0.390998, -0.290080,
		0.464182, 0.848542, 0.253991,
		0.146835, -0.356506, 0.922682,
		44.261295, 33.737720, 46.149731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728836, 34.396782, 45.928696>,  <44.158508, 33.987274, 45.503853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728836, 34.396782, 45.928696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.691631, 34.000061, 45.963726>,  <44.669308, 33.762028, 45.984745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.691631, 34.000061, 45.963726>,  <44.728836, 34.396782, 45.928696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691631, 34.000061, 45.963726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910830, -0.120281, -0.394868,
		0.402166, 0.043039, 0.914555,
		-0.093009, -0.991807, 0.087574,
		44.663731, 33.702518, 45.989998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379875, 34.071659, 46.228333>,  <44.728836, 34.396782, 45.928696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379875, 34.071659, 46.228333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.174866, 33.842232, 45.972725>,  <45.051861, 33.704575, 45.819363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.174866, 33.842232, 45.972725>,  <45.379875, 34.071659, 46.228333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174866, 33.842232, 45.972725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736035, 0.089818, -0.670959,
		0.442235, -0.814220, 0.376131,
		-0.512524, -0.573566, -0.639015,
		45.021107, 33.670162, 45.781021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819809, 33.518646, 45.929321>,  <45.379875, 34.071659, 46.228333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819809, 33.518646, 45.929321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.521244, 33.571766, 45.668484>,  <45.342106, 33.603638, 45.511982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.521244, 33.571766, 45.668484>,  <45.819809, 33.518646, 45.929321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521244, 33.571766, 45.668484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651088, -0.056976, -0.756861,
		-0.137665, -0.989504, -0.043937,
		-0.746413, 0.132800, -0.652097,
		45.297321, 33.611607, 45.472855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761314, 33.025108, 45.390820>,  <45.819809, 33.518646, 45.929321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761314, 33.025108, 45.390820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.593754, 33.367336, 45.269150>,  <45.493217, 33.572674, 45.196148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.593754, 33.367336, 45.269150>,  <45.761314, 33.025108, 45.390820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593754, 33.367336, 45.269150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580478, -0.005274, -0.814259,
		-0.698257, -0.517664, -0.494429,
		-0.418905, 0.855568, -0.304175,
		45.468082, 33.624008, 45.177898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789219, 33.035305, 44.647327>,  <45.761314, 33.025108, 45.390820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789219, 33.035305, 44.647327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.762577, 33.424221, 44.736969>,  <45.746590, 33.657570, 44.790752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.762577, 33.424221, 44.736969>,  <45.789219, 33.035305, 44.647327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762577, 33.424221, 44.736969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555413, 0.222717, -0.801196,
		-0.828903, 0.071103, -0.554855,
		-0.066608, 0.972287, 0.224102,
		45.742596, 33.715908, 44.804199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399075, 33.411419, 44.121937>,  <45.789219, 33.035305, 44.647327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399075, 33.411419, 44.121937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.663708, 33.666157, 44.280296>,  <45.822487, 33.819000, 44.375313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.663708, 33.666157, 44.280296>,  <45.399075, 33.411419, 44.121937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663708, 33.666157, 44.280296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473998, 0.053939, -0.878872,
		-0.581063, 0.769100, -0.266180,
		0.661583, 0.636849, 0.395894,
		45.862183, 33.857212, 44.399063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454197, 33.994286, 43.762589>,  <45.399075, 33.411419, 44.121937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454197, 33.994286, 43.762589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.787163, 33.861816, 43.940308>,  <45.986942, 33.782333, 44.046940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.787163, 33.861816, 43.940308>,  <45.454197, 33.994286, 43.762589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787163, 33.861816, 43.940308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515903, 0.170452, -0.839518,
		0.202295, 0.928046, 0.312742,
		0.832419, -0.331175, 0.444300,
		46.036888, 33.762463, 44.073597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017265, 34.487354, 43.627434>,  <45.454197, 33.994286, 43.762589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017265, 34.487354, 43.627434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.201267, 34.147980, 43.732159>,  <46.311668, 33.944355, 43.794994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.201267, 34.147980, 43.732159>,  <46.017265, 34.487354, 43.627434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201267, 34.147980, 43.732159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633801, 0.107245, -0.766026,
		0.621849, 0.518312, 0.587075,
		0.460001, -0.848440, 0.261817,
		46.339268, 33.893448, 43.810703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.820717, 34.547348, 43.567669>,  <46.017265, 34.487354, 43.627434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.820717, 34.547348, 43.567669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.685383, 34.176315, 43.504265>,  <46.604183, 33.953697, 43.466221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.685383, 34.176315, 43.504265>,  <46.820717, 34.547348, 43.567669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685383, 34.176315, 43.504265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601804, -0.083785, -0.794237,
		0.723436, -0.364114, 0.586568,
		-0.338339, -0.927578, -0.158512,
		46.583881, 33.898041, 43.456711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.386211, 34.091652, 43.717747>,  <46.820717, 34.547348, 43.567669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.386211, 34.091652, 43.717747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.133713, 33.871590, 43.499073>,  <46.982216, 33.739552, 43.367870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.133713, 33.871590, 43.499073>,  <47.386211, 34.091652, 43.717747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133713, 33.871590, 43.499073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723237, -0.162975, -0.671094,
		0.280108, -0.819006, 0.500768,
		-0.631243, -0.550153, -0.546685,
		46.944340, 33.706543, 43.335068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708687, 33.489998, 43.545258>,  <47.386211, 34.091652, 43.717747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708687, 33.489998, 43.545258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.421719, 33.535004, 43.270260>,  <47.249538, 33.562008, 43.105263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.421719, 33.535004, 43.270260>,  <47.708687, 33.489998, 43.545258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421719, 33.535004, 43.270260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626616, -0.326995, -0.707409,
		-0.304399, -0.938305, 0.164092,
		-0.717422, 0.112511, -0.687493,
		47.206493, 33.568760, 43.064011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.868855, 33.005642, 43.100506>,  <47.708687, 33.489998, 43.545258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.868855, 33.005642, 43.100506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.619244, 33.260029, 42.918896>,  <47.469479, 33.412659, 42.809929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.619244, 33.260029, 42.918896>,  <47.868855, 33.005642, 43.100506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.619244, 33.260029, 42.918896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521632, -0.093582, -0.848022,
		-0.581802, -0.766022, -0.273343,
		-0.624024, 0.635965, -0.454028,
		47.432037, 33.450817, 42.782688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595287, 32.866810, 42.356178>,  <47.868855, 33.005642, 43.100506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595287, 32.866810, 42.356178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.609005, 33.266109, 42.375484>,  <47.617237, 33.505688, 42.387070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.609005, 33.266109, 42.375484>,  <47.595287, 32.866810, 42.356178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609005, 33.266109, 42.375484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535122, 0.022446, -0.844477,
		-0.844078, 0.054793, -0.533413,
		0.034298, 0.998245, 0.048267,
		47.619293, 33.565582, 42.389965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.374565, 32.972710, 41.659237>,  <47.595287, 32.866810, 42.356178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.374565, 32.972710, 41.659237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.587246, 33.257687, 41.842419>,  <47.714855, 33.428673, 41.952328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.587246, 33.257687, 41.842419>,  <47.374565, 32.972710, 41.659237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.587246, 33.257687, 41.842419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685292, -0.044176, -0.726927,
		-0.497661, 0.700342, -0.511717,
		0.531703, 0.712439, 0.457955,
		47.746758, 33.471416, 41.979805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.698814, 33.365494, 41.070892>,  <47.374565, 32.972710, 41.659237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.698814, 33.365494, 41.070892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.915489, 33.489891, 41.383266>,  <48.045494, 33.564529, 41.570690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.915489, 33.489891, 41.383266>,  <47.698814, 33.365494, 41.070892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.915489, 33.489891, 41.383266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778319, 0.165319, -0.605713,
		-0.317475, 0.935924, -0.152498,
		0.541691, 0.310991, 0.780932,
		48.077995, 33.583187, 41.617546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180161, 33.009331, 40.671921>,  <47.698814, 33.365494, 41.070892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180161, 33.009331, 40.671921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.840843, 33.218601, 40.704643>,  <46.637253, 33.344162, 40.724277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.840843, 33.218601, 40.704643>,  <47.180161, 33.009331, 40.671921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840843, 33.218601, 40.704643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036798, -0.212358, 0.976499,
		0.528253, 0.825343, 0.199393,
		-0.848289, 0.523175, 0.081807,
		46.586357, 33.375553, 40.729187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895241, 33.015652, 40.078022>,  <47.180161, 33.009331, 40.671921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895241, 33.015652, 40.078022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.852165, 33.386093, 40.222656>,  <46.826321, 33.608356, 40.309437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.852165, 33.386093, 40.222656>,  <46.895241, 33.015652, 40.078022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.852165, 33.386093, 40.222656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449629, -0.279014, 0.848519,
		0.886700, 0.253953, -0.386355,
		-0.107685, 0.926099, 0.361586,
		46.819859, 33.663921, 40.331131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093250, 33.341339, 39.432026>,  <46.895241, 33.015652, 40.078022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093250, 33.341339, 39.432026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.039162, 33.642883, 39.689213>,  <47.006710, 33.823811, 39.843525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.039162, 33.642883, 39.689213>,  <47.093250, 33.341339, 39.432026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039162, 33.642883, 39.689213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592023, 0.458876, -0.662527,
		-0.794496, -0.470239, 0.384254,
		-0.135221, 0.753862, 0.642967,
		46.998596, 33.869041, 39.882103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892738, 33.088253, 38.703407>,  <47.093250, 33.341339, 39.432026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.892738, 33.088253, 38.703407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.948586, 33.040333, 38.310234>,  <46.982094, 33.011581, 38.074329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.948586, 33.040333, 38.310234>,  <46.892738, 33.088253, 38.703407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948586, 33.040333, 38.310234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057148, 0.990025, -0.128781,
		0.988555, 0.074153, 0.131379,
		0.139618, -0.119799, -0.982932,
		46.990471, 33.004395, 38.015354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426586, 33.603859, 38.376537>,  <46.892738, 33.088253, 38.703407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426586, 33.603859, 38.376537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.114189, 33.475731, 38.162083>,  <46.926750, 33.398853, 38.033409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.114189, 33.475731, 38.162083>,  <47.426586, 33.603859, 38.376537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.114189, 33.475731, 38.162083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229673, 0.945607, -0.230387,
		0.580775, -0.056794, -0.812080,
		-0.780993, -0.320316, -0.536141,
		46.879890, 33.379635, 38.001240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.577522, 33.804829, 37.715767>,  <47.426586, 33.603859, 38.376537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.577522, 33.804829, 37.715767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.181244, 33.772091, 37.759247>,  <46.943478, 33.752449, 37.785336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.181244, 33.772091, 37.759247>,  <47.577522, 33.804829, 37.715767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.181244, 33.772091, 37.759247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111485, 0.946235, -0.303661,
		-0.078001, -0.312955, -0.946560,
		-0.990700, -0.081841, 0.108697,
		46.884033, 33.747540, 37.791855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252262, 34.219704, 37.168682>,  <47.577522, 33.804829, 37.715767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252262, 34.219704, 37.168682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.002769, 34.162987, 37.476151>,  <46.853073, 34.128956, 37.660633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.002769, 34.162987, 37.476151>,  <47.252262, 34.219704, 37.168682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.002769, 34.162987, 37.476151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173584, 0.983980, 0.040653,
		-0.762121, -0.108072, -0.638351,
		-0.623731, -0.141790, 0.768671,
		46.815651, 34.120449, 37.706753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.700100, 34.540905, 36.563789>,  <47.252262, 34.219704, 37.168682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.700100, 34.540905, 36.563789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.988121, 34.758354, 36.391277>,  <48.160934, 34.888824, 36.287769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.988121, 34.758354, 36.391277>,  <47.700100, 34.540905, 36.563789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.988121, 34.758354, 36.391277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476531, -0.064409, -0.876795,
		-0.504424, 0.836854, 0.212676,
		0.720052, 0.543624, -0.431276,
		48.204136, 34.921440, 36.261894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389709, 34.905075, 36.072662>,  <47.700100, 34.540905, 36.563789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389709, 34.905075, 36.072662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.773331, 34.941296, 35.965321>,  <48.003502, 34.963028, 35.900917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.773331, 34.941296, 35.965321>,  <47.389709, 34.905075, 36.072662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.773331, 34.941296, 35.965321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253348, -0.149263, -0.955790,
		-0.126608, 0.984642, -0.120209,
		0.959054, 0.090556, -0.268355,
		48.061047, 34.968464, 35.884815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.370354, 35.242325, 35.528416>,  <47.389709, 34.905075, 36.072662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.370354, 35.242325, 35.528416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.716354, 35.041695, 35.522724>,  <47.923954, 34.921318, 35.519310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.716354, 35.041695, 35.522724>,  <47.370354, 35.242325, 35.528416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.716354, 35.041695, 35.522724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196738, -0.312929, -0.929177,
		0.461598, 0.806535, -0.369362,
		0.864998, -0.501573, -0.014229,
		47.975853, 34.891224, 35.518456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.663509, 35.213383, 34.801945>,  <47.370354, 35.242325, 35.528416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.663509, 35.213383, 34.801945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.816837, 34.900021, 34.997635>,  <47.908833, 34.712002, 35.115047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.816837, 34.900021, 34.997635>,  <47.663509, 35.213383, 34.801945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816837, 34.900021, 34.997635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033920, -0.541268, -0.840166,
		0.922992, 0.305458, -0.234052,
		0.383320, -0.783406, 0.489225,
		47.931835, 34.664997, 35.144402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.399147, 29.989426, 56.695068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.731869, 30.210333, 56.717335>,  <33.931503, 30.342878, 56.730694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.731869, 30.210333, 56.717335>,  <33.399147, 29.989426, 56.695068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731869, 30.210333, 56.717335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123296, -0.086051, -0.988632,
		-0.541200, 0.829213, -0.139670,
		0.831805, 0.552269, 0.055668,
		33.981411, 30.376013, 56.734035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403736, 30.392159, 56.146252>,  <33.399147, 29.989426, 56.695068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403736, 30.392159, 56.146252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.789528, 30.391235, 56.251919>,  <34.021004, 30.390680, 56.315319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.789528, 30.391235, 56.251919>,  <33.403736, 30.392159, 56.146252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789528, 30.391235, 56.251919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263219, 0.093340, -0.960210,
		-0.022439, 0.995632, 0.090632,
		0.964475, -0.002310, 0.264163,
		34.078869, 30.390543, 56.331169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709923, 30.870605, 55.772900>,  <33.403736, 30.392159, 56.146252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709923, 30.870605, 55.772900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035141, 30.669172, 55.889771>,  <34.230270, 30.548313, 55.959892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.035141, 30.669172, 55.889771>,  <33.709923, 30.870605, 55.772900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035141, 30.669172, 55.889771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423106, 0.166337, -0.890682,
		0.399933, 0.847783, 0.348308,
		0.813041, -0.503584, 0.292178,
		34.279053, 30.518097, 55.977425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238392, 31.369244, 55.572651>,  <33.709923, 30.870605, 55.772900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238392, 31.369244, 55.572651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.384369, 30.999912, 55.620449>,  <34.471954, 30.778313, 55.649128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.384369, 30.999912, 55.620449>,  <34.238392, 31.369244, 55.572651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384369, 30.999912, 55.620449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560239, 0.115279, -0.820270,
		0.743605, 0.366295, 0.559356,
		0.364943, -0.923330, 0.119491,
		34.493851, 30.722914, 55.656296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970886, 31.445238, 55.451279>,  <34.238392, 31.369244, 55.572651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970886, 31.445238, 55.451279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.919392, 31.053722, 55.387535>,  <34.888493, 30.818813, 55.349289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.919392, 31.053722, 55.387535>,  <34.970886, 31.445238, 55.451279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919392, 31.053722, 55.387535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622830, 0.045243, -0.781048,
		0.771692, -0.199803, 0.603796,
		-0.128738, -0.978791, -0.159357,
		34.880772, 30.760084, 55.339729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607822, 31.247286, 55.180645>,  <34.970886, 31.445238, 55.451279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607822, 31.247286, 55.180645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.350296, 30.959658, 55.076004>,  <35.195782, 30.787081, 55.013218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.350296, 30.959658, 55.076004>,  <35.607822, 31.247286, 55.180645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350296, 30.959658, 55.076004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279065, 0.097687, -0.955290,
		0.712478, -0.688035, 0.137775,
		-0.643815, -0.719072, -0.261607,
		35.157150, 30.743937, 54.997520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986683, 30.775581, 54.787094>,  <35.607822, 31.247286, 55.180645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986683, 30.775581, 54.787094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603962, 30.726389, 54.681717>,  <35.374329, 30.696875, 54.618492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603962, 30.726389, 54.681717>,  <35.986683, 30.775581, 54.787094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603962, 30.726389, 54.681717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256712, 0.067974, -0.964095,
		0.136474, -0.990078, -0.033467,
		-0.956804, -0.122982, -0.263442,
		35.316921, 30.689495, 54.602684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049553, 30.203127, 54.350464>,  <35.986683, 30.775581, 54.787094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049553, 30.203127, 54.350464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710918, 30.405977, 54.285828>,  <35.507736, 30.527687, 54.247047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710918, 30.405977, 54.285828>,  <36.049553, 30.203127, 54.350464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710918, 30.405977, 54.285828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071792, -0.192018, -0.978762,
		-0.527385, -0.840209, 0.126152,
		-0.846588, 0.507128, -0.161587,
		35.456944, 30.558115, 54.237350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773640, 29.819141, 53.736687>,  <36.049553, 30.203127, 54.350464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773640, 29.819141, 53.736687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.599621, 30.178295, 53.763618>,  <35.495209, 30.393787, 53.779778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.599621, 30.178295, 53.763618>,  <35.773640, 29.819141, 53.736687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599621, 30.178295, 53.763618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131699, 0.137427, -0.981717,
		-0.890724, -0.418226, -0.178038,
		-0.435047, 0.897887, 0.067329,
		35.469105, 30.447660, 53.783817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290020, 29.860771, 53.295956>,  <35.773640, 29.819141, 53.736687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290020, 29.860771, 53.295956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342113, 30.251339, 53.364826>,  <35.373371, 30.485680, 53.406151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.342113, 30.251339, 53.364826>,  <35.290020, 29.860771, 53.295956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342113, 30.251339, 53.364826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059434, 0.165659, -0.984391,
		-0.989700, 0.138437, -0.036458,
		0.130236, 0.976418, 0.172180,
		35.381184, 30.544264, 53.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685745, 30.117098, 52.798569>,  <35.290020, 29.860771, 53.295956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685745, 30.117098, 52.798569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.950687, 30.403625, 52.886356>,  <35.109653, 30.575542, 52.939030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.950687, 30.403625, 52.886356>,  <34.685745, 30.117098, 52.798569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950687, 30.403625, 52.886356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216573, 0.097370, -0.971399,
		-0.717202, 0.690945, -0.090642,
		0.662357, 0.716320, 0.219474,
		35.149395, 30.618521, 52.952198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644077, 30.564306, 52.257778>,  <34.685745, 30.117098, 52.798569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644077, 30.564306, 52.257778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993572, 30.681147, 52.413342>,  <35.203270, 30.751251, 52.506680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993572, 30.681147, 52.413342>,  <34.644077, 30.564306, 52.257778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993572, 30.681147, 52.413342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294312, 0.319084, -0.900870,
		-0.387242, 0.901588, 0.192827,
		0.873742, 0.292103, 0.388910,
		35.255695, 30.768778, 52.530014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804066, 31.186487, 51.960793>,  <34.644077, 30.564306, 52.257778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804066, 31.186487, 51.960793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.156803, 31.048874, 52.089779>,  <35.368446, 30.966307, 52.167171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.156803, 31.048874, 52.089779>,  <34.804066, 31.186487, 51.960793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156803, 31.048874, 52.089779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402312, 0.192255, -0.895088,
		0.245945, 0.919064, 0.307948,
		0.881848, -0.344033, 0.322467,
		35.421356, 30.945663, 52.186520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301971, 31.707056, 51.783298>,  <34.804066, 31.186487, 51.960793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301971, 31.707056, 51.783298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487034, 31.354179, 51.818371>,  <35.598072, 31.142452, 51.839413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487034, 31.354179, 51.818371>,  <35.301971, 31.707056, 51.783298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487034, 31.354179, 51.818371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434302, 0.139316, -0.889929,
		0.772874, 0.449807, 0.447593,
		0.462653, -0.882193, 0.087678,
		35.625832, 31.089521, 51.844673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960255, 31.818039, 51.474396>,  <35.301971, 31.707056, 51.783298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960255, 31.818039, 51.474396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.926189, 31.419518, 51.478939>,  <35.905750, 31.180405, 51.481667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.926189, 31.419518, 51.478939>,  <35.960255, 31.818039, 51.474396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926189, 31.419518, 51.478939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438323, -0.047704, -0.897551,
		0.894774, -0.071458, 0.440765,
		-0.085164, -0.996302, 0.011363,
		35.900639, 31.120626, 51.482349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630180, 31.616411, 51.243210>,  <35.960255, 31.818039, 51.474396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630180, 31.616411, 51.243210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361294, 31.331184, 51.163548>,  <36.199963, 31.160048, 51.115749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361294, 31.331184, 51.163548>,  <36.630180, 31.616411, 51.243210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361294, 31.331184, 51.163548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394719, -0.117594, -0.911245,
		0.626360, -0.691162, 0.360510,
		-0.672212, -0.713068, -0.199159,
		36.159630, 31.117264, 51.103798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975098, 31.092865, 50.836761>,  <36.630180, 31.616411, 51.243210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975098, 31.092865, 50.836761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.581406, 31.040585, 50.789097>,  <36.345188, 31.009216, 50.760498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.581406, 31.040585, 50.789097>,  <36.975098, 31.092865, 50.836761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581406, 31.040585, 50.789097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114350, 0.043772, -0.992476,
		0.134933, -0.990455, -0.028137,
		-0.984234, -0.130700, -0.119165,
		36.286137, 31.001375, 50.753345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927921, 30.471724, 50.342232>,  <36.975098, 31.092865, 50.836761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927921, 30.471724, 50.342232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572002, 30.653463, 50.325153>,  <36.358452, 30.762506, 50.314907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.572002, 30.653463, 50.325153>,  <36.927921, 30.471724, 50.342232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572002, 30.653463, 50.325153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056263, 0.016372, -0.998282,
		-0.452869, -0.890673, -0.040131,
		-0.889800, 0.454349, -0.042698,
		36.305061, 30.789768, 50.312344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670238, 30.224575, 49.675205>,  <36.927921, 30.471724, 50.342232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670238, 30.224575, 49.675205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.400433, 30.510847, 49.747681>,  <36.238548, 30.682611, 49.791168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.400433, 30.510847, 49.747681>,  <36.670238, 30.224575, 49.675205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400433, 30.510847, 49.747681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124552, 0.131597, -0.983447,
		-0.727681, -0.685916, 0.000376,
		-0.674513, 0.715683, 0.181193,
		36.198078, 30.725552, 49.802040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129585, 30.163042, 49.185822>,  <36.670238, 30.224575, 49.675205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129585, 30.163042, 49.185822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105152, 30.542669, 49.309460>,  <36.090492, 30.770445, 49.383644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.105152, 30.542669, 49.309460>,  <36.129585, 30.163042, 49.185822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105152, 30.542669, 49.309460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008877, 0.309144, -0.950974,
		-0.998093, -0.060831, -0.010458,
		-0.061082, 0.949068, 0.309095,
		36.086826, 30.827389, 49.402187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480705, 30.508083, 48.860382>,  <36.129585, 30.163042, 49.185822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480705, 30.508083, 48.860382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.692638, 30.833704, 48.955544>,  <35.819798, 31.029076, 49.012642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.692638, 30.833704, 48.955544>,  <35.480705, 30.508083, 48.860382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692638, 30.833704, 48.955544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119974, 0.349636, -0.929172,
		-0.839573, 0.463764, 0.282913,
		0.529834, 0.814050, 0.237905,
		35.851589, 31.077919, 49.026917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117077, 31.154043, 48.705761>,  <35.480705, 30.508083, 48.860382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117077, 31.154043, 48.705761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.503460, 31.255255, 48.727325>,  <35.735291, 31.315981, 48.740265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.503460, 31.255255, 48.727325>,  <35.117077, 31.154043, 48.705761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503460, 31.255255, 48.727325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068497, 0.451081, -0.889851,
		-0.249474, 0.855864, 0.453056,
		0.965956, 0.253027, 0.053909,
		35.793247, 31.331163, 48.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649200, 31.528374, 48.271080>,  <35.117077, 31.154043, 48.705761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649200, 31.528374, 48.271080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.292755, 31.696886, 48.203621>,  <34.078888, 31.797993, 48.163143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.292755, 31.696886, 48.203621>,  <34.649200, 31.528374, 48.271080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292755, 31.696886, 48.203621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158260, 0.059803, 0.985585,
		0.425292, 0.904957, 0.013380,
		-0.891112, 0.421279, -0.168652,
		34.025421, 31.823269, 48.153027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733387, 32.179829, 48.550560>,  <34.649200, 31.528374, 48.271080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733387, 32.179829, 48.550560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.348389, 32.073723, 48.527821>,  <34.117390, 32.010059, 48.514175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.348389, 32.073723, 48.527821>,  <34.733387, 32.179829, 48.550560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348389, 32.073723, 48.527821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098318, 0.145762, 0.984422,
		-0.252848, 0.953093, -0.166376,
		-0.962498, -0.265267, -0.056851,
		34.059639, 31.994143, 48.510765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354172, 32.670200, 49.014980>,  <34.733387, 32.179829, 48.550560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354172, 32.670200, 49.014980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.081261, 32.379841, 48.980167>,  <33.917515, 32.205624, 48.959278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.081261, 32.379841, 48.980167>,  <34.354172, 32.670200, 49.014980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081261, 32.379841, 48.980167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210242, 0.080788, 0.974306,
		-0.700216, 0.683041, -0.207734,
		-0.682273, -0.725898, -0.087035,
		33.876579, 32.162071, 48.954056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631104, 32.931004, 49.377350>,  <34.354172, 32.670200, 49.014980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631104, 32.931004, 49.377350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.631863, 32.531067, 49.370361>,  <33.632320, 32.291103, 49.366169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.631863, 32.531067, 49.370361>,  <33.631104, 32.931004, 49.377350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631863, 32.531067, 49.370361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347649, -0.017047, 0.937470,
		-0.937623, 0.004293, -0.347628,
		0.001902, -0.999846, -0.017476,
		33.632435, 32.231113, 49.365120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010746, 32.760841, 49.688652>,  <33.631104, 32.931004, 49.377350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010746, 32.760841, 49.688652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.226051, 32.424358, 49.709183>,  <33.355236, 32.222469, 49.721500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.226051, 32.424358, 49.709183>,  <33.010746, 32.760841, 49.688652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226051, 32.424358, 49.709183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428183, -0.220507, 0.876376,
		-0.725897, -0.493704, -0.478884,
		0.538268, -0.841209, 0.051331,
		33.387531, 32.171997, 49.724583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436543, 32.214401, 49.911499>,  <33.010746, 32.760841, 49.688652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436543, 32.214401, 49.911499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.811028, 32.101219, 49.994862>,  <33.035721, 32.033310, 50.044880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.811028, 32.101219, 49.994862>,  <32.436543, 32.214401, 49.911499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811028, 32.101219, 49.994862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290867, -0.291119, 0.911398,
		-0.197216, -0.913885, -0.354854,
		0.936217, -0.282958, 0.208406,
		33.091892, 32.016331, 50.057384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396519, 31.540218, 50.029404>,  <32.436543, 32.214401, 49.911499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396519, 31.540218, 50.029404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.728992, 31.654018, 50.220478>,  <32.928478, 31.722298, 50.335125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.728992, 31.654018, 50.220478>,  <32.396519, 31.540218, 50.029404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728992, 31.654018, 50.220478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373902, -0.349845, 0.858956,
		0.411491, -0.892563, -0.184411,
		0.831188, 0.284501, 0.477689,
		32.978348, 31.739368, 50.363785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454155, 31.038919, 50.442688>,  <32.396519, 31.540218, 50.029404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454155, 31.038919, 50.442688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.712997, 31.303736, 50.593925>,  <32.868301, 31.462626, 50.684669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.712997, 31.303736, 50.593925>,  <32.454155, 31.038919, 50.442688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712997, 31.303736, 50.593925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163499, -0.363882, 0.916983,
		0.744664, -0.655202, -0.127226,
		0.647104, 0.662043, 0.378095,
		32.907127, 31.502348, 50.707355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925026, 30.652725, 50.953709>,  <32.454155, 31.038919, 50.442688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925026, 30.652725, 50.953709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.946953, 31.042578, 51.040508>,  <32.960110, 31.276489, 51.092587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.946953, 31.042578, 51.040508>,  <32.925026, 30.652725, 50.953709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946953, 31.042578, 51.040508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085985, -0.211907, 0.973500,
		0.994787, -0.072023, 0.072188,
		0.054817, 0.974632, 0.216996,
		32.963398, 31.334967, 51.105606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497143, 30.687206, 51.471676>,  <32.925026, 30.652725, 50.953709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497143, 30.687206, 51.471676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254818, 31.000793, 51.525909>,  <33.109421, 31.188946, 51.558449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.254818, 31.000793, 51.525909>,  <33.497143, 30.687206, 51.471676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254818, 31.000793, 51.525909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220721, -0.329334, 0.918053,
		0.764376, 0.526244, 0.372554,
		-0.605815, 0.783968, 0.135582,
		33.073074, 31.235985, 51.566586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578938, 30.859310, 52.151306>,  <33.497143, 30.687206, 51.471676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578938, 30.859310, 52.151306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.259693, 31.092024, 52.088646>,  <33.068146, 31.231653, 52.051052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.259693, 31.092024, 52.088646>,  <33.578938, 30.859310, 52.151306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259693, 31.092024, 52.088646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263634, -0.103435, 0.959061,
		0.541765, 0.806738, 0.235932,
		-0.798115, 0.581786, -0.156646,
		33.020260, 31.266560, 52.041653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526707, 31.458105, 52.637535>,  <33.578938, 30.859310, 52.151306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526707, 31.458105, 52.637535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.154095, 31.394226, 52.506847>,  <32.930527, 31.355900, 52.428436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.154095, 31.394226, 52.506847>,  <33.526707, 31.458105, 52.637535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154095, 31.394226, 52.506847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321102, -0.060519, 0.945109,
		-0.170703, 0.985309, 0.005097,
		-0.931533, -0.159696, -0.326716,
		32.874634, 31.346317, 52.408833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135357, 31.771181, 53.090168>,  <33.526707, 31.458105, 52.637535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135357, 31.771181, 53.090168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.875011, 31.527601, 52.908817>,  <32.718803, 31.381454, 52.800007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.875011, 31.527601, 52.908817>,  <33.135357, 31.771181, 53.090168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875011, 31.527601, 52.908817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396966, -0.236071, 0.886955,
		-0.647139, 0.757267, -0.088081,
		-0.650868, -0.608948, -0.453380,
		32.679752, 31.344917, 52.772804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498871, 32.069908, 53.236458>,  <33.135357, 31.771181, 53.090168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498871, 32.069908, 53.236458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.424110, 31.688665, 53.141251>,  <32.379253, 31.459919, 53.084126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.424110, 31.688665, 53.141251>,  <32.498871, 32.069908, 53.236458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424110, 31.688665, 53.141251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312049, -0.172137, 0.934342,
		-0.931501, 0.248902, -0.265244,
		-0.186901, -0.953109, -0.238016,
		32.368038, 31.402733, 53.069847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737125, 31.875011, 53.483818>,  <32.498871, 32.069908, 53.236458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737125, 31.875011, 53.483818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.975767, 31.555334, 53.454563>,  <32.118954, 31.363527, 53.437008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.975767, 31.555334, 53.454563>,  <31.737125, 31.875011, 53.483818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975767, 31.555334, 53.454563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153956, -0.203418, 0.966912,
		-0.787629, -0.565604, -0.244401,
		0.596604, -0.799195, -0.073140,
		32.154747, 31.315575, 53.432621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335907, 31.363859, 53.643280>,  <31.737125, 31.875011, 53.483818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335907, 31.363859, 53.643280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.707703, 31.238432, 53.720974>,  <31.930780, 31.163176, 53.767590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.707703, 31.238432, 53.720974>,  <31.335907, 31.363859, 53.643280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707703, 31.238432, 53.720974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217356, -0.040180, 0.975265,
		-0.298006, -0.948716, -0.105502,
		0.929489, -0.313566, 0.194235,
		31.986549, 31.144361, 53.779243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271410, 30.822451, 54.109653>,  <31.335907, 31.363859, 53.643280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271410, 30.822451, 54.109653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.657801, 30.919165, 54.146385>,  <31.889635, 30.977194, 54.168427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.657801, 30.919165, 54.146385>,  <31.271410, 30.822451, 54.109653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657801, 30.919165, 54.146385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046189, -0.188086, 0.981066,
		0.254480, -0.951926, -0.170519,
		0.965974, 0.241786, 0.091833,
		31.947594, 30.991701, 54.173935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454874, 30.424410, 54.692501>,  <31.271410, 30.822451, 54.109653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454874, 30.424410, 54.692501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.760881, 30.679520, 54.656742>,  <31.944485, 30.832586, 54.635284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.760881, 30.679520, 54.656742>,  <31.454874, 30.424410, 54.692501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760881, 30.679520, 54.656742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004002, 0.134106, 0.990959,
		0.643998, -0.758458, 0.100041,
		0.765017, 0.637775, -0.089400,
		31.990387, 30.870852, 54.629921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.087254, 30.269274, 55.188793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125172, 30.657940, 55.102188>,  <32.147923, 30.891140, 55.050224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125172, 30.657940, 55.102188>,  <32.087254, 30.269274, 55.188793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125172, 30.657940, 55.102188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117280, 0.226875, 0.966837,
		0.988565, -0.066255, 0.135463,
		0.094791, 0.971668, -0.216511,
		32.153610, 30.949440, 55.037235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507336, 30.479326, 55.666275>,  <32.087254, 30.269274, 55.188793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507336, 30.479326, 55.666275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330704, 30.811789, 55.531105>,  <32.224724, 31.011265, 55.450005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330704, 30.811789, 55.531105>,  <32.507336, 30.479326, 55.666275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330704, 30.811789, 55.531105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020433, 0.367220, 0.929910,
		0.896991, 0.417532, -0.145173,
		-0.441577, 0.831154, -0.337924,
		32.198231, 31.061134, 55.429729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879932, 30.990883, 55.993530>,  <32.507336, 30.479326, 55.666275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879932, 30.990883, 55.993530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545910, 31.189558, 55.898884>,  <32.345497, 31.308764, 55.842094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545910, 31.189558, 55.898884>,  <32.879932, 30.990883, 55.993530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545910, 31.189558, 55.898884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163321, 0.186896, 0.968708,
		0.525370, 0.847567, -0.074948,
		-0.835052, 0.496690, -0.236615,
		32.295395, 31.338566, 55.827900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937153, 31.740335, 56.271828>,  <32.879932, 30.990883, 55.993530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937153, 31.740335, 56.271828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548107, 31.665987, 56.216003>,  <32.314678, 31.621378, 56.182510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548107, 31.665987, 56.216003>,  <32.937153, 31.740335, 56.271828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548107, 31.665987, 56.216003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202910, 0.386139, 0.899847,
		-0.113365, 0.903520, -0.413278,
		-0.972613, -0.185869, -0.139558,
		32.256325, 31.610226, 56.174137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637836, 32.215424, 56.762493>,  <32.937153, 31.740335, 56.271828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637836, 32.215424, 56.762493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338505, 31.966473, 56.670712>,  <32.158905, 31.817102, 56.615643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338505, 31.966473, 56.670712>,  <32.637836, 32.215424, 56.762493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338505, 31.966473, 56.670712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362140, 0.093516, 0.927421,
		-0.555745, 0.777114, -0.295368,
		-0.748333, -0.622374, -0.229453,
		32.114006, 31.779760, 56.601875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012486, 32.581451, 56.802845>,  <32.637836, 32.215424, 56.762493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012486, 32.581451, 56.802845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923731, 32.196159, 56.863453>,  <31.870478, 31.964985, 56.899818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923731, 32.196159, 56.863453>,  <32.012486, 32.581451, 56.802845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923731, 32.196159, 56.863453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479721, 0.243130, 0.843063,
		-0.848900, 0.114379, -0.516028,
		-0.221891, -0.963226, 0.151523,
		31.857164, 31.907192, 56.908909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369717, 32.578823, 57.019466>,  <32.012486, 32.581451, 56.802845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369717, 32.578823, 57.019466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522923, 32.230518, 57.142803>,  <31.614847, 32.021538, 57.216805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522923, 32.230518, 57.142803>,  <31.369717, 32.578823, 57.019466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522923, 32.230518, 57.142803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373420, 0.159357, 0.913873,
		-0.844900, -0.465170, -0.264122,
		0.383017, -0.870760, 0.308344,
		31.637827, 31.969290, 57.235306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814756, 32.135487, 57.402897>,  <31.369717, 32.578823, 57.019466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814756, 32.135487, 57.402897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153513, 31.972828, 57.539959>,  <31.356768, 31.875233, 57.622196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153513, 31.972828, 57.539959>,  <30.814756, 32.135487, 57.402897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153513, 31.972828, 57.539959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443510, -0.184641, 0.877044,
		-0.293378, -0.894733, -0.336722,
		0.846893, -0.406646, 0.342653,
		31.407581, 31.850834, 57.642754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608255, 31.562716, 57.691296>,  <30.814756, 32.135487, 57.402897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608255, 31.562716, 57.691296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978474, 31.626183, 57.828812>,  <31.200605, 31.664263, 57.911320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978474, 31.626183, 57.828812>,  <30.608255, 31.562716, 57.691296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978474, 31.626183, 57.828812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267405, -0.368909, 0.890169,
		0.268067, -0.915823, -0.299014,
		0.925546, 0.158667, 0.343788,
		31.256138, 31.673782, 57.931950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539318, 30.998480, 58.096584>,  <30.608255, 31.562716, 57.691296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539318, 30.998480, 58.096584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865280, 31.196194, 58.217651>,  <31.060858, 31.314823, 58.290291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865280, 31.196194, 58.217651>,  <30.539318, 30.998480, 58.096584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865280, 31.196194, 58.217651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070929, -0.433233, 0.898487,
		0.575235, -0.753651, -0.317986,
		0.814907, 0.494287, 0.302667,
		31.109753, 31.344481, 58.308453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868563, 30.516033, 58.534046>,  <30.539318, 30.998480, 58.096584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868563, 30.516033, 58.534046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970751, 30.890125, 58.632092>,  <31.032064, 31.114580, 58.690918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970751, 30.890125, 58.632092>,  <30.868563, 30.516033, 58.534046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970751, 30.890125, 58.632092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180313, -0.202988, 0.962436,
		0.949854, -0.290072, 0.116777,
		0.255471, 0.935230, 0.245113,
		31.047392, 31.170694, 58.705624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300898, 30.440393, 59.105785>,  <30.868563, 30.516033, 58.534046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300898, 30.440393, 59.105785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150476, 30.810785, 59.119320>,  <31.060223, 31.033020, 59.127441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150476, 30.810785, 59.119320>,  <31.300898, 30.440393, 59.105785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150476, 30.810785, 59.119320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253685, -0.138010, 0.957391,
		0.891194, 0.351447, 0.286807,
		-0.376054, 0.925980, 0.033837,
		31.037661, 31.088579, 59.129471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565752, 30.666595, 59.790154>,  <31.300898, 30.440393, 59.105785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565752, 30.666595, 59.790154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264704, 30.906925, 59.682396>,  <31.084074, 31.051123, 59.617741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264704, 30.906925, 59.682396>,  <31.565752, 30.666595, 59.790154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264704, 30.906925, 59.682396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223467, 0.151775, 0.962822,
		0.619373, 0.784841, 0.020035,
		-0.752622, 0.600823, -0.269392,
		31.038918, 31.087172, 59.601578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625286, 31.216021, 60.297607>,  <31.565752, 30.666595, 59.790154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625286, 31.216021, 60.297607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259417, 31.244350, 60.138432>,  <31.039894, 31.261349, 60.042927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259417, 31.244350, 60.138432>,  <31.625286, 31.216021, 60.297607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259417, 31.244350, 60.138432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393879, 0.064810, 0.916875,
		0.090729, 0.995381, -0.031383,
		-0.914674, 0.070827, -0.397939,
		30.985014, 31.265598, 60.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384945, 31.787390, 60.623371>,  <31.625286, 31.216021, 60.297607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384945, 31.787390, 60.623371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078754, 31.576893, 60.475258>,  <30.895041, 31.450594, 60.386391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078754, 31.576893, 60.475258>,  <31.384945, 31.787390, 60.623371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078754, 31.576893, 60.475258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551821, 0.240891, 0.798414,
		-0.330963, 0.815499, -0.474790,
		-0.765478, -0.526244, -0.370283,
		30.849112, 31.419020, 60.364174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844912, 32.281601, 60.585411>,  <31.384945, 31.787390, 60.623371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844912, 32.281601, 60.585411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681822, 31.916719, 60.601593>,  <30.583967, 31.697790, 60.611301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681822, 31.916719, 60.601593>,  <30.844912, 32.281601, 60.585411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681822, 31.916719, 60.601593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573269, 0.290216, 0.766249,
		-0.710719, 0.289227, -0.641269,
		-0.407727, -0.912207, 0.040457,
		30.559504, 31.643057, 60.613731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106716, 32.363895, 60.591087>,  <30.844912, 32.281601, 60.585411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106716, 32.363895, 60.591087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155792, 31.994587, 60.736694>,  <30.185238, 31.773001, 60.824059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155792, 31.994587, 60.736694>,  <30.106716, 32.363895, 60.591087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155792, 31.994587, 60.736694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691970, 0.183349, 0.698256,
		-0.711425, -0.337560, -0.616383,
		0.122691, -0.923275, 0.364020,
		30.192600, 31.717604, 60.845901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439722, 32.123360, 60.810024>,  <30.106716, 32.363895, 60.591087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439722, 32.123360, 60.810024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715740, 31.913359, 61.009308>,  <29.881351, 31.787357, 61.128876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715740, 31.913359, 61.009308>,  <29.439722, 32.123360, 60.810024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715740, 31.913359, 61.009308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589139, -0.007588, 0.807996,
		-0.420420, -0.851066, -0.314536,
		0.690045, -0.525003, 0.498207,
		29.922754, 31.755857, 61.158772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059950, 31.834391, 61.340702>,  <29.439722, 32.123360, 60.810024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059950, 31.834391, 61.340702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431492, 31.789162, 61.481808>,  <29.654417, 31.762024, 61.566471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431492, 31.789162, 61.481808>,  <29.059950, 31.834391, 61.340702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431492, 31.789162, 61.481808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354862, 0.001721, 0.934917,
		-0.106320, -0.993585, -0.038526,
		0.928854, -0.113072, 0.352768,
		29.710148, 31.755239, 61.587639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888006, 31.285236, 61.755623>,  <29.059950, 31.834391, 61.340702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888006, 31.285236, 61.755623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236237, 31.440687, 61.876335>,  <29.445175, 31.533958, 61.948761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236237, 31.440687, 61.876335>,  <28.888006, 31.285236, 61.755623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236237, 31.440687, 61.876335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350009, 0.058062, 0.934945,
		0.345825, -0.919563, 0.186571,
		0.870574, 0.388629, 0.301776,
		29.497408, 31.557276, 61.966869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112659, 30.985401, 62.486477>,  <28.888006, 31.285236, 61.755623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112659, 30.985401, 62.486477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314941, 31.329407, 62.459236>,  <29.436310, 31.535810, 62.442894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314941, 31.329407, 62.459236>,  <29.112659, 30.985401, 62.486477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314941, 31.329407, 62.459236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210844, 0.199751, 0.956893,
		0.836545, -0.469547, 0.282344,
		0.505704, 0.860015, -0.068099,
		29.466652, 31.587412, 62.438805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305105, 31.144783, 63.150478>,  <29.112659, 30.985401, 62.486477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305105, 31.144783, 63.150478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352768, 31.495483, 62.964096>,  <29.381367, 31.705904, 62.852268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352768, 31.495483, 62.964096>,  <29.305105, 31.144783, 63.150478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352768, 31.495483, 62.964096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173175, 0.480456, 0.859751,
		0.977656, -0.021755, 0.209081,
		0.119158, 0.876748, -0.465954,
		29.388515, 31.758509, 62.824310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586063, 31.656204, 63.699051>,  <29.305105, 31.144783, 63.150478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586063, 31.656204, 63.699051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469378, 31.889624, 63.395901>,  <29.399366, 32.029675, 63.214012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469378, 31.889624, 63.395901>,  <29.586063, 31.656204, 63.699051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469378, 31.889624, 63.395901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251847, 0.717522, 0.649412,
		0.922755, 0.380310, -0.062346,
		-0.291712, 0.583546, -0.757877,
		29.381865, 32.064686, 63.168537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940100, 32.275383, 63.624840>,  <29.586063, 31.656204, 63.699051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940100, 32.275383, 63.624840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572018, 32.324196, 63.476070>,  <29.351168, 32.353485, 63.386806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572018, 32.324196, 63.476070>,  <29.940100, 32.275383, 63.624840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572018, 32.324196, 63.476070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112514, 0.827602, 0.549923,
		0.374914, 0.547889, -0.747835,
		-0.920206, 0.122032, -0.371925,
		29.295956, 32.360806, 63.364494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501171, 32.712273, 63.374290>,  <29.940100, 32.275383, 63.624840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501171, 32.712273, 63.374290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809357, 32.601734, 63.604080>,  <30.994268, 32.535412, 63.741955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809357, 32.601734, 63.604080>,  <30.501171, 32.712273, 63.374290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809357, 32.601734, 63.604080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634957, 0.252516, -0.730113,
		0.056699, 0.927291, 0.370021,
		0.770464, -0.276344, 0.574473,
		31.040497, 32.518829, 63.776421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941805, 33.253700, 63.327732>,  <30.501171, 32.712273, 63.374290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941805, 33.253700, 63.327732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144491, 32.924553, 63.430588>,  <31.266104, 32.727062, 63.492302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144491, 32.924553, 63.430588>,  <30.941805, 33.253700, 63.327732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144491, 32.924553, 63.430588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494671, 0.033234, -0.868445,
		0.706074, 0.567253, 0.423891,
		0.506715, -0.822873, 0.257138,
		31.296505, 32.677692, 63.507729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584396, 33.343842, 63.069134>,  <30.941805, 33.253700, 63.327732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584396, 33.343842, 63.069134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612562, 32.947426, 63.114525>,  <31.629461, 32.709576, 63.141762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612562, 32.947426, 63.114525>,  <31.584396, 33.343842, 63.069134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612562, 32.947426, 63.114525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679857, -0.035569, -0.732481,
		0.729956, 0.128731, 0.671262,
		0.070417, -0.991042, 0.113482,
		31.633688, 32.650112, 63.148571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295021, 33.188965, 63.051243>,  <31.584396, 33.343842, 63.069134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295021, 33.188965, 63.051243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126091, 32.833012, 62.982243>,  <32.024734, 32.619442, 62.940842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126091, 32.833012, 62.982243>,  <32.295021, 33.188965, 63.051243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126091, 32.833012, 62.982243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686277, -0.189572, -0.702201,
		0.592173, -0.414941, 0.690765,
		-0.422321, -0.889880, -0.172505,
		31.999395, 32.566048, 62.930492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883610, 32.855080, 63.046940>,  <32.295021, 33.188965, 63.051243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883610, 32.855080, 63.046940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618500, 32.621086, 62.859951>,  <32.459435, 32.480690, 62.747757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618500, 32.621086, 62.859951>,  <32.883610, 32.855080, 63.046940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618500, 32.621086, 62.859951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678535, -0.205104, -0.705353,
		0.316741, -0.784682, 0.532869,
		-0.662771, -0.584984, -0.467469,
		32.419670, 32.445591, 62.719711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309616, 32.398476, 62.731720>,  <32.883610, 32.855080, 63.046940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309616, 32.398476, 62.731720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960632, 32.307648, 62.558624>,  <32.751244, 32.253151, 62.454769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960632, 32.307648, 62.558624>,  <33.309616, 32.398476, 62.731720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960632, 32.307648, 62.558624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485198, -0.296789, -0.822495,
		0.058334, -0.927553, 0.369109,
		-0.872456, -0.227070, -0.432735,
		32.698895, 32.239525, 62.428802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429146, 31.736967, 62.470043>,  <33.309616, 32.398476, 62.731720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429146, 31.736967, 62.470043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119843, 31.882454, 62.262283>,  <32.934261, 31.969746, 62.137627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119843, 31.882454, 62.262283>,  <33.429146, 31.736967, 62.470043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119843, 31.882454, 62.262283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411626, -0.335143, -0.847492,
		-0.482323, -0.869131, 0.109436,
		-0.773259, 0.363718, -0.519404,
		32.887863, 31.991570, 62.106461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115330, 31.148369, 61.933453>,  <33.429146, 31.736967, 62.470043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115330, 31.148369, 61.933453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985691, 31.498611, 61.790192>,  <32.907909, 31.708757, 61.704235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985691, 31.498611, 61.790192>,  <33.115330, 31.148369, 61.933453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985691, 31.498611, 61.790192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351038, -0.240249, -0.905016,
		-0.878484, -0.419037, -0.229507,
		-0.324096, 0.875608, -0.358153,
		32.888462, 31.761293, 61.682747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952835, 30.940495, 61.290970>,  <33.115330, 31.148369, 61.933453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952835, 30.940495, 61.290970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964134, 31.338758, 61.255497>,  <32.970913, 31.577717, 61.234215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964134, 31.338758, 61.255497>,  <32.952835, 30.940495, 61.290970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964134, 31.338758, 61.255497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316195, -0.093062, -0.944119,
		-0.948274, -0.001374, -0.317451,
		0.028246, 0.995659, -0.088683,
		32.972607, 31.637457, 61.228893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624050, 31.090874, 60.770596>,  <32.952835, 30.940495, 61.290970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624050, 31.090874, 60.770596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851696, 31.418055, 60.804203>,  <32.988285, 31.614363, 60.824368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851696, 31.418055, 60.804203>,  <32.624050, 31.090874, 60.770596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851696, 31.418055, 60.804203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173359, -0.019472, -0.984666,
		-0.803774, 0.574957, -0.152881,
		0.569117, 0.817952, 0.084023,
		33.022430, 31.663441, 60.829411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484104, 31.569725, 60.239460>,  <32.624050, 31.090874, 60.770596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484104, 31.569725, 60.239460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844791, 31.701899, 60.350975>,  <33.061203, 31.781202, 60.417885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844791, 31.701899, 60.350975>,  <32.484104, 31.569725, 60.239460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844791, 31.701899, 60.350975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297923, -0.007645, -0.954559,
		-0.313287, 0.943798, -0.105337,
		0.901717, 0.330434, 0.278784,
		33.115307, 31.801029, 60.434608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599236, 32.197441, 59.841949>,  <32.484104, 31.569725, 60.239460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599236, 32.197441, 59.841949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942081, 32.032917, 59.966000>,  <33.147789, 31.934202, 60.040432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942081, 32.032917, 59.966000>,  <32.599236, 32.197441, 59.841949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942081, 32.032917, 59.966000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230167, -0.232811, -0.944893,
		0.460846, 0.881262, -0.104876,
		0.857114, -0.411311, 0.310128,
		33.199215, 31.909523, 60.059036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187675, 32.453728, 59.484322>,  <32.599236, 32.197441, 59.841949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187675, 32.453728, 59.484322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308113, 32.092369, 59.606449>,  <33.380375, 31.875555, 59.679726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308113, 32.092369, 59.606449>,  <33.187675, 32.453728, 59.484322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308113, 32.092369, 59.606449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433311, -0.155597, -0.887711,
		0.849460, 0.399582, 0.344602,
		0.301095, -0.903395, 0.305317,
		33.398441, 31.821350, 59.698044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809742, 32.384144, 59.077961>,  <33.187675, 32.453728, 59.484322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809742, 32.384144, 59.077961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731644, 32.011559, 59.200768>,  <33.684784, 31.788008, 59.274452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731644, 32.011559, 59.200768>,  <33.809742, 32.384144, 59.077961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731644, 32.011559, 59.200768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345975, -0.358332, -0.867121,
		0.917703, -0.063084, 0.392226,
		-0.195248, -0.931461, 0.307017,
		33.673069, 31.732121, 59.292873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428303, 32.022205, 59.041130>,  <33.809742, 32.384144, 59.077961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428303, 32.022205, 59.041130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143066, 31.742327, 59.058689>,  <33.971924, 31.574400, 59.069225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143066, 31.742327, 59.058689>,  <34.428303, 32.022205, 59.041130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143066, 31.742327, 59.058689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316621, -0.377285, -0.870292,
		0.625503, -0.606696, 0.490577,
		-0.713090, -0.699697, 0.043900,
		33.929138, 31.532417, 59.071857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742332, 31.328840, 58.964790>,  <34.428303, 32.022205, 59.041130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742332, 31.328840, 58.964790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361946, 31.296398, 58.845402>,  <34.133713, 31.276932, 58.773769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361946, 31.296398, 58.845402>,  <34.742332, 31.328840, 58.964790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361946, 31.296398, 58.845402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297324, -0.505568, -0.809938,
		-0.085205, -0.858966, 0.504893,
		-0.950967, -0.081106, -0.298468,
		34.076656, 31.272066, 58.755863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781075, 30.674862, 58.729210>,  <34.742332, 31.328840, 58.964790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781075, 30.674862, 58.729210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446026, 30.827913, 58.573273>,  <34.244995, 30.919744, 58.479710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446026, 30.827913, 58.573273>,  <34.781075, 30.674862, 58.729210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446026, 30.827913, 58.573273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145025, -0.532298, -0.834043,
		-0.526630, -0.755158, 0.390381,
		-0.837633, 0.382616, -0.389840,
		34.194740, 30.942703, 58.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667355, 30.174271, 58.330009>,  <34.781075, 30.674862, 58.729210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667355, 30.174271, 58.330009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418373, 30.453112, 58.187687>,  <34.268982, 30.620417, 58.102295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418373, 30.453112, 58.187687>,  <34.667355, 30.174271, 58.330009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418373, 30.453112, 58.187687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065096, -0.406922, -0.911141,
		-0.779943, -0.590306, 0.207912,
		-0.622456, 0.697104, -0.355802,
		34.231636, 30.662243, 58.080948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275936, 29.856308, 57.860863>,  <34.667355, 30.174271, 58.330009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275936, 29.856308, 57.860863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202019, 30.227757, 57.732166>,  <34.157669, 30.450626, 57.654949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202019, 30.227757, 57.732166>,  <34.275936, 29.856308, 57.860863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202019, 30.227757, 57.732166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013208, -0.329695, -0.943995,
		-0.982690, -0.170190, 0.073189,
		-0.184789, 0.928621, -0.321740,
		34.146584, 30.506342, 57.635643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829147, 29.732876, 57.328636>,  <34.275936, 29.856308, 57.860863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829147, 29.732876, 57.328636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007946, 30.082434, 57.252216>,  <34.115227, 30.292168, 57.206364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007946, 30.082434, 57.252216>,  <33.829147, 29.732876, 57.328636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007946, 30.082434, 57.252216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001329, -0.212923, -0.977068,
		-0.894533, 0.437003, -0.094015,
		0.447000, 0.873894, -0.191048,
		34.142048, 30.344603, 57.194901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.063374, 33.588459, 51.466377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.966957, 33.965477, 51.558914>,  <47.909107, 34.191689, 51.614437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.966957, 33.965477, 51.558914>,  <48.063374, 33.588459, 51.466377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.966957, 33.965477, 51.558914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863183, -0.099241, -0.495042,
		-0.443639, -0.319012, 0.837506,
		-0.241039, 0.942540, 0.231338,
		47.894646, 34.248238, 51.628315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249950, 33.519405, 51.669022>,  <48.063374, 33.588459, 51.466377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249950, 33.519405, 51.669022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.346512, 33.900654, 51.596050>,  <47.404449, 34.129402, 51.552269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.346512, 33.900654, 51.596050>,  <47.249950, 33.519405, 51.669022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346512, 33.900654, 51.596050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876924, 0.133745, -0.461644,
		-0.415606, 0.271414, 0.868105,
		0.241401, 0.953125, -0.182424,
		47.418934, 34.186592, 51.541325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.659592, 33.902172, 51.898571>,  <47.249950, 33.519405, 51.669022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.659592, 33.902172, 51.898571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.856144, 34.124516, 51.630371>,  <46.974075, 34.257923, 51.469452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.856144, 34.124516, 51.630371>,  <46.659592, 33.902172, 51.898571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856144, 34.124516, 51.630371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865337, 0.224342, -0.448178,
		-0.098704, 0.800431, 0.591243,
		0.491376, 0.555861, -0.670498,
		47.003555, 34.291275, 51.429222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361210, 34.586685, 52.076897>,  <46.659592, 33.902172, 51.898571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361210, 34.586685, 52.076897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.502510, 34.539806, 51.705635>,  <46.587292, 34.511681, 51.482876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.502510, 34.539806, 51.705635>,  <46.361210, 34.586685, 52.076897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502510, 34.539806, 51.705635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929788, 0.065748, -0.362176,
		0.103470, 0.990930, -0.085743,
		0.353254, -0.117198, -0.928158,
		46.608486, 34.504646, 51.427189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862827, 35.043701, 51.708927>,  <46.361210, 34.586685, 52.076897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862827, 35.043701, 51.708927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.066349, 34.845634, 51.427238>,  <46.188461, 34.726795, 51.258224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.066349, 34.845634, 51.427238>,  <45.862827, 35.043701, 51.708927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066349, 34.845634, 51.427238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777004, 0.088061, -0.623306,
		0.370653, 0.864326, -0.339937,
		0.508804, -0.495163, -0.704225,
		46.218990, 34.697086, 51.215973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793331, 35.430458, 50.990749>,  <45.862827, 35.043701, 51.708927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793331, 35.430458, 50.990749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.870426, 35.048401, 50.900810>,  <45.916683, 34.819168, 50.846848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.870426, 35.048401, 50.900810>,  <45.793331, 35.430458, 50.990749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870426, 35.048401, 50.900810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795496, -0.017940, -0.605693,
		0.574489, 0.295603, -0.763270,
		0.192738, -0.955142, -0.224845,
		45.928249, 34.761860, 50.833355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689018, 35.440956, 50.328487>,  <45.793331, 35.430458, 50.990749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689018, 35.440956, 50.328487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.696869, 35.048359, 50.404682>,  <45.701580, 34.812801, 50.450401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.696869, 35.048359, 50.404682>,  <45.689018, 35.440956, 50.328487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696869, 35.048359, 50.404682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848798, -0.117039, -0.515601,
		0.528354, -0.151569, -0.835386,
		0.019624, -0.981493, 0.190489,
		45.702755, 34.753910, 50.461830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678322, 35.098690, 49.714352>,  <45.689018, 35.440956, 50.328487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678322, 35.098690, 49.714352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.534451, 34.861286, 50.002342>,  <45.448128, 34.718842, 50.175137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.534451, 34.861286, 50.002342>,  <45.678322, 35.098690, 49.714352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534451, 34.861286, 50.002342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886911, -0.022236, -0.461404,
		0.289859, -0.804518, -0.518395,
		-0.359681, -0.593512, 0.719981,
		45.426548, 34.683231, 50.218338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402229, 34.569004, 49.434010>,  <45.678322, 35.098690, 49.714352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402229, 34.569004, 49.434010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.217239, 34.561077, 49.788574>,  <45.106243, 34.556320, 50.001312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.217239, 34.561077, 49.788574>,  <45.402229, 34.569004, 49.434010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217239, 34.561077, 49.788574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886559, -0.002415, -0.462608,
		0.011340, -0.999799, -0.016512,
		-0.462476, -0.019885, 0.886409,
		45.078495, 34.555130, 50.054497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022133, 33.941872, 49.341751>,  <45.402229, 34.569004, 49.434010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022133, 33.941872, 49.341751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.847195, 34.162525, 49.625843>,  <44.742233, 34.294918, 49.796299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.847195, 34.162525, 49.625843>,  <45.022133, 33.941872, 49.341751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847195, 34.162525, 49.625843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880908, -0.103902, -0.461742,
		-0.180920, -0.827587, 0.531383,
		-0.437343, 0.551638, 0.710231,
		44.715992, 34.328014, 49.838913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437416, 33.543114, 49.561089>,  <45.022133, 33.941872, 49.341751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437416, 33.543114, 49.561089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.365082, 33.904095, 49.717487>,  <44.321682, 34.120682, 49.811325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.365082, 33.904095, 49.717487>,  <44.437416, 33.543114, 49.561089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365082, 33.904095, 49.717487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978745, -0.126024, -0.161791,
		-0.096733, -0.411945, 0.906060,
		-0.180834, 0.902452, 0.390998,
		44.310833, 34.174831, 49.834785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839981, 33.434994, 49.855526>,  <44.437416, 33.543114, 49.561089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839981, 33.434994, 49.855526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.849941, 33.834862, 49.858292>,  <43.855919, 34.074783, 49.859951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.849941, 33.834862, 49.858292>,  <43.839981, 33.434994, 49.855526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849941, 33.834862, 49.858292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997527, 0.025304, -0.065566,
		-0.065719, -0.005269, 0.997824,
		0.024904, 0.999666, 0.006918,
		43.857414, 34.134762, 49.860367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269222, 33.644707, 50.337688>,  <43.839981, 33.434994, 49.855526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269222, 33.644707, 50.337688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.353195, 33.964081, 50.111969>,  <43.403580, 34.155704, 49.976536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.353195, 33.964081, 50.111969>,  <43.269222, 33.644707, 50.337688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353195, 33.964081, 50.111969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977578, 0.161720, -0.134864,
		-0.016422, 0.579957, 0.814481,
		0.209934, 0.798433, -0.564298,
		43.416176, 34.203609, 49.942680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828964, 34.241798, 50.586159>,  <43.269222, 33.644707, 50.337688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828964, 34.241798, 50.586159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.923874, 34.301582, 50.202209>,  <42.980820, 34.337452, 49.971840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.923874, 34.301582, 50.202209>,  <42.828964, 34.241798, 50.586159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923874, 34.301582, 50.202209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901588, 0.401801, -0.160299,
		0.361722, 0.903448, 0.230085,
		0.237270, 0.149458, -0.959878,
		42.995056, 34.346420, 49.914246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477188, 34.799637, 50.415668>,  <42.828964, 34.241798, 50.586159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477188, 34.799637, 50.415668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.575317, 34.698547, 50.041298>,  <42.634193, 34.637894, 49.816677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.575317, 34.698547, 50.041298>,  <42.477188, 34.799637, 50.415668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575317, 34.698547, 50.041298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882026, 0.342451, -0.323663,
		0.402304, 0.904908, -0.138898,
		0.245319, -0.252722, -0.935922,
		42.648914, 34.622730, 49.760521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380733, 35.342113, 50.001530>,  <42.477188, 34.799637, 50.415668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380733, 35.342113, 50.001530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.355515, 35.037380, 49.743652>,  <42.340382, 34.854542, 49.588924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.355515, 35.037380, 49.743652>,  <42.380733, 35.342113, 50.001530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355515, 35.037380, 49.743652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787349, 0.434923, -0.436948,
		0.613275, 0.480052, -0.627251,
		-0.063048, -0.761835, -0.644696,
		42.336601, 34.808830, 49.550243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065277, 35.634022, 49.460125>,  <42.380733, 35.342113, 50.001530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065277, 35.634022, 49.460125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983345, 35.248100, 49.394154>,  <41.934185, 35.016548, 49.354568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.983345, 35.248100, 49.394154>,  <42.065277, 35.634022, 49.460125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983345, 35.248100, 49.394154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861074, 0.257737, -0.438318,
		0.465400, 0.052238, -0.883558,
		-0.204828, -0.964802, -0.164932,
		41.921898, 34.958660, 49.344673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689064, 35.595097, 48.737396>,  <42.065277, 35.634022, 49.460125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689064, 35.595097, 48.737396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.589405, 35.273422, 48.953251>,  <41.529610, 35.080418, 49.082764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.589405, 35.273422, 48.953251>,  <41.689064, 35.595097, 48.737396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589405, 35.273422, 48.953251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966003, 0.166651, -0.197652,
		0.069019, -0.570532, -0.818370,
		-0.249149, -0.804189, 0.539634,
		41.514660, 35.032166, 49.115139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142193, 35.278618, 48.358643>,  <41.689064, 35.595097, 48.737396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142193, 35.278618, 48.358643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.100750, 35.102444, 48.715355>,  <41.075886, 34.996738, 48.929382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.100750, 35.102444, 48.715355>,  <41.142193, 35.278618, 48.358643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100750, 35.102444, 48.715355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981618, -0.099209, -0.163043,
		0.160284, -0.892284, -0.422065,
		-0.103608, -0.440440, 0.891783,
		41.069668, 34.970310, 48.982891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690269, 34.630981, 48.258549>,  <41.142193, 35.278618, 48.358643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690269, 34.630981, 48.258549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.690781, 34.768559, 48.634144>,  <40.691086, 34.851105, 48.859501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.690781, 34.768559, 48.634144>,  <40.690269, 34.630981, 48.258549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690781, 34.768559, 48.634144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983332, -0.170294, 0.063710,
		0.181817, -0.923420, 0.337992,
		0.001273, 0.343941, 0.938990,
		40.691162, 34.871742, 48.915840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353241, 34.099224, 48.700596>,  <40.690269, 34.630981, 48.258549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353241, 34.099224, 48.700596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.309853, 34.455803, 48.876575>,  <40.283821, 34.669750, 48.982162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.309853, 34.455803, 48.876575>,  <40.353241, 34.099224, 48.700596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309853, 34.455803, 48.876575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950702, -0.222358, 0.216155,
		0.290516, -0.394810, 0.871623,
		-0.108472, 0.891450, 0.439945,
		40.277309, 34.723236, 49.008560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963737, 34.083447, 49.279057>,  <40.353241, 34.099224, 48.700596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963737, 34.083447, 49.279057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915901, 34.472359, 49.198681>,  <39.887199, 34.705704, 49.150455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.915901, 34.472359, 49.198681>,  <39.963737, 34.083447, 49.279057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915901, 34.472359, 49.198681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968284, -0.069498, 0.239993,
		0.219375, 0.223263, 0.949751,
		-0.119587, 0.972278, -0.200936,
		39.880024, 34.764042, 49.138401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384979, 34.078072, 48.674629>,  <39.963737, 34.083447, 49.279057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384979, 34.078072, 48.674629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535011, 34.153622, 48.311611>,  <39.625031, 34.198952, 48.093800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535011, 34.153622, 48.311611>,  <39.384979, 34.078072, 48.674629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535011, 34.153622, 48.311611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634217, -0.661744, -0.399831,
		-0.676082, 0.725550, -0.128417,
		0.375076, 0.188874, -0.907549,
		39.647533, 34.210285, 48.039345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815464, 33.923450, 48.153564>,  <39.384979, 34.078072, 48.674629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815464, 33.923450, 48.153564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179794, 33.885151, 47.992954>,  <39.398392, 33.862171, 47.896587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.179794, 33.885151, 47.992954>,  <38.815464, 33.923450, 48.153564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179794, 33.885151, 47.992954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358980, -0.663920, -0.656006,
		-0.203769, 0.741649, -0.639089,
		0.910830, -0.095747, -0.401523,
		39.453045, 33.856426, 47.872498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255325, 33.650078, 47.685036>,  <38.815464, 33.923450, 48.153564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255325, 33.650078, 47.685036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309475, 33.543465, 47.303326>,  <38.341965, 33.479496, 47.074299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309475, 33.543465, 47.303326>,  <38.255325, 33.650078, 47.685036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309475, 33.543465, 47.303326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943996, -0.327205, -0.042523,
		-0.300908, 0.906585, -0.295902,
		0.135371, -0.266535, -0.954271,
		38.350086, 33.463505, 47.017044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625195, 33.868954, 47.338333>,  <38.255325, 33.650078, 47.685036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625195, 33.868954, 47.338333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807125, 33.613041, 47.090519>,  <37.916283, 33.459496, 46.941830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.807125, 33.613041, 47.090519>,  <37.625195, 33.868954, 47.338333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807125, 33.613041, 47.090519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889798, -0.355640, -0.285971,
		-0.037371, 0.681323, -0.731028,
		0.454822, -0.639780, -0.619531,
		37.943573, 33.421108, 46.904659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315426, 33.994137, 46.702038>,  <37.625195, 33.868954, 47.338333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315426, 33.994137, 46.702038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489208, 33.638229, 46.646099>,  <37.593479, 33.424686, 46.612537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.489208, 33.638229, 46.646099>,  <37.315426, 33.994137, 46.702038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489208, 33.638229, 46.646099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875628, -0.380876, -0.296999,
		0.210998, 0.251485, -0.944582,
		0.434460, -0.889769, -0.139843,
		37.619545, 33.371300, 46.604145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200291, 33.833576, 46.083786>,  <37.315426, 33.994137, 46.702038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200291, 33.833576, 46.083786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263390, 33.477764, 46.255299>,  <37.301247, 33.264278, 46.358204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263390, 33.477764, 46.255299>,  <37.200291, 33.833576, 46.083786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263390, 33.477764, 46.255299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930712, -0.279031, -0.236468,
		0.329989, -0.361769, -0.871912,
		0.157744, -0.889531, 0.428780,
		37.310711, 33.210903, 46.383934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722610, 33.468540, 45.823009>,  <37.200291, 33.833576, 46.083786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722610, 33.468540, 45.823009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834431, 33.212257, 46.109043>,  <36.901524, 33.058487, 46.280663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834431, 33.212257, 46.109043>,  <36.722610, 33.468540, 45.823009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834431, 33.212257, 46.109043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899541, -0.435160, -0.038237,
		0.335674, -0.632557, -0.697993,
		0.279551, -0.640709, 0.715083,
		36.918297, 33.020046, 46.323566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817986, 32.828995, 45.475601>,  <36.722610, 33.468540, 45.823009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817986, 32.828995, 45.475601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717846, 32.776909, 45.859344>,  <36.657761, 32.745659, 46.089592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717846, 32.776909, 45.859344>,  <36.817986, 32.828995, 45.475601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717846, 32.776909, 45.859344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830989, -0.479547, -0.281942,
		0.496771, -0.867801, 0.011848,
		-0.250351, -0.130215, 0.959358,
		36.642742, 32.737843, 46.147152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438602, 32.097816, 45.475822>,  <36.817986, 32.828995, 45.475601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438602, 32.097816, 45.475822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347324, 32.299786, 45.808804>,  <36.292557, 32.420967, 46.008595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347324, 32.299786, 45.808804>,  <36.438602, 32.097816, 45.475822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347324, 32.299786, 45.808804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923348, -0.383413, -0.020557,
		0.308795, -0.773338, 0.553709,
		-0.228196, 0.504918, 0.832456,
		36.278866, 32.451260, 46.058540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048351, 31.637951, 45.859726>,  <36.438602, 32.097816, 45.475822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048351, 31.637951, 45.859726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957932, 31.969183, 46.064934>,  <35.903679, 32.167923, 46.188057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.957932, 31.969183, 46.064934>,  <36.048351, 31.637951, 45.859726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957932, 31.969183, 46.064934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967660, -0.251419, -0.020546,
		0.111969, -0.501070, 0.858133,
		-0.226046, 0.828080, 0.513017,
		35.890118, 32.217606, 46.218838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694500, 31.414598, 46.455612>,  <36.048351, 31.637951, 45.859726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694500, 31.414598, 46.455612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570244, 31.791225, 46.403526>,  <35.495689, 32.017200, 46.372272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.570244, 31.791225, 46.403526>,  <35.694500, 31.414598, 46.455612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570244, 31.791225, 46.403526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950432, -0.309623, 0.028486,
		-0.013497, 0.132613, 0.991076,
		-0.310638, 0.941566, -0.130218,
		35.477051, 32.073696, 46.364460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267689, 31.607418, 47.054539>,  <35.694500, 31.414598, 46.455612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267689, 31.607418, 47.054539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.163708, 31.827396, 46.737053>,  <35.101318, 31.959383, 46.546562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.163708, 31.827396, 46.737053>,  <35.267689, 31.607418, 47.054539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163708, 31.827396, 46.737053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961267, -0.225350, 0.158693,
		-0.091591, 0.804224, 0.587227,
		-0.259956, 0.549947, -0.793714,
		35.085720, 31.992380, 46.498940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769508, 31.956444, 47.247982>,  <35.267689, 31.607418, 47.054539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769508, 31.956444, 47.247982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.719578, 31.953415, 46.851124>,  <34.689617, 31.951597, 46.613007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.719578, 31.953415, 46.851124>,  <34.769508, 31.956444, 47.247982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719578, 31.953415, 46.851124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970876, -0.205167, 0.123719,
		-0.204493, 0.978698, 0.018260,
		-0.124829, -0.007572, -0.992149,
		34.682129, 31.951143, 46.553478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.694365, 31.162411, 51.909477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054836, 31.202559, 52.078144>,  <32.271118, 31.226646, 52.179344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.054836, 31.202559, 52.078144>,  <31.694365, 31.162411, 51.909477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054836, 31.202559, 52.078144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341548, 0.434542, -0.833378,
		-0.266877, 0.895042, 0.357320,
		0.901178, 0.100367, 0.421669,
		32.325191, 31.232668, 52.204643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887159, 31.820948, 51.722401>,  <31.694365, 31.162411, 51.909477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887159, 31.820948, 51.722401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236328, 31.660498, 51.833469>,  <32.445831, 31.564228, 51.900112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.236328, 31.660498, 51.833469>,  <31.887159, 31.820948, 51.722401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236328, 31.660498, 51.833469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424647, 0.344542, -0.837237,
		0.240166, 0.848758, 0.471095,
		0.872924, -0.401125, 0.277675,
		32.498207, 31.540159, 51.916771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424419, 32.307800, 51.782902>,  <31.887159, 31.820948, 51.722401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424419, 32.307800, 51.782902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.598793, 31.957232, 51.701065>,  <32.703415, 31.746891, 51.651962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.598793, 31.957232, 51.701065>,  <32.424419, 32.307800, 51.782902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598793, 31.957232, 51.701065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463526, 0.413501, -0.783684,
		0.771432, 0.246800, 0.586500,
		0.435932, -0.876417, -0.204589,
		32.729572, 31.694305, 51.639687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054878, 32.515640, 51.533936>,  <32.424419, 32.307800, 51.782902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054878, 32.515640, 51.533936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.036518, 32.137012, 51.406250>,  <33.025501, 31.909836, 51.329639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.036518, 32.137012, 51.406250>,  <33.054878, 32.515640, 51.533936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036518, 32.137012, 51.406250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526286, 0.248689, -0.813128,
		0.849068, -0.205321, 0.486752,
		-0.045902, -0.946571, -0.319212,
		33.022747, 31.853041, 51.310486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792206, 32.326897, 51.258686>,  <33.054878, 32.515640, 51.533936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792206, 32.326897, 51.258686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.537727, 32.065132, 51.095222>,  <33.385040, 31.908073, 50.997143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.537727, 32.065132, 51.095222>,  <33.792206, 32.326897, 51.258686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537727, 32.065132, 51.095222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486979, 0.070229, -0.870586,
		0.598421, -0.752870, 0.274005,
		-0.636195, -0.654411, -0.408658,
		33.346870, 31.868809, 50.972626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176720, 31.988503, 50.737057>,  <33.792206, 32.326897, 51.258686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176720, 31.988503, 50.737057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801254, 31.897329, 50.633549>,  <33.575977, 31.842625, 50.571445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.801254, 31.897329, 50.633549>,  <34.176720, 31.988503, 50.737057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801254, 31.897329, 50.633549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253395, 0.053058, -0.965907,
		0.233894, -0.972230, 0.007954,
		-0.938661, -0.227935, -0.258768,
		33.519657, 31.828949, 50.555920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192368, 31.406342, 50.308907>,  <34.176720, 31.988503, 50.737057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192368, 31.406342, 50.308907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850887, 31.600691, 50.233952>,  <33.646000, 31.717300, 50.188980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.850887, 31.600691, 50.233952>,  <34.192368, 31.406342, 50.308907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850887, 31.600691, 50.233952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231415, 0.031603, -0.972342,
		-0.466515, -0.873457, -0.139419,
		-0.853704, 0.485875, -0.187388,
		33.594776, 31.746454, 50.177734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033829, 31.005379, 49.694221>,  <34.192368, 31.406342, 50.308907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033829, 31.005379, 49.694221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829987, 31.349024, 49.713097>,  <33.707680, 31.555210, 49.724422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829987, 31.349024, 49.713097>,  <34.033829, 31.005379, 49.694221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829987, 31.349024, 49.713097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194246, 0.168304, -0.966407,
		-0.838192, -0.483324, -0.252648,
		-0.509610, 0.859110, 0.047187,
		33.677105, 31.606756, 49.727253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534996, 30.969566, 49.098373>,  <34.033829, 31.005379, 49.694221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534996, 30.969566, 49.098373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586338, 31.348639, 49.215286>,  <33.617142, 31.576082, 49.285435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586338, 31.348639, 49.215286>,  <33.534996, 30.969566, 49.098373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586338, 31.348639, 49.215286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154967, 0.271931, -0.949757,
		-0.979546, 0.167201, -0.111955,
		0.128357, 0.947680, 0.292280,
		33.624844, 31.632942, 49.302971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130329, 31.206598, 48.600750>,  <33.534996, 30.969566, 49.098373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130329, 31.206598, 48.600750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340439, 31.511152, 48.752743>,  <33.466503, 31.693884, 48.843937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340439, 31.511152, 48.752743>,  <33.130329, 31.206598, 48.600750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340439, 31.511152, 48.752743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237689, 0.297486, -0.924665,
		-0.817064, 0.576017, -0.024712,
		0.525271, 0.761385, 0.379978,
		33.498020, 31.739567, 48.866737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778896, 31.856066, 48.335995>,  <33.130329, 31.206598, 48.600750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778896, 31.856066, 48.335995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169601, 31.877558, 48.418991>,  <33.404022, 31.890453, 48.468788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169601, 31.877558, 48.418991>,  <32.778896, 31.856066, 48.335995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169601, 31.877558, 48.418991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187296, 0.256693, -0.948171,
		-0.104207, 0.964998, 0.240664,
		0.976761, 0.053731, 0.207489,
		33.462631, 31.893677, 48.481239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954723, 32.456226, 48.046429>,  <32.778896, 31.856066, 48.335995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954723, 32.456226, 48.046429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293354, 32.244507, 48.068859>,  <33.496532, 32.117474, 48.082317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293354, 32.244507, 48.068859>,  <32.954723, 32.456226, 48.046429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293354, 32.244507, 48.068859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180979, 0.187173, -0.965512,
		0.500550, 0.827531, 0.254249,
		0.846579, -0.529301, 0.056076,
		33.547329, 32.085716, 48.085682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481598, 32.820694, 48.417095>,  <32.954723, 32.456226, 48.046429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481598, 32.820694, 48.417095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421127, 32.480782, 48.619091>,  <32.384846, 32.276833, 48.740288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.421127, 32.480782, 48.619091>,  <32.481598, 32.820694, 48.417095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421127, 32.480782, 48.619091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652943, 0.469396, 0.594418,
		-0.742167, -0.239868, -0.625821,
		-0.151176, -0.849783, 0.504990,
		32.375774, 32.225845, 48.770588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196545, 32.669563, 47.709644>,  <32.481598, 32.820694, 48.417095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196545, 32.669563, 47.709644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156635, 32.998665, 47.485817>,  <32.132690, 33.196125, 47.351521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.156635, 32.998665, 47.485817>,  <32.196545, 32.669563, 47.709644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156635, 32.998665, 47.485817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806860, 0.262186, 0.529372,
		0.582256, 0.504311, 0.637690,
		-0.099775, 0.822757, -0.559568,
		32.126701, 33.245491, 47.317947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064873, 33.299965, 48.064034>,  <32.196545, 32.669563, 47.709644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064873, 33.299965, 48.064034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938324, 33.430305, 47.707668>,  <31.862394, 33.508511, 47.493847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938324, 33.430305, 47.707668>,  <32.064873, 33.299965, 48.064034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938324, 33.430305, 47.707668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819897, 0.378462, 0.429576,
		0.477154, 0.866366, 0.147426,
		-0.316375, 0.325848, -0.890915,
		31.843412, 33.528061, 47.440395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835320, 34.116558, 48.086514>,  <32.064873, 33.299965, 48.064034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835320, 34.116558, 48.086514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.628632, 33.979343, 47.772743>,  <31.504620, 33.897015, 47.584480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.628632, 33.979343, 47.772743>,  <31.835320, 34.116558, 48.086514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628632, 33.979343, 47.772743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809132, 0.495128, 0.316469,
		0.279834, 0.798233, -0.533402,
		-0.516718, -0.343034, -0.784430,
		31.473616, 33.876434, 47.537415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481213, 34.678967, 47.923138>,  <31.835320, 34.116558, 48.086514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481213, 34.678967, 47.923138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281250, 34.368092, 47.770260>,  <31.161272, 34.181564, 47.678535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.281250, 34.368092, 47.770260>,  <31.481213, 34.678967, 47.923138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281250, 34.368092, 47.770260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865227, 0.428591, 0.260176,
		-0.038403, 0.460745, -0.886701,
		-0.499907, -0.777190, -0.382190,
		31.131277, 34.134933, 47.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011559, 34.912094, 47.474998>,  <31.481213, 34.678967, 47.923138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011559, 34.912094, 47.474998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882448, 34.553772, 47.597206>,  <30.804983, 34.338779, 47.670532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882448, 34.553772, 47.597206>,  <31.011559, 34.912094, 47.474998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882448, 34.553772, 47.597206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770465, 0.436170, 0.464909,
		-0.549728, -0.085330, -0.830974,
		-0.322775, -0.895810, 0.305518,
		30.785616, 34.285030, 47.688862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281590, 35.016399, 47.470688>,  <31.011559, 34.912094, 47.474998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281590, 35.016399, 47.470688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.345610, 34.687332, 47.688896>,  <30.384022, 34.489891, 47.819820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.345610, 34.687332, 47.688896>,  <30.281590, 35.016399, 47.470688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345610, 34.687332, 47.688896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588065, 0.364407, 0.722071,
		-0.792820, -0.436371, -0.425461,
		0.160050, -0.822672, 0.545523,
		30.393625, 34.440529, 47.852554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617062, 34.716049, 47.743702>,  <30.281590, 35.016399, 47.470688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617062, 34.716049, 47.743702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.908474, 34.625519, 48.002319>,  <30.083321, 34.571201, 48.157490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.908474, 34.625519, 48.002319>,  <29.617062, 34.716049, 47.743702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908474, 34.625519, 48.002319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564096, 0.337265, 0.753690,
		-0.388638, -0.913799, 0.118037,
		0.728530, -0.226328, 0.646544,
		30.127033, 34.557621, 48.196281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217030, 34.408207, 48.194611>,  <29.617062, 34.716049, 47.743702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217030, 34.408207, 48.194611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.561285, 34.481514, 48.384651>,  <29.767838, 34.525497, 48.498676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.561285, 34.481514, 48.384651>,  <29.217030, 34.408207, 48.194611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561285, 34.481514, 48.384651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509112, 0.328863, 0.795395,
		-0.010474, -0.926425, 0.376334,
		0.860636, 0.183265, 0.475098,
		29.819475, 34.536491, 48.527180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141026, 34.171955, 48.786793>,  <29.217030, 34.408207, 48.194611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141026, 34.171955, 48.786793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.464458, 34.395672, 48.859882>,  <29.658518, 34.529903, 48.903736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.464458, 34.395672, 48.859882>,  <29.141026, 34.171955, 48.786793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464458, 34.395672, 48.859882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421584, 0.334085, 0.843003,
		0.410445, -0.758667, 0.505925,
		0.808580, 0.559296, 0.182718,
		29.707033, 34.563461, 48.914700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275042, 34.044945, 49.482422>,  <29.141026, 34.171955, 48.786793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275042, 34.044945, 49.482422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.490231, 34.367771, 49.385075>,  <29.619343, 34.561466, 49.326668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.490231, 34.367771, 49.385075>,  <29.275042, 34.044945, 49.482422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490231, 34.367771, 49.385075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259612, 0.433298, 0.863049,
		0.801990, -0.401115, 0.442627,
		0.537971, 0.807069, -0.243367,
		29.651623, 34.609890, 49.312065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812885, 34.017300, 49.921688>,  <29.275042, 34.044945, 49.482422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812885, 34.017300, 49.921688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740158, 34.388618, 49.791946>,  <29.696522, 34.611412, 49.714104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740158, 34.388618, 49.791946>,  <29.812885, 34.017300, 49.921688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740158, 34.388618, 49.791946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032932, 0.335412, 0.941496,
		0.982780, 0.160502, -0.091556,
		-0.181820, 0.928298, -0.324350,
		29.685612, 34.667107, 49.694641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299353, 34.483696, 50.299267>,  <29.812885, 34.017300, 49.921688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299353, 34.483696, 50.299267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.002274, 34.729591, 50.193062>,  <29.824026, 34.877129, 50.129337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.002274, 34.729591, 50.193062>,  <30.299353, 34.483696, 50.299267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002274, 34.729591, 50.193062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087469, 0.304051, 0.948632,
		0.663888, 0.727772, -0.172048,
		-0.742699, 0.614736, -0.265514,
		29.779465, 34.914013, 50.113407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478012, 35.086529, 50.451126>,  <30.299353, 34.483696, 50.299267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478012, 35.086529, 50.451126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080778, 35.128742, 50.430569>,  <29.842438, 35.154072, 50.418236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.080778, 35.128742, 50.430569>,  <30.478012, 35.086529, 50.451126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080778, 35.128742, 50.430569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020621, 0.274154, 0.961465,
		0.115559, 0.955877, -0.270083,
		-0.993087, 0.105537, -0.051392,
		29.782852, 35.160404, 50.415150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369867, 35.658607, 50.814838>,  <30.478012, 35.086529, 50.451126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369867, 35.658607, 50.814838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009256, 35.485802, 50.804989>,  <29.792889, 35.382118, 50.799080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009256, 35.485802, 50.804989>,  <30.369867, 35.658607, 50.814838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009256, 35.485802, 50.804989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191217, 0.346691, 0.918282,
		-0.388177, 0.832566, -0.395161,
		-0.901529, -0.432017, -0.024624,
		29.738798, 35.356197, 50.797604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897350, 36.161106, 51.160221>,  <30.369867, 35.658607, 50.814838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897350, 36.161106, 51.160221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690960, 35.820732, 51.199562>,  <29.567125, 35.616508, 51.223167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690960, 35.820732, 51.199562>,  <29.897350, 36.161106, 51.160221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690960, 35.820732, 51.199562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048172, 0.143464, 0.988483,
		-0.855249, 0.505293, -0.115015,
		-0.515974, -0.850939, 0.098357,
		29.536167, 35.565449, 51.229069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151846, 36.876137, 51.080215>,  <29.897350, 36.161106, 51.160221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151846, 36.876137, 51.080215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405132, 36.994888, 51.366127>,  <30.557104, 37.066139, 51.537674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.405132, 36.994888, 51.366127>,  <30.151846, 36.876137, 51.080215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405132, 36.994888, 51.366127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738351, 0.045252, -0.672897,
		-0.232112, 0.953843, -0.190544,
		0.633215, 0.296876, 0.714775,
		30.595097, 37.083950, 51.580559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544409, 37.415638, 50.773865>,  <30.151846, 36.876137, 51.080215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544409, 37.415638, 50.773865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768272, 37.288960, 51.080193>,  <30.902592, 37.212952, 51.263988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768272, 37.288960, 51.080193>,  <30.544409, 37.415638, 50.773865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768272, 37.288960, 51.080193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819126, 0.071181, -0.569180,
		0.125747, 0.945852, 0.299253,
		0.559661, -0.316699, 0.765821,
		30.936171, 37.193951, 51.309940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954119, 38.001339, 50.984615>,  <30.544409, 37.415638, 50.773865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954119, 38.001339, 50.984615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135017, 37.670784, 51.118813>,  <31.243557, 37.472450, 51.199329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.135017, 37.670784, 51.118813>,  <30.954119, 38.001339, 50.984615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135017, 37.670784, 51.118813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743272, 0.141299, -0.653897,
		0.492969, 0.545083, 0.678134,
		0.452248, -0.826389, 0.335489,
		31.270691, 37.422867, 51.219460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677042, 38.216297, 51.201649>,  <30.954119, 38.001339, 50.984615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677042, 38.216297, 51.201649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633858, 37.826176, 51.124569>,  <31.607948, 37.592102, 51.078320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.633858, 37.826176, 51.124569>,  <31.677042, 38.216297, 51.201649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633858, 37.826176, 51.124569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704037, 0.061849, -0.707465,
		0.701909, -0.212046, 0.679971,
		-0.107959, -0.975301, -0.192701,
		31.601471, 37.533585, 51.066757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301563, 37.910740, 51.315273>,  <31.677042, 38.216297, 51.201649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301563, 37.910740, 51.315273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.124432, 37.643860, 51.075691>,  <32.018154, 37.483730, 50.931942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.124432, 37.643860, 51.075691>,  <32.301563, 37.910740, 51.315273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124432, 37.643860, 51.075691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782906, 0.037850, -0.620987,
		0.436993, -0.743916, 0.505594,
		-0.442826, -0.667200, -0.598957,
		31.991583, 37.443699, 50.896004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830559, 37.338028, 51.235733>,  <32.301563, 37.910740, 51.315273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830559, 37.338028, 51.235733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.567753, 37.309582, 50.935524>,  <32.410069, 37.292515, 50.755398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.567753, 37.309582, 50.935524>,  <32.830559, 37.338028, 51.235733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567753, 37.309582, 50.935524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753658, -0.086222, -0.651587,
		-0.018373, -0.993734, 0.110247,
		-0.657010, -0.071117, -0.750520,
		32.370651, 37.288246, 50.710369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099670, 36.842052, 50.835861>,  <32.830559, 37.338028, 51.235733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099670, 36.842052, 50.835861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865437, 37.000862, 50.553169>,  <32.724895, 37.096149, 50.383556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.865437, 37.000862, 50.553169>,  <33.099670, 36.842052, 50.835861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865437, 37.000862, 50.553169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713757, -0.160732, -0.681702,
		-0.384247, -0.903624, -0.189259,
		-0.585582, 0.397026, -0.706728,
		32.689762, 37.119968, 50.341152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159084, 36.428535, 50.259331>,  <33.099670, 36.842052, 50.835861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159084, 36.428535, 50.259331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033112, 36.771996, 50.097572>,  <32.957527, 36.978073, 50.000519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.033112, 36.771996, 50.097572>,  <33.159084, 36.428535, 50.259331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033112, 36.771996, 50.097572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680331, -0.092858, -0.726999,
		-0.661790, -0.504077, -0.554923,
		-0.314935, 0.858652, -0.404391,
		32.938633, 37.029591, 49.976254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173622, 36.354664, 49.535206>,  <33.159084, 36.428535, 50.259331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173622, 36.354664, 49.535206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148880, 36.753777, 49.545010>,  <33.134033, 36.993244, 49.550892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148880, 36.753777, 49.545010>,  <33.173622, 36.354664, 49.535206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148880, 36.753777, 49.545010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713772, 0.061384, -0.697683,
		-0.697641, -0.025663, -0.715988,
		-0.061855, 0.997784, 0.024506,
		33.130325, 37.053112, 49.552361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071423, 36.606274, 48.799202>,  <33.173622, 36.354664, 49.535206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071423, 36.606274, 48.799202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.211533, 36.924335, 48.997204>,  <33.295597, 37.115173, 49.116005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.211533, 36.924335, 48.997204>,  <33.071423, 36.606274, 48.799202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211533, 36.924335, 48.997204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757547, 0.070305, -0.648983,
		-0.550845, 0.602315, -0.577743,
		0.350274, 0.795157, 0.495009,
		33.316616, 37.162884, 49.145706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307262, 37.079540, 48.272820>,  <33.071423, 36.606274, 48.799202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307262, 37.079540, 48.272820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477486, 37.262669, 48.585049>,  <33.579620, 37.372547, 48.772388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477486, 37.262669, 48.585049>,  <33.307262, 37.079540, 48.272820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477486, 37.262669, 48.585049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696784, 0.384603, -0.605453,
		-0.577402, 0.801547, -0.155333,
		0.425558, 0.457823, 0.780576,
		33.605152, 37.400017, 48.819221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405262, 37.766510, 48.148823>,  <33.307262, 37.079540, 48.272820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405262, 37.766510, 48.148823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.667538, 37.683949, 48.439331>,  <33.824902, 37.634411, 48.613636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.667538, 37.683949, 48.439331>,  <33.405262, 37.766510, 48.148823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667538, 37.683949, 48.439331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754850, 0.158040, -0.636573,
		0.016611, 0.965620, 0.259428,
		0.655687, -0.206403, 0.726273,
		33.864243, 37.622028, 48.657211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.088219, 37.045643, 57.244003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722330, 37.206947, 57.233727>,  <30.502796, 37.303730, 57.227558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.722330, 37.206947, 57.233727>,  <31.088219, 37.045643, 57.244003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722330, 37.206947, 57.233727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042846, 0.033565, -0.998518,
		-0.401803, -0.914468, -0.047981,
		-0.914723, 0.403263, -0.025694,
		30.447912, 37.327927, 57.226017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735636, 36.643055, 56.731491>,  <31.088219, 37.045643, 57.244003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735636, 36.643055, 56.731491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580923, 37.010277, 56.766296>,  <30.488096, 37.230610, 56.787178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.580923, 37.010277, 56.766296>,  <30.735636, 36.643055, 56.731491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580923, 37.010277, 56.766296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053111, 0.072022, -0.995988,
		-0.920640, -0.389851, 0.020902,
		-0.386782, 0.918057, 0.087012,
		30.464888, 37.285694, 56.792400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096798, 36.665234, 56.257492>,  <30.735636, 36.643055, 56.731491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096798, 36.665234, 56.257492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229837, 37.034691, 56.333652>,  <30.309662, 37.256367, 56.379349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229837, 37.034691, 56.333652>,  <30.096798, 36.665234, 56.257492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229837, 37.034691, 56.333652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240065, 0.278168, -0.930049,
		-0.912002, 0.263624, 0.314254,
		0.332598, 0.923648, 0.190403,
		30.329617, 37.311787, 56.390774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542788, 37.111221, 56.005764>,  <30.096798, 36.665234, 56.257492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542788, 37.111221, 56.005764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.873869, 37.335098, 56.021996>,  <30.072517, 37.469425, 56.031734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.873869, 37.335098, 56.021996>,  <29.542788, 37.111221, 56.005764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873869, 37.335098, 56.021996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134778, 0.268475, -0.953811,
		-0.544739, 0.784004, 0.297653,
		0.827704, 0.559695, 0.040582,
		30.122181, 37.503006, 56.034168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209789, 37.678890, 55.823509>,  <29.542788, 37.111221, 56.005764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209789, 37.678890, 55.823509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599998, 37.737473, 55.757893>,  <29.834124, 37.772621, 55.718525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599998, 37.737473, 55.757893>,  <29.209789, 37.678890, 55.823509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599998, 37.737473, 55.757893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204691, 0.332138, -0.920753,
		-0.080364, 0.931792, 0.353985,
		0.975522, 0.146452, -0.164037,
		29.892654, 37.781406, 55.708683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270618, 38.339264, 55.411671>,  <29.209789, 37.678890, 55.823509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270618, 38.339264, 55.411671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594101, 38.115505, 55.338936>,  <29.788191, 37.981251, 55.295296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.594101, 38.115505, 55.338936>,  <29.270618, 38.339264, 55.411671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594101, 38.115505, 55.338936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112111, 0.156890, -0.981232,
		0.577428, 0.813917, 0.064164,
		0.808708, -0.559397, -0.181842,
		29.836714, 37.947685, 55.284382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661358, 38.673485, 54.817501>,  <29.270618, 38.339264, 55.411671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661358, 38.673485, 54.817501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.846613, 38.319839, 54.842304>,  <29.957766, 38.107651, 54.857185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.846613, 38.319839, 54.842304>,  <29.661358, 38.673485, 54.817501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846613, 38.319839, 54.842304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159710, 0.014440, -0.987058,
		0.871777, 0.467047, 0.147889,
		0.463139, -0.884114, 0.062004,
		29.985554, 38.054604, 54.860905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241283, 38.684067, 54.360691>,  <29.661358, 38.673485, 54.817501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241283, 38.684067, 54.360691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173426, 38.292267, 54.404144>,  <30.132711, 38.057186, 54.430214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173426, 38.292267, 54.404144>,  <30.241283, 38.684067, 54.360691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173426, 38.292267, 54.404144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147961, -0.134291, -0.979833,
		0.974335, -0.150149, 0.167709,
		-0.169642, -0.979501, 0.108628,
		30.122534, 37.998417, 54.436733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662291, 38.417538, 53.890572>,  <30.241283, 38.684067, 54.360691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662291, 38.417538, 53.890572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396782, 38.133564, 53.984722>,  <30.237476, 37.963181, 54.041210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396782, 38.133564, 53.984722>,  <30.662291, 38.417538, 53.890572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396782, 38.133564, 53.984722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004476, -0.318464, -0.947924,
		0.747921, -0.628153, 0.214566,
		-0.663773, -0.709932, 0.235374,
		30.197651, 37.920586, 54.055336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068008, 37.807781, 53.701244>,  <30.662291, 38.417538, 53.890572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068008, 37.807781, 53.701244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.679651, 37.712326, 53.709431>,  <30.446636, 37.655052, 53.714344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.679651, 37.712326, 53.709431>,  <31.068008, 37.807781, 53.701244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679651, 37.712326, 53.709431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137864, -0.626670, -0.766993,
		0.195862, -0.741846, 0.641329,
		-0.970892, -0.238641, 0.020467,
		30.388384, 37.640736, 53.715572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017094, 37.121727, 53.605694>,  <31.068008, 37.807781, 53.701244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017094, 37.121727, 53.605694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665882, 37.266323, 53.480228>,  <30.455154, 37.353081, 53.404949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665882, 37.266323, 53.480228>,  <31.017094, 37.121727, 53.605694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665882, 37.266323, 53.480228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111378, -0.483053, -0.868479,
		-0.465450, -0.797492, 0.383878,
		-0.878038, 0.361478, -0.313660,
		30.402473, 37.374771, 53.386127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723804, 36.555511, 53.326881>,  <31.017094, 37.121727, 53.605694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723804, 36.555511, 53.326881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511860, 36.860596, 53.178543>,  <30.384693, 37.043644, 53.089539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.511860, 36.860596, 53.178543>,  <30.723804, 36.555511, 53.326881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511860, 36.860596, 53.178543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095005, -0.381142, -0.919622,
		-0.842747, -0.522503, 0.129491,
		-0.529860, 0.762706, -0.370847,
		30.352901, 37.089409, 53.067287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537525, 36.295940, 52.758293>,  <30.723804, 36.555511, 53.326881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537525, 36.295940, 52.758293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419487, 36.667763, 52.669899>,  <30.348663, 36.890858, 52.616863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419487, 36.667763, 52.669899>,  <30.537525, 36.295940, 52.758293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419487, 36.667763, 52.669899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269231, -0.141019, -0.952695,
		-0.916751, -0.340634, -0.208652,
		-0.295097, 0.929560, -0.220988,
		30.330957, 36.946632, 52.603603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961836, 36.327484, 52.200115>,  <30.537525, 36.295940, 52.758293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961836, 36.327484, 52.200115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218954, 36.633705, 52.211040>,  <30.373224, 36.817436, 52.217594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.218954, 36.633705, 52.211040>,  <29.961836, 36.327484, 52.200115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218954, 36.633705, 52.211040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297051, -0.216238, -0.930055,
		-0.706100, 0.605946, -0.366404,
		0.642793, 0.765553, 0.027311,
		30.411793, 36.863373, 52.219234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359369, 36.338993, 51.699821>,  <29.961836, 36.327484, 52.200115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359369, 36.338993, 51.699821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384031, 35.939774, 51.703682>,  <29.398829, 35.700241, 51.705997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384031, 35.939774, 51.703682>,  <29.359369, 36.338993, 51.699821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384031, 35.939774, 51.703682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109513, 0.002842, 0.993981,
		-0.992071, -0.062340, -0.109124,
		0.061655, -0.998051, 0.009647,
		29.402529, 35.640358, 51.706577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881989, 36.125000, 52.183189>,  <29.359369, 36.338993, 51.699821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881989, 36.125000, 52.183189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103285, 35.793941, 52.145390>,  <29.236063, 35.595306, 52.122707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103285, 35.793941, 52.145390>,  <28.881989, 36.125000, 52.183189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103285, 35.793941, 52.145390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208115, -0.247174, 0.946358,
		-0.806607, -0.503894, -0.308991,
		0.553238, -0.827645, -0.094504,
		29.269257, 35.545647, 52.117039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487474, 35.545300, 52.381596>,  <28.881989, 36.125000, 52.183189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487474, 35.545300, 52.381596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846600, 35.369602, 52.368958>,  <29.062075, 35.264183, 52.361374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.846600, 35.369602, 52.368958>,  <28.487474, 35.545300, 52.381596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846600, 35.369602, 52.368958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106356, -0.285891, 0.952342,
		-0.427339, -0.851666, -0.303393,
		0.897814, -0.439240, -0.031593,
		29.115944, 35.237831, 52.359478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478085, 34.920670, 52.751122>,  <28.487474, 35.545300, 52.381596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478085, 34.920670, 52.751122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.873268, 34.982445, 52.754738>,  <29.110378, 35.019508, 52.756908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.873268, 34.982445, 52.754738>,  <28.478085, 34.920670, 52.751122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873268, 34.982445, 52.754738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028920, -0.241761, 0.969905,
		0.151977, -0.957967, -0.243317,
		0.987960, 0.154440, 0.009038,
		29.169657, 35.028778, 52.757450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718279, 34.449471, 53.097591>,  <28.478085, 34.920670, 52.751122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718279, 34.449471, 53.097591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029194, 34.695354, 53.151180>,  <29.215744, 34.842884, 53.183334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029194, 34.695354, 53.151180>,  <28.718279, 34.449471, 53.097591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029194, 34.695354, 53.151180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091319, -0.100452, 0.990742,
		0.622481, -0.782327, -0.021945,
		0.777289, 0.614714, 0.133971,
		29.262381, 34.879768, 53.191372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296770, 34.130707, 53.460388>,  <28.718279, 34.449471, 53.097591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296770, 34.130707, 53.460388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392923, 34.514313, 53.520393>,  <29.450615, 34.744476, 53.556396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392923, 34.514313, 53.520393>,  <29.296770, 34.130707, 53.460388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392923, 34.514313, 53.520393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047578, -0.166000, 0.984977,
		0.969512, -0.229633, -0.085531,
		0.240381, 0.959016, 0.150013,
		29.465038, 34.802017, 53.565399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842037, 34.066277, 53.860584>,  <29.296770, 34.130707, 53.460388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842037, 34.066277, 53.860584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730965, 34.448929, 53.895786>,  <29.664322, 34.678520, 53.916908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730965, 34.448929, 53.895786>,  <29.842037, 34.066277, 53.860584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730965, 34.448929, 53.895786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020517, -0.085677, 0.996112,
		0.960454, 0.278406, 0.004163,
		-0.277681, 0.956634, 0.088001,
		29.647661, 34.735920, 53.922188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308603, 34.432655, 54.245949>,  <29.842037, 34.066277, 53.860584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308603, 34.432655, 54.245949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962322, 34.628292, 54.288559>,  <29.754553, 34.745674, 54.314125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962322, 34.628292, 54.288559>,  <30.308603, 34.432655, 54.245949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962322, 34.628292, 54.288559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078782, -0.077021, 0.993912,
		0.494321, 0.868824, 0.028145,
		-0.865702, 0.489094, 0.106521,
		29.702612, 34.775021, 54.320515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314104, 34.828915, 54.924492>,  <30.308603, 34.432655, 54.245949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314104, 34.828915, 54.924492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.922016, 34.870602, 54.857197>,  <29.686764, 34.895615, 54.816818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.922016, 34.870602, 54.857197>,  <30.314104, 34.828915, 54.924492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922016, 34.870602, 54.857197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175940, -0.069654, 0.981934,
		0.090618, 0.992112, 0.086612,
		-0.980221, 0.104219, -0.168240,
		29.627951, 34.901867, 54.806725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142607, 35.336330, 55.388752>,  <30.314104, 34.828915, 54.924492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142607, 35.336330, 55.388752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809818, 35.136280, 55.292671>,  <29.610146, 35.016251, 55.235023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809818, 35.136280, 55.292671>,  <30.142607, 35.336330, 55.388752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809818, 35.136280, 55.292671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226915, -0.088348, 0.969899,
		-0.506294, 0.861434, -0.039983,
		-0.831971, -0.500127, -0.240202,
		29.560226, 34.986240, 55.220612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620853, 35.662285, 55.874722>,  <30.142607, 35.336330, 55.388752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620853, 35.662285, 55.874722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514931, 35.300591, 55.740719>,  <29.451378, 35.083572, 55.660316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.514931, 35.300591, 55.740719>,  <29.620853, 35.662285, 55.874722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514931, 35.300591, 55.740719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438737, -0.196388, 0.876893,
		-0.858712, 0.379186, -0.344719,
		-0.264807, -0.904240, -0.335004,
		29.435488, 35.029320, 55.640217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852032, 35.523598, 56.093689>,  <29.620853, 35.662285, 55.874722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852032, 35.523598, 56.093689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028244, 35.174305, 56.010357>,  <29.133970, 34.964729, 55.960358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.028244, 35.174305, 56.010357>,  <28.852032, 35.523598, 56.093689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028244, 35.174305, 56.010357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430226, -0.409032, 0.804735,
		-0.787934, -0.264879, -0.555877,
		0.440529, -0.873231, -0.208333,
		29.160402, 34.912334, 55.947857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364794, 35.106243, 56.131840>,  <28.852032, 35.523598, 56.093689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364794, 35.106243, 56.131840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664804, 34.843792, 56.165215>,  <28.844810, 34.686321, 56.185238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664804, 34.843792, 56.165215>,  <28.364794, 35.106243, 56.131840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664804, 34.843792, 56.165215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403240, -0.353620, 0.844009,
		-0.524269, -0.666674, -0.529799,
		0.750026, -0.656124, 0.083438,
		28.889812, 34.646954, 56.190247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151463, 34.363277, 56.244545>,  <28.364794, 35.106243, 56.131840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151463, 34.363277, 56.244545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.524258, 34.347755, 56.388710>,  <28.747934, 34.338440, 56.475208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.524258, 34.347755, 56.388710>,  <28.151463, 34.363277, 56.244545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524258, 34.347755, 56.388710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341621, -0.426541, 0.837471,
		0.121229, -0.903635, -0.410788,
		0.931987, -0.038808, 0.360409,
		28.803854, 34.336113, 56.496834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.892036, 33.937202, 58.724613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528992, 34.020248, 58.578663>,  <35.311165, 34.070076, 58.491093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.528992, 34.020248, 58.578663>,  <35.892036, 33.937202, 58.724613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528992, 34.020248, 58.578663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242086, -0.451256, -0.858931,
		-0.342979, -0.867908, 0.359305,
		-0.907612, 0.207613, -0.364880,
		35.256706, 34.082531, 58.469200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641243, 33.342735, 58.334251>,  <35.892036, 33.937202, 58.724613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641243, 33.342735, 58.334251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426666, 33.643162, 58.180302>,  <35.297920, 33.823418, 58.087933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426666, 33.643162, 58.180302>,  <35.641243, 33.342735, 58.334251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426666, 33.643162, 58.180302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092480, -0.400983, -0.911406,
		-0.838854, -0.524510, 0.145646,
		-0.536443, 0.751067, -0.384873,
		35.265732, 33.868481, 58.064838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086632, 33.034859, 57.930553>,  <35.641243, 33.342735, 58.334251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086632, 33.034859, 57.930553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127232, 33.403549, 57.780827>,  <35.151592, 33.624763, 57.690990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127232, 33.403549, 57.780827>,  <35.086632, 33.034859, 57.930553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127232, 33.403549, 57.780827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143416, -0.385889, -0.911329,
		-0.984444, 0.038818, -0.171359,
		0.101501, 0.921728, -0.374319,
		35.157681, 33.680069, 57.668530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526005, 33.091797, 57.386398>,  <35.086632, 33.034859, 57.930553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526005, 33.091797, 57.386398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811455, 33.363354, 57.317299>,  <34.982727, 33.526287, 57.275837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.811455, 33.363354, 57.317299>,  <34.526005, 33.091797, 57.386398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811455, 33.363354, 57.317299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040719, -0.205985, -0.977708,
		-0.699342, 0.704753, -0.119352,
		0.713627, 0.678892, -0.172751,
		35.025543, 33.567020, 57.265472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387592, 33.363708, 56.789627>,  <34.526005, 33.091797, 57.386398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387592, 33.363708, 56.789627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774906, 33.461208, 56.811550>,  <35.007294, 33.519707, 56.824703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774906, 33.461208, 56.811550>,  <34.387592, 33.363708, 56.789627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774906, 33.461208, 56.811550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111134, -0.223752, -0.968289,
		-0.223752, 0.943675, -0.243746,
		0.968289, 0.243746, 0.054809,
		35.065392, 33.534332, 56.827991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575851, 33.564159, 56.110905>,  <34.387592, 33.363708, 56.789627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575851, 33.564159, 56.110905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947079, 33.533138, 56.256599>,  <35.169815, 33.514526, 56.344017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947079, 33.533138, 56.256599>,  <34.575851, 33.564159, 56.110905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947079, 33.533138, 56.256599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348773, -0.161832, -0.923129,
		0.130534, 0.983766, -0.123145,
		0.928072, -0.077551, 0.364236,
		35.225502, 33.509872, 56.365871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989971, 33.925461, 55.713470>,  <34.575851, 33.564159, 56.110905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989971, 33.925461, 55.713470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240181, 33.665440, 55.886051>,  <35.390308, 33.509426, 55.989597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.240181, 33.665440, 55.886051>,  <34.989971, 33.925461, 55.713470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240181, 33.665440, 55.886051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587617, 0.028750, -0.808629,
		0.513247, 0.759344, 0.399966,
		0.625527, -0.650053, 0.431447,
		35.427837, 33.470425, 56.015484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677620, 34.132927, 55.646534>,  <34.989971, 33.925461, 55.713470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677620, 34.132927, 55.646534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702198, 33.739056, 55.711807>,  <35.716946, 33.502731, 55.750973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702198, 33.739056, 55.711807>,  <35.677620, 34.132927, 55.646534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702198, 33.739056, 55.711807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672959, -0.079871, -0.735355,
		0.737123, 0.155003, 0.657741,
		0.061448, -0.984680, 0.163185,
		35.720631, 33.443653, 55.760761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388218, 34.035679, 55.516994>,  <35.677620, 34.132927, 55.646534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388218, 34.035679, 55.516994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221592, 33.672787, 55.540337>,  <36.121616, 33.455051, 55.554340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221592, 33.672787, 55.540337>,  <36.388218, 34.035679, 55.516994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221592, 33.672787, 55.540337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496513, -0.280809, -0.821353,
		0.761544, -0.313173, 0.567427,
		-0.416565, -0.907231, 0.058354,
		36.096622, 33.400616, 55.557842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922852, 33.518990, 55.572475>,  <36.388218, 34.035679, 55.516994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922852, 33.518990, 55.572475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601109, 33.347355, 55.408085>,  <36.408062, 33.244373, 55.309452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601109, 33.347355, 55.408085>,  <36.922852, 33.518990, 55.572475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601109, 33.347355, 55.408085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583575, -0.440632, -0.682117,
		0.111599, -0.788498, 0.604828,
		-0.804355, -0.429086, -0.410973,
		36.359802, 33.218628, 55.284794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061321, 32.856163, 55.540051>,  <36.922852, 33.518990, 55.572475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061321, 32.856163, 55.540051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772823, 32.893707, 55.265533>,  <36.599724, 32.916233, 55.100822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772823, 32.893707, 55.265533>,  <37.061321, 32.856163, 55.540051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772823, 32.893707, 55.265533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618870, -0.357716, -0.699313,
		-0.311132, -0.929102, 0.199916,
		-0.721246, 0.093857, -0.686291,
		36.556450, 32.921864, 55.059647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099579, 32.306530, 54.982159>,  <37.061321, 32.856163, 55.540051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099579, 32.306530, 54.982159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864712, 32.556595, 54.776474>,  <36.723793, 32.706635, 54.653065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864712, 32.556595, 54.776474>,  <37.099579, 32.306530, 54.982159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864712, 32.556595, 54.776474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332480, -0.392924, -0.857361,
		-0.738032, -0.674379, 0.022859,
		-0.587168, 0.625159, -0.514208,
		36.688560, 32.744141, 54.622211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739174, 31.904844, 54.363457>,  <37.099579, 32.306530, 54.982159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739174, 31.904844, 54.363457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716560, 32.296455, 54.285164>,  <36.702991, 32.531422, 54.238190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716560, 32.296455, 54.285164>,  <36.739174, 31.904844, 54.363457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716560, 32.296455, 54.285164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379605, -0.160245, -0.911165,
		-0.923420, -0.125815, -0.362583,
		-0.056536, 0.979026, -0.195733,
		36.699600, 32.590164, 54.226444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640995, 31.793579, 53.645996>,  <36.739174, 31.904844, 54.363457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640995, 31.793579, 53.645996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731728, 32.174049, 53.729721>,  <36.786167, 32.402332, 53.779957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.731728, 32.174049, 53.729721>,  <36.640995, 31.793579, 53.645996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731728, 32.174049, 53.729721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396935, 0.105962, -0.911710,
		-0.889375, 0.289890, -0.353519,
		0.226836, 0.951176, 0.209308,
		36.799778, 32.459404, 53.792515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772385, 31.707584, 53.719601>,  <36.640995, 31.793579, 53.645996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772385, 31.707584, 53.719601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639297, 31.342026, 53.626568>,  <35.559444, 31.122690, 53.570747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639297, 31.342026, 53.626568>,  <35.772385, 31.707584, 53.719601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639297, 31.342026, 53.626568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574304, 0.000743, 0.818642,
		-0.747980, 0.405950, -0.525101,
		-0.332718, -0.913895, -0.232583,
		35.539482, 31.067858, 53.556793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886379, 31.556078, 53.779892>,  <35.772385, 31.707584, 53.719601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886379, 31.556078, 53.779892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048767, 31.190523, 53.779720>,  <35.146198, 30.971189, 53.779617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048767, 31.190523, 53.779720>,  <34.886379, 31.556078, 53.779892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048767, 31.190523, 53.779720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539788, -0.240166, 0.806815,
		-0.737442, -0.327306, -0.590805,
		0.405966, -0.913888, -0.000433,
		35.170559, 30.916357, 53.779591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366409, 31.194025, 54.041309>,  <34.886379, 31.556078, 53.779892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366409, 31.194025, 54.041309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705540, 30.992100, 54.106243>,  <34.909019, 30.870945, 54.145203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705540, 30.992100, 54.106243>,  <34.366409, 31.194025, 54.041309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705540, 30.992100, 54.106243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353170, -0.309196, 0.882988,
		-0.395552, -0.805953, -0.440430,
		0.847826, -0.504815, 0.162336,
		34.959888, 30.840656, 54.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147282, 30.505346, 54.173298>,  <34.366409, 31.194025, 54.041309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147282, 30.505346, 54.173298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512394, 30.554344, 54.329159>,  <34.731461, 30.583744, 54.422676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512394, 30.554344, 54.329159>,  <34.147282, 30.505346, 54.173298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512394, 30.554344, 54.329159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343529, -0.285844, 0.894584,
		0.220965, -0.950415, -0.218830,
		0.912777, 0.122497, 0.389657,
		34.786228, 30.591093, 54.446056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247868, 29.897818, 54.597031>,  <34.147282, 30.505346, 54.173298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247868, 29.897818, 54.597031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525425, 30.158253, 54.720055>,  <34.691959, 30.314514, 54.793869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525425, 30.158253, 54.720055>,  <34.247868, 29.897818, 54.597031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525425, 30.158253, 54.720055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224016, -0.210743, 0.951527,
		0.684345, -0.729159, -0.000380,
		0.693895, 0.651087, 0.307564,
		34.733593, 30.353579, 54.812325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640224, 29.546719, 55.102272>,  <34.247868, 29.897818, 54.597031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640224, 29.546719, 55.102272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709141, 29.930765, 55.190353>,  <34.750492, 30.161194, 55.243202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709141, 29.930765, 55.190353>,  <34.640224, 29.546719, 55.102272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709141, 29.930765, 55.190353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065330, -0.211919, 0.975101,
		0.982877, -0.182388, 0.026212,
		0.172292, 0.960117, 0.220206,
		34.760830, 30.218800, 55.256416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944046, 29.474758, 55.784550>,  <34.640224, 29.546719, 55.102272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944046, 29.474758, 55.784550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812935, 29.850018, 55.739944>,  <34.734268, 30.075174, 55.713181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812935, 29.850018, 55.739944>,  <34.944046, 29.474758, 55.784550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812935, 29.850018, 55.739944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139914, 0.068526, 0.987789,
		0.934337, 0.339378, 0.108800,
		-0.327778, 0.938151, -0.111510,
		34.714600, 30.131462, 55.706493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351990, 29.861511, 56.245327>,  <34.944046, 29.474758, 55.784550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351990, 29.861511, 56.245327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013908, 30.062845, 56.173450>,  <34.811062, 30.183645, 56.130325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.013908, 30.062845, 56.173450>,  <35.351990, 29.861511, 56.245327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013908, 30.062845, 56.173450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068593, 0.231281, 0.970466,
		0.530028, 0.832565, -0.160953,
		-0.845201, 0.503334, -0.179694,
		34.760349, 30.213846, 56.119541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300522, 30.279099, 56.743069>,  <35.351990, 29.861511, 56.245327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300522, 30.279099, 56.743069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933617, 30.358404, 56.604893>,  <34.713474, 30.405987, 56.521988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.933617, 30.358404, 56.604893>,  <35.300522, 30.279099, 56.743069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933617, 30.358404, 56.604893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239917, 0.417261, 0.876546,
		0.317924, 0.886896, -0.335170,
		-0.917259, 0.198262, -0.345439,
		34.658440, 30.417883, 56.501263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169006, 31.029802, 56.889488>,  <35.300522, 30.279099, 56.743069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169006, 31.029802, 56.889488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823074, 30.832935, 56.849819>,  <34.615513, 30.714815, 56.826019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823074, 30.832935, 56.849819>,  <35.169006, 31.029802, 56.889488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823074, 30.832935, 56.849819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319993, 0.388148, 0.864260,
		-0.386867, 0.779175, -0.493174,
		-0.864834, -0.492165, -0.099169,
		34.563625, 30.685286, 56.820068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588432, 31.546719, 56.904392>,  <35.169006, 31.029802, 56.889488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588432, 31.546719, 56.904392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454865, 31.183001, 57.003735>,  <34.374725, 30.964769, 57.063339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454865, 31.183001, 57.003735>,  <34.588432, 31.546719, 56.904392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454865, 31.183001, 57.003735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441090, 0.383589, 0.811356,
		-0.833029, 0.161381, -0.529168,
		-0.333921, -0.909294, 0.248358,
		34.354687, 30.910212, 57.078243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094273, 31.735344, 57.376202>,  <34.588432, 31.546719, 56.904392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094273, 31.735344, 57.376202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106754, 31.341028, 57.442226>,  <34.114243, 31.104439, 57.481842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106754, 31.341028, 57.442226>,  <34.094273, 31.735344, 57.376202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106754, 31.341028, 57.442226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354684, 0.143476, 0.923912,
		-0.934465, -0.087376, -0.345167,
		0.031205, -0.985789, 0.165064,
		34.116116, 31.045292, 57.491745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408184, 31.565695, 57.590221>,  <34.094273, 31.735344, 57.376202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408184, 31.565695, 57.590221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649521, 31.280264, 57.732651>,  <33.794323, 31.109005, 57.818108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.649521, 31.280264, 57.732651>,  <33.408184, 31.565695, 57.590221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649521, 31.280264, 57.732651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281365, 0.227313, 0.932289,
		-0.746202, -0.662671, -0.063630,
		0.603337, -0.713579, 0.356074,
		33.830521, 31.066191, 57.839474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007961, 31.381371, 58.113388>,  <33.408184, 31.565695, 57.590221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007961, 31.381371, 58.113388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366444, 31.234297, 58.212688>,  <33.581532, 31.146051, 58.272270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366444, 31.234297, 58.212688>,  <33.007961, 31.381371, 58.113388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366444, 31.234297, 58.212688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177593, 0.215450, 0.960230,
		-0.406549, -0.904648, 0.127788,
		0.896202, -0.367687, 0.248250,
		33.635303, 31.123991, 58.287163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419567, 31.059940, 58.003212>,  <33.007961, 31.381371, 58.113388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419567, 31.059940, 58.003212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127399, 31.312510, 57.899063>,  <31.952099, 31.464050, 57.836575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127399, 31.312510, 57.899063>,  <32.419567, 31.059940, 58.003212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127399, 31.312510, 57.899063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256028, -0.100291, -0.961453,
		-0.633196, -0.768926, -0.088407,
		-0.730420, 0.631422, -0.260370,
		31.908274, 31.501936, 57.820953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077576, 30.807585, 57.566509>,  <32.419567, 31.059940, 58.003212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077576, 30.807585, 57.566509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981478, 31.186058, 57.479771>,  <31.923819, 31.413141, 57.427727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.981478, 31.186058, 57.479771>,  <32.077576, 30.807585, 57.566509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981478, 31.186058, 57.479771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239887, -0.158587, -0.957760,
		-0.940605, -0.282114, -0.188878,
		-0.240244, 0.946183, -0.216843,
		31.909405, 31.469913, 57.414719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545750, 30.690037, 57.098507>,  <32.077576, 30.807585, 57.566509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545750, 30.690037, 57.098507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.651249, 31.070189, 57.032513>,  <31.714548, 31.298279, 56.992916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.651249, 31.070189, 57.032513>,  <31.545750, 30.690037, 57.098507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651249, 31.070189, 57.032513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005941, -0.169435, -0.985523,
		-0.964574, 0.260908, -0.039041,
		0.263746, 0.950378, -0.164982,
		31.730373, 31.355303, 56.983017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153580, 30.898901, 56.444851>,  <31.545750, 30.690037, 57.098507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153580, 30.898901, 56.444851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438663, 31.177414, 56.478882>,  <31.609713, 31.344522, 56.499302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438663, 31.177414, 56.478882>,  <31.153580, 30.898901, 56.444851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438663, 31.177414, 56.478882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037568, 0.083222, -0.995822,
		-0.700454, 0.712927, 0.033155,
		0.712708, 0.696282, 0.085077,
		31.652475, 31.386299, 56.504406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958117, 31.420631, 55.985119>,  <31.153580, 30.898901, 56.444851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958117, 31.420631, 55.985119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350760, 31.472813, 56.040878>,  <31.586346, 31.504122, 56.074333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350760, 31.472813, 56.040878>,  <30.958117, 31.420631, 55.985119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350760, 31.472813, 56.040878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118019, 0.159285, -0.980153,
		-0.150069, 0.978575, 0.140959,
		0.981606, 0.130455, 0.139395,
		31.645241, 31.511950, 56.082695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181404, 31.891802, 55.464413>,  <30.958117, 31.420631, 55.985119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181404, 31.891802, 55.464413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528709, 31.727112, 55.575123>,  <31.737093, 31.628298, 55.641548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528709, 31.727112, 55.575123>,  <31.181404, 31.891802, 55.464413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528709, 31.727112, 55.575123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232483, -0.155176, -0.960142,
		0.438262, 0.898000, -0.039015,
		0.868262, -0.411724, 0.276777,
		31.789188, 31.603594, 55.658157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820129, 32.251945, 55.114906>,  <31.181404, 31.891802, 55.464413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820129, 32.251945, 55.114906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920683, 31.873302, 55.195644>,  <31.981014, 31.646116, 55.244087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920683, 31.873302, 55.195644>,  <31.820129, 32.251945, 55.114906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920683, 31.873302, 55.195644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209826, -0.150286, -0.966120,
		0.944871, 0.285218, 0.160843,
		0.251382, -0.946607, 0.201847,
		31.996098, 31.589321, 55.256199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295193, 32.171776, 54.699047>,  <31.820129, 32.251945, 55.114906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295193, 32.171776, 54.699047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257530, 31.789511, 54.810654>,  <32.234932, 31.560152, 54.877617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257530, 31.789511, 54.810654>,  <32.295193, 32.171776, 54.699047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257530, 31.789511, 54.810654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382969, -0.293465, -0.875907,
		0.918950, 0.024383, 0.393620,
		-0.094156, -0.955659, 0.279017,
		32.229282, 31.502813, 54.894360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891285, 31.781458, 54.512020>,  <32.295193, 32.171776, 54.699047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891285, 31.781458, 54.512020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598705, 31.510876, 54.546402>,  <32.423157, 31.348526, 54.567032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598705, 31.510876, 54.546402>,  <32.891285, 31.781458, 54.512020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598705, 31.510876, 54.546402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195602, -0.328894, -0.923887,
		0.653240, -0.658964, 0.372886,
		-0.731449, -0.676458, 0.085952,
		32.379272, 31.307938, 54.572189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207283, 31.180254, 54.255550>,  <32.891285, 31.781458, 54.512020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207283, 31.180254, 54.255550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817329, 31.091351, 54.249889>,  <32.583359, 31.038010, 54.246494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.817329, 31.091351, 54.249889>,  <33.207283, 31.180254, 54.255550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817329, 31.091351, 54.249889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107259, -0.412883, -0.904447,
		0.195178, -0.883249, 0.426352,
		-0.974885, -0.222258, -0.014151,
		32.524864, 31.024673, 54.245644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024315, 30.434525, 54.076344>,  <33.207283, 31.180254, 54.255550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024315, 30.434525, 54.076344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721943, 30.663923, 53.950062>,  <32.540520, 30.801563, 53.874294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.721943, 30.663923, 53.950062>,  <33.024315, 30.434525, 54.076344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721943, 30.663923, 53.950062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254754, -0.186529, -0.948845,
		-0.603049, -0.797688, -0.005097,
		-0.755932, 0.573498, -0.315700,
		32.495163, 30.835972, 53.855350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852551, 30.203444, 53.301937>,  <33.024315, 30.434525, 54.076344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852551, 30.203444, 53.301937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652069, 30.547743, 53.337509>,  <32.531780, 30.754322, 53.358852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652069, 30.547743, 53.337509>,  <32.852551, 30.203444, 53.301937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652069, 30.547743, 53.337509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097793, 0.158455, -0.982511,
		-0.859787, -0.483739, -0.163593,
		-0.501201, 0.860749, 0.088931,
		32.501709, 30.805967, 53.364189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285740, 30.113535, 52.851948>,  <32.852551, 30.203444, 53.301937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285740, 30.113535, 52.851948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316822, 30.506767, 52.918297>,  <32.335472, 30.742706, 52.958107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.316822, 30.506767, 52.918297>,  <32.285740, 30.113535, 52.851948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316822, 30.506767, 52.918297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150745, 0.152875, -0.976681,
		-0.985514, 0.100894, -0.136316,
		0.077702, 0.983082, 0.165870,
		32.340134, 30.801691, 52.968060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852989, 30.452267, 52.343811>,  <32.285740, 30.113535, 52.851948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852989, 30.452267, 52.343811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105648, 30.736984, 52.466690>,  <32.257244, 30.907814, 52.540417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105648, 30.736984, 52.466690>,  <31.852989, 30.452267, 52.343811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105648, 30.736984, 52.466690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150954, 0.275748, -0.949303,
		-0.760418, 0.645997, 0.066728,
		0.631647, 0.711794, 0.307200,
		32.295143, 30.950523, 52.558849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.499937, 33.204266, 56.834309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627949, 33.551731, 56.985573>,  <29.704756, 33.760212, 57.076332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.627949, 33.551731, 56.985573>,  <29.499937, 33.204266, 56.834309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627949, 33.551731, 56.985573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298178, -0.286517, 0.910493,
		0.899261, -0.404144, 0.167322,
		0.320030, 0.868663, 0.378161,
		29.723957, 33.812328, 57.099022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916536, 33.090908, 57.478668>,  <29.499937, 33.204266, 56.834309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916536, 33.090908, 57.478668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.727444, 33.443192, 57.466862>,  <29.613989, 33.654564, 57.459778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.727444, 33.443192, 57.466862>,  <29.916536, 33.090908, 57.478668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727444, 33.443192, 57.466862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211836, -0.081060, 0.973938,
		0.855366, 0.466663, 0.224887,
		-0.472730, 0.880713, -0.029520,
		29.585625, 33.707405, 57.458004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296474, 33.499584, 57.892773>,  <29.916536, 33.090908, 57.478668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296474, 33.499584, 57.892773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929874, 33.657402, 57.866360>,  <29.709915, 33.752094, 57.850510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929874, 33.657402, 57.866360>,  <30.296474, 33.499584, 57.892773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929874, 33.657402, 57.866360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066886, 0.011612, 0.997693,
		0.394404, 0.918802, 0.015748,
		-0.916500, 0.394547, -0.066035,
		29.654924, 33.775764, 57.846550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273054, 34.126678, 58.407921>,  <30.296474, 33.499584, 57.892773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273054, 34.126678, 58.407921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.884567, 34.050785, 58.350319>,  <29.651476, 34.005249, 58.315758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.884567, 34.050785, 58.350319>,  <30.273054, 34.126678, 58.407921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884567, 34.050785, 58.350319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204295, 0.352669, 0.913174,
		-0.122476, 0.916310, -0.381281,
		-0.971217, -0.189736, -0.144004,
		29.593203, 33.993866, 58.307117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921082, 34.626286, 58.742149>,  <30.273054, 34.126678, 58.407921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921082, 34.626286, 58.742149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.616390, 34.372185, 58.691193>,  <29.433575, 34.219727, 58.660618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.616390, 34.372185, 58.691193>,  <29.921082, 34.626286, 58.742149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616390, 34.372185, 58.691193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314744, 0.190956, 0.929770,
		-0.566308, 0.748328, -0.345397,
		-0.761729, -0.635248, -0.127392,
		29.387871, 34.181610, 58.652973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222765, 34.974865, 58.954063>,  <29.921082, 34.626286, 58.742149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222765, 34.974865, 58.954063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.189503, 34.577049, 58.979309>,  <29.169546, 34.338360, 58.994457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.189503, 34.577049, 58.979309>,  <29.222765, 34.974865, 58.954063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189503, 34.577049, 58.979309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280295, 0.084123, 0.956221,
		-0.956306, 0.061824, -0.285758,
		-0.083156, -0.994536, 0.063119,
		29.164557, 34.278690, 58.998245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587641, 34.833164, 59.365974>,  <29.222765, 34.974865, 58.954063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587641, 34.833164, 59.365974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.822680, 34.510532, 59.391769>,  <28.963703, 34.316952, 59.407246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.822680, 34.510532, 59.391769>,  <28.587641, 34.833164, 59.365974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822680, 34.510532, 59.391769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059460, 0.036436, 0.997565,
		-0.806966, -0.590001, -0.026550,
		0.587598, -0.806580, 0.064484,
		28.998959, 34.268559, 59.411114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176601, 34.378963, 59.816875>,  <28.587641, 34.833164, 59.365974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176601, 34.378963, 59.816875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.557732, 34.259857, 59.840393>,  <28.786409, 34.188393, 59.854504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.557732, 34.259857, 59.840393>,  <28.176601, 34.378963, 59.816875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557732, 34.259857, 59.840393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128055, -0.218754, 0.967341,
		-0.275177, -0.929238, -0.246565,
		0.952827, -0.297764, 0.058798,
		28.843580, 34.170528, 59.858032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160002, 33.971527, 60.431637>,  <28.176601, 34.378963, 59.816875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160002, 33.971527, 60.431637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552504, 33.982033, 60.355270>,  <28.788004, 33.988335, 60.309448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552504, 33.982033, 60.355270>,  <28.160002, 33.971527, 60.431637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552504, 33.982033, 60.355270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186236, -0.383975, 0.904367,
		-0.049557, -0.922970, -0.381668,
		0.981254, 0.026263, -0.190919,
		28.846880, 33.989910, 60.297993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374409, 33.483227, 60.865723>,  <28.160002, 33.971527, 60.431637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374409, 33.483227, 60.865723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.707092, 33.698574, 60.811432>,  <28.906702, 33.827782, 60.778858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.707092, 33.698574, 60.811432>,  <28.374409, 33.483227, 60.865723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707092, 33.698574, 60.811432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157729, 0.005269, 0.987468,
		0.532339, -0.842692, -0.080534,
		0.831708, 0.538370, -0.135722,
		28.956604, 33.860085, 60.770714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940243, 33.094051, 61.149883>,  <28.374409, 33.483227, 60.865723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940243, 33.094051, 61.149883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.059958, 33.475616, 61.158562>,  <29.131786, 33.704556, 61.163769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.059958, 33.475616, 61.158562>,  <28.940243, 33.094051, 61.149883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059958, 33.475616, 61.158562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158687, -0.072188, 0.984686,
		0.940874, -0.291262, -0.172979,
		0.299289, 0.953916, 0.021701,
		29.149744, 33.761791, 61.165073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634085, 33.113747, 61.506817>,  <28.940243, 33.094051, 61.149883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634085, 33.113747, 61.506817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.468227, 33.474705, 61.553726>,  <29.368713, 33.691280, 61.581871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.468227, 33.474705, 61.553726>,  <29.634085, 33.113747, 61.506817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468227, 33.474705, 61.553726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195093, -0.037718, 0.980059,
		0.888824, 0.429255, -0.160411,
		-0.414645, 0.902395, 0.117269,
		29.343834, 33.745422, 61.588905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063877, 33.529171, 61.898994>,  <29.634085, 33.113747, 61.506817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063877, 33.529171, 61.898994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.690174, 33.663288, 61.947556>,  <29.465952, 33.743759, 61.976692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.690174, 33.663288, 61.947556>,  <30.063877, 33.529171, 61.898994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690174, 33.663288, 61.947556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115552, -0.037420, 0.992596,
		0.337357, 0.941369, -0.003784,
		-0.934258, 0.335297, 0.121401,
		29.409897, 33.763878, 61.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000898, 33.461578, 62.581589>,  <30.063877, 33.529171, 61.898994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000898, 33.461578, 62.581589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.641090, 33.625557, 62.521179>,  <29.425205, 33.723946, 62.484932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.641090, 33.625557, 62.521179>,  <30.000898, 33.461578, 62.581589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641090, 33.625557, 62.521179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181399, -0.035990, 0.982751,
		0.397442, 0.911398, 0.106738,
		-0.899519, 0.409949, -0.151023,
		29.371235, 33.748543, 62.475872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663855, 32.825283, 62.230824>,  <30.000898, 33.461578, 62.581589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663855, 32.825283, 62.230824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.580824, 32.482342, 62.419228>,  <29.531006, 32.276577, 62.532272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.580824, 32.482342, 62.419228>,  <29.663855, 32.825283, 62.230824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580824, 32.482342, 62.419228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713701, -0.462025, -0.526463,
		0.668986, 0.226882, 0.707801,
		-0.207577, -0.857355, 0.471014,
		29.518551, 32.225136, 62.560532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306313, 32.547382, 62.423332>,  <29.663855, 32.825283, 62.230824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306313, 32.547382, 62.423332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.033482, 32.254887, 62.420109>,  <29.869783, 32.079391, 62.418175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.033482, 32.254887, 62.420109>,  <30.306313, 32.547382, 62.423332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033482, 32.254887, 62.420109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537934, -0.494243, -0.682899,
		0.495375, -0.470127, 0.730468,
		-0.682078, -0.731235, -0.008062,
		29.828857, 32.035515, 62.417690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543890, 31.847950, 62.637032>,  <30.306313, 32.547382, 62.423332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543890, 31.847950, 62.637032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.228815, 31.812164, 62.393215>,  <30.039770, 31.790693, 62.246925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.228815, 31.812164, 62.393215>,  <30.543890, 31.847950, 62.637032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228815, 31.812164, 62.393215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578847, -0.446195, -0.682529,
		-0.210912, -0.890453, 0.403250,
		-0.787688, -0.089466, -0.609544,
		29.992508, 31.785324, 62.210350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845097, 31.509556, 62.084023>,  <30.543890, 31.847950, 62.637032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845097, 31.509556, 62.084023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483475, 31.546085, 61.917004>,  <30.266502, 31.568003, 61.816792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.483475, 31.546085, 61.917004>,  <30.845097, 31.509556, 62.084023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483475, 31.546085, 61.917004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382179, -0.264699, -0.885367,
		-0.191376, -0.959998, 0.204401,
		-0.904055, 0.091320, -0.417548,
		30.212259, 31.573483, 61.791740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767881, 30.948954, 61.597553>,  <30.845097, 31.509556, 62.084023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767881, 30.948954, 61.597553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.479652, 31.191744, 61.463474>,  <30.306715, 31.337418, 61.383026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.479652, 31.191744, 61.463474>,  <30.767881, 30.948954, 61.597553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479652, 31.191744, 61.463474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165029, -0.319398, -0.933140,
		-0.673455, -0.727711, 0.129980,
		-0.720572, 0.606977, -0.335193,
		30.263481, 31.373837, 61.362915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235756, 30.501886, 61.330723>,  <30.767881, 30.948954, 61.597553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235756, 30.501886, 61.330723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.268353, 30.868591, 61.174309>,  <30.287910, 31.088614, 61.080460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.268353, 30.868591, 61.174309>,  <30.235756, 30.501886, 61.330723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268353, 30.868591, 61.174309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187247, -0.399438, -0.897434,
		-0.978927, -0.000088, -0.204212,
		0.081491, 0.916760, -0.391037,
		30.292799, 31.143620, 61.056999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171415, 30.368160, 60.552570>,  <30.235756, 30.501886, 61.330723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171415, 30.368160, 60.552570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273342, 30.754589, 60.569405>,  <30.334497, 30.986446, 60.579506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.273342, 30.754589, 60.569405>,  <30.171415, 30.368160, 60.552570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273342, 30.754589, 60.569405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290331, -0.034922, -0.956289,
		-0.922376, 0.255896, -0.289380,
		0.254816, 0.966073, 0.042083,
		30.349787, 31.044411, 60.582031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781704, 30.735161, 59.990784>,  <30.171415, 30.368160, 60.552570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781704, 30.735161, 59.990784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.104504, 30.938721, 60.110630>,  <30.298183, 31.060856, 60.182537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.104504, 30.938721, 60.110630>,  <29.781704, 30.735161, 59.990784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104504, 30.938721, 60.110630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233684, 0.190764, -0.953416,
		-0.542347, 0.839424, 0.035025,
		0.807002, 0.508897, 0.299620,
		30.346603, 31.091391, 60.200516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744825, 31.433676, 59.663628>,  <29.781704, 30.735161, 59.990784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744825, 31.433676, 59.663628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.125086, 31.362606, 59.765369>,  <30.353243, 31.319963, 59.826412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.125086, 31.362606, 59.765369>,  <29.744825, 31.433676, 59.663628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125086, 31.362606, 59.765369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297331, 0.287512, -0.910456,
		0.088636, 0.941153, 0.326152,
		0.950651, -0.177674, 0.254350,
		30.410282, 31.309303, 59.841675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064272, 31.880022, 59.237568>,  <29.744825, 31.433676, 59.663628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064272, 31.880022, 59.237568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.367399, 31.646055, 59.353210>,  <30.549276, 31.505674, 59.422596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.367399, 31.646055, 59.353210>,  <30.064272, 31.880022, 59.237568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367399, 31.646055, 59.353210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448400, 0.145005, -0.881993,
		0.473971, 0.798025, 0.372165,
		0.757818, -0.584918, 0.289106,
		30.594746, 31.470579, 59.439941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680065, 32.254532, 59.281960>,  <30.064272, 31.880022, 59.237568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680065, 32.254532, 59.281960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822174, 31.882595, 59.243629>,  <30.907440, 31.659433, 59.220631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822174, 31.882595, 59.243629>,  <30.680065, 32.254532, 59.281960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822174, 31.882595, 59.243629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454926, 0.261541, -0.851257,
		0.816593, 0.258837, 0.515926,
		0.355272, -0.929839, -0.095821,
		30.928757, 31.603643, 59.214882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333580, 32.407661, 59.074944>,  <30.680065, 32.254532, 59.281960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333580, 32.407661, 59.074944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.246441, 32.035179, 58.958057>,  <31.194157, 31.811689, 58.887928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.246441, 32.035179, 58.958057>,  <31.333580, 32.407661, 59.074944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246441, 32.035179, 58.958057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360732, 0.201377, -0.910670,
		0.906871, -0.303800, 0.292047,
		-0.217850, -0.931211, -0.292213,
		31.181086, 31.755816, 58.870392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019840, 32.112110, 58.918190>,  <31.333580, 32.407661, 59.074944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019840, 32.112110, 58.918190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.747324, 31.884052, 58.734550>,  <31.583813, 31.747219, 58.624367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.747324, 31.884052, 58.734550>,  <32.019840, 32.112110, 58.918190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747324, 31.884052, 58.734550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579673, -0.037218, -0.813999,
		0.447008, -0.820703, 0.355852,
		-0.681295, -0.570142, -0.459103,
		31.542936, 31.713009, 58.596821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461716, 31.621914, 58.561420>,  <32.019840, 32.112110, 58.918190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461716, 31.621914, 58.561420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.108715, 31.627180, 58.373367>,  <31.896915, 31.630341, 58.260536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.108715, 31.627180, 58.373367>,  <32.461716, 31.621914, 58.561420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108715, 31.627180, 58.373367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468177, -0.070623, -0.880808,
		-0.044800, -0.997416, 0.056161,
		-0.882498, 0.013167, -0.470131,
		31.843966, 31.631130, 58.232327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850281, 30.893158, 58.601936>,  <32.461716, 31.621914, 58.561420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850281, 30.893158, 58.601936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234669, 30.993353, 58.648903>,  <33.465302, 31.053471, 58.677082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234669, 30.993353, 58.648903>,  <32.850281, 30.893158, 58.601936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234669, 30.993353, 58.648903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192816, 0.302110, 0.933569,
		0.198373, -0.919775, 0.338617,
		0.960973, 0.250486, 0.117417,
		33.522961, 31.068501, 58.684128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058632, 30.536724, 59.228508>,  <32.850281, 30.893158, 58.601936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058632, 30.536724, 59.228508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.317089, 30.837402, 59.175659>,  <33.472164, 31.017809, 59.143948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.317089, 30.837402, 59.175659>,  <33.058632, 30.536724, 59.228508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317089, 30.837402, 59.175659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076393, 0.235944, 0.968759,
		0.759384, -0.615863, 0.209878,
		0.646142, 0.751694, -0.132124,
		33.510933, 31.062910, 59.136021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544342, 30.483265, 59.793289>,  <33.058632, 30.536724, 59.228508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544342, 30.483265, 59.793289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.570553, 30.845987, 59.626720>,  <33.586277, 31.063622, 59.526779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.570553, 30.845987, 59.626720>,  <33.544342, 30.483265, 59.793289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570553, 30.845987, 59.626720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099428, 0.409311, 0.906961,
		0.992885, -0.100832, -0.063342,
		0.065524, 0.906806, -0.416424,
		33.590210, 31.118029, 59.501793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134911, 30.924463, 60.170731>,  <33.544342, 30.483265, 59.793289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134911, 30.924463, 60.170731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909866, 31.212353, 60.008018>,  <33.774841, 31.385086, 59.910389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909866, 31.212353, 60.008018>,  <34.134911, 30.924463, 60.170731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909866, 31.212353, 60.008018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012933, 0.499644, 0.866135,
		0.826622, 0.482034, -0.290412,
		-0.562609, 0.719722, -0.406783,
		33.741085, 31.428268, 59.885983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379219, 31.561632, 60.429482>,  <34.134911, 30.924463, 60.170731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379219, 31.561632, 60.429482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003223, 31.636005, 60.315041>,  <33.777626, 31.680630, 60.246376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.003223, 31.636005, 60.315041>,  <34.379219, 31.561632, 60.429482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003223, 31.636005, 60.315041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162261, 0.494036, 0.854166,
		0.300162, 0.849328, -0.434218,
		-0.939986, 0.185932, -0.286104,
		33.721226, 31.691786, 60.229210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292030, 32.162132, 60.820156>,  <34.379219, 31.561632, 60.429482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292030, 32.162132, 60.820156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929806, 32.044376, 60.697983>,  <33.712471, 31.973722, 60.624680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929806, 32.044376, 60.697983>,  <34.292030, 32.162132, 60.820156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929806, 32.044376, 60.697983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399518, 0.349788, 0.847369,
		-0.142624, 0.889371, -0.434371,
		-0.905563, -0.294394, -0.305431,
		33.658138, 31.956059, 60.606354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777187, 32.696060, 60.962925>,  <34.292030, 32.162132, 60.820156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777187, 32.696060, 60.962925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543953, 32.372181, 60.936386>,  <33.404011, 32.177853, 60.920464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.543953, 32.372181, 60.936386>,  <33.777187, 32.696060, 60.962925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543953, 32.372181, 60.936386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489081, 0.284648, 0.824485,
		-0.648698, 0.513194, -0.561981,
		-0.583088, -0.809696, -0.066343,
		33.369026, 32.129272, 60.916485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453236, 33.458588, 60.683765>,  <33.777187, 32.696060, 60.962925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453236, 33.458588, 60.683765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.653194, 33.779068, 60.815327>,  <33.773170, 33.971355, 60.894264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.653194, 33.779068, 60.815327>,  <33.453236, 33.458588, 60.683765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653194, 33.779068, 60.815327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197880, 0.264060, -0.943989,
		-0.843178, 0.536980, -0.026540,
		0.499895, 0.801202, 0.328907,
		33.803162, 34.019428, 60.913998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326733, 33.939491, 60.114372>,  <33.453236, 33.458588, 60.683765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326733, 33.939491, 60.114372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642017, 34.069275, 60.323540>,  <33.831188, 34.147144, 60.449039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.642017, 34.069275, 60.323540>,  <33.326733, 33.939491, 60.114372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642017, 34.069275, 60.323540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444496, 0.287506, -0.848389,
		-0.425611, 0.901147, 0.082395,
		0.788212, 0.324459, 0.522922,
		33.878483, 34.166615, 60.480415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449963, 34.555840, 59.842960>,  <33.326733, 33.939491, 60.114372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449963, 34.555840, 59.842960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785900, 34.437313, 60.024891>,  <33.987461, 34.366199, 60.134048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785900, 34.437313, 60.024891>,  <33.449963, 34.555840, 59.842960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785900, 34.437313, 60.024891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500109, 0.096519, -0.860567,
		0.211096, 0.950202, 0.229248,
		0.839839, -0.296311, 0.454829,
		34.037853, 34.348419, 60.161339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020317, 35.058914, 59.613670>,  <33.449963, 34.555840, 59.842960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020317, 35.058914, 59.613670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212788, 34.731770, 59.739891>,  <34.328270, 34.535484, 59.815624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212788, 34.731770, 59.739891>,  <34.020317, 35.058914, 59.613670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212788, 34.731770, 59.739891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602963, 0.047492, -0.796354,
		0.636322, 0.573451, 0.515992,
		0.481176, -0.817862, 0.315550,
		34.357140, 34.486412, 59.834557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786152, 35.211174, 59.599026>,  <34.020317, 35.058914, 59.613670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786152, 35.211174, 59.599026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724476, 34.817074, 59.569336>,  <34.687469, 34.580612, 59.551521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.724476, 34.817074, 59.569336>,  <34.786152, 35.211174, 59.599026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724476, 34.817074, 59.569336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622228, -0.038473, -0.781890,
		0.767502, -0.166742, 0.618981,
		-0.154188, -0.985250, -0.074223,
		34.678219, 34.521500, 59.547070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405903, 35.021336, 59.419666>,  <34.786152, 35.211174, 59.599026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405903, 35.021336, 59.419666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.169605, 34.710762, 59.331867>,  <35.027828, 34.524418, 59.279186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.169605, 34.710762, 59.331867>,  <35.405903, 35.021336, 59.419666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169605, 34.710762, 59.331867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535255, -0.173542, -0.826671,
		0.603762, -0.605834, 0.518108,
		-0.590739, -0.776433, -0.219497,
		34.992382, 34.477833, 59.266018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854465, 34.560036, 59.167931>,  <35.405903, 35.021336, 59.419666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854465, 34.560036, 59.167931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.506756, 34.437115, 59.013054>,  <35.298130, 34.363361, 58.920128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.506756, 34.437115, 59.013054>,  <35.854465, 34.560036, 59.167931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506756, 34.437115, 59.013054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473226, -0.290948, -0.831509,
		0.142873, -0.906043, 0.398339,
		-0.869278, -0.307304, -0.387194,
		35.245972, 34.344925, 58.896896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.167459, 36.202808, 62.074181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817833, 36.115147, 61.900753>,  <29.608057, 36.062550, 61.796696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817833, 36.115147, 61.900753>,  <30.167459, 36.202808, 62.074181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817833, 36.115147, 61.900753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390716, 0.213255, -0.895468,
		0.288711, -0.952098, -0.100769,
		-0.874063, -0.219160, -0.433570,
		29.555614, 36.049400, 61.770683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401186, 36.117188, 61.426544>,  <30.167459, 36.202808, 62.074181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401186, 36.117188, 61.426544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007065, 36.118919, 61.358238>,  <29.770592, 36.119957, 61.317253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007065, 36.118919, 61.358238>,  <30.401186, 36.117188, 61.426544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007065, 36.118919, 61.358238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166642, 0.244103, -0.955324,
		0.037547, -0.969740, -0.241237,
		-0.985302, 0.004331, -0.170765,
		29.711473, 36.120216, 61.307007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224649, 35.718807, 60.878098>,  <30.401186, 36.117188, 61.426544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224649, 35.718807, 60.878098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927376, 35.985767, 60.897095>,  <29.749012, 36.145943, 60.908493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927376, 35.985767, 60.897095>,  <30.224649, 35.718807, 60.878098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927376, 35.985767, 60.897095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128428, 0.211946, -0.968806,
		-0.656647, -0.713901, -0.243228,
		-0.743183, 0.667401, 0.047489,
		29.704420, 36.185989, 60.911343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091839, 35.867546, 60.279449>,  <30.224649, 35.718807, 60.878098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091839, 35.867546, 60.279449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859324, 36.153847, 60.434265>,  <29.719814, 36.325626, 60.527157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859324, 36.153847, 60.434265>,  <30.091839, 35.867546, 60.279449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859324, 36.153847, 60.434265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024286, 0.460188, -0.887489,
		-0.813335, -0.525288, -0.250119,
		-0.581289, 0.715752, 0.387044,
		29.684937, 36.368572, 60.550377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367758, 35.817352, 59.997528>,  <30.091839, 35.867546, 60.279449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367758, 35.817352, 59.997528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475950, 36.185249, 60.111309>,  <29.540867, 36.405987, 60.179577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475950, 36.185249, 60.111309>,  <29.367758, 35.817352, 59.997528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475950, 36.185249, 60.111309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076001, 0.314945, -0.946062,
		-0.959720, 0.234275, 0.155088,
		0.270483, 0.919742, 0.284454,
		29.557095, 36.461170, 60.196644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964649, 36.237686, 59.579849>,  <29.367758, 35.817352, 59.997528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964649, 36.237686, 59.579849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221355, 36.506527, 59.727585>,  <29.375380, 36.667831, 59.816227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221355, 36.506527, 59.727585>,  <28.964649, 36.237686, 59.579849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221355, 36.506527, 59.727585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040031, 0.510305, -0.859061,
		-0.765856, 0.536530, 0.354401,
		0.641765, 0.672104, 0.369343,
		29.413885, 36.708157, 59.838387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786211, 36.902702, 59.107792>,  <28.964649, 36.237686, 59.579849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786211, 36.902702, 59.107792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135550, 36.958454, 59.294483>,  <29.345154, 36.991905, 59.406498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135550, 36.958454, 59.294483>,  <28.786211, 36.902702, 59.107792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135550, 36.958454, 59.294483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258661, 0.679222, -0.686841,
		-0.412744, 0.720577, 0.557146,
		0.873348, 0.139377, 0.466730,
		29.397554, 37.000267, 59.434502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826899, 37.596615, 59.199219>,  <28.786211, 36.902702, 59.107792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826899, 37.596615, 59.199219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205843, 37.468689, 59.205158>,  <29.433210, 37.391933, 59.208721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205843, 37.468689, 59.205158>,  <28.826899, 37.596615, 59.199219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205843, 37.468689, 59.205158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198238, 0.549546, -0.811604,
		0.251408, 0.771826, 0.584019,
		0.947363, -0.319818, 0.014845,
		29.490051, 37.372742, 59.209610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323467, 38.184227, 58.959946>,  <28.826899, 37.596615, 59.199219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323467, 38.184227, 58.959946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534533, 37.846649, 58.921318>,  <29.661173, 37.644104, 58.898140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534533, 37.846649, 58.921318>,  <29.323467, 38.184227, 58.959946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534533, 37.846649, 58.921318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259786, 0.268564, -0.927569,
		0.808753, 0.464358, 0.360957,
		0.527664, -0.843946, -0.096568,
		29.692831, 37.593464, 58.892349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965998, 38.400810, 58.773941>,  <29.323467, 38.184227, 58.959946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965998, 38.400810, 58.773941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979923, 38.027782, 58.630222>,  <29.988279, 37.803967, 58.543991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979923, 38.027782, 58.630222>,  <29.965998, 38.400810, 58.773941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979923, 38.027782, 58.630222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219810, 0.357859, -0.907535,
		0.974921, -0.047383, 0.217448,
		0.034814, -0.932572, -0.359300,
		29.990368, 37.748013, 58.522430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684502, 38.317787, 58.512299>,  <29.965998, 38.400810, 58.773941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684502, 38.317787, 58.512299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452093, 38.053535, 58.322147>,  <30.312649, 37.894985, 58.208057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452093, 38.053535, 58.322147>,  <30.684502, 38.317787, 58.512299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452093, 38.053535, 58.322147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472501, 0.201781, -0.857920,
		0.662690, -0.723085, 0.194909,
		-0.581020, -0.660630, -0.475377,
		30.277786, 37.855347, 58.179535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145048, 37.995289, 58.200821>,  <30.684502, 38.317787, 58.512299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145048, 37.995289, 58.200821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805393, 37.909309, 58.007839>,  <30.601601, 37.857719, 57.892052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805393, 37.909309, 58.007839>,  <31.145048, 37.995289, 58.200821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805393, 37.909309, 58.007839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472720, 0.098140, -0.875731,
		0.235588, -0.971681, 0.018278,
		-0.849138, -0.214952, -0.482454,
		30.550652, 37.844826, 57.863102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401693, 37.246151, 58.075485>,  <31.145048, 37.995289, 58.200821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401693, 37.246151, 58.075485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797558, 37.208366, 58.118664>,  <32.035076, 37.185696, 58.144569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797558, 37.208366, 58.118664>,  <31.401693, 37.246151, 58.075485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797558, 37.208366, 58.118664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123040, -0.172230, 0.977342,
		-0.073728, -0.980517, -0.182071,
		0.989659, -0.094460, 0.107944,
		32.094456, 37.180027, 58.151047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527002, 36.648037, 58.428623>,  <31.401693, 37.246151, 58.075485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527002, 36.648037, 58.428623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858873, 36.853840, 58.515270>,  <32.057995, 36.977322, 58.567257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858873, 36.853840, 58.515270>,  <31.527002, 36.648037, 58.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858873, 36.853840, 58.515270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048212, -0.320539, 0.946008,
		0.556157, -0.795325, -0.241139,
		0.829677, 0.514503, 0.216614,
		32.107777, 37.008190, 58.580254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985449, 36.137512, 58.828949>,  <31.527002, 36.648037, 58.428623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985449, 36.137512, 58.828949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113293, 36.503380, 58.927929>,  <32.189999, 36.722900, 58.987316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113293, 36.503380, 58.927929>,  <31.985449, 36.137512, 58.828949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113293, 36.503380, 58.927929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175627, -0.313809, 0.933102,
		0.931132, -0.254767, -0.260936,
		0.319608, 0.914669, 0.247453,
		32.209175, 36.777779, 59.002167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503048, 36.039967, 59.383785>,  <31.985449, 36.137512, 58.828949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503048, 36.039967, 59.383785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430664, 36.433109, 59.397915>,  <32.387234, 36.668995, 59.406391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430664, 36.433109, 59.397915>,  <32.503048, 36.039967, 59.383785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430664, 36.433109, 59.397915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071893, -0.022603, 0.997156,
		0.980860, 0.182983, -0.066570,
		-0.180958, 0.982856, 0.035326,
		32.376377, 36.727966, 59.408512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155914, 36.455559, 59.746933>,  <32.503048, 36.039967, 59.383785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155914, 36.455559, 59.746933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809883, 36.653984, 59.776775>,  <32.602264, 36.773037, 59.794682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809883, 36.653984, 59.776775>,  <33.155914, 36.455559, 59.746933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809883, 36.653984, 59.776775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158817, 0.129751, 0.978745,
		0.475835, 0.858539, -0.191027,
		-0.865077, 0.496060, 0.074611,
		32.550362, 36.802803, 59.799160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318348, 37.052742, 60.218678>,  <33.155914, 36.455559, 59.746933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318348, 37.052742, 60.218678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919182, 37.064030, 60.241879>,  <32.679680, 37.070805, 60.255798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919182, 37.064030, 60.241879>,  <33.318348, 37.052742, 60.218678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919182, 37.064030, 60.241879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063022, 0.235191, 0.969904,
		0.013734, 0.971539, -0.236480,
		-0.997918, 0.028224, 0.057998,
		32.619808, 37.072498, 60.259277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159065, 37.633930, 60.604187>,  <33.318348, 37.052742, 60.218678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159065, 37.633930, 60.604187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850620, 37.382393, 60.644058>,  <32.665554, 37.231472, 60.667980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850620, 37.382393, 60.644058>,  <33.159065, 37.633930, 60.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850620, 37.382393, 60.644058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008866, 0.145932, 0.989255,
		-0.636633, 0.763714, -0.106956,
		-0.771116, -0.628844, 0.099676,
		32.619286, 37.193741, 60.673962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947479, 37.701241, 61.218319>,  <33.159065, 37.633930, 60.604187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947479, 37.701241, 61.218319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678772, 37.411381, 61.156853>,  <32.517548, 37.237465, 61.119972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678772, 37.411381, 61.156853>,  <32.947479, 37.701241, 61.218319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678772, 37.411381, 61.156853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117405, -0.100664, 0.987969,
		-0.731400, 0.681725, -0.017455,
		-0.671766, -0.724650, -0.153663,
		32.477242, 37.193985, 61.110752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347725, 37.807858, 61.625336>,  <32.947479, 37.701241, 61.218319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347725, 37.807858, 61.625336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331696, 37.412258, 61.568382>,  <32.322079, 37.174900, 61.534210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331696, 37.412258, 61.568382>,  <32.347725, 37.807858, 61.625336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331696, 37.412258, 61.568382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025454, -0.143465, 0.989328,
		-0.998872, 0.036023, 0.030924,
		-0.040075, -0.989000, -0.142386,
		32.319672, 37.115559, 61.525665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823404, 37.648502, 62.012089>,  <32.347725, 37.807858, 61.625336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823404, 37.648502, 62.012089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022884, 37.306477, 61.955284>,  <32.142570, 37.101261, 61.921200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022884, 37.306477, 61.955284>,  <31.823404, 37.648502, 62.012089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022884, 37.306477, 61.955284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019572, -0.174906, 0.984390,
		-0.866555, -0.488134, -0.103961,
		0.498698, -0.855063, -0.142012,
		32.172493, 37.049957, 61.912682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462086, 37.064671, 62.459450>,  <31.823404, 37.648502, 62.012089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462086, 37.064671, 62.459450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829535, 36.938740, 62.363937>,  <32.050003, 36.863182, 62.306629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829535, 36.938740, 62.363937>,  <31.462086, 37.064671, 62.459450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829535, 36.938740, 62.363937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115850, -0.363153, 0.924499,
		-0.377756, -0.876934, -0.297132,
		0.918629, -0.314813, -0.238776,
		32.105122, 36.844292, 62.292305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420534, 36.447014, 62.678043>,  <31.462086, 37.064671, 62.459450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420534, 36.447014, 62.678043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813353, 36.504711, 62.629410>,  <32.049042, 36.539330, 62.600231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813353, 36.504711, 62.629410>,  <31.420534, 36.447014, 62.678043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813353, 36.504711, 62.629410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180916, -0.537517, 0.823617,
		0.053445, -0.830825, -0.553961,
		0.982045, 0.144239, -0.121582,
		32.107967, 36.547981, 62.592934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712568, 35.826149, 62.823269>,  <31.420534, 36.447014, 62.678043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712568, 35.826149, 62.823269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031975, 36.063820, 62.861897>,  <32.223618, 36.206421, 62.885075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031975, 36.063820, 62.861897>,  <31.712568, 35.826149, 62.823269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031975, 36.063820, 62.861897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262183, -0.487691, 0.832717,
		0.541877, -0.639620, -0.545212,
		0.798517, 0.594175, 0.096571,
		32.271530, 36.242073, 62.890869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370308, 35.375404, 63.036560>,  <31.712568, 35.826149, 62.823269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370308, 35.375404, 63.036560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404957, 35.762249, 63.132225>,  <32.425747, 35.994354, 63.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404957, 35.762249, 63.132225>,  <32.370308, 35.375404, 63.036560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404957, 35.762249, 63.132225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268810, -0.253851, 0.929140,
		0.959290, -0.016197, -0.281958,
		0.086624, 0.967108, 0.239163,
		32.430943, 36.052380, 63.203976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975903, 35.626919, 63.293461>,  <32.370308, 35.375404, 63.036560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975903, 35.626919, 63.293461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149780, 35.294540, 63.432358>,  <33.254108, 35.095116, 63.515697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149780, 35.294540, 63.432358>,  <32.975903, 35.626919, 63.293461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149780, 35.294540, 63.432358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402539, -0.165641, -0.900292,
		0.805607, 0.531130, 0.262483,
		0.434694, -0.830941, 0.347243,
		33.280190, 35.045258, 63.536530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749653, 35.620930, 63.192234>,  <32.975903, 35.626919, 63.293461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749653, 35.620930, 63.192234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615849, 35.245926, 63.230549>,  <33.535568, 35.020924, 63.253540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615849, 35.245926, 63.230549>,  <33.749653, 35.620930, 63.192234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615849, 35.245926, 63.230549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469114, -0.253809, -0.845880,
		0.817335, -0.238017, 0.524701,
		-0.334508, -0.937512, 0.095790,
		33.515495, 34.964672, 63.259285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281273, 35.117336, 63.068336>,  <33.749653, 35.620930, 63.192234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281273, 35.117336, 63.068336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946945, 34.909725, 62.996754>,  <33.746349, 34.785160, 62.953804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946945, 34.909725, 62.996754>,  <34.281273, 35.117336, 63.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946945, 34.909725, 62.996754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424762, -0.404829, -0.809747,
		0.347834, -0.752812, 0.558825,
		-0.835816, -0.519026, -0.178953,
		33.696201, 34.754017, 62.943069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581791, 34.500351, 62.877796>,  <34.281273, 35.117336, 63.068336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581791, 34.500351, 62.877796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209320, 34.528355, 62.734684>,  <33.985836, 34.545158, 62.648815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209320, 34.528355, 62.734684>,  <34.581791, 34.500351, 62.877796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209320, 34.528355, 62.734684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289977, -0.452554, -0.843272,
		-0.220955, -0.888984, 0.401107,
		-0.931178, 0.070013, -0.357779,
		33.929966, 34.549358, 62.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591358, 33.834698, 62.488277>,  <34.581791, 34.500351, 62.877796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591358, 33.834698, 62.488277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293926, 34.073048, 62.366936>,  <34.115467, 34.216057, 62.294128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293926, 34.073048, 62.366936>,  <34.591358, 33.834698, 62.488277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293926, 34.073048, 62.366936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152226, -0.290913, -0.944562,
		-0.651087, -0.748537, 0.125611,
		-0.743581, 0.595871, -0.303357,
		34.070850, 34.251808, 62.275928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236889, 33.466351, 62.051704>,  <34.591358, 33.834698, 62.488277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236889, 33.466351, 62.051704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103729, 33.826973, 61.941154>,  <34.023834, 34.043346, 61.874825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103729, 33.826973, 61.941154>,  <34.236889, 33.466351, 62.051704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103729, 33.826973, 61.941154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001645, -0.293643, -0.955914,
		-0.942961, -0.317769, 0.099237,
		-0.332900, 0.901552, -0.276371,
		34.003860, 34.097439, 61.858242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745613, 33.277260, 61.544163>,  <34.236889, 33.466351, 62.051704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745613, 33.277260, 61.544163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826843, 33.665684, 61.493893>,  <33.875580, 33.898739, 61.463730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826843, 33.665684, 61.493893>,  <33.745613, 33.277260, 61.544163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826843, 33.665684, 61.493893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050356, -0.117827, -0.991757,
		-0.977868, 0.207728, 0.024971,
		0.203074, 0.971064, -0.125680,
		33.887764, 33.957005, 61.456188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130600, 32.937714, 61.137074>,  <33.745613, 33.277260, 61.544163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130600, 32.937714, 61.137074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067562, 32.544010, 61.169086>,  <33.029739, 32.307789, 61.188293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067562, 32.544010, 61.169086>,  <33.130600, 32.937714, 61.137074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067562, 32.544010, 61.169086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633834, 0.162965, 0.756106,
		-0.757244, 0.068430, -0.649537,
		-0.157592, -0.984256, 0.080031,
		33.020283, 32.248734, 61.193096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516331, 32.969490, 61.323971>,  <33.130600, 32.937714, 61.137074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516331, 32.969490, 61.323971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626865, 32.596672, 61.417725>,  <32.693184, 32.372982, 61.473976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626865, 32.596672, 61.417725>,  <32.516331, 32.969490, 61.323971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626865, 32.596672, 61.417725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633716, 0.006643, 0.773537,
		-0.722526, -0.362289, -0.588815,
		0.276333, -0.932042, 0.234388,
		32.709766, 32.317059, 61.488041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937685, 32.490742, 61.328697>,  <32.516331, 32.969490, 61.323971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937685, 32.490742, 61.328697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219898, 32.346256, 61.572582>,  <32.389225, 32.259563, 61.718914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219898, 32.346256, 61.572582>,  <31.937685, 32.490742, 61.328697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219898, 32.346256, 61.572582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673914, -0.075811, 0.734910,
		-0.219240, -0.929395, -0.296917,
		0.705531, -0.361218, 0.609711,
		32.431557, 32.237892, 61.755497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625053, 32.095226, 61.730972>,  <31.937685, 32.490742, 61.328697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625053, 32.095226, 61.730972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947731, 32.159908, 61.958340>,  <32.141338, 32.198719, 62.094761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947731, 32.159908, 61.958340>,  <31.625053, 32.095226, 61.730972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947731, 32.159908, 61.958340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565301, -0.069237, 0.821974,
		0.172276, -0.984407, 0.035562,
		0.806694, 0.161710, 0.568414,
		32.189739, 32.208420, 62.128864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600386, 31.554762, 62.154053>,  <31.625053, 32.095226, 61.730972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600386, 31.554762, 62.154053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825558, 31.837851, 62.324810>,  <31.960661, 32.007706, 62.427265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825558, 31.837851, 62.324810>,  <31.600386, 31.554762, 62.154053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825558, 31.837851, 62.324810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538803, -0.077433, 0.838866,
		0.626741, -0.702233, 0.337735,
		0.562928, 0.707724, 0.426895,
		31.994436, 32.050167, 62.452877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588278, 31.355284, 62.838688>,  <31.600386, 31.554762, 62.154053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588278, 31.355284, 62.838688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720078, 31.729292, 62.891098>,  <31.799158, 31.953697, 62.922543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720078, 31.729292, 62.891098>,  <31.588278, 31.355284, 62.838688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720078, 31.729292, 62.891098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499259, 0.054769, 0.864720,
		0.801355, -0.350339, 0.484864,
		0.329501, 0.935020, 0.131021,
		31.818928, 32.009796, 62.930405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754049, 31.396545, 63.524166>,  <31.588278, 31.355284, 62.838688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754049, 31.396545, 63.524166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709665, 31.771116, 63.391026>,  <31.683035, 31.995859, 63.311142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709665, 31.771116, 63.391026>,  <31.754049, 31.396545, 63.524166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709665, 31.771116, 63.391026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477606, 0.243464, 0.844167,
		0.871539, 0.252639, 0.420230,
		-0.110959, 0.936429, -0.332850,
		31.676378, 32.052044, 63.291172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901394, 31.664829, 64.114555>,  <31.754049, 31.396545, 63.524166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901394, 31.664829, 64.114555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733330, 31.969149, 63.916710>,  <31.632492, 32.151741, 63.798000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733330, 31.969149, 63.916710>,  <31.901394, 31.664829, 64.114555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733330, 31.969149, 63.916710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392465, 0.339104, 0.854974,
		0.818192, 0.553346, 0.156110,
		-0.420159, 0.760800, -0.494621,
		31.607283, 32.197388, 63.768322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135620, 32.381413, 64.414963>,  <31.901394, 31.664829, 64.114555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135620, 32.381413, 64.414963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778263, 32.392796, 64.235611>,  <31.563850, 32.399624, 64.127998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778263, 32.392796, 64.235611>,  <32.135620, 32.381413, 64.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778263, 32.392796, 64.235611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407384, 0.369545, 0.835150,
		0.189462, 0.928777, -0.318555,
		-0.893388, 0.028455, -0.448384,
		31.510246, 32.401333, 64.101097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.676289, 33.728085, 47.824898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699959, 34.075909, 47.628792>,  <36.714161, 34.284603, 47.511127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699959, 34.075909, 47.628792>,  <36.676289, 33.728085, 47.824898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699959, 34.075909, 47.628792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917361, 0.241032, 0.316785,
		0.393634, 0.431006, 0.811964,
		0.059174, 0.869562, -0.490267,
		36.717712, 34.336777, 47.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354721, 34.218025, 48.261562>,  <36.676289, 33.728085, 47.824898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354721, 34.218025, 48.261562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349293, 34.385345, 47.898281>,  <36.346035, 34.485737, 47.680313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.349293, 34.385345, 47.898281>,  <36.354721, 34.218025, 48.261562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349293, 34.385345, 47.898281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854262, 0.467200, 0.227948,
		0.519665, 0.778940, 0.351001,
		-0.013570, 0.418303, -0.908206,
		36.345222, 34.510838, 47.625820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327518, 34.919666, 48.364174>,  <36.354721, 34.218025, 48.261562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327518, 34.919666, 48.364174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165329, 34.873768, 48.001423>,  <36.068016, 34.846230, 47.783772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165329, 34.873768, 48.001423>,  <36.327518, 34.919666, 48.364174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165329, 34.873768, 48.001423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887407, 0.287435, 0.360402,
		0.219312, 0.950902, -0.218378,
		-0.405476, -0.114750, -0.906875,
		36.043686, 34.839344, 47.729359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947205, 35.492058, 48.182907>,  <36.327518, 34.919666, 48.364174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947205, 35.492058, 48.182907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793476, 35.245594, 47.907909>,  <35.701241, 35.097717, 47.742912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793476, 35.245594, 47.907909>,  <35.947205, 35.492058, 48.182907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793476, 35.245594, 47.907909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922954, 0.239247, 0.301525,
		-0.021306, 0.750408, -0.660631,
		-0.384321, -0.616156, -0.687495,
		35.678181, 35.060749, 47.701660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445724, 35.902630, 47.774590>,  <35.947205, 35.492058, 48.182907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445724, 35.902630, 47.774590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368256, 35.513519, 47.723694>,  <35.321774, 35.280052, 47.693157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368256, 35.513519, 47.723694>,  <35.445724, 35.902630, 47.774590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368256, 35.513519, 47.723694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969064, 0.169463, 0.179436,
		-0.152990, 0.158050, -0.975507,
		-0.193672, -0.972781, -0.127235,
		35.310154, 35.221684, 47.685524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846706, 35.871204, 47.411140>,  <35.445724, 35.902630, 47.774590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846706, 35.871204, 47.411140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832752, 35.499371, 47.557926>,  <34.824379, 35.276272, 47.645996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.832752, 35.499371, 47.557926>,  <34.846706, 35.871204, 47.411140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832752, 35.499371, 47.557926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983933, 0.096282, 0.150350,
		-0.175094, -0.355821, -0.918005,
		-0.034890, -0.929582, 0.366962,
		34.822285, 35.220497, 47.668015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191425, 35.524742, 47.108364>,  <34.846706, 35.871204, 47.411140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191425, 35.524742, 47.108364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.281921, 35.299679, 47.426414>,  <34.336220, 35.164642, 47.617245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.281921, 35.299679, 47.426414>,  <34.191425, 35.524742, 47.108364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281921, 35.299679, 47.426414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947068, 0.063809, 0.314628,
		-0.227765, -0.824222, -0.518441,
		0.226242, -0.562660, 0.795128,
		34.349792, 35.130882, 47.664951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714127, 34.934746, 47.196320>,  <34.191425, 35.524742, 47.108364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714127, 34.934746, 47.196320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863873, 34.987782, 47.563419>,  <33.953720, 35.019604, 47.783680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.863873, 34.987782, 47.563419>,  <33.714127, 34.934746, 47.196320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863873, 34.987782, 47.563419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879709, -0.262154, 0.396721,
		0.293194, -0.955874, 0.018500,
		0.374366, 0.132591, 0.917753,
		33.976181, 35.027557, 47.838745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361088, 34.461678, 47.506981>,  <33.714127, 34.934746, 47.196320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361088, 34.461678, 47.506981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.505283, 34.690937, 47.801338>,  <33.591801, 34.828495, 47.977955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.505283, 34.690937, 47.801338>,  <33.361088, 34.461678, 47.506981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505283, 34.690937, 47.801338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778708, -0.249386, 0.575691,
		0.513481, -0.780579, 0.356418,
		0.360487, 0.573152, 0.735898,
		33.613430, 34.862885, 48.022106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526154, 34.057957, 48.090424>,  <33.361088, 34.461678, 47.506981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526154, 34.057957, 48.090424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.459373, 34.421108, 48.244247>,  <33.419304, 34.639000, 48.336544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.459373, 34.421108, 48.244247>,  <33.526154, 34.057957, 48.090424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459373, 34.421108, 48.244247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737515, -0.373854, 0.562410,
		0.654368, -0.189724, 0.731988,
		-0.166954, 0.907875, 0.384563,
		33.409286, 34.693470, 48.359615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496227, 33.996124, 48.834263>,  <33.526154, 34.057957, 48.090424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496227, 33.996124, 48.834263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.314941, 34.348606, 48.780499>,  <33.206169, 34.560097, 48.748238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.314941, 34.348606, 48.780499>,  <33.496227, 33.996124, 48.834263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314941, 34.348606, 48.780499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734398, -0.283661, 0.616600,
		0.505225, 0.378167, 0.775717,
		-0.453219, 0.881207, -0.134413,
		33.178974, 34.612968, 48.740173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294216, 34.162418, 49.495121>,  <33.496227, 33.996124, 48.834263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294216, 34.162418, 49.495121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.070702, 34.380962, 49.245560>,  <32.936592, 34.512089, 49.095821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.070702, 34.380962, 49.245560>,  <33.294216, 34.162418, 49.495121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070702, 34.380962, 49.245560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803172, -0.169124, 0.571238,
		0.206582, 0.820300, 0.533322,
		-0.558784, 0.546356, -0.623904,
		32.903065, 34.544868, 49.058388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847618, 34.504913, 49.934734>,  <33.294216, 34.162418, 49.495121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847618, 34.504913, 49.934734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685856, 34.516106, 49.569073>,  <32.588799, 34.522820, 49.349678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685856, 34.516106, 49.569073>,  <32.847618, 34.504913, 49.934734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685856, 34.516106, 49.569073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907991, -0.132029, 0.397643,
		-0.109567, 0.990851, 0.078801,
		-0.404409, 0.027982, -0.914150,
		32.564533, 34.524502, 49.294827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171585, 34.468910, 50.262901>,  <32.847618, 34.504913, 49.934734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171585, 34.468910, 50.262901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145298, 34.393948, 49.870869>,  <32.129524, 34.348969, 49.635651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.145298, 34.393948, 49.870869>,  <32.171585, 34.468910, 50.262901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145298, 34.393948, 49.870869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911266, -0.388899, 0.135471,
		-0.406541, 0.902018, -0.145219,
		-0.065721, -0.187408, -0.980081,
		32.125580, 34.337727, 49.576843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531017, 34.769604, 50.227489>,  <32.171585, 34.468910, 50.262901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531017, 34.769604, 50.227489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.601280, 34.421745, 50.042942>,  <31.643438, 34.213032, 49.932213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.601280, 34.421745, 50.042942>,  <31.531017, 34.769604, 50.227489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601280, 34.421745, 50.042942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866634, -0.358919, 0.346588,
		-0.467003, 0.338956, -0.816711,
		0.175655, -0.869647, -0.461366,
		31.653976, 34.160851, 49.904533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881012, 34.645130, 49.792576>,  <31.531017, 34.769604, 50.227489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881012, 34.645130, 49.792576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.097504, 34.316746, 49.865353>,  <31.227398, 34.119717, 49.909019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.097504, 34.316746, 49.865353>,  <30.881012, 34.645130, 49.792576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097504, 34.316746, 49.865353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797830, -0.433017, 0.419481,
		-0.265592, -0.372193, -0.889344,
		0.541228, -0.820956, 0.181941,
		31.259872, 34.070457, 49.919933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413181, 34.172844, 49.572559>,  <30.881012, 34.645130, 49.792576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413181, 34.172844, 49.572559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.661495, 33.982258, 49.821590>,  <30.810484, 33.867905, 49.971008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.661495, 33.982258, 49.821590>,  <30.413181, 34.172844, 49.572559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661495, 33.982258, 49.821590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783653, -0.400064, 0.475223,
		0.022646, -0.782900, -0.621736,
		0.620785, -0.476463, 0.622582,
		30.847731, 33.839317, 50.008366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208418, 33.460781, 49.507309>,  <30.413181, 34.172844, 49.572559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208418, 33.460781, 49.507309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.392704, 33.448128, 49.862103>,  <30.503275, 33.440536, 50.074978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.392704, 33.448128, 49.862103>,  <30.208418, 33.460781, 49.507309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392704, 33.448128, 49.862103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756824, -0.536050, 0.373989,
		0.463637, -0.843593, -0.270908,
		0.460715, -0.031635, 0.886984,
		30.530918, 33.438637, 50.128197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109652, 32.775753, 49.796062>,  <30.208418, 33.460781, 49.507309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109652, 32.775753, 49.796062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.211676, 32.988911, 50.118793>,  <30.272890, 33.116806, 50.312431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.211676, 32.988911, 50.118793>,  <30.109652, 32.775753, 49.796062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211676, 32.988911, 50.118793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752189, -0.414975, 0.511866,
		0.607582, -0.737444, 0.294992,
		0.255059, 0.532891, 0.806829,
		30.288193, 33.148777, 50.360844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097198, 32.243137, 50.320629>,  <30.109652, 32.775753, 49.796062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097198, 32.243137, 50.320629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.050282, 32.610939, 50.470703>,  <30.022131, 32.831619, 50.560749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.050282, 32.610939, 50.470703>,  <30.097198, 32.243137, 50.320629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050282, 32.610939, 50.470703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850269, -0.288178, 0.440450,
		0.513114, -0.267346, 0.815623,
		-0.117292, 0.919500, 0.375184,
		30.015095, 32.886787, 50.583260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667723, 32.111019, 50.900887>,  <30.097198, 32.243137, 50.320629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667723, 32.111019, 50.900887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.635996, 32.509529, 50.887394>,  <29.616959, 32.748634, 50.879299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.635996, 32.509529, 50.887394>,  <29.667723, 32.111019, 50.900887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635996, 32.509529, 50.887394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919926, -0.060120, 0.387455,
		0.383985, 0.061765, 0.921271,
		-0.079318, 0.996279, -0.033734,
		29.612200, 32.808414, 50.877274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415348, 32.316879, 51.565754>,  <29.667723, 32.111019, 50.900887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415348, 32.316879, 51.565754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314548, 32.608665, 51.311390>,  <29.254068, 32.783737, 51.158772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314548, 32.608665, 51.311390>,  <29.415348, 32.316879, 51.565754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314548, 32.608665, 51.311390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926187, 0.008664, 0.376966,
		0.280492, 0.683967, 0.673434,
		-0.251998, 0.729462, -0.635911,
		29.238949, 32.827503, 51.120617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189695, 32.856586, 51.985851>,  <29.415348, 32.316879, 51.565754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189695, 32.856586, 51.985851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.040876, 32.945057, 51.625259>,  <28.951584, 32.998138, 51.408905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.040876, 32.945057, 51.625259>,  <29.189695, 32.856586, 51.985851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040876, 32.945057, 51.625259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883931, 0.211972, 0.416815,
		0.283279, 0.951918, 0.116644,
		-0.372048, 0.221180, -0.901476,
		28.929262, 33.011410, 51.354816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847427, 33.428448, 52.032314>,  <29.189695, 32.856586, 51.985851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847427, 33.428448, 52.032314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.653519, 33.270370, 51.720207>,  <28.537172, 33.175526, 51.532944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.653519, 33.270370, 51.720207>,  <28.847427, 33.428448, 52.032314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653519, 33.270370, 51.720207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872509, 0.280743, 0.399889,
		0.061022, 0.874646, -0.480906,
		-0.484773, -0.395193, -0.780268,
		28.508087, 33.151814, 51.486126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314392, 33.771389, 52.121243>,  <28.847427, 33.428448, 52.032314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314392, 33.771389, 52.121243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.216766, 33.521641, 51.824436>,  <28.158192, 33.371792, 51.646351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.216766, 33.521641, 51.824436>,  <28.314392, 33.771389, 52.121243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216766, 33.521641, 51.824436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968070, 0.202008, 0.148437,
		0.057214, 0.754555, -0.653738,
		-0.244064, -0.624371, -0.742020,
		28.143547, 33.334328, 51.601830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933773, 34.134670, 51.697983>,  <28.314392, 33.771389, 52.121243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933773, 34.134670, 51.697983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.827019, 33.752319, 51.648869>,  <27.762966, 33.522911, 51.619400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.827019, 33.752319, 51.648869>,  <27.933773, 34.134670, 51.697983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827019, 33.752319, 51.648869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941765, 0.231632, 0.243774,
		-0.204577, 0.180691, -0.962029,
		-0.266885, -0.955875, -0.122781,
		27.746954, 33.465557, 51.612034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335960, 34.218548, 51.408321>,  <27.933773, 34.134670, 51.697983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335960, 34.218548, 51.408321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.310299, 33.839882, 51.534622>,  <27.294903, 33.612682, 51.610405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.310299, 33.839882, 51.534622>,  <27.335960, 34.218548, 51.408321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310299, 33.839882, 51.534622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980299, 0.119011, 0.157642,
		-0.186813, -0.299421, -0.935654,
		-0.064152, -0.946669, 0.315755,
		27.291054, 33.555882, 51.629349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844263, 33.823570, 50.985027>,  <27.335960, 34.218548, 51.408321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844263, 33.823570, 50.985027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.882442, 33.593765, 51.310192>,  <26.905350, 33.455883, 51.505291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.882442, 33.593765, 51.310192>,  <26.844263, 33.823570, 50.985027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882442, 33.593765, 51.310192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991185, 0.020526, 0.130888,
		-0.091883, -0.818239, -0.567488,
		0.095450, -0.574512, 0.812912,
		26.911077, 33.421413, 51.554066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263733, 33.434254, 50.948685>,  <26.844263, 33.823570, 50.985027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263733, 33.434254, 50.948685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.380234, 33.396034, 51.329430>,  <26.450134, 33.373104, 51.557877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.380234, 33.396034, 51.329430>,  <26.263733, 33.434254, 50.948685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380234, 33.396034, 51.329430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946280, 0.117312, 0.301317,
		-0.140455, -0.988488, -0.056248,
		0.291250, -0.095548, 0.951864,
		26.467609, 33.367371, 51.614990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792114, 33.054920, 51.206879>,  <26.263733, 33.434254, 50.948685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792114, 33.054920, 51.206879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.941380, 33.306507, 51.479687>,  <26.030939, 33.457458, 51.643372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.941380, 33.306507, 51.479687>,  <25.792114, 33.054920, 51.206879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941380, 33.306507, 51.479687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921536, 0.336330, 0.194047,
		-0.107337, -0.700920, 0.705117,
		0.373163, 0.628962, 0.682023,
		26.053329, 33.495197, 51.684292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295090, 33.084385, 51.730999>,  <25.792114, 33.054920, 51.206879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295090, 33.084385, 51.730999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.527843, 33.392860, 51.834286>,  <25.667496, 33.577946, 51.896259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.527843, 33.392860, 51.834286>,  <25.295090, 33.084385, 51.730999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527843, 33.392860, 51.834286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758720, 0.400438, 0.513803,
		0.292839, -0.494889, 0.818126,
		0.581884, 0.771190, 0.258219,
		25.702408, 33.624218, 51.911751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185780, 33.252319, 52.433651>,  <25.295090, 33.084385, 51.730999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185780, 33.252319, 52.433651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.316999, 33.599537, 52.284584>,  <25.395731, 33.807869, 52.195145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.316999, 33.599537, 52.284584>,  <25.185780, 33.252319, 52.433651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316999, 33.599537, 52.284584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705688, 0.487448, 0.514198,
		0.628003, 0.094306, 0.772475,
		0.328049, 0.868044, -0.372669,
		25.415415, 33.859951, 52.172783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891409, 33.719814, 52.917675>,  <25.185780, 33.252319, 52.433651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891409, 33.719814, 52.917675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.014107, 33.978085, 52.637959>,  <25.087725, 34.133045, 52.470127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.014107, 33.978085, 52.637959>,  <24.891409, 33.719814, 52.917675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014107, 33.978085, 52.637959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563566, 0.715285, 0.413232,
		0.767009, 0.267344, 0.583287,
		0.306742, 0.645674, -0.699296,
		25.106131, 34.171787, 52.428169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007593, 34.340195, 53.278507>,  <24.891409, 33.719814, 52.917675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007593, 34.340195, 53.278507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.981676, 34.442833, 52.892769>,  <24.966125, 34.504417, 52.661327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.981676, 34.442833, 52.892769>,  <25.007593, 34.340195, 53.278507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981676, 34.442833, 52.892769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281998, 0.922279, 0.264348,
		0.957225, 0.289071, 0.012601,
		-0.064794, 0.256594, -0.964345,
		24.962238, 34.519810, 52.603466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184294, 34.948593, 53.357857>,  <25.007593, 34.340195, 53.278507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184294, 34.948593, 53.357857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.979033, 34.927856, 53.015163>,  <24.855875, 34.915413, 52.809547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.979033, 34.927856, 53.015163>,  <25.184294, 34.948593, 53.357857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979033, 34.927856, 53.015163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555752, 0.780739, 0.285632,
		0.654073, 0.622702, -0.429454,
		-0.513155, -0.051846, -0.856729,
		24.825087, 34.912304, 52.758144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<37.043285, 31.601522, 48.929852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654453, 31.539705, 48.859234>,  <36.421154, 31.502615, 48.816864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654453, 31.539705, 48.859234>,  <37.043285, 31.601522, 48.929852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654453, 31.539705, 48.859234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098320, -0.414891, 0.904543,
		-0.213037, 0.896650, 0.388115,
		-0.972085, -0.154542, -0.176546,
		36.362827, 31.493343, 48.806271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672062, 32.017319, 49.431450>,  <37.043285, 31.601522, 48.929852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672062, 32.017319, 49.431450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417637, 31.741125, 49.293659>,  <36.264980, 31.575409, 49.210987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.417637, 31.741125, 49.293659>,  <36.672062, 32.017319, 49.431450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417637, 31.741125, 49.293659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213378, -0.271623, 0.938451,
		-0.741550, 0.670416, 0.025436,
		-0.636061, -0.690481, -0.344474,
		36.226818, 31.533981, 49.190315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949162, 32.102501, 49.675613>,  <36.672062, 32.017319, 49.431450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949162, 32.102501, 49.675613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996033, 31.713320, 49.595974>,  <36.024155, 31.479813, 49.548191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.996033, 31.713320, 49.595974>,  <35.949162, 32.102501, 49.675613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996033, 31.713320, 49.595974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335819, -0.227486, 0.914044,
		-0.934610, -0.040241, -0.353390,
		0.117174, -0.972950, -0.199097,
		36.031185, 31.421434, 49.536243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443958, 31.777994, 50.026237>,  <35.949162, 32.102501, 49.675613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443958, 31.777994, 50.026237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679672, 31.460537, 49.965748>,  <35.821102, 31.270063, 49.929455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679672, 31.460537, 49.965748>,  <35.443958, 31.777994, 50.026237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679672, 31.460537, 49.965748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133945, -0.280561, 0.950444,
		-0.796743, -0.539829, -0.271635,
		0.589287, -0.793644, -0.151228,
		35.856457, 31.222445, 49.920380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113701, 31.174799, 50.234501>,  <35.443958, 31.777994, 50.026237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113701, 31.174799, 50.234501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508408, 31.113811, 50.256596>,  <35.745232, 31.077219, 50.269852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.508408, 31.113811, 50.256596>,  <35.113701, 31.174799, 50.234501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508408, 31.113811, 50.256596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096910, -0.281297, 0.954715,
		-0.130023, -0.947431, -0.292349,
		0.986764, -0.152466, 0.055241,
		35.804436, 31.068071, 50.273167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113380, 30.564821, 50.471394>,  <35.113701, 31.174799, 50.234501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113380, 30.564821, 50.471394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462936, 30.737291, 50.561195>,  <35.672668, 30.840773, 50.615078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462936, 30.737291, 50.561195>,  <35.113380, 30.564821, 50.471394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462936, 30.737291, 50.561195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160209, -0.180578, 0.970425,
		0.458965, -0.884013, -0.088726,
		0.873890, 0.431177, 0.224506,
		35.725105, 30.866644, 50.628548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337532, 30.039587, 50.908203>,  <35.113380, 30.564821, 50.471394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337532, 30.039587, 50.908203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598335, 30.336020, 50.972309>,  <35.754818, 30.513878, 51.010773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598335, 30.336020, 50.972309>,  <35.337532, 30.039587, 50.908203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598335, 30.336020, 50.972309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066842, -0.154373, 0.985749,
		0.755261, -0.653429, -0.051117,
		0.652008, 0.741081, 0.160269,
		35.793938, 30.558344, 51.020390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651260, 29.872004, 51.547237>,  <35.337532, 30.039587, 50.908203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651260, 29.872004, 51.547237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765026, 30.252617, 51.500431>,  <35.833286, 30.480986, 51.472347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765026, 30.252617, 51.500431>,  <35.651260, 29.872004, 51.547237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765026, 30.252617, 51.500431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061786, 0.103605, 0.992698,
		0.956710, -0.289564, -0.029325,
		0.284411, 0.951535, -0.117011,
		35.850349, 30.538078, 51.465328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206242, 29.902620, 52.042500>,  <35.651260, 29.872004, 51.547237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206242, 29.902620, 52.042500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034657, 30.255400, 51.964363>,  <35.931705, 30.467068, 51.917480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.034657, 30.255400, 51.964363>,  <36.206242, 29.902620, 52.042500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034657, 30.255400, 51.964363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147342, 0.145040, 0.978393,
		0.891224, 0.448477, 0.067732,
		-0.428963, 0.881948, -0.195342,
		35.905968, 30.519983, 51.905762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530704, 30.348234, 52.487041>,  <36.206242, 29.902620, 52.042500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530704, 30.348234, 52.487041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178928, 30.507412, 52.382553>,  <35.967865, 30.602919, 52.319862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178928, 30.507412, 52.382553>,  <36.530704, 30.348234, 52.487041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178928, 30.507412, 52.382553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147954, 0.293067, 0.944574,
		0.452441, 0.869341, -0.198857,
		-0.879436, 0.397942, -0.261218,
		35.915096, 30.626795, 52.304188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495705, 30.818909, 52.904461>,  <36.530704, 30.348234, 52.487041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495705, 30.818909, 52.904461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122578, 30.839024, 52.761730>,  <35.898701, 30.851091, 52.676094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122578, 30.839024, 52.761730>,  <36.495705, 30.818909, 52.904461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122578, 30.839024, 52.761730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345194, 0.159447, 0.924888,
		0.103403, 0.985925, -0.131376,
		-0.932818, 0.050286, -0.356822,
		35.842731, 30.854109, 52.654682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198044, 31.455048, 53.203159>,  <36.495705, 30.818909, 52.904461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198044, 31.455048, 53.203159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896606, 31.199001, 53.143356>,  <35.715744, 31.045374, 53.107475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896606, 31.199001, 53.143356>,  <36.198044, 31.455048, 53.203159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896606, 31.199001, 53.143356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175981, -0.022676, 0.984132,
		-0.633349, 0.767943, -0.095560,
		-0.753591, -0.640116, -0.149506,
		35.670528, 31.006966, 53.098503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393654, 32.132866, 53.074627>,  <36.198044, 31.455048, 53.203159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393654, 32.132866, 53.074627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661175, 32.392204, 53.220146>,  <36.821686, 32.547810, 53.307457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.661175, 32.392204, 53.220146>,  <36.393654, 32.132866, 53.074627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661175, 32.392204, 53.220146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267515, 0.246691, -0.931440,
		-0.693643, 0.720269, -0.008455,
		0.668801, 0.648348, 0.363798,
		36.861816, 32.586708, 53.329285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412788, 32.719292, 52.547207>,  <36.393654, 32.132866, 53.074627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412788, 32.719292, 52.547207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736835, 32.766262, 52.776958>,  <36.931263, 32.794445, 52.914810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736835, 32.766262, 52.776958>,  <36.412788, 32.719292, 52.547207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736835, 32.766262, 52.776958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541272, 0.226587, -0.809743,
		-0.225230, 0.966887, 0.120005,
		0.810121, 0.117423, 0.574383,
		36.979874, 32.801491, 52.949272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732670, 33.404892, 52.324108>,  <36.412788, 32.719292, 52.547207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732670, 33.404892, 52.324108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010796, 33.174397, 52.495914>,  <37.177670, 33.036098, 52.598999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010796, 33.174397, 52.495914>,  <36.732670, 33.404892, 52.324108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010796, 33.174397, 52.495914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621646, 0.182275, -0.761796,
		0.360685, 0.796696, 0.484955,
		0.695315, -0.576239, 0.429519,
		37.219391, 33.001526, 52.624771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320538, 33.737358, 52.245335>,  <36.732670, 33.404892, 52.324108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320538, 33.737358, 52.245335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432999, 33.357773, 52.302502>,  <37.500477, 33.130024, 52.336800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432999, 33.357773, 52.302502>,  <37.320538, 33.737358, 52.245335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432999, 33.357773, 52.302502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658721, 0.082538, -0.747846,
		0.697881, 0.304402, 0.648306,
		0.281156, -0.948961, 0.142915,
		37.517345, 33.073086, 52.345375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015442, 33.822247, 52.282532>,  <37.320538, 33.737358, 52.245335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015442, 33.822247, 52.282532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936611, 33.442600, 52.184277>,  <37.889313, 33.214813, 52.125324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.936611, 33.442600, 52.184277>,  <38.015442, 33.822247, 52.282532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936611, 33.442600, 52.184277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622797, 0.072302, -0.779035,
		0.757156, -0.306509, 0.576859,
		-0.197073, -0.949118, -0.245637,
		37.877491, 33.157864, 52.110584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666309, 33.531937, 51.952732>,  <38.015442, 33.822247, 52.282532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666309, 33.531937, 51.952732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397301, 33.254223, 51.850220>,  <38.235893, 33.087593, 51.788712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.397301, 33.254223, 51.850220>,  <38.666309, 33.531937, 51.952732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397301, 33.254223, 51.850220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405336, -0.055818, -0.912462,
		0.619204, -0.717532, 0.318958,
		-0.672524, -0.694286, -0.256279,
		38.195545, 33.045937, 51.773335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105656, 32.965038, 51.634953>,  <38.666309, 33.531937, 51.952732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105656, 32.965038, 51.634953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728130, 32.916122, 51.512146>,  <38.501614, 32.886772, 51.438461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728130, 32.916122, 51.512146>,  <39.105656, 32.965038, 51.634953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728130, 32.916122, 51.512146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327539, -0.222606, -0.918240,
		0.043948, -0.967208, 0.250154,
		-0.943815, -0.122290, -0.307016,
		38.444984, 32.879436, 51.420040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134521, 32.284996, 51.293167>,  <39.105656, 32.965038, 51.634953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134521, 32.284996, 51.293167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820915, 32.492710, 51.157131>,  <38.632751, 32.617336, 51.075512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820915, 32.492710, 51.157131>,  <39.134521, 32.284996, 51.293167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820915, 32.492710, 51.157131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289288, -0.179073, -0.940343,
		-0.549205, -0.835630, -0.009826,
		-0.784019, 0.519284, -0.340085,
		38.585709, 32.648495, 51.055107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750652, 31.951290, 50.687374>,  <39.134521, 32.284996, 51.293167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750652, 31.951290, 50.687374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722004, 32.349400, 50.661133>,  <38.704815, 32.588264, 50.645390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.722004, 32.349400, 50.661133>,  <38.750652, 31.951290, 50.687374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722004, 32.349400, 50.661133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308341, -0.040458, -0.950415,
		-0.948576, -0.088294, -0.303986,
		-0.071618, 0.995272, -0.065602,
		38.700520, 32.647980, 50.641453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462601, 31.929195, 50.057167>,  <38.750652, 31.951290, 50.687374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462601, 31.929195, 50.057167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594551, 32.297577, 50.140137>,  <38.673721, 32.518604, 50.189919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594551, 32.297577, 50.140137>,  <38.462601, 31.929195, 50.057167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594551, 32.297577, 50.140137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429118, 0.049424, -0.901895,
		-0.840856, 0.386523, -0.378895,
		0.329877, 0.920955, 0.207423,
		38.693516, 32.573864, 50.202362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436760, 32.314026, 49.382458>,  <38.462601, 31.929195, 50.057167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436760, 32.314026, 49.382458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607746, 32.588993, 49.617313>,  <38.710339, 32.753975, 49.758224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607746, 32.588993, 49.617313>,  <38.436760, 32.314026, 49.382458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607746, 32.588993, 49.617313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441512, 0.407997, -0.799128,
		-0.788884, 0.600829, -0.129097,
		0.427468, 0.687418, 0.587135,
		38.735985, 32.795219, 49.793453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216785, 33.033447, 49.158836>,  <38.436760, 32.314026, 49.382458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216785, 33.033447, 49.158836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575943, 33.044159, 49.334595>,  <38.791439, 33.050587, 49.440052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.575943, 33.044159, 49.334595>,  <38.216785, 33.033447, 49.158836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575943, 33.044159, 49.334595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345631, 0.575276, -0.741348,
		-0.272631, 0.817521, 0.507279,
		0.897893, 0.026783, 0.439398,
		38.845310, 33.052193, 49.466415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338985, 33.728779, 49.059818>,  <38.216785, 33.033447, 49.158836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338985, 33.728779, 49.059818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695190, 33.565826, 49.140835>,  <38.908913, 33.468056, 49.189445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.695190, 33.565826, 49.140835>,  <38.338985, 33.728779, 49.059818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695190, 33.565826, 49.140835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423711, 0.580519, -0.695318,
		0.165681, 0.705010, 0.689573,
		0.890516, -0.407381, 0.202540,
		38.962345, 33.443611, 49.201595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766960, 34.298275, 48.999382>,  <38.338985, 33.728779, 49.059818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766960, 34.298275, 48.999382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979420, 33.963531, 48.946396>,  <39.106895, 33.762688, 48.914604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979420, 33.963531, 48.946396>,  <38.766960, 34.298275, 48.999382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979420, 33.963531, 48.946396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235581, 0.296048, -0.925666,
		0.813866, 0.460464, 0.354394,
		0.531154, -0.836856, -0.132466,
		39.138767, 33.712475, 48.906654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104675, 34.663708, 49.094006>,  <38.766960, 34.298275, 48.999382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104675, 34.663708, 49.094006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080544, 34.308949, 49.277206>,  <38.066063, 34.096092, 49.387127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080544, 34.308949, 49.277206>,  <38.104675, 34.663708, 49.094006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080544, 34.308949, 49.277206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470208, 0.429995, 0.770720,
		-0.880491, -0.168860, -0.442969,
		-0.060331, -0.886900, 0.458006,
		38.062443, 34.042877, 49.414608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456837, 34.700855, 49.377750>,  <38.104675, 34.663708, 49.094006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456837, 34.700855, 49.377750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670197, 34.415379, 49.559357>,  <37.798214, 34.244091, 49.668320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670197, 34.415379, 49.559357>,  <37.456837, 34.700855, 49.377750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670197, 34.415379, 49.559357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282487, 0.355626, 0.890916,
		-0.797298, -0.603469, -0.011917,
		0.533402, -0.713692, 0.454012,
		37.830215, 34.201271, 49.695560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713593, 35.014393, 49.237034>,  <37.456837, 34.700855, 49.377750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713593, 35.014393, 49.237034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685474, 35.362858, 49.042660>,  <36.668602, 35.571938, 48.926037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685474, 35.362858, 49.042660>,  <36.713593, 35.014393, 49.237034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685474, 35.362858, 49.042660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560061, 0.368643, 0.741912,
		0.825464, 0.324308, 0.461989,
		-0.070299, 0.871164, -0.485934,
		36.664383, 35.624207, 48.896881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184883, 35.579605, 49.437420>,  <36.713593, 35.014393, 49.237034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184883, 35.579605, 49.437420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832134, 35.696552, 49.289463>,  <36.620483, 35.766720, 49.200691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.832134, 35.696552, 49.289463>,  <37.184883, 35.579605, 49.437420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832134, 35.696552, 49.289463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296798, 0.265335, 0.917337,
		0.366343, 0.918760, -0.147219,
		-0.881875, 0.292366, -0.369890,
		36.567574, 35.784264, 49.178497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007748, 36.244106, 49.751816>,  <37.184883, 35.579605, 49.437420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007748, 36.244106, 49.751816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647106, 36.116402, 49.635063>,  <36.430721, 36.039780, 49.565014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647106, 36.116402, 49.635063>,  <37.007748, 36.244106, 49.751816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647106, 36.116402, 49.635063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395483, 0.335007, 0.855198,
		-0.175247, 0.886479, -0.428303,
		-0.901600, -0.319257, -0.291878,
		36.376625, 36.020626, 49.547501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465309, 36.827625, 49.915436>,  <37.007748, 36.244106, 49.751816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465309, 36.827625, 49.915436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274696, 36.480698, 49.857914>,  <36.160328, 36.272541, 49.823402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.274696, 36.480698, 49.857914>,  <36.465309, 36.827625, 49.915436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274696, 36.480698, 49.857914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592113, 0.195715, 0.781727,
		-0.649859, 0.457669, -0.606813,
		-0.476535, -0.867315, -0.143805,
		36.131737, 36.220505, 49.814774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725193, 36.934223, 50.002693>,  <36.465309, 36.827625, 49.915436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725193, 36.934223, 50.002693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797344, 36.546638, 50.070309>,  <35.840633, 36.314087, 50.110878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.797344, 36.546638, 50.070309>,  <35.725193, 36.934223, 50.002693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797344, 36.546638, 50.070309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515171, 0.053331, 0.855427,
		-0.837892, -0.241385, -0.489562,
		0.180378, -0.968963, 0.169040,
		35.851460, 36.255951, 50.121021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091087, 36.656071, 50.037064>,  <35.725193, 36.934223, 50.002693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091087, 36.656071, 50.037064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333813, 36.411087, 50.239719>,  <35.479446, 36.264099, 50.361313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.333813, 36.411087, 50.239719>,  <35.091087, 36.656071, 50.037064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333813, 36.411087, 50.239719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600893, 0.063760, 0.796783,
		-0.520297, -0.787930, -0.329330,
		0.606811, -0.612456, 0.506635,
		35.515858, 36.227352, 50.391708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657848, 36.123672, 50.368000>,  <35.091087, 36.656071, 50.037064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657848, 36.123672, 50.368000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994587, 36.131157, 50.583755>,  <35.196632, 36.135647, 50.713207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994587, 36.131157, 50.583755>,  <34.657848, 36.123672, 50.368000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994587, 36.131157, 50.583755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538890, 0.084316, 0.838146,
		-0.029795, -0.996263, 0.081066,
		0.841849, 0.018713, 0.539389,
		35.247143, 36.136772, 50.745571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560993, 35.736473, 50.856209>,  <34.657848, 36.123672, 50.368000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560993, 35.736473, 50.856209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866413, 35.932148, 51.024818>,  <35.049667, 36.049553, 51.125984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.866413, 35.932148, 51.024818>,  <34.560993, 35.736473, 50.856209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866413, 35.932148, 51.024818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525402, 0.091134, 0.845960,
		0.375422, -0.867402, 0.326607,
		0.763552, 0.489192, 0.421521,
		35.095478, 36.078907, 51.151276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640945, 35.376575, 51.466442>,  <34.560993, 35.736473, 50.856209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640945, 35.376575, 51.466442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823093, 35.731186, 51.499229>,  <34.932381, 35.943951, 51.518902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.823093, 35.731186, 51.499229>,  <34.640945, 35.376575, 51.466442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823093, 35.731186, 51.499229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371951, 0.105784, 0.922205,
		0.808883, -0.450432, 0.377914,
		0.455368, 0.886522, 0.081972,
		34.959705, 35.997143, 51.523823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976597, 35.392139, 52.143898>,  <34.640945, 35.376575, 51.466442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976597, 35.392139, 52.143898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942242, 35.779018, 52.048271>,  <34.921627, 36.011147, 51.990894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942242, 35.779018, 52.048271>,  <34.976597, 35.392139, 52.143898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942242, 35.779018, 52.048271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233290, 0.213760, 0.948621,
		0.968606, 0.137250, 0.207277,
		-0.085891, 0.967196, -0.239069,
		34.916473, 36.069176, 51.976551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227943, 35.773945, 52.780025>,  <34.976597, 35.392139, 52.143898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227943, 35.773945, 52.780025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068626, 36.065922, 52.557838>,  <34.973038, 36.241108, 52.424526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.068626, 36.065922, 52.557838>,  <35.227943, 35.773945, 52.780025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068626, 36.065922, 52.557838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253587, 0.494344, 0.831455,
		0.881508, 0.472021, -0.011789,
		-0.398292, 0.729946, -0.555466,
		34.949139, 36.284904, 52.391197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467690, 36.451553, 53.071976>,  <35.227943, 35.773945, 52.780025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467690, 36.451553, 53.071976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115757, 36.500641, 52.888313>,  <34.904598, 36.530094, 52.778114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.115757, 36.500641, 52.888313>,  <35.467690, 36.451553, 53.071976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115757, 36.500641, 52.888313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373418, 0.419155, 0.827567,
		0.294022, 0.899582, -0.322961,
		-0.879835, 0.122723, -0.459161,
		34.851807, 36.537457, 52.750565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283180, 36.974308, 53.414677>,  <35.467690, 36.451553, 53.071976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283180, 36.974308, 53.414677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942253, 36.854202, 53.243378>,  <34.737698, 36.782139, 53.140598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.942253, 36.854202, 53.243378>,  <35.283180, 36.974308, 53.414677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942253, 36.854202, 53.243378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507419, 0.276174, 0.816244,
		-0.126820, 0.912999, -0.387749,
		-0.852316, -0.300267, -0.428249,
		34.686558, 36.764122, 53.114902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747906, 37.551144, 53.530712>,  <35.283180, 36.974308, 53.414677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747906, 37.551144, 53.530712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541557, 37.215885, 53.459846>,  <34.417747, 37.014729, 53.417328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541557, 37.215885, 53.459846>,  <34.747906, 37.551144, 53.530712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541557, 37.215885, 53.459846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498579, 0.125578, 0.857700,
		-0.696631, 0.530792, -0.482665,
		-0.515872, -0.838147, -0.177160,
		34.386795, 36.964439, 53.406700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997555, 37.719994, 53.561615>,  <34.747906, 37.551144, 53.530712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997555, 37.719994, 53.561615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050877, 37.333576, 53.650146>,  <34.082870, 37.101727, 53.703266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.050877, 37.333576, 53.650146>,  <33.997555, 37.719994, 53.561615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050877, 37.333576, 53.650146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512602, 0.123928, 0.849636,
		-0.848216, -0.226714, -0.478676,
		0.133303, -0.966045, 0.221332,
		34.090866, 37.043762, 53.716545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415104, 37.560143, 53.816181>,  <33.997555, 37.719994, 53.561615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415104, 37.560143, 53.816181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660011, 37.271366, 53.945137>,  <33.806957, 37.098099, 54.022511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660011, 37.271366, 53.945137>,  <33.415104, 37.560143, 53.816181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660011, 37.271366, 53.945137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476431, -0.011473, 0.879137,
		-0.630985, -0.691860, -0.350980,
		0.612267, -0.721940, 0.322385,
		33.843693, 37.054783, 54.041851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928051, 37.066711, 54.067722>,  <33.415104, 37.560143, 53.816181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928051, 37.066711, 54.067722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286076, 36.990974, 54.229221>,  <33.500889, 36.945530, 54.326122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.286076, 36.990974, 54.229221>,  <32.928051, 37.066711, 54.067722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286076, 36.990974, 54.229221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418706, -0.045251, 0.906994,
		-0.153465, -0.980867, -0.119783,
		0.895061, -0.189346, 0.403751,
		33.554592, 36.934170, 54.350346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792709, 36.494270, 54.582638>,  <32.928051, 37.066711, 54.067722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792709, 36.494270, 54.582638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129833, 36.666397, 54.711941>,  <33.332108, 36.769672, 54.789524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129833, 36.666397, 54.711941>,  <32.792709, 36.494270, 54.582638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129833, 36.666397, 54.711941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253756, -0.211964, 0.943758,
		0.474633, -0.877440, -0.069451,
		0.842812, 0.430315, 0.323260,
		33.382675, 36.795490, 54.808918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137711, 36.041176, 55.118828>,  <32.792709, 36.494270, 54.582638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137711, 36.041176, 55.118828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.255360, 36.419628, 55.172977>,  <33.325947, 36.646702, 55.205467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.255360, 36.419628, 55.172977>,  <33.137711, 36.041176, 55.118828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255360, 36.419628, 55.172977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294777, -0.044933, 0.954509,
		0.909175, -0.320645, 0.265682,
		0.294121, 0.946133, 0.135371,
		33.343597, 36.703468, 55.213589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486900, 35.976952, 55.762146>,  <33.137711, 36.041176, 55.118828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486900, 35.976952, 55.762146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.434708, 36.371410, 55.721172>,  <33.403393, 36.608086, 55.696587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.434708, 36.371410, 55.721172>,  <33.486900, 35.976952, 55.762146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434708, 36.371410, 55.721172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182860, 0.077612, 0.980071,
		0.974442, 0.146612, 0.170200,
		-0.130481, 0.986145, -0.102438,
		33.395565, 36.667255, 55.690441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676273, 36.223713, 56.365383>,  <33.486900, 35.976952, 55.762146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676273, 36.223713, 56.365383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476852, 36.536392, 56.215508>,  <33.357201, 36.723999, 56.125584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.476852, 36.536392, 56.215508>,  <33.676273, 36.223713, 56.365383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476852, 36.536392, 56.215508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421724, 0.158923, 0.892688,
		0.757363, 0.603063, 0.250432,
		-0.498548, 0.781702, -0.374688,
		33.327290, 36.770905, 56.103100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843113, 36.841938, 56.777565>,  <33.676273, 36.223713, 56.365383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843113, 36.841938, 56.777565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489300, 36.920063, 56.608116>,  <33.277012, 36.966938, 56.506447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489300, 36.920063, 56.608116>,  <33.843113, 36.841938, 56.777565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489300, 36.920063, 56.608116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308233, 0.436924, 0.845038,
		0.350134, 0.878038, -0.326274,
		-0.884533, 0.195308, -0.423623,
		33.223938, 36.978657, 56.481030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653118, 37.444553, 57.127655>,  <33.843113, 36.841938, 56.777565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653118, 37.444553, 57.127655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312172, 37.313484, 56.964630>,  <33.107605, 37.234844, 56.866814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.312172, 37.313484, 56.964630>,  <33.653118, 37.444553, 57.127655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312172, 37.313484, 56.964630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478942, 0.176188, 0.859984,
		-0.209984, 0.928218, -0.307111,
		-0.852362, -0.327671, -0.407566,
		33.056461, 37.215183, 56.842361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065075, 38.018326, 57.305035>,  <33.653118, 37.444553, 57.127655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065075, 38.018326, 57.305035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850971, 37.693153, 57.213264>,  <32.722507, 37.498051, 57.158203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.850971, 37.693153, 57.213264>,  <33.065075, 38.018326, 57.305035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850971, 37.693153, 57.213264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370751, -0.017939, 0.928559,
		-0.758973, 0.582079, -0.291794,
		-0.535261, -0.812934, -0.229421,
		32.690392, 37.449272, 57.144440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345207, 38.148090, 57.646629>,  <33.065075, 38.018326, 57.305035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345207, 38.148090, 57.646629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416485, 37.764343, 57.559113>,  <32.459251, 37.534096, 57.506603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416485, 37.764343, 57.559113>,  <32.345207, 38.148090, 57.646629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416485, 37.764343, 57.559113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259084, -0.260248, 0.930132,
		-0.949275, -0.109054, -0.294930,
		0.178190, -0.959363, -0.218793,
		32.469940, 37.476536, 57.493473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665394, 37.758667, 57.642570>,  <32.345207, 38.148090, 57.646629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665394, 37.758667, 57.642570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.991804, 37.544697, 57.730167>,  <32.187649, 37.416313, 57.782726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.991804, 37.544697, 57.730167>,  <31.665394, 37.758667, 57.642570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991804, 37.544697, 57.730167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289968, -0.051105, 0.955671,
		-0.500024, -0.843351, -0.196815,
		0.816024, -0.534928, 0.218991,
		32.236610, 37.384220, 57.795864>
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
