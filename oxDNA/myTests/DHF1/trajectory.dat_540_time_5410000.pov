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
	<4.567924, 2.724990, 5.144706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921614, 2.841259, 4.998470>,  <5.133828, 2.911021, 4.910729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.921614, 2.841259, 4.998470>,  <4.567924, 2.724990, 5.144706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.921614, 2.841259, 4.998470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013694, -0.766273, -0.642370,
		-0.466861, 0.573006, -0.673577,
		0.884225, 0.290673, -0.365589,
		5.186881, 2.928461, 4.888793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.378609, 3.109520, 4.542170>,  <4.567924, 2.724990, 5.144706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.378609, 3.109520, 4.542170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.737839, 2.933601, 4.539627>,  <4.953377, 2.828050, 4.538101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.737839, 2.933601, 4.539627>,  <4.378609, 3.109520, 4.542170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.737839, 2.933601, 4.539627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350806, -0.707485, -0.613515,
		0.265324, 0.553212, -0.789658,
		0.898075, -0.439797, -0.006358,
		5.007261, 2.801662, 4.537720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.629323, 2.995664, 3.808093>,  <4.378609, 3.109520, 4.542170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.629323, 2.995664, 3.808093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763706, 2.719257, 4.064102>,  <4.844336, 2.553413, 4.217708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763706, 2.719257, 4.064102>,  <4.629323, 2.995664, 3.808093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.763706, 2.719257, 4.064102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332665, -0.722778, -0.605744,
		0.881173, -0.009409, -0.472700,
		0.335958, -0.691016, 0.640023,
		4.864493, 2.511952, 4.256109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.048003, 2.443295, 3.433808>,  <4.629323, 2.995664, 3.808093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.048003, 2.443295, 3.433808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.900595, 2.269062, 3.762310>,  <4.812150, 2.164523, 3.959411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.900595, 2.269062, 3.762310>,  <5.048003, 2.443295, 3.433808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.900595, 2.269062, 3.762310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503372, -0.649213, -0.570210,
		0.781542, -0.623532, 0.019989,
		-0.368521, -0.435581, 0.821256,
		4.790039, 2.138388, 4.008687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.270963, 1.628941, 3.526512>,  <5.048003, 2.443295, 3.433808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.270963, 1.628941, 3.526512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.919558, 1.726105, 3.691051>,  <4.708714, 1.784403, 3.789775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.919558, 1.726105, 3.691051>,  <5.270963, 1.628941, 3.526512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.919558, 1.726105, 3.691051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469918, -0.594365, -0.652616,
		0.085965, -0.766632, 0.636306,
		-0.878514, 0.242909, 0.411348,
		4.656003, 1.798978, 3.814456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.980783, 0.916877, 3.519413>,  <5.270963, 1.628941, 3.526512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.980783, 0.916877, 3.519413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681221, 1.172741, 3.588669>,  <4.501484, 1.326259, 3.630222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681221, 1.172741, 3.588669>,  <4.980783, 0.916877, 3.519413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.681221, 1.172741, 3.588669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595360, -0.534723, -0.599681,
		-0.291010, -0.552184, 0.781285,
		-0.748905, 0.639659, 0.173138,
		4.456550, 1.364639, 3.640610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.369415, 0.579494, 3.898003>,  <4.980783, 0.916877, 3.519413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.369415, 0.579494, 3.898003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.218628, 0.891315, 3.697926>,  <4.128156, 1.078408, 3.577879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.218628, 0.891315, 3.697926>,  <4.369415, 0.579494, 3.898003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.218628, 0.891315, 3.697926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638975, -0.609825, -0.468855,
		-0.670527, 0.142868, 0.727999,
		-0.376967, 0.779552, -0.500193,
		4.105537, 1.125181, 3.547868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.725378, 0.309073, 3.734560>,  <4.369415, 0.579494, 3.898003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.725378, 0.309073, 3.734560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.753510, 0.634842, 3.504162>,  <3.770389, 0.830303, 3.365923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.753510, 0.634842, 3.504162>,  <3.725378, 0.309073, 3.734560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.753510, 0.634842, 3.504162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619946, -0.416684, -0.664862,
		-0.781486, 0.403845, 0.475593,
		0.070329, 0.814423, -0.575994,
		3.774608, 0.879169, 3.331363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.445467, 0.579320, 0.881325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.628555, 0.904625, 1.025043>,  <4.738409, 1.099808, 1.111275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.628555, 0.904625, 1.025043>,  <4.445467, 0.579320, 0.881325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.628555, 0.904625, 1.025043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886971, 0.389760, 0.247728,
		0.061428, -0.432077, 0.899742,
		0.457721, 0.813263, 0.359297,
		4.765872, 1.148604, 1.132833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.247035, 0.812712, 1.575420>,  <4.445467, 0.579320, 0.881325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.247035, 0.812712, 1.575420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366631, 1.130119, 1.363407>,  <4.438388, 1.320564, 1.236199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.366631, 1.130119, 1.363407>,  <4.247035, 0.812712, 1.575420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366631, 1.130119, 1.363407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886396, 0.436661, 0.153715,
		0.353420, 0.423859, 0.833929,
		0.298991, 0.793518, -0.530031,
		4.456328, 1.368175, 1.204398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.352444, 1.215649, 2.317133>,  <4.247035, 0.812712, 1.575420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.352444, 1.215649, 2.317133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.039799, 1.125633, 2.549835>,  <3.852212, 1.071624, 2.689456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.039799, 1.125633, 2.549835>,  <4.352444, 1.215649, 2.317133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.039799, 1.125633, 2.549835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280870, 0.705777, 0.650377,
		-0.556951, 0.671740, -0.488437,
		-0.781612, -0.225041, 0.581755,
		3.805315, 1.058121, 2.724362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.881927, 1.836142, 2.463951>,  <4.352444, 1.215649, 2.317133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.881927, 1.836142, 2.463951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.832741, 1.566811, 2.755569>,  <3.803229, 1.405212, 2.930541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.832741, 1.566811, 2.755569>,  <3.881927, 1.836142, 2.463951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.832741, 1.566811, 2.755569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341440, 0.661069, 0.668136,
		-0.931826, 0.331082, 0.148613,
		-0.122965, -0.673329, 0.729046,
		3.795851, 1.364812, 2.974283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.610046, 2.200581, 3.026415>,  <3.881927, 1.836142, 2.463951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.610046, 2.200581, 3.026415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.771660, 1.859787, 3.159607>,  <3.868628, 1.655310, 3.239522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.771660, 1.859787, 3.159607>,  <3.610046, 2.200581, 3.026415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.771660, 1.859787, 3.159607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480692, 0.507455, 0.715140,
		-0.778261, -0.128881, 0.614572,
		0.404035, -0.851986, 0.332981,
		3.892870, 1.604191, 3.259501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.445184, 2.233253, 3.790553>,  <3.610046, 2.200581, 3.026415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.445184, 2.233253, 3.790553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.755535, 1.989532, 3.725117>,  <3.941746, 1.843300, 3.685855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.755535, 1.989532, 3.725117>,  <3.445184, 2.233253, 3.790553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.755535, 1.989532, 3.725117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513518, 0.459306, 0.724801,
		-0.366485, -0.646365, 0.669254,
		0.775879, -0.609303, -0.163591,
		3.988299, 1.806742, 3.676039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.615165, 2.021273, 4.480197>,  <3.445184, 2.233253, 3.790553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.615165, 2.021273, 4.480197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947582, 1.966515, 4.264557>,  <4.147032, 1.933660, 4.135173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947582, 1.966515, 4.264557>,  <3.615165, 2.021273, 4.480197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.947582, 1.966515, 4.264557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517317, 0.546302, 0.658739,
		0.204331, -0.826326, 0.524819,
		0.831042, -0.136897, -0.539099,
		4.196895, 1.925446, 4.102827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.098618, 1.695161, 4.906684>,  <3.615165, 2.021273, 4.480197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.098618, 1.695161, 4.906684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.301132, 1.895065, 4.625568>,  <4.422641, 2.015008, 4.456899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.301132, 1.895065, 4.625568>,  <4.098618, 1.695161, 4.906684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.301132, 1.895065, 4.625568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442532, 0.548906, 0.709132,
		0.740162, -0.670031, 0.056743,
		0.506286, 0.499761, -0.702789,
		4.453018, 2.044994, 4.414732>
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
